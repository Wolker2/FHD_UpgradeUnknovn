"""Execute fresh DLL and patched original EXE functions in x86 emulation.
Windows memory APIs are shimmed; this is not a live game or Windows loader test.
"""
from pathlib import Path
import json,struct,sys,pefile
from unicorn import Uc,UC_ARCH_X86,UC_MODE_32,UC_HOOK_CODE
from unicorn.x86_const import *
ROOT=Path(__file__).resolve().parents[1]
class Runtime:
    def __init__(self,game_path,relocated=False,fail_at=None,corrupt=False):
        self.game=pefile.PE(str(game_path));self.exe=bytearray(self.game.get_memory_mapped_image())
        classname=self.exe.index(b'\x07TEngine')+0x400000
        self.engine_vmt=next(at+44+0x400000 for at in range(0,len(self.exe)-4,4) if struct.unpack_from('<I',self.exe,at)[0]==classname)
        self.dll=pefile.PE(str(ROOT/'dist/FHDUUCore.dll'));self.original_base=self.dll.OPTIONAL_HEADER.ImageBase
        self.base=self.original_base+(0x01000000 if relocated else 0)
        if relocated:self.dll.relocate_image(self.base)
        self.image=self.dll.get_memory_mapped_image();self.vm=Uc(UC_ARCH_X86,UC_MODE_32)
        self.vm.mem_map(0,0x10000);self.vm.mem_map(0x400000,0x500000)
        self.vm.mem_map(self.base,0x20000);self.vm.mem_map(0x40000000,0x200000)
        self.vm.mem_map(0x50000000,0x10000)
        self.vm.mem_write(0x400000,bytes(self.exe));self.vm.mem_write(self.base,self.image)
        self.symbols=json.loads((ROOT/'dist/native_symbols.json').read_text())['symbols']
        self.symbols={k:v+self.base-self.original_base for k,v in self.symbols.items()}
        self.profiles=json.loads((ROOT/'source/native/profiles.json').read_text())
        self.profile=next(p for p in self.profiles if p['image_size']==self.game.OPTIONAL_HEADER.SizeOfImage)
        if corrupt:self.vm.mem_write(0x400000+self.profile['sites'][5]['rva'],b'\xcc')
        self.put(0x30,0x40001000);self.put(0x40001008,0x400000)
        self.alloc=0x40010000;self.stop=0x5000f000;self.fail_at=fail_at;self.protect_calls=0
        self.freed=[]
        self.callbacks={0x50000100:('getmodule',4),0x50000200:('getproc',8),0x50000300:('protect',16),0x50000400:('flush',12),0x50000500:('alloc_string',8),0x50000600:('free_string',4)}
        for imports in self.game.DIRECTORY_ENTRY_IMPORT:
            for imp in imports.imports:
                if imp.name==b'GetModuleHandleA':self.put(imp.address,0x50000100)
                if imp.name==b'GetProcAddress':self.put(imp.address,0x50000200)
        self.vm.hook_add(UC_HOOK_CODE,self.callback)
        self.data=self.allocate(0x124*8+4)+4;self.put(self.data-4,8)
        self.put(0x400000+self.profile['table_rva'],self.data)
        # Engine's code reaches the dynamic array through its import-pointer cell.
        proxy=0x8826b4 if self.profile['image_size']==0x4d1000 else 0x8136b4
        self.put(proxy,0x400000+self.profile['table_rva'])
        for i in range(8):
            m=self.data+i*0x124
            self.put(m+0xc0,100);self.put(m+0xc4,100)
            self.put(m+0x14+2*4,1)
            self.vm.mem_write(m+0xc8,struct.pack('<ffff',1,1,1,1))
            self.vm.mem_write(m+0xe5+44//8,bytes([1<<(44%8)]))
        self.vm.mem_write(self.data+0x124*7,b'\x01')
        self.put(self.data+0x124*7+0x14+2*4,0)
        self.tag(7,'FHDUU_ResearchedMark')
    def callback(self,uc,address,size,_):
        if address not in self.callbacks:return
        name,pop=self.callbacks[address];sp=uc.reg_read(UC_X86_REG_ESP)
        args=[self.get(sp+4+i*4) for i in range(pop//4)];result=1
        if name=='getmodule':result=0x60000000
        if name=='getproc':
            s=self.string(args[1]);result={'VirtualProtect':0x50000300,'FlushInstructionCache':0x50000400,'SysAllocStringLen':0x50000500,'SysFreeString':0x50000600}.get(s,0)
        if name=='alloc_string':
            result=self.allocate(4+args[1]*2+2)+4;self.put(result-4,args[1]*2)
            self.vm.mem_write(result,bytes(self.vm.mem_read(args[0],args[1]*2))+b'\0\0')
        if name=='free_string':self.freed.append(args[0]);result=0
        if name=='protect':
            self.protect_calls+=1
            if self.fail_at==self.protect_calls:result=0
            else:self.put(args[3],0x20)
        ret=self.get(sp);uc.reg_write(UC_X86_REG_EAX,result);uc.reg_write(UC_X86_REG_ESP,sp+4+pop);uc.reg_write(UC_X86_REG_EIP,ret)
    def string(self,at):
        result=bytearray()
        while self.vm.mem_read(at,1)!=b'\0':result+=self.vm.mem_read(at,1);at+=1
        return result.decode()
    def allocate(self,size):p=self.alloc;self.alloc=(p+size+15)&~15;return p
    def put(self,p,x):self.vm.mem_write(p,struct.pack('<I',x&0xffffffff))
    def get(self,p):return struct.unpack('<I',self.vm.mem_read(p,4))[0]
    def tag(self,index,text):
        at=self.allocate(len(text)*2+2);self.vm.mem_write(at,text.encode('utf-16le')+b'\0\0');self.put(self.data+index*0x124+0x11c,at)
    def item(self,mark=True,kind=44,classname='TEngine'):
        item=self.allocate(0x84);self.vm.mem_write(item,bytes(0x84));self.vm.mem_write(item+0xc,b'\x2c');self.vm.mem_write(item+0x1c,b'\x06')
        raw=bytes([len(classname)])+classname.encode();at=self.exe.index(raw)+0x400000
        vmt=next(i+44+0x400000 for i in range(0,len(self.exe)-4,4) if struct.unpack_from('<I',self.exe,i)[0]==at)
        self.put(item,vmt);self.vm.mem_write(item+0xc,bytes([kind]))
        self.put(item+0x18,20);self.put(item+0x20,1000);self.put(item+0x64,500);self.vm.mem_write(item+0x68,b'\x14')
        if mark:
            e=self.allocate(8);self.put(e,8);self.put(e+4,1)
            array=self.allocate(4);self.put(array,e);ls=self.allocate(16);self.put(ls+4,array);self.put(ls+8,1);self.put(item+0x58,ls)
        return item
    def invoke(self,name,*args):
        target=self.symbols.get(name,name) if isinstance(name,str) else name
        sp=0x401ff000;self.put(sp,self.stop)
        self.vm.reg_write(UC_X86_REG_ESP,sp)
        for reg,arg in zip([UC_X86_REG_EAX,UC_X86_REG_EDX,UC_X86_REG_ECX],args):self.vm.reg_write(reg,arg)
        try:self.vm.emu_start(target,self.stop,count=3000000)
        except Exception as e:raise RuntimeError(f'{name}: {e}, EIP={self.vm.reg_read(UC_X86_REG_EIP):x}') from e
        assert self.vm.reg_read(UC_X86_REG_EIP)==self.stop,f'{name} did not return'
        assert self.vm.reg_read(UC_X86_REG_ESP)==sp+4,f'{name} stack imbalance'
        return self.vm.reg_read(UC_X86_REG_EAX)

def verify(games):
    checks=[]
    def check(v,label):assert v,label;checks.append(label)
    for game in games:
        for relocated in [False,True]:
            r=Runtime(game,relocated);label=Path(game).parent.name+('/relocated' if relocated else '/preferred')
            check(r.invoke('FHDUU_Init')==1,label+' initialize')
            check(r.invoke('FHDUU_Init')==1,label+' idempotent initialize')
            for i,s in enumerate(r.profile['sites']):
                target=0x400000+s['rva'];raw=bytes(r.vm.mem_read(target,5))
                check(raw[0]==0xe9,label+f' hook {i} installed')
            item=r.item();mm=r.allocate(0x60);r.put(mm+0x50,1)
            check(r.invoke('hook_can_item',mm,item)==1,label+' first MM allowed')
            check(r.invoke('hook_can_index',0,item)==1,label+' script MM allowed')
            check(r.invoke('hook_can_index',8,item)==0,label+' upper index rejected')
            check(r.invoke('hook_can_index',0xffffffff,item)==0,label+' negative index rejected')
            check(r.invoke('hook_can_index',7,item)==0,label+' special MM rejected')
            r.put(r.data+0x14+2*4,50)
            # Runs original ApplyMicroModule from the actual executable.
            check(r.invoke('hook_apply',0,item)&255==1,label+' native first MM applied')
            check(r.get(item+0x64)==550,label+' native first speed increment exactly once')
            check(r.get(item+0x50)==0 and r.get(item+0x54)==1,label+' first MM persisted in special slot')
            check(r.invoke('hook_can_index',0,item)==0,label+' duplicate template rejected')
            check(r.invoke('hook_stat',item,2)==0,label+' ordinary base bonus not counted twice')
            r.put(r.data+0x124+0x14+2*4,25)
            check(r.invoke('hook_apply',1,item)&255==1,label+' native second MM applied')
            check(r.get(item+0x64)==575,label+' both speed increments summed')
            check(r.get(item+0x50)==2 and r.get(item+0x54)==1,label+' both slots retained')
            r.put(r.data+0x14+22*4,3);r.put(r.data+0x124+0x14+22*4,4)
            check(r.invoke('hook_stat',item,22)==0,label+' MM character skills excluded from equipment')
            check(r.invoke('hook_ship_stat',0,22,item)==0,label+' MM character skills do not leak to ship')
            check(r.invoke('hook_can_index',2,item)==0,label+' third MM blocked')
            r.invoke('hook_remove',item)
            check(r.get(item+0x64)==550,label+' second removal reverses only second bonus')
            r.invoke('hook_remove',item)
            check(r.get(item+0x64)==500,label+' first removal restores original stat')
            check(r.get(item+0x50)==0 and r.get(item+0x54)==0,label+' removal clears both slots')
            check(r.invoke('hook_improve',item)==0,label+' acrin prohibited')
            r.invoke('hook_special',2,item)
            check(r.get(item+0x54)==0,label+' special/acrin script path blocked after research')
            art_test=0x725c80 if r.profile['image_size']==0x4d1000 else 0x6ead60
            check(r.invoke(art_test,item)&255==1,label+' native BH artifact compatibility retained')
            r.vm.mem_write(item+0x1c,b'\x04')
            check(r.invoke(art_test,item)&255==0,label+' ordinary racial item not reclassified globally')
            r.vm.mem_write(item+0x1c,b'\x06')
            control=r.item(mark=False);r.vm.mem_write(r.data+0xd9,b'\x01')
            check(r.invoke('hook_can_index',0,control)&255==0,label+' unresearched BH restrictions unchanged')
            r.vm.mem_write(control+0x1c,b'\x00')
            check(r.invoke('hook_can_index',0,control)&255==1,label+' vanilla compatible racial item still works')
            for kind,classname,offset,bonus,initial in [(43,'TFuelTanks',0x68,1,100),(45,'TRadar',0x64,4,1000),(46,'TScaner',0x61,5,50),(47,'TRepairRobot',0x61,6,50),(48,'TCargoHook',0x64,7,100)]:
                x=r.item(kind=kind,classname=classname)
                r.put(x+offset,initial)
                for idx,delta in [(2,5),(3,8)]:
                    m=r.data+idx*0x124
                    r.vm.mem_write(m+0xe5,bytes(11));r.vm.mem_write(m+0xe5+kind//8,bytes([1<<(kind%8)]));r.put(m+0x14+4*bonus,delta)
                    check(r.invoke('hook_apply',idx,x)&255==1,label+f' {classname} MM {idx} applied')
                result=r.get(x+offset) if offset==0x64 else r.vm.mem_read(x+offset,1)[0]
                check(result==initial+13,label+f' {classname} both bonuses once')
                r.invoke('hook_remove',x);r.invoke('hook_remove',x)
                result=r.get(x+offset) if offset==0x64 else r.vm.mem_read(x+offset,1)[0]
                check(result==initial,label+f' {classname} removal restored')
            x=r.item(kind=43,classname='TFuelTanks');r.vm.mem_write(x+0x68,b'\xfe')
            m=r.data+4*0x124;r.vm.mem_write(m+0xe5+43//8,bytes([1<<(43%8)]));r.put(m+0x18,10)
            check(r.invoke('hook_can_index',4,x)==0,label+' fuel byte overflow prevented')
            # Invalid host/hook and VirtualProtect failure never modify code.
        r=Runtime(game,corrupt=True);before=bytes(r.vm.mem_read(0x400000,len(r.exe)))
        check(r.invoke('FHDUU_Init')==0xfffffffd,Path(game).parent.name+' mismatched hook refused')
        check(bytes(r.vm.mem_read(0x400000,len(r.exe)))==before,Path(game).parent.name+' mismatch leaves image unchanged')
        for fail in [1,2,7,15]:
            r=Runtime(game,fail_at=fail);before=bytes(r.vm.mem_read(0x400000,len(r.exe)))
            check(r.invoke('FHDUU_Init') in [0xfffffffa,0xfffffff9],f'{game} memory permission failure {fail}')
            check(bytes(r.vm.mem_read(0x400000,len(r.exe)))==before,f'{game} permission failure {fail} leaves image unchanged')
    return checks
if __name__=='__main__':
    result=verify([Path(x) for x in sys.argv[1:]])
    print(json.dumps({'passed':len(result),'checks':result,'live_game':False},ensure_ascii=False,indent=2))
