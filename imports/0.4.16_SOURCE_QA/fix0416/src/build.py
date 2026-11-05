from pathlib import Path
import sys,struct,json,subprocess,hashlib
ROOT=Path(__file__).resolve().parent.parent;sys.path.insert(0,str(ROOT.parent/'fix049/qa_deps'));import pefile
source=ROOT.parent/'current0413.dll';old=source.read_bytes();pe=pefile.PE(data=old);BASE=pe.OPTIONAL_HEADER.ImageBase
assert hashlib.sha256(old).hexdigest()=='1aa6744c525a7a09e37d04317c610c9bf2e2c8cee3686ca56a11e80016634f4f'
profiles=[]
for exe,listing,apply in [('inputs/Rangers.exe',0x57e7c9,0x57fc99),('inputs/Артефакты/Rangers.exe',0x56effc,0x5703fc)]:
 p=pefile.PE(exe);im=p.get_memory_mapped_image();profiles.append(dict(size=p.OPTIONAL_HEADER.SizeOfImage,stamp=p.FILE_HEADER.TimeDateStamp,list=listing-0x400000,apply=apply-0x400000,sig_list=im[listing-0x400000:listing-0x400000+5].hex(),sig_apply=im[apply-0x400000:apply-0x400000+5].hex()))
 assert profiles[-1]['sig_apply']=='8b08ff5134'
(ROOT/'profiles.json').write_text(json.dumps(profiles,indent=2))
arr=lambda s:'{'+','.join('0x'+s[i:i+2] for i in range(0,len(s),2))+'}'
(ROOT/'src/profiles.h').write_text('static const Profile profiles[]={'+','.join('{'+','.join(hex(p[k]) for k in ['size','stamp','list','apply'])+','+arr(p['sig_list'])+','+arr(p['sig_apply'])+'}' for p in profiles)+'};\n')
(ROOT/'src/pic.ld').write_text('previous_init = 0x1500a000; researched = 0x1500188d; module_by_index = 0x1500110e; original_can_improve = 0x15002a40; remove_module = 0x15001a03; SECTIONS { .all 0x1500a600 : { *(.text*) *(.rodata*) *(.data*) *(.got*) *(.bss*) *(COMMON) } /DISCARD/ : { *(.comment) *(.note*) *(.eh_frame*) } }')
def run(a):
 p=subprocess.run(a,capture_output=True,text=True)
 if p.returncode:raise RuntimeError(p.stdout+p.stderr)
def elf():
 el=(ROOT/'src/pic.elf').read_bytes();shoff=struct.unpack_from('<I',el,32)[0];sn,ss=struct.unpack_from('<HH',el,48);sec=[struct.unpack_from('<10I',el,shoff+i*40) for i in range(sn)];st=sec[ss];names=el[st[4]:st[4]+st[5]];name=lambda x:names[x:names.index(0,x)].decode();s=next(s for s in sec if name(s[0])=='.all');code=el[s[4]:s[4]+s[5]];symbols={};relocs=[]
 for s in sec:
  if s[1]==2:
   t=sec[s[6]];nm=el[t[4]:t[4]+t[5]]
   for at in range(s[4],s[4]+s[5],16):
    n,v,sz,info,other,idx=struct.unpack_from('<IIIBBH',el,at)
    if n:symbols[nm[n:nm.index(0,n)].decode()]=v
  if s[1]==9:
   for at in range(s[4],s[4]+s[5],8):
    a,i=struct.unpack_from('<II',el,at);relocs.append((a,i&255))
 return code,symbols,relocs
init=0xa600
for attempt in range(4):
 run(['gcc','-m32','-Os','-fPIC','-fvisibility=hidden','-ffreestanding','-fno-stack-protector','-fno-asynchronous-unwind-tables','-fno-unwind-tables','-fno-builtin','-Wall','-Wextra','-Werror','-DINIT_RVA='+str(init),'-c',str(ROOT/'src/science_station.c'),'-o',str(ROOT/'src/pic.o')])
 run(['ld','-m','elf_i386','--emit-relocs','-T',str(ROOT/'src/pic.ld'),str(ROOT/'src/pic.o'),'-o',str(ROOT/'src/pic.elf')])
 code,symbols,relocs=elf();actual=symbols['science_init']-BASE
 if actual==init:break
 init=actual
else:raise AssertionError('PIC layout did not settle')
assert not [x for x in relocs if x[1]==1],relocs
assert 0xa600+len(code)<=0xb000
b=bytearray(old);assert len(b)==0x4000;b.extend(code)
align=lambda n,a:(n+a-1)//a*a
last=pe.sections[-1];assert last.Name==b'.mmicon\0'
size=0x600+len(code);rawsize=align(size,512);b.extend(bytes(last.PointerToRawData+rawsize-len(b)))
struct.pack_into('<I',b,last.get_file_offset()+8,size);struct.pack_into('<I',b,last.get_file_offset()+16,rawsize)
struct.pack_into('<I',b,pe.OPTIONAL_HEADER.get_field_absolute_offset('SizeOfCode'),pe.OPTIONAL_HEADER.SizeOfCode+rawsize-last.SizeOfRawData)
struct.pack_into('<I',b,0x2041,init)
# No original implementation bytes, old relocation entries, sections or image
# extent are changed. The only old payload change is the export pointer.
assert b[0x400:0x2041]==old[0x400:0x2041] and b[0x2045:len(old)]==old[0x2045:]
new=pefile.PE(data=bytes(b));assert new.OPTIONAL_HEADER.SizeOfImage==pe.OPTIONAL_HEADER.SizeOfImage
assert new.FILE_HEADER.NumberOfSections==pe.FILE_HEADER.NumberOfSections
assert new.OPTIONAL_HEADER.DATA_DIRECTORY[5].VirtualAddress==pe.OPTIONAL_HEADER.DATA_DIRECTORY[5].VirtualAddress
(ROOT/'layout_symbols.json').write_text(json.dumps({'capacity_init':symbols['science_init']}));(ROOT/'FHDUUCore.dll').write_bytes(b);(ROOT/'symbols.json').write_text(json.dumps(symbols,indent=2));(ROOT/'meta.json').write_text(json.dumps({'base_sha256':hashlib.sha256(old).hexdigest(),'new_sha256':hashlib.sha256(b).hexdigest(),'code_bytes':len(code),'existing_core_unchanged':True,'existing_icon_code_unchanged':True,'PE_relocations_unchanged':True,'image_extent_unchanged':True,'section_count_unchanged':True,'export_init_rva':init},indent=2));print((ROOT/'meta.json').read_text())
