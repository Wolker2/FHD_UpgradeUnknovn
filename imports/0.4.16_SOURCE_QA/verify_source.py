from pathlib import Path
import hashlib,json,sys
root=Path(__file__).resolve().parent
m=json.loads((root/'source_provenance.json').read_text(encoding='utf-8'))
errors=[]
for ent in m['files']:
 if not ent['included']:continue
 p=root/ent['path']
 if not p.is_file() or hashlib.sha256(p.read_bytes()).hexdigest()!=ent['sha256']:
  errors.append(ent['path'])
print('Verified',m['source_files_included']-len(errors),'/',m['source_files_included'],'SHA-256 source files')
if errors:print('FAIL:',errors);sys.exit(1)
