#!/usr/bin/env python3
"""Build both supplied modules from source. No original compiled files needed."""
from pathlib import Path
import argparse, hashlib, json, sys, zipfile
from dat_codec import encode as dat_encode
from gi_codec import encode as gi_encode
from scr_codec import build as scr_build
from build_native import build as native_build

ROOT = Path(__file__).resolve().parents[1]
MAIN = 'FHD_UpgradeUnknovn'
BRIDGE = MAIN + '_UtilityBridge'

def build(root=ROOT):
    source = Path(root) / 'source'; files = {}
    for module in json.loads((source / 'modules.json').read_text('utf-8')):
        name = module['name']; folder = source / 'modules' / name
        for path in sorted((folder / 'CFG').rglob('*.json')):
            files[name+'/'+path.relative_to(folder).with_suffix('.dat').as_posix()] = dat_encode(json.loads(path.read_text('utf-8')))
        assert module['metadata_encoding'] == 'utf-16le-bom'
        text = (folder / 'ModuleInfo.txt').read_bytes().decode('utf-8')
        files[name+'/ModuleInfo.txt'] = b'\xff\xfe' + text.encode('utf-16le')
    files[MAIN+'/DATA/FormLoadRobot/2IconFHDUU.gi'] = gi_encode(json.loads((source/'graphics/2IconFHDUU.json').read_text('utf-8')))
    files[MAIN+'/DATA/Race/2FHDUU_Researched.png'] = (source/'artwork/2FHDUU_Researched.png').read_bytes()
    files[MAIN+'/DATA/Script/FHDUU_Dialog.scr'] = scr_build(source/'script/FHDUU_Dialog.rson', source/'script/FHDUU_Dialog.layout.json')
    for folder in sorted((source/'native').iterdir()):
        if folder.is_dir(): files[BRIDGE+'/DATA/NativeBridge/'+folder.name+'.dll'] = native_build(folder)
    return files

def hashes(files):
    return {name: hashlib.sha256(data).hexdigest() for name,data in sorted(files.items())}

def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--verify-original',action='store_true',help='Require every runtime byte to match the uploaded version')
    parser.add_argument('--output',type=Path,default=ROOT/'dist/FHD_UpgradeUnknovn-0.2.89-install.zip')
    args=parser.parse_args(); files=build()
    if args.verify_original:
        expected=json.loads((ROOT/'original-file-sha256.json').read_text('utf-8'))
        actual=hashes(files)
        if actual!=expected:
            different=[name for name in actual.keys()|expected.keys() if actual.get(name)!=expected.get(name)]
            sys.exit('Original-byte verification failed: '+', '.join(sorted(different)))
    args.output.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(args.output,'w',zipfile.ZIP_DEFLATED,compresslevel=9) as archive:
        for name,data in sorted(files.items()):
            info=zipfile.ZipInfo('Mods/FHD_MODS/'+name,(2026,1,1,0,0,0));info.compress_type=zipfile.ZIP_DEFLATED
            archive.writestr(info,data)
    print(json.dumps({'runtime_files':len(files),'original_bytes_verified':args.verify_original,'output':str(args.output)},indent=2))

if __name__=='__main__':main()
