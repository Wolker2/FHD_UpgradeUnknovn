#!/usr/bin/env python3
"""Lossless rebuild test of archived fix0416/Lang.dat from editable JSON."""
from pathlib import Path
import hashlib, importlib.util, json
root=Path(__file__).resolve().parent
codec=root/'project/tools/dat_codec.py'
spec=importlib.util.spec_from_file_location('srhd_dat_codec',codec)
m=importlib.util.module_from_spec(spec)
spec.loader.exec_module(m)
src=root/'fix0416/CFG/Rus/Lang.json'
blob=m.encode(json.loads(src.read_text(encoding='utf-8')))
EXPECTED='a196ec22071bb1b8840e077fa48a31302dd80510596dbc10a5fcd2e39eab362b'
assert len(blob)==6800 and hashlib.sha256(blob).hexdigest()==EXPECTED, 'DAT round-trip mismatch'
print('Lang.dat 6800/6800 byte-identical, SHA-256:', EXPECTED)
