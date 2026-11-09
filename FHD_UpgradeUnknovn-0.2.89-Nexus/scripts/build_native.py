"""Rebuild recovered GNU PE32 DLLs from readable x86 source and typed metadata."""
from pathlib import Path
import json,struct,subprocess,tempfile

OPTIONAL_FIELDS=[('magic','H'),('linker_major','B'),('linker_minor','B'),('size_code','I'),('size_initialized_data','I'),('size_uninitialized_data','I'),('entry_rva','I'),('base_code','I'),('base_data','I'),('image_base','I'),('section_alignment','I'),('file_alignment','I'),('os_major','H'),('os_minor','H'),('image_major','H'),('image_minor','H'),('subsystem_major','H'),('subsystem_minor','H'),('win32_version','I'),('image_size','I'),('headers_size','I'),('checksum','I'),('subsystem','H'),('dll_characteristics','H'),('stack_reserve','I'),('stack_commit','I'),('heap_reserve','I'),('heap_commit','I'),('loader_flags','I'),('directory_count','I')]
def records_into(buffer,start,records):
    for record in records:
        at=start+record['offset'];kind=record['kind']
        if kind=='ascii_z':data=record['text'].encode('ascii')+b'\0'
        elif kind=='utf16z':data=record['text'].encode('utf-16le')+b'\0\0'
        elif kind in ['u8','u32']:
            value=record['value'];value=int(value,0) if isinstance(value,str) else value
            data=struct.pack('<B' if kind=='u8' else '<I',value)
        else:raise ValueError(kind)
        assert at+len(data)<=len(buffer)
        buffer[at:at+len(data)]=data

def build(source):
    source=Path(source).resolve();p=json.loads((source/'pe_profile.json').read_text('utf-8'))
    assert p['format']=='recovered-gnu-pe32-v1';sections=p['sections'];coff=p['coff'];optional=p['optional']
    with tempfile.TemporaryDirectory() as folder:
        root=Path(folder);obj=root/'native.o';elf=root/'native.elf';raw=root/'text.bin'
        for command in [['as','--32',str(source/'native.S'),'-o',str(obj)],
                        ['ld','-m','elf_i386','-T',str(source/'link.ld'),str(obj),'-o',str(elf)],
                        ['objcopy','--dump-section','.text='+str(raw),str(elf)]]:
            result=subprocess.run(command,capture_output=True,text=True)
            if result.returncode:raise RuntimeError(result.stderr)
        code=raw.read_bytes()
    out=bytearray(p['file_size']);struct.pack_into('<30HI',out,0,*p['dos_words'],p['pe_header_offset'])
    records_into(out,64,p['dos_stub_records'])
    at=p['pe_header_offset'];out[at:at+4]=b'PE\0\0';at+=4
    names=['machine','section_count','timestamp','symbol_table_offset','symbol_count','optional_header_size','characteristics']
    struct.pack_into('<HHIIIHH',out,at,*[coff[n] for n in names]);at+=20
    for name,fmt in OPTIONAL_FIELDS:struct.pack_into('<'+fmt,out,at,optional[name]);at+=struct.calcsize('<'+fmt)
    for rva,size in p['directories']:struct.pack_into('<II',out,at,rva,size);at+=8
    for section in sections:
        struct.pack_into('<8s8I',out,at,section['name'].encode().ljust(8,b'\0'),
            *[section[k] for k in ['virtual_size','rva','raw_size','raw_offset','relocations_pointer','line_numbers_pointer','relocations_and_lines','characteristics']]);at+=40
        if not section['raw_size']:continue
        offset=section['raw_offset']
        if section['name']=='.text':
            assert len(code)==section['virtual_size'];out[offset:offset+len(code)]=code
        else:records_into(out,offset,section['records'])
        records_into(out,offset+section['virtual_size'],section['raw_padding_records'])
    records_into(out,at,p['header_extra_records'])
    string_table=bytearray(p['coff_string_table_size']);struct.pack_into('<I',string_table,0,len(string_table))
    for entry in p['coff_strings']:
        encoded=entry['text'].encode('ascii')+b'\0';offset=entry['offset'];string_table[offset:offset+len(encoded)]=encoded
    at=coff['symbol_table_offset']
    for symbol in p['symbols']:
        name=struct.pack('<II',0,symbol['string_offset']) if 'string_offset' in symbol else symbol['inline'].encode('ascii').ljust(8,b'\0')
        struct.pack_into('<8sIhHBB',out,at,name,symbol['value'],symbol['section'],symbol['type'],symbol['storage_class'],symbol['aux_count']);at+=18
    assert at==coff['symbol_table_offset']+coff['symbol_count']*18
    out[at:at+len(string_table)]=string_table
    return bytes(out)
if __name__=='__main__':
    import sys
    Path(sys.argv[2]).write_bytes(build(sys.argv[1]))
