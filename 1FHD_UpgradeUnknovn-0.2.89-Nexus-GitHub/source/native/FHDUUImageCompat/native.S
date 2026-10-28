/* Recovered complete x86 source; original C was not supplied.
 * Each instruction and original function name is visible. Fixed layout and
 * explicit branch widths preserve this DLL exactly. */
.intel_syntax noprefix
.section .text,"ax",@progbits
.org 0x0
L_19001000:
    # Original function: genericHook
    pushf
.org 0x1
L_19001001:
    pusha
.org 0x2
L_19001002:
    push   DWORD PTR [ebp-0x4]
.org 0x5
L_19001005:
    # call   19001210
    .byte 0xe8
    .long L_19001210 - . - 4
.org 0xa
L_1900100a:
    add    esp,0x4
.org 0xd
L_1900100d:
    test   eax,eax
.org 0xf
L_1900100f:
    # je     1900101c
    .byte 0x74
    .byte L_1900101c - . - 1
.org 0x11
L_19001011:
    popa
.org 0x12
L_19001012:
    popf
.org 0x13
L_19001013:
    mov    eax,DWORD PTR [ebp-0x4]
.org 0x16
L_19001016:
    jmp    DWORD PTR [0x1900400c]
.org 0x1c
L_1900101c:
    popa
.org 0x1d
L_1900101d:
    popf
.org 0x1e
L_1900101e:
    mov    eax,DWORD PTR [ebp-0x4]
.org 0x21
L_19001021:
    cmp    DWORD PTR [eax+0x54],0x0
.org 0x25
L_19001025:
    # jle    1900102d
    .byte 0x7e
    .byte L_1900102d - . - 1
.org 0x27
L_19001027:
    jmp    DWORD PTR [0x19004008]
.org 0x2d
L_1900102d:
    jmp    DWORD PTR [0x1900400c]
.org 0x33
L_19001033:
    ud2
.org 0x35
L_19001035:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x3d
L_1900103d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x40
L_19001040:
    # Original function: weaponHook
    pushf
.org 0x41
L_19001041:
    pusha
.org 0x42
L_19001042:
    push   DWORD PTR [ebp-0x4]
.org 0x45
L_19001045:
    # call   19001210
    .byte 0xe8
    .long L_19001210 - . - 4
.org 0x4a
L_1900104a:
    add    esp,0x4
.org 0x4d
L_1900104d:
    test   eax,eax
.org 0x4f
L_1900104f:
    # je     1900105c
    .byte 0x74
    .byte L_1900105c - . - 1
.org 0x51
L_19001051:
    popa
.org 0x52
L_19001052:
    popf
.org 0x53
L_19001053:
    mov    eax,DWORD PTR [ebp-0x4]
.org 0x56
L_19001056:
    jmp    DWORD PTR [0x19004004]
.org 0x5c
L_1900105c:
    popa
.org 0x5d
L_1900105d:
    popf
.org 0x5e
L_1900105e:
    mov    eax,DWORD PTR [ebp-0x4]
.org 0x61
L_19001061:
    cmp    DWORD PTR [eax+0x54],0x0
.org 0x65
L_19001065:
    # jle    1900106d
    .byte 0x7e
    .byte L_1900106d - . - 1
.org 0x67
L_19001067:
    jmp    DWORD PTR [0x19004000]
.org 0x6d
L_1900106d:
    jmp    DWORD PTR [0x19004004]
.org 0x73
L_19001073:
    ud2
.org 0x75
L_19001075:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x7d
L_1900107d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x80
L_19001080:
    # Original function: pebAddress
    mov    eax,fs:0x30
.org 0x86
L_19001086:
    ret
.org 0x87
L_19001087:
    ud2
.org 0x89
L_19001089:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x90
L_19001090:
    # Original function: findExport
    push   ebp
.org 0x91
L_19001091:
    push   edi
.org 0x92
L_19001092:
    push   esi
.org 0x93
L_19001093:
    push   ebx
.org 0x94
L_19001094:
    sub    esp,0x14
.org 0x97
L_19001097:
    test   eax,eax
.org 0x99
L_19001099:
    # je     19001124
    .byte 0xf,0x84
    .long L_19001124 - . - 4
.org 0x9f
L_1900109f:
    xor    esi,esi
.org 0xa1
L_190010a1:
    cmp    WORD PTR [eax],0x5a4d
.org 0xa6
L_190010a6:
    mov    edi,eax
.org 0xa8
L_190010a8:
    # jne    19001126
    .byte 0x75
    .byte L_19001126 - . - 1
.org 0xaa
L_190010aa:
    mov    ebx,edx
.org 0xac
L_190010ac:
    mov    edx,DWORD PTR [eax+0x3c]
.org 0xaf
L_190010af:
    add    edx,eax
.org 0xb1
L_190010b1:
    cmp    DWORD PTR [edx],0x4550
.org 0xb7
L_190010b7:
    # jne    19001126
    .byte 0x75
    .byte L_19001126 - . - 1
.org 0xb9
L_190010b9:
    cmp    WORD PTR [edx+0x18],0x10b
.org 0xbf
L_190010bf:
    # jne    19001126
    .byte 0x75
    .byte L_19001126 - . - 1
.org 0xc1
L_190010c1:
    mov    eax,DWORD PTR [edx+0x78]
.org 0xc4
L_190010c4:
    mov    DWORD PTR [esp+0x8],eax
.org 0xc8
L_190010c8:
    test   eax,eax
.org 0xca
L_190010ca:
    # je     19001126
    .byte 0x74
    .byte L_19001126 - . - 1
.org 0xcc
L_190010cc:
    lea    ecx,[edi+eax*1]
.org 0xcf
L_190010cf:
    mov    ebp,DWORD PTR [ecx+0x18]
.org 0xd2
L_190010d2:
    mov    eax,DWORD PTR [ecx+0x20]
.org 0xd5
L_190010d5:
    mov    DWORD PTR [esp+0x4],ebp
.org 0xd9
L_190010d9:
    test   ebp,ebp
.org 0xdb
L_190010db:
    # je     19001126
    .byte 0x74
    .byte L_19001126 - . - 1
.org 0xdd
L_190010dd:
    add    eax,edi
.org 0xdf
L_190010df:
    mov    DWORD PTR [esp+0xc],edx
.org 0xe3
L_190010e3:
    xor    ebp,ebp
.org 0xe5
L_190010e5:
    mov    DWORD PTR [esp],eax
.org 0xe8
L_190010e8:
    mov    DWORD PTR [esp+0x10],ecx
.org 0xec
L_190010ec:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0xf0
L_190010f0:
    mov    eax,DWORD PTR [esp]
.org 0xf3
L_190010f3:
    mov    esi,DWORD PTR [eax+ebp*4]
.org 0xf6
L_190010f6:
    xor    eax,eax
.org 0xf8
L_190010f8:
    add    esi,edi
.org 0xfa
L_190010fa:
    # jmp    1900110b
    .byte 0xeb
    .byte L_1900110b - . - 1
.org 0xfc
L_190010fc:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x100
L_19001100:
    test   cl,cl
.org 0x102
L_19001102:
    # je     1900111b
    .byte 0x74
    .byte L_1900111b - . - 1
.org 0x104
L_19001104:
    add    eax,0x1
.org 0x107
L_19001107:
    cmp    dl,cl
.org 0x109
L_19001109:
    # jne    1900111b
    .byte 0x75
    .byte L_1900111b - . - 1
.org 0x10b
L_1900110b:
    movzx  edx,BYTE PTR [esi+eax*1]
.org 0x10f
L_1900110f:
    movzx  ecx,BYTE PTR [ebx+eax*1]
.org 0x113
L_19001113:
    test   dl,dl
.org 0x115
L_19001115:
    # jne    19001100
    .byte 0x75
    .byte L_19001100 - . - 1
.org 0x117
L_19001117:
    test   cl,cl
.org 0x119
L_19001119:
    # je     19001130
    .byte 0x74
    .byte L_19001130 - . - 1
.org 0x11b
L_1900111b:
    add    ebp,0x1
.org 0x11e
L_1900111e:
    cmp    DWORD PTR [esp+0x4],ebp
.org 0x122
L_19001122:
    # jne    190010f0
    .byte 0x75
    .byte L_190010f0 - . - 1
.org 0x124
L_19001124:
    xor    esi,esi
.org 0x126
L_19001126:
    add    esp,0x14
.org 0x129
L_19001129:
    mov    eax,esi
.org 0x12b
L_1900112b:
    pop    ebx
.org 0x12c
L_1900112c:
    pop    esi
.org 0x12d
L_1900112d:
    pop    edi
.org 0x12e
L_1900112e:
    pop    ebp
.org 0x12f
L_1900112f:
    ret
.org 0x130
L_19001130:
    mov    ecx,DWORD PTR [esp+0x10]
.org 0x134
L_19001134:
    lea    eax,[edi+ebp*2]
.org 0x137
L_19001137:
    mov    edx,DWORD PTR [esp+0xc]
.org 0x13b
L_1900113b:
    xor    esi,esi
.org 0x13d
L_1900113d:
    add    eax,DWORD PTR [ecx+0x24]
.org 0x140
L_19001140:
    movzx  eax,WORD PTR [eax]
.org 0x143
L_19001143:
    cmp    eax,DWORD PTR [ecx+0x14]
.org 0x146
L_19001146:
    # jae    19001126
    .byte 0x73
    .byte L_19001126 - . - 1
.org 0x148
L_19001148:
    lea    eax,[edi+eax*4]
.org 0x14b
L_1900114b:
    add    eax,DWORD PTR [ecx+0x1c]
.org 0x14e
L_1900114e:
    mov    ecx,DWORD PTR [eax]
.org 0x150
L_19001150:
    mov    eax,DWORD PTR [esp+0x8]
.org 0x154
L_19001154:
    cmp    ecx,eax
.org 0x156
L_19001156:
    # jae    1900115d
    .byte 0x73
    .byte L_1900115d - . - 1
.org 0x158
L_19001158:
    lea    esi,[edi+ecx*1]
.org 0x15b
L_1900115b:
    # jmp    19001126
    .byte 0xeb
    .byte L_19001126 - . - 1
.org 0x15d
L_1900115d:
    add    eax,DWORD PTR [edx+0x7c]
.org 0x160
L_19001160:
    cmp    ecx,eax
.org 0x162
L_19001162:
    # jb     19001126
    .byte 0x72
    .byte L_19001126 - . - 1
.org 0x164
L_19001164:
    # jmp    19001158
    .byte 0xeb
    .byte L_19001158 - . - 1
.org 0x166
L_19001166:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x16e
L_1900116e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x170
L_19001170:
    # Original function: writeBytes.constprop.0
    push   ebp
.org 0x171
L_19001171:
    mov    ebp,edx
.org 0x173
L_19001173:
    push   edi
.org 0x174
L_19001174:
    mov    edi,eax
.org 0x176
L_19001176:
    push   esi
.org 0x177
L_19001177:
    push   ebx
.org 0x178
L_19001178:
    sub    esp,0x28
.org 0x17b
L_1900117b:
    mov    DWORD PTR [esp+0xc],eax
.org 0x17f
L_1900117f:
    lea    eax,[esp+0x14]
.org 0x183
L_19001183:
    mov    DWORD PTR [esp+0x10],0x9
.org 0x18b
L_1900118b:
    mov    DWORD PTR [esp+0x14],0x0
.org 0x193
L_19001193:
    mov    DWORD PTR [esp+0x18],0x0
.org 0x19b
L_1900119b:
    push   eax
.org 0x19c
L_1900119c:
    push   0x40
.org 0x19e
L_1900119e:
    lea    esi,[esp+0x18]
.org 0x1a2
L_190011a2:
    push   esi
.org 0x1a3
L_190011a3:
    lea    ebx,[esp+0x18]
.org 0x1a7
L_190011a7:
    push   ebx
.org 0x1a8
L_190011a8:
    push   0xffffffff
.org 0x1aa
L_190011aa:
    call   DWORD PTR [0x1900401c]
.org 0x1b0
L_190011b0:
    mov    esp,ebx
.org 0x1b2
L_190011b2:
    test   eax,eax
.org 0x1b4
L_190011b4:
    mov    eax,0x0
.org 0x1b9
L_190011b9:
    # js     190011fc
    .byte 0x78
    .byte L_190011fc - . - 1
.org 0x1bb
L_190011bb:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x1c0
L_190011c0:
    movzx  edx,BYTE PTR [ebp+eax*1+0x0]
.org 0x1c5
L_190011c5:
    mov    BYTE PTR [edi+eax*1],dl
.org 0x1c8
L_190011c8:
    add    eax,0x1
.org 0x1cb
L_190011cb:
    cmp    eax,0x9
.org 0x1ce
L_190011ce:
    # jne    190011c0
    .byte 0x75
    .byte L_190011c0 - . - 1
.org 0x1d0
L_190011d0:
    sub    esp,0x4
.org 0x1d3
L_190011d3:
    push   0x9
.org 0x1d5
L_190011d5:
    push   edi
.org 0x1d6
L_190011d6:
    push   0xffffffff
.org 0x1d8
L_190011d8:
    call   DWORD PTR [0x19004018]
.org 0x1de
L_190011de:
    sub    esp,0x8
.org 0x1e1
L_190011e1:
    lea    eax,[esp+0x18]
.org 0x1e5
L_190011e5:
    push   eax
.org 0x1e6
L_190011e6:
    push   DWORD PTR [esp+0x18]
.org 0x1ea
L_190011ea:
    push   esi
.org 0x1eb
L_190011eb:
    push   ebx
.org 0x1ec
L_190011ec:
    push   0xffffffff
.org 0x1ee
L_190011ee:
    call   DWORD PTR [0x1900401c]
.org 0x1f4
L_190011f4:
    mov    eax,0x1
.org 0x1f9
L_190011f9:
    add    esp,0xc
.org 0x1fc
L_190011fc:
    add    esp,0x1c
.org 0x1ff
L_190011ff:
    pop    ebx
.org 0x200
L_19001200:
    pop    esi
.org 0x201
L_19001201:
    pop    edi
.org 0x202
L_19001202:
    pop    ebp
.org 0x203
L_19001203:
    ret
.org 0x204
L_19001204:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x20c
L_1900120c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x210
L_19001210:
    # Original function: FHDUU_UseDefaultImage
    push   edi
.org 0x211
L_19001211:
    push   esi
.org 0x212
L_19001212:
    push   ebx
.org 0x213
L_19001213:
    sub    esp,0x20
.org 0x216
L_19001216:
    mov    esi,DWORD PTR [0x19004010]
.org 0x21c
L_1900121c:
    mov    ebx,DWORD PTR [esp+0x30]
.org 0x220
L_19001220:
    test   esi,esi
.org 0x222
L_19001222:
    # je     19001258
    .byte 0x74
    .byte L_19001258 - . - 1
.org 0x224
L_19001224:
    test   ebx,ebx
.org 0x226
L_19001226:
    # je     19001258
    .byte 0x74
    .byte L_19001258 - . - 1
.org 0x228
L_19001228:
    mov    ecx,DWORD PTR [ebx+0x3c]
.org 0x22b
L_1900122b:
    test   ecx,ecx
.org 0x22d
L_1900122d:
    # je     19001258
    .byte 0x74
    .byte L_19001258 - . - 1
.org 0x22f
L_1900122f:
    xor    eax,eax
.org 0x231
L_19001231:
    # jmp    19001247
    .byte 0xeb
    .byte L_19001247 - . - 1
.org 0x233
L_19001233:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x238
L_19001238:
    test   dx,dx
.org 0x23b
L_1900123b:
    # je     19001268
    .byte 0x74
    .byte L_19001268 - . - 1
.org 0x23d
L_1900123d:
    add    eax,0x2
.org 0x240
L_19001240:
    cmp    eax,0x80
.org 0x245
L_19001245:
    # je     19001258
    .byte 0x74
    .byte L_19001258 - . - 1
.org 0x247
L_19001247:
    movzx  edx,WORD PTR [eax+0x19003040]
.org 0x24e
L_1900124e:
    cmp    WORD PTR [ecx+eax*1],dx
.org 0x252
L_19001252:
    # je     19001238
    .byte 0x74
    .byte L_19001238 - . - 1
.org 0x254
L_19001254:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x258
L_19001258:
    xor    eax,eax
.org 0x25a
L_1900125a:
    add    esp,0x20
.org 0x25d
L_1900125d:
    pop    ebx
.org 0x25e
L_1900125e:
    pop    esi
.org 0x25f
L_1900125f:
    pop    edi
.org 0x260
L_19001260:
    ret
.org 0x261
L_19001261:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x268
L_19001268:
    mov    eax,DWORD PTR [ebx+0x54]
.org 0x26b
L_1900126b:
    sub    eax,0x1
.org 0x26e
L_1900126e:
    cmp    eax,0x1fff
.org 0x273
L_19001273:
    # ja     19001258
    .byte 0x77
    .byte L_19001258 - . - 1
.org 0x275
L_19001275:
    mov    edx,DWORD PTR [esi+0x4826b4]
.org 0x27b
L_1900127b:
    test   edx,edx
.org 0x27d
L_1900127d:
    # je     19001258
    .byte 0x74
    .byte L_19001258 - . - 1
.org 0x27f
L_1900127f:
    mov    edx,DWORD PTR [edx]
.org 0x281
L_19001281:
    test   edx,edx
.org 0x283
L_19001283:
    # je     19001258
    .byte 0x74
    .byte L_19001258 - . - 1
.org 0x285
L_19001285:
    imul   eax,eax,0x124
.org 0x28b
L_1900128b:
    add    edx,eax
.org 0x28d
L_1900128d:
    mov    eax,0x1
.org 0x292
L_19001292:
    cmp    BYTE PTR [edx],0x0
.org 0x295
L_19001295:
    # je     1900125a
    .byte 0x74
    .byte L_1900125a - . - 1
.org 0x297
L_19001297:
    mov    ecx,DWORD PTR [edx+0x10c]
.org 0x29d
L_1900129d:
    mov    DWORD PTR [esp+0x8],0x19002000
.org 0x2a5
L_190012a5:
    mov    DWORD PTR [esp+0xc],0x19002009
.org 0x2ad
L_190012ad:
    mov    DWORD PTR [esp+0x10],0x19002012
.org 0x2b5
L_190012b5:
    mov    DWORD PTR [esp+0x14],0x1900201b
.org 0x2bd
L_190012bd:
    mov    DWORD PTR [esp+0x18],0x1900202c
.org 0x2c5
L_190012c5:
    mov    DWORD PTR [esp+0x1c],0x1900203c
.org 0x2cd
L_190012cd:
    test   ecx,ecx
.org 0x2cf
L_190012cf:
    # je     19001258
    .byte 0x74
    .byte L_19001258 - . - 1
.org 0x2d1
L_190012d1:
    lea    esi,[esp+0x8]
.org 0x2d5
L_190012d5:
    lea    edi,[esp+0x20]
.org 0x2d9
L_190012d9:
    mov    eax,0x53
.org 0x2de
L_190012de:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x2e0
L_190012e0:
    mov    ebx,DWORD PTR [esi]
.org 0x2e2
L_190012e2:
    xor    edx,edx
.org 0x2e4
L_190012e4:
    test   al,al
.org 0x2e6
L_190012e6:
    # jne    190012fb
    .byte 0x75
    .byte L_190012fb - . - 1
.org 0x2e8
L_190012e8:
    # jmp    1900132b
    .byte 0xeb
    .byte L_1900132b - . - 1
.org 0x2ea
L_190012ea:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x2f0
L_190012f0:
    add    edx,0x1
.org 0x2f3
L_190012f3:
    movzx  eax,BYTE PTR [ebx+edx*1]
.org 0x2f7
L_190012f7:
    test   al,al
.org 0x2f9
L_190012f9:
    # je     19001318
    .byte 0x74
    .byte L_19001318 - . - 1
.org 0x2fb
L_190012fb:
    cmp    WORD PTR [ecx+edx*2],ax
.org 0x2ff
L_190012ff:
    # je     190012f0
    .byte 0x74
    .byte L_190012f0 - . - 1
.org 0x301
L_19001301:
    add    esi,0x4
.org 0x304
L_19001304:
    cmp    esi,edi
.org 0x306
L_19001306:
    # je     19001258
    .byte 0xf,0x84
    .long L_19001258 - . - 4
.org 0x30c
L_1900130c:
    mov    eax,DWORD PTR [esi]
.org 0x30e
L_1900130e:
    movzx  eax,BYTE PTR [eax]
.org 0x311
L_19001311:
    # jmp    190012e0
    .byte 0xeb
    .byte L_190012e0 - . - 1
.org 0x313
L_19001313:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x318
L_19001318:
    lea    eax,[ecx+edx*2]
.org 0x31b
L_1900131b:
    cmp    WORD PTR [eax],0x0
.org 0x31f
L_1900131f:
    # jne    19001301
    .byte 0x75
    .byte L_19001301 - . - 1
.org 0x321
L_19001321:
    mov    eax,0x1
.org 0x326
L_19001326:
    # jmp    1900125a
    .byte 0xe9
    .long L_1900125a - . - 4
.org 0x32b
L_1900132b:
    mov    eax,ecx
.org 0x32d
L_1900132d:
    # jmp    1900131b
    .byte 0xeb
    .byte L_1900131b - . - 1
.org 0x32f
L_1900132f:
    # Alignment padding: nop
    .byte 0x90
.org 0x330
L_19001330:
    # Original function: XenoPlugin_Query
    push   esi
.org 0x331
L_19001331:
    push   ebx
.org 0x332
L_19001332:
    mov    ecx,DWORD PTR [esp+0xc]
.org 0x336
L_19001336:
    test   ecx,ecx
.org 0x338
L_19001338:
    # je     1900140a
    .byte 0xf,0x84
    .long L_1900140a - . - 4
.org 0x33e
L_1900133e:
    mov    ebx,DWORD PTR [ecx]
.org 0x340
L_19001340:
    xor    eax,eax
.org 0x342
L_19001342:
    cmp    ebx,0x207
.org 0x348
L_19001348:
    # jbe    19001405
    .byte 0xf,0x86
    .long L_19001405 - . - 4
.org 0x34e
L_1900134e:
    mov    DWORD PTR [ecx+0x4],0x1
.org 0x355
L_19001355:
    lea    edx,[ecx+0x8]
.org 0x358
L_19001358:
    lea    eax,[ecx+0x88]
.org 0x35e
L_1900135e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x360
L_19001360:
    mov    DWORD PTR [edx],0x0
.org 0x366
L_19001366:
    add    edx,0x8
.org 0x369
L_19001369:
    mov    DWORD PTR [edx-0x4],0x0
.org 0x370
L_19001370:
    cmp    edx,eax
.org 0x372
L_19001372:
    # jne    19001360
    .byte 0x75
    .byte L_19001360 - . - 1
.org 0x374
L_19001374:
    xor    edx,edx
.org 0x376
L_19001376:
    mov    esi,0x46
.org 0x37b
L_1900137b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x380
L_19001380:
    mov    WORD PTR [ecx+edx*1+0x8],si
.org 0x385
L_19001385:
    movzx  esi,WORD PTR [edx+0x19003002]
.org 0x38c
L_1900138c:
    add    edx,0x2
.org 0x38f
L_1900138f:
    test   si,si
.org 0x392
L_19001392:
    # jne    19001380
    .byte 0x75
    .byte L_19001380 - . - 1
.org 0x394
L_19001394:
    lea    edx,[ecx+0xc8]
.org 0x39a
L_1900139a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x3a0
L_190013a0:
    mov    DWORD PTR [eax],0x0
.org 0x3a6
L_190013a6:
    add    eax,0x8
.org 0x3a9
L_190013a9:
    mov    DWORD PTR [eax-0x4],0x0
.org 0x3b0
L_190013b0:
    cmp    eax,edx
.org 0x3b2
L_190013b2:
    # jne    190013a0
    .byte 0x75
    .byte L_190013a0 - . - 1
.org 0x3b4
L_190013b4:
    mov    DWORD PTR [ecx+0x88],0x2e0031
.org 0x3be
L_190013be:
    mov    edx,0x30
.org 0x3c3
L_190013c3:
    mov    WORD PTR [ecx+0x8c],dx
.org 0x3ca
L_190013ca:
    lea    edx,[ecx+0x208]
.org 0x3d0
L_190013d0:
    mov    DWORD PTR [eax],0x0
.org 0x3d6
L_190013d6:
    add    eax,0x8
.org 0x3d9
L_190013d9:
    mov    DWORD PTR [eax-0x4],0x0
.org 0x3e0
L_190013e0:
    cmp    eax,edx
.org 0x3e2
L_190013e2:
    # jne    190013d0
    .byte 0x75
    .byte L_190013d0 - . - 1
.org 0x3e4
L_190013e4:
    cmp    ebx,0x20f
.org 0x3ea
L_190013ea:
    # jbe    19001400
    .byte 0x76
    .byte L_19001400 - . - 1
.org 0x3ec
L_190013ec:
    mov    DWORD PTR [ecx+0x20c],0x0
.org 0x3f6
L_190013f6:
    mov    DWORD PTR [ecx+0x208],0x0
.org 0x400
L_19001400:
    mov    eax,0x1
.org 0x405
L_19001405:
    pop    ebx
.org 0x406
L_19001406:
    pop    esi
.org 0x407
L_19001407:
    ret    0x4
.org 0x40a
L_1900140a:
    xor    eax,eax
.org 0x40c
L_1900140c:
    pop    ebx
.org 0x40d
L_1900140d:
    pop    esi
.org 0x40e
L_1900140e:
    ret    0x4
.org 0x411
L_19001411:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x419
L_19001419:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x420
L_19001420:
    # Original function: XenoPlugin_Initialize
    push   ebp
.org 0x421
L_19001421:
    push   edi
.org 0x422
L_19001422:
    push   esi
.org 0x423
L_19001423:
    push   ebx
.org 0x424
L_19001424:
    sub    esp,0x3c
.org 0x427
L_19001427:
    mov    ecx,DWORD PTR [0x19004014]
.org 0x42d
L_1900142d:
    mov    eax,DWORD PTR [esp+0x50]
.org 0x431
L_19001431:
    test   ecx,ecx
.org 0x433
L_19001433:
    # jne    190016b0
    .byte 0xf,0x85
    .long L_190016b0 - . - 4
.org 0x439
L_19001439:
    mov    edx,0x1
.org 0x43e
L_1900143e:
    test   eax,eax
.org 0x440
L_19001440:
    # je     190014e3
    .byte 0xf,0x84
    .long L_190014e3 - . - 4
.org 0x446
L_19001446:
    cmp    DWORD PTR [eax],0x1f
.org 0x449
L_19001449:
    # jbe    190014e3
    .byte 0xf,0x86
    .long L_190014e3 - . - 4
.org 0x44f
L_1900144f:
    cmp    DWORD PTR [eax+0x4],0x1
.org 0x453
L_19001453:
    # jne    190014e3
    .byte 0xf,0x85
    .long L_190014e3 - . - 4
.org 0x459
L_19001459:
    mov    eax,DWORD PTR [eax+0x8]
.org 0x45c
L_1900145c:
    mov    edx,0x2
.org 0x461
L_19001461:
    mov    ds:0x19004010,eax
.org 0x466
L_19001466:
    test   eax,eax
.org 0x468
L_19001468:
    # je     190014e3
    .byte 0x74
    .byte L_190014e3 - . - 1
.org 0x46a
L_1900146a:
    cmp    WORD PTR [eax],0x5a4d
.org 0x46f
L_1900146f:
    # jne    190014e3
    .byte 0x75
    .byte L_190014e3 - . - 1
.org 0x471
L_19001471:
    mov    ecx,DWORD PTR [eax+0x3c]
.org 0x474
L_19001474:
    cmp    ecx,0x100000
.org 0x47a
L_1900147a:
    # ja     190014e3
    .byte 0x77
    .byte L_190014e3 - . - 1
.org 0x47c
L_1900147c:
    add    ecx,eax
.org 0x47e
L_1900147e:
    cmp    DWORD PTR [ecx],0x4550
.org 0x484
L_19001484:
    # jne    190014e3
    .byte 0x75
    .byte L_190014e3 - . - 1
.org 0x486
L_19001486:
    cmp    WORD PTR [ecx+0x18],0x10b
.org 0x48c
L_1900148c:
    # jne    190014e3
    .byte 0x75
    .byte L_190014e3 - . - 1
.org 0x48e
L_1900148e:
    cmp    DWORD PTR [ecx+0x50],0x4826b8
.org 0x495
L_19001495:
    # jbe    190014e3
    .byte 0x76
    .byte L_190014e3 - . - 1
.org 0x497
L_19001497:
    mov    edx,0x617e
.org 0x49c
L_1900149c:
    mov    DWORD PTR [esp+0x1e],0x83fc458b
.org 0x4a4
L_190014a4:
    mov    WORD PTR [esp+0x2e],dx
.org 0x4a9
L_190014a9:
    xor    edx,edx
.org 0x4ab
L_190014ab:
    mov    DWORD PTR [esp+0x22],0x7e005478
.org 0x4b3
L_190014b3:
    mov    DWORD PTR [esp+0x26],0xfc458b5e
.org 0x4bb
L_190014bb:
    mov    DWORD PTR [esp+0x2a],0x547883
.org 0x4c3
L_190014c3:
    # jmp    190014d0
    .byte 0xeb
    .byte L_190014d0 - . - 1
.org 0x4c5
L_190014c5:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x4c8
L_190014c8:
    add    edx,0x1
.org 0x4cb
L_190014cb:
    cmp    edx,0x9
.org 0x4ce
L_190014ce:
    # je     190014f0
    .byte 0x74
    .byte L_190014f0 - . - 1
.org 0x4d0
L_190014d0:
    movzx  ebx,BYTE PTR [esp+edx*1+0x1e]
.org 0x4d5
L_190014d5:
    cmp    BYTE PTR [eax+edx*1+0x344b4d],bl
.org 0x4dc
L_190014dc:
    # je     190014c8
    .byte 0x74
    .byte L_190014c8 - . - 1
.org 0x4de
L_190014de:
    mov    edx,0x4
.org 0x4e3
L_190014e3:
    add    esp,0x3c
.org 0x4e6
L_190014e6:
    mov    eax,edx
.org 0x4e8
L_190014e8:
    pop    ebx
.org 0x4e9
L_190014e9:
    pop    esi
.org 0x4ea
L_190014ea:
    pop    edi
.org 0x4eb
L_190014eb:
    pop    ebp
.org 0x4ec
L_190014ec:
    ret    0x4
.org 0x4ef
L_190014ef:
    # Alignment padding: nop
    .byte 0x90
.org 0x4f0
L_190014f0:
    xor    edx,edx
.org 0x4f2
L_190014f2:
    # jmp    19001500
    .byte 0xeb
    .byte L_19001500 - . - 1
.org 0x4f4
L_190014f4:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x4f8
L_190014f8:
    add    edx,0x1
.org 0x4fb
L_190014fb:
    cmp    edx,0x9
.org 0x4fe
L_190014fe:
    # je     19001510
    .byte 0x74
    .byte L_19001510 - . - 1
.org 0x500
L_19001500:
    movzx  ebx,BYTE PTR [esp+edx*1+0x27]
.org 0x505
L_19001505:
    cmp    BYTE PTR [eax+edx*1+0x344c77],bl
.org 0x50c
L_1900150c:
    # je     190014f8
    .byte 0x74
    .byte L_190014f8 - . - 1
.org 0x50e
L_1900150e:
    # jmp    190014de
    .byte 0xeb
    .byte L_190014de - . - 1
.org 0x510
L_19001510:
    # call   19001080
    .byte 0xe8
    .long L_19001080 - . - 4
.org 0x515
L_19001515:
    mov    ebx,eax
.org 0x517
L_19001517:
    test   eax,eax
.org 0x519
L_19001519:
    # je     190015d0
    .byte 0xf,0x84
    .long L_190015d0 - . - 4
.org 0x51f
L_1900151f:
    mov    ebx,DWORD PTR [ebx+0xc]
.org 0x522
L_19001522:
    test   ebx,ebx
.org 0x524
L_19001524:
    # je     190015d0
    .byte 0xf,0x84
    .long L_190015d0 - . - 4
.org 0x52a
L_1900152a:
    lea    ebp,[ebx+0x14]
.org 0x52d
L_1900152d:
    mov    ebx,DWORD PTR [ebx+0x14]
.org 0x530
L_19001530:
    test   ebx,ebx
.org 0x532
L_19001532:
    # je     190016b7
    .byte 0xf,0x84
    .long L_190016b7 - . - 4
.org 0x538
L_19001538:
    cmp    ebp,ebx
.org 0x53a
L_1900153a:
    # je     190016b7
    .byte 0xf,0x84
    .long L_190016b7 - . - 4
.org 0x540
L_19001540:
    mov    DWORD PTR [esp+0x8],ebp
.org 0x544
L_19001544:
    xor    esi,esi
.org 0x546
L_19001546:
    # jmp    19001572
    .byte 0xeb
    .byte L_19001572 - . - 1
.org 0x548
L_19001548:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x550
L_19001550:
    mov    ebx,DWORD PTR [ebx]
.org 0x552
L_19001552:
    add    esi,0x1
.org 0x555
L_19001555:
    test   ebx,ebx
.org 0x557
L_19001557:
    setne  dl
.org 0x55a
L_1900155a:
    cmp    DWORD PTR [esp+0x8],ebx
.org 0x55e
L_1900155e:
    setne  al
.org 0x561
L_19001561:
    test   dl,al
.org 0x563
L_19001563:
    # je     190016b7
    .byte 0xf,0x84
    .long L_190016b7 - . - 4
.org 0x569
L_19001569:
    cmp    esi,0x40
.org 0x56c
L_1900156c:
    # je     190016b7
    .byte 0xf,0x84
    .long L_190016b7 - . - 4
.org 0x572
L_19001572:
    mov    ebp,DWORD PTR [ebx+0x28]
.org 0x575
L_19001575:
    test   ebp,ebp
.org 0x577
L_19001577:
    # je     19001550
    .byte 0x74
    .byte L_19001550 - . - 1
.org 0x579
L_19001579:
    mov    DWORD PTR [esp+0xc],ebx
.org 0x57d
L_1900157d:
    xor    ecx,ecx
.org 0x57f
L_1900157f:
    mov    edx,0x6e
.org 0x584
L_19001584:
    # jmp    1900159e
    .byte 0xeb
    .byte L_1900159e - . - 1
.org 0x586
L_19001586:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x58e
L_1900158e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x590
L_19001590:
    movzx  edx,BYTE PTR [ecx+0x1900204e]
.org 0x597
L_19001597:
    add    ecx,0x1
.org 0x59a
L_1900159a:
    test   dl,dl
.org 0x59c
L_1900159c:
    # je     190015c0
    .byte 0x74
    .byte L_190015c0 - . - 1
.org 0x59e
L_1900159e:
    movzx  eax,WORD PTR [ebp+ecx*2+0x0]
.org 0x5a3
L_190015a3:
    movzx  edx,dl
.org 0x5a6
L_190015a6:
    lea    edi,[eax-0x41]
.org 0x5a9
L_190015a9:
    lea    ebx,[eax+0x20]
.org 0x5ac
L_190015ac:
    cmp    di,0x1a
.org 0x5b0
L_190015b0:
    cmovb  eax,ebx
.org 0x5b3
L_190015b3:
    cmp    dx,ax
.org 0x5b6
L_190015b6:
    # je     19001590
    .byte 0x74
    .byte L_19001590 - . - 1
.org 0x5b8
L_190015b8:
    mov    ebx,DWORD PTR [esp+0xc]
.org 0x5bc
L_190015bc:
    # jmp    19001550
    .byte 0xeb
    .byte L_19001550 - . - 1
.org 0x5be
L_190015be:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x5c0
L_190015c0:
    cmp    WORD PTR [ebp+ecx*2+0x0],0x0
.org 0x5c6
L_190015c6:
    mov    ebx,DWORD PTR [esp+0xc]
.org 0x5ca
L_190015ca:
    # jne    19001550
    .byte 0x75
    .byte L_19001550 - . - 1
.org 0x5cc
L_190015cc:
    mov    ebx,DWORD PTR [ebx+0x10]
.org 0x5cf
L_190015cf:
    # Alignment padding: nop
    .byte 0x90
.org 0x5d0
L_190015d0:
    mov    edx,0x19002057
.org 0x5d5
L_190015d5:
    mov    eax,ebx
.org 0x5d7
L_190015d7:
    # call   19001090
    .byte 0xe8
    .long L_19001090 - . - 4
.org 0x5dc
L_190015dc:
    mov    edx,0x1900206e
.org 0x5e1
L_190015e1:
    mov    ds:0x1900401c,eax
.org 0x5e6
L_190015e6:
    mov    esi,eax
.org 0x5e8
L_190015e8:
    mov    eax,ebx
.org 0x5ea
L_190015ea:
    # call   19001090
    .byte 0xe8
    .long L_19001090 - . - 4
.org 0x5ef
L_190015ef:
    mov    ds:0x19004018,eax
.org 0x5f4
L_190015f4:
    test   esi,esi
.org 0x5f6
L_190015f6:
    # je     190016be
    .byte 0xf,0x84
    .long L_190016be - . - 4
.org 0x5fc
L_190015fc:
    test   eax,eax
.org 0x5fe
L_190015fe:
    # je     190016be
    .byte 0xf,0x84
    .long L_190016be - . - 4
.org 0x604
L_19001604:
    mov    eax,ds:0x19004010
.org 0x609
L_19001609:
    mov    DWORD PTR [esp+0x15],0xe9
.org 0x611
L_19001611:
    mov    DWORD PTR [esp+0x19],0x90909000
.org 0x619
L_19001619:
    lea    edx,[eax+0x344bb4]
.org 0x61f
L_1900161f:
    mov    BYTE PTR [esp+0x1d],0x90
.org 0x624
L_19001624:
    mov    DWORD PTR [0x1900400c],edx
.org 0x62a
L_1900162a:
    lea    edx,[eax+0x344b56]
.org 0x630
L_19001630:
    mov    DWORD PTR [0x19004008],edx
.org 0x636
L_19001636:
    lea    edx,[eax+0x344ce1]
.org 0x63c
L_1900163c:
    mov    DWORD PTR [0x19004004],edx
.org 0x642
L_19001642:
    lea    edx,[eax+0x344c80]
.org 0x648
L_19001648:
    mov    DWORD PTR [0x19004000],edx
.org 0x64e
L_1900164e:
    mov    edx,0x18cbc4ae
.org 0x653
L_19001653:
    sub    edx,eax
.org 0x655
L_19001655:
    add    eax,0x344b4d
.org 0x65a
L_1900165a:
    mov    DWORD PTR [esp+0x16],edx
.org 0x65e
L_1900165e:
    lea    edx,[esp+0x15]
.org 0x662
L_19001662:
    # call   19001170
    .byte 0xe8
    .long L_19001170 - . - 4
.org 0x667
L_19001667:
    test   eax,eax
.org 0x669
L_19001669:
    # je     190016db
    .byte 0x74
    .byte L_190016db - . - 1
.org 0x66b
L_1900166b:
    mov    eax,ds:0x19004010
.org 0x670
L_19001670:
    mov    edx,0x18cbc3c4
.org 0x675
L_19001675:
    mov    DWORD PTR [esp+0x15],0xe9
.org 0x67d
L_1900167d:
    mov    DWORD PTR [esp+0x19],0x90909000
.org 0x685
L_19001685:
    sub    edx,eax
.org 0x687
L_19001687:
    add    eax,0x344c77
.org 0x68c
L_1900168c:
    mov    BYTE PTR [esp+0x1d],0x90
.org 0x691
L_19001691:
    mov    DWORD PTR [esp+0x16],edx
.org 0x695
L_19001695:
    lea    edx,[esp+0x15]
.org 0x699
L_19001699:
    # call   19001170
    .byte 0xe8
    .long L_19001170 - . - 4
.org 0x69e
L_1900169e:
    test   eax,eax
.org 0x6a0
L_190016a0:
    # je     190016c8
    .byte 0x74
    .byte L_190016c8 - . - 1
.org 0x6a2
L_190016a2:
    mov    DWORD PTR [0x19004014],0x1
.org 0x6ac
L_190016ac:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x6b0
L_190016b0:
    xor    edx,edx
.org 0x6b2
L_190016b2:
    # jmp    190014e3
    .byte 0xe9
    .long L_190014e3 - . - 4
.org 0x6b7
L_190016b7:
    xor    ebx,ebx
.org 0x6b9
L_190016b9:
    # jmp    190015d0
    .byte 0xe9
    .long L_190015d0 - . - 4
.org 0x6be
L_190016be:
    mov    edx,0x3
.org 0x6c3
L_190016c3:
    # jmp    190014e3
    .byte 0xe9
    .long L_190014e3 - . - 4
.org 0x6c8
L_190016c8:
    mov    eax,ds:0x19004010
.org 0x6cd
L_190016cd:
    lea    edx,[esp+0x1e]
.org 0x6d1
L_190016d1:
    add    eax,0x344b4d
.org 0x6d6
L_190016d6:
    # call   19001170
    .byte 0xe8
    .long L_19001170 - . - 4
.org 0x6db
L_190016db:
    mov    edx,0x5
.org 0x6e0
L_190016e0:
    # jmp    190014e3
    .byte 0xe9
    .long L_190014e3 - . - 4
.org 0x6e5
L_190016e5:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x6ed
L_190016ed:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x6f0
L_190016f0:
    # Original function: DllMain
    mov    eax,0x1
.org 0x6f5
L_190016f5:
    ret    0xc
.org 0x6f8
    # Linker constructor/destructor sentinel tables (data, not instructions).
    .long 0xffffffff
    .long 0x0
    .long 0xffffffff
    .long 0x0
.org 0x708
