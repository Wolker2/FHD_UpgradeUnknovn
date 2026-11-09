"""SRHD BlockPar/CacheData reversible DAT JSON decoder/encoder.
Adapted from the earlier Nexus GitHub source project and documented game format.
"""
import argparse, json, struct, zlib
from pathlib import Path
KEYS={'blockpar':bytes.fromhex('89c6e8b1'),'cachedata':bytes.fromhex('373f8fea')}

def cipher(data,seed):
    seed &= 0xffffffff
    if seed>=0x80000000:seed-=0x100000000
    out=bytearray(data)
    for i in range(len(out)):
        hi,lo=divmod(seed,0x1f31d)
        seed=lo*0x41a7-hi*0xb14
        if seed<1:seed+=0x7fffffff
        out[i]^=(seed-1)&255
    return bytes(out)

class Reader:
    def __init__(self,data): self.data=data;self.p=0
    def get(self,n):
        if self.p+n>len(self.data):raise ValueError('DAT EOF')
        d=self.data[self.p:self.p+n];self.p+=n;return d
    def u8(self):return self.get(1)[0]
    def u32(self):return struct.unpack('<I',self.get(4))[0]
    def wide(self):
        start=self.p
        while self.p+1<len(self.data):
            if self.get(2)==b'\0\0':return self.data[start:self.p-2].decode('utf-16le')
        raise ValueError('Unterminated UTF-16')
    def block(self,fmt,depth=0):
        if depth>128:raise ValueError('Block nesting')
        sorted_flag=bool(self.u8()) if fmt=='blockpar' else None
        count=self.u32()
        if count>200000:raise ValueError('Unreasonable DAT entry count')
        entries=[]
        for _ in range(count):
            meta=[self.u32(),self.u32()] if fmt=='blockpar' and sorted_flag else None
            kind=self.u8()
            if kind not in [1,2]:raise ValueError('Unexpected DAT kind '+str(kind))
            name=self.wide()
            item={'kind':'parameter' if kind==1 else 'block','name':name,'value':self.wide() if kind==1 else self.block(fmt,depth+1)}
            if meta is not None:item['sort_meta']=meta
            entries.append(item)
        x={'entries':entries}
        if fmt=='blockpar':x['sorted']=sorted_flag
        return x

def decode(data,fmt):
    key=KEYS[fmt]
    if len(data)<16:raise ValueError('DAT too short')
    crc=struct.unpack_from('<I',data,0)[0]
    seed=int.from_bytes(bytes(x^y for x,y in zip(data[4:8],key)),'little',signed=True)
    packed=cipher(data[8:],seed)
    if zlib.crc32(packed)!=crc:raise ValueError('DAT CRC mismatch')
    if packed[:4]!=b'ZL01':raise ValueError('Unexpected format')
    plain=zlib.decompress(packed[8:])
    if len(plain)!=struct.unpack_from('<I',packed,4)[0]:raise ValueError('Unpacked DAT length mismatch')
    reader=Reader(plain);root=reader.block(fmt)
    if reader.p!=len(plain):raise ValueError('DAT trailing unparsed bytes')
    return {'format':fmt,'seed':seed,'root':root}

def writewide(out,s):
    if '\x00' in s:raise ValueError('NUL in string')
    out.extend(s.encode('utf-16le'));out.extend(b'\0\0')

def writeblock(out,block,fmt):
    ordered=fmt=='blockpar';flag=bool(block.get('sorted')) if ordered else False
    if ordered:out.append(int(flag))
    entries=block['entries'];out.extend(struct.pack('<I',len(entries)))
    for i,e in enumerate(entries):
        if flag:
            if 'sort_meta' in e:index,count=e['sort_meta']
            else:
                names=[x['name'] for x in entries];index=0
                while i-index>0 and names[i-index-1]==e['name']:index+=1
                count=names.count(e['name']) if index==0 else 0
            out.extend(struct.pack('<II',index,count))
        kind=e['kind'];out.append({'parameter':1,'block':2}[kind]);writewide(out,e['name'])
        if kind=='parameter':writewide(out,e['value'])
        else:writeblock(out,e['value'],fmt)

def encode(doc):
    fmt,seed=doc['format'],doc['seed'];plain=bytearray();writeblock(plain,doc['root'],fmt)
    packed=b'ZL01'+struct.pack('<I',len(plain))+zlib.compress(plain,9)
    crc=struct.pack('<I',zlib.crc32(packed))
    seedbits=(int(seed)&0xffffffff).to_bytes(4,'little')
    return crc+bytes(x^y for x,y in zip(seedbits,KEYS[fmt]))+cipher(packed,seed)

if __name__=='__main__':
    ap=argparse.ArgumentParser();ap.add_argument('command',choices=['decode','encode']);ap.add_argument('source');ap.add_argument('output');ap.add_argument('--format',choices=['blockpar','cachedata'],default='blockpar');a=ap.parse_args()
    d=Path(a.source).read_bytes() if a.command=='decode' else json.loads(Path(a.source).read_text('utf-8'))
    o=json.dumps(decode(d,a.format),ensure_ascii=False,indent=2)+'\n' if a.command=='decode' else encode(d)
    Path(a.output).write_text(o,encoding='utf-8') if isinstance(o,str) else Path(a.output).write_bytes(o)
