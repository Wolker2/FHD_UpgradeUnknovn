#!/usr/bin/env python3
"""Extract editable DAT and GI sources from the supplied 0.5.1 archive."""
from zipfile import ZipFile
from pathlib import Path
import hashlib,sys,json
root=Path(__file__).resolve().parents[1];sys.path.insert(0,str(root/'scripts'))
import dat_codec,gi_codec
zfile=root/'install/FHD_UpgradeUnknovn_0.5.1.zip'
manifest={}
with ZipFile(zfile) as z:
 for name in z.namelist():
  if name.endswith('/'):continue
  raw=z.read(name)
  manifest[name]={'sha256':hashlib.sha256(raw).hexdigest(),'bytes':len(raw)}
  if name.endswith('.dat'):
   obj=dat_codec.decode(raw,'cachedata' if name.endswith('CacheData.dat') else 'blockpar')
   assert dat_codec.encode(obj)==raw
   path=root/'source'/(name.split('/FHD_UpgradeUnknovn/')[1]+'.json')
  elif name.endswith('.gi'):
   obj=gi_codec.decode(raw);assert gi_codec.encode(obj)==raw
   path=root/'source'/(name.split('/FHD_UpgradeUnknovn/')[1]+'.json')
  else:continue
  path.parent.mkdir(parents=True,exist_ok=True)
  path.write_text(json.dumps(obj,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
(root/'original-file-sha256.json').write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+'\n','utf-8')
print('Recovered 4 DAT + 1 GI files byte-identically')
