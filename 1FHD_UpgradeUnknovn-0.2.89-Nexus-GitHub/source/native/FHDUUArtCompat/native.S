/* Recovered complete x86 source; original C was not supplied.
 * Each instruction and original function name is visible. Fixed layout and
 * explicit branch widths preserve this DLL exactly. */
.intel_syntax noprefix
.section .text,"ax",@progbits
.org 0x0
L_10001000:
    # Original function: pebAddress
    mov    eax,fs:0x30
.org 0x6
L_10001006:
    ret
.org 0x7
L_10001007:
    ud2
.org 0x9
L_10001009:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x10
L_10001010:
    # Original function: findExport
    push   ebp
.org 0x11
L_10001011:
    push   edi
.org 0x12
L_10001012:
    push   esi
.org 0x13
L_10001013:
    push   ebx
.org 0x14
L_10001014:
    sub    esp,0x14
.org 0x17
L_10001017:
    test   eax,eax
.org 0x19
L_10001019:
    # je     100010a4
    .byte 0xf,0x84
    .long L_100010a4 - . - 4
.org 0x1f
L_1000101f:
    xor    esi,esi
.org 0x21
L_10001021:
    cmp    WORD PTR [eax],0x5a4d
.org 0x26
L_10001026:
    mov    edi,eax
.org 0x28
L_10001028:
    # jne    100010a6
    .byte 0x75
    .byte L_100010a6 - . - 1
.org 0x2a
L_1000102a:
    mov    ebx,edx
.org 0x2c
L_1000102c:
    mov    edx,DWORD PTR [eax+0x3c]
.org 0x2f
L_1000102f:
    add    edx,eax
.org 0x31
L_10001031:
    cmp    DWORD PTR [edx],0x4550
.org 0x37
L_10001037:
    # jne    100010a6
    .byte 0x75
    .byte L_100010a6 - . - 1
.org 0x39
L_10001039:
    cmp    WORD PTR [edx+0x18],0x10b
.org 0x3f
L_1000103f:
    # jne    100010a6
    .byte 0x75
    .byte L_100010a6 - . - 1
.org 0x41
L_10001041:
    mov    eax,DWORD PTR [edx+0x78]
.org 0x44
L_10001044:
    mov    DWORD PTR [esp+0x8],eax
.org 0x48
L_10001048:
    test   eax,eax
.org 0x4a
L_1000104a:
    # je     100010a6
    .byte 0x74
    .byte L_100010a6 - . - 1
.org 0x4c
L_1000104c:
    lea    ecx,[edi+eax*1]
.org 0x4f
L_1000104f:
    mov    ebp,DWORD PTR [ecx+0x18]
.org 0x52
L_10001052:
    mov    eax,DWORD PTR [ecx+0x20]
.org 0x55
L_10001055:
    mov    DWORD PTR [esp+0x4],ebp
.org 0x59
L_10001059:
    test   ebp,ebp
.org 0x5b
L_1000105b:
    # je     100010a6
    .byte 0x74
    .byte L_100010a6 - . - 1
.org 0x5d
L_1000105d:
    add    eax,edi
.org 0x5f
L_1000105f:
    mov    DWORD PTR [esp+0xc],edx
.org 0x63
L_10001063:
    xor    ebp,ebp
.org 0x65
L_10001065:
    mov    DWORD PTR [esp],eax
.org 0x68
L_10001068:
    mov    DWORD PTR [esp+0x10],ecx
.org 0x6c
L_1000106c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x70
L_10001070:
    mov    eax,DWORD PTR [esp]
.org 0x73
L_10001073:
    mov    esi,DWORD PTR [eax+ebp*4]
.org 0x76
L_10001076:
    xor    eax,eax
.org 0x78
L_10001078:
    add    esi,edi
.org 0x7a
L_1000107a:
    # jmp    1000108b
    .byte 0xeb
    .byte L_1000108b - . - 1
.org 0x7c
L_1000107c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x80
L_10001080:
    test   cl,cl
.org 0x82
L_10001082:
    # je     1000109b
    .byte 0x74
    .byte L_1000109b - . - 1
.org 0x84
L_10001084:
    add    eax,0x1
.org 0x87
L_10001087:
    cmp    dl,cl
.org 0x89
L_10001089:
    # jne    1000109b
    .byte 0x75
    .byte L_1000109b - . - 1
.org 0x8b
L_1000108b:
    movzx  edx,BYTE PTR [esi+eax*1]
.org 0x8f
L_1000108f:
    movzx  ecx,BYTE PTR [ebx+eax*1]
.org 0x93
L_10001093:
    test   dl,dl
.org 0x95
L_10001095:
    # jne    10001080
    .byte 0x75
    .byte L_10001080 - . - 1
.org 0x97
L_10001097:
    test   cl,cl
.org 0x99
L_10001099:
    # je     100010b0
    .byte 0x74
    .byte L_100010b0 - . - 1
.org 0x9b
L_1000109b:
    add    ebp,0x1
.org 0x9e
L_1000109e:
    cmp    DWORD PTR [esp+0x4],ebp
.org 0xa2
L_100010a2:
    # jne    10001070
    .byte 0x75
    .byte L_10001070 - . - 1
.org 0xa4
L_100010a4:
    xor    esi,esi
.org 0xa6
L_100010a6:
    add    esp,0x14
.org 0xa9
L_100010a9:
    mov    eax,esi
.org 0xab
L_100010ab:
    pop    ebx
.org 0xac
L_100010ac:
    pop    esi
.org 0xad
L_100010ad:
    pop    edi
.org 0xae
L_100010ae:
    pop    ebp
.org 0xaf
L_100010af:
    ret
.org 0xb0
L_100010b0:
    mov    ecx,DWORD PTR [esp+0x10]
.org 0xb4
L_100010b4:
    lea    eax,[edi+ebp*2]
.org 0xb7
L_100010b7:
    mov    edx,DWORD PTR [esp+0xc]
.org 0xbb
L_100010bb:
    xor    esi,esi
.org 0xbd
L_100010bd:
    add    eax,DWORD PTR [ecx+0x24]
.org 0xc0
L_100010c0:
    movzx  eax,WORD PTR [eax]
.org 0xc3
L_100010c3:
    cmp    eax,DWORD PTR [ecx+0x14]
.org 0xc6
L_100010c6:
    # jae    100010a6
    .byte 0x73
    .byte L_100010a6 - . - 1
.org 0xc8
L_100010c8:
    lea    eax,[edi+eax*4]
.org 0xcb
L_100010cb:
    add    eax,DWORD PTR [ecx+0x1c]
.org 0xce
L_100010ce:
    mov    ecx,DWORD PTR [eax]
.org 0xd0
L_100010d0:
    mov    eax,DWORD PTR [esp+0x8]
.org 0xd4
L_100010d4:
    cmp    ecx,eax
.org 0xd6
L_100010d6:
    # jae    100010dd
    .byte 0x73
    .byte L_100010dd - . - 1
.org 0xd8
L_100010d8:
    lea    esi,[edi+ecx*1]
.org 0xdb
L_100010db:
    # jmp    100010a6
    .byte 0xeb
    .byte L_100010a6 - . - 1
.org 0xdd
L_100010dd:
    add    eax,DWORD PTR [edx+0x7c]
.org 0xe0
L_100010e0:
    cmp    ecx,eax
.org 0xe2
L_100010e2:
    # jb     100010a6
    .byte 0x72
    .byte L_100010a6 - . - 1
.org 0xe4
L_100010e4:
    # jmp    100010d8
    .byte 0xeb
    .byte L_100010d8 - . - 1
.org 0xe6
L_100010e6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xee
L_100010ee:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xf0
L_100010f0:
    # Original function: writeBytes
    push   ebp
.org 0xf1
L_100010f1:
    push   edi
.org 0xf2
L_100010f2:
    push   esi
.org 0xf3
L_100010f3:
    push   ebx
.org 0xf4
L_100010f4:
    mov    ebx,eax
.org 0xf6
L_100010f6:
    sub    esp,0x2c
.org 0xf9
L_100010f9:
    mov    DWORD PTR [esp+0x10],eax
.org 0xfd
L_100010fd:
    mov    eax,ds:0x1000503c
.org 0x102
L_10001102:
    mov    DWORD PTR [esp+0x14],ecx
.org 0x106
L_10001106:
    mov    DWORD PTR [esp+0x18],0x0
.org 0x10e
L_1000110e:
    mov    DWORD PTR [esp+0x1c],0x0
.org 0x116
L_10001116:
    test   eax,eax
.org 0x118
L_10001118:
    # je     100011a0
    .byte 0xf,0x84
    .long L_100011a0 - . - 4
.org 0x11e
L_1000111e:
    mov    DWORD PTR [esp+0xc],ecx
.org 0x122
L_10001122:
    sub    esp,0xc
.org 0x125
L_10001125:
    mov    ebp,edx
.org 0x127
L_10001127:
    lea    ecx,[esp+0x24]
.org 0x12b
L_1000112b:
    push   ecx
.org 0x12c
L_1000112c:
    push   0x40
.org 0x12e
L_1000112e:
    lea    edi,[esp+0x28]
.org 0x132
L_10001132:
    push   edi
.org 0x133
L_10001133:
    lea    esi,[esp+0x28]
.org 0x137
L_10001137:
    push   esi
.org 0x138
L_10001138:
    push   0xffffffff
.org 0x13a
L_1000113a:
    call   eax
.org 0x13c
L_1000113c:
    add    esp,0xc
.org 0x13f
L_1000113f:
    test   eax,eax
.org 0x141
L_10001141:
    # js     100011a0
    .byte 0x78
    .byte L_100011a0 - . - 1
.org 0x143
L_10001143:
    mov    edx,DWORD PTR [esp+0xc]
.org 0x147
L_10001147:
    test   edx,edx
.org 0x149
L_10001149:
    # je     1000116c
    .byte 0x74
    .byte L_1000116c - . - 1
.org 0x14b
L_1000114b:
    mov    eax,ebp
.org 0x14d
L_1000114d:
    mov    ecx,ebx
.org 0x14f
L_1000114f:
    lea    ebp,[ebp+edx*1+0x0]
.org 0x153
L_10001153:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x158
L_10001158:
    movzx  edx,BYTE PTR [eax]
.org 0x15b
L_1000115b:
    add    eax,0x1
.org 0x15e
L_1000115e:
    add    ecx,0x1
.org 0x161
L_10001161:
    mov    BYTE PTR [ecx-0x1],dl
.org 0x164
L_10001164:
    cmp    eax,ebp
.org 0x166
L_10001166:
    # jne    10001158
    .byte 0x75
    .byte L_10001158 - . - 1
.org 0x168
L_10001168:
    mov    edx,DWORD PTR [esp+0xc]
.org 0x16c
L_1000116c:
    sub    esp,0x4
.org 0x16f
L_1000116f:
    push   edx
.org 0x170
L_10001170:
    push   ebx
.org 0x171
L_10001171:
    push   0xffffffff
.org 0x173
L_10001173:
    call   DWORD PTR [0x10005038]
.org 0x179
L_10001179:
    sub    esp,0x8
.org 0x17c
L_1000117c:
    lea    eax,[esp+0x28]
.org 0x180
L_10001180:
    push   eax
.org 0x181
L_10001181:
    push   DWORD PTR [esp+0x28]
.org 0x185
L_10001185:
    push   edi
.org 0x186
L_10001186:
    push   esi
.org 0x187
L_10001187:
    push   0xffffffff
.org 0x189
L_10001189:
    call   DWORD PTR [0x1000503c]
.org 0x18f
L_1000118f:
    mov    eax,0x1
.org 0x194
L_10001194:
    add    esp,0xc
.org 0x197
L_10001197:
    add    esp,0x2c
.org 0x19a
L_1000119a:
    pop    ebx
.org 0x19b
L_1000119b:
    pop    esi
.org 0x19c
L_1000119c:
    pop    edi
.org 0x19d
L_1000119d:
    pop    ebp
.org 0x19e
L_1000119e:
    ret
.org 0x19f
L_1000119f:
    # Alignment padding: nop
    .byte 0x90
.org 0x1a0
L_100011a0:
    add    esp,0x2c
.org 0x1a3
L_100011a3:
    xor    eax,eax
.org 0x1a5
L_100011a5:
    pop    ebx
.org 0x1a6
L_100011a6:
    pop    esi
.org 0x1a7
L_100011a7:
    pop    edi
.org 0x1a8
L_100011a8:
    pop    ebp
.org 0x1a9
L_100011a9:
    ret
.org 0x1aa
L_100011aa:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x1b0
L_100011b0:
    # Original function: FHDUU_TListGet
    mov    eax,DWORD PTR [esp+0x4]
.org 0x1b4
L_100011b4:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x1b8
L_100011b8:
    jmp    DWORD PTR [0x10005014]
.org 0x1be
L_100011be:
    ud2
.org 0x1c0
L_100011c0:
    # Original function: artTrampoline
    push   ebp
.org 0x1c1
L_100011c1:
    # Explicit original instruction encoding: mov    ebp,esp
    .byte 0x8b,0xec
.org 0x1c3
L_100011c3:
    add    esp,0xfffffff8
.org 0x1c6
L_100011c6:
    # jmp    100011cb
    .byte 0xe9
    .long L_100011cb - . - 4
.org 0x1cb
L_100011cb:
    ud2
.org 0x1cd
L_100011cd:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x1d0
L_100011d0:
    # Original function: artCompatHook
    push   eax
.org 0x1d1
L_100011d1:
    push   ecx
.org 0x1d2
L_100011d2:
    push   edx
.org 0x1d3
L_100011d3:
    push   eax
.org 0x1d4
L_100011d4:
    # call   10001720
    .byte 0xe8
    .long L_10001720 - . - 4
.org 0x1d9
L_100011d9:
    add    esp,0x4
.org 0x1dc
L_100011dc:
    test   eax,eax
.org 0x1de
L_100011de:
    pop    edx
.org 0x1df
L_100011df:
    pop    ecx
.org 0x1e0
L_100011e0:
    pop    eax
.org 0x1e1
L_100011e1:
    # je     100011e6
    .byte 0x74
    .byte L_100011e6 - . - 1
.org 0x1e3
L_100011e3:
    mov    al,0x1
.org 0x1e5
L_100011e5:
    ret
.org 0x1e6
L_100011e6:
    jmp    DWORD PTR [0x10005024]
.org 0x1ec
L_100011ec:
    ud2
.org 0x1ee
L_100011ee:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x1f0
L_100011f0:
    # Original function: mmApplyTrampoline
    push   ebp
.org 0x1f1
L_100011f1:
    # Explicit original instruction encoding: mov    ebp,esp
    .byte 0x8b,0xec
.org 0x1f3
L_100011f3:
    add    esp,0xffffff94
.org 0x1f6
L_100011f6:
    # jmp    100011fb
    .byte 0xe9
    .long L_100011fb - . - 4
.org 0x1fb
L_100011fb:
    ud2
.org 0x1fd
L_100011fd:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x200
L_10001200:
    # Original function: mmApplyHook
    push   ebx
.org 0x201
L_10001201:
    push   eax
.org 0x202
L_10001202:
    push   edx
.org 0x203
L_10001203:
    push   ecx
.org 0x204
L_10001204:
    push   edx
.org 0x205
L_10001205:
    push   eax
.org 0x206
L_10001206:
    # call   10001820
    .byte 0xe8
    .long L_10001820 - . - 4
.org 0x20b
L_1000120b:
    add    esp,0x8
.org 0x20e
L_1000120e:
    mov    ebx,eax
.org 0x210
L_10001210:
    pop    ecx
.org 0x211
L_10001211:
    pop    edx
.org 0x212
L_10001212:
    pop    eax
.org 0x213
L_10001213:
    test   ebx,ebx
.org 0x215
L_10001215:
    # je     1000125f
    .byte 0x74
    .byte L_1000125f - . - 1
.org 0x217
L_10001217:
    cmp    ebx,0x2
.org 0x21a
L_1000121a:
    # je     10001228
    .byte 0x74
    .byte L_10001228 - . - 1
.org 0x21c
L_1000121c:
    cmp    ebx,0x3
.org 0x21f
L_1000121f:
    # je     10001252
    .byte 0x74
    .byte L_10001252 - . - 1
.org 0x221
L_10001221:
    pop    ebx
.org 0x222
L_10001222:
    jmp    DWORD PTR [0x10005020]
.org 0x228
L_10001228:
    push   edx
.org 0x229
L_10001229:
    call   DWORD PTR [0x10005020]
.org 0x22f
L_1000122f:
    pop    edx
.org 0x230
L_10001230:
    test   al,al
.org 0x232
L_10001232:
    # je     1000125d
    .byte 0x74
    .byte L_1000125d - . - 1
.org 0x234
L_10001234:
    mov    ecx,DWORD PTR [edx+0x50]
.org 0x237
L_10001237:
    test   ecx,ecx
.org 0x239
L_10001239:
    # je     1000125d
    .byte 0x74
    .byte L_1000125d - . - 1
.org 0x23b
L_1000123b:
    mov    DWORD PTR [edx+0x54],ecx
.org 0x23e
L_1000123e:
    mov    DWORD PTR [edx+0x50],0x0
.org 0x245
L_10001245:
    push   eax
.org 0x246
L_10001246:
    push   ecx
.org 0x247
L_10001247:
    push   edx
.org 0x248
L_10001248:
    # call   100017c0
    .byte 0xe8
    .long L_100017c0 - . - 4
.org 0x24d
L_1000124d:
    pop    edx
.org 0x24e
L_1000124e:
    pop    ecx
.org 0x24f
L_1000124f:
    pop    eax
.org 0x250
L_10001250:
    # jmp    1000125d
    .byte 0xeb
    .byte L_1000125d - . - 1
.org 0x252
L_10001252:
    call   DWORD PTR [0x1000501c]
.org 0x258
L_10001258:
    mov    eax,0x1
.org 0x25d
L_1000125d:
    pop    ebx
.org 0x25e
L_1000125e:
    ret
.org 0x25f
L_1000125f:
    pop    ebx
.org 0x260
L_10001260:
    xor    eax,eax
.org 0x262
L_10001262:
    ret
.org 0x263
L_10001263:
    ud2
.org 0x265
L_10001265:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x26d
L_1000126d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x270
L_10001270:
    # Original function: mmCompatTrampoline
    push   ebp
.org 0x271
L_10001271:
    # Explicit original instruction encoding: mov    ebp,esp
    .byte 0x8b,0xec
.org 0x273
L_10001273:
    add    esp,0xfffffff4
.org 0x276
L_10001276:
    # jmp    1000127b
    .byte 0xe9
    .long L_1000127b - . - 4
.org 0x27b
L_1000127b:
    ud2
.org 0x27d
L_1000127d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x280
L_10001280:
    # Original function: mmCompatHook
    push   ebx
.org 0x281
L_10001281:
    push   eax
.org 0x282
L_10001282:
    push   edx
.org 0x283
L_10001283:
    push   ecx
.org 0x284
L_10001284:
    push   edx
.org 0x285
L_10001285:
    push   eax
.org 0x286
L_10001286:
    # call   10001960
    .byte 0xe8
    .long L_10001960 - . - 4
.org 0x28b
L_1000128b:
    add    esp,0x8
.org 0x28e
L_1000128e:
    mov    ebx,eax
.org 0x290
L_10001290:
    pop    ecx
.org 0x291
L_10001291:
    pop    edx
.org 0x292
L_10001292:
    pop    eax
.org 0x293
L_10001293:
    test   ebx,ebx
.org 0x295
L_10001295:
    # je     100012bb
    .byte 0x74
    .byte L_100012bb - . - 1
.org 0x297
L_10001297:
    cmp    ebx,0x2
.org 0x29a
L_1000129a:
    # je     100012a3
    .byte 0x74
    .byte L_100012a3 - . - 1
.org 0x29c
L_1000129c:
    pop    ebx
.org 0x29d
L_1000129d:
    jmp    DWORD PTR [0x10005018]
.org 0x2a3
L_100012a3:
    push   edx
.org 0x2a4
L_100012a4:
    push   DWORD PTR [edx+0x50]
.org 0x2a7
L_100012a7:
    mov    DWORD PTR [edx+0x50],0x0
.org 0x2ae
L_100012ae:
    call   DWORD PTR [0x10005018]
.org 0x2b4
L_100012b4:
    pop    ecx
.org 0x2b5
L_100012b5:
    pop    edx
.org 0x2b6
L_100012b6:
    mov    DWORD PTR [edx+0x50],ecx
.org 0x2b9
L_100012b9:
    pop    ebx
.org 0x2ba
L_100012ba:
    ret
.org 0x2bb
L_100012bb:
    pop    ebx
.org 0x2bc
L_100012bc:
    xor    eax,eax
.org 0x2be
L_100012be:
    ret
.org 0x2bf
L_100012bf:
    ud2
.org 0x2c1
L_100012c1:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x2c9
L_100012c9:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x2d0
L_100012d0:
    # Original function: raceSimpleHook
    push   ebx
.org 0x2d1
L_100012d1:
    pushf
.org 0x2d2
L_100012d2:
    push   eax
.org 0x2d3
L_100012d3:
    push   ecx
.org 0x2d4
L_100012d4:
    push   edx
.org 0x2d5
L_100012d5:
    push   DWORD PTR [ebp-0x8]
.org 0x2d8
L_100012d8:
    # call   10001800
    .byte 0xe8
    .long L_10001800 - . - 4
.org 0x2dd
L_100012dd:
    add    esp,0x4
.org 0x2e0
L_100012e0:
    mov    ebx,eax
.org 0x2e2
L_100012e2:
    pop    edx
.org 0x2e3
L_100012e3:
    pop    ecx
.org 0x2e4
L_100012e4:
    pop    eax
.org 0x2e5
L_100012e5:
    test   ebx,ebx
.org 0x2e7
L_100012e7:
    # jne    100012f7
    .byte 0x75
    .byte L_100012f7 - . - 1
.org 0x2e9
L_100012e9:
    popf
.org 0x2ea
L_100012ea:
    pop    ebx
.org 0x2eb
L_100012eb:
    setb   al
.org 0x2ee
L_100012ee:
    mov    BYTE PTR [ebp-0x9],al
.org 0x2f1
L_100012f1:
    jmp    DWORD PTR [0x10005010]
.org 0x2f7
L_100012f7:
    popf
.org 0x2f8
L_100012f8:
    pop    ebx
.org 0x2f9
L_100012f9:
    mov    BYTE PTR [ebp-0x9],0x1
.org 0x2fd
L_100012fd:
    jmp    DWORD PTR [0x10005010]
.org 0x303
L_10001303:
    ud2
.org 0x305
L_10001305:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x30d
L_1000130d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x310
L_10001310:
    # Original function: raceWeaponHook
    push   ebx
.org 0x311
L_10001311:
    pushf
.org 0x312
L_10001312:
    push   eax
.org 0x313
L_10001313:
    push   ecx
.org 0x314
L_10001314:
    push   edx
.org 0x315
L_10001315:
    push   DWORD PTR [ebp-0x8]
.org 0x318
L_10001318:
    # call   10001800
    .byte 0xe8
    .long L_10001800 - . - 4
.org 0x31d
L_1000131d:
    add    esp,0x4
.org 0x320
L_10001320:
    mov    ebx,eax
.org 0x322
L_10001322:
    pop    edx
.org 0x323
L_10001323:
    pop    ecx
.org 0x324
L_10001324:
    pop    eax
.org 0x325
L_10001325:
    test   ebx,ebx
.org 0x327
L_10001327:
    # jne    10001336
    .byte 0x75
    .byte L_10001336 - . - 1
.org 0x329
L_10001329:
    popf
.org 0x32a
L_1000132a:
    pop    ebx
.org 0x32b
L_1000132b:
    # jb     10001338
    .byte 0x72
    .byte L_10001338 - . - 1
.org 0x32d
L_1000132d:
    mov    eax,DWORD PTR [ebp-0x8]
.org 0x330
L_10001330:
    jmp    DWORD PTR [0x10005000]
.org 0x336
L_10001336:
    popf
.org 0x337
L_10001337:
    pop    ebx
.org 0x338
L_10001338:
    jmp    DWORD PTR [0x10005008]
.org 0x33e
L_1000133e:
    ud2
.org 0x340
L_10001340:
    # Original function: raceDeepHook
    push   ebx
.org 0x341
L_10001341:
    pushf
.org 0x342
L_10001342:
    push   eax
.org 0x343
L_10001343:
    push   ecx
.org 0x344
L_10001344:
    push   edx
.org 0x345
L_10001345:
    push   DWORD PTR [ebp-0x8]
.org 0x348
L_10001348:
    # call   10001800
    .byte 0xe8
    .long L_10001800 - . - 4
.org 0x34d
L_1000134d:
    add    esp,0x4
.org 0x350
L_10001350:
    mov    ebx,eax
.org 0x352
L_10001352:
    pop    edx
.org 0x353
L_10001353:
    pop    ecx
.org 0x354
L_10001354:
    pop    eax
.org 0x355
L_10001355:
    test   ebx,ebx
.org 0x357
L_10001357:
    # jne    10001363
    .byte 0x75
    .byte L_10001363 - . - 1
.org 0x359
L_10001359:
    popf
.org 0x35a
L_1000135a:
    pop    ebx
.org 0x35b
L_1000135b:
    # jae    1000136b
    .byte 0x73
    .byte L_1000136b - . - 1
.org 0x35d
L_1000135d:
    jmp    DWORD PTR [0x1000500c]
.org 0x363
L_10001363:
    popf
.org 0x364
L_10001364:
    pop    ebx
.org 0x365
L_10001365:
    jmp    DWORD PTR [0x1000500c]
.org 0x36b
L_1000136b:
    jmp    DWORD PTR [0x10005004]
.org 0x371
L_10001371:
    ud2
.org 0x373
L_10001373:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x37b
L_1000137b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x380
L_10001380:
    # Original function: install6
    push   edi
.org 0x381
L_10001381:
    mov    edi,edx
.org 0x383
L_10001383:
    xor    edx,edx
.org 0x385
L_10001385:
    push   esi
.org 0x386
L_10001386:
    mov    esi,ecx
.org 0x388
L_10001388:
    push   ebx
.org 0x389
L_10001389:
    mov    ebx,eax
.org 0x38b
L_1000138b:
    sub    esp,0x10
.org 0x38e
L_1000138e:
    mov    ecx,DWORD PTR [esp+0x20]
.org 0x392
L_10001392:
    movzx  eax,BYTE PTR [ecx+edx*1]
.org 0x396
L_10001396:
    cmp    BYTE PTR [ebx+edx*1],al
.org 0x399
L_10001399:
    # jne    100013c3
    .byte 0x75
    .byte L_100013c3 - . - 1
.org 0x39b
L_1000139b:
    add    edx,0x1
.org 0x39e
L_1000139e:
    cmp    edx,0x6
.org 0x3a1
L_100013a1:
    # jne    10001392
    .byte 0x75
    .byte L_10001392 - . - 1
.org 0x3a3
L_100013a3:
    mov    edx,ebx
.org 0x3a5
L_100013a5:
    lea    eax,[edi+0x7]
.org 0x3a8
L_100013a8:
    mov    ecx,0x4
.org 0x3ad
L_100013ad:
    sub    edx,edi
.org 0x3af
L_100013af:
    sub    edx,0x5
.org 0x3b2
L_100013b2:
    mov    DWORD PTR [esp+0x6],edx
.org 0x3b6
L_100013b6:
    lea    edx,[esp+0x6]
.org 0x3ba
L_100013ba:
    # call   100010f0
    .byte 0xe8
    .long L_100010f0 - . - 4
.org 0x3bf
L_100013bf:
    test   eax,eax
.org 0x3c1
L_100013c1:
    # jne    100013d0
    .byte 0x75
    .byte L_100013d0 - . - 1
.org 0x3c3
L_100013c3:
    add    esp,0x10
.org 0x3c6
L_100013c6:
    xor    eax,eax
.org 0x3c8
L_100013c8:
    pop    ebx
.org 0x3c9
L_100013c9:
    pop    esi
.org 0x3ca
L_100013ca:
    pop    edi
.org 0x3cb
L_100013cb:
    ret
.org 0x3cc
L_100013cc:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x3d0
L_100013d0:
    mov    eax,0xffff9000
.org 0x3d5
L_100013d5:
    lea    edx,[esp+0xa]
.org 0x3d9
L_100013d9:
    mov    ecx,0x6
.org 0x3de
L_100013de:
    mov    DWORD PTR [esp+0xa],0xe9
.org 0x3e6
L_100013e6:
    mov    WORD PTR [esp+0xe],ax
.org 0x3eb
L_100013eb:
    lea    eax,[ebx+0x5]
.org 0x3ee
L_100013ee:
    sub    esi,eax
.org 0x3f0
L_100013f0:
    mov    eax,ebx
.org 0x3f2
L_100013f2:
    mov    DWORD PTR [esp+0xb],esi
.org 0x3f6
L_100013f6:
    # call   100010f0
    .byte 0xe8
    .long L_100010f0 - . - 4
.org 0x3fb
L_100013fb:
    add    esp,0x10
.org 0x3fe
L_100013fe:
    pop    ebx
.org 0x3ff
L_100013ff:
    pop    esi
.org 0x400
L_10001400:
    pop    edi
.org 0x401
L_10001401:
    ret
.org 0x402
L_10001402:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x40a
L_1000140a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x410
L_10001410:
    # Original function: researchGrade
    push   ebp
.org 0x411
L_10001411:
    push   edi
.org 0x412
L_10001412:
    push   esi
.org 0x413
L_10001413:
    push   ebx
.org 0x414
L_10001414:
    sub    esp,0x1c
.org 0x417
L_10001417:
    test   eax,eax
.org 0x419
L_10001419:
    # je     10001550
    .byte 0xf,0x84
    .long L_10001550 - . - 4
.org 0x41f
L_1000141f:
    mov    edi,DWORD PTR [eax+0x3c]
.org 0x422
L_10001422:
    test   edi,edi
.org 0x424
L_10001424:
    # je     10001550
    .byte 0xf,0x84
    .long L_10001550 - . - 4
.org 0x42a
L_1000142a:
    xor    edx,edx
.org 0x42c
L_1000142c:
    mov    ebx,0x46
.org 0x431
L_10001431:
    mov    esi,0x46
.org 0x436
L_10001436:
    # jmp    1000145a
    .byte 0xeb
    .byte L_1000145a - . - 1
.org 0x438
L_10001438:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x440
L_10001440:
    test   bx,bx
.org 0x443
L_10001443:
    # je     10001463
    .byte 0x74
    .byte L_10001463 - . - 1
.org 0x445
L_10001445:
    add    edx,0x2
.org 0x448
L_10001448:
    cmp    cx,bx
.org 0x44b
L_1000144b:
    # jne    10001550
    .byte 0xf,0x85
    .long L_10001550 - . - 4
.org 0x451
L_10001451:
    movzx  esi,WORD PTR [edx+0x10004040]
.org 0x458
L_10001458:
    mov    ebx,esi
.org 0x45a
L_1000145a:
    movzx  ecx,WORD PTR [edi+edx*1]
.org 0x45e
L_1000145e:
    test   cx,cx
.org 0x461
L_10001461:
    # jne    10001440
    .byte 0x75
    .byte L_10001440 - . - 1
.org 0x463
L_10001463:
    cmp    si,cx
.org 0x466
L_10001466:
    # jne    10001550
    .byte 0xf,0x85
    .long L_10001550 - . - 4
.org 0x46c
L_1000146c:
    mov    ebp,DWORD PTR [eax+0x58]
.org 0x46f
L_1000146f:
    test   ebp,ebp
.org 0x471
L_10001471:
    # je     10001550
    .byte 0xf,0x84
    .long L_10001550 - . - 4
.org 0x477
L_10001477:
    mov    eax,ds:0x10005014
.org 0x47c
L_1000147c:
    test   eax,eax
.org 0x47e
L_1000147e:
    # je     10001550
    .byte 0xf,0x84
    .long L_10001550 - . - 4
.org 0x484
L_10001484:
    mov    ecx,DWORD PTR [ebp+0x8]
.org 0x487
L_10001487:
    lea    eax,[ecx-0x1]
.org 0x48a
L_1000148a:
    cmp    eax,0x7f
.org 0x48d
L_1000148d:
    # ja     10001550
    .byte 0xf,0x87
    .long L_10001550 - . - 4
.org 0x493
L_10001493:
    mov    DWORD PTR [esp+0xc],0x0
.org 0x49b
L_1000149b:
    xor    ebx,ebx
.org 0x49d
L_1000149d:
    xor    edi,edi
.org 0x49f
L_1000149f:
    mov    DWORD PTR [esp+0x8],ecx
.org 0x4a3
L_100014a3:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x4a8
L_100014a8:
    sub    esp,0x8
.org 0x4ab
L_100014ab:
    push   ebx
.org 0x4ac
L_100014ac:
    push   ebp
.org 0x4ad
L_100014ad:
    # call   100011b0
    .byte 0xe8
    .long L_100011b0 - . - 4
.org 0x4b2
L_100014b2:
    add    esp,0x10
.org 0x4b5
L_100014b5:
    test   eax,eax
.org 0x4b7
L_100014b7:
    # je     1000152d
    .byte 0x74
    .byte L_1000152d - . - 1
.org 0x4b9
L_100014b9:
    mov    eax,DWORD PTR [eax]
.org 0x4bb
L_100014bb:
    test   eax,eax
.org 0x4bd
L_100014bd:
    # jle    1000152d
    .byte 0x7e
    .byte L_1000152d - . - 1
.org 0x4bf
L_100014bf:
    sub    eax,0x1
.org 0x4c2
L_100014c2:
    cmp    eax,0x1fff
.org 0x4c7
L_100014c7:
    # jg     1000152d
    .byte 0x7f
    .byte L_1000152d - . - 1
.org 0x4c9
L_100014c9:
    mov    edx,DWORD PTR [0x10005048]
.org 0x4cf
L_100014cf:
    test   edx,edx
.org 0x4d1
L_100014d1:
    # je     1000152d
    .byte 0x74
    .byte L_1000152d - . - 1
.org 0x4d3
L_100014d3:
    cmp    DWORD PTR [0x10005044],0x4826b8
.org 0x4dd
L_100014dd:
    # jbe    1000152d
    .byte 0x76
    .byte L_1000152d - . - 1
.org 0x4df
L_100014df:
    mov    edx,DWORD PTR [edx+0x4826b4]
.org 0x4e5
L_100014e5:
    test   edx,edx
.org 0x4e7
L_100014e7:
    # je     1000152d
    .byte 0x74
    .byte L_1000152d - . - 1
.org 0x4e9
L_100014e9:
    mov    edx,DWORD PTR [edx]
.org 0x4eb
L_100014eb:
    test   edx,edx
.org 0x4ed
L_100014ed:
    # je     1000152d
    .byte 0x74
    .byte L_1000152d - . - 1
.org 0x4ef
L_100014ef:
    imul   eax,eax,0x124
.org 0x4f5
L_100014f5:
    add    eax,edx
.org 0x4f7
L_100014f7:
    mov    esi,DWORD PTR [eax+0x11c]
.org 0x4fd
L_100014fd:
    cmp    BYTE PTR [eax],0x1
.org 0x500
L_10001500:
    sbb    edi,0xffffffff
.org 0x503
L_10001503:
    xor    eax,eax
.org 0x505
L_10001505:
    test   esi,esi
.org 0x507
L_10001507:
    # jne    1000151c
    .byte 0x75
    .byte L_1000151c - . - 1
.org 0x509
L_10001509:
    # jmp    1000152d
    .byte 0xeb
    .byte L_1000152d - . - 1
.org 0x50b
L_1000150b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x510
L_10001510:
    movzx  ecx,WORD PTR [esi+eax*1]
.org 0x514
L_10001514:
    add    eax,0x2
.org 0x517
L_10001517:
    cmp    cx,dx
.org 0x51a
L_1000151a:
    # jne    1000152d
    .byte 0x75
    .byte L_1000152d - . - 1
.org 0x51c
L_1000151c:
    movzx  edx,WORD PTR [eax+0x10004020]
.org 0x523
L_10001523:
    test   dx,dx
.org 0x526
L_10001526:
    # jne    10001510
    .byte 0x75
    .byte L_10001510 - . - 1
.org 0x528
L_10001528:
    add    DWORD PTR [esp+0xc],0x1
.org 0x52d
L_1000152d:
    add    ebx,0x1
.org 0x530
L_10001530:
    cmp    DWORD PTR [esp+0x8],ebx
.org 0x534
L_10001534:
    # jne    100014a8
    .byte 0xf,0x85
    .long L_100014a8 - . - 4
.org 0x53a
L_1000153a:
    mov    eax,DWORD PTR [esp+0xc]
.org 0x53e
L_1000153e:
    test   eax,eax
.org 0x540
L_10001540:
    cmovne edi,eax
.org 0x543
L_10001543:
    cmp    edi,0x2
.org 0x546
L_10001546:
    # jg     10001560
    .byte 0x7f
    .byte L_10001560 - . - 1
.org 0x548
L_10001548:
    # je     10001552
    .byte 0x74
    .byte L_10001552 - . - 1
.org 0x54a
L_1000154a:
    cmp    edi,0x1
.org 0x54d
L_1000154d:
    # je     10001567
    .byte 0x74
    .byte L_10001567 - . - 1
.org 0x54f
L_1000154f:
    # Alignment padding: nop
    .byte 0x90
.org 0x550
L_10001550:
    xor    edi,edi
.org 0x552
L_10001552:
    add    esp,0x1c
.org 0x555
L_10001555:
    mov    eax,edi
.org 0x557
L_10001557:
    pop    ebx
.org 0x558
L_10001558:
    pop    esi
.org 0x559
L_10001559:
    pop    edi
.org 0x55a
L_1000155a:
    pop    ebp
.org 0x55b
L_1000155b:
    ret
.org 0x55c
L_1000155c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x560
L_10001560:
    mov    edi,0x1
.org 0x565
L_10001565:
    # jmp    10001552
    .byte 0xeb
    .byte L_10001552 - . - 1
.org 0x567
L_10001567:
    mov    edi,0x3
.org 0x56c
L_1000156c:
    # jmp    10001552
    .byte 0xeb
    .byte L_10001552 - . - 1
.org 0x56e
L_1000156e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x570
L_10001570:
    # Original function: candidateAllowed.constprop.0
    push   ebp
.org 0x571
L_10001571:
    push   edi
.org 0x572
L_10001572:
    push   esi
.org 0x573
L_10001573:
    mov    esi,edx
.org 0x575
L_10001575:
    push   ebx
.org 0x576
L_10001576:
    mov    ebx,eax
.org 0x578
L_10001578:
    sub    esp,0x3c
.org 0x57b
L_1000157b:
    mov    DWORD PTR [esp+0x4],ecx
.org 0x57f
L_1000157f:
    # call   10001410
    .byte 0xe8
    .long L_10001410 - . - 4
.org 0x584
L_10001584:
    test   eax,eax
.org 0x586
L_10001586:
    # je     100016e4
    .byte 0xf,0x84
    .long L_100016e4 - . - 4
.org 0x58c
L_1000158c:
    test   esi,esi
.org 0x58e
L_1000158e:
    # js     100016f8
    .byte 0xf,0x88
    .long L_100016f8 - . - 4
.org 0x594
L_10001594:
    cmp    esi,0x1fff
.org 0x59a
L_1000159a:
    # ja     100016f8
    .byte 0xf,0x87
    .long L_100016f8 - . - 4
.org 0x5a0
L_100015a0:
    mov    edi,eax
.org 0x5a2
L_100015a2:
    mov    eax,ds:0x10005048
.org 0x5a7
L_100015a7:
    test   eax,eax
.org 0x5a9
L_100015a9:
    # je     100016f8
    .byte 0xf,0x84
    .long L_100016f8 - . - 4
.org 0x5af
L_100015af:
    cmp    DWORD PTR [0x10005044],0x4826b8
.org 0x5b9
L_100015b9:
    # jbe    100016f8
    .byte 0xf,0x86
    .long L_100016f8 - . - 4
.org 0x5bf
L_100015bf:
    mov    eax,DWORD PTR [eax+0x4826b4]
.org 0x5c5
L_100015c5:
    test   eax,eax
.org 0x5c7
L_100015c7:
    # je     100016f8
    .byte 0xf,0x84
    .long L_100016f8 - . - 4
.org 0x5cd
L_100015cd:
    mov    edx,DWORD PTR [eax]
.org 0x5cf
L_100015cf:
    test   edx,edx
.org 0x5d1
L_100015d1:
    # je     100016f8
    .byte 0xf,0x84
    .long L_100016f8 - . - 4
.org 0x5d7
L_100015d7:
    imul   eax,esi,0x124
.org 0x5dd
L_100015dd:
    add    eax,edx
.org 0x5df
L_100015df:
    cmp    BYTE PTR [eax],0x0
.org 0x5e2
L_100015e2:
    # je     10001698
    .byte 0xf,0x84
    .long L_10001698 - . - 4
.org 0x5e8
L_100015e8:
    mov    ecx,DWORD PTR [eax+0x10c]
.org 0x5ee
L_100015ee:
    mov    DWORD PTR [esp+0x18],0x10003000
.org 0x5f6
L_100015f6:
    mov    DWORD PTR [esp+0x1c],0x10003009
.org 0x5fe
L_100015fe:
    mov    DWORD PTR [esp+0x20],0x10003012
.org 0x606
L_10001606:
    mov    DWORD PTR [esp+0x24],0x1000301b
.org 0x60e
L_1000160e:
    mov    DWORD PTR [esp+0x28],0x1000302c
.org 0x616
L_10001616:
    mov    DWORD PTR [esp+0x2c],0x1000303c
.org 0x61e
L_1000161e:
    test   ecx,ecx
.org 0x620
L_10001620:
    # je     100016f8
    .byte 0xf,0x84
    .long L_100016f8 - . - 4
.org 0x626
L_10001626:
    mov    DWORD PTR [esp+0x8],edi
.org 0x62a
L_1000162a:
    lea    ebp,[esp+0x18]
.org 0x62e
L_1000162e:
    mov    eax,0x53
.org 0x633
L_10001633:
    mov    DWORD PTR [esp+0xc],ebx
.org 0x637
L_10001637:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x63f
L_1000163f:
    # Alignment padding: nop
    .byte 0x90
.org 0x640
L_10001640:
    mov    edi,DWORD PTR [ebp+0x0]
.org 0x643
L_10001643:
    xor    ebx,ebx
.org 0x645
L_10001645:
    test   al,al
.org 0x647
L_10001647:
    # jne    1000165b
    .byte 0x75
    .byte L_1000165b - . - 1
.org 0x649
L_10001649:
    # jmp    10001717
    .byte 0xe9
    .long L_10001717 - . - 4
.org 0x64e
L_1000164e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x650
L_10001650:
    add    ebx,0x1
.org 0x653
L_10001653:
    movzx  eax,BYTE PTR [edi+ebx*1]
.org 0x657
L_10001657:
    test   al,al
.org 0x659
L_10001659:
    # je     10001680
    .byte 0x74
    .byte L_10001680 - . - 1
.org 0x65b
L_1000165b:
    cmp    WORD PTR [ecx+ebx*2],ax
.org 0x65f
L_1000165f:
    # je     10001650
    .byte 0x74
    .byte L_10001650 - . - 1
.org 0x661
L_10001661:
    add    ebp,0x4
.org 0x664
L_10001664:
    lea    eax,[esp+0x30]
.org 0x668
L_10001668:
    cmp    eax,ebp
.org 0x66a
L_1000166a:
    # je     100016f8
    .byte 0xf,0x84
    .long L_100016f8 - . - 4
.org 0x670
L_10001670:
    mov    eax,DWORD PTR [ebp+0x0]
.org 0x673
L_10001673:
    movzx  eax,BYTE PTR [eax]
.org 0x676
L_10001676:
    # jmp    10001640
    .byte 0xeb
    .byte L_10001640 - . - 1
.org 0x678
L_10001678:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x680
L_10001680:
    lea    eax,[ecx+ebx*2]
.org 0x683
L_10001683:
    cmp    WORD PTR [eax],0x0
.org 0x687
L_10001687:
    # jne    10001661
    .byte 0x75
    .byte L_10001661 - . - 1
.org 0x689
L_10001689:
    mov    edi,DWORD PTR [esp+0x8]
.org 0x68d
L_1000168d:
    mov    ebx,DWORD PTR [esp+0xc]
.org 0x691
L_10001691:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x698
L_10001698:
    mov    eax,DWORD PTR [ebx+0x50]
.org 0x69b
L_1000169b:
    mov    ecx,DWORD PTR [ebx+0x54]
.org 0x69e
L_1000169e:
    test   eax,eax
.org 0x6a0
L_100016a0:
    # je     100016a9
    .byte 0x74
    .byte L_100016a9 - . - 1
.org 0x6a2
L_100016a2:
    sub    eax,0x1
.org 0x6a5
L_100016a5:
    cmp    esi,eax
.org 0x6a7
L_100016a7:
    # je     10001710
    .byte 0x74
    .byte L_10001710 - . - 1
.org 0x6a9
L_100016a9:
    test   ecx,ecx
.org 0x6ab
L_100016ab:
    # je     100016b4
    .byte 0x74
    .byte L_100016b4 - . - 1
.org 0x6ad
L_100016ad:
    sub    ecx,0x1
.org 0x6b0
L_100016b0:
    cmp    esi,ecx
.org 0x6b2
L_100016b2:
    # je     10001710
    .byte 0x74
    .byte L_10001710 - . - 1
.org 0x6b4
L_100016b4:
    test   edx,edx
.org 0x6b6
L_100016b6:
    # je     100016f8
    .byte 0x74
    .byte L_100016f8 - . - 1
.org 0x6b8
L_100016b8:
    imul   esi,esi,0x124
.org 0x6be
L_100016be:
    mov    eax,0x64
.org 0x6c3
L_100016c3:
    movzx  edx,BYTE PTR [edx+esi*1+0xd8]
.org 0x6cb
L_100016cb:
    cmp    edi,0x1
.org 0x6ce
L_100016ce:
    # je     100016e0
    .byte 0x74
    .byte L_100016e0 - . - 1
.org 0x6d0
L_100016d0:
    cmp    edi,0x2
.org 0x6d3
L_100016d3:
    mov    eax,0x45
.org 0x6d8
L_100016d8:
    mov    ecx,0x1e
.org 0x6dd
L_100016dd:
    cmovne eax,ecx
.org 0x6e0
L_100016e0:
    cmp    eax,edx
.org 0x6e2
L_100016e2:
    # jb     100016f8
    .byte 0x72
    .byte L_100016f8 - . - 1
.org 0x6e4
L_100016e4:
    mov    eax,0x1
.org 0x6e9
L_100016e9:
    add    esp,0x3c
.org 0x6ec
L_100016ec:
    pop    ebx
.org 0x6ed
L_100016ed:
    pop    esi
.org 0x6ee
L_100016ee:
    pop    edi
.org 0x6ef
L_100016ef:
    pop    ebp
.org 0x6f0
L_100016f0:
    ret
.org 0x6f1
L_100016f1:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x6f8
L_100016f8:
    mov    eax,0x1
.org 0x6fd
L_100016fd:
    mov    esi,DWORD PTR [esp+0x4]
.org 0x701
L_10001701:
    mov    DWORD PTR [esi],eax
.org 0x703
L_10001703:
    xor    eax,eax
.org 0x705
L_10001705:
    # jmp    100016e9
    .byte 0xeb
    .byte L_100016e9 - . - 1
.org 0x707
L_10001707:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x70f
L_1000170f:
    # Alignment padding: nop
    .byte 0x90
.org 0x710
L_10001710:
    mov    eax,0x2
.org 0x715
L_10001715:
    # jmp    100016fd
    .byte 0xeb
    .byte L_100016fd - . - 1
.org 0x717
L_10001717:
    mov    eax,ecx
.org 0x719
L_10001719:
    # jmp    10001683
    .byte 0xe9
    .long L_10001683 - . - 4
.org 0x71e
L_1000171e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x720
L_10001720:
    # Original function: FHDUU_IsResearched
    push   esi
.org 0x721
L_10001721:
    xor    edx,edx
.org 0x723
L_10001723:
    push   ebx
.org 0x724
L_10001724:
    sub    esp,0x4
.org 0x727
L_10001727:
    mov    eax,DWORD PTR [esp+0x10]
.org 0x72b
L_1000172b:
    test   eax,eax
.org 0x72d
L_1000172d:
    # je     1000179f
    .byte 0x74
    .byte L_1000179f - . - 1
.org 0x72f
L_1000172f:
    mov    esi,DWORD PTR [eax+0x3c]
.org 0x732
L_10001732:
    test   esi,esi
.org 0x734
L_10001734:
    # je     1000179f
    .byte 0x74
    .byte L_1000179f - . - 1
.org 0x736
L_10001736:
    xor    eax,eax
.org 0x738
L_10001738:
    mov    ecx,0x46
.org 0x73d
L_1000173d:
    mov    ebx,0x46
.org 0x742
L_10001742:
    # jmp    1000175e
    .byte 0xeb
    .byte L_1000175e - . - 1
.org 0x744
L_10001744:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x748
L_10001748:
    test   cx,cx
.org 0x74b
L_1000174b:
    # je     10001767
    .byte 0x74
    .byte L_10001767 - . - 1
.org 0x74d
L_1000174d:
    add    eax,0x2
.org 0x750
L_10001750:
    cmp    dx,cx
.org 0x753
L_10001753:
    # jne    100017b0
    .byte 0x75
    .byte L_100017b0 - . - 1
.org 0x755
L_10001755:
    movzx  ebx,WORD PTR [eax+0x10004040]
.org 0x75c
L_1000175c:
    mov    ecx,ebx
.org 0x75e
L_1000175e:
    movzx  edx,WORD PTR [esi+eax*1]
.org 0x762
L_10001762:
    test   dx,dx
.org 0x765
L_10001765:
    # jne    10001748
    .byte 0x75
    .byte L_10001748 - . - 1
.org 0x767
L_10001767:
    cmp    bx,dx
.org 0x76a
L_1000176a:
    # jne    100017b0
    .byte 0x75
    .byte L_100017b0 - . - 1
.org 0x76c
L_1000176c:
    mov    ecx,DWORD PTR [0x10005034]
.org 0x772
L_10001772:
    test   ecx,ecx
.org 0x774
L_10001774:
    # jne    1000179a
    .byte 0x75
    .byte L_1000179a - . - 1
.org 0x776
L_10001776:
    mov    eax,ds:0x10005040
.org 0x77b
L_1000177b:
    test   eax,eax
.org 0x77d
L_1000177d:
    # je     1000179a
    .byte 0x74
    .byte L_1000179a - . - 1
.org 0x77f
L_1000177f:
    mov    DWORD PTR [0x10005034],0x1
.org 0x789
L_10001789:
    sub    esp,0x8
.org 0x78c
L_1000178c:
    push   0x10004180
.org 0x791
L_10001791:
    push   0x10004330
.org 0x796
L_10001796:
    call   eax
.org 0x798
L_10001798:
    pop    eax
.org 0x799
L_10001799:
    pop    edx
.org 0x79a
L_1000179a:
    mov    edx,0x1
.org 0x79f
L_1000179f:
    add    esp,0x4
.org 0x7a2
L_100017a2:
    mov    eax,edx
.org 0x7a4
L_100017a4:
    pop    ebx
.org 0x7a5
L_100017a5:
    pop    esi
.org 0x7a6
L_100017a6:
    ret
.org 0x7a7
L_100017a7:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x7af
L_100017af:
    # Alignment padding: nop
    .byte 0x90
.org 0x7b0
L_100017b0:
    add    esp,0x4
.org 0x7b3
L_100017b3:
    xor    edx,edx
.org 0x7b5
L_100017b5:
    mov    eax,edx
.org 0x7b7
L_100017b7:
    pop    ebx
.org 0x7b8
L_100017b8:
    pop    esi
.org 0x7b9
L_100017b9:
    ret
.org 0x7ba
L_100017ba:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x7c0
L_100017c0:
    # Original function: FHDUU_LogFirstMM
    mov    eax,ds:0x10005030
.org 0x7c5
L_100017c5:
    test   eax,eax
.org 0x7c7
L_100017c7:
    # jne    100017f0
    .byte 0x75
    .byte L_100017f0 - . - 1
.org 0x7c9
L_100017c9:
    mov    eax,ds:0x10005040
.org 0x7ce
L_100017ce:
    test   eax,eax
.org 0x7d0
L_100017d0:
    # je     100017f0
    .byte 0x74
    .byte L_100017f0 - . - 1
.org 0x7d2
L_100017d2:
    sub    esp,0x14
.org 0x7d5
L_100017d5:
    mov    DWORD PTR [0x10005030],0x1
.org 0x7df
L_100017df:
    push   0x10004120
.org 0x7e4
L_100017e4:
    push   0x10004330
.org 0x7e9
L_100017e9:
    call   eax
.org 0x7eb
L_100017eb:
    add    esp,0x14
.org 0x7ee
L_100017ee:
    ret
.org 0x7ef
L_100017ef:
    # Alignment padding: nop
    .byte 0x90
.org 0x7f0
L_100017f0:
    ret
.org 0x7f1
L_100017f1:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x7f9
L_100017f9:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x800
L_10001800:
    # Original function: FHDUU_IgnoreRace
    sub    esp,0xc
.org 0x803
L_10001803:
    mov    eax,DWORD PTR [esp+0x10]
.org 0x807
L_10001807:
    # call   10001410
    .byte 0xe8
    .long L_10001410 - . - 4
.org 0x80c
L_1000180c:
    test   eax,eax
.org 0x80e
L_1000180e:
    setne  al
.org 0x811
L_10001811:
    add    esp,0xc
.org 0x814
L_10001814:
    movzx  eax,al
.org 0x817
L_10001817:
    ret
.org 0x818
L_10001818:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x820
L_10001820:
    # Original function: FHDUU_MMApplyDecision
    push   ebx
.org 0x821
L_10001821:
    sub    esp,0x18
.org 0x824
L_10001824:
    mov    ebx,DWORD PTR [esp+0x24]
.org 0x828
L_10001828:
    mov    eax,ebx
.org 0x82a
L_1000182a:
    # call   10001410
    .byte 0xe8
    .long L_10001410 - . - 4
.org 0x82f
L_1000182f:
    test   eax,eax
.org 0x831
L_10001831:
    # jne    10001840
    .byte 0x75
    .byte L_10001840 - . - 1
.org 0x833
L_10001833:
    mov    eax,0x1
.org 0x838
L_10001838:
    add    esp,0x18
.org 0x83b
L_1000183b:
    pop    ebx
.org 0x83c
L_1000183c:
    ret
.org 0x83d
L_1000183d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x840
L_10001840:
    mov    edx,DWORD PTR [esp+0x20]
.org 0x844
L_10001844:
    lea    ecx,[esp+0xc]
.org 0x848
L_10001848:
    mov    eax,ebx
.org 0x84a
L_1000184a:
    mov    DWORD PTR [esp+0xc],0x0
.org 0x852
L_10001852:
    # call   10001570
    .byte 0xe8
    .long L_10001570 - . - 4
.org 0x857
L_10001857:
    test   eax,eax
.org 0x859
L_10001859:
    # je     100018d0
    .byte 0x74
    .byte L_100018d0 - . - 1
.org 0x85b
L_1000185b:
    mov    edx,DWORD PTR [ebx+0x50]
.org 0x85e
L_1000185e:
    test   edx,edx
.org 0x860
L_10001860:
    # jne    10001904
    .byte 0xf,0x85
    .long L_10001904 - . - 4
.org 0x866
L_10001866:
    mov    eax,DWORD PTR [ebx+0x54]
.org 0x869
L_10001869:
    test   eax,eax
.org 0x86b
L_1000186b:
    # jne    10001833
    .byte 0x75
    .byte L_10001833 - . - 1
.org 0x86d
L_1000186d:
    cmp    DWORD PTR [esp+0x20],0x1fff
.org 0x875
L_10001875:
    # ja     10001948
    .byte 0xf,0x87
    .long L_10001948 - . - 4
.org 0x87b
L_1000187b:
    mov    eax,ds:0x10005048
.org 0x880
L_10001880:
    test   eax,eax
.org 0x882
L_10001882:
    # je     10001948
    .byte 0xf,0x84
    .long L_10001948 - . - 4
.org 0x888
L_10001888:
    cmp    DWORD PTR [0x10005044],0x4826b8
.org 0x892
L_10001892:
    # jbe    10001948
    .byte 0xf,0x86
    .long L_10001948 - . - 4
.org 0x898
L_10001898:
    mov    eax,DWORD PTR [eax+0x4826b4]
.org 0x89e
L_1000189e:
    test   eax,eax
.org 0x8a0
L_100018a0:
    # je     10001948
    .byte 0xf,0x84
    .long L_10001948 - . - 4
.org 0x8a6
L_100018a6:
    mov    edx,DWORD PTR [eax]
.org 0x8a8
L_100018a8:
    test   edx,edx
.org 0x8aa
L_100018aa:
    # je     10001948
    .byte 0xf,0x84
    .long L_10001948 - . - 4
.org 0x8b0
L_100018b0:
    imul   eax,DWORD PTR [esp+0x20],0x124
.org 0x8b8
L_100018b8:
    cmp    BYTE PTR [edx+eax*1],0x1
.org 0x8bc
L_100018bc:
    mov    eax,0x2
.org 0x8c1
L_100018c1:
    sbb    eax,0xffffffff
.org 0x8c4
L_100018c4:
    # jmp    10001838
    .byte 0xe9
    .long L_10001838 - . - 4
.org 0x8c9
L_100018c9:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x8d0
L_100018d0:
    cmp    DWORD PTR [esp+0xc],0x2
.org 0x8d5
L_100018d5:
    # je     10001910
    .byte 0x74
    .byte L_10001910 - . - 1
.org 0x8d7
L_100018d7:
    mov    eax,ds:0x1000502c
.org 0x8dc
L_100018dc:
    test   eax,eax
.org 0x8de
L_100018de:
    # jne    10001904
    .byte 0x75
    .byte L_10001904 - . - 1
.org 0x8e0
L_100018e0:
    mov    eax,ds:0x10005040
.org 0x8e5
L_100018e5:
    test   eax,eax
.org 0x8e7
L_100018e7:
    # je     10001904
    .byte 0x74
    .byte L_10001904 - . - 1
.org 0x8e9
L_100018e9:
    mov    DWORD PTR [0x1000502c],0x1
.org 0x8f3
L_100018f3:
    sub    esp,0x8
.org 0x8f6
L_100018f6:
    push   0x100040c0
.org 0x8fb
L_100018fb:
    push   0x10004330
.org 0x900
L_10001900:
    call   eax
.org 0x902
L_10001902:
    pop    ecx
.org 0x903
L_10001903:
    pop    ebx
.org 0x904
L_10001904:
    xor    eax,eax
.org 0x906
L_10001906:
    # jmp    10001838
    .byte 0xe9
    .long L_10001838 - . - 4
.org 0x90b
L_1000190b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x910
L_10001910:
    mov    ecx,DWORD PTR [0x10005028]
.org 0x916
L_10001916:
    test   ecx,ecx
.org 0x918
L_10001918:
    # jne    10001904
    .byte 0x75
    .byte L_10001904 - . - 1
.org 0x91a
L_1000191a:
    mov    eax,ds:0x10005040
.org 0x91f
L_1000191f:
    test   eax,eax
.org 0x921
L_10001921:
    # je     10001904
    .byte 0x74
    .byte L_10001904 - . - 1
.org 0x923
L_10001923:
    mov    DWORD PTR [0x10005028],0x1
.org 0x92d
L_1000192d:
    sub    esp,0x8
.org 0x930
L_10001930:
    push   0x10004080
.org 0x935
L_10001935:
    push   0x10004330
.org 0x93a
L_1000193a:
    call   eax
.org 0x93c
L_1000193c:
    pop    eax
.org 0x93d
L_1000193d:
    xor    eax,eax
.org 0x93f
L_1000193f:
    pop    edx
.org 0x940
L_10001940:
    # jmp    10001838
    .byte 0xe9
    .long L_10001838 - . - 4
.org 0x945
L_10001945:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x948
L_10001948:
    mov    eax,0x3
.org 0x94d
L_1000194d:
    # jmp    10001838
    .byte 0xe9
    .long L_10001838 - . - 4
.org 0x952
L_10001952:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x95a
L_1000195a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x960
L_10001960:
    # Original function: FHDUU_MMCompatAllowed
    push   edi
.org 0x961
L_10001961:
    push   esi
.org 0x962
L_10001962:
    push   ebx
.org 0x963
L_10001963:
    sub    esp,0x10
.org 0x966
L_10001966:
    mov    ebx,DWORD PTR [esp+0x24]
.org 0x96a
L_1000196a:
    test   ebx,ebx
.org 0x96c
L_1000196c:
    # je     100019d0
    .byte 0x74
    .byte L_100019d0 - . - 1
.org 0x96e
L_1000196e:
    mov    edi,DWORD PTR [ebx+0x3c]
.org 0x971
L_10001971:
    test   edi,edi
.org 0x973
L_10001973:
    # je     100019d0
    .byte 0x74
    .byte L_100019d0 - . - 1
.org 0x975
L_10001975:
    xor    eax,eax
.org 0x977
L_10001977:
    mov    ecx,0x46
.org 0x97c
L_1000197c:
    mov    esi,0x46
.org 0x981
L_10001981:
    # jmp    1000199e
    .byte 0xeb
    .byte L_1000199e - . - 1
.org 0x983
L_10001983:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x988
L_10001988:
    test   cx,cx
.org 0x98b
L_1000198b:
    # je     100019a7
    .byte 0x74
    .byte L_100019a7 - . - 1
.org 0x98d
L_1000198d:
    add    eax,0x2
.org 0x990
L_10001990:
    cmp    dx,cx
.org 0x993
L_10001993:
    # jne    100019d0
    .byte 0x75
    .byte L_100019d0 - . - 1
.org 0x995
L_10001995:
    movzx  esi,WORD PTR [eax+0x10004040]
.org 0x99c
L_1000199c:
    mov    ecx,esi
.org 0x99e
L_1000199e:
    movzx  edx,WORD PTR [edi+eax*1]
.org 0x9a2
L_100019a2:
    test   dx,dx
.org 0x9a5
L_100019a5:
    # jne    10001988
    .byte 0x75
    .byte L_10001988 - . - 1
.org 0x9a7
L_100019a7:
    cmp    si,dx
.org 0x9aa
L_100019aa:
    # jne    100019d0
    .byte 0x75
    .byte L_100019d0 - . - 1
.org 0x9ac
L_100019ac:
    mov    eax,ebx
.org 0x9ae
L_100019ae:
    # call   10001410
    .byte 0xe8
    .long L_10001410 - . - 4
.org 0x9b3
L_100019b3:
    test   eax,eax
.org 0x9b5
L_100019b5:
    # je     100019d0
    .byte 0x74
    .byte L_100019d0 - . - 1
.org 0x9b7
L_100019b7:
    mov    ecx,DWORD PTR [esp+0x20]
.org 0x9bb
L_100019bb:
    test   ecx,ecx
.org 0x9bd
L_100019bd:
    # je     100019ca
    .byte 0x74
    .byte L_100019ca - . - 1
.org 0x9bf
L_100019bf:
    mov    eax,DWORD PTR [esp+0x20]
.org 0x9c3
L_100019c3:
    mov    edx,DWORD PTR [eax+0x50]
.org 0x9c6
L_100019c6:
    test   edx,edx
.org 0x9c8
L_100019c8:
    # jne    100019e0
    .byte 0x75
    .byte L_100019e0 - . - 1
.org 0x9ca
L_100019ca:
    xor    eax,eax
.org 0x9cc
L_100019cc:
    # jmp    100019d5
    .byte 0xeb
    .byte L_100019d5 - . - 1
.org 0x9ce
L_100019ce:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x9d0
L_100019d0:
    mov    eax,0x1
.org 0x9d5
L_100019d5:
    add    esp,0x10
.org 0x9d8
L_100019d8:
    pop    ebx
.org 0x9d9
L_100019d9:
    pop    esi
.org 0x9da
L_100019da:
    pop    edi
.org 0x9db
L_100019db:
    ret
.org 0x9dc
L_100019dc:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x9e0
L_100019e0:
    sub    edx,0x1
.org 0x9e3
L_100019e3:
    lea    ecx,[esp+0xc]
.org 0x9e7
L_100019e7:
    mov    eax,ebx
.org 0x9e9
L_100019e9:
    mov    DWORD PTR [esp+0xc],0x0
.org 0x9f1
L_100019f1:
    # call   10001570
    .byte 0xe8
    .long L_10001570 - . - 4
.org 0x9f6
L_100019f6:
    test   eax,eax
.org 0x9f8
L_100019f8:
    # je     10001a06
    .byte 0x74
    .byte L_10001a06 - . - 1
.org 0x9fa
L_100019fa:
    mov    edx,DWORD PTR [ebx+0x50]
.org 0x9fd
L_100019fd:
    xor    eax,eax
.org 0x9ff
L_100019ff:
    test   edx,edx
.org 0xa01
L_10001a01:
    sete   al
.org 0xa04
L_10001a04:
    # jmp    100019d5
    .byte 0xeb
    .byte L_100019d5 - . - 1
.org 0xa06
L_10001a06:
    cmp    DWORD PTR [esp+0xc],0x2
.org 0xa0b
L_10001a0b:
    # je     10001a3f
    .byte 0x74
    .byte L_10001a3f - . - 1
.org 0xa0d
L_10001a0d:
    mov    edi,DWORD PTR [0x1000502c]
.org 0xa13
L_10001a13:
    test   edi,edi
.org 0xa15
L_10001a15:
    # jne    100019ca
    .byte 0x75
    .byte L_100019ca - . - 1
.org 0xa17
L_10001a17:
    mov    eax,ds:0x10005040
.org 0xa1c
L_10001a1c:
    test   eax,eax
.org 0xa1e
L_10001a1e:
    # je     100019ca
    .byte 0x74
    .byte L_100019ca - . - 1
.org 0xa20
L_10001a20:
    mov    DWORD PTR [0x1000502c],0x1
.org 0xa2a
L_10001a2a:
    sub    esp,0x8
.org 0xa2d
L_10001a2d:
    push   0x100040c0
.org 0xa32
L_10001a32:
    push   0x10004330
.org 0xa37
L_10001a37:
    call   eax
.org 0xa39
L_10001a39:
    pop    eax
.org 0xa3a
L_10001a3a:
    xor    eax,eax
.org 0xa3c
L_10001a3c:
    pop    edx
.org 0xa3d
L_10001a3d:
    # jmp    100019d5
    .byte 0xeb
    .byte L_100019d5 - . - 1
.org 0xa3f
L_10001a3f:
    mov    esi,DWORD PTR [0x10005028]
.org 0xa45
L_10001a45:
    test   esi,esi
.org 0xa47
L_10001a47:
    # jne    100019ca
    .byte 0x75
    .byte L_100019ca - . - 1
.org 0xa49
L_10001a49:
    mov    eax,ds:0x10005040
.org 0xa4e
L_10001a4e:
    test   eax,eax
.org 0xa50
L_10001a50:
    # je     100019ca
    .byte 0xf,0x84
    .long L_100019ca - . - 4
.org 0xa56
L_10001a56:
    mov    DWORD PTR [0x10005028],0x1
.org 0xa60
L_10001a60:
    sub    esp,0x8
.org 0xa63
L_10001a63:
    push   0x10004080
.org 0xa68
L_10001a68:
    push   0x10004330
.org 0xa6d
L_10001a6d:
    call   eax
.org 0xa6f
L_10001a6f:
    xor    eax,eax
.org 0xa71
L_10001a71:
    pop    ecx
.org 0xa72
L_10001a72:
    pop    ebx
.org 0xa73
L_10001a73:
    # jmp    100019d5
    .byte 0xe9
    .long L_100019d5 - . - 4
.org 0xa78
L_10001a78:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xa80
L_10001a80:
    # Original function: XenoPlugin_Query
    push   ebx
.org 0xa81
L_10001a81:
    mov    edx,DWORD PTR [esp+0x8]
.org 0xa85
L_10001a85:
    test   edx,edx
.org 0xa87
L_10001a87:
    # je     10001b58
    .byte 0xf,0x84
    .long L_10001b58 - . - 4
.org 0xa8d
L_10001a8d:
    mov    ebx,DWORD PTR [edx]
.org 0xa8f
L_10001a8f:
    xor    eax,eax
.org 0xa91
L_10001a91:
    cmp    ebx,0x207
.org 0xa97
L_10001a97:
    # ja     10001aa0
    .byte 0x77
    .byte L_10001aa0 - . - 1
.org 0xa99
L_10001a99:
    pop    ebx
.org 0xa9a
L_10001a9a:
    ret    0x4
.org 0xa9d
L_10001a9d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0xaa0
L_10001aa0:
    mov    DWORD PTR [edx+0x4],0x1
.org 0xaa7
L_10001aa7:
    # jmp    10001abd
    .byte 0xeb
    .byte L_10001abd - . - 1
.org 0xaa9
L_10001aa9:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xab0
L_10001ab0:
    mov    WORD PTR [edx+eax*1+0x8],cx
.org 0xab5
L_10001ab5:
    add    eax,0x2
.org 0xab8
L_10001ab8:
    cmp    eax,0x7e
.org 0xabb
L_10001abb:
    # je     10001ac9
    .byte 0x74
    .byte L_10001ac9 - . - 1
.org 0xabd
L_10001abd:
    movzx  ecx,WORD PTR [eax+0x10004330]
.org 0xac4
L_10001ac4:
    test   cx,cx
.org 0xac7
L_10001ac7:
    # jne    10001ab0
    .byte 0x75
    .byte L_10001ab0 - . - 1
.org 0xac9
L_10001ac9:
    xor    ecx,ecx
.org 0xacb
L_10001acb:
    mov    WORD PTR [edx+eax*1+0x8],cx
.org 0xad0
L_10001ad0:
    xor    eax,eax
.org 0xad2
L_10001ad2:
    # jmp    10001ae8
    .byte 0xeb
    .byte L_10001ae8 - . - 1
.org 0xad4
L_10001ad4:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0xad8
L_10001ad8:
    mov    WORD PTR [edx+eax*1+0x88],cx
.org 0xae0
L_10001ae0:
    add    eax,0x2
.org 0xae3
L_10001ae3:
    cmp    eax,0x3e
.org 0xae6
L_10001ae6:
    # je     10001af4
    .byte 0x74
    .byte L_10001af4 - . - 1
.org 0xae8
L_10001ae8:
    movzx  ecx,WORD PTR [eax+0x10004320]
.org 0xaef
L_10001aef:
    test   cx,cx
.org 0xaf2
L_10001af2:
    # jne    10001ad8
    .byte 0x75
    .byte L_10001ad8 - . - 1
.org 0xaf4
L_10001af4:
    xor    ecx,ecx
.org 0xaf6
L_10001af6:
    mov    WORD PTR [edx+eax*1+0x88],cx
.org 0xafe
L_10001afe:
    xor    eax,eax
.org 0xb00
L_10001b00:
    # jmp    10001b1a
    .byte 0xeb
    .byte L_10001b1a - . - 1
.org 0xb02
L_10001b02:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0xb08
L_10001b08:
    mov    WORD PTR [edx+eax*1+0xc8],cx
.org 0xb10
L_10001b10:
    add    eax,0x2
.org 0xb13
L_10001b13:
    cmp    eax,0x13e
.org 0xb18
L_10001b18:
    # je     10001b26
    .byte 0x74
    .byte L_10001b26 - . - 1
.org 0xb1a
L_10001b1a:
    movzx  ecx,WORD PTR [eax+0x100042a0]
.org 0xb21
L_10001b21:
    test   cx,cx
.org 0xb24
L_10001b24:
    # jne    10001b08
    .byte 0x75
    .byte L_10001b08 - . - 1
.org 0xb26
L_10001b26:
    xor    ecx,ecx
.org 0xb28
L_10001b28:
    mov    WORD PTR [edx+eax*1+0xc8],cx
.org 0xb30
L_10001b30:
    cmp    ebx,0x20f
.org 0xb36
L_10001b36:
    # jbe    10001b4c
    .byte 0x76
    .byte L_10001b4c - . - 1
.org 0xb38
L_10001b38:
    mov    DWORD PTR [edx+0x20c],0x0
.org 0xb42
L_10001b42:
    mov    DWORD PTR [edx+0x208],0x0
.org 0xb4c
L_10001b4c:
    mov    eax,0x1
.org 0xb51
L_10001b51:
    pop    ebx
.org 0xb52
L_10001b52:
    ret    0x4
.org 0xb55
L_10001b55:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0xb58
L_10001b58:
    xor    eax,eax
.org 0xb5a
L_10001b5a:
    pop    ebx
.org 0xb5b
L_10001b5b:
    ret    0x4
.org 0xb5e
L_10001b5e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xb60
L_10001b60:
    # Original function: XenoPlugin_Initialize
    push   ebp
.org 0xb61
L_10001b61:
    mov    edx,0x1
.org 0xb66
L_10001b66:
    push   edi
.org 0xb67
L_10001b67:
    push   esi
.org 0xb68
L_10001b68:
    push   ebx
.org 0xb69
L_10001b69:
    sub    esp,0x5c
.org 0xb6c
L_10001b6c:
    mov    eax,DWORD PTR [esp+0x70]
.org 0xb70
L_10001b70:
    test   eax,eax
.org 0xb72
L_10001b72:
    # je     10001b7f
    .byte 0x74
    .byte L_10001b7f - . - 1
.org 0xb74
L_10001b74:
    cmp    DWORD PTR [eax],0x1f
.org 0xb77
L_10001b77:
    # jbe    10001b7f
    .byte 0x76
    .byte L_10001b7f - . - 1
.org 0xb79
L_10001b79:
    cmp    DWORD PTR [eax+0x4],0x1
.org 0xb7d
L_10001b7d:
    # je     10001b90
    .byte 0x74
    .byte L_10001b90 - . - 1
.org 0xb7f
L_10001b7f:
    add    esp,0x5c
.org 0xb82
L_10001b82:
    mov    eax,edx
.org 0xb84
L_10001b84:
    pop    ebx
.org 0xb85
L_10001b85:
    pop    esi
.org 0xb86
L_10001b86:
    pop    edi
.org 0xb87
L_10001b87:
    pop    ebp
.org 0xb88
L_10001b88:
    ret    0x4
.org 0xb8b
L_10001b8b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0xb90
L_10001b90:
    mov    edx,DWORD PTR [eax+0x8]
.org 0xb93
L_10001b93:
    mov    eax,DWORD PTR [eax+0x1c]
.org 0xb96
L_10001b96:
    mov    DWORD PTR [0x10005048],edx
.org 0xb9c
L_10001b9c:
    mov    ds:0x10005040,eax
.org 0xba1
L_10001ba1:
    test   edx,edx
.org 0xba3
L_10001ba3:
    # je     10001ca0
    .byte 0xf,0x84
    .long L_10001ca0 - . - 4
.org 0xba9
L_10001ba9:
    cmp    WORD PTR [edx],0x5a4d
.org 0xbae
L_10001bae:
    # jne    10001ca0
    .byte 0xf,0x85
    .long L_10001ca0 - . - 4
.org 0xbb4
L_10001bb4:
    add    edx,DWORD PTR [edx+0x3c]
.org 0xbb7
L_10001bb7:
    cmp    DWORD PTR [edx],0x4550
.org 0xbbd
L_10001bbd:
    # jne    10001ca0
    .byte 0xf,0x85
    .long L_10001ca0 - . - 4
.org 0xbc3
L_10001bc3:
    cmp    WORD PTR [edx+0x18],0x10b
.org 0xbc9
L_10001bc9:
    # jne    10001ca0
    .byte 0xf,0x85
    .long L_10001ca0 - . - 4
.org 0xbcf
L_10001bcf:
    mov    eax,DWORD PTR [edx+0x50]
.org 0xbd2
L_10001bd2:
    mov    ds:0x10005044,eax
.org 0xbd7
L_10001bd7:
    cmp    eax,0x4826b8
.org 0xbdc
L_10001bdc:
    # jbe    10001ca0
    .byte 0xf,0x86
    .long L_10001ca0 - . - 4
.org 0xbe2
L_10001be2:
    # call   10001000
    .byte 0xe8
    .long L_10001000 - . - 4
.org 0xbe7
L_10001be7:
    mov    esi,eax
.org 0xbe9
L_10001be9:
    test   eax,eax
.org 0xbeb
L_10001beb:
    # je     10001cd0
    .byte 0xf,0x84
    .long L_10001cd0 - . - 4
.org 0xbf1
L_10001bf1:
    mov    esi,DWORD PTR [eax+0xc]
.org 0xbf4
L_10001bf4:
    test   esi,esi
.org 0xbf6
L_10001bf6:
    # je     10001cd0
    .byte 0xf,0x84
    .long L_10001cd0 - . - 4
.org 0xbfc
L_10001bfc:
    mov    ebx,DWORD PTR [esi+0x14]
.org 0xbff
L_10001bff:
    lea    eax,[esi+0x14]
.org 0xc02
L_10001c02:
    test   ebx,ebx
.org 0xc04
L_10001c04:
    # je     10001f90
    .byte 0xf,0x84
    .long L_10001f90 - . - 4
.org 0xc0a
L_10001c0a:
    cmp    eax,ebx
.org 0xc0c
L_10001c0c:
    # je     10001f90
    .byte 0xf,0x84
    .long L_10001f90 - . - 4
.org 0xc12
L_10001c12:
    xor    edi,edi
.org 0xc14
L_10001c14:
    # jmp    10001c40
    .byte 0xeb
    .byte L_10001c40 - . - 1
.org 0xc16
L_10001c16:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xc1e
L_10001c1e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xc20
L_10001c20:
    mov    ebx,DWORD PTR [ebx]
.org 0xc22
L_10001c22:
    add    edi,0x1
.org 0xc25
L_10001c25:
    test   ebx,ebx
.org 0xc27
L_10001c27:
    setne  cl
.org 0xc2a
L_10001c2a:
    cmp    eax,ebx
.org 0xc2c
L_10001c2c:
    setne  dl
.org 0xc2f
L_10001c2f:
    test   cl,dl
.org 0xc31
L_10001c31:
    # je     10001f90
    .byte 0xf,0x84
    .long L_10001f90 - . - 4
.org 0xc37
L_10001c37:
    cmp    edi,0x20
.org 0xc3a
L_10001c3a:
    # je     10001f90
    .byte 0xf,0x84
    .long L_10001f90 - . - 4
.org 0xc40
L_10001c40:
    mov    esi,DWORD PTR [ebx+0x10]
.org 0xc43
L_10001c43:
    mov    ebp,DWORD PTR [ebx+0x28]
.org 0xc46
L_10001c46:
    test   esi,esi
.org 0xc48
L_10001c48:
    # je     10001c20
    .byte 0x74
    .byte L_10001c20 - . - 1
.org 0xc4a
L_10001c4a:
    test   ebp,ebp
.org 0xc4c
L_10001c4c:
    # je     10001c20
    .byte 0x74
    .byte L_10001c20 - . - 1
.org 0xc4e
L_10001c4e:
    mov    DWORD PTR [esp+0xc],esi
.org 0xc52
L_10001c52:
    mov    edx,0x6e
.org 0xc57
L_10001c57:
    xor    ecx,ecx
.org 0xc59
L_10001c59:
    mov    DWORD PTR [esp+0x4],eax
.org 0xc5d
L_10001c5d:
    mov    DWORD PTR [esp+0x8],ebx
.org 0xc61
L_10001c61:
    # jmp    10001c76
    .byte 0xeb
    .byte L_10001c76 - . - 1
.org 0xc63
L_10001c63:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0xc68
L_10001c68:
    movzx  edx,BYTE PTR [ecx+0x10004001]
.org 0xc6f
L_10001c6f:
    add    ecx,0x1
.org 0xc72
L_10001c72:
    test   dl,dl
.org 0xc74
L_10001c74:
    # je     10001cb8
    .byte 0x74
    .byte L_10001cb8 - . - 1
.org 0xc76
L_10001c76:
    movzx  eax,WORD PTR [ebp+ecx*2+0x0]
.org 0xc7b
L_10001c7b:
    lea    esi,[eax-0x41]
.org 0xc7e
L_10001c7e:
    lea    ebx,[eax+0x20]
.org 0xc81
L_10001c81:
    cmp    si,0x1a
.org 0xc85
L_10001c85:
    cmovb  eax,ebx
.org 0xc88
L_10001c88:
    cmp    dx,ax
.org 0xc8b
L_10001c8b:
    # je     10001c68
    .byte 0x74
    .byte L_10001c68 - . - 1
.org 0xc8d
L_10001c8d:
    mov    eax,DWORD PTR [esp+0x4]
.org 0xc91
L_10001c91:
    mov    ebx,DWORD PTR [esp+0x8]
.org 0xc95
L_10001c95:
    # jmp    10001c20
    .byte 0xeb
    .byte L_10001c20 - . - 1
.org 0xc97
L_10001c97:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xc9f
L_10001c9f:
    # Alignment padding: nop
    .byte 0x90
.org 0xca0
L_10001ca0:
    add    esp,0x5c
.org 0xca3
L_10001ca3:
    mov    edx,0x2
.org 0xca8
L_10001ca8:
    pop    ebx
.org 0xca9
L_10001ca9:
    mov    eax,edx
.org 0xcab
L_10001cab:
    pop    esi
.org 0xcac
L_10001cac:
    pop    edi
.org 0xcad
L_10001cad:
    pop    ebp
.org 0xcae
L_10001cae:
    ret    0x4
.org 0xcb1
L_10001cb1:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xcb8
L_10001cb8:
    cmp    WORD PTR [ebp+ecx*2+0x0],0x0
.org 0xcbe
L_10001cbe:
    mov    esi,DWORD PTR [esp+0xc]
.org 0xcc2
L_10001cc2:
    mov    eax,DWORD PTR [esp+0x4]
.org 0xcc6
L_10001cc6:
    mov    ebx,DWORD PTR [esp+0x8]
.org 0xcca
L_10001cca:
    # jne    10001c20
    .byte 0xf,0x85
    .long L_10001c20 - . - 4
.org 0xcd0
L_10001cd0:
    mov    edx,0x1000304d
.org 0xcd5
L_10001cd5:
    mov    eax,esi
.org 0xcd7
L_10001cd7:
    # call   10001010
    .byte 0xe8
    .long L_10001010 - . - 4
.org 0xcdc
L_10001cdc:
    mov    edx,0x10003064
.org 0xce1
L_10001ce1:
    mov    ds:0x1000503c,eax
.org 0xce6
L_10001ce6:
    mov    ebx,eax
.org 0xce8
L_10001ce8:
    mov    eax,esi
.org 0xcea
L_10001cea:
    # call   10001010
    .byte 0xe8
    .long L_10001010 - . - 4
.org 0xcef
L_10001cef:
    mov    ds:0x10005038,eax
.org 0xcf4
L_10001cf4:
    test   ebx,ebx
.org 0xcf6
L_10001cf6:
    # je     10001f97
    .byte 0xf,0x84
    .long L_10001f97 - . - 4
.org 0xcfc
L_10001cfc:
    test   eax,eax
.org 0xcfe
L_10001cfe:
    # je     10001f97
    .byte 0xf,0x84
    .long L_10001f97 - . - 4
.org 0xd04
L_10001d04:
    mov    edi,0xfffff8c4
.org 0xd09
L_10001d09:
    mov    ebp,0xffff94c4
.org 0xd0e
L_10001d0e:
    mov    ecx,DWORD PTR [0x10005044]
.org 0xd14
L_10001d14:
    mov    eax,0xfffff4c4
.org 0xd19
L_10001d19:
    mov    DWORD PTR [esp+0x20],0x83ec8b55
.org 0xd21
L_10001d21:
    mov    WORD PTR [esp+0x24],di
.org 0xd26
L_10001d26:
    mov    DWORD PTR [esp+0x26],0x83ec8b55
.org 0xd2e
L_10001d2e:
    mov    WORD PTR [esp+0x2a],bp
.org 0xd33
L_10001d33:
    mov    DWORD PTR [esp+0x2c],0x83ec8b55
.org 0xd3b
L_10001d3b:
    mov    WORD PTR [esp+0x30],ax
.org 0xd40
L_10001d40:
    cmp    ecx,0x34c0f6
.org 0xd46
L_10001d46:
    # jbe    10001fc0
    .byte 0xf,0x86
    .long L_10001fc0 - . - 4
.org 0xd4c
L_10001d4c:
    mov    esi,0xffffb0c4
.org 0xd51
L_10001d51:
    mov    DWORD PTR [esp+0x32],0x83ec8b55
.org 0xd59
L_10001d59:
    mov    edx,DWORD PTR [0x10005048]
.org 0xd5f
L_10001d5f:
    xor    eax,eax
.org 0xd61
L_10001d61:
    mov    WORD PTR [esp+0x36],si
.org 0xd66
L_10001d66:
    movzx  ebx,BYTE PTR [esp+eax*1+0x32]
.org 0xd6b
L_10001d6b:
    cmp    BYTE PTR [edx+eax*1+0x34b808],bl
.org 0xd72
L_10001d72:
    # jne    10001fc0
    .byte 0xf,0x85
    .long L_10001fc0 - . - 4
.org 0xd78
L_10001d78:
    add    eax,0x1
.org 0xd7b
L_10001d7b:
    cmp    eax,0x6
.org 0xd7e
L_10001d7e:
    # jne    10001d66
    .byte 0x75
    .byte L_10001d66 - . - 1
.org 0xd80
L_10001d80:
    mov    ebx,0xffffd88b
.org 0xd85
L_10001d85:
    mov    DWORD PTR [esp+0x38],0xf28b5653
.org 0xd8d
L_10001d8d:
    xor    eax,eax
.org 0xd8f
L_10001d8f:
    mov    WORD PTR [esp+0x3c],bx
.org 0xd94
L_10001d94:
    movzx  ebx,BYTE PTR [esp+eax*1+0x20]
.org 0xd99
L_10001d99:
    cmp    BYTE PTR [edx+eax*1+0x325c80],bl
.org 0xda0
L_10001da0:
    # jne    10001fa1
    .byte 0xf,0x85
    .long L_10001fa1 - . - 4
.org 0xda6
L_10001da6:
    movzx  ebx,BYTE PTR [esp+eax*1+0x26]
.org 0xdab
L_10001dab:
    cmp    BYTE PTR [edx+eax*1+0x34adec],bl
.org 0xdb2
L_10001db2:
    # jne    10001fa1
    .byte 0xf,0x85
    .long L_10001fa1 - . - 4
.org 0xdb8
L_10001db8:
    movzx  ebx,BYTE PTR [esp+eax*1+0x2c]
.org 0xdbd
L_10001dbd:
    cmp    BYTE PTR [edx+eax*1+0x34c0f0],bl
.org 0xdc4
L_10001dc4:
    # jne    10001fa1
    .byte 0xf,0x85
    .long L_10001fa1 - . - 4
.org 0xdca
L_10001dca:
    movzx  ebx,BYTE PTR [esp+eax*1+0x38]
.org 0xdcf
L_10001dcf:
    cmp    BYTE PTR [edx+eax*1+0x16368],bl
.org 0xdd6
L_10001dd6:
    # jne    10001fa1
    .byte 0xf,0x85
    .long L_10001fa1 - . - 4
.org 0xddc
L_10001ddc:
    add    eax,0x1
.org 0xddf
L_10001ddf:
    cmp    eax,0x6
.org 0xde2
L_10001de2:
    # jne    10001d94
    .byte 0x75
    .byte L_10001d94 - . - 1
.org 0xde4
L_10001de4:
    mov    eax,0xfffff745
.org 0xde9
L_10001de9:
    mov    DWORD PTR [esp+0x3e],0x88c0920f
.org 0xdf1
L_10001df1:
    mov    WORD PTR [esp+0x42],ax
.org 0xdf6
L_10001df6:
    xor    eax,eax
.org 0xdf8
L_10001df8:
    mov    DWORD PTR [esp+0x1b],0x458b1f72
.org 0xe00
L_10001e00:
    mov    BYTE PTR [esp+0x1f],0xf8
.org 0xe05
L_10001e05:
    mov    DWORD PTR [esp+0x44],0x193830f
.org 0xe0d
L_10001e0d:
    mov    WORD PTR [esp+0x48],ax
.org 0xe12
L_10001e12:
    cmp    ecx,0x34c640
.org 0xe18
L_10001e18:
    # jbe    10001fc0
    .byte 0xf,0x86
    .long L_10001fc0 - . - 4
.org 0xe1e
L_10001e1e:
    xor    eax,eax
.org 0xe20
L_10001e20:
    movzx  ecx,BYTE PTR [esp+eax*1+0x3e]
.org 0xe25
L_10001e25:
    cmp    BYTE PTR [edx+eax*1+0x34c3be],cl
.org 0xe2c
L_10001e2c:
    # jne    10001fc0
    .byte 0xf,0x85
    .long L_10001fc0 - . - 4
.org 0xe32
L_10001e32:
    movzx  ecx,BYTE PTR [esp+eax*1+0x44]
.org 0xe37
L_10001e37:
    cmp    BYTE PTR [edx+eax*1+0x34c63a],cl
.org 0xe3e
L_10001e3e:
    # jne    10001fc0
    .byte 0xf,0x85
    .long L_10001fc0 - . - 4
.org 0xe44
L_10001e44:
    add    eax,0x1
.org 0xe47
L_10001e47:
    cmp    eax,0x6
.org 0xe4a
L_10001e4a:
    # jne    10001e20
    .byte 0x75
    .byte L_10001e20 - . - 1
.org 0xe4c
L_10001e4c:
    xor    eax,eax
.org 0xe4e
L_10001e4e:
    movzx  ecx,BYTE PTR [esp+eax*1+0x1b]
.org 0xe53
L_10001e53:
    cmp    BYTE PTR [edx+eax*1+0x34c514],cl
.org 0xe5a
L_10001e5a:
    # jne    10001fc0
    .byte 0xf,0x85
    .long L_10001fc0 - . - 4
.org 0xe60
L_10001e60:
    add    eax,0x1
.org 0xe63
L_10001e63:
    cmp    eax,0x5
.org 0xe66
L_10001e66:
    # jne    10001e4e
    .byte 0x75
    .byte L_10001e4e - . - 1
.org 0xe68
L_10001e68:
    lea    eax,[edx+0x16368]
.org 0xe6e
L_10001e6e:
    sub    esp,0xc
.org 0xe71
L_10001e71:
    mov    ecx,0x100011d0
.org 0xe76
L_10001e76:
    mov    DWORD PTR [0x10005024],0x100011c0
.org 0xe80
L_10001e80:
    mov    ds:0x10005014,eax
.org 0xe85
L_10001e85:
    lea    edi,[esp+0x2c]
.org 0xe89
L_10001e89:
    lea    eax,[edx+0x34b808]
.org 0xe8f
L_10001e8f:
    mov    ds:0x1000501c,eax
.org 0xe94
L_10001e94:
    lea    eax,[edx+0x34c3c4]
.org 0xe9a
L_10001e9a:
    mov    ds:0x10005010,eax
.org 0xe9f
L_10001e9f:
    lea    eax,[edx+0x34c535]
.org 0xea5
L_10001ea5:
    mov    ds:0x10005008,eax
.org 0xeaa
L_10001eaa:
    lea    eax,[edx+0x34c519]
.org 0xeb0
L_10001eb0:
    mov    ds:0x10005000,eax
.org 0xeb5
L_10001eb5:
    lea    eax,[edx+0x34c640]
.org 0xebb
L_10001ebb:
    push   edi
.org 0xebc
L_10001ebc:
    mov    ds:0x1000500c,eax
.org 0xec1
L_10001ec1:
    lea    eax,[edx+0x34c7d3]
.org 0xec7
L_10001ec7:
    mov    ds:0x10005004,eax
.org 0xecc
L_10001ecc:
    lea    eax,[edx+0x325c80]
.org 0xed2
L_10001ed2:
    mov    edx,0x100011c0
.org 0xed7
L_10001ed7:
    mov    DWORD PTR [0x10005020],0x100011f0
.org 0xee1
L_10001ee1:
    mov    DWORD PTR [0x10005018],0x10001270
.org 0xeeb
L_10001eeb:
    # call   10001380
    .byte 0xe8
    .long L_10001380 - . - 4
.org 0xef0
L_10001ef0:
    add    esp,0x10
.org 0xef3
L_10001ef3:
    mov    edx,0x5
.org 0xef8
L_10001ef8:
    test   eax,eax
.org 0xefa
L_10001efa:
    # je     10001b7f
    .byte 0xf,0x84
    .long L_10001b7f - . - 4
.org 0xf00
L_10001f00:
    sub    esp,0xc
.org 0xf03
L_10001f03:
    mov    eax,ds:0x10005048
.org 0xf08
L_10001f08:
    mov    edx,0x100011f0
.org 0xf0d
L_10001f0d:
    mov    ecx,0x10001200
.org 0xf12
L_10001f12:
    lea    edi,[esp+0x32]
.org 0xf16
L_10001f16:
    push   edi
.org 0xf17
L_10001f17:
    add    eax,0x34adec
.org 0xf1c
L_10001f1c:
    # call   10001380
    .byte 0xe8
    .long L_10001380 - . - 4
.org 0xf21
L_10001f21:
    add    esp,0x10
.org 0xf24
L_10001f24:
    mov    edx,0x6
.org 0xf29
L_10001f29:
    test   eax,eax
.org 0xf2b
L_10001f2b:
    # je     10001b7f
    .byte 0xf,0x84
    .long L_10001b7f - . - 4
.org 0xf31
L_10001f31:
    sub    esp,0xc
.org 0xf34
L_10001f34:
    mov    eax,ds:0x10005048
.org 0xf39
L_10001f39:
    mov    edx,0x10001270
.org 0xf3e
L_10001f3e:
    mov    ecx,0x10001280
.org 0xf43
L_10001f43:
    lea    edi,[esp+0x38]
.org 0xf47
L_10001f47:
    push   edi
.org 0xf48
L_10001f48:
    add    eax,0x34c0f0
.org 0xf4d
L_10001f4d:
    # call   10001380
    .byte 0xe8
    .long L_10001380 - . - 4
.org 0xf52
L_10001f52:
    add    esp,0x10
.org 0xf55
L_10001f55:
    mov    edx,0x7
.org 0xf5a
L_10001f5a:
    test   eax,eax
.org 0xf5c
L_10001f5c:
    # je     10001b7f
    .byte 0xf,0x84
    .long L_10001b7f - . - 4
.org 0xf62
L_10001f62:
    mov    edx,DWORD PTR [0x10005048]
.org 0xf68
L_10001f68:
    xor    eax,eax
.org 0xf6a
L_10001f6a:
    # jmp    10001f78
    .byte 0xeb
    .byte L_10001f78 - . - 1
.org 0xf6c
L_10001f6c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0xf70
L_10001f70:
    add    eax,0x1
.org 0xf73
L_10001f73:
    cmp    eax,0x6
.org 0xf76
L_10001f76:
    # je     10001fca
    .byte 0x74
    .byte L_10001fca - . - 1
.org 0xf78
L_10001f78:
    movzx  ecx,BYTE PTR [esp+eax*1+0x3e]
.org 0xf7d
L_10001f7d:
    cmp    BYTE PTR [edx+eax*1+0x34c3be],cl
.org 0xf84
L_10001f84:
    # je     10001f70
    .byte 0x74
    .byte L_10001f70 - . - 1
.org 0xf86
L_10001f86:
    mov    edx,0x8
.org 0xf8b
L_10001f8b:
    # jmp    10001b7f
    .byte 0xe9
    .long L_10001b7f - . - 4
.org 0xf90
L_10001f90:
    xor    esi,esi
.org 0xf92
L_10001f92:
    # jmp    10001cd0
    .byte 0xe9
    .long L_10001cd0 - . - 4
.org 0xf97
L_10001f97:
    mov    edx,0x3
.org 0xf9c
L_10001f9c:
    # jmp    10001b7f
    .byte 0xe9
    .long L_10001b7f - . - 4
.org 0xfa1
L_10001fa1:
    mov    eax,ds:0x10005040
.org 0xfa6
L_10001fa6:
    test   eax,eax
.org 0xfa8
L_10001fa8:
    # je     10001fc0
    .byte 0x74
    .byte L_10001fc0 - . - 1
.org 0xfaa
L_10001faa:
    sub    esp,0x8
.org 0xfad
L_10001fad:
    push   0x10004200
.org 0xfb2
L_10001fb2:
    push   0x10004330
.org 0xfb7
L_10001fb7:
    call   eax
.org 0xfb9
L_10001fb9:
    pop    eax
.org 0xfba
L_10001fba:
    pop    edx
.org 0xfbb
L_10001fbb:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0xfc0
L_10001fc0:
    mov    edx,0x4
.org 0xfc5
L_10001fc5:
    # jmp    10001b7f
    .byte 0xe9
    .long L_10001b7f - . - 4
.org 0xfca
L_10001fca:
    mov    eax,0xfcb4f0d
.org 0xfcf
L_10001fcf:
    mov    ebp,0xffff9000
.org 0xfd4
L_10001fd4:
    mov    ecx,0x6
.org 0xfd9
L_10001fd9:
    mov    DWORD PTR [esp+0x4a],0xe9
.org 0xfe1
L_10001fe1:
    sub    eax,edx
.org 0xfe3
L_10001fe3:
    mov    WORD PTR [esp+0x4e],bp
.org 0xfe8
L_10001fe8:
    mov    DWORD PTR [esp+0x4b],eax
.org 0xfec
L_10001fec:
    lea    eax,[edx+0x34c3be]
.org 0xff2
L_10001ff2:
    lea    edx,[esp+0x4a]
.org 0xff6
L_10001ff6:
    # call   100010f0
    .byte 0xe8
    .long L_100010f0 - . - 4
.org 0xffb
L_10001ffb:
    test   eax,eax
.org 0xffd
L_10001ffd:
    # je     10001f86
    .byte 0x74
    .byte L_10001f86 - . - 1
.org 0xfff
L_10001fff:
    mov    edx,DWORD PTR [0x10005048]
.org 0x1005
L_10002005:
    xor    eax,eax
.org 0x1007
L_10002007:
    # jmp    10002011
    .byte 0xeb
    .byte L_10002011 - . - 1
.org 0x1009
L_10002009:
    add    eax,0x1
.org 0x100c
L_1000200c:
    cmp    eax,0x5
.org 0x100f
L_1000200f:
    # je     10002030
    .byte 0x74
    .byte L_10002030 - . - 1
.org 0x1011
L_10002011:
    movzx  ecx,BYTE PTR [esp+eax*1+0x1b]
.org 0x1016
L_10002016:
    cmp    BYTE PTR [edx+eax*1+0x34c514],cl
.org 0x101d
L_1000201d:
    # je     10002009
    .byte 0x74
    .byte L_10002009 - . - 1
.org 0x101f
L_1000201f:
    mov    edx,0x9
.org 0x1024
L_10002024:
    # jmp    10001b7f
    .byte 0xe9
    .long L_10001b7f - . - 4
.org 0x1029
L_10002029:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1030
L_10002030:
    mov    eax,0xfcb4df7
.org 0x1035
L_10002035:
    mov    edi,0xffff9000
.org 0x103a
L_1000203a:
    mov    ecx,0x5
.org 0x103f
L_1000203f:
    mov    DWORD PTR [esp+0x4a],0xe9
.org 0x1047
L_10002047:
    sub    eax,edx
.org 0x1049
L_10002049:
    mov    WORD PTR [esp+0x4e],di
.org 0x104e
L_1000204e:
    mov    DWORD PTR [esp+0x4b],eax
.org 0x1052
L_10002052:
    lea    eax,[edx+0x34c514]
.org 0x1058
L_10002058:
    lea    edx,[esp+0x4a]
.org 0x105c
L_1000205c:
    # call   100010f0
    .byte 0xe8
    .long L_100010f0 - . - 4
.org 0x1061
L_10002061:
    test   eax,eax
.org 0x1063
L_10002063:
    # je     1000201f
    .byte 0x74
    .byte L_1000201f - . - 1
.org 0x1065
L_10002065:
    mov    edx,DWORD PTR [0x10005048]
.org 0x106b
L_1000206b:
    xor    eax,eax
.org 0x106d
L_1000206d:
    lea    ebx,[edx+0x34c63a]
.org 0x1073
L_10002073:
    # jmp    1000207d
    .byte 0xeb
    .byte L_1000207d - . - 1
.org 0x1075
L_10002075:
    add    eax,0x1
.org 0x1078
L_10002078:
    cmp    eax,0x6
.org 0x107b
L_1000207b:
    # je     10002098
    .byte 0x74
    .byte L_10002098 - . - 1
.org 0x107d
L_1000207d:
    movzx  ecx,BYTE PTR [esp+eax*1+0x44]
.org 0x1082
L_10002082:
    cmp    BYTE PTR [edx+eax*1+0x34c63a],cl
.org 0x1089
L_10002089:
    # je     10002075
    .byte 0x74
    .byte L_10002075 - . - 1
.org 0x108b
L_1000208b:
    mov    edx,0xa
.org 0x1090
L_10002090:
    # jmp    10001b7f
    .byte 0xe9
    .long L_10001b7f - . - 4
.org 0x1095
L_10002095:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x1098
L_10002098:
    mov    eax,0xfcb4d01
.org 0x109d
L_1000209d:
    mov    esi,0xffff9000
.org 0x10a2
L_100020a2:
    mov    ecx,0x6
.org 0x10a7
L_100020a7:
    mov    DWORD PTR [esp+0x4a],0xe9
.org 0x10af
L_100020af:
    sub    eax,edx
.org 0x10b1
L_100020b1:
    mov    WORD PTR [esp+0x4e],si
.org 0x10b6
L_100020b6:
    lea    edx,[esp+0x4a]
.org 0x10ba
L_100020ba:
    mov    DWORD PTR [esp+0x4b],eax
.org 0x10be
L_100020be:
    mov    eax,ebx
.org 0x10c0
L_100020c0:
    # call   100010f0
    .byte 0xe8
    .long L_100010f0 - . - 4
.org 0x10c5
L_100020c5:
    test   eax,eax
.org 0x10c7
L_100020c7:
    # je     1000208b
    .byte 0x74
    .byte L_1000208b - . - 1
.org 0x10c9
L_100020c9:
    mov    eax,ds:0x10005040
.org 0x10ce
L_100020ce:
    test   eax,eax
.org 0x10d0
L_100020d0:
    # je     100020e2
    .byte 0x74
    .byte L_100020e2 - . - 1
.org 0x10d2
L_100020d2:
    push   edx
.org 0x10d3
L_100020d3:
    push   edx
.org 0x10d4
L_100020d4:
    push   0x10004240
.org 0x10d9
L_100020d9:
    push   0x10004330
.org 0x10de
L_100020de:
    call   eax
.org 0x10e0
L_100020e0:
    pop    ecx
.org 0x10e1
L_100020e1:
    pop    ebx
.org 0x10e2
L_100020e2:
    xor    edx,edx
.org 0x10e4
L_100020e4:
    # jmp    10001b7f
    .byte 0xe9
    .long L_10001b7f - . - 4
.org 0x10e9
L_100020e9:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x10f0
L_100020f0:
    # Original function: DllMain
    mov    eax,0x1
.org 0x10f5
L_100020f5:
    ret    0xc
.org 0x10f8
    # Linker constructor/destructor sentinel tables (data, not instructions).
    .long 0xffffffff
    .long 0x0
    .long 0xffffffff
    .long 0x0
.org 0x1108
