/* Recovered complete x86 source; original C was not supplied.
 * Each instruction and original function name is visible. Fixed layout and
 * explicit branch widths preserve this DLL exactly. */
.intel_syntax noprefix
.section .text,"ax",@progbits
.org 0x0
L_12001000:
    # Original function: diagnostic
    push   ebp
.org 0x1
L_12001001:
    push   edi
.org 0x2
L_12001002:
    push   esi
.org 0x3
L_12001003:
    push   ebx
.org 0x4
L_12001004:
    mov    ebx,eax
.org 0x6
L_12001006:
    sub    esp,0x16c
.org 0xc
L_1200100c:
    mov    eax,ds:0x1200988c
.org 0x11
L_12001011:
    test   eax,eax
.org 0x13
L_12001013:
    # je     12001118
    .byte 0xf,0x84
    .long L_12001118 - . - 4
.org 0x19
L_12001019:
    mov    esi,edx
.org 0x1b
L_1200101b:
    mov    edx,DWORD PTR [0x12008860]
.org 0x21
L_12001021:
    mov    ebp,edx
.org 0x23
L_12001023:
    and    ebp,ebx
.org 0x25
L_12001025:
    # jne    12001118
    .byte 0xf,0x85
    .long L_12001118 - . - 4
.org 0x2b
L_1200102b:
    or     edx,ebx
.org 0x2d
L_1200102d:
    movzx  ebx,BYTE PTR [esi]
.org 0x30
L_12001030:
    mov    edi,ecx
.org 0x32
L_12001032:
    xor    ecx,ecx
.org 0x34
L_12001034:
    mov    DWORD PTR [0x12008860],edx
.org 0x3a
L_1200103a:
    lea    edx,[esp+0x20]
.org 0x3e
L_1200103e:
    test   bl,bl
.org 0x40
L_12001040:
    # jne    1200104d
    .byte 0x75
    .byte L_1200104d - . - 1
.org 0x42
L_12001042:
    # jmp    1200105d
    .byte 0xeb
    .byte L_1200105d - . - 1
.org 0x44
L_12001044:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x48
L_12001048:
    cmp    ecx,0x78
.org 0x4b
L_1200104b:
    # je     1200105d
    .byte 0x74
    .byte L_1200105d - . - 1
.org 0x4d
L_1200104d:
    add    ecx,0x1
.org 0x50
L_12001050:
    mov    WORD PTR [edx+ecx*2-0x2],bx
.org 0x55
L_12001055:
    movzx  ebx,BYTE PTR [esi+ecx*1]
.org 0x59
L_12001059:
    test   bl,bl
.org 0x5b
L_1200105b:
    # jne    12001048
    .byte 0x75
    .byte L_12001048 - . - 1
.org 0x5d
L_1200105d:
    mov    ebx,DWORD PTR [esp+0x180]
.org 0x64
L_12001064:
    mov    DWORD PTR [esp+0x4],edx
.org 0x68
L_12001068:
    mov    DWORD PTR [esp+0x18],edi
.org 0x6c
L_1200106c:
    mov    edi,0x12004000
.org 0x71
L_12001071:
    mov    DWORD PTR [esp+0x1c],ebx
.org 0x75
L_12001075:
    mov    ebx,ebp
.org 0x77
L_12001077:
    mov    ebp,eax
.org 0x79
L_12001079:
    mov    edx,DWORD PTR [esp+0x4]
.org 0x7d
L_1200107d:
    mov    eax,0x20
.org 0x82
L_12001082:
    sub    edi,ecx
.org 0x84
L_12001084:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x88
L_12001088:
    mov    esi,ecx
.org 0x8a
L_1200108a:
    lea    ecx,[ecx+0x1]
.org 0x8d
L_1200108d:
    mov    WORD PTR [edx+ecx*2-0x2],ax
.org 0x92
L_12001092:
    movzx  eax,BYTE PTR [esi+edi*1+0x1]
.org 0x97
L_12001097:
    test   al,al
.org 0x99
L_12001099:
    # jne    12001088
    .byte 0x75
    .byte L_12001088 - . - 1
.org 0x9b
L_1200109b:
    mov    eax,DWORD PTR [esp+0x4]
.org 0x9f
L_1200109f:
    mov    edx,DWORD PTR [esp+ebx*4+0x18]
.org 0xa3
L_120010a3:
    mov    DWORD PTR [esp+0x8],ebp
.org 0xa7
L_120010a7:
    mov    DWORD PTR [esp+0xc],ebx
.org 0xab
L_120010ab:
    lea    edi,[eax+ecx*2]
.org 0xae
L_120010ae:
    mov    ecx,0x1c
.org 0xb3
L_120010b3:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0xb8
L_120010b8:
    mov    eax,edx
.org 0xba
L_120010ba:
    shr    eax,cl
.org 0xbc
L_120010bc:
    and    eax,0xf
.org 0xbf
L_120010bf:
    cmp    eax,0x9
.org 0xc2
L_120010c2:
    lea    ebp,[eax+0x30]
.org 0xc5
L_120010c5:
    lea    ebx,[eax+0x37]
.org 0xc8
L_120010c8:
    cmovbe ebx,ebp
.org 0xcb
L_120010cb:
    sub    ecx,0x4
.org 0xce
L_120010ce:
    add    edi,0x2
.org 0xd1
L_120010d1:
    mov    WORD PTR [edi-0x2],bx
.org 0xd5
L_120010d5:
    cmp    ecx,0xfffffffc
.org 0xd8
L_120010d8:
    # jne    120010b8
    .byte 0x75
    .byte L_120010b8 - . - 1
.org 0xda
L_120010da:
    mov    ebx,DWORD PTR [esp+0xc]
.org 0xde
L_120010de:
    mov    ebp,DWORD PTR [esp+0x8]
.org 0xe2
L_120010e2:
    lea    ecx,[esi+0x9]
.org 0xe5
L_120010e5:
    cmp    ebx,0x1
.org 0xe8
L_120010e8:
    # je     12001100
    .byte 0x74
    .byte L_12001100 - . - 1
.org 0xea
L_120010ea:
    mov    edi,0x1200400b
.org 0xef
L_120010ef:
    mov    ebx,0x1
.org 0xf4
L_120010f4:
    # jmp    12001079
    .byte 0xeb
    .byte L_12001079 - . - 1
.org 0xf6
L_120010f6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xfe
L_120010fe:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x100
L_12001100:
    mov    edx,DWORD PTR [esp+0x4]
.org 0x104
L_12001104:
    xor    ebx,ebx
.org 0x106
L_12001106:
    mov    WORD PTR [esp+ecx*2+0x20],bx
.org 0x10b
L_1200110b:
    sub    esp,0x8
.org 0x10e
L_1200110e:
    push   edx
.org 0x10f
L_1200110f:
    push   0x1200610c
.org 0x114
L_12001114:
    call   ebp
.org 0x116
L_12001116:
    pop    esi
.org 0x117
L_12001117:
    pop    edi
.org 0x118
L_12001118:
    add    esp,0x16c
.org 0x11e
L_1200111e:
    pop    ebx
.org 0x11f
L_1200111f:
    pop    esi
.org 0x120
L_12001120:
    pop    edi
.org 0x121
L_12001121:
    pop    ebp
.org 0x122
L_12001122:
    ret
.org 0x123
L_12001123:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x12b
L_1200112b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x130
L_12001130:
    # Original function: logHookSite
    push   ebp
.org 0x131
L_12001131:
    push   edi
.org 0x132
L_12001132:
    push   esi
.org 0x133
L_12001133:
    push   ebx
.org 0x134
L_12001134:
    sub    esp,0x15c
.org 0x13a
L_1200113a:
    mov    ebp,DWORD PTR [0x1200988c]
.org 0x140
L_12001140:
    mov    DWORD PTR [esp+0x4],ecx
.org 0x144
L_12001144:
    test   ebp,ebp
.org 0x146
L_12001146:
    # je     1200135f
    .byte 0xf,0x84
    .long L_1200135f - . - 4
.org 0x14c
L_1200114c:
    mov    edi,edx
.org 0x14e
L_1200114e:
    mov    ecx,0x68
.org 0x153
L_12001153:
    lea    ebx,[esp+0x10]
.org 0x157
L_12001157:
    xor    edx,edx
.org 0x159
L_12001159:
    # jmp    1200116c
    .byte 0xeb
    .byte L_1200116c - . - 1
.org 0x15b
L_1200115b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x160
L_12001160:
    cmp    edx,0x9f
.org 0x166
L_12001166:
    # je     12001370
    .byte 0xf,0x84
    .long L_12001370 - . - 4
.org 0x16c
L_1200116c:
    mov    esi,edx
.org 0x16e
L_1200116e:
    add    edx,0x1
.org 0x171
L_12001171:
    mov    WORD PTR [ebx+edx*2-0x2],cx
.org 0x176
L_12001176:
    movzx  ecx,BYTE PTR [edx+0x12004018]
.org 0x17d
L_1200117d:
    test   cl,cl
.org 0x17f
L_1200117f:
    # jne    12001160
    .byte 0x75
    .byte L_12001160 - . - 1
.org 0x181
L_12001181:
    movzx  ecx,BYTE PTR [eax]
.org 0x184
L_12001184:
    test   cl,cl
.org 0x186
L_12001186:
    # je     120011bc
    .byte 0x74
    .byte L_120011bc - . - 1
.org 0x188
L_12001188:
    cmp    edx,0x9f
.org 0x18e
L_1200118e:
    # je     12001370
    .byte 0xf,0x84
    .long L_12001370 - . - 4
.org 0x194
L_12001194:
    not    esi
.org 0x196
L_12001196:
    add    esi,eax
.org 0x198
L_12001198:
    # jmp    120011ac
    .byte 0xeb
    .byte L_120011ac - . - 1
.org 0x19a
L_1200119a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x1a0
L_120011a0:
    cmp    edx,0x9f
.org 0x1a6
L_120011a6:
    # je     12001370
    .byte 0xf,0x84
    .long L_12001370 - . - 4
.org 0x1ac
L_120011ac:
    add    edx,0x1
.org 0x1af
L_120011af:
    mov    WORD PTR [ebx+edx*2-0x2],cx
.org 0x1b4
L_120011b4:
    movzx  ecx,BYTE PTR [esi+edx*1]
.org 0x1b8
L_120011b8:
    test   cl,cl
.org 0x1ba
L_120011ba:
    # jne    120011a0
    .byte 0x75
    .byte L_120011a0 - . - 1
.org 0x1bc
L_120011bc:
    cmp    edx,0x9f
.org 0x1c2
L_120011c2:
    # je     12001370
    .byte 0xf,0x84
    .long L_12001370 - . - 4
.org 0x1c8
L_120011c8:
    mov    ecx,0x1200401e
.org 0x1cd
L_120011cd:
    mov    eax,0x20
.org 0x1d2
L_120011d2:
    sub    ecx,edx
.org 0x1d4
L_120011d4:
    # jmp    120011ec
    .byte 0xeb
    .byte L_120011ec - . - 1
.org 0x1d6
L_120011d6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1de
L_120011de:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x1e0
L_120011e0:
    cmp    edx,0x9f
.org 0x1e6
L_120011e6:
    # je     12001370
    .byte 0xf,0x84
    .long L_12001370 - . - 4
.org 0x1ec
L_120011ec:
    add    edx,0x1
.org 0x1ef
L_120011ef:
    mov    WORD PTR [ebx+edx*2-0x2],ax
.org 0x1f4
L_120011f4:
    movzx  eax,BYTE PTR [ecx+edx*1]
.org 0x1f8
L_120011f8:
    test   al,al
.org 0x1fa
L_120011fa:
    # jne    120011e0
    .byte 0x75
    .byte L_120011e0 - . - 1
.org 0x1fc
L_120011fc:
    cmp    edx,0x9f
.org 0x202
L_12001202:
    # je     12001370
    .byte 0xf,0x84
    .long L_12001370 - . - 4
.org 0x208
L_12001208:
    mov    DWORD PTR [esp+0x8],ebp
.org 0x20c
L_1200120c:
    mov    esi,0x7
.org 0x211
L_12001211:
    # jmp    1200121a
    .byte 0xeb
    .byte L_1200121a - . - 1
.org 0x213
L_12001213:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x218
L_12001218:
    mov    edx,eax
.org 0x21a
L_1200121a:
    lea    ecx,[esi*4+0x0]
.org 0x221
L_12001221:
    mov    eax,edi
.org 0x223
L_12001223:
    shr    eax,cl
.org 0x225
L_12001225:
    and    eax,0xf
.org 0x228
L_12001228:
    lea    ebp,[eax+0x30]
.org 0x22b
L_1200122b:
    lea    ecx,[eax+0x37]
.org 0x22e
L_1200122e:
    cmp    eax,0x9
.org 0x231
L_12001231:
    cmovbe ecx,ebp
.org 0x234
L_12001234:
    lea    eax,[edx+0x1]
.org 0x237
L_12001237:
    mov    WORD PTR [ebx+eax*2-0x2],cx
.org 0x23c
L_1200123c:
    sub    esi,0x1
.org 0x23f
L_1200123f:
    # js     12001248
    .byte 0x78
    .byte L_12001248 - . - 1
.org 0x241
L_12001241:
    cmp    eax,0x9e
.org 0x246
L_12001246:
    # jbe    12001218
    .byte 0x76
    .byte L_12001218 - . - 1
.org 0x248
L_12001248:
    mov    ebp,DWORD PTR [esp+0x8]
.org 0x24c
L_1200124c:
    cmp    eax,0x9f
.org 0x251
L_12001251:
    # je     12001370
    .byte 0xf,0x84
    .long L_12001370 - . - 4
.org 0x257
L_12001257:
    mov    ecx,0x20
.org 0x25c
L_1200125c:
    not    edx
.org 0x25e
L_1200125e:
    # jmp    1200126b
    .byte 0xeb
    .byte L_1200126b - . - 1
.org 0x260
L_12001260:
    cmp    eax,0x9f
.org 0x265
L_12001265:
    # je     12001370
    .byte 0xf,0x84
    .long L_12001370 - . - 4
.org 0x26b
L_1200126b:
    mov    edi,eax
.org 0x26d
L_1200126d:
    add    eax,0x1
.org 0x270
L_12001270:
    mov    WORD PTR [ebx+eax*2-0x2],cx
.org 0x275
L_12001275:
    movzx  ecx,BYTE PTR [eax+edx*1+0x12004026]
.org 0x27d
L_1200127d:
    test   cl,cl
.org 0x27f
L_1200127f:
    # jne    12001260
    .byte 0x75
    .byte L_12001260 - . - 1
.org 0x281
L_12001281:
    mov    edx,DWORD PTR [esp+0x170]
.org 0x288
L_12001288:
    test   edx,edx
.org 0x28a
L_1200128a:
    # jle    1200134b
    .byte 0xf,0x8e
    .long L_1200134b - . - 4
.org 0x290
L_12001290:
    add    edi,0x4
.org 0x293
L_12001293:
    cmp    edi,0x9e
.org 0x299
L_12001299:
    # ja     1200134b
    .byte 0xf,0x87
    .long L_1200134b - . - 4
.org 0x29f
L_1200129f:
    mov    esi,DWORD PTR [esp+0x4]
.org 0x2a3
L_120012a3:
    mov    ecx,DWORD PTR [esp+0x170]
.org 0x2aa
L_120012aa:
    mov    DWORD PTR [esp+0xc],ebp
.org 0x2ae
L_120012ae:
    lea    ecx,[esi+ecx*1-0x1]
.org 0x2b2
L_120012b2:
    mov    DWORD PTR [esp+0x8],ecx
.org 0x2b6
L_120012b6:
    # jmp    12001303
    .byte 0xeb
    .byte L_12001303 - . - 1
.org 0x2b8
L_120012b8:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x2c0
L_120012c0:
    add    ecx,0x30
.org 0x2c3
L_120012c3:
    lea    ebp,[eax+0x1]
.org 0x2c6
L_120012c6:
    movzx  ecx,cl
.org 0x2c9
L_120012c9:
    mov    WORD PTR [esp+eax*2+0x10],cx
.org 0x2ce
L_120012ce:
    cmp    dl,0x9
.org 0x2d1
L_120012d1:
    # ja     12001333
    .byte 0x77
    .byte L_12001333 - . - 1
.org 0x2d3
L_120012d3:
    add    edx,0x30
.org 0x2d6
L_120012d6:
    add    eax,0x2
.org 0x2d9
L_120012d9:
    movzx  edx,dl
.org 0x2dc
L_120012dc:
    mov    WORD PTR [esp+ebp*2+0x10],dx
.org 0x2e1
L_120012e1:
    cmp    DWORD PTR [esp+0x8],esi
.org 0x2e5
L_120012e5:
    # je     12001347
    .byte 0x74
    .byte L_12001347 - . - 1
.org 0x2e7
L_120012e7:
    mov    ebp,0x20
.org 0x2ec
L_120012ec:
    lea    edx,[edi+0x3]
.org 0x2ef
L_120012ef:
    add    esi,0x1
.org 0x2f2
L_120012f2:
    mov    WORD PTR [esp+eax*2+0x10],bp
.org 0x2f7
L_120012f7:
    mov    eax,edi
.org 0x2f9
L_120012f9:
    cmp    edx,0x9e
.org 0x2ff
L_120012ff:
    # ja     12001347
    .byte 0x77
    .byte L_12001347 - . - 1
.org 0x301
L_12001301:
    mov    edi,edx
.org 0x303
L_12001303:
    movzx  ebp,BYTE PTR [esi]
.org 0x306
L_12001306:
    mov    ecx,ebp
.org 0x308
L_12001308:
    mov    edx,ebp
.org 0x30a
L_1200130a:
    shr    cl,0x4
.org 0x30d
L_1200130d:
    and    edx,0xf
.org 0x310
L_12001310:
    mov    BYTE PTR [esp+0x4],cl
.org 0x314
L_12001314:
    mov    ecx,ebp
.org 0x316
L_12001316:
    cmp    cl,0x9f
.org 0x319
L_12001319:
    movzx  ecx,BYTE PTR [esp+0x4]
.org 0x31e
L_1200131e:
    # jbe    120012c0
    .byte 0x76
    .byte L_120012c0 - . - 1
.org 0x320
L_12001320:
    add    ecx,0x37
.org 0x323
L_12001323:
    lea    ebp,[eax+0x1]
.org 0x326
L_12001326:
    movzx  ecx,cl
.org 0x329
L_12001329:
    mov    WORD PTR [esp+eax*2+0x10],cx
.org 0x32e
L_1200132e:
    cmp    dl,0x9
.org 0x331
L_12001331:
    # jbe    120012d3
    .byte 0x76
    .byte L_120012d3 - . - 1
.org 0x333
L_12001333:
    add    edx,0x37
.org 0x336
L_12001336:
    add    eax,0x2
.org 0x339
L_12001339:
    movzx  edx,dl
.org 0x33c
L_1200133c:
    mov    WORD PTR [esp+ebp*2+0x10],dx
.org 0x341
L_12001341:
    cmp    DWORD PTR [esp+0x8],esi
.org 0x345
L_12001345:
    # jne    120012e7
    .byte 0x75
    .byte L_120012e7 - . - 1
.org 0x347
L_12001347:
    mov    ebp,DWORD PTR [esp+0xc]
.org 0x34b
L_1200134b:
    xor    edx,edx
.org 0x34d
L_1200134d:
    mov    WORD PTR [esp+eax*2+0x10],dx
.org 0x352
L_12001352:
    sub    esp,0x8
.org 0x355
L_12001355:
    push   ebx
.org 0x356
L_12001356:
    push   0x1200610c
.org 0x35b
L_1200135b:
    call   ebp
.org 0x35d
L_1200135d:
    pop    ecx
.org 0x35e
L_1200135e:
    pop    ebx
.org 0x35f
L_1200135f:
    add    esp,0x15c
.org 0x365
L_12001365:
    pop    ebx
.org 0x366
L_12001366:
    pop    esi
.org 0x367
L_12001367:
    pop    edi
.org 0x368
L_12001368:
    pop    ebp
.org 0x369
L_12001369:
    ret
.org 0x36a
L_1200136a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x370
L_12001370:
    mov    eax,0x9f
.org 0x375
L_12001375:
    # jmp    1200134b
    .byte 0xeb
    .byte L_1200134b - . - 1
.org 0x377
L_12001377:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x37f
L_1200137f:
    # Alignment padding: nop
    .byte 0x90
.org 0x380
L_12001380:
    # Original function: pebAddress
    mov    eax,fs:0x30
.org 0x386
L_12001386:
    ret
.org 0x387
L_12001387:
    ud2
.org 0x389
L_12001389:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x390
L_12001390:
    # Original function: findExport
    push   ebp
.org 0x391
L_12001391:
    push   edi
.org 0x392
L_12001392:
    push   esi
.org 0x393
L_12001393:
    push   ebx
.org 0x394
L_12001394:
    sub    esp,0x14
.org 0x397
L_12001397:
    test   eax,eax
.org 0x399
L_12001399:
    # je     12001424
    .byte 0xf,0x84
    .long L_12001424 - . - 4
.org 0x39f
L_1200139f:
    xor    esi,esi
.org 0x3a1
L_120013a1:
    cmp    WORD PTR [eax],0x5a4d
.org 0x3a6
L_120013a6:
    mov    edi,eax
.org 0x3a8
L_120013a8:
    # jne    12001426
    .byte 0x75
    .byte L_12001426 - . - 1
.org 0x3aa
L_120013aa:
    mov    ebx,edx
.org 0x3ac
L_120013ac:
    mov    edx,DWORD PTR [eax+0x3c]
.org 0x3af
L_120013af:
    add    edx,eax
.org 0x3b1
L_120013b1:
    cmp    DWORD PTR [edx],0x4550
.org 0x3b7
L_120013b7:
    # jne    12001426
    .byte 0x75
    .byte L_12001426 - . - 1
.org 0x3b9
L_120013b9:
    cmp    WORD PTR [edx+0x18],0x10b
.org 0x3bf
L_120013bf:
    # jne    12001426
    .byte 0x75
    .byte L_12001426 - . - 1
.org 0x3c1
L_120013c1:
    mov    eax,DWORD PTR [edx+0x78]
.org 0x3c4
L_120013c4:
    mov    DWORD PTR [esp+0x8],eax
.org 0x3c8
L_120013c8:
    test   eax,eax
.org 0x3ca
L_120013ca:
    # je     12001426
    .byte 0x74
    .byte L_12001426 - . - 1
.org 0x3cc
L_120013cc:
    lea    ecx,[edi+eax*1]
.org 0x3cf
L_120013cf:
    mov    ebp,DWORD PTR [ecx+0x18]
.org 0x3d2
L_120013d2:
    mov    eax,DWORD PTR [ecx+0x20]
.org 0x3d5
L_120013d5:
    mov    DWORD PTR [esp+0x4],ebp
.org 0x3d9
L_120013d9:
    test   ebp,ebp
.org 0x3db
L_120013db:
    # je     12001426
    .byte 0x74
    .byte L_12001426 - . - 1
.org 0x3dd
L_120013dd:
    add    eax,edi
.org 0x3df
L_120013df:
    mov    DWORD PTR [esp+0xc],edx
.org 0x3e3
L_120013e3:
    xor    ebp,ebp
.org 0x3e5
L_120013e5:
    mov    DWORD PTR [esp],eax
.org 0x3e8
L_120013e8:
    mov    DWORD PTR [esp+0x10],ecx
.org 0x3ec
L_120013ec:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x3f0
L_120013f0:
    mov    eax,DWORD PTR [esp]
.org 0x3f3
L_120013f3:
    mov    esi,DWORD PTR [eax+ebp*4]
.org 0x3f6
L_120013f6:
    xor    eax,eax
.org 0x3f8
L_120013f8:
    add    esi,edi
.org 0x3fa
L_120013fa:
    # jmp    1200140b
    .byte 0xeb
    .byte L_1200140b - . - 1
.org 0x3fc
L_120013fc:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x400
L_12001400:
    test   cl,cl
.org 0x402
L_12001402:
    # je     1200141b
    .byte 0x74
    .byte L_1200141b - . - 1
.org 0x404
L_12001404:
    add    eax,0x1
.org 0x407
L_12001407:
    cmp    dl,cl
.org 0x409
L_12001409:
    # jne    1200141b
    .byte 0x75
    .byte L_1200141b - . - 1
.org 0x40b
L_1200140b:
    movzx  edx,BYTE PTR [esi+eax*1]
.org 0x40f
L_1200140f:
    movzx  ecx,BYTE PTR [ebx+eax*1]
.org 0x413
L_12001413:
    test   dl,dl
.org 0x415
L_12001415:
    # jne    12001400
    .byte 0x75
    .byte L_12001400 - . - 1
.org 0x417
L_12001417:
    test   cl,cl
.org 0x419
L_12001419:
    # je     12001430
    .byte 0x74
    .byte L_12001430 - . - 1
.org 0x41b
L_1200141b:
    add    ebp,0x1
.org 0x41e
L_1200141e:
    cmp    DWORD PTR [esp+0x4],ebp
.org 0x422
L_12001422:
    # jne    120013f0
    .byte 0x75
    .byte L_120013f0 - . - 1
.org 0x424
L_12001424:
    xor    esi,esi
.org 0x426
L_12001426:
    add    esp,0x14
.org 0x429
L_12001429:
    mov    eax,esi
.org 0x42b
L_1200142b:
    pop    ebx
.org 0x42c
L_1200142c:
    pop    esi
.org 0x42d
L_1200142d:
    pop    edi
.org 0x42e
L_1200142e:
    pop    ebp
.org 0x42f
L_1200142f:
    ret
.org 0x430
L_12001430:
    mov    ecx,DWORD PTR [esp+0x10]
.org 0x434
L_12001434:
    lea    eax,[edi+ebp*2]
.org 0x437
L_12001437:
    mov    edx,DWORD PTR [esp+0xc]
.org 0x43b
L_1200143b:
    xor    esi,esi
.org 0x43d
L_1200143d:
    add    eax,DWORD PTR [ecx+0x24]
.org 0x440
L_12001440:
    movzx  eax,WORD PTR [eax]
.org 0x443
L_12001443:
    cmp    eax,DWORD PTR [ecx+0x14]
.org 0x446
L_12001446:
    # jae    12001426
    .byte 0x73
    .byte L_12001426 - . - 1
.org 0x448
L_12001448:
    lea    eax,[edi+eax*4]
.org 0x44b
L_1200144b:
    add    eax,DWORD PTR [ecx+0x1c]
.org 0x44e
L_1200144e:
    mov    ecx,DWORD PTR [eax]
.org 0x450
L_12001450:
    mov    eax,DWORD PTR [esp+0x8]
.org 0x454
L_12001454:
    cmp    ecx,eax
.org 0x456
L_12001456:
    # jae    1200145d
    .byte 0x73
    .byte L_1200145d - . - 1
.org 0x458
L_12001458:
    lea    esi,[edi+ecx*1]
.org 0x45b
L_1200145b:
    # jmp    12001426
    .byte 0xeb
    .byte L_12001426 - . - 1
.org 0x45d
L_1200145d:
    add    eax,DWORD PTR [edx+0x7c]
.org 0x460
L_12001460:
    cmp    ecx,eax
.org 0x462
L_12001462:
    # jb     12001426
    .byte 0x72
    .byte L_12001426 - . - 1
.org 0x464
L_12001464:
    # jmp    12001458
    .byte 0xeb
    .byte L_12001458 - . - 1
.org 0x466
L_12001466:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x46e
L_1200146e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x470
L_12001470:
    # Original function: writeBytes
    push   ebp
.org 0x471
L_12001471:
    push   edi
.org 0x472
L_12001472:
    push   esi
.org 0x473
L_12001473:
    push   ebx
.org 0x474
L_12001474:
    mov    ebx,eax
.org 0x476
L_12001476:
    sub    esp,0x2c
.org 0x479
L_12001479:
    mov    DWORD PTR [esp+0x10],eax
.org 0x47d
L_1200147d:
    mov    eax,ds:0x12009888
.org 0x482
L_12001482:
    mov    DWORD PTR [esp+0x14],ecx
.org 0x486
L_12001486:
    mov    DWORD PTR [esp+0x18],0x0
.org 0x48e
L_1200148e:
    mov    DWORD PTR [esp+0x1c],0x0
.org 0x496
L_12001496:
    test   eax,eax
.org 0x498
L_12001498:
    # je     12001520
    .byte 0xf,0x84
    .long L_12001520 - . - 4
.org 0x49e
L_1200149e:
    mov    DWORD PTR [esp+0xc],ecx
.org 0x4a2
L_120014a2:
    sub    esp,0xc
.org 0x4a5
L_120014a5:
    mov    ebp,edx
.org 0x4a7
L_120014a7:
    lea    ecx,[esp+0x24]
.org 0x4ab
L_120014ab:
    push   ecx
.org 0x4ac
L_120014ac:
    push   0x40
.org 0x4ae
L_120014ae:
    lea    edi,[esp+0x28]
.org 0x4b2
L_120014b2:
    push   edi
.org 0x4b3
L_120014b3:
    lea    esi,[esp+0x28]
.org 0x4b7
L_120014b7:
    push   esi
.org 0x4b8
L_120014b8:
    push   0xffffffff
.org 0x4ba
L_120014ba:
    call   eax
.org 0x4bc
L_120014bc:
    add    esp,0xc
.org 0x4bf
L_120014bf:
    test   eax,eax
.org 0x4c1
L_120014c1:
    # js     12001520
    .byte 0x78
    .byte L_12001520 - . - 1
.org 0x4c3
L_120014c3:
    mov    edx,DWORD PTR [esp+0xc]
.org 0x4c7
L_120014c7:
    test   edx,edx
.org 0x4c9
L_120014c9:
    # je     120014ec
    .byte 0x74
    .byte L_120014ec - . - 1
.org 0x4cb
L_120014cb:
    mov    eax,ebp
.org 0x4cd
L_120014cd:
    mov    ecx,ebx
.org 0x4cf
L_120014cf:
    lea    ebp,[ebp+edx*1+0x0]
.org 0x4d3
L_120014d3:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x4d8
L_120014d8:
    movzx  edx,BYTE PTR [eax]
.org 0x4db
L_120014db:
    add    eax,0x1
.org 0x4de
L_120014de:
    add    ecx,0x1
.org 0x4e1
L_120014e1:
    mov    BYTE PTR [ecx-0x1],dl
.org 0x4e4
L_120014e4:
    cmp    eax,ebp
.org 0x4e6
L_120014e6:
    # jne    120014d8
    .byte 0x75
    .byte L_120014d8 - . - 1
.org 0x4e8
L_120014e8:
    mov    edx,DWORD PTR [esp+0xc]
.org 0x4ec
L_120014ec:
    sub    esp,0x4
.org 0x4ef
L_120014ef:
    push   edx
.org 0x4f0
L_120014f0:
    push   ebx
.org 0x4f1
L_120014f1:
    push   0xffffffff
.org 0x4f3
L_120014f3:
    call   DWORD PTR [0x12009884]
.org 0x4f9
L_120014f9:
    sub    esp,0x8
.org 0x4fc
L_120014fc:
    lea    eax,[esp+0x28]
.org 0x500
L_12001500:
    push   eax
.org 0x501
L_12001501:
    push   DWORD PTR [esp+0x28]
.org 0x505
L_12001505:
    push   edi
.org 0x506
L_12001506:
    push   esi
.org 0x507
L_12001507:
    push   0xffffffff
.org 0x509
L_12001509:
    call   DWORD PTR [0x12009888]
.org 0x50f
L_1200150f:
    mov    eax,0x1
.org 0x514
L_12001514:
    add    esp,0xc
.org 0x517
L_12001517:
    add    esp,0x2c
.org 0x51a
L_1200151a:
    pop    ebx
.org 0x51b
L_1200151b:
    pop    esi
.org 0x51c
L_1200151c:
    pop    edi
.org 0x51d
L_1200151d:
    pop    ebp
.org 0x51e
L_1200151e:
    ret
.org 0x51f
L_1200151f:
    # Alignment padding: nop
    .byte 0x90
.org 0x520
L_12001520:
    add    esp,0x2c
.org 0x523
L_12001523:
    xor    eax,eax
.org 0x525
L_12001525:
    pop    ebx
.org 0x526
L_12001526:
    pop    esi
.org 0x527
L_12001527:
    pop    edi
.org 0x528
L_12001528:
    pop    ebp
.org 0x529
L_12001529:
    ret
.org 0x52a
L_1200152a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x530
L_12001530:
    # Original function: supportedRecord
    test   eax,eax
.org 0x532
L_12001532:
    # je     120015d0
    .byte 0xf,0x84
    .long L_120015d0 - . - 4
.org 0x538
L_12001538:
    cmp    BYTE PTR [eax],0x0
.org 0x53b
L_1200153b:
    mov    edx,0x1
.org 0x540
L_12001540:
    # je     120015d2
    .byte 0xf,0x84
    .long L_120015d2 - . - 4
.org 0x546
L_12001546:
    push   edi
.org 0x547
L_12001547:
    push   esi
.org 0x548
L_12001548:
    push   ebx
.org 0x549
L_12001549:
    sub    esp,0x20
.org 0x54c
L_1200154c:
    mov    ecx,DWORD PTR [eax+0x10c]
.org 0x552
L_12001552:
    mov    DWORD PTR [esp+0x8],0x1200402e
.org 0x55a
L_1200155a:
    mov    DWORD PTR [esp+0xc],0x12004037
.org 0x562
L_12001562:
    mov    DWORD PTR [esp+0x10],0x12004040
.org 0x56a
L_1200156a:
    mov    DWORD PTR [esp+0x14],0x12004049
.org 0x572
L_12001572:
    mov    DWORD PTR [esp+0x18],0x1200405a
.org 0x57a
L_1200157a:
    mov    DWORD PTR [esp+0x1c],0x1200406a
.org 0x582
L_12001582:
    test   ecx,ecx
.org 0x584
L_12001584:
    # je     120015f0
    .byte 0x74
    .byte L_120015f0 - . - 1
.org 0x586
L_12001586:
    lea    esi,[esp+0x8]
.org 0x58a
L_1200158a:
    lea    edi,[esp+0x20]
.org 0x58e
L_1200158e:
    mov    eax,0x53
.org 0x593
L_12001593:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x598
L_12001598:
    mov    ebx,DWORD PTR [esi]
.org 0x59a
L_1200159a:
    xor    edx,edx
.org 0x59c
L_1200159c:
    test   al,al
.org 0x59e
L_1200159e:
    # jne    120015b3
    .byte 0x75
    .byte L_120015b3 - . - 1
.org 0x5a0
L_120015a0:
    # jmp    120015fb
    .byte 0xeb
    .byte L_120015fb - . - 1
.org 0x5a2
L_120015a2:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x5a8
L_120015a8:
    add    edx,0x1
.org 0x5ab
L_120015ab:
    movzx  eax,BYTE PTR [ebx+edx*1]
.org 0x5af
L_120015af:
    test   al,al
.org 0x5b1
L_120015b1:
    # je     120015d8
    .byte 0x74
    .byte L_120015d8 - . - 1
.org 0x5b3
L_120015b3:
    cmp    WORD PTR [ecx+edx*2],ax
.org 0x5b7
L_120015b7:
    # je     120015a8
    .byte 0x74
    .byte L_120015a8 - . - 1
.org 0x5b9
L_120015b9:
    add    esi,0x4
.org 0x5bc
L_120015bc:
    cmp    esi,edi
.org 0x5be
L_120015be:
    # je     120015f0
    .byte 0x74
    .byte L_120015f0 - . - 1
.org 0x5c0
L_120015c0:
    mov    eax,DWORD PTR [esi]
.org 0x5c2
L_120015c2:
    movzx  eax,BYTE PTR [eax]
.org 0x5c5
L_120015c5:
    # jmp    12001598
    .byte 0xeb
    .byte L_12001598 - . - 1
.org 0x5c7
L_120015c7:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x5cf
L_120015cf:
    # Alignment padding: nop
    .byte 0x90
.org 0x5d0
L_120015d0:
    xor    edx,edx
.org 0x5d2
L_120015d2:
    mov    eax,edx
.org 0x5d4
L_120015d4:
    ret
.org 0x5d5
L_120015d5:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x5d8
L_120015d8:
    lea    eax,[ecx+edx*2]
.org 0x5db
L_120015db:
    cmp    WORD PTR [eax],0x0
.org 0x5df
L_120015df:
    # jne    120015b9
    .byte 0x75
    .byte L_120015b9 - . - 1
.org 0x5e1
L_120015e1:
    mov    edx,0x1
.org 0x5e6
L_120015e6:
    # jmp    120015f2
    .byte 0xeb
    .byte L_120015f2 - . - 1
.org 0x5e8
L_120015e8:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x5f0
L_120015f0:
    xor    edx,edx
.org 0x5f2
L_120015f2:
    add    esp,0x20
.org 0x5f5
L_120015f5:
    mov    eax,edx
.org 0x5f7
L_120015f7:
    pop    ebx
.org 0x5f8
L_120015f8:
    pop    esi
.org 0x5f9
L_120015f9:
    pop    edi
.org 0x5fa
L_120015fa:
    ret
.org 0x5fb
L_120015fb:
    mov    eax,ecx
.org 0x5fd
L_120015fd:
    # jmp    120015db
    .byte 0xeb
    .byte L_120015db - . - 1
.org 0x5ff
L_120015ff:
    # Alignment padding: nop
    .byte 0x90
.org 0x600
L_12001600:
    # Original function: mmPath
    mov    eax,DWORD PTR [esp+0x4]
.org 0x604
L_12001604:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x608
L_12001608:
    jmp    DWORD PTR [0x12007028]
.org 0x60e
L_1200160e:
    ud2
.org 0x610
L_12001610:
    # Original function: cat3
    mov    ecx,esp
.org 0x612
L_12001612:
    push   DWORD PTR [ecx+0x8]
.org 0x615
L_12001615:
    push   DWORD PTR [ecx+0xc]
.org 0x618
L_12001618:
    push   DWORD PTR [ecx+0x10]
.org 0x61b
L_1200161b:
    mov    eax,DWORD PTR [ecx+0x4]
.org 0x61e
L_1200161e:
    mov    edx,0x3
.org 0x623
L_12001623:
    call   DWORD PTR [0x12007024]
.org 0x629
L_12001629:
    ret
.org 0x62a
L_1200162a:
    ud2
.org 0x62c
L_1200162c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x630
L_12001630:
    # Original function: clearString
    mov    eax,DWORD PTR [esp+0x4]
.org 0x634
L_12001634:
    jmp    DWORD PTR [0x12007020]
.org 0x63a
L_1200163a:
    ud2
.org 0x63c
L_1200163c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x640
L_12001640:
    # Original function: newImage
    mov    ecx,DWORD PTR [esp+0x4]
.org 0x644
L_12001644:
    mov    dl,0x1
.org 0x646
L_12001646:
    mov    eax,ds:0x1200701c
.org 0x64b
L_1200164b:
    call   DWORD PTR [0x12007018]
.org 0x651
L_12001651:
    ret
.org 0x652
L_12001652:
    ud2
.org 0x654
L_12001654:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x65c
L_1200165c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x660
L_12001660:
    # Original function: setImage
    mov    eax,DWORD PTR [esp+0x4]
.org 0x664
L_12001664:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x668
L_12001668:
    call   DWORD PTR [0x12007014]
.org 0x66e
L_1200166e:
    ret
.org 0x66f
L_1200166f:
    ud2
.org 0x671
L_12001671:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x679
L_12001679:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x680
L_12001680:
    # Original function: controlFlag
    mov    eax,DWORD PTR [esp+0x4]
.org 0x684
L_12001684:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x688
L_12001688:
    call   DWORD PTR [0x12007010]
.org 0x68e
L_1200168e:
    ret
.org 0x68f
L_1200168f:
    ud2
.org 0x691
L_12001691:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x699
L_12001699:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x6a0
L_120016a0:
    # Original function: setRectA
    mov    eax,DWORD PTR [esp+0x4]
.org 0x6a4
L_120016a4:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x6a8
L_120016a8:
    mov    ecx,DWORD PTR [eax]
.org 0x6aa
L_120016aa:
    call   DWORD PTR [ecx+0xc]
.org 0x6ad
L_120016ad:
    ret
.org 0x6ae
L_120016ae:
    ud2
.org 0x6b0
L_120016b0:
    # Original function: setRectB
    mov    eax,DWORD PTR [esp+0x4]
.org 0x6b4
L_120016b4:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x6b8
L_120016b8:
    call   DWORD PTR [0x12007004]
.org 0x6be
L_120016be:
    ret
.org 0x6bf
L_120016bf:
    ud2
.org 0x6c1
L_120016c1:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x6c9
L_120016c9:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x6d0
L_120016d0:
    # Original function: setRectC
    mov    eax,DWORD PTR [esp+0x4]
.org 0x6d4
L_120016d4:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x6d8
L_120016d8:
    mov    ecx,DWORD PTR [eax]
.org 0x6da
L_120016da:
    call   DWORD PTR [ecx+0x18]
.org 0x6dd
L_120016dd:
    ret
.org 0x6de
L_120016de:
    ud2
.org 0x6e0
L_120016e0:
    # Original function: zeroPair
    mov    eax,DWORD PTR [esp+0x4]
.org 0x6e4
L_120016e4:
    push   0x0
.org 0x6e6
L_120016e6:
    push   0x0
.org 0x6e8
L_120016e8:
    mov    edx,DWORD PTR [eax]
.org 0x6ea
L_120016ea:
    call   DWORD PTR [edx+0x10]
.org 0x6ed
L_120016ed:
    ret
.org 0x6ee
L_120016ee:
    ud2
.org 0x6f0
L_120016f0:
    # Original function: imageMode1
    mov    eax,DWORD PTR [esp+0x4]
.org 0x6f4
L_120016f4:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x6f8
L_120016f8:
    call   DWORD PTR [0x1200700c]
.org 0x6fe
L_120016fe:
    ret
.org 0x6ff
L_120016ff:
    ud2
.org 0x701
L_12001701:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x709
L_12001709:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x710
L_12001710:
    # Original function: imageMode2
    mov    eax,DWORD PTR [esp+0x4]
.org 0x714
L_12001714:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x718
L_12001718:
    call   DWORD PTR [0x12007008]
.org 0x71e
L_1200171e:
    ret
.org 0x71f
L_1200171f:
    ud2
.org 0x721
L_12001721:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x729
L_12001729:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x730
L_12001730:
    # Original function: visible
    mov    eax,DWORD PTR [esp+0x4]
.org 0x734
L_12001734:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x738
L_12001738:
    mov    ecx,DWORD PTR [eax]
.org 0x73a
L_1200173a:
    mov    ecx,DWORD PTR [ecx+0x28]
.org 0x73d
L_1200173d:
    call   ecx
.org 0x73f
L_1200173f:
    ret
.org 0x740
L_12001740:
    ud2
.org 0x742
L_12001742:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x74a
L_1200174a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x750
L_12001750:
    # Original function: scale
    mov    eax,DWORD PTR [esp+0x4]
.org 0x754
L_12001754:
    call   DWORD PTR [0x12007000]
.org 0x75a
L_1200175a:
    ret
.org 0x75b
L_1200175b:
    ud2
.org 0x75d
L_1200175d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x760
L_12001760:
    # Original function: gridTrampoline
    inc    DWORD PTR [ebp-0x18]
.org 0x763
L_12001763:
    dec    DWORD PTR [ebp-0x38]
.org 0x766
L_12001766:
    # jmp    1200176b
    .byte 0xe9
    .long L_1200176b - . - 4
.org 0x76b
L_1200176b:
    ud2
.org 0x76d
L_1200176d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x770
L_12001770:
    # Original function: gridHook
    pusha
.org 0x771
L_12001771:
    mov    eax,DWORD PTR [ebp-0x8]
.org 0x774
L_12001774:
    test   eax,eax
.org 0x776
L_12001776:
    # je     120017ad
    .byte 0x74
    .byte L_120017ad - . - 1
.org 0x778
L_12001778:
    mov    eax,DWORD PTR [eax+0xc]
.org 0x77b
L_1200177b:
    test   eax,eax
.org 0x77d
L_1200177d:
    # je     120017ad
    .byte 0x74
    .byte L_120017ad - . - 1
.org 0x77f
L_1200177f:
    mov    edx,DWORD PTR [ebp-0x48]
.org 0x782
L_12001782:
    test   edx,edx
.org 0x784
L_12001784:
    # je     120017ad
    .byte 0x74
    .byte L_120017ad - . - 1
.org 0x786
L_12001786:
    push   edx
.org 0x787
L_12001787:
    push   eax
.org 0x788
L_12001788:
    # call   120021f0
    .byte 0xe8
    .long L_120021f0 - . - 4
.org 0x78d
L_1200178d:
    add    esp,0x8
.org 0x790
L_12001790:
    mov    eax,DWORD PTR [ebp-0x8]
.org 0x793
L_12001793:
    mov    eax,DWORD PTR [eax+0xc]
.org 0x796
L_12001796:
    cmp    DWORD PTR [eax+0x50],0x0
.org 0x79a
L_1200179a:
    # je     120017ad
    .byte 0x74
    .byte L_120017ad - . - 1
.org 0x79c
L_1200179c:
    mov    edx,DWORD PTR [ebp-0x50]
.org 0x79f
L_1200179f:
    test   edx,edx
.org 0x7a1
L_120017a1:
    # je     120017ad
    .byte 0x74
    .byte L_120017ad - . - 1
.org 0x7a3
L_120017a3:
    push   edx
.org 0x7a4
L_120017a4:
    push   eax
.org 0x7a5
L_120017a5:
    # call   12001a50
    .byte 0xe8
    .long L_12001a50 - . - 4
.org 0x7aa
L_120017aa:
    add    esp,0x8
.org 0x7ad
L_120017ad:
    popa
.org 0x7ae
L_120017ae:
    jmp    DWORD PTR [0x12007044]
.org 0x7b4
L_120017b4:
    ud2
.org 0x7b6
L_120017b6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x7be
L_120017be:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x7c0
L_120017c0:
    # Original function: shipTopTrampoline
    mov    DWORD PTR [ebp-0x2c],0x6
.org 0x7c7
L_120017c7:
    # jmp    120017cc
    .byte 0xe9
    .long L_120017cc - . - 4
.org 0x7cc
L_120017cc:
    ud2
.org 0x7ce
L_120017ce:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x7d0
L_120017d0:
    # Original function: shipTopHook
    pusha
.org 0x7d1
L_120017d1:
    mov    eax,DWORD PTR [ebp-0x4]
.org 0x7d4
L_120017d4:
    test   eax,eax
.org 0x7d6
L_120017d6:
    # je     120017f7
    .byte 0x74
    .byte L_120017f7 - . - 1
.org 0x7d8
L_120017d8:
    mov    eax,DWORD PTR [eax+0xd8]
.org 0x7de
L_120017de:
    test   eax,eax
.org 0x7e0
L_120017e0:
    # je     120017f7
    .byte 0x74
    .byte L_120017f7 - . - 1
.org 0x7e2
L_120017e2:
    call   DWORD PTR [0x12007030]
.org 0x7e8
L_120017e8:
    mov    edx,DWORD PTR [ebp-0x30]
.org 0x7eb
L_120017eb:
    push   edx
.org 0x7ec
L_120017ec:
    push   eax
.org 0x7ed
L_120017ed:
    # call   12001a50
    .byte 0xe8
    .long L_12001a50 - . - 4
.org 0x7f2
L_120017f2:
    add    esp,0x8
.org 0x7f5
L_120017f5:
    # jmp    12001805
    .byte 0xeb
    .byte L_12001805 - . - 1
.org 0x7f7
L_120017f7:
    mov    edx,DWORD PTR [ebp-0x30]
.org 0x7fa
L_120017fa:
    push   edx
.org 0x7fb
L_120017fb:
    push   0x0
.org 0x7fd
L_120017fd:
    # call   12001a50
    .byte 0xe8
    .long L_12001a50 - . - 4
.org 0x802
L_12001802:
    add    esp,0x8
.org 0x805
L_12001805:
    popa
.org 0x806
L_12001806:
    jmp    DWORD PTR [0x12007040]
.org 0x80c
L_1200180c:
    ud2
.org 0x80e
L_1200180e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x810
L_12001810:
    # Original function: shipGridTrampoline
    mov    DWORD PTR [ebp-0x2c],0xb
.org 0x817
L_12001817:
    # jmp    1200181c
    .byte 0xe9
    .long L_1200181c - . - 4
.org 0x81c
L_1200181c:
    ud2
.org 0x81e
L_1200181e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x820
L_12001820:
    # Original function: shipGridHook
    pusha
.org 0x821
L_12001821:
    mov    eax,DWORD PTR [ebp-0x18]
.org 0x824
L_12001824:
    mov    edx,DWORD PTR [ebp-0x38]
.org 0x827
L_12001827:
    mov    ecx,DWORD PTR [ebp-0x28]
.org 0x82a
L_1200182a:
    push   edx
.org 0x82b
L_1200182b:
    push   ecx
.org 0x82c
L_1200182c:
    push   eax
.org 0x82d
L_1200182d:
    # call   12002670
    .byte 0xe8
    .long L_12002670 - . - 4
.org 0x832
L_12001832:
    add    esp,0xc
.org 0x835
L_12001835:
    test   eax,eax
.org 0x837
L_12001837:
    # jne    12001849
    .byte 0x75
    .byte L_12001849 - . - 1
.org 0x839
L_12001839:
    mov    eax,DWORD PTR [ebp-0x18]
.org 0x83c
L_1200183c:
    mov    edx,DWORD PTR [ebp-0x38]
.org 0x83f
L_1200183f:
    push   edx
.org 0x840
L_12001840:
    push   eax
.org 0x841
L_12001841:
    # call   12001a50
    .byte 0xe8
    .long L_12001a50 - . - 4
.org 0x846
L_12001846:
    add    esp,0x8
.org 0x849
L_12001849:
    popa
.org 0x84a
L_1200184a:
    jmp    DWORD PTR [0x1200703c]
.org 0x850
L_12001850:
    ud2
.org 0x852
L_12001852:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x85a
L_1200185a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x860
L_12001860:
    # Original function: shipSelectedTrampoline
    # Explicit original instruction encoding: xor    eax,eax
    .byte 0x33,0xc0
.org 0x862
L_12001862:
    mov    DWORD PTR [ebp-0x8],eax
.org 0x865
L_12001865:
    # jmp    1200186a
    .byte 0xe9
    .long L_1200186a - . - 4
.org 0x86a
L_1200186a:
    ud2
.org 0x86c
L_1200186c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x870
L_12001870:
    # Original function: shipSelectedHook
    pusha
.org 0x871
L_12001871:
    mov    eax,ds:0x1200702c
.org 0x876
L_12001876:
    mov    eax,DWORD PTR [eax]
.org 0x878
L_12001878:
    test   eax,eax
.org 0x87a
L_1200187a:
    # je     1200188f
    .byte 0x74
    .byte L_1200188f - . - 1
.org 0x87c
L_1200187c:
    call   DWORD PTR [0x12007030]
.org 0x882
L_12001882:
    mov    edx,DWORD PTR [ebp-0x48]
.org 0x885
L_12001885:
    push   edx
.org 0x886
L_12001886:
    push   eax
.org 0x887
L_12001887:
    # call   12001a50
    .byte 0xe8
    .long L_12001a50 - . - 4
.org 0x88c
L_1200188c:
    add    esp,0x8
.org 0x88f
L_1200188f:
    popa
.org 0x890
L_12001890:
    jmp    DWORD PTR [0x12007038]
.org 0x896
L_12001896:
    ud2
.org 0x898
L_12001898:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x8a0
L_120018a0:
    # Original function: shipSelectedGridTrampoline
    mov    eax,ds:0x882d90
.org 0x8a5
L_120018a5:
    # jmp    120018aa
    .byte 0xe9
    .long L_120018aa - . - 4
.org 0x8aa
L_120018aa:
    ud2
.org 0x8ac
L_120018ac:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x8b0
L_120018b0:
    # Original function: shipSelectedGridHook
    pusha
.org 0x8b1
L_120018b1:
    mov    eax,DWORD PTR [ebp-0x20]
.org 0x8b4
L_120018b4:
    mov    edx,DWORD PTR [ebp-0x50]
.org 0x8b7
L_120018b7:
    mov    ecx,DWORD PTR [ebp-0x3c]
.org 0x8ba
L_120018ba:
    push   edx
.org 0x8bb
L_120018bb:
    push   ecx
.org 0x8bc
L_120018bc:
    push   eax
.org 0x8bd
L_120018bd:
    # call   12002670
    .byte 0xe8
    .long L_12002670 - . - 4
.org 0x8c2
L_120018c2:
    add    esp,0xc
.org 0x8c5
L_120018c5:
    test   eax,eax
.org 0x8c7
L_120018c7:
    # jne    120018d9
    .byte 0x75
    .byte L_120018d9 - . - 1
.org 0x8c9
L_120018c9:
    mov    eax,DWORD PTR [ebp-0x20]
.org 0x8cc
L_120018cc:
    mov    edx,DWORD PTR [ebp-0x50]
.org 0x8cf
L_120018cf:
    push   edx
.org 0x8d0
L_120018d0:
    push   eax
.org 0x8d1
L_120018d1:
    # call   12001a50
    .byte 0xe8
    .long L_12001a50 - . - 4
.org 0x8d6
L_120018d6:
    add    esp,0x8
.org 0x8d9
L_120018d9:
    popa
.org 0x8da
L_120018da:
    jmp    DWORD PTR [0x12007034]
.org 0x8e0
L_120018e0:
    ud2
.org 0x8e2
L_120018e2:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x8ea
L_120018ea:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x8f0
L_120018f0:
    # Original function: hideOrphans
    push   ebp
.org 0x8f1
L_120018f1:
    mov    ebp,eax
.org 0x8f3
L_120018f3:
    push   edi
.org 0x8f4
L_120018f4:
    push   esi
.org 0x8f5
L_120018f5:
    push   ebx
.org 0x8f6
L_120018f6:
    mov    ebx,0x12008880
.org 0x8fb
L_120018fb:
    sub    esp,0xc
.org 0x8fe
L_120018fe:
    # jmp    1200190b
    .byte 0xeb
    .byte L_1200190b - . - 1
.org 0x900
L_12001900:
    add    ebx,0x10
.org 0x903
L_12001903:
    cmp    ebx,0x12009880
.org 0x909
L_12001909:
    # je     12001984
    .byte 0x74
    .byte L_12001984 - . - 1
.org 0x90b
L_1200190b:
    cmp    DWORD PTR [ebx+0x4],ebp
.org 0x90e
L_1200190e:
    # jne    12001900
    .byte 0x75
    .byte L_12001900 - . - 1
.org 0x910
L_12001910:
    mov    edi,DWORD PTR [ebx]
.org 0x912
L_12001912:
    test   edi,edi
.org 0x914
L_12001914:
    # je     12001900
    .byte 0x74
    .byte L_12001900 - . - 1
.org 0x916
L_12001916:
    mov    esi,DWORD PTR [ebx+0x8]
.org 0x919
L_12001919:
    test   ebp,ebp
.org 0x91b
L_1200191b:
    # je     12001990
    .byte 0x74
    .byte L_12001990 - . - 1
.org 0x91d
L_1200191d:
    test   esi,esi
.org 0x91f
L_1200191f:
    # je     12001990
    .byte 0x74
    .byte L_12001990 - . - 1
.org 0x921
L_12001921:
    mov    edx,DWORD PTR [ebp+0x4]
.org 0x924
L_12001924:
    test   edx,edx
.org 0x926
L_12001926:
    # je     12001990
    .byte 0x74
    .byte L_12001990 - . - 1
.org 0x928
L_12001928:
    cmp    esi,edx
.org 0x92a
L_1200192a:
    # je     12001946
    .byte 0x74
    .byte L_12001946 - . - 1
.org 0x92c
L_1200192c:
    mov    eax,edx
.org 0x92e
L_1200192e:
    xor    ecx,ecx
.org 0x930
L_12001930:
    mov    eax,DWORD PTR [eax+0x10]
.org 0x933
L_12001933:
    add    ecx,0x1
.org 0x936
L_12001936:
    test   eax,eax
.org 0x938
L_12001938:
    # je     12001990
    .byte 0x74
    .byte L_12001990 - . - 1
.org 0x93a
L_1200193a:
    cmp    ecx,0x1ff
.org 0x940
L_12001940:
    # jg     12001990
    .byte 0x7f
    .byte L_12001990 - . - 1
.org 0x942
L_12001942:
    cmp    esi,eax
.org 0x944
L_12001944:
    # jne    12001930
    .byte 0x75
    .byte L_12001930 - . - 1
.org 0x946
L_12001946:
    cmp    edi,edx
.org 0x948
L_12001948:
    # je     12001965
    .byte 0x74
    .byte L_12001965 - . - 1
.org 0x94a
L_1200194a:
    xor    eax,eax
.org 0x94c
L_1200194c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x950
L_12001950:
    mov    edx,DWORD PTR [edx+0x10]
.org 0x953
L_12001953:
    add    eax,0x1
.org 0x956
L_12001956:
    test   edx,edx
.org 0x958
L_12001958:
    # je     1200196b
    .byte 0x74
    .byte L_1200196b - . - 1
.org 0x95a
L_1200195a:
    cmp    eax,0x1ff
.org 0x95f
L_1200195f:
    # jg     1200196b
    .byte 0x7f
    .byte L_1200196b - . - 1
.org 0x961
L_12001961:
    cmp    edi,edx
.org 0x963
L_12001963:
    # jne    12001950
    .byte 0x75
    .byte L_12001950 - . - 1
.org 0x965
L_12001965:
    cmp    BYTE PTR [edi+0x41],0x0
.org 0x969
L_12001969:
    # jne    12001900
    .byte 0x75
    .byte L_12001900 - . - 1
.org 0x96b
L_1200196b:
    sub    esp,0x8
.org 0x96e
L_1200196e:
    add    ebx,0x10
.org 0x971
L_12001971:
    push   0x0
.org 0x973
L_12001973:
    push   esi
.org 0x974
L_12001974:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x979
L_12001979:
    add    esp,0x10
.org 0x97c
L_1200197c:
    cmp    ebx,0x12009880
.org 0x982
L_12001982:
    # jne    1200190b
    .byte 0x75
    .byte L_1200190b - . - 1
.org 0x984
L_12001984:
    add    esp,0xc
.org 0x987
L_12001987:
    pop    ebx
.org 0x988
L_12001988:
    pop    esi
.org 0x989
L_12001989:
    pop    edi
.org 0x98a
L_1200198a:
    pop    ebp
.org 0x98b
L_1200198b:
    ret
.org 0x98c
L_1200198c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x990
L_12001990:
    mov    DWORD PTR [ebx],0x0
.org 0x996
L_12001996:
    mov    DWORD PTR [ebx+0x8],0x0
.org 0x99d
L_1200199d:
    # jmp    12001900
    .byte 0xe9
    .long L_12001900 - . - 4
.org 0x9a2
L_120019a2:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x9aa
L_120019aa:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x9b0
L_120019b0:
    # Original function: hideCopy
    push   ebx
.org 0x9b1
L_120019b1:
    xor    ecx,ecx
.org 0x9b3
L_120019b3:
    sub    esp,0x8
.org 0x9b6
L_120019b6:
    mov    ebx,ecx
.org 0x9b8
L_120019b8:
    shl    ebx,0x4
.org 0x9bb
L_120019bb:
    cmp    DWORD PTR [ebx+0x12008880],eax
.org 0x9c1
L_120019c1:
    # je     120019d8
    .byte 0x74
    .byte L_120019d8 - . - 1
.org 0x9c3
L_120019c3:
    add    ecx,0x1
.org 0x9c6
L_120019c6:
    cmp    ecx,0x100
.org 0x9cc
L_120019cc:
    # jne    120019b6
    .byte 0x75
    .byte L_120019b6 - . - 1
.org 0x9ce
L_120019ce:
    add    esp,0x8
.org 0x9d1
L_120019d1:
    pop    ebx
.org 0x9d2
L_120019d2:
    ret
.org 0x9d3
L_120019d3:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x9d8
L_120019d8:
    cmp    DWORD PTR [ebx+0x12008884],edx
.org 0x9de
L_120019de:
    # jne    120019c3
    .byte 0x75
    .byte L_120019c3 - . - 1
.org 0x9e0
L_120019e0:
    mov    ebx,DWORD PTR [ebx+0x12008888]
.org 0x9e6
L_120019e6:
    test   edx,edx
.org 0x9e8
L_120019e8:
    # je     12001a30
    .byte 0x74
    .byte L_12001a30 - . - 1
.org 0x9ea
L_120019ea:
    test   ebx,ebx
.org 0x9ec
L_120019ec:
    # je     12001a30
    .byte 0x74
    .byte L_12001a30 - . - 1
.org 0x9ee
L_120019ee:
    mov    eax,DWORD PTR [edx+0x4]
.org 0x9f1
L_120019f1:
    test   eax,eax
.org 0x9f3
L_120019f3:
    # je     12001a30
    .byte 0x74
    .byte L_12001a30 - . - 1
.org 0x9f5
L_120019f5:
    cmp    ebx,eax
.org 0x9f7
L_120019f7:
    # je     12001a16
    .byte 0x74
    .byte L_12001a16 - . - 1
.org 0x9f9
L_120019f9:
    xor    edx,edx
.org 0x9fb
L_120019fb:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0xa00
L_12001a00:
    mov    eax,DWORD PTR [eax+0x10]
.org 0xa03
L_12001a03:
    add    edx,0x1
.org 0xa06
L_12001a06:
    test   eax,eax
.org 0xa08
L_12001a08:
    # je     12001a30
    .byte 0x74
    .byte L_12001a30 - . - 1
.org 0xa0a
L_12001a0a:
    cmp    edx,0x1ff
.org 0xa10
L_12001a10:
    # jg     12001a30
    .byte 0x7f
    .byte L_12001a30 - . - 1
.org 0xa12
L_12001a12:
    cmp    ebx,eax
.org 0xa14
L_12001a14:
    # jne    12001a00
    .byte 0x75
    .byte L_12001a00 - . - 1
.org 0xa16
L_12001a16:
    sub    esp,0x8
.org 0xa19
L_12001a19:
    push   0x0
.org 0xa1b
L_12001a1b:
    push   ebx
.org 0xa1c
L_12001a1c:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0xa21
L_12001a21:
    add    esp,0x10
.org 0xa24
L_12001a24:
    add    esp,0x8
.org 0xa27
L_12001a27:
    pop    ebx
.org 0xa28
L_12001a28:
    ret
.org 0xa29
L_12001a29:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xa30
L_12001a30:
    shl    ecx,0x4
.org 0xa33
L_12001a33:
    mov    DWORD PTR [ecx+0x12008880],0x0
.org 0xa3d
L_12001a3d:
    mov    DWORD PTR [ecx+0x12008888],0x0
.org 0xa47
L_12001a47:
    add    esp,0x8
.org 0xa4a
L_12001a4a:
    pop    ebx
.org 0xa4b
L_12001a4b:
    ret
.org 0xa4c
L_12001a4c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0xa50
L_12001a50:
    # Original function: FHDUU_DrawSecondIcon
    push   ebp
.org 0xa51
L_12001a51:
    xor    ecx,ecx
.org 0xa53
L_12001a53:
    mov    edx,0x1200407b
.org 0xa58
L_12001a58:
    mov    eax,0x1
.org 0xa5d
L_12001a5d:
    push   edi
.org 0xa5e
L_12001a5e:
    push   esi
.org 0xa5f
L_12001a5f:
    push   ebx
.org 0xa60
L_12001a60:
    sub    esp,0x58
.org 0xa63
L_12001a63:
    mov    ebx,DWORD PTR [esp+0x6c]
.org 0xa67
L_12001a67:
    mov    edi,DWORD PTR [esp+0x70]
.org 0xa6b
L_12001a6b:
    push   0x0
.org 0xa6d
L_12001a6d:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0xa72
L_12001a72:
    add    esp,0x10
.org 0xa75
L_12001a75:
    test   edi,edi
.org 0xa77
L_12001a77:
    # je     12002004
    .byte 0xf,0x84
    .long L_12002004 - . - 4
.org 0xa7d
L_12001a7d:
    mov    ebp,DWORD PTR [edi+0x14]
.org 0xa80
L_12001a80:
    test   ebp,ebp
.org 0xa82
L_12001a82:
    # je     12001fc4
    .byte 0xf,0x84
    .long L_12001fc4 - . - 4
.org 0xa88
L_12001a88:
    mov    eax,ebp
.org 0xa8a
L_12001a8a:
    # call   120018f0
    .byte 0xe8
    .long L_120018f0 - . - 4
.org 0xa8f
L_12001a8f:
    test   ebx,ebx
.org 0xa91
L_12001a91:
    # je     12002078
    .byte 0xf,0x84
    .long L_12002078 - . - 4
.org 0xa97
L_12001a97:
    mov    eax,DWORD PTR [ebx+0x50]
.org 0xa9a
L_12001a9a:
    mov    ecx,DWORD PTR [ebx+0x54]
.org 0xa9d
L_12001a9d:
    mov    DWORD PTR [esp+0x14],eax
.org 0xaa1
L_12001aa1:
    or     eax,ecx
.org 0xaa3
L_12001aa3:
    mov    DWORD PTR [esp+0xc],ecx
.org 0xaa7
L_12001aa7:
    # jne    12001bb2
    .byte 0xf,0x85
    .long L_12001bb2 - . - 4
.org 0xaad
L_12001aad:
    xor    ebx,ebx
.org 0xaaf
L_12001aaf:
    mov    esi,0xffffffff
.org 0xab4
L_12001ab4:
    # jmp    12001ad8
    .byte 0xeb
    .byte L_12001ad8 - . - 1
.org 0xab6
L_12001ab6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xabe
L_12001abe:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xac0
L_12001ac0:
    test   edx,edx
.org 0xac2
L_12001ac2:
    # jne    12001ac9
    .byte 0x75
    .byte L_12001ac9 - . - 1
.org 0xac4
L_12001ac4:
    test   esi,esi
.org 0xac6
L_12001ac6:
    cmovs  esi,ebx
.org 0xac9
L_12001ac9:
    add    ebx,0x1
.org 0xacc
L_12001acc:
    cmp    ebx,0x100
.org 0xad2
L_12001ad2:
    # je     12001bd1
    .byte 0xf,0x84
    .long L_12001bd1 - . - 4
.org 0xad8
L_12001ad8:
    mov    eax,ebx
.org 0xada
L_12001ada:
    shl    eax,0x4
.org 0xadd
L_12001add:
    mov    edx,DWORD PTR [eax+0x12008880]
.org 0xae3
L_12001ae3:
    cmp    edx,edi
.org 0xae5
L_12001ae5:
    # jne    12001ac0
    .byte 0x75
    .byte L_12001ac0 - . - 1
.org 0xae7
L_12001ae7:
    cmp    DWORD PTR [eax+0x12008884],ebp
.org 0xaed
L_12001aed:
    # jne    12001ac9
    .byte 0x75
    .byte L_12001ac9 - . - 1
.org 0xaef
L_12001aef:
    mov    edx,DWORD PTR [esp+0x14]
.org 0xaf3
L_12001af3:
    test   edx,edx
.org 0xaf5
L_12001af5:
    mov    edx,DWORD PTR [esp+0xc]
.org 0xaf9
L_12001af9:
    sete   BYTE PTR [esp+0x10]
.org 0xafe
L_12001afe:
    movzx  ecx,BYTE PTR [esp+0x10]
.org 0xb03
L_12001b03:
    test   edx,edx
.org 0xb05
L_12001b05:
    setne  dl
.org 0xb08
L_12001b08:
    and    edx,ecx
.org 0xb0a
L_12001b0a:
    mov    ecx,DWORD PTR [eax+0x12008888]
.org 0xb10
L_12001b10:
    mov    BYTE PTR [esp+0x18],dl
.org 0xb14
L_12001b14:
    test   ecx,ecx
.org 0xb16
L_12001b16:
    # je     12001ce0
    .byte 0xf,0x84
    .long L_12001ce0 - . - 4
.org 0xb1c
L_12001b1c:
    mov    eax,DWORD PTR [ebp+0x4]
.org 0xb1f
L_12001b1f:
    test   eax,eax
.org 0xb21
L_12001b21:
    # je     12001ce0
    .byte 0xf,0x84
    .long L_12001ce0 - . - 4
.org 0xb27
L_12001b27:
    cmp    ecx,eax
.org 0xb29
L_12001b29:
    # je     12001b4e
    .byte 0x74
    .byte L_12001b4e - . - 1
.org 0xb2b
L_12001b2b:
    xor    edx,edx
.org 0xb2d
L_12001b2d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0xb30
L_12001b30:
    mov    eax,DWORD PTR [eax+0x10]
.org 0xb33
L_12001b33:
    add    edx,0x1
.org 0xb36
L_12001b36:
    test   eax,eax
.org 0xb38
L_12001b38:
    # je     12001ce0
    .byte 0xf,0x84
    .long L_12001ce0 - . - 4
.org 0xb3e
L_12001b3e:
    cmp    edx,0x1ff
.org 0xb44
L_12001b44:
    # jg     12001ce0
    .byte 0xf,0x8f
    .long L_12001ce0 - . - 4
.org 0xb4a
L_12001b4a:
    cmp    ecx,eax
.org 0xb4c
L_12001b4c:
    # jne    12001b30
    .byte 0x75
    .byte L_12001b30 - . - 1
.org 0xb4e
L_12001b4e:
    cmp    BYTE PTR [esp+0x18],0x0
.org 0xb53
L_12001b53:
    # jne    12001f9f
    .byte 0xf,0x85
    .long L_12001f9f - . - 4
.org 0xb59
L_12001b59:
    mov    eax,DWORD PTR [esp+0xc]
.org 0xb5d
L_12001b5d:
    test   eax,eax
.org 0xb5f
L_12001b5f:
    # je     1200211d
    .byte 0xf,0x84
    .long L_1200211d - . - 4
.org 0xb65
L_12001b65:
    cmp    BYTE PTR [esp+0x10],0x0
.org 0xb6a
L_12001b6a:
    # jne    1200211d
    .byte 0xf,0x85
    .long L_1200211d - . - 4
.org 0xb70
L_12001b70:
    mov    ecx,DWORD PTR [esp+0xc]
.org 0xb74
L_12001b74:
    cmp    DWORD PTR [esp+0x14],ecx
.org 0xb78
L_12001b78:
    # jne    12001d36
    .byte 0xf,0x85
    .long L_12001d36 - . - 4
.org 0xb7e
L_12001b7e:
    sub    esp,0xc
.org 0xb81
L_12001b81:
    mov    eax,0x80
.org 0xb86
L_12001b86:
    mov    edx,0x120040fc
.org 0xb8b
L_12001b8b:
    shl    ebx,0x4
.org 0xb8e
L_12001b8e:
    mov    ecx,DWORD PTR [esp+0x20]
.org 0xb92
L_12001b92:
    push   ecx
.org 0xb93
L_12001b93:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0xb98
L_12001b98:
    mov    eax,DWORD PTR [ebx+0x12008888]
.org 0xb9e
L_12001b9e:
    mov    DWORD PTR [esp+0x74],0x0
.org 0xba6
L_12001ba6:
    mov    DWORD PTR [esp+0x70],eax
.org 0xbaa
L_12001baa:
    add    esp,0x5c
.org 0xbad
L_12001bad:
    # jmp    12002090
    .byte 0xe9
    .long L_12002090 - . - 4
.org 0xbb2
L_12001bb2:
    sub    esp,0xc
.org 0xbb5
L_12001bb5:
    mov    edx,0x120040ac
.org 0xbba
L_12001bba:
    mov    eax,0x8
.org 0xbbf
L_12001bbf:
    push   ecx
.org 0xbc0
L_12001bc0:
    mov    ecx,DWORD PTR [esp+0x24]
.org 0xbc4
L_12001bc4:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0xbc9
L_12001bc9:
    add    esp,0x10
.org 0xbcc
L_12001bcc:
    # jmp    12001aad
    .byte 0xe9
    .long L_12001aad - . - 4
.org 0xbd1
L_12001bd1:
    mov    ecx,DWORD PTR [esp+0x14]
.org 0xbd5
L_12001bd5:
    mov    ebx,DWORD PTR [esp+0xc]
.org 0xbd9
L_12001bd9:
    test   ecx,ecx
.org 0xbdb
L_12001bdb:
    sete   BYTE PTR [esp+0x10]
.org 0xbe0
L_12001be0:
    movzx  eax,BYTE PTR [esp+0x10]
.org 0xbe5
L_12001be5:
    test   ebx,ebx
.org 0xbe7
L_12001be7:
    # je     120020a7
    .byte 0xf,0x84
    .long L_120020a7 - . - 4
.org 0xbed
L_12001bed:
    test   al,al
.org 0xbef
L_12001bef:
    # je     12001d0c
    .byte 0xf,0x84
    .long L_12001d0c - . - 4
.org 0xbf5
L_12001bf5:
    mov    eax,DWORD PTR [esp+0xc]
.org 0xbf9
L_12001bf9:
    lea    ebx,[eax-0x1]
.org 0xbfc
L_12001bfc:
    cmp    ebx,0x1fff
.org 0xc02
L_12001c02:
    # ja     12002099
    .byte 0xf,0x87
    .long L_12002099 - . - 4
.org 0xc08
L_12001c08:
    mov    eax,ds:0x12009894
.org 0xc0d
L_12001c0d:
    mov    eax,DWORD PTR [eax+0x4826b4]
.org 0xc13
L_12001c13:
    test   eax,eax
.org 0xc15
L_12001c15:
    # je     12001c25
    .byte 0x74
    .byte L_12001c25 - . - 1
.org 0xc17
L_12001c17:
    mov    eax,DWORD PTR [eax]
.org 0xc19
L_12001c19:
    test   eax,eax
.org 0xc1b
L_12001c1b:
    # je     12001c25
    .byte 0x74
    .byte L_12001c25 - . - 1
.org 0xc1d
L_12001c1d:
    imul   edx,ebx,0x124
.org 0xc23
L_12001c23:
    add    eax,edx
.org 0xc25
L_12001c25:
    # call   12001530
    .byte 0xe8
    .long L_12001530 - . - 4
.org 0xc2a
L_12001c2a:
    test   eax,eax
.org 0xc2c
L_12001c2c:
    # je     12001fe4
    .byte 0xf,0x84
    .long L_12001fe4 - . - 4
.org 0xc32
L_12001c32:
    mov    DWORD PTR [esp+0x2c],0x0
.org 0xc3a
L_12001c3a:
    sub    esp,0x8
.org 0xc3d
L_12001c3d:
    mov    DWORD PTR [esp+0x38],0x0
.org 0xc45
L_12001c45:
    lea    eax,[esp+0x34]
.org 0xc49
L_12001c49:
    mov    DWORD PTR [esp+0x18],eax
.org 0xc4d
L_12001c4d:
    push   eax
.org 0xc4e
L_12001c4e:
    push   ebx
.org 0xc4f
L_12001c4f:
    # call   12001600
    .byte 0xe8
    .long L_12001600 - . - 4
.org 0xc54
L_12001c54:
    mov    edx,DWORD PTR [esp+0x3c]
.org 0xc58
L_12001c58:
    add    esp,0x10
.org 0xc5b
L_12001c5b:
    test   edx,edx
.org 0xc5d
L_12001c5d:
    # je     1200205a
    .byte 0xf,0x84
    .long L_1200205a - . - 4
.org 0xc63
L_12001c63:
    mov    eax,ds:0x12009894
.org 0xc68
L_12001c68:
    lea    ecx,[eax+0x2aceb4]
.org 0xc6e
L_12001c6e:
    add    eax,0x2ace98
.org 0xc73
L_12001c73:
    push   ecx
.org 0xc74
L_12001c74:
    push   edx
.org 0xc75
L_12001c75:
    push   eax
.org 0xc76
L_12001c76:
    lea    ebx,[esp+0x3c]
.org 0xc7a
L_12001c7a:
    push   ebx
.org 0xc7b
L_12001c7b:
    # call   12001610
    .byte 0xe8
    .long L_12001610 - . - 4
.org 0xc80
L_12001c80:
    mov    eax,DWORD PTR [esp+0x40]
.org 0xc84
L_12001c84:
    add    esp,0x10
.org 0xc87
L_12001c87:
    test   eax,eax
.org 0xc89
L_12001c89:
    # je     12001cb8
    .byte 0x74
    .byte L_12001cb8 - . - 1
.org 0xc8b
L_12001c8b:
    sub    esp,0x8
.org 0xc8e
L_12001c8e:
    push   eax
.org 0xc8f
L_12001c8f:
    push   edi
.org 0xc90
L_12001c90:
    # call   12001660
    .byte 0xe8
    .long L_12001660 - . - 4
.org 0xc95
L_12001c95:
    pop    esi
.org 0xc96
L_12001c96:
    pop    ebp
.org 0xc97
L_12001c97:
    push   0x1
.org 0xc99
L_12001c99:
    push   edi
.org 0xc9a
L_12001c9a:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0xc9f
L_12001c9f:
    pop    eax
.org 0xca0
L_12001ca0:
    push   DWORD PTR [esp+0x18]
.org 0xca4
L_12001ca4:
    xor    ecx,ecx
.org 0xca6
L_12001ca6:
    mov    edx,0x120040d9
.org 0xcab
L_12001cab:
    mov    eax,0x40
.org 0xcb0
L_12001cb0:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0xcb5
L_12001cb5:
    add    esp,0x10
.org 0xcb8
L_12001cb8:
    sub    esp,0xc
.org 0xcbb
L_12001cbb:
    push   ebx
.org 0xcbc
L_12001cbc:
    # call   12001630
    .byte 0xe8
    .long L_12001630 - . - 4
.org 0xcc1
L_12001cc1:
    pop    ecx
.org 0xcc2
L_12001cc2:
    push   DWORD PTR [esp+0x1c]
.org 0xcc6
L_12001cc6:
    # call   12001630
    .byte 0xe8
    .long L_12001630 - . - 4
.org 0xccb
L_12001ccb:
    add    esp,0x10
.org 0xcce
L_12001cce:
    add    esp,0x4c
.org 0xcd1
L_12001cd1:
    pop    ebx
.org 0xcd2
L_12001cd2:
    pop    esi
.org 0xcd3
L_12001cd3:
    pop    edi
.org 0xcd4
L_12001cd4:
    pop    ebp
.org 0xcd5
L_12001cd5:
    ret
.org 0xcd6
L_12001cd6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xcde
L_12001cde:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xce0
L_12001ce0:
    mov    eax,ebx
.org 0xce2
L_12001ce2:
    shl    eax,0x4
.org 0xce5
L_12001ce5:
    mov    DWORD PTR [eax+0x12008880],0x0
.org 0xcef
L_12001cef:
    mov    DWORD PTR [eax+0x12008888],0x0
.org 0xcf9
L_12001cf9:
    test   esi,esi
.org 0xcfb
L_12001cfb:
    # js     12001fb2
    .byte 0xf,0x88
    .long L_12001fb2 - . - 4
.org 0xd01
L_12001d01:
    cmp    BYTE PTR [esp+0x18],0x0
.org 0xd06
L_12001d06:
    # jne    12001bf5
    .byte 0xf,0x85
    .long L_12001bf5 - . - 4
.org 0xd0c
L_12001d0c:
    mov    eax,DWORD PTR [esp+0xc]
.org 0xd10
L_12001d10:
    test   eax,eax
.org 0xd12
L_12001d12:
    # je     120020a7
    .byte 0xf,0x84
    .long L_120020a7 - . - 4
.org 0xd18
L_12001d18:
    cmp    BYTE PTR [esp+0x10],0x0
.org 0xd1d
L_12001d1d:
    # jne    120020a7
    .byte 0xf,0x85
    .long L_120020a7 - . - 4
.org 0xd23
L_12001d23:
    mov    ecx,DWORD PTR [esp+0xc]
.org 0xd27
L_12001d27:
    cmp    DWORD PTR [esp+0x14],ecx
.org 0xd2b
L_12001d2b:
    # je     1200215a
    .byte 0xf,0x84
    .long L_1200215a - . - 4
.org 0xd31
L_12001d31:
    mov    ebx,0xffffffff
.org 0xd36
L_12001d36:
    mov    eax,DWORD PTR [esp+0xc]
.org 0xd3a
L_12001d3a:
    mov    ecx,DWORD PTR [esp+0x14]
.org 0xd3e
L_12001d3e:
    sub    eax,0x1
.org 0xd41
L_12001d41:
    lea    edx,[ecx-0x1]
.org 0xd44
L_12001d44:
    mov    DWORD PTR [esp+0x10],eax
.org 0xd48
L_12001d48:
    cmp    eax,0x1fff
.org 0xd4d
L_12001d4d:
    # ja     120020f5
    .byte 0xf,0x87
    .long L_120020f5 - . - 4
.org 0xd53
L_12001d53:
    mov    eax,ds:0x12009894
.org 0xd58
L_12001d58:
    mov    ecx,DWORD PTR [eax+0x4826b4]
.org 0xd5e
L_12001d5e:
    test   ecx,ecx
.org 0xd60
L_12001d60:
    # je     120020a0
    .byte 0xf,0x84
    .long L_120020a0 - . - 4
.org 0xd66
L_12001d66:
    mov    ecx,DWORD PTR [ecx]
.org 0xd68
L_12001d68:
    test   ecx,ecx
.org 0xd6a
L_12001d6a:
    # je     120020a0
    .byte 0xf,0x84
    .long L_120020a0 - . - 4
.org 0xd70
L_12001d70:
    imul   eax,DWORD PTR [esp+0x10],0x124
.org 0xd78
L_12001d78:
    add    eax,ecx
.org 0xd7a
L_12001d7a:
    cmp    edx,0x1fff
.org 0xd80
L_12001d80:
    # ja     12002153
    .byte 0xf,0x87
    .long L_12002153 - . - 4
.org 0xd86
L_12001d86:
    imul   edx,edx,0x124
.org 0xd8c
L_12001d8c:
    add    ecx,edx
.org 0xd8e
L_12001d8e:
    mov    DWORD PTR [esp+0x18],ecx
.org 0xd92
L_12001d92:
    # call   12001530
    .byte 0xe8
    .long L_12001530 - . - 4
.org 0xd97
L_12001d97:
    test   eax,eax
.org 0xd99
L_12001d99:
    # je     1200201a
    .byte 0xf,0x84
    .long L_1200201a - . - 4
.org 0xd9f
L_12001d9f:
    mov    eax,DWORD PTR [esp+0x18]
.org 0xda3
L_12001da3:
    # call   12001530
    .byte 0xe8
    .long L_12001530 - . - 4
.org 0xda8
L_12001da8:
    test   eax,eax
.org 0xdaa
L_12001daa:
    # je     1200201a
    .byte 0xf,0x84
    .long L_1200201a - . - 4
.org 0xdb0
L_12001db0:
    cmp    ebx,0xffffffff
.org 0xdb3
L_12001db3:
    # je     12001dd4
    .byte 0x74
    .byte L_12001dd4 - . - 1
.org 0xdb5
L_12001db5:
    mov    eax,ebx
.org 0xdb7
L_12001db7:
    shl    eax,0x4
.org 0xdba
L_12001dba:
    lea    ecx,[eax+0x12008880]
.org 0xdc0
L_12001dc0:
    mov    DWORD PTR [esp+0x18],ecx
.org 0xdc4
L_12001dc4:
    mov    ecx,DWORD PTR [esp+0xc]
.org 0xdc8
L_12001dc8:
    cmp    DWORD PTR [eax+0x1200888c],ecx
.org 0xdce
L_12001dce:
    # je     12002182
    .byte 0xf,0x84
    .long L_12002182 - . - 4
.org 0xdd4
L_12001dd4:
    mov    DWORD PTR [esp+0x28],0x0
.org 0xddc
L_12001ddc:
    sub    esp,0x8
.org 0xddf
L_12001ddf:
    mov    DWORD PTR [esp+0x34],0x0
.org 0xde7
L_12001de7:
    lea    eax,[esp+0x30]
.org 0xdeb
L_12001deb:
    push   eax
.org 0xdec
L_12001dec:
    push   DWORD PTR [esp+0x1c]
.org 0xdf0
L_12001df0:
    # call   12001600
    .byte 0xe8
    .long L_12001600 - . - 4
.org 0xdf5
L_12001df5:
    mov    edx,DWORD PTR [esp+0x38]
.org 0xdf9
L_12001df9:
    add    esp,0x10
.org 0xdfc
L_12001dfc:
    test   edx,edx
.org 0xdfe
L_12001dfe:
    # je     1200205a
    .byte 0xf,0x84
    .long L_1200205a - . - 4
.org 0xe04
L_12001e04:
    mov    eax,ds:0x12009894
.org 0xe09
L_12001e09:
    lea    ecx,[eax+0x2aceb4]
.org 0xe0f
L_12001e0f:
    add    eax,0x2ace98
.org 0xe14
L_12001e14:
    push   ecx
.org 0xe15
L_12001e15:
    push   edx
.org 0xe16
L_12001e16:
    push   eax
.org 0xe17
L_12001e17:
    lea    eax,[esp+0x38]
.org 0xe1b
L_12001e1b:
    mov    DWORD PTR [esp+0x1c],eax
.org 0xe1f
L_12001e1f:
    push   eax
.org 0xe20
L_12001e20:
    # call   12001610
    .byte 0xe8
    .long L_12001610 - . - 4
.org 0xe25
L_12001e25:
    mov    eax,DWORD PTR [esp+0x3c]
.org 0xe29
L_12001e29:
    add    esp,0x10
.org 0xe2c
L_12001e2c:
    test   eax,eax
.org 0xe2e
L_12001e2e:
    # je     12001f80
    .byte 0xf,0x84
    .long L_12001f80 - . - 4
.org 0xe34
L_12001e34:
    cmp    ebx,0xffffffff
.org 0xe37
L_12001e37:
    # je     120020e0
    .byte 0xf,0x84
    .long L_120020e0 - . - 4
.org 0xe3d
L_12001e3d:
    mov    eax,ebx
.org 0xe3f
L_12001e3f:
    shl    eax,0x4
.org 0xe42
L_12001e42:
    mov    eax,DWORD PTR [eax+0x12008888]
.org 0xe48
L_12001e48:
    mov    DWORD PTR [esp+0x18],eax
.org 0xe4c
L_12001e4c:
    mov    eax,DWORD PTR [esp+0x18]
.org 0xe50
L_12001e50:
    test   eax,eax
.org 0xe52
L_12001e52:
    # je     12001f80
    .byte 0xf,0x84
    .long L_12001f80 - . - 4
.org 0xe58
L_12001e58:
    sub    esp,0x8
.org 0xe5b
L_12001e5b:
    push   DWORD PTR [esp+0x34]
.org 0xe5f
L_12001e5f:
    mov    DWORD PTR [esp+0x24],eax
.org 0xe63
L_12001e63:
    push   eax
.org 0xe64
L_12001e64:
    # call   12001660
    .byte 0xe8
    .long L_12001660 - . - 4
.org 0xe69
L_12001e69:
    pop    eax
.org 0xe6a
L_12001e6a:
    pop    edx
.org 0xe6b
L_12001e6b:
    push   0x1
.org 0xe6d
L_12001e6d:
    push   DWORD PTR [esp+0x24]
.org 0xe71
L_12001e71:
    # call   12001680
    .byte 0xe8
    .long L_12001680 - . - 4
.org 0xe76
L_12001e76:
    mov    ecx,DWORD PTR [edi+0x20]
.org 0xe79
L_12001e79:
    mov    DWORD PTR [esp],0x28
.org 0xe80
L_12001e80:
    mov    DWORD PTR [esp+0x2c],ecx
.org 0xe84
L_12001e84:
    # call   12001750
    .byte 0xe8
    .long L_12001750 - . - 4
.org 0xe89
L_12001e89:
    mov    ecx,DWORD PTR [esp+0x2c]
.org 0xe8d
L_12001e8d:
    mov    DWORD PTR [esp+0x48],0x0
.org 0xe95
L_12001e95:
    mov    DWORD PTR [esp+0x4c],0x0
.org 0xe9d
L_12001e9d:
    add    eax,ecx
.org 0xe9f
L_12001e9f:
    mov    DWORD PTR [esp+0x40],eax
.org 0xea3
L_12001ea3:
    mov    eax,DWORD PTR [edi+0x24]
.org 0xea6
L_12001ea6:
    mov    DWORD PTR [esp+0x44],eax
.org 0xeaa
L_12001eaa:
    pop    ecx
.org 0xeab
L_12001eab:
    pop    eax
.org 0xeac
L_12001eac:
    lea    eax,[esp+0x38]
.org 0xeb0
L_12001eb0:
    push   eax
.org 0xeb1
L_12001eb1:
    push   DWORD PTR [esp+0x24]
.org 0xeb5
L_12001eb5:
    # call   120016a0
    .byte 0xe8
    .long L_120016a0 - . - 4
.org 0xeba
L_12001eba:
    pop    eax
.org 0xebb
L_12001ebb:
    pop    edx
.org 0xebc
L_12001ebc:
    lea    eax,[esp+0x38]
.org 0xec0
L_12001ec0:
    push   eax
.org 0xec1
L_12001ec1:
    push   DWORD PTR [esp+0x24]
.org 0xec5
L_12001ec5:
    # call   120016b0
    .byte 0xe8
    .long L_120016b0 - . - 4
.org 0xeca
L_12001eca:
    pop    ecx
.org 0xecb
L_12001ecb:
    pop    eax
.org 0xecc
L_12001ecc:
    lea    eax,[esp+0x38]
.org 0xed0
L_12001ed0:
    push   eax
.org 0xed1
L_12001ed1:
    push   DWORD PTR [esp+0x24]
.org 0xed5
L_12001ed5:
    # call   120016d0
    .byte 0xe8
    .long L_120016d0 - . - 4
.org 0xeda
L_12001eda:
    pop    eax
.org 0xedb
L_12001edb:
    push   DWORD PTR [esp+0x24]
.org 0xedf
L_12001edf:
    # call   120016e0
    .byte 0xe8
    .long L_120016e0 - . - 4
.org 0xee4
L_12001ee4:
    pop    eax
.org 0xee5
L_12001ee5:
    pop    edx
.org 0xee6
L_12001ee6:
    push   0x4
.org 0xee8
L_12001ee8:
    push   DWORD PTR [esp+0x24]
.org 0xeec
L_12001eec:
    # call   120016f0
    .byte 0xe8
    .long L_120016f0 - . - 4
.org 0xef1
L_12001ef1:
    pop    ecx
.org 0xef2
L_12001ef2:
    pop    eax
.org 0xef3
L_12001ef3:
    push   0x4
.org 0xef5
L_12001ef5:
    push   DWORD PTR [esp+0x24]
.org 0xef9
L_12001ef9:
    # call   12001710
    .byte 0xe8
    .long L_12001710 - . - 4
.org 0xefe
L_12001efe:
    pop    eax
.org 0xeff
L_12001eff:
    pop    edx
.org 0xf00
L_12001f00:
    push   0x1
.org 0xf02
L_12001f02:
    push   DWORD PTR [esp+0x24]
.org 0xf06
L_12001f06:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0xf0b
L_12001f0b:
    pop    ecx
.org 0xf0c
L_12001f0c:
    push   DWORD PTR [esp+0x18]
.org 0xf10
L_12001f10:
    mov    edx,0x120040ea
.org 0xf15
L_12001f15:
    mov    ecx,DWORD PTR [esp+0x24]
.org 0xf19
L_12001f19:
    mov    eax,0x200
.org 0xf1e
L_12001f1e:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0xf23
L_12001f23:
    add    esp,0x10
.org 0xf26
L_12001f26:
    cmp    ebx,0xffffffff
.org 0xf29
L_12001f29:
    # je     12002173
    .byte 0xf,0x84
    .long L_12002173 - . - 4
.org 0xf2f
L_12001f2f:
    mov    ecx,DWORD PTR [esp+0x18]
.org 0xf33
L_12001f33:
    shl    ebx,0x4
.org 0xf36
L_12001f36:
    mov    DWORD PTR [ebx+0x12008880],edi
.org 0xf3c
L_12001f3c:
    mov    DWORD PTR [ebx+0x12008888],ecx
.org 0xf42
L_12001f42:
    mov    ecx,DWORD PTR [esp+0xc]
.org 0xf46
L_12001f46:
    mov    DWORD PTR [ebx+0x12008884],ebp
.org 0xf4c
L_12001f4c:
    mov    DWORD PTR [ebx+0x1200888c],ecx
.org 0xf52
L_12001f52:
    mov    edi,DWORD PTR [0x12009880]
.org 0xf58
L_12001f58:
    test   edi,edi
.org 0xf5a
L_12001f5a:
    # jne    12001f80
    .byte 0x75
    .byte L_12001f80 - . - 1
.org 0xf5c
L_12001f5c:
    mov    eax,ds:0x1200988c
.org 0xf61
L_12001f61:
    test   eax,eax
.org 0xf63
L_12001f63:
    # je     12001f80
    .byte 0x74
    .byte L_12001f80 - . - 1
.org 0xf65
L_12001f65:
    mov    DWORD PTR [0x12009880],0x1
.org 0xf6f
L_12001f6f:
    sub    esp,0x8
.org 0xf72
L_12001f72:
    push   0x12006060
.org 0xf77
L_12001f77:
    push   0x1200610c
.org 0xf7c
L_12001f7c:
    call   eax
.org 0xf7e
L_12001f7e:
    pop    ebx
.org 0xf7f
L_12001f7f:
    pop    esi
.org 0xf80
L_12001f80:
    sub    esp,0xc
.org 0xf83
L_12001f83:
    push   DWORD PTR [esp+0x1c]
.org 0xf87
L_12001f87:
    # call   12001630
    .byte 0xe8
    .long L_12001630 - . - 4
.org 0xf8c
L_12001f8c:
    pop    ecx
.org 0xf8d
L_12001f8d:
    lea    eax,[esp+0x34]
.org 0xf91
L_12001f91:
    push   eax
.org 0xf92
L_12001f92:
    # call   12001630
    .byte 0xe8
    .long L_12001630 - . - 4
.org 0xf97
L_12001f97:
    add    esp,0x10
.org 0xf9a
L_12001f9a:
    # jmp    12001cce
    .byte 0xe9
    .long L_12001cce - . - 4
.org 0xf9f
L_12001f9f:
    sub    esp,0x8
.org 0xfa2
L_12001fa2:
    push   0x0
.org 0xfa4
L_12001fa4:
    push   ecx
.org 0xfa5
L_12001fa5:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0xfaa
L_12001faa:
    add    esp,0x10
.org 0xfad
L_12001fad:
    # jmp    12001bf5
    .byte 0xe9
    .long L_12001bf5 - . - 4
.org 0xfb2
L_12001fb2:
    cmp    BYTE PTR [esp+0x18],0x0
.org 0xfb7
L_12001fb7:
    mov    esi,ebx
.org 0xfb9
L_12001fb9:
    # je     12001d0c
    .byte 0xf,0x84
    .long L_12001d0c - . - 4
.org 0xfbf
L_12001fbf:
    # jmp    12001bf5
    .byte 0xe9
    .long L_12001bf5 - . - 4
.org 0xfc4
L_12001fc4:
    mov    DWORD PTR [esp+0x60],0x0
.org 0xfcc
L_12001fcc:
    xor    ecx,ecx
.org 0xfce
L_12001fce:
    mov    edx,0x1200409a
.org 0xfd3
L_12001fd3:
    mov    eax,0x4
.org 0xfd8
L_12001fd8:
    add    esp,0x4c
.org 0xfdb
L_12001fdb:
    pop    ebx
.org 0xfdc
L_12001fdc:
    pop    esi
.org 0xfdd
L_12001fdd:
    pop    edi
.org 0xfde
L_12001fde:
    pop    ebp
.org 0xfdf
L_12001fdf:
    # jmp    12001000
    .byte 0xe9
    .long L_12001000 - . - 4
.org 0xfe4
L_12001fe4:
    mov    eax,DWORD PTR [esp+0xc]
.org 0xfe8
L_12001fe8:
    xor    ecx,ecx
.org 0xfea
L_12001fea:
    mov    edx,0x12005000
.org 0xfef
L_12001fef:
    mov    DWORD PTR [esp+0x60],eax
.org 0xff3
L_12001ff3:
    add    esp,0x4c
.org 0xff6
L_12001ff6:
    mov    eax,0x10
.org 0xffb
L_12001ffb:
    pop    ebx
.org 0xffc
L_12001ffc:
    pop    esi
.org 0xffd
L_12001ffd:
    pop    edi
.org 0xffe
L_12001ffe:
    pop    ebp
.org 0xfff
L_12001fff:
    # jmp    12001000
    .byte 0xe9
    .long L_12001000 - . - 4
.org 0x1004
L_12002004:
    mov    DWORD PTR [esp+0x60],0x0
.org 0x100c
L_1200200c:
    xor    ecx,ecx
.org 0x100e
L_1200200e:
    mov    edx,0x12004089
.org 0x1013
L_12002013:
    mov    eax,0x2
.org 0x1018
L_12002018:
    # jmp    12001fd8
    .byte 0xeb
    .byte L_12001fd8 - . - 1
.org 0x101a
L_1200201a:
    sub    esp,0xc
.org 0x101d
L_1200201d:
    mov    edx,0x12005020
.org 0x1022
L_12002022:
    mov    eax,0x100
.org 0x1027
L_12002027:
    push   DWORD PTR [esp+0x18]
.org 0x102b
L_1200202b:
    mov    ecx,DWORD PTR [esp+0x24]
.org 0x102f
L_1200202f:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0x1034
L_12002034:
    add    esp,0x10
.org 0x1037
L_12002037:
    cmp    ebx,0xffffffff
.org 0x103a
L_1200203a:
    # je     12001cce
    .byte 0xf,0x84
    .long L_12001cce - . - 4
.org 0x1040
L_12002040:
    shl    ebx,0x4
.org 0x1043
L_12002043:
    mov    DWORD PTR [esp+0x64],0x0
.org 0x104b
L_1200204b:
    mov    eax,DWORD PTR [ebx+0x12008888]
.org 0x1051
L_12002051:
    mov    DWORD PTR [esp+0x60],eax
.org 0x1055
L_12002055:
    add    esp,0x4c
.org 0x1058
L_12002058:
    # jmp    12002090
    .byte 0xeb
    .byte L_12002090 - . - 1
.org 0x105a
L_1200205a:
    sub    esp,0xc
.org 0x105d
L_1200205d:
    xor    ecx,ecx
.org 0x105f
L_1200205f:
    mov    edx,0x120040c2
.org 0x1064
L_12002064:
    mov    eax,0x20
.org 0x1069
L_12002069:
    push   0x0
.org 0x106b
L_1200206b:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0x1070
L_12002070:
    add    esp,0x10
.org 0x1073
L_12002073:
    # jmp    12001cce
    .byte 0xe9
    .long L_12001cce - . - 4
.org 0x1078
L_12002078:
    mov    edx,ebp
.org 0x107a
L_1200207a:
    mov    eax,edi
.org 0x107c
L_1200207c:
    # call   120019b0
    .byte 0xe8
    .long L_120019b0 - . - 4
.org 0x1081
L_12002081:
    mov    DWORD PTR [esp+0x64],0x0
.org 0x1089
L_12002089:
    mov    DWORD PTR [esp+0x60],edi
.org 0x108d
L_1200208d:
    add    esp,0x4c
.org 0x1090
L_12002090:
    pop    ebx
.org 0x1091
L_12002091:
    pop    esi
.org 0x1092
L_12002092:
    pop    edi
.org 0x1093
L_12002093:
    pop    ebp
.org 0x1094
L_12002094:
    # jmp    12001730
    .byte 0xe9
    .long L_12001730 - . - 4
.org 0x1099
L_12002099:
    xor    eax,eax
.org 0x109b
L_1200209b:
    # jmp    12001c25
    .byte 0xe9
    .long L_12001c25 - . - 4
.org 0x10a0
L_120020a0:
    xor    eax,eax
.org 0x10a2
L_120020a2:
    # jmp    12001d8e
    .byte 0xe9
    .long L_12001d8e - . - 4
.org 0x10a7
L_120020a7:
    sub    esp,0xc
.org 0x10aa
L_120020aa:
    mov    edx,0x120040fc
.org 0x10af
L_120020af:
    mov    eax,0x80
.org 0x10b4
L_120020b4:
    push   DWORD PTR [esp+0x18]
.org 0x10b8
L_120020b8:
    mov    ecx,DWORD PTR [esp+0x24]
.org 0x10bc
L_120020bc:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0x10c1
L_120020c1:
    add    esp,0x10
.org 0x10c4
L_120020c4:
    cmp    BYTE PTR [esp+0x10],0x0
.org 0x10c9
L_120020c9:
    # je     12001cce
    .byte 0xf,0x84
    .long L_12001cce - . - 4
.org 0x10cf
L_120020cf:
    mov    DWORD PTR [esp+0x64],0x0
.org 0x10d7
L_120020d7:
    mov    DWORD PTR [esp+0x60],edi
.org 0x10db
L_120020db:
    add    esp,0x4c
.org 0x10de
L_120020de:
    # jmp    12002090
    .byte 0xeb
    .byte L_12002090 - . - 1
.org 0x10e0
L_120020e0:
    sub    esp,0xc
.org 0x10e3
L_120020e3:
    push   ebp
.org 0x10e4
L_120020e4:
    # call   12001640
    .byte 0xe8
    .long L_12001640 - . - 4
.org 0x10e9
L_120020e9:
    mov    DWORD PTR [esp+0x28],eax
.org 0x10ed
L_120020ed:
    add    esp,0x10
.org 0x10f0
L_120020f0:
    # jmp    12001e4c
    .byte 0xe9
    .long L_12001e4c - . - 4
.org 0x10f5
L_120020f5:
    cmp    edx,0x1fff
.org 0x10fb
L_120020fb:
    # ja     12002151
    .byte 0x77
    .byte L_12002151 - . - 1
.org 0x10fd
L_120020fd:
    mov    eax,ds:0x12009894
.org 0x1102
L_12002102:
    mov    ecx,DWORD PTR [eax+0x4826b4]
.org 0x1108
L_12002108:
    test   ecx,ecx
.org 0x110a
L_1200210a:
    # je     120020a0
    .byte 0x74
    .byte L_120020a0 - . - 1
.org 0x110c
L_1200210c:
    mov    ecx,DWORD PTR [ecx]
.org 0x110e
L_1200210e:
    xor    eax,eax
.org 0x1110
L_12002110:
    test   ecx,ecx
.org 0x1112
L_12002112:
    # jne    12001d86
    .byte 0xf,0x85
    .long L_12001d86 - . - 4
.org 0x1118
L_12002118:
    # jmp    12001d8e
    .byte 0xe9
    .long L_12001d8e - . - 4
.org 0x111d
L_1200211d:
    sub    esp,0xc
.org 0x1120
L_12002120:
    mov    edx,0x120040fc
.org 0x1125
L_12002125:
    mov    eax,0x80
.org 0x112a
L_1200212a:
    shl    ebx,0x4
.org 0x112d
L_1200212d:
    push   DWORD PTR [esp+0x18]
.org 0x1131
L_12002131:
    mov    ecx,DWORD PTR [esp+0x24]
.org 0x1135
L_12002135:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0x113a
L_1200213a:
    pop    eax
.org 0x113b
L_1200213b:
    pop    edx
.org 0x113c
L_1200213c:
    push   0x0
.org 0x113e
L_1200213e:
    push   DWORD PTR [ebx+0x12008888]
.org 0x1144
L_12002144:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x1149
L_12002149:
    add    esp,0x10
.org 0x114c
L_1200214c:
    # jmp    120020c4
    .byte 0xe9
    .long L_120020c4 - . - 4
.org 0x1151
L_12002151:
    xor    eax,eax
.org 0x1153
L_12002153:
    xor    ecx,ecx
.org 0x1155
L_12002155:
    # jmp    12001d8e
    .byte 0xe9
    .long L_12001d8e - . - 4
.org 0x115a
L_1200215a:
    mov    eax,DWORD PTR [esp+0x14]
.org 0x115e
L_1200215e:
    mov    edx,0x120040fc
.org 0x1163
L_12002163:
    mov    DWORD PTR [esp+0x60],eax
.org 0x1167
L_12002167:
    mov    ecx,eax
.org 0x1169
L_12002169:
    mov    eax,0x80
.org 0x116e
L_1200216e:
    # jmp    12001fd8
    .byte 0xe9
    .long L_12001fd8 - . - 4
.org 0x1173
L_12002173:
    test   esi,esi
.org 0x1175
L_12002175:
    # js     12001f52
    .byte 0xf,0x88
    .long L_12001f52 - . - 4
.org 0x117b
L_1200217b:
    mov    ebx,esi
.org 0x117d
L_1200217d:
    # jmp    12001f2f
    .byte 0xe9
    .long L_12001f2f - . - 4
.org 0x1182
L_12002182:
    sub    esp,0xc
.org 0x1185
L_12002185:
    mov    ebx,DWORD PTR [edi+0x20]
.org 0x1188
L_12002188:
    push   0x28
.org 0x118a
L_1200218a:
    # call   12001750
    .byte 0xe8
    .long L_12001750 - . - 4
.org 0x118f
L_1200218f:
    mov    DWORD PTR [esp+0x48],0x0
.org 0x1197
L_12002197:
    add    ebx,eax
.org 0x1199
L_12002199:
    mov    eax,DWORD PTR [edi+0x24]
.org 0x119c
L_1200219c:
    mov    DWORD PTR [esp+0x4c],0x0
.org 0x11a4
L_120021a4:
    mov    DWORD PTR [esp+0x40],ebx
.org 0x11a8
L_120021a8:
    mov    DWORD PTR [esp+0x44],eax
.org 0x11ac
L_120021ac:
    pop    eax
.org 0x11ad
L_120021ad:
    pop    edx
.org 0x11ae
L_120021ae:
    lea    ebx,[esp+0x38]
.org 0x11b2
L_120021b2:
    push   ebx
.org 0x11b3
L_120021b3:
    mov    esi,DWORD PTR [esp+0x24]
.org 0x11b7
L_120021b7:
    push   DWORD PTR [esi+0x8]
.org 0x11ba
L_120021ba:
    # call   120016a0
    .byte 0xe8
    .long L_120016a0 - . - 4
.org 0x11bf
L_120021bf:
    pop    ecx
.org 0x11c0
L_120021c0:
    pop    edi
.org 0x11c1
L_120021c1:
    push   ebx
.org 0x11c2
L_120021c2:
    push   DWORD PTR [esi+0x8]
.org 0x11c5
L_120021c5:
    # call   120016b0
    .byte 0xe8
    .long L_120016b0 - . - 4
.org 0x11ca
L_120021ca:
    pop    ebp
.org 0x11cb
L_120021cb:
    pop    eax
.org 0x11cc
L_120021cc:
    push   ebx
.org 0x11cd
L_120021cd:
    push   DWORD PTR [esi+0x8]
.org 0x11d0
L_120021d0:
    # call   120016d0
    .byte 0xe8
    .long L_120016d0 - . - 4
.org 0x11d5
L_120021d5:
    pop    eax
.org 0x11d6
L_120021d6:
    pop    edx
.org 0x11d7
L_120021d7:
    push   0x1
.org 0x11d9
L_120021d9:
    push   DWORD PTR [esi+0x8]
.org 0x11dc
L_120021dc:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x11e1
L_120021e1:
    add    esp,0x10
.org 0x11e4
L_120021e4:
    # jmp    12001cce
    .byte 0xe9
    .long L_12001cce - . - 4
.org 0x11e9
L_120021e9:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x11f0
L_120021f0:
    # Original function: FHDUU_DrawShopFirstIcon
    push   ebp
.org 0x11f1
L_120021f1:
    push   edi
.org 0x11f2
L_120021f2:
    push   esi
.org 0x11f3
L_120021f3:
    push   ebx
.org 0x11f4
L_120021f4:
    sub    esp,0x3c
.org 0x11f7
L_120021f7:
    mov    edi,DWORD PTR [esp+0x54]
.org 0x11fb
L_120021fb:
    mov    ebx,DWORD PTR [esp+0x50]
.org 0x11ff
L_120021ff:
    test   edi,edi
.org 0x1201
L_12002201:
    # je     120022f0
    .byte 0xf,0x84
    .long L_120022f0 - . - 4
.org 0x1207
L_12002207:
    mov    ebp,DWORD PTR [edi+0x14]
.org 0x120a
L_1200220a:
    test   ebp,ebp
.org 0x120c
L_1200220c:
    # je     12002510
    .byte 0xf,0x84
    .long L_12002510 - . - 4
.org 0x1212
L_12002212:
    mov    eax,ebp
.org 0x1214
L_12002214:
    # call   120018f0
    .byte 0xe8
    .long L_120018f0 - . - 4
.org 0x1219
L_12002219:
    test   ebx,ebx
.org 0x121b
L_1200221b:
    # je     12002530
    .byte 0xf,0x84
    .long L_12002530 - . - 4
.org 0x1221
L_12002221:
    mov    eax,DWORD PTR [ebx+0x50]
.org 0x1224
L_12002224:
    mov    esi,0xffffffff
.org 0x1229
L_12002229:
    mov    DWORD PTR [esp+0x8],eax
.org 0x122d
L_1200222d:
    mov    eax,DWORD PTR [ebx+0x54]
.org 0x1230
L_12002230:
    xor    ebx,ebx
.org 0x1232
L_12002232:
    mov    DWORD PTR [esp+0x4],eax
.org 0x1236
L_12002236:
    # jmp    12002258
    .byte 0xeb
    .byte L_12002258 - . - 1
.org 0x1238
L_12002238:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1240
L_12002240:
    test   esi,esi
.org 0x1242
L_12002242:
    # jns    12002249
    .byte 0x79
    .byte L_12002249 - . - 1
.org 0x1244
L_12002244:
    test   eax,eax
.org 0x1246
L_12002246:
    cmove  esi,ebx
.org 0x1249
L_12002249:
    add    ebx,0x1
.org 0x124c
L_1200224c:
    cmp    ebx,0x100
.org 0x1252
L_12002252:
    # je     12002320
    .byte 0xf,0x84
    .long L_12002320 - . - 4
.org 0x1258
L_12002258:
    mov    edx,ebx
.org 0x125a
L_1200225a:
    shl    edx,0x4
.org 0x125d
L_1200225d:
    mov    eax,DWORD PTR [edx+0x12008880]
.org 0x1263
L_12002263:
    cmp    eax,edi
.org 0x1265
L_12002265:
    # jne    12002240
    .byte 0x75
    .byte L_12002240 - . - 1
.org 0x1267
L_12002267:
    cmp    DWORD PTR [edx+0x12008884],ebp
.org 0x126d
L_1200226d:
    # jne    12002249
    .byte 0x75
    .byte L_12002249 - . - 1
.org 0x126f
L_1200226f:
    mov    ecx,DWORD PTR [edx+0x12008888]
.org 0x1275
L_12002275:
    test   ecx,ecx
.org 0x1277
L_12002277:
    # je     12002300
    .byte 0xf,0x84
    .long L_12002300 - . - 4
.org 0x127d
L_1200227d:
    mov    eax,DWORD PTR [ebp+0x4]
.org 0x1280
L_12002280:
    test   eax,eax
.org 0x1282
L_12002282:
    # je     12002300
    .byte 0x74
    .byte L_12002300 - . - 1
.org 0x1284
L_12002284:
    cmp    ecx,eax
.org 0x1286
L_12002286:
    # je     120022a6
    .byte 0x74
    .byte L_120022a6 - . - 1
.org 0x1288
L_12002288:
    xor    edx,edx
.org 0x128a
L_1200228a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x1290
L_12002290:
    mov    eax,DWORD PTR [eax+0x10]
.org 0x1293
L_12002293:
    add    edx,0x1
.org 0x1296
L_12002296:
    test   eax,eax
.org 0x1298
L_12002298:
    # je     12002300
    .byte 0x74
    .byte L_12002300 - . - 1
.org 0x129a
L_1200229a:
    cmp    edx,0x1ff
.org 0x12a0
L_120022a0:
    # jg     12002300
    .byte 0x7f
    .byte L_12002300 - . - 1
.org 0x12a2
L_120022a2:
    cmp    ecx,eax
.org 0x12a4
L_120022a4:
    # jne    12002290
    .byte 0x75
    .byte L_12002290 - . - 1
.org 0x12a6
L_120022a6:
    mov    ecx,DWORD PTR [esp+0x8]
.org 0x12aa
L_120022aa:
    test   ecx,ecx
.org 0x12ac
L_120022ac:
    # jne    1200232d
    .byte 0x75
    .byte L_1200232d - . - 1
.org 0x12ae
L_120022ae:
    mov    eax,DWORD PTR [esp+0x4]
.org 0x12b2
L_120022b2:
    test   eax,eax
.org 0x12b4
L_120022b4:
    # je     1200232d
    .byte 0x74
    .byte L_1200232d - . - 1
.org 0x12b6
L_120022b6:
    lea    edx,[eax-0x1]
.org 0x12b9
L_120022b9:
    cmp    edx,0x1fff
.org 0x12bf
L_120022bf:
    # ja     1200232d
    .byte 0x77
    .byte L_1200232d - . - 1
.org 0x12c1
L_120022c1:
    mov    eax,ds:0x12009894
.org 0x12c6
L_120022c6:
    mov    eax,DWORD PTR [eax+0x4826b4]
.org 0x12cc
L_120022cc:
    test   eax,eax
.org 0x12ce
L_120022ce:
    # je     120022de
    .byte 0x74
    .byte L_120022de - . - 1
.org 0x12d0
L_120022d0:
    mov    eax,DWORD PTR [eax]
.org 0x12d2
L_120022d2:
    test   eax,eax
.org 0x12d4
L_120022d4:
    # je     120022de
    .byte 0x74
    .byte L_120022de - . - 1
.org 0x12d6
L_120022d6:
    imul   edx,edx,0x124
.org 0x12dc
L_120022dc:
    add    eax,edx
.org 0x12de
L_120022de:
    # call   12001530
    .byte 0xe8
    .long L_12001530 - . - 4
.org 0x12e3
L_120022e3:
    test   eax,eax
.org 0x12e5
L_120022e5:
    # jne    12002338
    .byte 0x75
    .byte L_12002338 - . - 1
.org 0x12e7
L_120022e7:
    cmp    ebx,0xffffffff
.org 0x12ea
L_120022ea:
    # jne    120024ef
    .byte 0xf,0x85
    .long L_120024ef - . - 4
.org 0x12f0
L_120022f0:
    add    esp,0x3c
.org 0x12f3
L_120022f3:
    pop    ebx
.org 0x12f4
L_120022f4:
    pop    esi
.org 0x12f5
L_120022f5:
    pop    edi
.org 0x12f6
L_120022f6:
    pop    ebp
.org 0x12f7
L_120022f7:
    ret
.org 0x12f8
L_120022f8:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1300
L_12002300:
    mov    eax,ebx
.org 0x1302
L_12002302:
    shl    eax,0x4
.org 0x1305
L_12002305:
    mov    DWORD PTR [eax+0x12008880],0x0
.org 0x130f
L_1200230f:
    mov    DWORD PTR [eax+0x12008888],0x0
.org 0x1319
L_12002319:
    test   esi,esi
.org 0x131b
L_1200231b:
    # jns    12002320
    .byte 0x79
    .byte L_12002320 - . - 1
.org 0x131d
L_1200231d:
    mov    esi,ebx
.org 0x131f
L_1200231f:
    # Alignment padding: nop
    .byte 0x90
.org 0x1320
L_12002320:
    mov    ecx,DWORD PTR [esp+0x8]
.org 0x1324
L_12002324:
    mov    ebx,0xffffffff
.org 0x1329
L_12002329:
    test   ecx,ecx
.org 0x132b
L_1200232b:
    # je     120022ae
    .byte 0x74
    .byte L_120022ae - . - 1
.org 0x132d
L_1200232d:
    xor    eax,eax
.org 0x132f
L_1200232f:
    # call   12001530
    .byte 0xe8
    .long L_12001530 - . - 4
.org 0x1334
L_12002334:
    test   eax,eax
.org 0x1336
L_12002336:
    # je     120022e7
    .byte 0x74
    .byte L_120022e7 - . - 1
.org 0x1338
L_12002338:
    mov    eax,DWORD PTR [edi+0x20]
.org 0x133b
L_1200233b:
    sub    esp,0xc
.org 0x133e
L_1200233e:
    mov    DWORD PTR [esp+0x18],eax
.org 0x1342
L_12002342:
    push   0x2d
.org 0x1344
L_12002344:
    # call   12001750
    .byte 0xe8
    .long L_12001750 - . - 4
.org 0x1349
L_12002349:
    mov    ecx,DWORD PTR [esp+0x1c]
.org 0x134d
L_1200234d:
    add    eax,ecx
.org 0x134f
L_1200234f:
    mov    DWORD PTR [esp+0x30],eax
.org 0x1353
L_12002353:
    mov    eax,DWORD PTR [edi+0x24]
.org 0x1356
L_12002356:
    mov    DWORD PTR [esp],0x5
.org 0x135d
L_1200235d:
    mov    DWORD PTR [esp+0x1c],eax
.org 0x1361
L_12002361:
    # call   12001750
    .byte 0xe8
    .long L_12001750 - . - 4
.org 0x1366
L_12002366:
    mov    ecx,DWORD PTR [esp+0x1c]
.org 0x136a
L_1200236a:
    mov    DWORD PTR [esp+0x38],0x0
.org 0x1372
L_12002372:
    mov    DWORD PTR [esp+0x3c],0x0
.org 0x137a
L_1200237a:
    add    eax,ecx
.org 0x137c
L_1200237c:
    mov    DWORD PTR [esp+0x34],eax
.org 0x1380
L_12002380:
    add    esp,0x10
.org 0x1383
L_12002383:
    cmp    ebx,0xffffffff
.org 0x1386
L_12002386:
    # je     120023a3
    .byte 0x74
    .byte L_120023a3 - . - 1
.org 0x1388
L_12002388:
    mov    eax,ebx
.org 0x138a
L_1200238a:
    mov    ecx,DWORD PTR [esp+0x4]
.org 0x138e
L_1200238e:
    shl    eax,0x4
.org 0x1391
L_12002391:
    lea    edx,[eax+0x12008880]
.org 0x1397
L_12002397:
    cmp    DWORD PTR [eax+0x1200888c],ecx
.org 0x139d
L_1200239d:
    # je     1200260e
    .byte 0xf,0x84
    .long L_1200260e - . - 4
.org 0x13a3
L_120023a3:
    mov    DWORD PTR [esp+0x18],0x0
.org 0x13ab
L_120023ab:
    sub    esp,0x8
.org 0x13ae
L_120023ae:
    mov    DWORD PTR [esp+0x24],0x0
.org 0x13b6
L_120023b6:
    lea    eax,[esp+0x20]
.org 0x13ba
L_120023ba:
    push   eax
.org 0x13bb
L_120023bb:
    mov    eax,DWORD PTR [esp+0x10]
.org 0x13bf
L_120023bf:
    sub    eax,0x1
.org 0x13c2
L_120023c2:
    push   eax
.org 0x13c3
L_120023c3:
    # call   12001600
    .byte 0xe8
    .long L_12001600 - . - 4
.org 0x13c8
L_120023c8:
    mov    edx,DWORD PTR [esp+0x28]
.org 0x13cc
L_120023cc:
    add    esp,0x10
.org 0x13cf
L_120023cf:
    test   edx,edx
.org 0x13d1
L_120023d1:
    # je     12002540
    .byte 0xf,0x84
    .long L_12002540 - . - 4
.org 0x13d7
L_120023d7:
    mov    eax,ds:0x12009894
.org 0x13dc
L_120023dc:
    lea    ecx,[eax+0x2aceb4]
.org 0x13e2
L_120023e2:
    add    eax,0x2ace98
.org 0x13e7
L_120023e7:
    push   ecx
.org 0x13e8
L_120023e8:
    push   edx
.org 0x13e9
L_120023e9:
    push   eax
.org 0x13ea
L_120023ea:
    lea    eax,[esp+0x28]
.org 0x13ee
L_120023ee:
    push   eax
.org 0x13ef
L_120023ef:
    # call   12001610
    .byte 0xe8
    .long L_12001610 - . - 4
.org 0x13f4
L_120023f4:
    mov    eax,DWORD PTR [esp+0x2c]
.org 0x13f8
L_120023f8:
    add    esp,0x10
.org 0x13fb
L_120023fb:
    test   eax,eax
.org 0x13fd
L_120023fd:
    # je     120024cc
    .byte 0xf,0x84
    .long L_120024cc - . - 4
.org 0x1403
L_12002403:
    cmp    ebx,0xffffffff
.org 0x1406
L_12002406:
    # je     1200255e
    .byte 0xf,0x84
    .long L_1200255e - . - 4
.org 0x140c
L_1200240c:
    mov    edx,ebx
.org 0x140e
L_1200240e:
    shl    edx,0x4
.org 0x1411
L_12002411:
    mov    ecx,DWORD PTR [edx+0x12008888]
.org 0x1417
L_12002417:
    mov    DWORD PTR [esp+0xc],ecx
.org 0x141b
L_1200241b:
    test   ecx,ecx
.org 0x141d
L_1200241d:
    # je     120024cc
    .byte 0xf,0x84
    .long L_120024cc - . - 4
.org 0x1423
L_12002423:
    sub    esp,0x8
.org 0x1426
L_12002426:
    push   eax
.org 0x1427
L_12002427:
    mov    esi,DWORD PTR [esp+0x18]
.org 0x142b
L_1200242b:
    push   esi
.org 0x142c
L_1200242c:
    # call   12001660
    .byte 0xe8
    .long L_12001660 - . - 4
.org 0x1431
L_12002431:
    pop    eax
.org 0x1432
L_12002432:
    pop    edx
.org 0x1433
L_12002433:
    push   0x1
.org 0x1435
L_12002435:
    mov    DWORD PTR [esp+0x18],esi
.org 0x1439
L_12002439:
    push   esi
.org 0x143a
L_1200243a:
    # call   12001680
    .byte 0xe8
    .long L_12001680 - . - 4
.org 0x143f
L_1200243f:
    pop    ecx
.org 0x1440
L_12002440:
    pop    esi
.org 0x1441
L_12002441:
    lea    esi,[esp+0x28]
.org 0x1445
L_12002445:
    push   esi
.org 0x1446
L_12002446:
    push   DWORD PTR [esp+0x18]
.org 0x144a
L_1200244a:
    # call   120016a0
    .byte 0xe8
    .long L_120016a0 - . - 4
.org 0x144f
L_1200244f:
    pop    eax
.org 0x1450
L_12002450:
    pop    edx
.org 0x1451
L_12002451:
    push   esi
.org 0x1452
L_12002452:
    push   DWORD PTR [esp+0x18]
.org 0x1456
L_12002456:
    # call   120016b0
    .byte 0xe8
    .long L_120016b0 - . - 4
.org 0x145b
L_1200245b:
    pop    ecx
.org 0x145c
L_1200245c:
    pop    eax
.org 0x145d
L_1200245d:
    push   esi
.org 0x145e
L_1200245e:
    mov    esi,DWORD PTR [esp+0x18]
.org 0x1462
L_12002462:
    push   esi
.org 0x1463
L_12002463:
    # call   120016d0
    .byte 0xe8
    .long L_120016d0 - . - 4
.org 0x1468
L_12002468:
    mov    DWORD PTR [esp],esi
.org 0x146b
L_1200246b:
    # call   120016e0
    .byte 0xe8
    .long L_120016e0 - . - 4
.org 0x1470
L_12002470:
    pop    eax
.org 0x1471
L_12002471:
    pop    edx
.org 0x1472
L_12002472:
    push   0x4
.org 0x1474
L_12002474:
    push   esi
.org 0x1475
L_12002475:
    # call   120016f0
    .byte 0xe8
    .long L_120016f0 - . - 4
.org 0x147a
L_1200247a:
    pop    ecx
.org 0x147b
L_1200247b:
    pop    eax
.org 0x147c
L_1200247c:
    push   0x4
.org 0x147e
L_1200247e:
    push   esi
.org 0x147f
L_1200247f:
    # call   12001710
    .byte 0xe8
    .long L_12001710 - . - 4
.org 0x1484
L_12002484:
    pop    eax
.org 0x1485
L_12002485:
    pop    edx
.org 0x1486
L_12002486:
    push   0x1
.org 0x1488
L_12002488:
    push   esi
.org 0x1489
L_12002489:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x148e
L_1200248e:
    pop    ecx
.org 0x148f
L_1200248f:
    push   DWORD PTR [esp+0x10]
.org 0x1493
L_12002493:
    mov    edx,0x120040ea
.org 0x1498
L_12002498:
    mov    ecx,DWORD PTR [esp+0x18]
.org 0x149c
L_1200249c:
    mov    eax,0x200
.org 0x14a1
L_120024a1:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0x14a6
L_120024a6:
    add    esp,0x10
.org 0x14a9
L_120024a9:
    mov    ecx,DWORD PTR [esp+0xc]
.org 0x14ad
L_120024ad:
    shl    ebx,0x4
.org 0x14b0
L_120024b0:
    mov    DWORD PTR [ebx+0x12008880],edi
.org 0x14b6
L_120024b6:
    mov    DWORD PTR [ebx+0x12008888],ecx
.org 0x14bc
L_120024bc:
    mov    ecx,DWORD PTR [esp+0x4]
.org 0x14c0
L_120024c0:
    mov    DWORD PTR [ebx+0x12008884],ebp
.org 0x14c6
L_120024c6:
    mov    DWORD PTR [ebx+0x1200888c],ecx
.org 0x14cc
L_120024cc:
    sub    esp,0xc
.org 0x14cf
L_120024cf:
    lea    eax,[esp+0x28]
.org 0x14d3
L_120024d3:
    push   eax
.org 0x14d4
L_120024d4:
    # call   12001630
    .byte 0xe8
    .long L_12001630 - . - 4
.org 0x14d9
L_120024d9:
    pop    ebx
.org 0x14da
L_120024da:
    lea    eax,[esp+0x24]
.org 0x14de
L_120024de:
    push   eax
.org 0x14df
L_120024df:
    # call   12001630
    .byte 0xe8
    .long L_12001630 - . - 4
.org 0x14e4
L_120024e4:
    add    esp,0x10
.org 0x14e7
L_120024e7:
    add    esp,0x3c
.org 0x14ea
L_120024ea:
    pop    ebx
.org 0x14eb
L_120024eb:
    pop    esi
.org 0x14ec
L_120024ec:
    pop    edi
.org 0x14ed
L_120024ed:
    pop    ebp
.org 0x14ee
L_120024ee:
    ret
.org 0x14ef
L_120024ef:
    shl    ebx,0x4
.org 0x14f2
L_120024f2:
    mov    DWORD PTR [esp+0x54],0x0
.org 0x14fa
L_120024fa:
    mov    eax,DWORD PTR [ebx+0x12008888]
.org 0x1500
L_12002500:
    mov    DWORD PTR [esp+0x50],eax
.org 0x1504
L_12002504:
    add    esp,0x3c
.org 0x1507
L_12002507:
    pop    ebx
.org 0x1508
L_12002508:
    pop    esi
.org 0x1509
L_12002509:
    pop    edi
.org 0x150a
L_1200250a:
    pop    ebp
.org 0x150b
L_1200250b:
    # jmp    12001730
    .byte 0xe9
    .long L_12001730 - . - 4
.org 0x1510
L_12002510:
    mov    DWORD PTR [esp+0x50],0x0
.org 0x1518
L_12002518:
    add    esp,0x3c
.org 0x151b
L_1200251b:
    xor    ecx,ecx
.org 0x151d
L_1200251d:
    mov    edx,0x1200409a
.org 0x1522
L_12002522:
    pop    ebx
.org 0x1523
L_12002523:
    mov    eax,0x4
.org 0x1528
L_12002528:
    pop    esi
.org 0x1529
L_12002529:
    pop    edi
.org 0x152a
L_1200252a:
    pop    ebp
.org 0x152b
L_1200252b:
    # jmp    12001000
    .byte 0xe9
    .long L_12001000 - . - 4
.org 0x1530
L_12002530:
    add    esp,0x3c
.org 0x1533
L_12002533:
    mov    edx,ebp
.org 0x1535
L_12002535:
    mov    eax,edi
.org 0x1537
L_12002537:
    pop    ebx
.org 0x1538
L_12002538:
    pop    esi
.org 0x1539
L_12002539:
    pop    edi
.org 0x153a
L_1200253a:
    pop    ebp
.org 0x153b
L_1200253b:
    # jmp    120019b0
    .byte 0xe9
    .long L_120019b0 - . - 4
.org 0x1540
L_12002540:
    sub    esp,0xc
.org 0x1543
L_12002543:
    xor    ecx,ecx
.org 0x1545
L_12002545:
    mov    edx,0x120040c2
.org 0x154a
L_1200254a:
    mov    eax,0x20
.org 0x154f
L_1200254f:
    push   0x0
.org 0x1551
L_12002551:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0x1556
L_12002556:
    add    esp,0x10
.org 0x1559
L_12002559:
    # jmp    120022f0
    .byte 0xe9
    .long L_120022f0 - . - 4
.org 0x155e
L_1200255e:
    sub    esp,0xc
.org 0x1561
L_12002561:
    push   ebp
.org 0x1562
L_12002562:
    # call   12001640
    .byte 0xe8
    .long L_12001640 - . - 4
.org 0x1567
L_12002567:
    mov    DWORD PTR [esp+0x1c],eax
.org 0x156b
L_1200256b:
    add    esp,0x10
.org 0x156e
L_1200256e:
    test   eax,eax
.org 0x1570
L_12002570:
    # je     120024cc
    .byte 0xf,0x84
    .long L_120024cc - . - 4
.org 0x1576
L_12002576:
    sub    esp,0x8
.org 0x1579
L_12002579:
    push   DWORD PTR [esp+0x24]
.org 0x157d
L_1200257d:
    mov    ebx,DWORD PTR [esp+0x18]
.org 0x1581
L_12002581:
    push   ebx
.org 0x1582
L_12002582:
    # call   12001660
    .byte 0xe8
    .long L_12001660 - . - 4
.org 0x1587
L_12002587:
    pop    eax
.org 0x1588
L_12002588:
    pop    edx
.org 0x1589
L_12002589:
    push   0x1
.org 0x158b
L_1200258b:
    mov    DWORD PTR [esp+0x18],ebx
.org 0x158f
L_1200258f:
    push   ebx
.org 0x1590
L_12002590:
    # call   12001680
    .byte 0xe8
    .long L_12001680 - . - 4
.org 0x1595
L_12002595:
    pop    ecx
.org 0x1596
L_12002596:
    pop    ebx
.org 0x1597
L_12002597:
    lea    ebx,[esp+0x28]
.org 0x159b
L_1200259b:
    push   ebx
.org 0x159c
L_1200259c:
    push   DWORD PTR [esp+0x18]
.org 0x15a0
L_120025a0:
    # call   120016a0
    .byte 0xe8
    .long L_120016a0 - . - 4
.org 0x15a5
L_120025a5:
    pop    eax
.org 0x15a6
L_120025a6:
    pop    edx
.org 0x15a7
L_120025a7:
    push   ebx
.org 0x15a8
L_120025a8:
    push   DWORD PTR [esp+0x18]
.org 0x15ac
L_120025ac:
    # call   120016b0
    .byte 0xe8
    .long L_120016b0 - . - 4
.org 0x15b1
L_120025b1:
    pop    ecx
.org 0x15b2
L_120025b2:
    pop    eax
.org 0x15b3
L_120025b3:
    push   ebx
.org 0x15b4
L_120025b4:
    mov    ebx,DWORD PTR [esp+0x18]
.org 0x15b8
L_120025b8:
    push   ebx
.org 0x15b9
L_120025b9:
    # call   120016d0
    .byte 0xe8
    .long L_120016d0 - . - 4
.org 0x15be
L_120025be:
    mov    DWORD PTR [esp],ebx
.org 0x15c1
L_120025c1:
    # call   120016e0
    .byte 0xe8
    .long L_120016e0 - . - 4
.org 0x15c6
L_120025c6:
    pop    eax
.org 0x15c7
L_120025c7:
    pop    edx
.org 0x15c8
L_120025c8:
    push   0x4
.org 0x15ca
L_120025ca:
    push   ebx
.org 0x15cb
L_120025cb:
    # call   120016f0
    .byte 0xe8
    .long L_120016f0 - . - 4
.org 0x15d0
L_120025d0:
    pop    ecx
.org 0x15d1
L_120025d1:
    pop    eax
.org 0x15d2
L_120025d2:
    push   0x4
.org 0x15d4
L_120025d4:
    push   ebx
.org 0x15d5
L_120025d5:
    # call   12001710
    .byte 0xe8
    .long L_12001710 - . - 4
.org 0x15da
L_120025da:
    pop    eax
.org 0x15db
L_120025db:
    pop    edx
.org 0x15dc
L_120025dc:
    push   0x1
.org 0x15de
L_120025de:
    push   ebx
.org 0x15df
L_120025df:
    mov    ebx,esi
.org 0x15e1
L_120025e1:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x15e6
L_120025e6:
    pop    ecx
.org 0x15e7
L_120025e7:
    push   DWORD PTR [esp+0x10]
.org 0x15eb
L_120025eb:
    mov    edx,0x120040ea
.org 0x15f0
L_120025f0:
    mov    ecx,DWORD PTR [esp+0x18]
.org 0x15f4
L_120025f4:
    mov    eax,0x200
.org 0x15f9
L_120025f9:
    # call   12001000
    .byte 0xe8
    .long L_12001000 - . - 4
.org 0x15fe
L_120025fe:
    add    esp,0x10
.org 0x1601
L_12002601:
    test   esi,esi
.org 0x1603
L_12002603:
    # jns    120024a9
    .byte 0xf,0x89
    .long L_120024a9 - . - 4
.org 0x1609
L_12002609:
    # jmp    120024cc
    .byte 0xe9
    .long L_120024cc - . - 4
.org 0x160e
L_1200260e:
    sub    esp,0x8
.org 0x1611
L_12002611:
    lea    ebx,[esp+0x28]
.org 0x1615
L_12002615:
    push   ebx
.org 0x1616
L_12002616:
    push   DWORD PTR [eax+0x12008888]
.org 0x161c
L_1200261c:
    mov    DWORD PTR [esp+0x14],edx
.org 0x1620
L_12002620:
    # call   120016a0
    .byte 0xe8
    .long L_120016a0 - . - 4
.org 0x1625
L_12002625:
    pop    esi
.org 0x1626
L_12002626:
    pop    edi
.org 0x1627
L_12002627:
    push   ebx
.org 0x1628
L_12002628:
    mov    edx,DWORD PTR [esp+0x10]
.org 0x162c
L_1200262c:
    push   DWORD PTR [edx+0x8]
.org 0x162f
L_1200262f:
    mov    DWORD PTR [esp+0x14],edx
.org 0x1633
L_12002633:
    # call   120016b0
    .byte 0xe8
    .long L_120016b0 - . - 4
.org 0x1638
L_12002638:
    pop    ebp
.org 0x1639
L_12002639:
    pop    eax
.org 0x163a
L_1200263a:
    push   ebx
.org 0x163b
L_1200263b:
    mov    edx,DWORD PTR [esp+0x10]
.org 0x163f
L_1200263f:
    push   DWORD PTR [edx+0x8]
.org 0x1642
L_12002642:
    mov    DWORD PTR [esp+0x14],edx
.org 0x1646
L_12002646:
    # call   120016d0
    .byte 0xe8
    .long L_120016d0 - . - 4
.org 0x164b
L_1200264b:
    pop    eax
.org 0x164c
L_1200264c:
    pop    edx
.org 0x164d
L_1200264d:
    push   0x1
.org 0x164f
L_1200264f:
    mov    edx,DWORD PTR [esp+0x10]
.org 0x1653
L_12002653:
    push   DWORD PTR [edx+0x8]
.org 0x1656
L_12002656:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x165b
L_1200265b:
    add    esp,0x10
.org 0x165e
L_1200265e:
    # jmp    120022f0
    .byte 0xe9
    .long L_120022f0 - . - 4
.org 0x1663
L_12002663:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x166b
L_1200266b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x1670
L_12002670:
    # Original function: FHDUU_DrawEquipmentIcons
    push   ebp
.org 0x1671
L_12002671:
    push   edi
.org 0x1672
L_12002672:
    push   esi
.org 0x1673
L_12002673:
    push   ebx
.org 0x1674
L_12002674:
    sub    esp,0x4c
.org 0x1677
L_12002677:
    mov    esi,DWORD PTR [esp+0x64]
.org 0x167b
L_1200267b:
    mov    ecx,DWORD PTR [esp+0x60]
.org 0x167f
L_1200267f:
    test   esi,esi
.org 0x1681
L_12002681:
    # je     120027b3
    .byte 0xf,0x84
    .long L_120027b3 - . - 4
.org 0x1687
L_12002687:
    mov    ebp,DWORD PTR [esi+0x14]
.org 0x168a
L_1200268a:
    test   ebp,ebp
.org 0x168c
L_1200268c:
    # je     120027b3
    .byte 0xf,0x84
    .long L_120027b3 - . - 4
.org 0x1692
L_12002692:
    mov    edx,0x12007060
.org 0x1697
L_12002697:
    xor    ebx,ebx
.org 0x1699
L_12002699:
    mov    eax,0xffffffff
.org 0x169e
L_1200269e:
    # jmp    120026bb
    .byte 0xeb
    .byte L_120026bb - . - 1
.org 0x16a0
L_120026a0:
    test   edi,edi
.org 0x16a2
L_120026a2:
    # jne    120026a9
    .byte 0x75
    .byte L_120026a9 - . - 1
.org 0x16a4
L_120026a4:
    test   eax,eax
.org 0x16a6
L_120026a6:
    cmovs  eax,ebx
.org 0x16a9
L_120026a9:
    add    ebx,0x1
.org 0x16ac
L_120026ac:
    add    edx,0x18
.org 0x16af
L_120026af:
    cmp    ebx,0x100
.org 0x16b5
L_120026b5:
    # je     120027d6
    .byte 0xf,0x84
    .long L_120027d6 - . - 4
.org 0x16bb
L_120026bb:
    mov    edi,DWORD PTR [edx]
.org 0x16bd
L_120026bd:
    cmp    edi,esi
.org 0x16bf
L_120026bf:
    # jne    120026a0
    .byte 0x75
    .byte L_120026a0 - . - 1
.org 0x16c1
L_120026c1:
    cmp    DWORD PTR [edx+0x4],ebp
.org 0x16c4
L_120026c4:
    # jne    120026a9
    .byte 0x75
    .byte L_120026a9 - . - 1
.org 0x16c6
L_120026c6:
    mov    edx,ebx
.org 0x16c8
L_120026c8:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x16cc
L_120026cc:
    lea    ebx,[ebx+ebx*1]
.org 0x16cf
L_120026cf:
    lea    edi,[ebx+edx*1]
.org 0x16d2
L_120026d2:
    mov    DWORD PTR [esp+0xc],eax
.org 0x16d6
L_120026d6:
    shl    edi,0x3
.org 0x16d9
L_120026d9:
    mov    DWORD PTR [esp+0x60],ecx
.org 0x16dd
L_120026dd:
    lea    edx,[edi+0x8]
.org 0x16e0
L_120026e0:
    mov    DWORD PTR [esp+0x8],edx
.org 0x16e4
L_120026e4:
    mov    ecx,DWORD PTR [edi+0x12007068]
.org 0x16ea
L_120026ea:
    test   ecx,ecx
.org 0x16ec
L_120026ec:
    # je     1200271e
    .byte 0x74
    .byte L_1200271e - . - 1
.org 0x16ee
L_120026ee:
    mov    eax,DWORD PTR [ebp+0x4]
.org 0x16f1
L_120026f1:
    test   eax,eax
.org 0x16f3
L_120026f3:
    # je     120027bd
    .byte 0xf,0x84
    .long L_120027bd - . - 4
.org 0x16f9
L_120026f9:
    cmp    ecx,eax
.org 0x16fb
L_120026fb:
    # je     1200271e
    .byte 0x74
    .byte L_1200271e - . - 1
.org 0x16fd
L_120026fd:
    xor    edx,edx
.org 0x16ff
L_120026ff:
    # Alignment padding: nop
    .byte 0x90
.org 0x1700
L_12002700:
    mov    eax,DWORD PTR [eax+0x10]
.org 0x1703
L_12002703:
    add    edx,0x1
.org 0x1706
L_12002706:
    test   eax,eax
.org 0x1708
L_12002708:
    # je     120027bd
    .byte 0xf,0x84
    .long L_120027bd - . - 4
.org 0x170e
L_1200270e:
    cmp    edx,0x1ff
.org 0x1714
L_12002714:
    # jg     120027bd
    .byte 0xf,0x8f
    .long L_120027bd - . - 4
.org 0x171a
L_1200271a:
    cmp    ecx,eax
.org 0x171c
L_1200271c:
    # jne    12002700
    .byte 0x75
    .byte L_12002700 - . - 1
.org 0x171e
L_1200271e:
    mov    eax,DWORD PTR [esp+0x8]
.org 0x1722
L_12002722:
    add    edi,0x4
.org 0x1725
L_12002725:
    cmp    edi,eax
.org 0x1727
L_12002727:
    # jne    120026e4
    .byte 0x75
    .byte L_120026e4 - . - 1
.org 0x1729
L_12002729:
    mov    ecx,DWORD PTR [esp+0x60]
.org 0x172d
L_1200272d:
    mov    eax,DWORD PTR [esp+0xc]
.org 0x1731
L_12002731:
    test   ecx,ecx
.org 0x1733
L_12002733:
    # je     12002775
    .byte 0x74
    .byte L_12002775 - . - 1
.org 0x1735
L_12002735:
    movzx  edi,BYTE PTR [ecx+0xc]
.org 0x1739
L_12002739:
    lea    edx,[edi-0x2a]
.org 0x173c
L_1200273c:
    cmp    dl,0x7
.org 0x173f
L_1200273f:
    # ja     12002775
    .byte 0x77
    .byte L_12002775 - . - 1
.org 0x1741
L_12002741:
    mov    edi,DWORD PTR [ecx+0x3c]
.org 0x1744
L_12002744:
    test   edi,edi
.org 0x1746
L_12002746:
    # je     12002769
    .byte 0x74
    .byte L_12002769 - . - 1
.org 0x1748
L_12002748:
    xor    edx,edx
.org 0x174a
L_1200274a:
    # jmp    1200275c
    .byte 0xeb
    .byte L_1200275c - . - 1
.org 0x174c
L_1200274c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x1750
L_12002750:
    add    edx,0x2
.org 0x1753
L_12002753:
    cmp    edx,0x22
.org 0x1756
L_12002756:
    # je     120027f3
    .byte 0xf,0x84
    .long L_120027f3 - . - 4
.org 0x175c
L_1200275c:
    movzx  ebx,WORD PTR [edx+0x12006020]
.org 0x1763
L_12002763:
    cmp    WORD PTR [edi+edx*1],bx
.org 0x1767
L_12002767:
    # je     12002750
    .byte 0x74
    .byte L_12002750 - . - 1
.org 0x1769
L_12002769:
    mov    eax,DWORD PTR [esp+0x4]
.org 0x176d
L_1200276d:
    cmp    eax,0xffffffff
.org 0x1770
L_12002770:
    # je     120027b3
    .byte 0x74
    .byte L_120027b3 - . - 1
.org 0x1772
L_12002772:
    lea    ebx,[eax+eax*1]
.org 0x1775
L_12002775:
    mov    eax,DWORD PTR [esp+0x4]
.org 0x1779
L_12002779:
    add    eax,ebx
.org 0x177b
L_1200277b:
    mov    eax,DWORD PTR [eax*8+0x12007068]
.org 0x1782
L_12002782:
    test   eax,eax
.org 0x1784
L_12002784:
    # je     12002794
    .byte 0x74
    .byte L_12002794 - . - 1
.org 0x1786
L_12002786:
    sub    esp,0x8
.org 0x1789
L_12002789:
    push   0x0
.org 0x178b
L_1200278b:
    push   eax
.org 0x178c
L_1200278c:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x1791
L_12002791:
    add    esp,0x10
.org 0x1794
L_12002794:
    mov    eax,DWORD PTR [esp+0x4]
.org 0x1798
L_12002798:
    add    ebx,eax
.org 0x179a
L_1200279a:
    mov    eax,DWORD PTR [ebx*8+0x1200706c]
.org 0x17a1
L_120027a1:
    test   eax,eax
.org 0x17a3
L_120027a3:
    # je     120027b3
    .byte 0x74
    .byte L_120027b3 - . - 1
.org 0x17a5
L_120027a5:
    sub    esp,0x8
.org 0x17a8
L_120027a8:
    push   0x0
.org 0x17aa
L_120027aa:
    push   eax
.org 0x17ab
L_120027ab:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x17b0
L_120027b0:
    add    esp,0x10
.org 0x17b3
L_120027b3:
    add    esp,0x4c
.org 0x17b6
L_120027b6:
    xor    eax,eax
.org 0x17b8
L_120027b8:
    pop    ebx
.org 0x17b9
L_120027b9:
    pop    esi
.org 0x17ba
L_120027ba:
    pop    edi
.org 0x17bb
L_120027bb:
    pop    ebp
.org 0x17bc
L_120027bc:
    ret
.org 0x17bd
L_120027bd:
    mov    DWORD PTR [edi+0x12007068],0x0
.org 0x17c7
L_120027c7:
    mov    DWORD PTR [edi+0x12007070],0x0
.org 0x17d1
L_120027d1:
    # jmp    1200271e
    .byte 0xe9
    .long L_1200271e - . - 4
.org 0x17d6
L_120027d6:
    test   ecx,ecx
.org 0x17d8
L_120027d8:
    # je     120027b3
    .byte 0x74
    .byte L_120027b3 - . - 1
.org 0x17da
L_120027da:
    movzx  ebx,BYTE PTR [ecx+0xc]
.org 0x17de
L_120027de:
    lea    edx,[ebx-0x2a]
.org 0x17e1
L_120027e1:
    cmp    dl,0x7
.org 0x17e4
L_120027e4:
    # ja     120027b3
    .byte 0x77
    .byte L_120027b3 - . - 1
.org 0x17e6
L_120027e6:
    mov    DWORD PTR [esp+0x4],0xffffffff
.org 0x17ee
L_120027ee:
    # jmp    12002741
    .byte 0xe9
    .long L_12002741 - . - 4
.org 0x17f3
L_120027f3:
    cmp    DWORD PTR [esp+0x4],0xffffffff
.org 0x17f8
L_120027f8:
    # je     12002a9b
    .byte 0xf,0x84
    .long L_12002a9b - . - 4
.org 0x17fe
L_120027fe:
    mov    eax,DWORD PTR [esp+0x68]
.org 0x1802
L_12002802:
    test   eax,eax
.org 0x1804
L_12002804:
    # je     1200282a
    .byte 0x74
    .byte L_1200282a - . - 1
.org 0x1806
L_12002806:
    mov    eax,DWORD PTR [esp+0x68]
.org 0x180a
L_1200280a:
    mov    edx,ebp
.org 0x180c
L_1200280c:
    mov    DWORD PTR [esp+0x60],ecx
.org 0x1810
L_12002810:
    # call   120019b0
    .byte 0xe8
    .long L_120019b0 - . - 4
.org 0x1815
L_12002815:
    sub    esp,0x8
.org 0x1818
L_12002818:
    push   0x0
.org 0x181a
L_1200281a:
    push   DWORD PTR [esp+0x74]
.org 0x181e
L_1200281e:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x1823
L_12002823:
    mov    ecx,DWORD PTR [esp+0x70]
.org 0x1827
L_12002827:
    add    esp,0x10
.org 0x182a
L_1200282a:
    mov    eax,DWORD PTR [ecx+0x50]
.org 0x182d
L_1200282d:
    mov    edx,DWORD PTR [ecx+0x54]
.org 0x1830
L_12002830:
    mov    DWORD PTR [esp+0x28],0x0
.org 0x1838
L_12002838:
    xor    ecx,ecx
.org 0x183a
L_1200283a:
    mov    DWORD PTR [esp+0x2c],0x0
.org 0x1842
L_12002842:
    lea    edi,[esp+0x20]
.org 0x1846
L_12002846:
    mov    DWORD PTR [esp+0x24],eax
.org 0x184a
L_1200284a:
    mov    eax,ds:0x12009894
.org 0x184f
L_1200284f:
    mov    DWORD PTR [esp+0x20],edx
.org 0x1853
L_12002853:
    mov    DWORD PTR [esp+0x8],eax
.org 0x1857
L_12002857:
    mov    DWORD PTR [esp+0x64],esi
.org 0x185b
L_1200285b:
    mov    esi,ecx
.org 0x185d
L_1200285d:
    mov    ebx,DWORD PTR [edi]
.org 0x185f
L_1200285f:
    lea    edx,[ebx-0x1]
.org 0x1862
L_12002862:
    cmp    edx,0x1fff
.org 0x1868
L_12002868:
    # ja     120028a0
    .byte 0x77
    .byte L_120028a0 - . - 1
.org 0x186a
L_1200286a:
    mov    eax,DWORD PTR [esp+0x8]
.org 0x186e
L_1200286e:
    mov    eax,DWORD PTR [eax+0x4826b4]
.org 0x1874
L_12002874:
    test   eax,eax
.org 0x1876
L_12002876:
    # je     12002886
    .byte 0x74
    .byte L_12002886 - . - 1
.org 0x1878
L_12002878:
    mov    eax,DWORD PTR [eax]
.org 0x187a
L_1200287a:
    test   eax,eax
.org 0x187c
L_1200287c:
    # je     12002886
    .byte 0x74
    .byte L_12002886 - . - 1
.org 0x187e
L_1200287e:
    imul   edx,edx,0x124
.org 0x1884
L_12002884:
    add    eax,edx
.org 0x1886
L_12002886:
    # call   12001530
    .byte 0xe8
    .long L_12001530 - . - 4
.org 0x188b
L_1200288b:
    test   eax,eax
.org 0x188d
L_1200288d:
    # je     120028a0
    .byte 0x74
    .byte L_120028a0 - . - 1
.org 0x188f
L_1200288f:
    test   esi,esi
.org 0x1891
L_12002891:
    # je     12002899
    .byte 0x74
    .byte L_12002899 - . - 1
.org 0x1893
L_12002893:
    cmp    ebx,DWORD PTR [esp+0x28]
.org 0x1897
L_12002897:
    # je     120028a0
    .byte 0x74
    .byte L_120028a0 - . - 1
.org 0x1899
L_12002899:
    mov    DWORD PTR [esp+esi*4+0x28],ebx
.org 0x189d
L_1200289d:
    add    esi,0x1
.org 0x18a0
L_120028a0:
    add    edi,0x4
.org 0x18a3
L_120028a3:
    lea    eax,[esp+0x28]
.org 0x18a7
L_120028a7:
    cmp    edi,eax
.org 0x18a9
L_120028a9:
    # jne    1200285d
    .byte 0x75
    .byte L_1200285d - . - 1
.org 0x18ab
L_120028ab:
    mov    eax,DWORD PTR [esp+0x4]
.org 0x18af
L_120028af:
    xor    ebx,ebx
.org 0x18b1
L_120028b1:
    mov    esi,DWORD PTR [esp+0x64]
.org 0x18b5
L_120028b5:
    mov    DWORD PTR [esp+0x8],ebp
.org 0x18b9
L_120028b9:
    mov    ebp,DWORD PTR [esp+ebx*4+0x28]
.org 0x18bd
L_120028bd:
    lea    eax,[eax+eax*2]
.org 0x18c0
L_120028c0:
    lea    edi,[eax*8+0x0]
.org 0x18c7
L_120028c7:
    mov    eax,DWORD PTR [edi+0x12007068]
.org 0x18cd
L_120028cd:
    test   ebp,ebp
.org 0x18cf
L_120028cf:
    # je     120029ea
    .byte 0xf,0x84
    .long L_120029ea - . - 4
.org 0x18d5
L_120028d5:
    cmp    BYTE PTR [esi+0x41],0x0
.org 0x18d9
L_120028d9:
    # je     120029ea
    .byte 0xf,0x84
    .long L_120029ea - . - 4
.org 0x18df
L_120028df:
    test   eax,eax
.org 0x18e1
L_120028e1:
    # je     120028ef
    .byte 0x74
    .byte L_120028ef - . - 1
.org 0x18e3
L_120028e3:
    cmp    DWORD PTR [edi+0x12007070],ebp
.org 0x18e9
L_120028e9:
    # je     12002a0d
    .byte 0xf,0x84
    .long L_12002a0d - . - 4
.org 0x18ef
L_120028ef:
    mov    DWORD PTR [esp+0x1c],0x0
.org 0x18f7
L_120028f7:
    sub    esp,0x8
.org 0x18fa
L_120028fa:
    mov    DWORD PTR [esp+0x38],0x0
.org 0x1902
L_12002902:
    lea    eax,[esp+0x24]
.org 0x1906
L_12002906:
    push   eax
.org 0x1907
L_12002907:
    lea    eax,[ebp-0x1]
.org 0x190a
L_1200290a:
    push   eax
.org 0x190b
L_1200290b:
    # call   12001600
    .byte 0xe8
    .long L_12001600 - . - 4
.org 0x1910
L_12002910:
    mov    edx,DWORD PTR [esp+0x2c]
.org 0x1914
L_12002914:
    add    esp,0x10
.org 0x1917
L_12002917:
    lea    eax,[esp+0x30]
.org 0x191b
L_1200291b:
    mov    DWORD PTR [esp+0x4],eax
.org 0x191f
L_1200291f:
    test   edx,edx
.org 0x1921
L_12002921:
    # je     12002942
    .byte 0x74
    .byte L_12002942 - . - 1
.org 0x1923
L_12002923:
    mov    eax,ds:0x12009894
.org 0x1928
L_12002928:
    lea    ecx,[eax+0x2aceb4]
.org 0x192e
L_1200292e:
    add    eax,0x2ace98
.org 0x1933
L_12002933:
    push   ecx
.org 0x1934
L_12002934:
    push   edx
.org 0x1935
L_12002935:
    push   eax
.org 0x1936
L_12002936:
    push   DWORD PTR [esp+0x10]
.org 0x193a
L_1200293a:
    # call   12001610
    .byte 0xe8
    .long L_12001610 - . - 4
.org 0x193f
L_1200293f:
    add    esp,0x10
.org 0x1942
L_12002942:
    mov    edx,DWORD PTR [esp+0x30]
.org 0x1946
L_12002946:
    mov    eax,DWORD PTR [edi+0x12007068]
.org 0x194c
L_1200294c:
    test   edx,edx
.org 0x194e
L_1200294e:
    # je     12002ae8
    .byte 0xf,0x84
    .long L_12002ae8 - . - 4
.org 0x1954
L_12002954:
    test   eax,eax
.org 0x1956
L_12002956:
    # je     12002abe
    .byte 0xf,0x84
    .long L_12002abe - . - 4
.org 0x195c
L_1200295c:
    sub    esp,0x8
.org 0x195f
L_1200295f:
    push   edx
.org 0x1960
L_12002960:
    push   eax
.org 0x1961
L_12002961:
    # call   12001660
    .byte 0xe8
    .long L_12001660 - . - 4
.org 0x1966
L_12002966:
    pop    ecx
.org 0x1967
L_12002967:
    pop    eax
.org 0x1968
L_12002968:
    push   0x1
.org 0x196a
L_1200296a:
    push   DWORD PTR [edi+0x12007068]
.org 0x1970
L_12002970:
    # call   12001680
    .byte 0xe8
    .long L_12001680 - . - 4
.org 0x1975
L_12002975:
    pop    eax
.org 0x1976
L_12002976:
    push   DWORD PTR [edi+0x12007068]
.org 0x197c
L_1200297c:
    # call   120016e0
    .byte 0xe8
    .long L_120016e0 - . - 4
.org 0x1981
L_12002981:
    pop    eax
.org 0x1982
L_12002982:
    pop    edx
.org 0x1983
L_12002983:
    push   0x4
.org 0x1985
L_12002985:
    push   DWORD PTR [edi+0x12007068]
.org 0x198b
L_1200298b:
    # call   120016f0
    .byte 0xe8
    .long L_120016f0 - . - 4
.org 0x1990
L_12002990:
    pop    ecx
.org 0x1991
L_12002991:
    pop    eax
.org 0x1992
L_12002992:
    push   0x4
.org 0x1994
L_12002994:
    push   DWORD PTR [edi+0x12007068]
.org 0x199a
L_1200299a:
    # call   12001710
    .byte 0xe8
    .long L_12001710 - . - 4
.org 0x199f
L_1200299f:
    mov    DWORD PTR [edi+0x12007070],ebp
.org 0x19a5
L_120029a5:
    add    esp,0x10
.org 0x19a8
L_120029a8:
    sub    esp,0xc
.org 0x19ab
L_120029ab:
    push   DWORD PTR [esp+0x10]
.org 0x19af
L_120029af:
    # call   12001630
    .byte 0xe8
    .long L_12001630 - . - 4
.org 0x19b4
L_120029b4:
    pop    eax
.org 0x19b5
L_120029b5:
    lea    eax,[esp+0x28]
.org 0x19b9
L_120029b9:
    push   eax
.org 0x19ba
L_120029ba:
    # call   12001630
    .byte 0xe8
    .long L_12001630 - . - 4
.org 0x19bf
L_120029bf:
    mov    edx,DWORD PTR [edi+0x12007068]
.org 0x19c5
L_120029c5:
    add    esp,0x10
.org 0x19c8
L_120029c8:
    test   edx,edx
.org 0x19ca
L_120029ca:
    # jne    12002a15
    .byte 0x75
    .byte L_12002a15 - . - 1
.org 0x19cc
L_120029cc:
    add    edi,0x4
.org 0x19cf
L_120029cf:
    test   ebx,ebx
.org 0x19d1
L_120029d1:
    # jne    12002a03
    .byte 0x75
    .byte L_12002a03 - . - 1
.org 0x19d3
L_120029d3:
    mov    ebx,0x1
.org 0x19d8
L_120029d8:
    mov    eax,DWORD PTR [edi+0x12007068]
.org 0x19de
L_120029de:
    mov    ebp,DWORD PTR [esp+ebx*4+0x28]
.org 0x19e2
L_120029e2:
    test   ebp,ebp
.org 0x19e4
L_120029e4:
    # jne    120028d5
    .byte 0xf,0x85
    .long L_120028d5 - . - 4
.org 0x19ea
L_120029ea:
    test   eax,eax
.org 0x19ec
L_120029ec:
    # je     120029cc
    .byte 0x74
    .byte L_120029cc - . - 1
.org 0x19ee
L_120029ee:
    sub    esp,0x8
.org 0x19f1
L_120029f1:
    add    edi,0x4
.org 0x19f4
L_120029f4:
    push   0x0
.org 0x19f6
L_120029f6:
    push   eax
.org 0x19f7
L_120029f7:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x19fc
L_120029fc:
    add    esp,0x10
.org 0x19ff
L_120029ff:
    test   ebx,ebx
.org 0x1a01
L_12002a01:
    # je     120029d3
    .byte 0x74
    .byte L_120029d3 - . - 1
.org 0x1a03
L_12002a03:
    add    esp,0x4c
.org 0x1a06
L_12002a06:
    mov    eax,ebx
.org 0x1a08
L_12002a08:
    pop    ebx
.org 0x1a09
L_12002a09:
    pop    esi
.org 0x1a0a
L_12002a0a:
    pop    edi
.org 0x1a0b
L_12002a0b:
    pop    ebp
.org 0x1a0c
L_12002a0c:
    ret
.org 0x1a0d
L_12002a0d:
    lea    eax,[esp+0x30]
.org 0x1a11
L_12002a11:
    mov    DWORD PTR [esp+0x4],eax
.org 0x1a15
L_12002a15:
    mov    eax,ebx
.org 0x1a17
L_12002a17:
    sub    esp,0xc
.org 0x1a1a
L_12002a1a:
    mov    ebp,DWORD PTR [esi+0x20]
.org 0x1a1d
L_12002a1d:
    neg    eax
.org 0x1a1f
L_12002a1f:
    and    eax,0x28
.org 0x1a22
L_12002a22:
    add    eax,0x5
.org 0x1a25
L_12002a25:
    push   eax
.org 0x1a26
L_12002a26:
    # call   12001750
    .byte 0xe8
    .long L_12001750 - . - 4
.org 0x1a2b
L_12002a2b:
    add    ebp,eax
.org 0x1a2d
L_12002a2d:
    mov    DWORD PTR [esp+0x40],ebp
.org 0x1a31
L_12002a31:
    mov    ebp,DWORD PTR [esi+0x24]
.org 0x1a34
L_12002a34:
    mov    DWORD PTR [esp],0x2d
.org 0x1a3b
L_12002a3b:
    # call   12001750
    .byte 0xe8
    .long L_12001750 - . - 4
.org 0x1a40
L_12002a40:
    mov    DWORD PTR [esp+0x48],0x0
.org 0x1a48
L_12002a48:
    add    ebp,eax
.org 0x1a4a
L_12002a4a:
    mov    DWORD PTR [esp+0x4c],0x0
.org 0x1a52
L_12002a52:
    mov    DWORD PTR [esp+0x44],ebp
.org 0x1a56
L_12002a56:
    pop    eax
.org 0x1a57
L_12002a57:
    pop    edx
.org 0x1a58
L_12002a58:
    mov    ebp,DWORD PTR [esp+0xc]
.org 0x1a5c
L_12002a5c:
    push   ebp
.org 0x1a5d
L_12002a5d:
    push   DWORD PTR [edi+0x12007068]
.org 0x1a63
L_12002a63:
    # call   120016a0
    .byte 0xe8
    .long L_120016a0 - . - 4
.org 0x1a68
L_12002a68:
    pop    ecx
.org 0x1a69
L_12002a69:
    pop    eax
.org 0x1a6a
L_12002a6a:
    push   ebp
.org 0x1a6b
L_12002a6b:
    push   DWORD PTR [edi+0x12007068]
.org 0x1a71
L_12002a71:
    # call   120016b0
    .byte 0xe8
    .long L_120016b0 - . - 4
.org 0x1a76
L_12002a76:
    pop    eax
.org 0x1a77
L_12002a77:
    pop    edx
.org 0x1a78
L_12002a78:
    push   ebp
.org 0x1a79
L_12002a79:
    push   DWORD PTR [edi+0x12007068]
.org 0x1a7f
L_12002a7f:
    # call   120016d0
    .byte 0xe8
    .long L_120016d0 - . - 4
.org 0x1a84
L_12002a84:
    pop    ecx
.org 0x1a85
L_12002a85:
    pop    ebp
.org 0x1a86
L_12002a86:
    push   0x1
.org 0x1a88
L_12002a88:
    push   DWORD PTR [edi+0x12007068]
.org 0x1a8e
L_12002a8e:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x1a93
L_12002a93:
    add    esp,0x10
.org 0x1a96
L_12002a96:
    # jmp    120029cc
    .byte 0xe9
    .long L_120029cc - . - 4
.org 0x1a9b
L_12002a9b:
    test   eax,eax
.org 0x1a9d
L_12002a9d:
    # js     120027b3
    .byte 0xf,0x88
    .long L_120027b3 - . - 4
.org 0x1aa3
L_12002aa3:
    lea    edx,[eax+eax*2]
.org 0x1aa6
L_12002aa6:
    mov    DWORD PTR [esp+0x4],eax
.org 0x1aaa
L_12002aaa:
    shl    edx,0x3
.org 0x1aad
L_12002aad:
    mov    DWORD PTR [edx+0x12007060],esi
.org 0x1ab3
L_12002ab3:
    mov    DWORD PTR [edx+0x12007064],ebp
.org 0x1ab9
L_12002ab9:
    # jmp    120027fe
    .byte 0xe9
    .long L_120027fe - . - 4
.org 0x1abe
L_12002abe:
    sub    esp,0xc
.org 0x1ac1
L_12002ac1:
    push   DWORD PTR [esp+0x14]
.org 0x1ac5
L_12002ac5:
    # call   12001640
    .byte 0xe8
    .long L_12001640 - . - 4
.org 0x1aca
L_12002aca:
    add    esp,0x10
.org 0x1acd
L_12002acd:
    mov    DWORD PTR [edi+0x12007068],eax
.org 0x1ad3
L_12002ad3:
    test   eax,eax
.org 0x1ad5
L_12002ad5:
    # je     120029a8
    .byte 0xf,0x84
    .long L_120029a8 - . - 4
.org 0x1adb
L_12002adb:
    mov    edx,DWORD PTR [esp+0x30]
.org 0x1adf
L_12002adf:
    # jmp    1200295c
    .byte 0xe9
    .long L_1200295c - . - 4
.org 0x1ae4
L_12002ae4:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x1ae8
L_12002ae8:
    test   eax,eax
.org 0x1aea
L_12002aea:
    # je     12002afa
    .byte 0x74
    .byte L_12002afa - . - 1
.org 0x1aec
L_12002aec:
    sub    esp,0x8
.org 0x1aef
L_12002aef:
    push   0x0
.org 0x1af1
L_12002af1:
    push   eax
.org 0x1af2
L_12002af2:
    # call   12001730
    .byte 0xe8
    .long L_12001730 - . - 4
.org 0x1af7
L_12002af7:
    add    esp,0x10
.org 0x1afa
L_12002afa:
    sub    esp,0xc
.org 0x1afd
L_12002afd:
    push   DWORD PTR [esp+0x10]
.org 0x1b01
L_12002b01:
    # call   12001630
    .byte 0xe8
    .long L_12001630 - . - 4
.org 0x1b06
L_12002b06:
    pop    eax
.org 0x1b07
L_12002b07:
    lea    eax,[esp+0x28]
.org 0x1b0b
L_12002b0b:
    push   eax
.org 0x1b0c
L_12002b0c:
    # call   12001630
    .byte 0xe8
    .long L_12001630 - . - 4
.org 0x1b11
L_12002b11:
    add    esp,0x10
.org 0x1b14
L_12002b14:
    # jmp    120029cc
    .byte 0xe9
    .long L_120029cc - . - 4
.org 0x1b19
L_12002b19:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1b20
L_12002b20:
    # Original function: XenoPlugin_Query
    push   ebx
.org 0x1b21
L_12002b21:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x1b25
L_12002b25:
    test   edx,edx
.org 0x1b27
L_12002b27:
    # je     12002bf8
    .byte 0xf,0x84
    .long L_12002bf8 - . - 4
.org 0x1b2d
L_12002b2d:
    mov    ebx,DWORD PTR [edx]
.org 0x1b2f
L_12002b2f:
    xor    eax,eax
.org 0x1b31
L_12002b31:
    cmp    ebx,0x207
.org 0x1b37
L_12002b37:
    # ja     12002b40
    .byte 0x77
    .byte L_12002b40 - . - 1
.org 0x1b39
L_12002b39:
    pop    ebx
.org 0x1b3a
L_12002b3a:
    ret    0x4
.org 0x1b3d
L_12002b3d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x1b40
L_12002b40:
    mov    DWORD PTR [edx+0x4],0x1
.org 0x1b47
L_12002b47:
    # jmp    12002b5d
    .byte 0xeb
    .byte L_12002b5d - . - 1
.org 0x1b49
L_12002b49:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1b50
L_12002b50:
    mov    WORD PTR [edx+eax*1+0x8],cx
.org 0x1b55
L_12002b55:
    add    eax,0x2
.org 0x1b58
L_12002b58:
    cmp    eax,0x7e
.org 0x1b5b
L_12002b5b:
    # je     12002b69
    .byte 0x74
    .byte L_12002b69 - . - 1
.org 0x1b5d
L_12002b5d:
    movzx  ecx,WORD PTR [eax+0x1200610c]
.org 0x1b64
L_12002b64:
    test   cx,cx
.org 0x1b67
L_12002b67:
    # jne    12002b50
    .byte 0x75
    .byte L_12002b50 - . - 1
.org 0x1b69
L_12002b69:
    xor    ecx,ecx
.org 0x1b6b
L_12002b6b:
    mov    WORD PTR [edx+eax*1+0x8],cx
.org 0x1b70
L_12002b70:
    xor    eax,eax
.org 0x1b72
L_12002b72:
    # jmp    12002b88
    .byte 0xeb
    .byte L_12002b88 - . - 1
.org 0x1b74
L_12002b74:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x1b78
L_12002b78:
    mov    WORD PTR [edx+eax*1+0x88],cx
.org 0x1b80
L_12002b80:
    add    eax,0x2
.org 0x1b83
L_12002b83:
    cmp    eax,0x3e
.org 0x1b86
L_12002b86:
    # je     12002b94
    .byte 0x74
    .byte L_12002b94 - . - 1
.org 0x1b88
L_12002b88:
    movzx  ecx,WORD PTR [eax+0x120060fc]
.org 0x1b8f
L_12002b8f:
    test   cx,cx
.org 0x1b92
L_12002b92:
    # jne    12002b78
    .byte 0x75
    .byte L_12002b78 - . - 1
.org 0x1b94
L_12002b94:
    xor    ecx,ecx
.org 0x1b96
L_12002b96:
    mov    WORD PTR [edx+eax*1+0x88],cx
.org 0x1b9e
L_12002b9e:
    xor    eax,eax
.org 0x1ba0
L_12002ba0:
    # jmp    12002bba
    .byte 0xeb
    .byte L_12002bba - . - 1
.org 0x1ba2
L_12002ba2:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x1ba8
L_12002ba8:
    mov    WORD PTR [edx+eax*1+0xc8],cx
.org 0x1bb0
L_12002bb0:
    add    eax,0x2
.org 0x1bb3
L_12002bb3:
    cmp    eax,0x13e
.org 0x1bb8
L_12002bb8:
    # je     12002bc6
    .byte 0x74
    .byte L_12002bc6 - . - 1
.org 0x1bba
L_12002bba:
    movzx  ecx,WORD PTR [eax+0x120060e0]
.org 0x1bc1
L_12002bc1:
    test   cx,cx
.org 0x1bc4
L_12002bc4:
    # jne    12002ba8
    .byte 0x75
    .byte L_12002ba8 - . - 1
.org 0x1bc6
L_12002bc6:
    xor    ecx,ecx
.org 0x1bc8
L_12002bc8:
    mov    WORD PTR [edx+eax*1+0xc8],cx
.org 0x1bd0
L_12002bd0:
    cmp    ebx,0x20f
.org 0x1bd6
L_12002bd6:
    # jbe    12002bec
    .byte 0x76
    .byte L_12002bec - . - 1
.org 0x1bd8
L_12002bd8:
    mov    DWORD PTR [edx+0x20c],0x0
.org 0x1be2
L_12002be2:
    mov    DWORD PTR [edx+0x208],0x0
.org 0x1bec
L_12002bec:
    mov    eax,0x1
.org 0x1bf1
L_12002bf1:
    pop    ebx
.org 0x1bf2
L_12002bf2:
    ret    0x4
.org 0x1bf5
L_12002bf5:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x1bf8
L_12002bf8:
    xor    eax,eax
.org 0x1bfa
L_12002bfa:
    pop    ebx
.org 0x1bfb
L_12002bfb:
    ret    0x4
.org 0x1bfe
L_12002bfe:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x1c00
L_12002c00:
    # Original function: XenoPlugin_Initialize
    push   ebp
.org 0x1c01
L_12002c01:
    mov    edx,0x1
.org 0x1c06
L_12002c06:
    push   edi
.org 0x1c07
L_12002c07:
    push   esi
.org 0x1c08
L_12002c08:
    push   ebx
.org 0x1c09
L_12002c09:
    sub    esp,0x16c
.org 0x1c0f
L_12002c0f:
    mov    eax,DWORD PTR [esp+0x180]
.org 0x1c16
L_12002c16:
    test   eax,eax
.org 0x1c18
L_12002c18:
    # je     12002d45
    .byte 0xf,0x84
    .long L_12002d45 - . - 4
.org 0x1c1e
L_12002c1e:
    cmp    DWORD PTR [eax],0x1f
.org 0x1c21
L_12002c21:
    # jbe    12002d45
    .byte 0xf,0x86
    .long L_12002d45 - . - 4
.org 0x1c27
L_12002c27:
    cmp    DWORD PTR [eax+0x4],0x1
.org 0x1c2b
L_12002c2b:
    # jne    12002d45
    .byte 0xf,0x85
    .long L_12002d45 - . - 4
.org 0x1c31
L_12002c31:
    mov    edx,DWORD PTR [eax+0x8]
.org 0x1c34
L_12002c34:
    mov    eax,DWORD PTR [eax+0x1c]
.org 0x1c37
L_12002c37:
    mov    DWORD PTR [0x12009894],edx
.org 0x1c3d
L_12002c3d:
    mov    ds:0x1200988c,eax
.org 0x1c42
L_12002c42:
    test   edx,edx
.org 0x1c44
L_12002c44:
    # je     12002d40
    .byte 0xf,0x84
    .long L_12002d40 - . - 4
.org 0x1c4a
L_12002c4a:
    cmp    WORD PTR [edx],0x5a4d
.org 0x1c4f
L_12002c4f:
    # jne    12002d40
    .byte 0xf,0x85
    .long L_12002d40 - . - 4
.org 0x1c55
L_12002c55:
    add    edx,DWORD PTR [edx+0x3c]
.org 0x1c58
L_12002c58:
    cmp    DWORD PTR [edx],0x4550
.org 0x1c5e
L_12002c5e:
    # jne    12002d40
    .byte 0xf,0x85
    .long L_12002d40 - . - 4
.org 0x1c64
L_12002c64:
    cmp    WORD PTR [edx+0x18],0x10b
.org 0x1c6a
L_12002c6a:
    # jne    12002d40
    .byte 0xf,0x85
    .long L_12002d40 - . - 4
.org 0x1c70
L_12002c70:
    mov    eax,DWORD PTR [edx+0x50]
.org 0x1c73
L_12002c73:
    mov    ds:0x12009890,eax
.org 0x1c78
L_12002c78:
    cmp    eax,0x4826b8
.org 0x1c7d
L_12002c7d:
    # jbe    12002d40
    .byte 0xf,0x86
    .long L_12002d40 - . - 4
.org 0x1c83
L_12002c83:
    # call   12001380
    .byte 0xe8
    .long L_12001380 - . - 4
.org 0x1c88
L_12002c88:
    mov    esi,eax
.org 0x1c8a
L_12002c8a:
    test   eax,eax
.org 0x1c8c
L_12002c8c:
    # je     12002d70
    .byte 0xf,0x84
    .long L_12002d70 - . - 4
.org 0x1c92
L_12002c92:
    mov    esi,DWORD PTR [eax+0xc]
.org 0x1c95
L_12002c95:
    test   esi,esi
.org 0x1c97
L_12002c97:
    # je     12002d70
    .byte 0xf,0x84
    .long L_12002d70 - . - 4
.org 0x1c9d
L_12002c9d:
    mov    ebx,DWORD PTR [esi+0x14]
.org 0x1ca0
L_12002ca0:
    lea    eax,[esi+0x14]
.org 0x1ca3
L_12002ca3:
    test   ebx,ebx
.org 0x1ca5
L_12002ca5:
    # je     12003220
    .byte 0xf,0x84
    .long L_12003220 - . - 4
.org 0x1cab
L_12002cab:
    cmp    eax,ebx
.org 0x1cad
L_12002cad:
    # je     12003220
    .byte 0xf,0x84
    .long L_12003220 - . - 4
.org 0x1cb3
L_12002cb3:
    xor    edi,edi
.org 0x1cb5
L_12002cb5:
    # jmp    12002ce0
    .byte 0xeb
    .byte L_12002ce0 - . - 1
.org 0x1cb7
L_12002cb7:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1cbf
L_12002cbf:
    # Alignment padding: nop
    .byte 0x90
.org 0x1cc0
L_12002cc0:
    mov    ebx,DWORD PTR [ebx]
.org 0x1cc2
L_12002cc2:
    add    edi,0x1
.org 0x1cc5
L_12002cc5:
    test   ebx,ebx
.org 0x1cc7
L_12002cc7:
    setne  cl
.org 0x1cca
L_12002cca:
    cmp    eax,ebx
.org 0x1ccc
L_12002ccc:
    setne  dl
.org 0x1ccf
L_12002ccf:
    test   cl,dl
.org 0x1cd1
L_12002cd1:
    # je     12003220
    .byte 0xf,0x84
    .long L_12003220 - . - 4
.org 0x1cd7
L_12002cd7:
    cmp    edi,0x20
.org 0x1cda
L_12002cda:
    # je     12003220
    .byte 0xf,0x84
    .long L_12003220 - . - 4
.org 0x1ce0
L_12002ce0:
    mov    esi,DWORD PTR [ebx+0x10]
.org 0x1ce3
L_12002ce3:
    mov    ebp,DWORD PTR [ebx+0x28]
.org 0x1ce6
L_12002ce6:
    test   esi,esi
.org 0x1ce8
L_12002ce8:
    # je     12002cc0
    .byte 0x74
    .byte L_12002cc0 - . - 1
.org 0x1cea
L_12002cea:
    test   ebp,ebp
.org 0x1cec
L_12002cec:
    # je     12002cc0
    .byte 0x74
    .byte L_12002cc0 - . - 1
.org 0x1cee
L_12002cee:
    mov    DWORD PTR [esp+0x14],esi
.org 0x1cf2
L_12002cf2:
    mov    edx,0x6e
.org 0x1cf7
L_12002cf7:
    xor    ecx,ecx
.org 0x1cf9
L_12002cf9:
    mov    DWORD PTR [esp+0xc],eax
.org 0x1cfd
L_12002cfd:
    mov    DWORD PTR [esp+0x10],ebx
.org 0x1d01
L_12002d01:
    # jmp    12002d16
    .byte 0xeb
    .byte L_12002d16 - . - 1
.org 0x1d03
L_12002d03:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x1d08
L_12002d08:
    movzx  edx,BYTE PTR [ecx+0x12006001]
.org 0x1d0f
L_12002d0f:
    add    ecx,0x1
.org 0x1d12
L_12002d12:
    test   dl,dl
.org 0x1d14
L_12002d14:
    # je     12002d58
    .byte 0x74
    .byte L_12002d58 - . - 1
.org 0x1d16
L_12002d16:
    movzx  eax,WORD PTR [ebp+ecx*2+0x0]
.org 0x1d1b
L_12002d1b:
    lea    esi,[eax-0x41]
.org 0x1d1e
L_12002d1e:
    lea    ebx,[eax+0x20]
.org 0x1d21
L_12002d21:
    cmp    si,0x1a
.org 0x1d25
L_12002d25:
    cmovb  eax,ebx
.org 0x1d28
L_12002d28:
    cmp    dx,ax
.org 0x1d2b
L_12002d2b:
    # je     12002d08
    .byte 0x74
    .byte L_12002d08 - . - 1
.org 0x1d2d
L_12002d2d:
    mov    eax,DWORD PTR [esp+0xc]
.org 0x1d31
L_12002d31:
    mov    ebx,DWORD PTR [esp+0x10]
.org 0x1d35
L_12002d35:
    # jmp    12002cc0
    .byte 0xeb
    .byte L_12002cc0 - . - 1
.org 0x1d37
L_12002d37:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1d3f
L_12002d3f:
    # Alignment padding: nop
    .byte 0x90
.org 0x1d40
L_12002d40:
    mov    edx,0x2
.org 0x1d45
L_12002d45:
    add    esp,0x16c
.org 0x1d4b
L_12002d4b:
    mov    eax,edx
.org 0x1d4d
L_12002d4d:
    pop    ebx
.org 0x1d4e
L_12002d4e:
    pop    esi
.org 0x1d4f
L_12002d4f:
    pop    edi
.org 0x1d50
L_12002d50:
    pop    ebp
.org 0x1d51
L_12002d51:
    ret    0x4
.org 0x1d54
L_12002d54:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x1d58
L_12002d58:
    cmp    WORD PTR [ebp+ecx*2+0x0],0x0
.org 0x1d5e
L_12002d5e:
    mov    esi,DWORD PTR [esp+0x14]
.org 0x1d62
L_12002d62:
    mov    eax,DWORD PTR [esp+0xc]
.org 0x1d66
L_12002d66:
    mov    ebx,DWORD PTR [esp+0x10]
.org 0x1d6a
L_12002d6a:
    # jne    12002cc0
    .byte 0xf,0x85
    .long L_12002cc0 - . - 4
.org 0x1d70
L_12002d70:
    mov    edx,0x12004132
.org 0x1d75
L_12002d75:
    mov    eax,esi
.org 0x1d77
L_12002d77:
    # call   12001390
    .byte 0xe8
    .long L_12001390 - . - 4
.org 0x1d7c
L_12002d7c:
    mov    edx,0x12004149
.org 0x1d81
L_12002d81:
    mov    ds:0x12009888,eax
.org 0x1d86
L_12002d86:
    mov    ebx,eax
.org 0x1d88
L_12002d88:
    mov    eax,esi
.org 0x1d8a
L_12002d8a:
    # call   12001390
    .byte 0xe8
    .long L_12001390 - . - 4
.org 0x1d8f
L_12002d8f:
    mov    ds:0x12009884,eax
.org 0x1d94
L_12002d94:
    test   ebx,ebx
.org 0x1d96
L_12002d96:
    # je     1200326f
    .byte 0xf,0x84
    .long L_1200326f - . - 4
.org 0x1d9c
L_12002d9c:
    test   eax,eax
.org 0x1d9e
L_12002d9e:
    # je     1200326f
    .byte 0xf,0x84
    .long L_1200326f - . - 4
.org 0x1da4
L_12002da4:
    mov    DWORD PTR [esp+0x30],0x11ff1b
.org 0x1dac
L_12002dac:
    mov    ebp,0x2accc7
.org 0x1db1
L_12002db1:
    xor    esi,esi
.org 0x1db3
L_12002db3:
    mov    ebx,DWORD PTR [0x12009894]
.org 0x1db9
L_12002db9:
    mov    DWORD PTR [esp+0x99],0x882d90a1
.org 0x1dc4
L_12002dc4:
    lea    eax,[ebx+0x34acbc]
.org 0x1dca
L_12002dca:
    mov    DWORD PTR [esp+0x34],0x1201ee
.org 0x1dd2
L_12002dd2:
    mov    ds:0x12007028,eax
.org 0x1dd7
L_12002dd7:
    lea    eax,[ebx+0x5ffc]
.org 0x1ddd
L_12002ddd:
    mov    ds:0x12007024,eax
.org 0x1de2
L_12002de2:
    lea    eax,[ebx+0x5d18]
.org 0x1de8
L_12002de8:
    mov    ds:0x12007020,eax
.org 0x1ded
L_12002ded:
    mov    eax,DWORD PTR [ebx+0x8998c]
.org 0x1df3
L_12002df3:
    mov    DWORD PTR [esp+0x38],0x2dc1bc
.org 0x1dfb
L_12002dfb:
    mov    ds:0x1200701c,eax
.org 0x1e00
L_12002e00:
    lea    eax,[ebx+0x89abc]
.org 0x1e06
L_12002e06:
    mov    ds:0x12007018,eax
.org 0x1e0b
L_12002e0b:
    lea    eax,[ebx+0x89b4c]
.org 0x1e11
L_12002e11:
    mov    ds:0x12007014,eax
.org 0x1e16
L_12002e16:
    lea    eax,[ebx+0xc9d9c]
.org 0x1e1c
L_12002e1c:
    mov    ds:0x12007010,eax
.org 0x1e21
L_12002e21:
    lea    eax,[ebx+0x8a380]
.org 0x1e27
L_12002e27:
    mov    ds:0x1200700c,eax
.org 0x1e2c
L_12002e2c:
    lea    eax,[ebx+0x8a470]
.org 0x1e32
L_12002e32:
    mov    ds:0x12007008,eax
.org 0x1e37
L_12002e37:
    lea    eax,[ebx+0x8a228]
.org 0x1e3d
L_12002e3d:
    mov    ds:0x12007004,eax
.org 0x1e42
L_12002e42:
    lea    eax,[ebx+0xc6958]
.org 0x1e48
L_12002e48:
    mov    ds:0x12007000,eax
.org 0x1e4d
L_12002e4d:
    lea    eax,[ebx+0x30e5e0]
.org 0x1e53
L_12002e53:
    mov    ds:0x12007030,eax
.org 0x1e58
L_12002e58:
    lea    eax,[ebx+0x47bbd8]
.org 0x1e5e
L_12002e5e:
    mov    DWORD PTR [esp+0x3c],0x2dc464
.org 0x1e66
L_12002e66:
    mov    DWORD PTR [esp+0x7d],0xffe845ff
.org 0x1e6e
L_12002e6e:
    mov    DWORD PTR [esp+0x81],0xc700c84d
.org 0x1e79
L_12002e79:
    mov    DWORD PTR [esp+0x85],0x6d445
.org 0x1e84
L_12002e84:
    mov    DWORD PTR [esp+0x89],0x45c70000
.org 0x1e8f
L_12002e8f:
    mov    DWORD PTR [esp+0x8d],0xbd4
.org 0x1e9a
L_12002e9a:
    mov    DWORD PTR [esp+0x91],0x89c03300
.org 0x1ea5
L_12002ea5:
    mov    DWORD PTR [esp+0x95],0xf845
.org 0x1eb0
L_12002eb0:
    mov    DWORD PTR [esp+0x9c],0x88
.org 0x1ebb
L_12002ebb:
    mov    DWORD PTR [esp+0x40],0x6
.org 0x1ec3
L_12002ec3:
    mov    DWORD PTR [esp+0x44],0x7
.org 0x1ecb
L_12002ecb:
    mov    DWORD PTR [esp+0x48],0x7
.org 0x1ed3
L_12002ed3:
    mov    DWORD PTR [esp+0x4c],0x5
.org 0x1edb
L_12002edb:
    mov    DWORD PTR [esp+0x50],0x5
.org 0x1ee3
L_12002ee3:
    mov    ds:0x1200702c,eax
.org 0x1ee8
L_12002ee8:
    lea    eax,[esp+0x7d]
.org 0x1eec
L_12002eec:
    mov    DWORD PTR [0x12007044],0x12001760
.org 0x1ef6
L_12002ef6:
    mov    DWORD PTR [0x12007040],0x120017c0
.org 0x1f00
L_12002f00:
    mov    DWORD PTR [0x1200703c],0x12001810
.org 0x1f0a
L_12002f0a:
    mov    DWORD PTR [0x12007038],0x12001860
.org 0x1f14
L_12002f14:
    mov    DWORD PTR [0x12007034],0x120018a0
.org 0x1f1e
L_12002f1e:
    mov    DWORD PTR [esp+0x54],0x12001760
.org 0x1f26
L_12002f26:
    mov    DWORD PTR [esp+0x58],0x120017c0
.org 0x1f2e
L_12002f2e:
    mov    DWORD PTR [esp+0x5c],0x12001810
.org 0x1f36
L_12002f36:
    mov    DWORD PTR [esp+0x60],0x12001860
.org 0x1f3e
L_12002f3e:
    mov    DWORD PTR [esp+0x64],0x120018a0
.org 0x1f46
L_12002f46:
    mov    DWORD PTR [esp+0x68],0x12001770
.org 0x1f4e
L_12002f4e:
    mov    DWORD PTR [esp+0x6c],0x120017d0
.org 0x1f56
L_12002f56:
    mov    DWORD PTR [esp+0x70],0x12001820
.org 0x1f5e
L_12002f5e:
    mov    DWORD PTR [esp+0x74],0x12001870
.org 0x1f66
L_12002f66:
    mov    DWORD PTR [esp+0x78],0x120018b0
.org 0x1f6e
L_12002f6e:
    mov    DWORD PTR [esp+0xc],eax
.org 0x1f72
L_12002f72:
    mov    DWORD PTR [esp+0x10],0x0
.org 0x1f7a
L_12002f7a:
    mov    DWORD PTR [esp+0x1c],0x0
.org 0x1f82
L_12002f82:
    mov    DWORD PTR [esp+0x18],0x0
.org 0x1f8a
L_12002f8a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x1f90
L_12002f90:
    mov    edi,DWORD PTR [esp+esi*4+0x40]
.org 0x1f94
L_12002f94:
    add    ebx,ebp
.org 0x1f96
L_12002f96:
    lea    eax,[edi+ebp*1]
.org 0x1f99
L_12002f99:
    cmp    eax,DWORD PTR [0x12009890]
.org 0x1f9f
L_12002f9f:
    # jae    12003020
    .byte 0x73
    .byte L_12003020 - . - 1
.org 0x1fa1
L_12002fa1:
    lea    ecx,[edi+ebx*1]
.org 0x1fa4
L_12002fa4:
    test   edi,edi
.org 0x1fa6
L_12002fa6:
    # jle    12003044
    .byte 0xf,0x8e
    .long L_12003044 - . - 4
.org 0x1fac
L_12002fac:
    mov    DWORD PTR [esp+0x14],ebx
.org 0x1fb0
L_12002fb0:
    mov    edx,DWORD PTR [esp+0xc]
.org 0x1fb4
L_12002fb4:
    mov    eax,ebx
.org 0x1fb6
L_12002fb6:
    lea    ecx,[edi+ebx*1]
.org 0x1fb9
L_12002fb9:
    # jmp    12002fca
    .byte 0xeb
    .byte L_12002fca - . - 1
.org 0x1fbb
L_12002fbb:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x1fc0
L_12002fc0:
    add    eax,0x1
.org 0x1fc3
L_12002fc3:
    add    edx,0x1
.org 0x1fc6
L_12002fc6:
    cmp    eax,ecx
.org 0x1fc8
L_12002fc8:
    # je     12003040
    .byte 0x74
    .byte L_12003040 - . - 1
.org 0x1fca
L_12002fca:
    movzx  ebx,BYTE PTR [edx]
.org 0x1fcd
L_12002fcd:
    cmp    BYTE PTR [eax],bl
.org 0x1fcf
L_12002fcf:
    # je     12002fc0
    .byte 0x74
    .byte L_12002fc0 - . - 1
.org 0x1fd1
L_12002fd1:
    mov    ebx,DWORD PTR [esp+0x14]
.org 0x1fd5
L_12002fd5:
    mov    eax,DWORD PTR [esp+esi*4+0x68]
.org 0x1fd9
L_12002fd9:
    cmp    BYTE PTR [ebx],0xe9
.org 0x1fdc
L_12002fdc:
    # je     12003098
    .byte 0xf,0x84
    .long L_12003098 - . - 4
.org 0x1fe2
L_12002fe2:
    add    DWORD PTR [esp+0x10],0x1
.org 0x1fe7
L_12002fe7:
    mov    eax,0x1200411f
.org 0x1fec
L_12002fec:
    sub    esp,0xc
.org 0x1fef
L_12002fef:
    mov    ecx,ebx
.org 0x1ff1
L_12002ff1:
    mov    edx,ebp
.org 0x1ff3
L_12002ff3:
    push   edi
.org 0x1ff4
L_12002ff4:
    # call   12001130
    .byte 0xe8
    .long L_12001130 - . - 4
.org 0x1ff9
L_12002ff9:
    add    esp,0x10
.org 0x1ffc
L_12002ffc:
    add    esi,0x1
.org 0x1fff
L_12002fff:
    add    DWORD PTR [esp+0xc],0x7
.org 0x2004
L_12003004:
    cmp    esi,0x5
.org 0x2007
L_12003007:
    # je     120030c0
    .byte 0xf,0x84
    .long L_120030c0 - . - 4
.org 0x200d
L_1200300d:
    mov    ebp,DWORD PTR [esp+esi*4+0x2c]
.org 0x2011
L_12003011:
    mov    ebx,DWORD PTR [0x12009894]
.org 0x2017
L_12003017:
    # jmp    12002f90
    .byte 0xe9
    .long L_12002f90 - . - 4
.org 0x201c
L_1200301c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x2020
L_12003020:
    add    DWORD PTR [esp+0x10],0x1
.org 0x2025
L_12003025:
    sub    esp,0xc
.org 0x2028
L_12003028:
    mov    ecx,ebx
.org 0x202a
L_1200302a:
    mov    edx,ebp
.org 0x202c
L_1200302c:
    push   0x0
.org 0x202e
L_1200302e:
    mov    eax,0x12004161
.org 0x2033
L_12003033:
    # call   12001130
    .byte 0xe8
    .long L_12001130 - . - 4
.org 0x2038
L_12003038:
    add    esp,0x10
.org 0x203b
L_1200303b:
    # jmp    12002ffc
    .byte 0xeb
    .byte L_12002ffc - . - 1
.org 0x203d
L_1200303d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x2040
L_12003040:
    mov    ebx,DWORD PTR [esp+0x14]
.org 0x2044
L_12003044:
    mov    eax,DWORD PTR [esp+esi*4+0x68]
.org 0x2048
L_12003048:
    mov    DWORD PTR [esp+0x14],eax
.org 0x204c
L_1200304c:
    mov    eax,DWORD PTR [esp+esi*4+0x54]
.org 0x2050
L_12003050:
    lea    edx,[eax+edi*1+0x5]
.org 0x2054
L_12003054:
    lea    eax,[eax+edi*1+0x1]
.org 0x2058
L_12003058:
    sub    ecx,edx
.org 0x205a
L_1200305a:
    lea    edx,[esp+0x28]
.org 0x205e
L_1200305e:
    mov    DWORD PTR [esp+0x28],ecx
.org 0x2062
L_12003062:
    mov    ecx,0x4
.org 0x2067
L_12003067:
    # call   12001470
    .byte 0xe8
    .long L_12001470 - . - 4
.org 0x206c
L_1200306c:
    test   eax,eax
.org 0x206e
L_1200306e:
    # jne    12003227
    .byte 0xf,0x85
    .long L_12003227 - . - 4
.org 0x2074
L_12003074:
    add    DWORD PTR [esp+0x10],0x1
.org 0x2079
L_12003079:
    sub    esp,0xc
.org 0x207c
L_1200307c:
    mov    ecx,ebx
.org 0x207e
L_1200307e:
    mov    edx,ebp
.org 0x2080
L_12003080:
    push   edi
.org 0x2081
L_12003081:
    mov    eax,0x1200416e
.org 0x2086
L_12003086:
    # call   12001130
    .byte 0xe8
    .long L_12001130 - . - 4
.org 0x208b
L_1200308b:
    add    esp,0x10
.org 0x208e
L_1200308e:
    # jmp    12002ffc
    .byte 0xe9
    .long L_12002ffc - . - 4
.org 0x2093
L_12003093:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x2098
L_12003098:
    mov    edx,DWORD PTR [ebx+0x1]
.org 0x209b
L_1200309b:
    lea    edx,[ebx+edx*1+0x5]
.org 0x209f
L_1200309f:
    cmp    eax,edx
.org 0x20a1
L_120030a1:
    # je     12003279
    .byte 0xf,0x84
    .long L_12003279 - . - 4
.org 0x20a7
L_120030a7:
    add    DWORD PTR [esp+0x10],0x1
.org 0x20ac
L_120030ac:
    mov    eax,0x12004112
.org 0x20b1
L_120030b1:
    # jmp    12002fec
    .byte 0xe9
    .long L_12002fec - . - 4
.org 0x20b6
L_120030b6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x20be
L_120030be:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x20c0
L_120030c0:
    mov    ebp,DWORD PTR [0x1200988c]
.org 0x20c6
L_120030c6:
    test   ebp,ebp
.org 0x20c8
L_120030c8:
    # je     120031e7
    .byte 0xf,0x84
    .long L_120031e7 - . - 4
.org 0x20ce
L_120030ce:
    xor    ecx,ecx
.org 0x20d0
L_120030d0:
    mov    eax,0x68
.org 0x20d5
L_120030d5:
    lea    esi,[esp+0xa0]
.org 0x20dc
L_120030dc:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x20e0
L_120030e0:
    mov    edi,ecx
.org 0x20e2
L_120030e2:
    add    ecx,0x1
.org 0x20e5
L_120030e5:
    mov    WORD PTR [esi+ecx*2-0x2],ax
.org 0x20ea
L_120030ea:
    movzx  eax,BYTE PTR [ecx+0x1200417b]
.org 0x20f1
L_120030f1:
    test   al,al
.org 0x20f3
L_120030f3:
    # jne    120030e0
    .byte 0x75
    .byte L_120030e0 - . - 1
.org 0x20f5
L_120030f5:
    mov    eax,DWORD PTR [esp+0x18]
.org 0x20f9
L_120030f9:
    mov    edx,0x66666667
.org 0x20fe
L_120030fe:
    lea    ebx,[edi+0x2]
.org 0x2101
L_12003101:
    imul   edx
.org 0x2103
L_12003103:
    mov    eax,DWORD PTR [esp+0x18]
.org 0x2107
L_12003107:
    sar    eax,0x1f
.org 0x210a
L_1200310a:
    sar    edx,0x2
.org 0x210d
L_1200310d:
    sub    edx,eax
.org 0x210f
L_1200310f:
    mov    eax,DWORD PTR [esp+0x18]
.org 0x2113
L_12003113:
    lea    edx,[edx+edx*4]
.org 0x2116
L_12003116:
    add    edx,edx
.org 0x2118
L_12003118:
    sub    eax,edx
.org 0x211a
L_1200311a:
    mov    edx,0x12004190
.org 0x211f
L_1200311f:
    add    eax,0x30
.org 0x2122
L_12003122:
    sub    edx,edi
.org 0x2124
L_12003124:
    mov    WORD PTR [esp+ecx*2+0xa0],ax
.org 0x212c
L_1200312c:
    mov    eax,0x20
.org 0x2131
L_12003131:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x2138
L_12003138:
    mov    edi,ebx
.org 0x213a
L_1200313a:
    add    ebx,0x1
.org 0x213d
L_1200313d:
    mov    WORD PTR [esi+ebx*2-0x2],ax
.org 0x2142
L_12003142:
    movzx  eax,BYTE PTR [edx+ebx*1-0x2]
.org 0x2147
L_12003147:
    test   al,al
.org 0x2149
L_12003149:
    # jne    12003138
    .byte 0x75
    .byte L_12003138 - . - 1
.org 0x214b
L_1200314b:
    mov    eax,DWORD PTR [esp+0x1c]
.org 0x214f
L_1200314f:
    mov    edx,0x66666667
.org 0x2154
L_12003154:
    lea    ecx,[edi+0x2]
.org 0x2157
L_12003157:
    imul   edx
.org 0x2159
L_12003159:
    mov    eax,DWORD PTR [esp+0x1c]
.org 0x215d
L_1200315d:
    sar    eax,0x1f
.org 0x2160
L_12003160:
    sar    edx,0x2
.org 0x2163
L_12003163:
    sub    edx,eax
.org 0x2165
L_12003165:
    mov    eax,DWORD PTR [esp+0x1c]
.org 0x2169
L_12003169:
    lea    edx,[edx+edx*4]
.org 0x216c
L_1200316c:
    add    edx,edx
.org 0x216e
L_1200316e:
    sub    eax,edx
.org 0x2170
L_12003170:
    mov    edx,0x1200419a
.org 0x2175
L_12003175:
    add    eax,0x30
.org 0x2178
L_12003178:
    sub    edx,edi
.org 0x217a
L_1200317a:
    mov    WORD PTR [esp+ebx*2+0xa0],ax
.org 0x2182
L_12003182:
    mov    eax,0x20
.org 0x2187
L_12003187:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x218f
L_1200318f:
    # Alignment padding: nop
    .byte 0x90
.org 0x2190
L_12003190:
    mov    ebx,ecx
.org 0x2192
L_12003192:
    add    ecx,0x1
.org 0x2195
L_12003195:
    mov    WORD PTR [esi+ecx*2-0x2],ax
.org 0x219a
L_1200319a:
    movzx  eax,BYTE PTR [edx+ecx*1-0x2]
.org 0x219f
L_1200319f:
    test   al,al
.org 0x21a1
L_120031a1:
    # jne    12003190
    .byte 0x75
    .byte L_12003190 - . - 1
.org 0x21a3
L_120031a3:
    mov    eax,DWORD PTR [esp+0x10]
.org 0x21a7
L_120031a7:
    mov    edx,0x66666667
.org 0x21ac
L_120031ac:
    mov    edi,DWORD PTR [esp+0x10]
.org 0x21b0
L_120031b0:
    imul   edx
.org 0x21b2
L_120031b2:
    mov    eax,edi
.org 0x21b4
L_120031b4:
    sar    eax,0x1f
.org 0x21b7
L_120031b7:
    sar    edx,0x2
.org 0x21ba
L_120031ba:
    sub    edx,eax
.org 0x21bc
L_120031bc:
    mov    eax,edi
.org 0x21be
L_120031be:
    lea    edx,[edx+edx*4]
.org 0x21c1
L_120031c1:
    add    edx,edx
.org 0x21c3
L_120031c3:
    sub    eax,edx
.org 0x21c5
L_120031c5:
    add    eax,0x30
.org 0x21c8
L_120031c8:
    mov    WORD PTR [esp+ecx*2+0xa0],ax
.org 0x21d0
L_120031d0:
    xor    ecx,ecx
.org 0x21d2
L_120031d2:
    mov    WORD PTR [esp+ebx*2+0xa4],cx
.org 0x21da
L_120031da:
    sub    esp,0x8
.org 0x21dd
L_120031dd:
    push   esi
.org 0x21de
L_120031de:
    push   0x1200610c
.org 0x21e3
L_120031e3:
    call   ebp
.org 0x21e5
L_120031e5:
    pop    ebx
.org 0x21e6
L_120031e6:
    pop    esi
.org 0x21e7
L_120031e7:
    mov    eax,DWORD PTR [esp+0x18]
.org 0x21eb
L_120031eb:
    add    eax,DWORD PTR [esp+0x1c]
.org 0x21ef
L_120031ef:
    mov    edx,0x4
.org 0x21f4
L_120031f4:
    # je     12002d45
    .byte 0xf,0x84
    .long L_12002d45 - . - 4
.org 0x21fa
L_120031fa:
    mov    eax,ds:0x1200988c
.org 0x21ff
L_120031ff:
    test   eax,eax
.org 0x2201
L_12003201:
    # je     12003214
    .byte 0x74
    .byte L_12003214 - . - 1
.org 0x2203
L_12003203:
    sub    esp,0x8
.org 0x2206
L_12003206:
    push   0x120060a0
.org 0x220b
L_1200320b:
    push   0x1200610c
.org 0x2210
L_12003210:
    call   eax
.org 0x2212
L_12003212:
    pop    eax
.org 0x2213
L_12003213:
    pop    edx
.org 0x2214
L_12003214:
    xor    edx,edx
.org 0x2216
L_12003216:
    # jmp    12002d45
    .byte 0xe9
    .long L_12002d45 - . - 4
.org 0x221b
L_1200321b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x2220
L_12003220:
    xor    esi,esi
.org 0x2222
L_12003222:
    # jmp    12002d70
    .byte 0xe9
    .long L_12002d70 - . - 4
.org 0x2227
L_12003227:
    mov    eax,DWORD PTR [esp+0x14]
.org 0x222b
L_1200322b:
    lea    edx,[ebx+0x5]
.org 0x222e
L_1200322e:
    mov    ecx,edi
.org 0x2230
L_12003230:
    mov    DWORD PTR [esp+0xa0],0xe9
.org 0x223b
L_1200323b:
    mov    DWORD PTR [esp+0xa4],0x90909000
.org 0x2246
L_12003246:
    sub    eax,edx
.org 0x2248
L_12003248:
    lea    edx,[esp+0xa0]
.org 0x224f
L_1200324f:
    mov    DWORD PTR [esp+0xa1],eax
.org 0x2256
L_12003256:
    mov    eax,ebx
.org 0x2258
L_12003258:
    # call   12001470
    .byte 0xe8
    .long L_12001470 - . - 4
.org 0x225d
L_1200325d:
    test   eax,eax
.org 0x225f
L_1200325f:
    # je     12003074
    .byte 0xf,0x84
    .long L_12003074 - . - 4
.org 0x2265
L_12003265:
    add    DWORD PTR [esp+0x18],0x1
.org 0x226a
L_1200326a:
    # jmp    12002ffc
    .byte 0xe9
    .long L_12002ffc - . - 4
.org 0x226f
L_1200326f:
    mov    edx,0x3
.org 0x2274
L_12003274:
    # jmp    12002d45
    .byte 0xe9
    .long L_12002d45 - . - 4
.org 0x2279
L_12003279:
    add    DWORD PTR [esp+0x1c],0x1
.org 0x227e
L_1200327e:
    # jmp    12002ffc
    .byte 0xe9
    .long L_12002ffc - . - 4
.org 0x2283
L_12003283:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x228b
L_1200328b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x2290
L_12003290:
    # Original function: DllMain
    mov    eax,0x1
.org 0x2295
L_12003295:
    ret    0xc
.org 0x2298
    # Linker constructor/destructor sentinel tables (data, not instructions).
    .long 0xffffffff
    .long 0x0
    .long 0xffffffff
    .long 0x0
.org 0x22a8
