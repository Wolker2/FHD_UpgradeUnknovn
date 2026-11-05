from pathlib import Path
import json,runpy
ROOT=Path(__file__).resolve().parent.parent
ns={'__file__':str(ROOT/'src/fixture.py')};pre=(ROOT.parent/'fix0411/src/check_native.py').read_text().split("for game in ['inputs/Rangers.exe'")[0];exec(compile(pre,ns['__file__'],'exec'),ns)
Runtime=ns['native_runtime'].Runtime;symbols=json.loads((ROOT/'symbols.json').read_text());profiles=json.loads((ROOT/'profiles.json').read_text());checks=[]
for game in ['inputs/Rangers.exe','inputs/Артефакты/Rangers.exe']:
 r=Runtime(game);p=next(x for x in profiles if x['size']==r.profile['image_size']);site=0x400000+p['list'];r.vm.mem_write(site,b'\xcc');r.invoke('FHDUU_Init')
 assert r.get(symbols['science_status'])==0xffffffd5
 assert bytes(r.vm.mem_read(site,1))==b'\xcc'
 assert bytes(r.vm.mem_read(0x400000+r.profile['sites'][0]['rva'],1))==b'\xe9'
 assert r.get(r.base+0xa548)==int(r.profile['image_size']==0x4d1000)
 checks.append(game+': conflicting science site is preserved, original core/icon initialization remains active')
(ROOT/'QA_installation.json').write_text(json.dumps({'checks':checks,'passed':len(checks)},indent=2));print(json.dumps({'passed':len(checks)}))
