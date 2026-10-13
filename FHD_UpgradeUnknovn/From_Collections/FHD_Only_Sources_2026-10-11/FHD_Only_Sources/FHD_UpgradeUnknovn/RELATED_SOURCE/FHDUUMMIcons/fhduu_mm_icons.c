/* Cosmetic micromodule badges for Rangers.exe 2.1.2500.
   Never changes equipment, MM records, installation, or save data.
   Target RVA 0x2accc7 is the end of the vanilla FormShop2 badge builder.
   First-only FSpecial shows one icon. When FBonus is installed too, its vanilla
   badge stays left and a sibling at +40 shows the FSpecial MM. */
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int i32;
typedef void *ptr;
#define STDCALL __attribute__((stdcall))
#define NAKED __attribute__((naked))

typedef struct {
    u32 size, apiVersion; ptr gameModule;
    const u16 *gameRoot, *executablePath, *pluginRoot, *configPath;
    void (STDCALL *log)(const u16 *, const u16 *);
    ptr configGetBool, configGetInt, configGetString;
} Host;
typedef struct {
    u32 size, requiredHostApi; u16 id[64], version[32], description[160];
    u32 exclusiveCapabilitiesLo, exclusiveCapabilitiesHi;
} Info;

static u8 *game;
static u32 imageSize;
static void (STDCALL *logMessage)(const u16 *,const u16 *);
typedef i32 (STDCALL *Protect)(ptr,ptr *,u32 *,u32,u32 *);
typedef i32 (STDCALL *Flush)(ptr,ptr,u32);
static Protect protectMemory;
static Flush flushCache;
ptr gGridTrampoline,gShipTopTrampoline,gShipGridTrampoline;
ptr gShipSelectedTrampoline,gShipSelectedGridTrampoline;
ptr gGetEquip,gPlayerAddr,gMMPath,gCatN,gStrClear,gImageClass,gImageCtor;
ptr gImageSet,gControlFlag,gImageMode1,gImageMode2,gRectUpdate,gScaleCoord;

static const u16 pluginId[]={'F','H','D','U','U','M','M','I','c','o','n','s',0};
static const u16 version[]={'0','.','2','.','8','6','h',0};
static const u16 description[]={'M','M',' ','i','c','o','n','s',' ','o','n','l','y',0};
static const u16 active[]={'v','i','s','u','a','l',' ','h','o','o','k','s',' ','a','c','t','i','v','e',' ','(','h','o','o','k','-','s','a','f','e',')',0};
static const u16 rendered[]={'s','e','c','o','n','d',' ','M','M',' ','i','c','o','n',' ','d','r','a','w','n',0};
static int renderedOnce;
typedef struct {ptr stock,parent,copy;u32 mm;} BadgeCopy;
static BadgeCopy copies[256];

/* Bounded diagnostics: each stage is reported once per process. */
static u32 diagMask;
static void diagnostic(u32 bit,const char *message,u32 b,u32 s) {
 if(!logMessage||(diagMask&bit))return;diagMask|=bit;
 u16 line[160];u32 n=0;while(*message&&n<120)line[n++]=(u8)*message++;
 const char *labels[2]={" FBonus=0x"," FSpecial=0x"};u32 values[2]={b,s};
 for(u32 j=0;j<2;j++) {const char *t=labels[j];while(*t)line[n++]=(u8)*t++;
  for(int k=7;k>=0;k--){u32 d=(values[j]>>(k*4))&15;line[n++]=d<10?'0'+d:'A'+d-10;}}
 line[n]=0;logMessage(pluginId,line);
}
static void logHookSite(const char *kind,u32 rva,const u8 *actual,int n) {
 if(!logMessage)return;
 u16 line[160];u32 pos=0;
 const char *prefix="hook "; while(*prefix&&pos<159)line[pos++]=(u8)*prefix++;
 while(*kind&&pos<159)line[pos++]=(u8)*kind++;
 const char *r=" rva=0x";while(*r&&pos<159)line[pos++]=(u8)*r++;
 for(int k=7;k>=0&&pos<159;k--){u32 d=(rva>>(k*4))&15;line[pos++]=(u16)(d<10?'0'+d:'A'+d-10);}
 const char *b=" bytes=";while(*b&&pos<159)line[pos++]=(u8)*b++;
 for(int i=0;i<n&&pos+3<159;i++){
  u32 hi=(actual[i]>>4)&15,lo=actual[i]&15;
  line[pos++]=(u16)(hi<10?'0'+hi:'A'+hi-10);
  line[pos++]=(u16)(lo<10?'0'+lo:'A'+lo-10);
  if(i+1<n)line[pos++]=' ';
 }
 line[pos]=0;logMessage(pluginId,line);
}
static int sameBytes(const u8 *a,const u8 *b,int n) {
 for(int i=0;i<n;i++)if(a[i]!=b[i])return 0;return 1;
}
static int sameJumpTarget(const u8 *site,ptr hook) {
 if(site[0]!=0xe9)return 0;
 i32 rel=*(const i32 *)(site+1);
 return site+5+rel==(const u8 *)hook;
}
static void logHookSummary(int installed,int already,int skipped) {
 if(!logMessage)return;
 u16 line[96];u32 pos=0;const char *s="hook-safe installed=";
 while(*s)line[pos++]=(u8)*s++;
 line[pos++]=(u16)('0'+(installed%10));
 s=" already=";while(*s)line[pos++]=(u8)*s++;
 line[pos++]=(u16)('0'+(already%10));
 s=" skipped=";while(*s)line[pos++]=(u8)*s++;
 line[pos++]=(u16)('0'+(skipped%10));line[pos]=0;
 logMessage(pluginId,line);
}
static void wideCopy(u16 *to,u32 cap,const u16 *from) {
    u32 i=0; while(i+1<cap && from[i]) { to[i]=from[i];++i; } to[i]=0;
}
static int asciiEqual(const char *a,const char *b) {
    if(!a||!b)return 0;
    while(*a&&*b)if(*a++!=*b++)return 0;
    return *a==*b;
}
NAKED static ptr pebAddress(void) { __asm__ volatile("movl %fs:0x30,%eax;ret"); }
static ptr findNtdll(void) {
    u8 *peb=(u8 *)pebAddress(); if(!peb)return 0;
    u8 *ldr=*(u8 **)(peb+0x0c); if(!ldr)return 0;
    u8 *head=ldr+0x14,*link=*(u8 **)head;
    for(int i=0;link&&link!=head&&i<32;++i) {
        u8 *entry=link-8,*base=*(u8 **)(entry+0x18);
        const u16 *name=*(const u16 **)(entry+0x30);
        if(base&&name) {
            static const char match[]="ntdll.dll";int j=0;
            for(;match[j];++j) {
                u16 c=name[j];if(c>='A'&&c<='Z')c+=32;
                if(c!=(u8)match[j])break;
            }
            if(!match[j]&&!name[j])return base;
        }
        link=*(u8 **)link;
    }
    return 0;
}
static ptr findExport(ptr module,const char *wanted) {
    u8 *base=(u8 *)module;if(!base||*(u16 *)base!=0x5a4d)return 0;
    u8 *nt=base+*(u32 *)(base+0x3c);
    if(*(u32 *)nt!=0x4550||*(u16 *)(nt+24)!=0x10b)return 0;
    u8 *opt=nt+24;u32 rva=*(u32 *)(opt+96),len=*(u32 *)(opt+100);
    if(!rva)return 0;
    u8 *exp=base+rva;u32 count=*(u32 *)(exp+20),n=*(u32 *)(exp+24);
    u32 *functions=(u32 *)(base+*(u32 *)(exp+28));
    u32 *names=(u32 *)(base+*(u32 *)(exp+32));
    u16 *ordinals=(u16 *)(base+*(u32 *)(exp+36));
    for(u32 i=0;i<n;++i)if(asciiEqual((char *)(base+names[i]),wanted)) {
        u16 ord=ordinals[i];if(ord>=count)return 0;
        u32 found=functions[ord];return found>=rva&&found<rva+len?0:base+found;
    }
    return 0;
}
static int writeBytes(void *to,const u8 *from,u32 len) {
    ptr page=to;u32 bytes=len,old=0,ignored=0;
    if(!protectMemory||protectMemory((ptr)-1,&page,&bytes,0x40,&old)<0)return 0;
    for(u32 i=0;i<len;++i)((u8 *)to)[i]=from[i];
    flushCache((ptr)-1,to,len);
    protectMemory((ptr)-1,&page,&bytes,old,&ignored);
    return 1;
}
static u8 *moduleRecord(i32 idx) {
    if(idx<0||idx>8191)return 0;
    u8 *holder=*(u8 **)(game+0x4826b4);
    u8 *base=holder?*(u8 **)holder:0;
    return base?base+(u32)idx*0x124u:0;
}

NAKED static void mmPath(i32 idx,u16 **out) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];mov edx,[esp+8];jmp dword ptr [gMMPath];.att_syntax prefix;");
}
NAKED static void cat3(u16 **out,const u16 *a,const u16 *b,const u16 *c) {
    __asm__ volatile(".intel_syntax noprefix;mov ecx,esp;push dword ptr [ecx+8];push dword ptr [ecx+12];push dword ptr [ecx+16];mov eax,[ecx+4];mov edx,3;call dword ptr [gCatN];ret;.att_syntax prefix;");
}
NAKED static void clearString(u16 **s) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];jmp dword ptr [gStrClear];.att_syntax prefix;");
}
NAKED static ptr newImage(ptr parent) {
    __asm__ volatile(".intel_syntax noprefix;mov ecx,[esp+4];mov dl,1;mov eax,dword ptr [gImageClass];call dword ptr [gImageCtor];ret;.att_syntax prefix;");
}
NAKED static void setImage(ptr image,const u16 *command) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];mov edx,[esp+8];call dword ptr [gImageSet];ret;.att_syntax prefix;");
}
NAKED static void controlFlag(ptr image,int value) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];mov edx,[esp+8];call dword ptr [gControlFlag];ret;.att_syntax prefix;");
}
NAKED static void setRectA(ptr image,ptr point) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];mov edx,[esp+8];mov ecx,[eax];call dword ptr [ecx+0x0c];ret;.att_syntax prefix;");
}
NAKED static void setRectB(ptr image,ptr point) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];mov edx,[esp+8];call dword ptr [gRectUpdate];ret;.att_syntax prefix;");
}
NAKED static void setRectC(ptr image,ptr point) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];mov edx,[esp+8];mov ecx,[eax];call dword ptr [ecx+0x18];ret;.att_syntax prefix;");
}
NAKED static void zeroPair(ptr image) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];push 0;push 0;mov edx,[eax];call dword ptr [edx+0x10];ret;.att_syntax prefix;");
}
NAKED static void imageMode1(ptr image,int value) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];mov edx,[esp+8];call dword ptr [gImageMode1];ret;.att_syntax prefix;");
}
NAKED static void imageMode2(ptr image,int value) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];mov edx,[esp+8];call dword ptr [gImageMode2];ret;.att_syntax prefix;");
}
NAKED static void visible(ptr image,int value) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];mov edx,[esp+8];mov ecx,[eax];mov ecx,[ecx+0x28];call ecx;ret;.att_syntax prefix;");
}
NAKED static int scale(int x) {
    __asm__ volatile(".intel_syntax noprefix;mov eax,[esp+4];call dword ptr [gScaleCoord];ret;.att_syntax prefix;");
}

/* The existing TImageGI has a parent at +0x14 and logical x/y at +0x20/+0x24.
   A tiny UI-only cache stops repeated FormShip2 refreshes from adding more
   controls. Before reusing an entry, walk the parent's live child list: a
   destroyed/recreated UI does not leave a stale pointer that we dereference. */
static int stillChild(ptr parent,ptr child) {
    if(!parent||!child)return 0;
    u8 *node=*(u8 **)((u8 *)parent+4);
    for(int i=0;node&&i<512;++i) {
        if(node==child)return 1;
        node=*(u8 **)(node+0x10);
    }
    return 0;
}
static void hideOrphans(ptr parent) {
    for(int i=0;i<256;++i) {
        if(copies[i].parent!=parent||!copies[i].stock)continue;
        if(!stillChild(parent,copies[i].copy)) {
            copies[i].stock=0;copies[i].copy=0;
            continue;
        }
        if(!stillChild(parent,copies[i].stock)||
           !((u8 *)copies[i].stock)[0x41])visible(copies[i].copy,0);
    }
}
static void hideCopy(ptr stock,ptr parent) {
    for(int i=0;i<256;++i) {
        if(copies[i].stock!=stock||copies[i].parent!=parent)continue;
        if(stillChild(parent,copies[i].copy))visible(copies[i].copy,0);
        else {copies[i].stock=0;copies[i].copy=0;}
        return;
    }
}
void FHDUU_DrawSecondIcon(ptr item,ptr stock) {
    diagnostic(1,"draw callback",0,0);
    if(!stock){diagnostic(2,"no stock control",0,0);return;}
    ptr parent=*(ptr *)((u8 *)stock+0x14);
    if(!parent){diagnostic(4,"no parent control",0,0);return;}
    hideOrphans(parent);
    if(!item) {
        hideCopy(stock,parent);
        visible(stock,0);
        return;
    }
    u32 b=*(u32 *)((u8 *)item+0x50),s=*(u32 *)((u8 *)item+0x54);
    if(b||s)diagnostic(8,"installed slot values",b,s);
    int slot=-1,freeSlot=-1;
    for(int i=0;i<256;++i) {
        if(copies[i].stock==stock&&copies[i].parent==parent) {slot=i;break;}
        if(freeSlot<0&&!copies[i].stock)freeSlot=i;
    }
    if(slot>=0&&!stillChild(parent,copies[slot].copy)) {
        copies[slot].stock=0;copies[slot].copy=0;
        if(freeSlot<0)freeSlot=slot;
        slot=-1;
    }
    if(!b&&s) {
        if(slot>=0)visible(copies[slot].copy,0);
        u8 *first=moduleRecord((i32)s-1);
        if(!first||first[0]){diagnostic(16,"first MM record is not ordinary",b,s);return;}
        u16 *path=0,*command=0;
        mmPath((i32)s-1,&path);
        if(!path){diagnostic(32,"MM image path is empty",0,0);return;}
        cat3(&command,(const u16 *)(game+0x2ace98),path,
             (const u16 *)(game+0x2aceb4));
        if(command) {setImage(stock,command);visible(stock,1);diagnostic(64,"first icon shown",b,s);}
        clearString(&command);clearString(&path);
        return;
    }
    if(!b||!s||b==s) {
        diagnostic(128,"no distinct second MM",b,s);
        if(slot>=0)visible(copies[slot].copy,0);
        if(!b)visible(stock,0);
        return;
    }
    u8 *first=moduleRecord((i32)s-1),*second=moduleRecord((i32)b-1);
    if(!first||!second||first[0]||second[0]) {
        diagnostic(256,"two MM records are not ordinary",b,s);
        if(slot>=0)visible(copies[slot].copy,0);
        return;
    }
    if(slot>=0&&copies[slot].mm==s) {
        i32 right[4]={*(i32 *)((u8 *)stock+0x20)+scale(40),
                      *(i32 *)((u8 *)stock+0x24),0,0};
        setRectA(copies[slot].copy,right);setRectB(copies[slot].copy,right);
        setRectC(copies[slot].copy,right);visible(copies[slot].copy,1);
        return;
    }

    /* Use the vanilla badge construction and image catalog for the other MM.
       The left badge remains FBonus; the right one displays FSpecial. */
    u16 *path=0,*command=0;
    mmPath((i32)s-1,&path);
    if(!path){diagnostic(32,"MM image path is empty",0,0);return;}
    const u16 *prefix=(const u16 *)(game+0x2ace98);
    const u16 *suffix=(const u16 *)(game+0x2aceb4);
    cat3(&command,prefix,path,suffix);
    if(command) {
        ptr badge=slot>=0?copies[slot].copy:newImage(parent);
        if(badge) {
            setImage(badge,command);
            controlFlag(badge,1);
            i32 right[4]={*(i32 *)((u8 *)stock+0x20)+scale(40),
                          *(i32 *)((u8 *)stock+0x24),0,0};
            setRectA(badge,right);setRectB(badge,right);setRectC(badge,right);
            zeroPair(badge);imageMode1(badge,4);imageMode2(badge,4);visible(badge,1);diagnostic(512,"second icon shown",b,s);
            if(slot<0)slot=freeSlot;
            if(slot>=0) {copies[slot].stock=stock;copies[slot].parent=parent;
                         copies[slot].copy=badge;copies[slot].mm=s;}
            if(!renderedOnce&&logMessage) {renderedOnce=1;logMessage(pluginId,rendered);}
        }
    }
    clearString(&command);clearString(&path);
}

/* Shop tiles create their stock MM badge only when FBonus is occupied.
   With only the first MM installed FBonus is empty, so use the already
   created equipment image as a position anchor and draw one separate badge.
   Its offset matches the vanilla FBonus badge's +45/+5 placement. */
void FHDUU_DrawShopFirstIcon(ptr item,ptr anchor) {
    if(!anchor)return;
    ptr parent=*(ptr *)((u8 *)anchor+0x14);
    if(!parent){diagnostic(4,"no parent control",0,0);return;}
    hideOrphans(parent);
    if(!item) {hideCopy(anchor,parent);return;}
    u32 b=*(u32 *)((u8 *)item+0x50),s=*(u32 *)((u8 *)item+0x54);
    int slot=-1,freeSlot=-1;
    for(int i=0;i<256;++i) {
        if(copies[i].stock==anchor&&copies[i].parent==parent) {slot=i;break;}
        if(freeSlot<0&&!copies[i].stock)freeSlot=i;
    }
    if(slot>=0&&!stillChild(parent,copies[slot].copy)) {
        copies[slot].stock=0;copies[slot].copy=0;
        if(freeSlot<0)freeSlot=slot;
        slot=-1;
    }
    u8 *first=(!b&&s)?moduleRecord((i32)s-1):0;
    if(!first||first[0]) {
        if(slot>=0)visible(copies[slot].copy,0);
        return;
    }
    i32 at[4]={*(i32 *)((u8 *)anchor+0x20)+scale(45),
               *(i32 *)((u8 *)anchor+0x24)+scale(5),0,0};
    if(slot>=0&&copies[slot].mm==s) {
        setRectA(copies[slot].copy,at);setRectB(copies[slot].copy,at);
        setRectC(copies[slot].copy,at);visible(copies[slot].copy,1);
        return;
    }
    u16 *path=0,*command=0;
    mmPath((i32)s-1,&path);
    if(!path){diagnostic(32,"MM image path is empty",0,0);return;}
    cat3(&command,(const u16 *)(game+0x2ace98),path,
         (const u16 *)(game+0x2aceb4));
    if(command) {
        ptr badge=slot>=0?copies[slot].copy:newImage(parent);
        if(badge) {
            setImage(badge,command);controlFlag(badge,1);
            setRectA(badge,at);setRectB(badge,at);setRectC(badge,at);
            zeroPair(badge);imageMode1(badge,4);imageMode2(badge,4);visible(badge,1);diagnostic(512,"second icon shown",b,s);
            if(slot<0)slot=freeSlot;
            if(slot>=0) {copies[slot].stock=anchor;copies[slot].parent=parent;
                         copies[slot].copy=badge;copies[slot].mm=s;}
        }
    }
    clearString(&command);clearString(&path);
}

NAKED static void gridTrampoline(void) {
    __asm__ volatile(".byte 0xff,0x45,0xe8,0xff,0x4d,0xc8,0xe9;.long 0");
}
NAKED static void gridHook(void) {
    __asm__ volatile(
        ".intel_syntax noprefix;pushad;"
        "mov eax,[ebp-8];test eax,eax;jz 1f;mov eax,[eax+0x0c];test eax,eax;jz 1f;"
        "mov edx,[ebp-0x48];test edx,edx;jz 1f;"
        "push edx;push eax;call FHDUU_DrawShopFirstIcon;add esp,8;"
        "mov eax,[ebp-8];mov eax,[eax+0x0c];cmp dword ptr [eax+0x50],0;je 1f;"
        "mov edx,[ebp-0x50];test edx,edx;jz 1f;"
        "push edx;push eax;call FHDUU_DrawSecondIcon;add esp,8;"
        "1:popad;jmp dword ptr [gGridTrampoline];.att_syntax prefix;"
    );
}

/* The ship screen uses existing, named TImageGI badge controls. The two
   refresh branches cover its focused equipment and list of installed items. */
NAKED static void shipTopTrampoline(void) {
    __asm__ volatile(".byte 0xc7,0x45,0xd4,0x06,0x00,0x00,0x00,0xe9;.long 0");
}
NAKED static void shipTopHook(void) {
    __asm__ volatile(
        ".intel_syntax noprefix;pushad;"
        "mov eax,[ebp-4];test eax,eax;jz 1f;mov eax,[eax+0xd8];test eax,eax;jz 1f;"
        "call dword ptr [gGetEquip];"
        "mov edx,[ebp-0x30];push edx;push eax;call FHDUU_DrawSecondIcon;add esp,8;"
        "jmp 2f;"
        "1:mov edx,[ebp-0x30];push edx;push 0;call FHDUU_DrawSecondIcon;add esp,8;"
        "2:popad;jmp dword ptr [gShipTopTrampoline];.att_syntax prefix;"
    );
}
NAKED static void shipGridTrampoline(void) {
    __asm__ volatile(".byte 0xc7,0x45,0xd4,0x0b,0x00,0x00,0x00,0xe9;.long 0");
}
NAKED static void shipGridHook(void) {
    __asm__ volatile(
        ".intel_syntax noprefix;pushad;"
        "mov eax,[ebp-0x18];mov edx,[ebp-0x38];"
        "push edx;push eax;call FHDUU_DrawSecondIcon;add esp,8;"
        "popad;jmp dword ptr [gShipGridTrampoline];.att_syntax prefix;"
    );
}
NAKED static void shipSelectedTrampoline(void) {
    __asm__ volatile(".byte 0x33,0xc0,0x89,0x45,0xf8,0xe9;.long 0");
}
NAKED static void shipSelectedHook(void) {
    __asm__ volatile(
        ".intel_syntax noprefix;pushad;"
        "mov eax,dword ptr [gPlayerAddr];mov eax,[eax];test eax,eax;jz 1f;"
        "call dword ptr [gGetEquip];"
        "mov edx,[ebp-0x48];push edx;push eax;call FHDUU_DrawSecondIcon;add esp,8;"
        "1:popad;jmp dword ptr [gShipSelectedTrampoline];.att_syntax prefix;"
    );
}
NAKED static void shipSelectedGridTrampoline(void) {
    __asm__ volatile(".byte 0xa1,0x90,0x2d,0x88,0x00,0xe9;.long 0");
}
NAKED static void shipSelectedGridHook(void) {
    __asm__ volatile(
        ".intel_syntax noprefix;pushad;"
        "mov eax,[ebp-0x20];mov edx,[ebp-0x50];"
        "push edx;push eax;call FHDUU_DrawSecondIcon;add esp,8;"
        "popad;jmp dword ptr [gShipSelectedGridTrampoline];.att_syntax prefix;"
    );
}

int STDCALL XenoPlugin_Query(Info *info) {
    if(!info||info->size<520)return 0;
    info->requiredHostApi=1;wideCopy(info->id,64,pluginId);
    wideCopy(info->version,32,version);wideCopy(info->description,160,description);
    if(info->size>=528)info->exclusiveCapabilitiesLo=info->exclusiveCapabilitiesHi=0;
    return 1;
}
static int installHook(u32 rva,const u8 *expected,int n,ptr trampoline,ptr hook) {
    u8 *target=game+rva,*t=(u8 *)trampoline;
    u8 displacement[4];
    *(i32 *)displacement=(i32)(target+n-(t+n+5));
    if(!writeBytes(t+n+1,displacement,4))return 0;
    u8 jump[8]={0xe9,0,0,0,0,0x90,0x90,0x90};
    *(i32 *)(jump+1)=(i32)((u8 *)hook-(target+5));
    return writeBytes(target,jump,n);
}
u32 STDCALL XenoPlugin_Initialize(const Host *host) {
    if(!host||host->size<32||host->apiVersion!=1)return 1;
    game=(u8 *)host->gameModule;logMessage=host->log;
    if(!game||*(u16 *)game!=0x5a4d)return 2;
    u8 *nt=game+*(u32 *)(game+0x3c);
    if(*(u32 *)nt!=0x4550||*(u16 *)(nt+24)!=0x10b)return 2;
    imageSize=*(u32 *)(nt+24+56);if(imageSize<=0x4826b8)return 2;
    ptr ntdll=findNtdll();protectMemory=(Protect)findExport(ntdll,"NtProtectVirtualMemory");
    flushCache=(Flush)findExport(ntdll,"NtFlushInstructionCache");
    if(!protectMemory||!flushCache)return 3;
    const u32 sites[5]={0x2accc7,0x11ff1b,0x1201ee,0x2dc1bc,0x2dc464};
    const u8 expected[5][7]={
        {0xff,0x45,0xe8,0xff,0x4d,0xc8},
        {0xc7,0x45,0xd4,0x06,0x00,0x00,0x00},
        {0xc7,0x45,0xd4,0x0b,0x00,0x00,0x00},
        {0x33,0xc0,0x89,0x45,0xf8},
        {0xa1,0x90,0x2d,0x88,0x00}
    };
    const int lens[5]={6,7,7,5,5};
    gMMPath=game+0x34acbc;gCatN=game+0x5ffc;gStrClear=game+0x5d18;
    gImageClass=*(ptr *)(game+0x8998c);gImageCtor=game+0x89abc;
    gImageSet=game+0x89b4c;gControlFlag=game+0xc9d9c;
    gImageMode1=game+0x8a380;gImageMode2=game+0x8a470;
    gRectUpdate=game+0x8a228;gScaleCoord=game+0xc6958;
    gGetEquip=game+0x30e5e0;gPlayerAddr=game+0x47bbd8;
    gGridTrampoline=gridTrampoline;
    gShipTopTrampoline=shipTopTrampoline;
    gShipGridTrampoline=shipGridTrampoline;
    gShipSelectedTrampoline=shipSelectedTrampoline;
    gShipSelectedGridTrampoline=shipSelectedGridTrampoline;
    ptr trampolines[5]={gridTrampoline,shipTopTrampoline,shipGridTrampoline,
                        shipSelectedTrampoline,shipSelectedGridTrampoline};
    ptr hooks[5]={gridHook,shipTopHook,shipGridHook,
                  shipSelectedHook,shipSelectedGridHook};
    int installed=0,already=0,skipped=0;
    for(int i=0;i<5;++i) {
        if(sites[i]+lens[i]>=imageSize) {
            ++skipped;logHookSite("out-of-range",sites[i],game+sites[i],0);continue;
        }
        u8 *site=game+sites[i];
        if(sameBytes(site,expected[i],lens[i])) {
            if(installHook(sites[i],expected[i],lens[i],trampolines[i],hooks[i]))++installed;
            else {++skipped;logHookSite("write-failed",sites[i],site,lens[i]);}
            continue;
        }
        /* A second initialization in the same process must be harmless. */
        if(sameJumpTarget(site,hooks[i])) {++already;continue;}
        /* Never overwrite an unknown owner. One occupied UI site must not
           disable the other independent icon sites. */
        ++skipped;logHookSite(site[0]==0xe9?"occupied-jmp":"signature-mismatch",
                              sites[i],site,lens[i]);
    }
    logHookSummary(installed,already,skipped);
    if(installed+already==0)return 4;
    if(logMessage)logMessage(pluginId,active);
    return 0;
}
int STDCALL DllMain(ptr module,u32 reason,ptr reserved) {
    (void)module;(void)reason;(void)reserved;return 1;
}
