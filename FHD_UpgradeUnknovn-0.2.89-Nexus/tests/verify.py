#!/usr/bin/env python3
"""Source-only rebuild, runtime reference audit and native instruction checks."""
from pathlib import Path
import copy, hashlib, json, platform, re, shutil, struct, subprocess, sys, tempfile, zlib
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'scripts'))
from build import build, hashes, MAIN, BRIDGE
from dat_codec import decode, encode
from scr_codec import encode as encode_scr, object_index
from inspect_scr import parse
from verify_native import verify as native_verify

def walk(block,prefix=''):
    for entry in block['entries']:
        key=prefix+entry['name'];yield key,entry
        if entry['kind']=='block':yield from walk(entry['value'],key+'.')

def verify():
    checks=[]
    def check(condition,label):
        assert condition,label;checks.append(label)
    # Build in a fresh directory with only checked-in source inputs and scripts.
    with tempfile.TemporaryDirectory() as tmp:
        clean=Path(tmp)
        for name in ['source','scripts']:shutil.copytree(ROOT/name,clean/name,ignore=shutil.ignore_patterns('__pycache__'))
        files=build(clean)
    expected=json.loads((ROOT/'original-file-sha256.json').read_text())
    check(hashes(files)==expected,'All 16 runtime files match original SHA-256 from isolated source-only build')
    check(len(files)==16,'Exactly 16 runtime files; explanatory IconLink text excluded')
    check(sum(p.endswith('.dll') for p in files)==6,'Six native libraries rebuilt')
    for name,data in files.items():
        if name.endswith('.dat'):
            fmt=json.loads((ROOT/'source/modules'/Path(name).with_suffix('.json')).read_text())['format']
            check(encode(decode(data,fmt))==data,'DAT independent decode/encode: '+name)
    scene=json.loads((ROOT/'source/script/FHDUU_Dialog.rson').read_text())
    layout=json.loads((ROOT/'source/script/FHDUU_Dialog.layout.json').read_text())
    with tempfile.TemporaryDirectory() as tmp:
        scr=Path(tmp)/'dialog.scr';scr.write_bytes(files[MAIN+'/DATA/Script/FHDUU_Dialog.scr']);model=parse(scr)
        check(model['version']==6 and len(model['dialogs'])==2 and len(model['answers'])==2,'SCR6 independently parsed through EOF; two dialogs and two answers')
        check(len(object_index(scene))==24,'RSON has 24 unique objects with valid parents/links')
        changed=copy.deepcopy(scene);objects=object_index(changed)
        global_op=next(o for o in objects.values() if o['Name']=='global_code')
        global_op['Code']=['GRun();','// source edit verification']
        scr.write_bytes(encode_scr(changed,layout));edited=parse(scr)
        check(edited['global_code']=='GRun();\n// source edit verification','RSON code edits reach runtime SCR source text')
        edited['global_code']=model['global_code']
        # The local offset is expected to shift when global text length changes.
        edited['local_offset']=model['local_offset']
        check(edited==model,'RSON code edit preserves other parsed runtime fields')
    blocks={};texts=[];cache=[]
    for name,data in files.items():
        if name.endswith('.dat'):
            fmt=json.loads((ROOT/'source/modules'/Path(name).with_suffix('.json')).read_text())['format']
            decoded=decode(data,fmt)
            for key,entry in walk(decoded['root']):
                blocks[key]=entry
                if entry['kind']=='parameter':
                    texts.append(entry['value'])
                    if entry['value'].startswith('Mods\\FHD_MODS\\'):
                        target=entry['value'].replace('\\','/').removeprefix('Mods/FHD_MODS/')
                        check(target in files,'Configured runtime path resolves: '+target);cache.append(target)
    texts.extend(o['Code'][0] for o in object_index(scene).values() if isinstance(o.get('Code'),list) and o['Code'])
    references=set()
    for text in texts:
        references.update(re.findall(r"(?:CT|GenerateCodeStringFromBlock)\('((?:Script\.)?FHD_UpgradeUnknovn\.[^']+)'",text))
    for ref in sorted(references):check(ref in blocks,'Local script/text reference resolves: '+ref)
    for module,dependency in [(MAIN,BRIDGE),(BRIDGE,MAIN)]:
        meta=files[module+'/ModuleInfo.txt']
        check(meta[:2]==b'\xff\xfe','UTF-16LE BOM retained: '+module)
        check('Dependence='+dependency+',UtilityFunctionsPack' in meta[2:].decode('utf-16le'),'Declared dependencies preserved: '+module)
    check(files[MAIN+'/CFG/Rus/Lang.dat']==files[MAIN+'/CFG/Eng/Lang.dat'],'Both language payloads are identical in the supplied release')
    native=native_verify(files)
    return {'status':'passed','source_checks_passed':len(checks),'source_checks':checks,
        'runtime_sha256':hashes(files),'native':native,'local_literal_references_checked':len(references),
        'external_dependency':'UtilityFunctionsPack (not included in upload)',
        'mutual_module_dependencies_preserved':True,
        'rscript_editor_or_live_game_executed':False,
        'input_archive':{'filename':'FHD_UpgradeUnknovn-0.2.89.rar','size':68304,'sha256':'5d39d7f0c03f8ed51fe8a247a3d0c1065cfe4448ed8af1676b99c64d929903d3'},
        'environment':{'python':platform.python_version(),'zlib':zlib.ZLIB_RUNTIME_VERSION,'unicorn':__import__('unicorn').__version__,'assembler':subprocess.check_output(['as','--version'],text=True).splitlines()[0]}}

if __name__=='__main__':
    report=verify()
    if len(sys.argv)>1:
        output=Path(sys.argv[1]);output.parent.mkdir(parents=True,exist_ok=True)
        output.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    print(json.dumps({'status':report['status'],'source_checks':report['source_checks_passed'],'native_checks':report['native']['checks_passed']},indent=2))
