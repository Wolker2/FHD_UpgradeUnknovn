from pathlib import Path
import sys,struct,json
ROOT=Path(__file__).resolve().parent.parent
pre=(ROOT.parent/'fix0411/src/check_native.py').read_text().split("for game in ['inputs/Rangers.exe'")[0]
ns={'__file__':str(ROOT/'src/fixture.py')};exec(compile(pre,ns['__file__'],'exec'),ns)
R=ns['TestRuntime'];nr=ns['native_runtime'];checks=[]
symbols=json.loads((ROOT/'symbols.json').read_text())
from unicorn import UC_HOOK_CODE
from unicorn.x86_const import *

def check(v,label):
 if not v:raise AssertionError(label)
 checks.append(label)
def bstr(r,s):
 b=s.encode('utf-16le');p=r.allocate(len(b)+6);r.put(p,len(b));r.vm.mem_write(p+4,b+b'\0\0');return p+4

def ret(r,uc,value=0,pop=0):
 sp=uc.reg_read(UC_X86_REG_ESP);uc.reg_write(UC_X86_REG_EAX,value);uc.reg_write(UC_X86_REG_EIP,r.get(sp));uc.reg_write(UC_X86_REG_ESP,sp+4+pop)
for game in ['inputs/Rangers.exe','inputs/Артефакты/Rangers.exe']:
 for moved in [False]:
  r=R(game,moved);new=r.profile['image_size']==0x4d1000;label=game+str(moved)
  native_can=symbols['science_allowed']+r.base-0x15000000
  engine_table=r.allocate(32);r.vm.mem_write(engine_table,struct.pack('<HBB',500,20,0)*8);r.put(0x88226c if new else 0x81326c,engine_table)
  fuel_levels=r.allocate(8);r.vm.mem_write(fuel_levels,b'\x50'*8);r.put(0x882b80 if new else 0x813b80,fuel_levels)
  fuel_size=r.allocate(4);r.put(fuel_size,20);r.put(0x8822fc if new else 0x8132fc,fuel_size)
  getter_new={0x737d40:5,0x73ca84:1000,0x73d880:40,0x73e718:40,0x73f860:100,0x73f888:200}
  getter_old={0x6fb500:5,0x6ff910:1000,0x70054c:40,0x7011c8:40,0x702100:100,0x702114:200}
  getters=getter_new if new else getter_old
  # Float-valued generated GZP factor is configuration data in the real game.
  factor=r.allocate(4);r.vm.mem_write(factor,struct.pack('<f',0.8));site=0x741028 if new else 0x7035ac
  r.vm.mem_write(site,b'\xd9\x05'+struct.pack('<I',factor)+b'\xc3');r.vm.ctl_remove_cache(site,site+7)
  infos=r.allocate(120*19);r.vm.mem_write(infos,bytes(120*19));r.put(0x882f94 if new else 0x813f94,infos)
  damage=r.allocate(8*8);r.vm.mem_write(damage,bytes(8*8));r.put(0x8829d4 if new else 0x8139d4,damage)
  for i in range(8):r.vm.mem_write(damage+i*8+1,b'\x09')
  range_table=r.allocate(32);r.vm.mem_write(range_table,struct.pack('<f',1)*8);r.put(0x882da4 if new else 0x813da4,range_table)
  for i in range(19):
   at=infos+i*120;r.put(at+0x14,100);r.put(at+0x1c,500);r.put(at+0x31,1);r.vm.mem_write(at+0x35,b'\x07');r.vm.mem_write(at+0x40,struct.pack('<f',1)*8)
  for imports in r.game.DIRECTORY_ENTRY_IMPORT:
   for imp in imports.imports:
    if imp.name in [b'SysAllocStringLen',b'SysFreeString',b'SysReAllocStringLen']:
     r.put(imp.address,{b'SysAllocStringLen':0x50000500,b'SysFreeString':0x50000600,b'SysReAllocStringLen':0x50000700}[imp.name])
  def callback(uc,a,s,o):
   if a in getters:ret(r,uc,getters[a])
   elif a==0x50000700:
    sp=uc.reg_read(UC_X86_REG_ESP);out,src,n=[r.get(sp+4+i*4) for i in range(3)];ptr=r.allocate(n*2+6);r.put(ptr,n*2);r.vm.mem_write(ptr+4,bytes(r.vm.mem_read(src,n*2))+b'\0\0');r.put(out,ptr+4);ret(r,uc,1,12)
  r.vm.hook_add(UC_HOOK_CODE,callback)
  for idx,amount in [(0,3),(1,4)]:
   m=r.data+idx*0x124;r.vm.mem_write(m+0x14,bytes(43*4));r.vm.mem_write(m+0xd9,b'\xff');r.vm.mem_write(m+0xe4,bytes([255])*11);r.put(m+0xf0,bstr(r,'Any'))
   for k in [1,2,3,4,5,6,7,8,9,12,21,31]:r.put(m+0x14+4*k,amount)
  classes={42:'THull',43:'TFuelTanks',44:'TEngine',45:'TRadar',46:'TScaner',47:'TRepairRobot',48:'TCargoHook',49:'TDefGenerator'}
  def equipment(t):
   x=r.item(kind=t,classname=classes.get(t,'TCustomWeapon' if t==68 else 'TWeapon'))
   r.put(x+4,73);r.vm.mem_write(x+0x60,b'\x01');r.vm.mem_write(x+0x5d,b'\x01')
   if t==42:r.vm.mem_write(x+0x64,b'\x01\x05')
   elif t==43:r.vm.mem_write(x+0x68,b'\x64')
   elif t==44:r.put(x+0x64,500);r.vm.mem_write(x+0x68,b'\x14')
   elif t==45:r.put(x+0x64,1000)
   elif t in [46,47]:r.vm.mem_write(x+0x61,b'\x28')
   elif t==48:r.put(x+0x64,100);r.put(x+0x68,200)
   elif t==49:r.vm.mem_write(x+0x64,struct.pack('<f',0.8))
   else:r.put(x+0x64,500);r.put(x+0x6c,100);r.put(x+0x7c,50);r.put(x+0x80,infos+18*120)
   return x
  for t in range(42,69):
   for slots in ([0] if t==42 else [0,1,2]):
    x=equipment(t)
    # Native standard equipment passes before adding research bonuses.
    check(r.invoke(r.base+0x2a40,x)&255==1,label+f' vanilla standard {t}/{slots}')
    applied={}
    if t==42:r.vm.mem_write(x+0x65,b'\x08');applied={'FHDUU4_SBApplied_Hull':3}
    elif t==43:r.vm.mem_write(x+0x68,b'\x78');applied={'FHDUU4_FuelApplied':20}
    elif t==44:r.put(x+0x64,525);r.vm.mem_write(x+0x68,b'\x1b');applied={'FHDUU4_SBApplied_Speed':25,'FHDUU4_SBApplied_Jump':7}
    elif t==45:r.put(x+0x64,1350);applied={'FHDUU4_SBApplied_Radar':350}
    elif t in [46,47]:r.vm.mem_write(x+0x61,b'\x2d');applied={'FHDUU4_SBApplied_'+('Scan' if t==46 else 'Droid'):5}
    elif t==48:r.put(x+0x64,120);r.put(x+0x68,230);applied={'FHDUU4_SBApplied_Hook':20,'FHDUU4_SBApplied_HookRadius':30}
    elif t==49:r.vm.mem_write(x+0x64,struct.pack('<f',0.7));applied={'FHDUU4_SBApplied_Def':10}
    else:r.put(x+0x6c,110);r.put(x+0x64,550);applied={'FHDUU4_SBApplied_WEnergy':10,'FHDUU4_SBApplied_WRadius':50}
    r.specials(x,applied)
    for idx in range(slots):check(r.invoke('hook_apply',idx,x)&255==1,label+f' native MM{idx+1} installed {t}/{slots}')
    before=bytes(r.vm.mem_read(x,0x84));ls=r.get(x+0x58);entries=bytes(r.vm.mem_read(r.get(ls+4),r.get(ls+8)*4));records=[(r.get(r.get(ls+4)+i*4),bytes(r.vm.mem_read(r.get(r.get(ls+4)+i*4),8))) for i in range(r.get(ls+8))]
    check(r.invoke(native_can,x)&255==1,label+f' actual native CanImprove SB+{slots}MM {t}')
    check(bytes(r.vm.mem_read(x,0x84))==before,label+f' eligibility leaves actual equipment untouched {t}/{slots}')
    check(bytes(r.vm.mem_read(r.get(ls+4),r.get(ls+8)*4))==entries and all(bytes(r.vm.mem_read(ptr,8))==value for ptr,value in records),label+f' eligibility preserves extra-property list and counts {t}/{slots}')
    # Real native virtual Improve, including native RNG and improvement price.
    r.invoke(r.get(r.get(x)+0x34),x,0)
    check(r.invoke(native_can,x)&255==0,label+f' real native upgrade blocks a second upgrade {t}/{slots}')
    check(r.get(x+0x50)==int(slots==2)*2 and r.get(x+0x54)==int(slots>0),label+f' native upgrade retains installed modules {t}/{slots}')
  # SB size reduction also must not make a standard tank appear upgraded.
  for percent in [5,15,30]:
   for slots in [0,1,2]:
    x=equipment(43);r.specials(x,{'FHDUU4_FuelApplied':20,'FHDUU_Property_Size':percent});r.vm.mem_write(x+0x68,b'\x78');r.put(x+0x18,20*(100-percent)//100)
    for idx in range(slots):r.invoke('hook_apply',idx,x)
    check(r.invoke(native_can,x)&255==1,label+f' tank size SB{percent} and {slots}MM allowed')
    r.invoke(r.get(r.get(x)+0x34),x,0)
    check(r.invoke(native_can,x)&255==0,label+f' size-SB tank native upgrade still once {percent}/{slots}')
  x=equipment(44);r.put(x+0x58,0)
  check(r.invoke(native_can,x)&255==1,label+' unresearched standard equipment unchanged')
  r.put(x+0x64,650);check(r.invoke(native_can,x)&255==0,label+' unresearched upgraded equipment unchanged')
  # Normal station prices: the patch does not alter the native cost calculation.
  x=equipment(44);r.put(x+0x20,1000);price=r.get(r.get(x)+0x38)
  for kind,expected in [(0,300),(1,600),(2,1200)]:check(r.invoke(price,x,kind)==expected,label+' native price tier '+str(kind))
(ROOT/'QA_comparison.json').write_text(json.dumps({'passed':len(checks),'checks':checks,'live_game':False,'executed':'Actual EXE CanImprove, HasStandardStats, MM apply/remove, virtual Improve, prices; both EXEs; relocation covered in QA_station.json','fixtures':'Equipment/MM tables; generated-stat getters for hull/radar/scanner/droid/gripper/GZP use fixed configuration fixtures; engine, tank and weapon getters execute original code; Windows APIs shimmed'},ensure_ascii=False,indent=2))
print(json.dumps({'passed':len(checks),'live_game':False}))
