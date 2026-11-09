#!/usr/bin/env python3
"""Repackage mod preserving original SCR/DLL, rebuilding editable DAT/GI."""
from zipfile import ZipFile,ZIP_DEFLATED
from pathlib import Path
import json,sys
root=Path(__file__).resolve().parents[1];sys.path.insert(0,str(root/'scripts'))
import dat_codec,gi_codec
archive=root/'install/FHD_UpgradeUnknovn_0.5.1.zip'
output=root/'dist/FHD_UpgradeUnknovn_0.5.1_REPACKED.zip'
output.parent.mkdir(exist_ok=True)
with ZipFile(archive) as z,ZipFile(output,'w',ZIP_DEFLATED) as out:
 for name in z.namelist():
  if name.endswith('/'):continue
  rel=name.split('/FHD_UpgradeUnknovn/')[1]
  p=root/'source'/(rel+'.json')
  if p.exists():
   value=json.loads(p.read_text('utf-8'))
   raw=dat_codec.encode(value) if rel.endswith('.dat') else gi_codec.encode(value)
  else:raw=z.read(name)
  out.writestr(name,raw)
print(output)
