#!/usr/bin/env python3
"""Build a TEST install ZIP from editable DAT/GI metadata and archived SCR/DLL.

Native DLL and dialog SCR are not reconstructed from this source snapshot;
they are carried byte-identically from the supplied original archive.
"""
from pathlib import Path
from zipfile import ZipFile, ZIP_DEFLATED
import argparse, hashlib, json, sys
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'scripts'))
import dat_codec,gi_codec

MOD='Mods/FHD_MODS/FHD_UpgradeUnknovn/'
FILES={
'CFG/CacheData.dat':('source/config/CacheData.dat.json','cachedata'),
'CFG/Main.dat':('source/config/Main.dat.json','blockpar'),
'CFG/Rus/Lang.dat':('source/config/Rus/Lang.dat.json','blockpar'),
'CFG/Eng/Lang.dat':('source/config/Eng/Lang.dat.json','blockpar'),
'DATA/Image/2FHDUU_DualMM.gi':('source/graphics/2FHDUU_DualMM.json','gi'),
'ModuleInfo.txt':('source/module/ModuleInfo.txt','meta'),
'DATA/Native/FHDUUCore.dll':('payload/FHDUUCore.dll','binary'),
'DATA/Script/FHDUU_Dialog.scr':('payload/FHDUU_Dialog.scr','binary')
}

def collect():
 result={}
 for rel,(source,kind) in FILES.items():
  path=ROOT/source
  if kind in ('cachedata','blockpar'):data=dat_codec.encode(json.loads(path.read_text('utf-8')))
  elif kind=='gi':data=gi_codec.encode(json.loads(path.read_text('utf-8')))
  elif kind=='meta':
   with path.open('r',encoding='utf-8',newline='') as fh:text=fh.read()
   data=text.encode('utf-16')
  else:data=path.read_bytes()
  result[rel]=data
 return result

def verify(files):
 m=json.loads((ROOT/'original-file-sha256.json').read_text('utf-8'))['files']
 assert set(files)==set(m), 'Unexpected or missing runtime files'
 for rel,data in files.items():
  assert len(data)==m[rel]['size'],f'Size differs: {rel}'
  assert hashlib.sha256(data).hexdigest()==m[rel]['sha256'],f'SHA-256 differs: {rel}'
 print('SHA-256: 8 of 8 original runtime files byte-identical')

def build(output,strict=False):
 files=collect()
 if strict:verify(files)
 output.parent.mkdir(parents=True,exist_ok=True)
 with ZipFile(output,'w',ZIP_DEFLATED) as z:
  for rel,data in files.items():z.writestr(MOD+rel,data)
 print('Built:',output, 'runtime files:',len(files))
 return files

if __name__=='__main__':
 ap=argparse.ArgumentParser();ap.add_argument('--verify-original',action='store_true',help='Fail if any reconstructed file differs from the original');ap.add_argument('--output',type=Path,default=ROOT/'dist/FHD_UpgradeUnknovn_0.4.23_Final_Balance_INSTALL.zip');args=ap.parse_args();build(args.output,args.verify_original)
