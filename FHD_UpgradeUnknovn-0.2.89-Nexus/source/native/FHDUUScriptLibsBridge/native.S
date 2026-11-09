/* Recovered complete x86 source; original C was not supplied.
 * Each instruction and original function name is visible. Fixed layout and
 * explicit branch widths preserve this DLL exactly. */
.intel_syntax noprefix
.section .text,"ax",@progbits
.org 0x0
L_18001000:
    # Original function: pebAddress
    mov    eax,fs:0x30
.org 0x6
L_18001006:
    ret
.org 0x7
L_18001007:
    ud2
.org 0x9
L_18001009:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x10
L_18001010:
    # Original function: findExport
    push   ebp
.org 0x11
L_18001011:
    push   edi
.org 0x12
L_18001012:
    push   esi
.org 0x13
L_18001013:
    push   ebx
.org 0x14
L_18001014:
    sub    esp,0x14
.org 0x17
L_18001017:
    test   eax,eax
.org 0x19
L_18001019:
    # je     180010a4
    .byte 0xf,0x84
    .long L_180010a4 - . - 4
.org 0x1f
L_1800101f:
    xor    esi,esi
.org 0x21
L_18001021:
    cmp    WORD PTR [eax],0x5a4d
.org 0x26
L_18001026:
    mov    edi,eax
.org 0x28
L_18001028:
    # jne    180010a6
    .byte 0x75
    .byte L_180010a6 - . - 1
.org 0x2a
L_1800102a:
    mov    ebx,edx
.org 0x2c
L_1800102c:
    mov    edx,DWORD PTR [eax+0x3c]
.org 0x2f
L_1800102f:
    add    edx,eax
.org 0x31
L_18001031:
    cmp    DWORD PTR [edx],0x4550
.org 0x37
L_18001037:
    # jne    180010a6
    .byte 0x75
    .byte L_180010a6 - . - 1
.org 0x39
L_18001039:
    cmp    WORD PTR [edx+0x18],0x10b
.org 0x3f
L_1800103f:
    # jne    180010a6
    .byte 0x75
    .byte L_180010a6 - . - 1
.org 0x41
L_18001041:
    mov    eax,DWORD PTR [edx+0x78]
.org 0x44
L_18001044:
    mov    DWORD PTR [esp+0x8],eax
.org 0x48
L_18001048:
    test   eax,eax
.org 0x4a
L_1800104a:
    # je     180010a6
    .byte 0x74
    .byte L_180010a6 - . - 1
.org 0x4c
L_1800104c:
    lea    ecx,[edi+eax*1]
.org 0x4f
L_1800104f:
    mov    ebp,DWORD PTR [ecx+0x18]
.org 0x52
L_18001052:
    mov    eax,DWORD PTR [ecx+0x20]
.org 0x55
L_18001055:
    mov    DWORD PTR [esp+0x4],ebp
.org 0x59
L_18001059:
    test   ebp,ebp
.org 0x5b
L_1800105b:
    # je     180010a6
    .byte 0x74
    .byte L_180010a6 - . - 1
.org 0x5d
L_1800105d:
    add    eax,edi
.org 0x5f
L_1800105f:
    mov    DWORD PTR [esp+0xc],edx
.org 0x63
L_18001063:
    xor    ebp,ebp
.org 0x65
L_18001065:
    mov    DWORD PTR [esp],eax
.org 0x68
L_18001068:
    mov    DWORD PTR [esp+0x10],ecx
.org 0x6c
L_1800106c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x70
L_18001070:
    mov    eax,DWORD PTR [esp]
.org 0x73
L_18001073:
    mov    esi,DWORD PTR [eax+ebp*4]
.org 0x76
L_18001076:
    xor    eax,eax
.org 0x78
L_18001078:
    add    esi,edi
.org 0x7a
L_1800107a:
    # jmp    1800108b
    .byte 0xeb
    .byte L_1800108b - . - 1
.org 0x7c
L_1800107c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x80
L_18001080:
    test   cl,cl
.org 0x82
L_18001082:
    # je     1800109b
    .byte 0x74
    .byte L_1800109b - . - 1
.org 0x84
L_18001084:
    add    eax,0x1
.org 0x87
L_18001087:
    cmp    dl,cl
.org 0x89
L_18001089:
    # jne    1800109b
    .byte 0x75
    .byte L_1800109b - . - 1
.org 0x8b
L_1800108b:
    movzx  edx,BYTE PTR [esi+eax*1]
.org 0x8f
L_1800108f:
    movzx  ecx,BYTE PTR [ebx+eax*1]
.org 0x93
L_18001093:
    test   dl,dl
.org 0x95
L_18001095:
    # jne    18001080
    .byte 0x75
    .byte L_18001080 - . - 1
.org 0x97
L_18001097:
    test   cl,cl
.org 0x99
L_18001099:
    # je     180010b0
    .byte 0x74
    .byte L_180010b0 - . - 1
.org 0x9b
L_1800109b:
    add    ebp,0x1
.org 0x9e
L_1800109e:
    cmp    DWORD PTR [esp+0x4],ebp
.org 0xa2
L_180010a2:
    # jne    18001070
    .byte 0x75
    .byte L_18001070 - . - 1
.org 0xa4
L_180010a4:
    xor    esi,esi
.org 0xa6
L_180010a6:
    add    esp,0x14
.org 0xa9
L_180010a9:
    mov    eax,esi
.org 0xab
L_180010ab:
    pop    ebx
.org 0xac
L_180010ac:
    pop    esi
.org 0xad
L_180010ad:
    pop    edi
.org 0xae
L_180010ae:
    pop    ebp
.org 0xaf
L_180010af:
    ret
.org 0xb0
L_180010b0:
    mov    ecx,DWORD PTR [esp+0x10]
.org 0xb4
L_180010b4:
    lea    eax,[edi+ebp*2]
.org 0xb7
L_180010b7:
    mov    edx,DWORD PTR [esp+0xc]
.org 0xbb
L_180010bb:
    xor    esi,esi
.org 0xbd
L_180010bd:
    add    eax,DWORD PTR [ecx+0x24]
.org 0xc0
L_180010c0:
    movzx  eax,WORD PTR [eax]
.org 0xc3
L_180010c3:
    cmp    eax,DWORD PTR [ecx+0x14]
.org 0xc6
L_180010c6:
    # jae    180010a6
    .byte 0x73
    .byte L_180010a6 - . - 1
.org 0xc8
L_180010c8:
    lea    eax,[edi+eax*4]
.org 0xcb
L_180010cb:
    add    eax,DWORD PTR [ecx+0x1c]
.org 0xce
L_180010ce:
    mov    ecx,DWORD PTR [eax]
.org 0xd0
L_180010d0:
    mov    eax,DWORD PTR [esp+0x8]
.org 0xd4
L_180010d4:
    cmp    ecx,eax
.org 0xd6
L_180010d6:
    # jae    180010dd
    .byte 0x73
    .byte L_180010dd - . - 1
.org 0xd8
L_180010d8:
    lea    esi,[edi+ecx*1]
.org 0xdb
L_180010db:
    # jmp    180010a6
    .byte 0xeb
    .byte L_180010a6 - . - 1
.org 0xdd
L_180010dd:
    add    eax,DWORD PTR [edx+0x7c]
.org 0xe0
L_180010e0:
    cmp    ecx,eax
.org 0xe2
L_180010e2:
    # jb     180010a6
    .byte 0x72
    .byte L_180010a6 - . - 1
.org 0xe4
L_180010e4:
    # jmp    180010d8
    .byte 0xeb
    .byte L_180010d8 - . - 1
.org 0xe6
L_180010e6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xee
L_180010ee:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xf0
L_180010f0:
    # Original function: loadAndInit
    push   ebp
.org 0xf1
L_180010f1:
    push   edi
.org 0xf2
L_180010f2:
    push   esi
.org 0xf3
L_180010f3:
    push   ebx
.org 0xf4
L_180010f4:
    mov    ebx,edx
.org 0xf6
L_180010f6:
    sub    esp,0x62c
.org 0xfc
L_180010fc:
    mov    DWORD PTR [esp+0xc],eax
.org 0x100
L_18001100:
    # call   18001000
    .byte 0xe8
    .long L_18001000 - . - 4
.org 0x105
L_18001105:
    test   eax,eax
.org 0x107
L_18001107:
    # je     180012b0
    .byte 0xf,0x84
    .long L_180012b0 - . - 4
.org 0x10d
L_1800110d:
    mov    esi,DWORD PTR [0x18004030]
.org 0x113
L_18001113:
    test   esi,esi
.org 0x115
L_18001115:
    # je     180012b0
    .byte 0xf,0x84
    .long L_180012b0 - . - 4
.org 0x11b
L_1800111b:
    mov    eax,DWORD PTR [eax+0xc]
.org 0x11e
L_1800111e:
    test   eax,eax
.org 0x120
L_18001120:
    # je     180012b0
    .byte 0xf,0x84
    .long L_180012b0 - . - 4
.org 0x126
L_18001126:
    lea    edi,[eax+0x14]
.org 0x129
L_18001129:
    mov    eax,DWORD PTR [eax+0x14]
.org 0x12c
L_1800112c:
    cmp    edi,eax
.org 0x12e
L_1800112e:
    # je     180012b0
    .byte 0xf,0x84
    .long L_180012b0 - . - 4
.org 0x134
L_18001134:
    test   eax,eax
.org 0x136
L_18001136:
    # je     180012b0
    .byte 0xf,0x84
    .long L_180012b0 - . - 4
.org 0x13c
L_1800113c:
    xor    edx,edx
.org 0x13e
L_1800113e:
    mov    ebp,ebx
.org 0x140
L_18001140:
    # jmp    1800116b
    .byte 0xeb
    .byte L_1800116b - . - 1
.org 0x142
L_18001142:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x148
L_18001148:
    mov    eax,DWORD PTR [eax]
.org 0x14a
L_1800114a:
    add    edx,0x1
.org 0x14d
L_1800114d:
    test   eax,eax
.org 0x14f
L_1800114f:
    setne  bl
.org 0x152
L_18001152:
    cmp    edi,eax
.org 0x154
L_18001154:
    setne  cl
.org 0x157
L_18001157:
    test   bl,cl
.org 0x159
L_18001159:
    # je     180012b0
    .byte 0xf,0x84
    .long L_180012b0 - . - 4
.org 0x15f
L_1800115f:
    cmp    edx,0x80
.org 0x165
L_18001165:
    # je     180012b0
    .byte 0xf,0x84
    .long L_180012b0 - . - 4
.org 0x16b
L_1800116b:
    cmp    esi,DWORD PTR [eax+0x10]
.org 0x16e
L_1800116e:
    # jne    18001148
    .byte 0x75
    .byte L_18001148 - . - 1
.org 0x170
L_18001170:
    mov    edx,DWORD PTR [eax+0x20]
.org 0x173
L_18001173:
    movzx  ecx,WORD PTR [eax+0x1c]
.org 0x177
L_18001177:
    mov    ebx,ebp
.org 0x179
L_18001179:
    test   edx,edx
.org 0x17b
L_1800117b:
    # je     180012b0
    .byte 0xf,0x84
    .long L_180012b0 - . - 4
.org 0x181
L_18001181:
    test   cx,cx
.org 0x184
L_18001184:
    # je     180012b0
    .byte 0xf,0x84
    .long L_180012b0 - . - 4
.org 0x18a
L_1800118a:
    shr    cx,1
.org 0x18d
L_1800118d:
    movzx  edi,cx
.org 0x190
L_18001190:
    # je     180012b0
    .byte 0xf,0x84
    .long L_180012b0 - . - 4
.org 0x196
L_18001196:
    xor    esi,esi
.org 0x198
L_18001198:
    xor    eax,eax
.org 0x19a
L_1800119a:
    # jmp    180011a4
    .byte 0xeb
    .byte L_180011a4 - . - 1
.org 0x19c
L_1800119c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x1a0
L_180011a0:
    cmp    edi,eax
.org 0x1a2
L_180011a2:
    # je     180011bd
    .byte 0x74
    .byte L_180011bd - . - 1
.org 0x1a4
L_180011a4:
    movzx  ecx,WORD PTR [edx+eax*2]
.org 0x1a8
L_180011a8:
    add    eax,0x1
.org 0x1ab
L_180011ab:
    cmp    cx,0x2f
.org 0x1af
L_180011af:
    # je     180011b7
    .byte 0x74
    .byte L_180011b7 - . - 1
.org 0x1b1
L_180011b1:
    cmp    cx,0x5c
.org 0x1b5
L_180011b5:
    # jne    180011a0
    .byte 0x75
    .byte L_180011a0 - . - 1
.org 0x1b7
L_180011b7:
    mov    esi,eax
.org 0x1b9
L_180011b9:
    cmp    edi,eax
.org 0x1bb
L_180011bb:
    # jne    180011a4
    .byte 0x75
    .byte L_180011a4 - . - 1
.org 0x1bd
L_180011bd:
    mov    ecx,0xa
.org 0x1c2
L_180011c2:
    test   esi,esi
.org 0x1c4
L_180011c4:
    # je     180012b5
    .byte 0xf,0x84
    .long L_180012b5 - . - 4
.org 0x1ca
L_180011ca:
    lea    eax,[esi+0x1]
.org 0x1cd
L_180011cd:
    cmp    eax,0x2ff
.org 0x1d2
L_180011d2:
    # ja     180012b5
    .byte 0xf,0x87
    .long L_180012b5 - . - 4
.org 0x1d8
L_180011d8:
    xor    edi,edi
.org 0x1da
L_180011da:
    lea    ecx,[esp+0x20]
.org 0x1de
L_180011de:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x1e0
L_180011e0:
    movzx  ebp,WORD PTR [edx+edi*2]
.org 0x1e4
L_180011e4:
    mov    WORD PTR [ecx+edi*2],bp
.org 0x1e8
L_180011e8:
    add    edi,0x1
.org 0x1eb
L_180011eb:
    cmp    esi,edi
.org 0x1ed
L_180011ed:
    # jne    180011e0
    .byte 0x75
    .byte L_180011e0 - . - 1
.org 0x1ef
L_180011ef:
    lea    ebp,[esi+esi*1]
.org 0x1f2
L_180011f2:
    xor    edx,edx
.org 0x1f4
L_180011f4:
    lea    edi,[ecx+ebp*1]
.org 0x1f7
L_180011f7:
    mov    WORD PTR [edi],dx
.org 0x1fa
L_180011fa:
    movzx  edx,WORD PTR [ebx]
.org 0x1fd
L_180011fd:
    sub    ebx,ebp
.org 0x1ff
L_180011ff:
    test   dx,dx
.org 0x202
L_18001202:
    # jne    1800121e
    .byte 0x75
    .byte L_1800121e - . - 1
.org 0x204
L_18001204:
    # jmp    180012f9
    .byte 0xe9
    .long L_180012f9 - . - 4
.org 0x209
L_18001209:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x210
L_18001210:
    add    eax,0x1
.org 0x213
L_18001213:
    cmp    eax,0x300
.org 0x218
L_18001218:
    # je     180012c8
    .byte 0xf,0x84
    .long L_180012c8 - . - 4
.org 0x21e
L_1800121e:
    mov    WORD PTR [ecx+eax*2-0x2],dx
.org 0x223
L_18001223:
    movzx  edx,WORD PTR [ebx+eax*2]
.org 0x227
L_18001227:
    test   dx,dx
.org 0x22a
L_1800122a:
    # jne    18001210
    .byte 0x75
    .byte L_18001210 - . - 1
.org 0x22c
L_1800122c:
    mov    edx,eax
.org 0x22e
L_1800122e:
    lea    edi,[ecx+eax*2]
.org 0x231
L_18001231:
    add    eax,eax
.org 0x233
L_18001233:
    xor    ebx,ebx
.org 0x235
L_18001235:
    mov    DWORD PTR [esp+0x1c],ecx
.org 0x239
L_18001239:
    mov    WORD PTR [esp+0x18],ax
.org 0x23e
L_1800123e:
    lea    eax,[edx+edx*1+0x2]
.org 0x242
L_18001242:
    mov    WORD PTR [esp+0x1a],ax
.org 0x247
L_18001247:
    lea    eax,[esp+0x14]
.org 0x24b
L_1800124b:
    mov    WORD PTR [edi],bx
.org 0x24e
L_1800124e:
    mov    DWORD PTR [esp+0x14],0x0
.org 0x256
L_18001256:
    push   eax
.org 0x257
L_18001257:
    lea    eax,[esp+0x1c]
.org 0x25b
L_1800125b:
    push   eax
.org 0x25c
L_1800125c:
    push   0x0
.org 0x25e
L_1800125e:
    push   0x0
.org 0x260
L_18001260:
    mov    eax,DWORD PTR [esp+0x1c]
.org 0x264
L_18001264:
    call   eax
.org 0x266
L_18001266:
    test   eax,eax
.org 0x268
L_18001268:
    # js     180012e0
    .byte 0x78
    .byte L_180012e0 - . - 1
.org 0x26a
L_1800126a:
    mov    eax,DWORD PTR [esp+0x14]
.org 0x26e
L_1800126e:
    test   eax,eax
.org 0x270
L_18001270:
    # je     180012e0
    .byte 0x74
    .byte L_180012e0 - . - 1
.org 0x272
L_18001272:
    mov    edx,0x18002000
.org 0x277
L_18001277:
    # call   18001010
    .byte 0xe8
    .long L_18001010 - . - 4
.org 0x27c
L_1800127c:
    test   eax,eax
.org 0x27e
L_1800127e:
    # je     180012f2
    .byte 0x74
    .byte L_180012f2 - . - 1
.org 0x280
L_18001280:
    sub    esp,0xc
.org 0x283
L_18001283:
    push   0x18004000
.org 0x288
L_18001288:
    call   eax
.org 0x28a
L_1800128a:
    add    esp,0xc
.org 0x28d
L_1800128d:
    lea    ecx,[eax+0x14]
.org 0x290
L_18001290:
    test   eax,eax
.org 0x292
L_18001292:
    mov    eax,0x0
.org 0x297
L_18001297:
    cmove  ecx,eax
.org 0x29a
L_1800129a:
    add    esp,0x62c
.org 0x2a0
L_180012a0:
    pop    ebx
.org 0x2a1
L_180012a1:
    pop    esi
.org 0x2a2
L_180012a2:
    mov    eax,ecx
.org 0x2a4
L_180012a4:
    pop    edi
.org 0x2a5
L_180012a5:
    pop    ebp
.org 0x2a6
L_180012a6:
    ret
.org 0x2a7
L_180012a7:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x2af
L_180012af:
    # Alignment padding: nop
    .byte 0x90
.org 0x2b0
L_180012b0:
    mov    ecx,0xa
.org 0x2b5
L_180012b5:
    add    esp,0x62c
.org 0x2bb
L_180012bb:
    mov    eax,ecx
.org 0x2bd
L_180012bd:
    pop    ebx
.org 0x2be
L_180012be:
    pop    esi
.org 0x2bf
L_180012bf:
    pop    edi
.org 0x2c0
L_180012c0:
    pop    ebp
.org 0x2c1
L_180012c1:
    ret
.org 0x2c2
L_180012c2:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x2c8
L_180012c8:
    add    esp,0x62c
.org 0x2ce
L_180012ce:
    mov    ecx,0xb
.org 0x2d3
L_180012d3:
    pop    ebx
.org 0x2d4
L_180012d4:
    mov    eax,ecx
.org 0x2d6
L_180012d6:
    pop    esi
.org 0x2d7
L_180012d7:
    pop    edi
.org 0x2d8
L_180012d8:
    pop    ebp
.org 0x2d9
L_180012d9:
    ret
.org 0x2da
L_180012da:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x2e0
L_180012e0:
    add    esp,0x62c
.org 0x2e6
L_180012e6:
    mov    ecx,0xc
.org 0x2eb
L_180012eb:
    pop    ebx
.org 0x2ec
L_180012ec:
    mov    eax,ecx
.org 0x2ee
L_180012ee:
    pop    esi
.org 0x2ef
L_180012ef:
    pop    edi
.org 0x2f0
L_180012f0:
    pop    ebp
.org 0x2f1
L_180012f1:
    ret
.org 0x2f2
L_180012f2:
    mov    ecx,0xd
.org 0x2f7
L_180012f7:
    # jmp    180012b5
    .byte 0xeb
    .byte L_180012b5 - . - 1
.org 0x2f9
L_180012f9:
    mov    eax,esi
.org 0x2fb
L_180012fb:
    mov    edx,esi
.org 0x2fd
L_180012fd:
    # jmp    18001231
    .byte 0xe9
    .long L_18001231 - . - 4
.org 0x302
L_18001302:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x30a
L_1800130a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x310
L_18001310:
    # Original function: FHDUU_Init
    mov    edx,DWORD PTR [0x1800402c]
.org 0x316
L_18001316:
    test   edx,edx
.org 0x318
L_18001318:
    # je     18001330
    .byte 0x74
    .byte L_18001330 - . - 1
.org 0x31a
L_1800131a:
    mov    eax,edx
.org 0x31c
L_1800131c:
    neg    eax
.org 0x31e
L_1800131e:
    cmp    edx,0x1
.org 0x321
L_18001321:
    # je     180014f0
    .byte 0xf,0x84
    .long L_180014f0 - . - 4
.org 0x327
L_18001327:
    ret
.org 0x328
L_18001328:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x330
L_18001330:
    push   ebp
.org 0x331
L_18001331:
    push   edi
.org 0x332
L_18001332:
    push   esi
.org 0x333
L_18001333:
    push   ebx
.org 0x334
L_18001334:
    sub    esp,0x1c
.org 0x337
L_18001337:
    mov    DWORD PTR [0x1800402c],0xffffff9d
.org 0x341
L_18001341:
    # call   18001000
    .byte 0xe8
    .long L_18001000 - . - 4
.org 0x346
L_18001346:
    mov    ebp,eax
.org 0x348
L_18001348:
    test   eax,eax
.org 0x34a
L_1800134a:
    # je     180014f3
    .byte 0xf,0x84
    .long L_180014f3 - . - 4
.org 0x350
L_18001350:
    # call   18001000
    .byte 0xe8
    .long L_18001000 - . - 4
.org 0x355
L_18001355:
    test   eax,eax
.org 0x357
L_18001357:
    # je     180014e0
    .byte 0xf,0x84
    .long L_180014e0 - . - 4
.org 0x35d
L_1800135d:
    mov    edx,DWORD PTR [eax+0xc]
.org 0x360
L_18001360:
    test   edx,edx
.org 0x362
L_18001362:
    # je     180014e0
    .byte 0xf,0x84
    .long L_180014e0 - . - 4
.org 0x368
L_18001368:
    mov    ebx,DWORD PTR [edx+0x14]
.org 0x36b
L_1800136b:
    lea    eax,[edx+0x14]
.org 0x36e
L_1800136e:
    cmp    eax,ebx
.org 0x370
L_18001370:
    # je     180014e0
    .byte 0xf,0x84
    .long L_180014e0 - . - 4
.org 0x376
L_18001376:
    test   ebx,ebx
.org 0x378
L_18001378:
    # je     180014e0
    .byte 0xf,0x84
    .long L_180014e0 - . - 4
.org 0x37e
L_1800137e:
    mov    DWORD PTR [esp+0xc],ebp
.org 0x382
L_18001382:
    xor    esi,esi
.org 0x384
L_18001384:
    # jmp    180013b0
    .byte 0xeb
    .byte L_180013b0 - . - 1
.org 0x386
L_18001386:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x38e
L_1800138e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x390
L_18001390:
    mov    ebx,DWORD PTR [ebx]
.org 0x392
L_18001392:
    add    esi,0x1
.org 0x395
L_18001395:
    test   ebx,ebx
.org 0x397
L_18001397:
    setne  cl
.org 0x39a
L_1800139a:
    cmp    eax,ebx
.org 0x39c
L_1800139c:
    setne  dl
.org 0x39f
L_1800139f:
    test   cl,dl
.org 0x3a1
L_180013a1:
    # je     180014e0
    .byte 0xf,0x84
    .long L_180014e0 - . - 4
.org 0x3a7
L_180013a7:
    cmp    esi,0x40
.org 0x3aa
L_180013aa:
    # je     180014e0
    .byte 0xf,0x84
    .long L_180014e0 - . - 4
.org 0x3b0
L_180013b0:
    mov    edi,DWORD PTR [ebx+0x10]
.org 0x3b3
L_180013b3:
    mov    ebp,DWORD PTR [ebx+0x28]
.org 0x3b6
L_180013b6:
    test   edi,edi
.org 0x3b8
L_180013b8:
    # je     18001390
    .byte 0x74
    .byte L_18001390 - . - 1
.org 0x3ba
L_180013ba:
    test   ebp,ebp
.org 0x3bc
L_180013bc:
    # je     18001390
    .byte 0x74
    .byte L_18001390 - . - 1
.org 0x3be
L_180013be:
    mov    DWORD PTR [esp],eax
.org 0x3c1
L_180013c1:
    xor    ecx,ecx
.org 0x3c3
L_180013c3:
    mov    edx,0x6e
.org 0x3c8
L_180013c8:
    mov    DWORD PTR [esp+0x8],edi
.org 0x3cc
L_180013cc:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x3d0
L_180013d0:
    # jmp    180013e6
    .byte 0xeb
    .byte L_180013e6 - . - 1
.org 0x3d2
L_180013d2:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x3d8
L_180013d8:
    movzx  edx,BYTE PTR [ecx+0x18003001]
.org 0x3df
L_180013df:
    add    ecx,0x1
.org 0x3e2
L_180013e2:
    test   dl,dl
.org 0x3e4
L_180013e4:
    # je     18001410
    .byte 0x74
    .byte L_18001410 - . - 1
.org 0x3e6
L_180013e6:
    movzx  eax,WORD PTR [ebp+ecx*2+0x0]
.org 0x3eb
L_180013eb:
    lea    edi,[eax-0x41]
.org 0x3ee
L_180013ee:
    lea    ebx,[eax+0x20]
.org 0x3f1
L_180013f1:
    cmp    di,0x1a
.org 0x3f5
L_180013f5:
    cmovb  eax,ebx
.org 0x3f8
L_180013f8:
    cmp    dx,ax
.org 0x3fb
L_180013fb:
    # je     180013d8
    .byte 0x74
    .byte L_180013d8 - . - 1
.org 0x3fd
L_180013fd:
    mov    eax,DWORD PTR [esp]
.org 0x400
L_18001400:
    mov    ebx,DWORD PTR [esp+0x4]
.org 0x404
L_18001404:
    # jmp    18001390
    .byte 0xeb
    .byte L_18001390 - . - 1
.org 0x406
L_18001406:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x40e
L_1800140e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x410
L_18001410:
    cmp    WORD PTR [ebp+ecx*2+0x0],0x0
.org 0x416
L_18001416:
    mov    eax,DWORD PTR [esp]
.org 0x419
L_18001419:
    mov    edi,DWORD PTR [esp+0x8]
.org 0x41d
L_1800141d:
    mov    ebx,DWORD PTR [esp+0x4]
.org 0x421
L_18001421:
    # jne    18001390
    .byte 0xf,0x85
    .long L_18001390 - . - 4
.org 0x427
L_18001427:
    mov    edx,0x18002016
.org 0x42c
L_1800142c:
    mov    eax,edi
.org 0x42e
L_1800142e:
    mov    ebp,DWORD PTR [esp+0xc]
.org 0x432
L_18001432:
    # call   18001010
    .byte 0xe8
    .long L_18001010 - . - 4
.org 0x437
L_18001437:
    mov    ebx,eax
.org 0x439
L_18001439:
    test   eax,eax
.org 0x43b
L_1800143b:
    # je     1800151e
    .byte 0xf,0x84
    .long L_1800151e - . - 4
.org 0x441
L_18001441:
    mov    eax,DWORD PTR [ebp+0x8]
.org 0x444
L_18001444:
    mov    edx,0x18003100
.org 0x449
L_18001449:
    mov    DWORD PTR [0x18004000],0x20
.org 0x453
L_18001453:
    mov    DWORD PTR [0x18004004],0x1
.org 0x45d
L_1800145d:
    mov    ds:0x18004008,eax
.org 0x462
L_18001462:
    mov    eax,ebx
.org 0x464
L_18001464:
    mov    DWORD PTR [0x1800400c],0x0
.org 0x46e
L_1800146e:
    mov    DWORD PTR [0x18004010],0x0
.org 0x478
L_18001478:
    mov    DWORD PTR [0x18004014],0x0
.org 0x482
L_18001482:
    mov    DWORD PTR [0x18004018],0x0
.org 0x48c
L_1800148c:
    mov    DWORD PTR [0x1800401c],0x0
.org 0x496
L_18001496:
    mov    DWORD PTR [0x18004020],0x0
.org 0x4a0
L_180014a0:
    mov    DWORD PTR [0x18004024],0x0
.org 0x4aa
L_180014aa:
    mov    DWORD PTR [0x18004028],0x0
.org 0x4b4
L_180014b4:
    # call   180010f0
    .byte 0xe8
    .long L_180010f0 - . - 4
.org 0x4b9
L_180014b9:
    test   eax,eax
.org 0x4bb
L_180014bb:
    # je     180014fa
    .byte 0x74
    .byte L_180014fa - . - 1
.org 0x4bd
L_180014bd:
    mov    edx,0xffffff38
.org 0x4c2
L_180014c2:
    sub    edx,eax
.org 0x4c4
L_180014c4:
    add    eax,0xc8
.org 0x4c9
L_180014c9:
    mov    DWORD PTR [0x1800402c],edx
.org 0x4cf
L_180014cf:
    add    esp,0x1c
.org 0x4d2
L_180014d2:
    pop    ebx
.org 0x4d3
L_180014d3:
    pop    esi
.org 0x4d4
L_180014d4:
    pop    edi
.org 0x4d5
L_180014d5:
    pop    ebp
.org 0x4d6
L_180014d6:
    ret
.org 0x4d7
L_180014d7:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x4df
L_180014df:
    # Alignment padding: nop
    .byte 0x90
.org 0x4e0
L_180014e0:
    mov    eax,0x66
.org 0x4e5
L_180014e5:
    add    esp,0x1c
.org 0x4e8
L_180014e8:
    pop    ebx
.org 0x4e9
L_180014e9:
    pop    esi
.org 0x4ea
L_180014ea:
    pop    edi
.org 0x4eb
L_180014eb:
    pop    ebp
.org 0x4ec
L_180014ec:
    ret
.org 0x4ed
L_180014ed:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x4f0
L_180014f0:
    xor    eax,eax
.org 0x4f2
L_180014f2:
    ret
.org 0x4f3
L_180014f3:
    mov    eax,0x65
.org 0x4f8
L_180014f8:
    # jmp    180014e5
    .byte 0xeb
    .byte L_180014e5 - . - 1
.org 0x4fa
L_180014fa:
    mov    edx,0x180030c0
.org 0x4ff
L_180014ff:
    mov    eax,ebx
.org 0x501
L_18001501:
    # call   180010f0
    .byte 0xe8
    .long L_180010f0 - . - 4
.org 0x506
L_18001506:
    test   eax,eax
.org 0x508
L_18001508:
    # je     18001525
    .byte 0x74
    .byte L_18001525 - . - 1
.org 0x50a
L_1800150a:
    mov    edx,0xfffffed4
.org 0x50f
L_1800150f:
    sub    edx,eax
.org 0x511
L_18001511:
    add    eax,0x12c
.org 0x516
L_18001516:
    mov    DWORD PTR [0x1800402c],edx
.org 0x51c
L_1800151c:
    # jmp    180014e5
    .byte 0xeb
    .byte L_180014e5 - . - 1
.org 0x51e
L_1800151e:
    mov    eax,0x67
.org 0x523
L_18001523:
    # jmp    180014e5
    .byte 0xeb
    .byte L_180014e5 - . - 1
.org 0x525
L_18001525:
    mov    edx,0x18003080
.org 0x52a
L_1800152a:
    mov    eax,ebx
.org 0x52c
L_1800152c:
    # call   180010f0
    .byte 0xe8
    .long L_180010f0 - . - 4
.org 0x531
L_18001531:
    test   eax,eax
.org 0x533
L_18001533:
    # je     18001549
    .byte 0x74
    .byte L_18001549 - . - 1
.org 0x535
L_18001535:
    mov    edx,0xfffffe70
.org 0x53a
L_1800153a:
    sub    edx,eax
.org 0x53c
L_1800153c:
    add    eax,0x190
.org 0x541
L_18001541:
    mov    DWORD PTR [0x1800402c],edx
.org 0x547
L_18001547:
    # jmp    180014e5
    .byte 0xeb
    .byte L_180014e5 - . - 1
.org 0x549
L_18001549:
    mov    edx,0x18003060
.org 0x54e
L_1800154e:
    mov    eax,ebx
.org 0x550
L_18001550:
    # call   180010f0
    .byte 0xe8
    .long L_180010f0 - . - 4
.org 0x555
L_18001555:
    test   eax,eax
.org 0x557
L_18001557:
    # je     18001570
    .byte 0x74
    .byte L_18001570 - . - 1
.org 0x559
L_18001559:
    mov    edx,0xfffffe0c
.org 0x55e
L_1800155e:
    sub    edx,eax
.org 0x560
L_18001560:
    add    eax,0x1f4
.org 0x565
L_18001565:
    mov    DWORD PTR [0x1800402c],edx
.org 0x56b
L_1800156b:
    # jmp    180014e5
    .byte 0xe9
    .long L_180014e5 - . - 4
.org 0x570
L_18001570:
    mov    edx,0x18003020
.org 0x575
L_18001575:
    mov    eax,ebx
.org 0x577
L_18001577:
    # call   180010f0
    .byte 0xe8
    .long L_180010f0 - . - 4
.org 0x57c
L_1800157c:
    test   eax,eax
.org 0x57e
L_1800157e:
    # jne    18001591
    .byte 0x75
    .byte L_18001591 - . - 1
.org 0x580
L_18001580:
    mov    DWORD PTR [0x1800402c],0x1
.org 0x58a
L_1800158a:
    xor    eax,eax
.org 0x58c
L_1800158c:
    # jmp    180014e5
    .byte 0xe9
    .long L_180014e5 - . - 4
.org 0x591
L_18001591:
    mov    edx,0xfffffda8
.org 0x596
L_18001596:
    sub    edx,eax
.org 0x598
L_18001598:
    add    eax,0x258
.org 0x59d
L_1800159d:
    mov    DWORD PTR [0x1800402c],edx
.org 0x5a3
L_180015a3:
    # jmp    180014e5
    .byte 0xe9
    .long L_180014e5 - . - 4
.org 0x5a8
L_180015a8:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x5b0
L_180015b0:
    # Original function: DllMain
    mov    eax,DWORD PTR [esp+0x4]
.org 0x5b4
L_180015b4:
    mov    ds:0x18004030,eax
.org 0x5b9
L_180015b9:
    mov    eax,0x1
.org 0x5be
L_180015be:
    ret    0xc
.org 0x5c1
    # Linker constructor/destructor sentinel tables (data, not instructions).
    .long 0xffffffff
    .long 0x0
    .long 0xffffffff
    .long 0x0
.org 0x5d1
