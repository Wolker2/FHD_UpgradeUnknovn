from pathlib import Path
import json,struct,sys,re
ROOT=Path(__file__).resolve().parent.parent
pre=(ROOT.parent/'fix0411/src/check_native.py').read_text().split("for game in ['inputs/Rangers.exe'")[0]
ns={'__file__':str(ROOT/'src/fixture.py')};exec(compile(pre,ns['__file__'],'exec'),ns)
R=ns['TestRuntime'];nr=ns['native_runtime'];checks=[]
from unicorn import UC_HOOK_CODE
from unicorn.x86_const import *
symbols=json.loads((ROOT/'symbols.json').read_text());profiles=json.loads((ROOT/'profiles.json').read_text())
def check(v,s):
 assert v,s;checks.append(s)
def ret(r,uc,value=0,pop=0):
 sp=uc.reg_read(UC_X86_REG_ESP);uc.reg_write(UC_X86_REG_EAX,value);uc.reg_write(UC_X86_REG_EIP,r.get(sp));uc.reg_write(UC_X86_REG_ESP,sp+4+pop)
def wide(r,at):
 b=bytearray()
 while bytes(r.vm.mem_read(at,2))!=b'\0\0':b.extend(r.vm.mem_read(at,2));at+=2
 return b.decode('utf-16le')
def bstr(r,s):
 b=s.encode('utf-16le');p=r.allocate(len(b)+6);r.put(p,len(b));r.vm.mem_write(p+4,b+b'\0\0');return p+4
for game in ['inputs/Rangers.exe','inputs/Артефакты/Rangers.exe']:
 for moved in [False,True]:
  r=R(game,moved);new=r.profile['image_size']==0x4d1000;delta=r.base-0x15000000;label=game+str(moved);p=next(x for x in profiles if x['size']==r.profile['image_size'])
  check(r.get(symbols['science_status']+delta)==1,label+' science hooks installed status='+hex(r.get(symbols['science_status']+delta)))
  check(r.get(r.base+0xa548)==int(new),label+' original MM icon installer retains baseline status')
  player=r.ship([]);r.put(player+0xf0,10000)
  cfg={'getplayer':0x78c078 if new else 0x747300,'use':0x70e764 if new else 0x6d6604,'repair':0x70e834 if new else 0x6d66a8,'nodes':0x798e34 if new else 0x752838,'setmoney':0x6fdbb8 if new else 0x6c7938,'accept':0x57fbc0 if new else 0x570334,'cancel':0x57fdd3 if new else 0x570522,'selected':0x889b24 if new else 0x81b724,'kind':0x889b28 if new else 0x81b728,'list_success':0x57e803 if new else 0x56f034,'list_fail':0x57e88e if new else 0x56f0bd}
  engine_table=r.allocate(32);r.vm.mem_write(engine_table,struct.pack('<HBB',500,20,0)*8);r.put(0x88226c if new else 0x81326c,engine_table)
  for idx,value in [(0,20),(1,50)]:
   m=r.data+idx*0x124;r.vm.mem_write(m+0x14,bytes(43*4));r.put(m+0x14+2*4,value);r.put(m+0x14+3*4,1)
  runtime={'tech':True,'payment':0,'created':[],'images':{},'visible':{},'stops':set()}
  for imports in r.game.DIRECTORY_ENTRY_IMPORT:
   for imp in imports.imports:
    if imp.name in [b'SysAllocStringLen',b'SysFreeString',b'SysReAllocStringLen']:
     r.put(imp.address,{b'SysAllocStringLen':0x50000500,b'SysFreeString':0x50000600,b'SysReAllocStringLen':0x50000700}[imp.name])
  # Minimal GI owner and controls. Original .mmicon renderer executes; Windows
  # string allocation and native GI creation/resource loading are fixture APIs.
  vmt=r.allocate(0x60);r.vm.mem_write(vmt,bytes(0x60))
  for slot,at in [(0xc,0x50001100),(0x18,0x50001200),(0x1c,0x50001300),(0x10,0x50001400),(0x28,0x50001500)]:r.put(vmt+slot,at)
  def callback(uc,a,size,o):
   if a in runtime['stops']:uc.emu_stop();return
   if a==cfg['getplayer']:ret(r,uc,player)
   elif a in [cfg['use'],cfg['repair']]:ret(r,uc,int(runtime['tech']))
   elif a==cfg['nodes']:ret(r,uc,0)
   elif a==cfg['setmoney']:
    runtime['payment']+=1;r.put(player+0xf0,uc.reg_read(UC_X86_REG_EDX));ret(r,uc)
   elif a==0x50000700:
    sp=uc.reg_read(UC_X86_REG_ESP);out,src,n=[r.get(sp+4+i*4) for i in range(3)];ptr=r.allocate(n*2+6);r.put(ptr,n*2);r.vm.mem_write(ptr+4,bytes(r.vm.mem_read(src,n*2))+b'\0\0');r.put(out,ptr+4);ret(r,uc,1,12)
   elif a==r.base+0x2b20:
    r.put(uc.reg_read(UC_X86_REG_ECX),0);ret(r,uc)
   elif new and a==0x74acbc:
    runtime['mm_resource_index']=uc.reg_read(UC_X86_REG_EAX);r.put(uc.reg_read(UC_X86_REG_EDX),bstr(r,'Bm.Micromoduls.2MM3_'));ret(r,uc)
   elif new and a==0x489abc:
    image=r.allocate(0x144);r.vm.mem_write(image,bytes(0x144));r.put(image,vmt);r.put(image+0x14,uc.reg_read(UC_X86_REG_ECX));runtime['created'].append(image);ret(r,uc,image)
   elif new and a==0x489b4c:
    runtime['images'][uc.reg_read(UC_X86_REG_EAX)]=wide(r,uc.reg_read(UC_X86_REG_EDX));ret(r,uc)
   elif new and a in [0x48a380,0x48a470,0x4c9d9c,0x405d30]:ret(r,uc)
   elif a in [0x50001100,0x50001200,0x50001300]:
    off={0x50001100:0x20,0x50001200:0x28,0x50001300:0x30}[a];r.vm.mem_write(uc.reg_read(UC_X86_REG_EAX)+off,bytes(r.vm.mem_read(uc.reg_read(UC_X86_REG_EDX),8)));ret(r,uc)
   elif a==0x50001400:ret(r,uc,0,8)
   elif a==0x50001500:runtime['visible'][uc.reg_read(UC_X86_REG_EAX)]=uc.reg_read(UC_X86_REG_EDX)&255;ret(r,uc)
  r.vm.hook_add(UC_HOOK_CODE,callback)
  def list_choice(item):
   sp=0x401fd000;frame=0x401fe000;r.vm.reg_write(UC_X86_REG_ESP,sp);r.vm.reg_write(UC_X86_REG_EBP,frame);r.vm.reg_write(UC_X86_REG_EAX,item);r.vm.reg_write(UC_X86_REG_EBX,item)
   r.put(frame-0x10,item);r.put(frame-0xc,0)
   runtime['stops']={cfg['list_success'],cfg['list_fail']};r.vm.emu_start(0x400000+p['list'],r.stop,count=100000);runtime['stops']=set()
   return r.vm.reg_read(UC_X86_REG_EIP)==cfg['list_success'] and r.get(frame-0xc)==1
  def accept(item,money=10000):
   r.put(player+0xf0,money);r.put(cfg['selected'],item);r.put(cfg['kind'],0)
   sp=0x401fd000;r.put(sp,r.stop);r.vm.reg_write(UC_X86_REG_ESP,sp);r.vm.reg_write(UC_X86_REG_EAX,r.allocate(0x500));r.vm.reg_write(UC_X86_REG_EDX,1)
   end=0x400000+p['apply']+5;runtime['stops']={end,cfg['cancel']};r.vm.emu_start(cfg['accept'],r.stop,count=300000);runtime['stops']=set()
   return r.vm.reg_read(UC_X86_REG_EIP)==end
  def mark_value(item):
   ls=r.get(item+0x58)
   for i in range(r.get(ls+8)):
    e=r.get(r.get(ls+4)+i*4)
    if r.get(e)==r.ids['FHDUU_NoRepeatMark']+1:return r.get(e+4)
  def icons(item,image=None):
   if image is None:
    image=r.allocate(0x144);r.vm.mem_write(image,bytes(0x144));r.put(image,vmt);r.put(image+0x14,r.allocate(0x100));r.put(image+0x28,24);r.put(image+0x2c,24)
   r.invoke(r.base+0xa3a7,image,item)
   return image,r.get(image+0x8c)
  for slots in [0,1,2]:
   x=r.item();r.vm.mem_write(x+0x60,b'\x01');r.put(x+4,73);r.put(x+0x64,625);r.vm.mem_write(x+0x68,b'\x1b');r.put(x+0x20,1000)
   r.specials(x,{'FHDUU_NoRepeatMark':1,'FHDUU4_SBApplied_Speed':125,'FHDUU4_SBApplied_Jump':7})
   for idx in range(slots):check(r.invoke('hook_apply',idx,x)&255==1,label+f' ordinary MM{idx+1} installs')
   before=bytes(r.vm.mem_read(x,0x84));check(list_choice(x),label+f' actual science list accepts SB+{slots}MM')
   check(bytes(r.vm.mem_read(x,0x84))==before,label+' science list leaves item intact')
   runtime['tech']=False;check(not list_choice(x),label+' science list keeps native technology gate');runtime['tech']=True
   image=second=None
   if new and slots==2:
    textout=r.allocate(4);r.invoke(r.base+0x1e10,x,0,textout);text=wide(r,r.get(textout))
    check(re.search(r'ММ\s*1',text) and re.search(r'ММ\s*2',text),label+' original tooltip displays both MM lines')
    image,second=icons(x);check(second!=0,label+' original renderer creates second MM image')
    check(runtime['visible'].get(second)==1,label+' original renderer shows second MM image')
    check(runtime['mm_resource_index']==1,label+' second icon takes the second installed template')
    resourceout=r.allocate(4);r.invoke(r.base+0xa240,x,resourceout);check(runtime['mm_resource_index']==0,label+' first icon takes the first installed template')
    check('Micromoduls.' in runtime['images'][second] and runtime['images'][second].endswith('Set'),label+' second image uses native MM resource')
   payment_before=runtime['payment'];check(accept(x,0)==False,label+' native station rejects insufficient money')
   check(runtime['payment']==payment_before and mark_value(x)==1,label+' failed payment does not consume upgrade')
   check(accept(x),label+f' actual paid station path completes SB+{slots}MM')
   check(r.get(player+0xf0)==9700 and runtime['payment']==payment_before+1,label+' original station charges native 300 cost once')
   check(r.get(x+0x64)>struct.unpack_from('<I',before,0x64)[0],label+' native virtual Improve increases actual engine speed')
   check(mark_value(x)==1 and not list_choice(x),label+' native changed statistics disable repeat, service counter stays unchanged')
   check(r.get(x+0x50)==int(slots==2)*2 and r.get(x+0x54)==int(slots>0),label+' paid upgrade preserves both MM ids')
   if new and slots==2:
    r.invoke(r.base+0x1e10,x,0,textout);text=wide(r,r.get(textout));check(re.search(r'ММ\s*1',text) and re.search(r'ММ\s*2',text),label+' both tooltip MM lines persist after station upgrade')
    image,again=icons(x,image);check(again==second and runtime['visible'][second]==1,label+' second MM image persists after paid upgrade')
    r.invoke('hook_remove',x);icons(x,image);check(runtime['visible'][second]==0,label+' original renderer hides second icon when MM2 removed')
    check(r.invoke('hook_apply',1,x)&255==1,label+' MM2 can be reinstalled after station upgrade')
    icons(x,image);check(runtime['visible'][second]==1 and not list_choice(x),label+' MM2 reinsertion restores icon without resetting station limit')
  before=r.protect_calls;check(r.invoke('FHDUU_Init')==1 and r.protect_calls==before,label+' initialization is idempotent')
  fresh=nr.Runtime(game,moved)
  saved=[(UC_X86_REG_EBX,0x11112222),(UC_X86_REG_ESI,0x33334444),(UC_X86_REG_EDI,0x55556666)]
  for reg,value in saved:fresh.vm.reg_write(reg,value)
  check(fresh.invoke('FHDUU_Init')==1,label+' fresh protected initializer returns success')
  for reg,value in saved:check(fresh.vm.reg_read(reg)==value,label+' initializer preserves callee-saved register '+str(reg))
(ROOT/'QA_station.json').write_text(json.dumps({'passed':len(checks),'checks':checks,'live_game':False,'native_execution':'Actual science-list branching, actual accept/payment branch, actual native virtual engine Improve, unchanged original MM2 rendering code','fixtures':'Player/tech/money APIs, equipment tables, Windows BSTR APIs, native MM resource-name lookup and GI allocation/setters/resources; UI text layout is not a live game render','old_exe_icons':'Baseline 0.4.13 icon hook is new-EXE-only; preserved rather than replaced'},ensure_ascii=False,indent=2))
print(json.dumps({'passed':len(checks),'live_game':False}))
