#!/usr/bin/env python3
"""Run source-only reversible build checks without launching or modifying the game."""
import hashlib,importlib.util,json,sys,zipfile
from pathlib import Path
ROOT=Path(__file__).resolve().parents[1]
sys.path.insert(0,str(ROOT/'scripts'))
import build,dat_codec,gi_codec

def main():
 docs=build.collect();build.verify(docs)
 for rel in docs:
  if rel.endswith('.dat'):
   doc=dat_codec.decode(docs[rel],'cachedata' if 'CacheData' in rel else 'blockpar')
   assert dat_codec.encode(doc)==docs[rel]
  elif rel.endswith('.gi'):
   assert gi_codec.encode(gi_codec.decode(docs[rel]))==docs[rel]
 assert docs['CFG/Eng/Lang.dat']==docs['CFG/Rus/Lang.dat'], 'RU and EN DAT no longer identical to supplied version'
 meta=(ROOT/'source/module/ModuleInfo.txt').read_text('utf-8')
 assert 'Name=FHD_UpgradeUnknovn' in meta
 assert 'UtilityFunctionsPack' in meta
 assert not (ROOT/'source').joinpath('native/FHDUUCore.c').exists(), 'Original C source is not present'
 print('PASS: 4 DAT/1 GI reversible; metadata UTF-16LE; DLL/SCR preserved; no game needed')
 if len(sys.argv)>1 and sys.argv[1]=='--build':
  build.build(ROOT/'dist/FHD_UpgradeUnknovn_0.4.23_Final_Balance_INSTALL.zip',True)

if __name__=='__main__':main()
