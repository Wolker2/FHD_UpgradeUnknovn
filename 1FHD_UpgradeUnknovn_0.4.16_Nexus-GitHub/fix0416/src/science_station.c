/* Extend only the science-base inventory eligibility call. Keep the native
   comparison, prices, payment and Improve implementations; never modify
   the live item while checking it. The working renderer is unchanged. */
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
#define D __attribute__((regparm(3)))
#define W __attribute__((stdcall))
#define U(p,o) (*(u32 *)((u8 *)(p)+(o)))
#define I(p,o) (*(int *)((u8 *)(p)+(o)))
extern int previous_init(void);
__attribute__((naked)) static int previous_init_safe(void){__asm__("pushl %ebx;pushl %esi;pushl %edi;call previous_init;popl %edi;popl %esi;popl %ebx;ret");}
extern int D researched(void *);
extern u8 *D module_by_index(int);
extern int D original_can_improve(void *);
extern void D remove_module(void *);
__attribute__((visibility("hidden"))) int science_init(void);
#ifndef INIT_RVA
#define INIT_RVA 0xa600
#endif
static u8 *module_base(void){u32 address=(u32)&science_init;__asm__("":"+r"(address));return (u8 *)(address-INIT_RVA);}
static int same(const u8*a,const u8*b,int n){for(int i=0;i<n;i++)if(a[i]!=b[i])return 0;return 1;}
static int tag(const u16*s,const char*k){if(!s)return 0;while(*k)if(*s++!=(u8)*k++)return 0;return !*s;}
static int count(void *item,const char *key){
 void *ls=(void *)U(item,0x58);if(!ls)return 0;
 int n=I(ls,8);u32 *a=(u32 *)U(ls,4);if(n<0||n>100000||(!a&&n))return 0;
 int total=0;
 for(int i=0;i<n;i++)if(a[i]){
  u8 *m=module_by_index(I(a[i],0)-1);
  if(m&&tag((const u16 *)U(m,0x11c),key))total+=I(a[i],4);
 }
 return total;
}
int D science_allowed(void *item){
 if(!item||!researched(item))return original_can_improve(item);
 int type=((u8 *)item)[0xc];if(type<42||type>68)return 0;
 void *vmt=(void *)U(item,0);if(!vmt)return 0;
 int size=I(vmt,-40);u8 view[256];if(size<0x60||size>(int)sizeof(view))return 0;
 for(int i=0;i<size;i++)view[i]=((u8 *)item)[i];
 /* The existing native removal path knows the two ordinary MM slots.
    The copy retains the same class/extra properties; no live object is removed. */
 remove_module(view);remove_module(view);
 switch(type){
 case 42:view[0x65]-=count(item,"FHDUU4_SBApplied_Hull");break;
 case 43:view[0x68]-=count(item,"FHDUU4_FuelApplied");break;
 case 44:I(view,0x64)-=count(item,"FHDUU4_SBApplied_Speed");view[0x68]-=count(item,"FHDUU4_SBApplied_Jump");break;
 case 45:I(view,0x64)-=count(item,"FHDUU4_SBApplied_Radar");break;
 case 46:view[0x61]-=count(item,"FHDUU4_SBApplied_Scan");break;
 case 47:view[0x61]-=count(item,"FHDUU4_SBApplied_Droid");break;
 case 48:I(view,0x64)-=count(item,"FHDUU4_SBApplied_Hook");I(view,0x68)-=count(item,"FHDUU4_SBApplied_HookRadius");break;
 case 49:*(float *)(view+0x64)+=count(item,"FHDUU4_SBApplied_Def")*0.01f;break;
 default:
  I(view,0x6c)-=count(item,"FHDUU4_SBApplied_WEnergy")+count(item,"FHDUU4_SBApplied_WSplinter")+count(item,"FHDUU4_SBApplied_WMissile");
  I(view,0x64)-=count(item,"FHDUU4_SBApplied_WRadius");break;
 }
 /* A tank's native standard-stat check derives capacity from physical weight.
    SB size reduction was integer-truncated. Check the possible original weights
    on the view only; native CanImprove still decides, including prior upgrades. */
 if(type==43){
  int percent=count(item,"FHDUU_Property_Size"),weight=I(view,0x18);
  if(percent>0&&percent<100&&weight>0&&weight<20000000){
   int scale=100-percent;
   int low=(weight*100+scale-1)/scale;
   int high=((weight+1)*100+scale-1)/scale-1;
   for(int w=low;w<=high;w++){I(view,0x18)=w;if(original_can_improve(view)&255)return 1;}
   return 0;
  }
 }
 return original_can_improve(view)&255;
}

typedef struct{u32 size,stamp,list,apply;u8 sig_list[5],sig_apply[5];} Profile;
#include "profiles.h"
static int installed;
__attribute__((visibility("hidden"))) volatile int science_status;
int science_init(void){
 int ready=previous_init_safe();if(ready!=1)return ready;if(installed)return 1;
 u8*peb;__asm__("movl %%fs:0x30,%0":"=r"(peb));
 u8*host=peb?(u8*)U(peb,8):0;if(!host){science_status=-41;return 1;}
 u32 nt=U(host,0x3c);const Profile*p=0;
 for(int i=0;i<2;i++)if(U(host,nt+0x50)==profiles[i].size&&U(host,nt+8)==profiles[i].stamp)p=&profiles[i];
 if(!p){science_status=-42;return 1;}
 u8*a=host+p->list;
 if(!same(a,p->sig_list,5)){science_status=-43;return 1;}
 u8*base=module_base();
 int W (*protect)(void*,u32,u32,u32*)=(void*)U(base,0x294c);
 int W (*flush)(void*,void*,u32)=(void*)U(base,0x2948);
 u32 pa,unused;
 if(!protect(a,5,0x40,&pa)){science_status=-44;return 1;}
 a[0]=0xe8;U(a,1)=(u8*)&science_allowed-a-5;
 protect(a,5,pa,&unused);
 flush((void*)-1,a,5);installed=1;science_status=1;return 1;
}
