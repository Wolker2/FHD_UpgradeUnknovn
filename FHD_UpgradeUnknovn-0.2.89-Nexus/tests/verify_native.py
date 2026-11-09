"""Execute exported PE32 descriptor/guard routines, with no Windows/game fixture."""
import struct
from unicorn import Uc, UC_ARCH_X86, UC_MODE_32
from unicorn.x86_const import UC_X86_REG_EAX, UC_X86_REG_EIP, UC_X86_REG_ESP

class Native:
    def __init__(self,data,relocated=False):
        nt=struct.unpack_from('<I',data,60)[0];opt=nt+24
        preferred=struct.unpack_from('<I',data,opt+28)[0]
        self.base=preferred+(0x04000000 if relocated else 0)
        size=struct.unpack_from('<I',data,opt+56)[0];image=bytearray(size)
        headers=struct.unpack_from('<I',data,opt+60)[0];image[:headers]=data[:headers]
        table=opt+struct.unpack_from('<H',data,nt+20)[0]
        for i in range(struct.unpack_from('<H',data,nt+6)[0]):
            _,rva,length,raw=struct.unpack_from('<4I',data,table+40*i+8)
            if length:image[rva:rva+length]=data[raw:raw+length]
        if relocated:
            at,length=struct.unpack_from('<II',image,opt+96+5*8);end=at+length
            while at<end:
                page,block=struct.unpack_from('<II',image,at);assert block>=8
                for pos in range(at+8,at+block,2):
                    entry=struct.unpack_from('<H',image,pos)[0]
                    if entry>>12==3:
                        target=page+(entry&4095);value=struct.unpack_from('<I',image,target)[0]
                        struct.pack_into('<I',image,target,(value+self.base-preferred)&0xffffffff)
                    else:assert entry>>12==0
                at+=block
        export=struct.unpack_from('<I',image,opt+96)[0]
        functions,names,ordinals=struct.unpack_from('<III',image,export+28);self.exports={}
        for i in range(struct.unpack_from('<I',image,export+24)[0]):
            pointer=struct.unpack_from('<I',image,names+4*i)[0]
            name=image[pointer:image.index(0,pointer)].decode('ascii')
            ordinal=struct.unpack_from('<H',image,ordinals+2*i)[0]
            self.exports[name]=struct.unpack_from('<I',image,functions+4*ordinal)[0]
        self.entry=struct.unpack_from('<I',image,opt+16)[0]
        self.vm=Uc(UC_ARCH_X86,UC_MODE_32)
        for address,length in [(self.base,(size+4095)&~4095),(0,0x10000),(0x40000000,0x20000),(0x50000000,0x10000)]:
            self.vm.mem_map(address,length)
        self.vm.mem_write(self.base,bytes(image));self.stop=0x5000f000
    def put(self,address,value):self.vm.mem_write(address,struct.pack('<I',value))
    def get(self,address):return struct.unpack('<I',self.vm.mem_read(address,4))[0]
    def invoke(self,name,*arguments):
        stack=0x4001effc
        self.vm.mem_write(stack,struct.pack('<'+'I'*(len(arguments)+1),self.stop,*arguments))
        self.vm.reg_write(UC_X86_REG_ESP,stack)
        target=self.entry if name=='@entry' else self.exports[name]
        self.vm.emu_start(self.base+target,self.stop,timeout=2_000_000,count=1_000_000)
        assert self.vm.reg_read(UC_X86_REG_EIP)==self.stop,'Export did not return: '+name
        return self.vm.reg_read(UC_X86_REG_EAX)

def verify(files):
    checks=0;results=[]
    def check(condition,message):
        nonlocal checks
        assert condition,message;checks+=1
    for path,data in sorted(files.items()):
        if not path.endswith('.dll'):continue
        for relocated in [False,True]:
            f=Native(data,relocated);buffer=0x50000000
            check(f.invoke('@entry',f.base,1,0)==1,path+' DLL attach')
            if 'XenoPlugin_Query' in f.exports:
                check(f.invoke('XenoPlugin_Query',0)==0,path+' query NULL')
                f.put(buffer,519)
                check(f.invoke('XenoPlugin_Query',buffer)==0,path+' undersized descriptor')
                f.put(buffer,520)
                check(f.invoke('XenoPlugin_Query',buffer)==1,path+' valid descriptor')
                check(f.get(buffer+4)==1,path+' API version')
                name=bytes(f.vm.mem_read(buffer+8,128)).decode('utf-16le').split('\0')[0]
                check('FHDUU' in name,path+' plugin name: '+repr(name))
                check(f.invoke('XenoPlugin_Initialize',0)==1,path+' NULL host')
                for size,version in [(31,1),(32,0),(32,2)]:
                    f.vm.mem_write(buffer,struct.pack('<8I',size,version,0,0,0,0,0,0))
                    check(f.invoke('XenoPlugin_Initialize',buffer)==1,path+' rejected host header')
            else:
                check(set(f.exports)=={'FHDUU_Init'},path+' bridge export')
                result=f.invoke('FHDUU_Init')
                check(result==101,path+' first unavailable-PEB result')
                check(f.invoke('FHDUU_Init')==99,path+' retained failed-init status')
                check(f.invoke('FHDUU_Init')==99,path+' stable failed-init status')
            results.append({'dll':path.rsplit('/',1)[-1],'relocated':relocated,'exports':sorted(f.exports)})
    return {'checks_passed':checks,'runs':results,'live_windows_or_game':False,
            'scope':'DLL attach, plugin descriptor, invalid host guards; bridge with unavailable PEB; original and relocated bases'}
