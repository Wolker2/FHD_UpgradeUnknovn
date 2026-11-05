from pathlib import Path
import sys,json,struct,re
ROOT=Path(__file__).resolve().parent.parent
sys.path[:0]=[str(ROOT.parent/'fix049/qa_deps'),str(ROOT.parent/'project/tests'),str(ROOT.parent/'project/tools')]
from dat_codec import decode
import native_runtime
from unicorn.x86_const import *
from unicorn import UC_HOOK_CODE
new_symbols=json.loads((ROOT/'layout_symbols.json').read_text())
SYMBOLS={'FHDUU_Init':new_symbols['capacity_init'],'hook_can_item':0x15001935,'hook_can_index':0x15001975,'hook_apply':0x150019a7,'hook_remove':0x15001a03,'hook_stat':0x15001bc0,'hook_desc':0x15001a3f,'hook_ship_stat':0x15001a76,'hook_improve':0x15001ab4,'hook_special':0x15001ad6}
base=ROOT/'runtime_root';(base/'dist').mkdir(parents=True,exist_ok=True);(base/'source/native').mkdir(parents=True,exist_ok=True)
(base/'dist/FHDUUCore.dll').write_bytes((ROOT/'FHDUUCore.dll').read_bytes());(base/'dist/native_symbols.json').write_text(json.dumps({'symbols':SYMBOLS}))
(base/'source/native/profiles.json').write_bytes((ROOT.parent/'project/source/native/profiles.json').read_bytes())
native_runtime.ROOT=base
j=decode((ROOT/'Lang.dat').read_bytes(),'blockpar')
mods=j['root']['entries'][0]['value']['entries']
bon=['Hull','Fuel','Speed','Jump','Radar','Scan','Droid','Hook','Def','WEnergy','WSplinter','WMissile','WRadius','SlotRadar','SlotScaner','SlotDroid','SlotHook','SlotDef','SlotWeapon','SlotArt','SlotForsage','HookRadius','Skill1','Skill2','Skill3','Skill4','Skill5','Skill6','Mass','ExtraAkrinEff','ExtraAkrinPenalty','Ammo','Shots','MissileSpeed','ShotSpeed','HookMaxSpeed','HookMinSpeed','StimCapacity','Zonds','Attacks','ResistAsteroid','AIValue','Null']
mapped={0:'Hull',2:'Speed',3:'Jump',4:'Radar',5:'Scan',6:'Droid',7:'Hook',8:'Def',9:'WEnergy',10:'WSplinter',11:'WMissile',12:'WRadius',21:'HookRadius'}
checks=[]
def check(v,label):assert v,label;checks.append(label)
def signed(n):return n if n<0x80000000 else n-0x100000000
class TestRuntime(native_runtime.Runtime):
 def __init__(self,path,relocated=False):
  super().__init__(path,relocated);check(self.invoke('FHDUU_Init')==1,'initialize '+path+str(relocated))
  old=bytes(self.vm.mem_read(self.data,8*0x124));self.data=self.allocate((len(mods)+8)*0x124+4)+4
  self.put(self.data-4,len(mods)+8);self.vm.mem_write(self.data,old+bytes(len(mods)*0x124));self.put(0x400000+self.profile['table_rva'],self.data)
  self.ids={}
  for i,entry in enumerate(mods,8):
   self.ids[entry['name']]=i;m=self.data+i*0x124;self.put(m+0xc0,100);self.put(m+0xc4,100)
   self.vm.mem_write(m+0xc8,struct.pack('<f',1));self.vm.mem_write(m,b'\x01');self.tag(i,entry['name'])
   vals={p['name']:p['value'] for p in entry['value']['entries'] if p['kind']=='parameter'}
   for n,name in enumerate(bon):self.put(m+0x14+4*n,int(vals.get('bon'+name,0)))
 def specials(self,item,values):
  pairs=[('FHDUU_ResearchedMark',1),*values.items()];array=self.allocate(len(pairs)*4)
  for i,(name,count) in enumerate(pairs):
   entry=self.allocate(8);self.put(entry,self.ids[name]+1);self.put(entry+4,count);self.put(array+4*i,entry)
  ls=self.allocate(16);self.put(ls+4,array);self.put(ls+8,len(pairs));self.put(item+0x58,ls)
 def item2(self,kind=44,classname='TEngine',active=True):
  p=self.item(False,kind,classname);self.vm.mem_write(p+0x49,bytes([int(active)]));self.vm.mem_write(p+0x48,b'\0');return p
 def items_list(self,items):
  ar=self.allocate(4*len(items));ls=self.allocate(16)
  for i,p in enumerate(items):self.put(ar+i*4,p)
  self.put(ls+4,ar);self.put(ls+8,len(items));return ls
 def ship(self,items,arts=()):
  ship=self.allocate(0x600);self.vm.mem_write(ship,bytes(0x600));self.put(ship+0x3b8,self.items_list(items));self.put(ship+0x3bc,self.items_list(arts));return ship
 @property
 def total(self):return 0x70f5c0 if self.profile['image_size']==0x4d1000 else 0x6d718c
for game in ['inputs/Rangers.exe','inputs/Артефакты/Rangers.exe']:
 for moved in [False,True]:
  r=TestRuntime(game,moved);label=game+str(moved)
  source=r.item2();empty=r.item2();ship=r.ship([empty,source])
  r.specials(source,{'FHDUU_Property_Def':8,'FHDUU4_SBDynamic_Def':8})
  site=r.base+0x1339;patch=bytes(r.vm.mem_read(site,5));r.vm.mem_write(site,bytes.fromhex('5589e55756'));r.vm.ctl_remove_cache(site,site+5)
  unpatched=r.invoke(r.total,ship,8)
  check(unpatched==(0 if r.profile['image_size']==0x4d1000 else 8),label+' regression reproduces original new-EXE failure')
  r.vm.mem_write(site,patch);r.vm.ctl_remove_cache(site,site+5)
  check(r.invoke(r.total,ship,8)==8,label+' same native call succeeds with ABI fix')
  for kind,tag in mapped.items():
   vals={'FHDUU_Property_'+tag:17,'FHDUU4_SBDynamic_'+tag:17};r.specials(source,vals)
   check(r.invoke('hook_stat',source,kind)==17,label+' ordinary stat SB property '+tag)
   check(r.invoke('hook_desc',source,kind)==17,label+' description SB property '+tag)
   check(r.invoke(r.total,ship,kind)==17,label+' actual ship calculation cross property '+tag)
   for junk in [0x40016700,0x12345600,0x80000000,0xffffff00]:
    check(r.invoke('hook_ship_stat',ship,junk|kind,source)==17,label+' byte enum ABI '+tag+' '+hex(junk))
  # Native engine total only takes equipped sources. Hull is inventory index zero.
  r.specials(source,{'FHDUU_Property_Def':8,'FHDUU_Property_Radar':350,'FHDUU_Property_Hull':3,'FHDUU4_SBDynamic_Def':8,'FHDUU4_SBDynamic_Radar':350,'FHDUU4_SBDynamic_Hull':3})
  check(r.invoke(r.total,ship,8)==8,label+' engine transfers defense to GZP calculation')
  check(r.invoke(r.total,ship,0)==3,label+' armor +3 on another item')
  r.vm.mem_write(source+0x49,b'\0');check(r.invoke(r.total,ship,8)==0,label+' removed source ceases contributing')
  r.vm.mem_write(source+0x49,b'\1');check(r.invoke(r.total,ship,8)==8,label+' re-equipped source restores exact amount')
  r.vm.mem_write(source+0x48,b'\1');check(r.invoke(r.total,ship,8)==0,label+' broken source disabled by native usability')
  r.vm.mem_write(source+0x48,b'\0')
  source2=r.item2(kind=45,classname='TRadar');r.specials(source2,{'FHDUU_Property_Def':5,'FHDUU4_SBDynamic_Def':5});ship=r.ship([empty,source,source2])
  check(r.invoke(r.total,ship,8)==13,label+' bonuses from two equipped sources add once')
  art=r.item2(kind=81,classname='TArtefact');r.specials(art,{'FHDUU_Property_Def':4,'FHDUU4_SBDynamic_Def':4});ship=r.ship([empty,source,source2],[art])
  check(r.invoke(r.total,ship,8)==17,label+' equipped artifact supplies cross property')
  r.vm.mem_write(art+0x49,b'\0');check(r.invoke(r.total,ship,8)==13,label+' removed artifact ceases contributing')
  # Existing native unit properties retain their original meaning.
  r.specials(source,{'FHDUU_Property_Mass':20,'FHDUU_Property_HookMaxSpeed':25,'FHDUU_Property_MissileSpeed':66})
  check(signed(r.invoke(r.total,ship,28))==-20,label+' mass reduction percentage retained')
  check(r.invoke(r.total,ship,35)==25,label+' existing hook speed retained')
  check(r.invoke(r.total,ship,33)==66,label+' existing missile speed retained')
  # Ordinary MM double-slot path remains the shipped implementation.
  item=r.item();r.put(r.data+0x14+8,30);r.put(r.data+0x124+0x14+8,20)
  check(r.invoke('hook_apply',0,item)&255==1,label+' first ordinary MM installs')
  check(r.get(item+0x64)==530,label+' first MM changes speed once')
  check(r.invoke('hook_apply',1,item)&255==1,label+' second ordinary MM installs')
  check(r.get(item+0x64)==550,label+' second MM changes speed once')
  r.invoke('hook_remove',item);r.invoke('hook_remove',item)
  check(r.get(item+0x64)==500,label+' both ordinary removals restore base')
  before=bytes(r.vm.mem_read(source,0x84))
  for i in range(10):r.invoke(r.total,ship,28)
  check(bytes(r.vm.mem_read(source,0x84))==before,label+' repeated bonus calculation does not mutate equipment')
  exact=r.item();r.put(exact+0x64,1025)
  r.specials(exact,{'FHDUU_Property_Speed':25,'FHDUU4_SBApplied_Speed':25})
  r.put(r.data+0x14+8,20);r.put(r.data+0x124+0x14+8,50)
  check(r.invoke('hook_apply',0,exact)&255==1,label+' speed MM +20 installs')
  check(r.invoke('hook_apply',1,exact)&255==1,label+' speed MM +50 installs')
  check(r.get(exact+0x64)==1095,label+' raw engine keeps base 1000 + SB 25 + MM 20 + MM 50 exactly')
  check(r.invoke('hook_stat',exact,2)==0,label+' baked speed bonuses are not added a second time')
# Existing binary code, two MM restrictions, rendering sections and profiles stay as supplied.
a=(ROOT/'base/Mods/FHD_MODS/FHD_UpgradeUnknovn/DATA/Native/FHDUUCore.dll').read_bytes();b=(ROOT/'FHDUUCore.dll').read_bytes()
check(a[0x400:0x2000]==b[0x400:0x2000] and a[0x2200:]==b[0x2200:len(a)],'prior runtime code and profiles retained')
(ROOT/'native_QA.json').write_text(json.dumps({'passed':len(checks),'checks':checks,'live_game_test':False},ensure_ascii=False,indent=2))
print(json.dumps({'passed':len(checks),'both_executables':True,'actual_ship_totals':True}))
