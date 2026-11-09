/* Recovered complete x86 source; original C was not supplied.
 * Each instruction and original function name is visible. Fixed layout and
 * explicit branch widths preserve this DLL exactly. */
.intel_syntax noprefix
.section .text,"ax",@progbits
.org 0x0
L_13001000:
    # Original function: pebAddress
    mov    eax,fs:0x30
.org 0x6
L_13001006:
    ret
.org 0x7
L_13001007:
    ud2
.org 0x9
L_13001009:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x10
L_13001010:
    # Original function: findExport
    push   ebp
.org 0x11
L_13001011:
    push   edi
.org 0x12
L_13001012:
    push   esi
.org 0x13
L_13001013:
    push   ebx
.org 0x14
L_13001014:
    sub    esp,0x14
.org 0x17
L_13001017:
    test   eax,eax
.org 0x19
L_13001019:
    # je     130010a4
    .byte 0xf,0x84
    .long L_130010a4 - . - 4
.org 0x1f
L_1300101f:
    xor    esi,esi
.org 0x21
L_13001021:
    cmp    WORD PTR [eax],0x5a4d
.org 0x26
L_13001026:
    mov    edi,eax
.org 0x28
L_13001028:
    # jne    130010a6
    .byte 0x75
    .byte L_130010a6 - . - 1
.org 0x2a
L_1300102a:
    mov    ebx,edx
.org 0x2c
L_1300102c:
    mov    edx,DWORD PTR [eax+0x3c]
.org 0x2f
L_1300102f:
    add    edx,eax
.org 0x31
L_13001031:
    cmp    DWORD PTR [edx],0x4550
.org 0x37
L_13001037:
    # jne    130010a6
    .byte 0x75
    .byte L_130010a6 - . - 1
.org 0x39
L_13001039:
    cmp    WORD PTR [edx+0x18],0x10b
.org 0x3f
L_1300103f:
    # jne    130010a6
    .byte 0x75
    .byte L_130010a6 - . - 1
.org 0x41
L_13001041:
    mov    eax,DWORD PTR [edx+0x78]
.org 0x44
L_13001044:
    mov    DWORD PTR [esp+0x8],eax
.org 0x48
L_13001048:
    test   eax,eax
.org 0x4a
L_1300104a:
    # je     130010a6
    .byte 0x74
    .byte L_130010a6 - . - 1
.org 0x4c
L_1300104c:
    lea    ecx,[edi+eax*1]
.org 0x4f
L_1300104f:
    mov    ebp,DWORD PTR [ecx+0x18]
.org 0x52
L_13001052:
    mov    eax,DWORD PTR [ecx+0x20]
.org 0x55
L_13001055:
    mov    DWORD PTR [esp+0x4],ebp
.org 0x59
L_13001059:
    test   ebp,ebp
.org 0x5b
L_1300105b:
    # je     130010a6
    .byte 0x74
    .byte L_130010a6 - . - 1
.org 0x5d
L_1300105d:
    add    eax,edi
.org 0x5f
L_1300105f:
    mov    DWORD PTR [esp+0xc],edx
.org 0x63
L_13001063:
    xor    ebp,ebp
.org 0x65
L_13001065:
    mov    DWORD PTR [esp],eax
.org 0x68
L_13001068:
    mov    DWORD PTR [esp+0x10],ecx
.org 0x6c
L_1300106c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x70
L_13001070:
    mov    eax,DWORD PTR [esp]
.org 0x73
L_13001073:
    mov    esi,DWORD PTR [eax+ebp*4]
.org 0x76
L_13001076:
    xor    eax,eax
.org 0x78
L_13001078:
    add    esi,edi
.org 0x7a
L_1300107a:
    # jmp    1300108b
    .byte 0xeb
    .byte L_1300108b - . - 1
.org 0x7c
L_1300107c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x80
L_13001080:
    test   cl,cl
.org 0x82
L_13001082:
    # je     1300109b
    .byte 0x74
    .byte L_1300109b - . - 1
.org 0x84
L_13001084:
    add    eax,0x1
.org 0x87
L_13001087:
    cmp    dl,cl
.org 0x89
L_13001089:
    # jne    1300109b
    .byte 0x75
    .byte L_1300109b - . - 1
.org 0x8b
L_1300108b:
    movzx  edx,BYTE PTR [esi+eax*1]
.org 0x8f
L_1300108f:
    movzx  ecx,BYTE PTR [ebx+eax*1]
.org 0x93
L_13001093:
    test   dl,dl
.org 0x95
L_13001095:
    # jne    13001080
    .byte 0x75
    .byte L_13001080 - . - 1
.org 0x97
L_13001097:
    test   cl,cl
.org 0x99
L_13001099:
    # je     130010b0
    .byte 0x74
    .byte L_130010b0 - . - 1
.org 0x9b
L_1300109b:
    add    ebp,0x1
.org 0x9e
L_1300109e:
    cmp    DWORD PTR [esp+0x4],ebp
.org 0xa2
L_130010a2:
    # jne    13001070
    .byte 0x75
    .byte L_13001070 - . - 1
.org 0xa4
L_130010a4:
    xor    esi,esi
.org 0xa6
L_130010a6:
    add    esp,0x14
.org 0xa9
L_130010a9:
    mov    eax,esi
.org 0xab
L_130010ab:
    pop    ebx
.org 0xac
L_130010ac:
    pop    esi
.org 0xad
L_130010ad:
    pop    edi
.org 0xae
L_130010ae:
    pop    ebp
.org 0xaf
L_130010af:
    ret
.org 0xb0
L_130010b0:
    mov    ecx,DWORD PTR [esp+0x10]
.org 0xb4
L_130010b4:
    lea    eax,[edi+ebp*2]
.org 0xb7
L_130010b7:
    mov    edx,DWORD PTR [esp+0xc]
.org 0xbb
L_130010bb:
    xor    esi,esi
.org 0xbd
L_130010bd:
    add    eax,DWORD PTR [ecx+0x24]
.org 0xc0
L_130010c0:
    movzx  eax,WORD PTR [eax]
.org 0xc3
L_130010c3:
    cmp    eax,DWORD PTR [ecx+0x14]
.org 0xc6
L_130010c6:
    # jae    130010a6
    .byte 0x73
    .byte L_130010a6 - . - 1
.org 0xc8
L_130010c8:
    lea    eax,[edi+eax*4]
.org 0xcb
L_130010cb:
    add    eax,DWORD PTR [ecx+0x1c]
.org 0xce
L_130010ce:
    mov    ecx,DWORD PTR [eax]
.org 0xd0
L_130010d0:
    mov    eax,DWORD PTR [esp+0x8]
.org 0xd4
L_130010d4:
    cmp    ecx,eax
.org 0xd6
L_130010d6:
    # jae    130010dd
    .byte 0x73
    .byte L_130010dd - . - 1
.org 0xd8
L_130010d8:
    lea    esi,[edi+ecx*1]
.org 0xdb
L_130010db:
    # jmp    130010a6
    .byte 0xeb
    .byte L_130010a6 - . - 1
.org 0xdd
L_130010dd:
    add    eax,DWORD PTR [edx+0x7c]
.org 0xe0
L_130010e0:
    cmp    ecx,eax
.org 0xe2
L_130010e2:
    # jb     130010a6
    .byte 0x72
    .byte L_130010a6 - . - 1
.org 0xe4
L_130010e4:
    # jmp    130010d8
    .byte 0xeb
    .byte L_130010d8 - . - 1
.org 0xe6
L_130010e6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xee
L_130010ee:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xf0
L_130010f0:
    # Original function: writeBytes
    push   ebp
.org 0xf1
L_130010f1:
    push   edi
.org 0xf2
L_130010f2:
    push   esi
.org 0xf3
L_130010f3:
    push   ebx
.org 0xf4
L_130010f4:
    mov    ebx,eax
.org 0xf6
L_130010f6:
    sub    esp,0x2c
.org 0xf9
L_130010f9:
    mov    DWORD PTR [esp+0x10],eax
.org 0xfd
L_130010fd:
    mov    eax,ds:0x1300500c
.org 0x102
L_13001102:
    mov    DWORD PTR [esp+0x14],ecx
.org 0x106
L_13001106:
    mov    DWORD PTR [esp+0x18],0x0
.org 0x10e
L_1300110e:
    mov    DWORD PTR [esp+0x1c],0x0
.org 0x116
L_13001116:
    test   eax,eax
.org 0x118
L_13001118:
    # je     130011a0
    .byte 0xf,0x84
    .long L_130011a0 - . - 4
.org 0x11e
L_1300111e:
    mov    DWORD PTR [esp+0xc],ecx
.org 0x122
L_13001122:
    sub    esp,0xc
.org 0x125
L_13001125:
    mov    ebp,edx
.org 0x127
L_13001127:
    lea    ecx,[esp+0x24]
.org 0x12b
L_1300112b:
    push   ecx
.org 0x12c
L_1300112c:
    push   0x40
.org 0x12e
L_1300112e:
    lea    edi,[esp+0x28]
.org 0x132
L_13001132:
    push   edi
.org 0x133
L_13001133:
    lea    esi,[esp+0x28]
.org 0x137
L_13001137:
    push   esi
.org 0x138
L_13001138:
    push   0xffffffff
.org 0x13a
L_1300113a:
    call   eax
.org 0x13c
L_1300113c:
    add    esp,0xc
.org 0x13f
L_1300113f:
    test   eax,eax
.org 0x141
L_13001141:
    # js     130011a0
    .byte 0x78
    .byte L_130011a0 - . - 1
.org 0x143
L_13001143:
    mov    edx,DWORD PTR [esp+0xc]
.org 0x147
L_13001147:
    mov    eax,ebp
.org 0x149
L_13001149:
    mov    ecx,ebx
.org 0x14b
L_1300114b:
    lea    ebp,[ebp+edx*1+0x0]
.org 0x14f
L_1300114f:
    # Alignment padding: nop
    .byte 0x90
.org 0x150
L_13001150:
    movzx  edx,BYTE PTR [eax]
.org 0x153
L_13001153:
    add    eax,0x1
.org 0x156
L_13001156:
    add    ecx,0x1
.org 0x159
L_13001159:
    mov    BYTE PTR [ecx-0x1],dl
.org 0x15c
L_1300115c:
    cmp    eax,ebp
.org 0x15e
L_1300115e:
    # jne    13001150
    .byte 0x75
    .byte L_13001150 - . - 1
.org 0x160
L_13001160:
    mov    edx,DWORD PTR [esp+0xc]
.org 0x164
L_13001164:
    sub    esp,0x4
.org 0x167
L_13001167:
    push   edx
.org 0x168
L_13001168:
    push   ebx
.org 0x169
L_13001169:
    push   0xffffffff
.org 0x16b
L_1300116b:
    call   DWORD PTR [0x13005008]
.org 0x171
L_13001171:
    sub    esp,0x8
.org 0x174
L_13001174:
    lea    eax,[esp+0x28]
.org 0x178
L_13001178:
    push   eax
.org 0x179
L_13001179:
    push   DWORD PTR [esp+0x28]
.org 0x17d
L_1300117d:
    push   edi
.org 0x17e
L_1300117e:
    push   esi
.org 0x17f
L_1300117f:
    push   0xffffffff
.org 0x181
L_13001181:
    call   DWORD PTR [0x1300500c]
.org 0x187
L_13001187:
    mov    eax,0x1
.org 0x18c
L_1300118c:
    add    esp,0xc
.org 0x18f
L_1300118f:
    add    esp,0x2c
.org 0x192
L_13001192:
    pop    ebx
.org 0x193
L_13001193:
    pop    esi
.org 0x194
L_13001194:
    pop    edi
.org 0x195
L_13001195:
    pop    ebp
.org 0x196
L_13001196:
    ret
.org 0x197
L_13001197:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x19f
L_1300119f:
    # Alignment padding: nop
    .byte 0x90
.org 0x1a0
L_130011a0:
    add    esp,0x2c
.org 0x1a3
L_130011a3:
    xor    eax,eax
.org 0x1a5
L_130011a5:
    pop    ebx
.org 0x1a6
L_130011a6:
    pop    esi
.org 0x1a7
L_130011a7:
    pop    edi
.org 0x1a8
L_130011a8:
    pop    ebp
.org 0x1a9
L_130011a9:
    ret
.org 0x1aa
L_130011aa:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x1b0
L_130011b0:
    # Original function: intBonusTrampoline
    push   ebp
.org 0x1b1
L_130011b1:
    # Explicit original instruction encoding: mov    ebp,esp
    .byte 0x8b,0xec
.org 0x1b3
L_130011b3:
    add    esp,0xffffffe0
.org 0x1b6
L_130011b6:
    # jmp    130011bb
    .byte 0xe9
    .long L_130011bb - . - 4
.org 0x1bb
L_130011bb:
    ud2
.org 0x1bd
L_130011bd:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x1c0
L_130011c0:
    # Original function: intBonusHook
    push   ebx
.org 0x1c1
L_130011c1:
    push   esi
.org 0x1c2
L_130011c2:
    push   edi
.org 0x1c3
L_130011c3:
    mov    ebx,eax
.org 0x1c5
L_130011c5:
    push   ecx
.org 0x1c6
L_130011c6:
    push   edx
.org 0x1c7
L_130011c7:
    push   ebx
.org 0x1c8
L_130011c8:
    # call   13001320
    .byte 0xe8
    .long L_13001320 - . - 4
.org 0x1cd
L_130011cd:
    add    esp,0x4
.org 0x1d0
L_130011d0:
    pop    edx
.org 0x1d1
L_130011d1:
    pop    ecx
.org 0x1d2
L_130011d2:
    test   eax,eax
.org 0x1d4
L_130011d4:
    # je     13001205
    .byte 0x74
    .byte L_13001205 - . - 1
.org 0x1d6
L_130011d6:
    push   edx
.org 0x1d7
L_130011d7:
    push   ecx
.org 0x1d8
L_130011d8:
    sub    esp,0x60
.org 0x1db
L_130011db:
    mov    edi,esp
.org 0x1dd
L_130011dd:
    mov    esi,ebx
.org 0x1df
L_130011df:
    mov    ecx,0x18
.org 0x1e4
L_130011e4:
    rep movs DWORD PTR es:[edi],DWORD PTR [[esi]]
.org 0x1e6
L_130011e6:
    mov    DWORD PTR [esp+0x54],0x0
.org 0x1ee
L_130011ee:
    mov    eax,esp
.org 0x1f0
L_130011f0:
    mov    ecx,DWORD PTR [esp+0x60]
.org 0x1f4
L_130011f4:
    mov    edx,DWORD PTR [esp+0x64]
.org 0x1f8
L_130011f8:
    call   DWORD PTR [0x13005004]
.org 0x1fe
L_130011fe:
    add    esp,0x68
.org 0x201
L_13001201:
    pop    edi
.org 0x202
L_13001202:
    pop    esi
.org 0x203
L_13001203:
    pop    ebx
.org 0x204
L_13001204:
    ret
.org 0x205
L_13001205:
    mov    eax,ebx
.org 0x207
L_13001207:
    pop    edi
.org 0x208
L_13001208:
    pop    esi
.org 0x209
L_13001209:
    pop    ebx
.org 0x20a
L_1300120a:
    jmp    DWORD PTR [0x13005004]
.org 0x210
L_13001210:
    ud2
.org 0x212
L_13001212:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x21a
L_1300121a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x220
L_13001220:
    # Original function: extBonusTrampoline
    push   ebp
.org 0x221
L_13001221:
    # Explicit original instruction encoding: mov    ebp,esp
    .byte 0x8b,0xec
.org 0x223
L_13001223:
    add    esp,0xffffffd0
.org 0x226
L_13001226:
    # jmp    1300122b
    .byte 0xe9
    .long L_1300122b - . - 4
.org 0x22b
L_1300122b:
    ud2
.org 0x22d
L_1300122d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x230
L_13001230:
    # Original function: extBonusHook
    push   ebx
.org 0x231
L_13001231:
    push   esi
.org 0x232
L_13001232:
    push   edi
.org 0x233
L_13001233:
    mov    ebx,eax
.org 0x235
L_13001235:
    push   ecx
.org 0x236
L_13001236:
    push   edx
.org 0x237
L_13001237:
    push   ebx
.org 0x238
L_13001238:
    # call   13001320
    .byte 0xe8
    .long L_13001320 - . - 4
.org 0x23d
L_1300123d:
    add    esp,0x4
.org 0x240
L_13001240:
    pop    edx
.org 0x241
L_13001241:
    pop    ecx
.org 0x242
L_13001242:
    test   eax,eax
.org 0x244
L_13001244:
    # je     13001275
    .byte 0x74
    .byte L_13001275 - . - 1
.org 0x246
L_13001246:
    push   edx
.org 0x247
L_13001247:
    push   ecx
.org 0x248
L_13001248:
    sub    esp,0x60
.org 0x24b
L_1300124b:
    mov    edi,esp
.org 0x24d
L_1300124d:
    mov    esi,ebx
.org 0x24f
L_1300124f:
    mov    ecx,0x18
.org 0x254
L_13001254:
    rep movs DWORD PTR es:[edi],DWORD PTR [[esi]]
.org 0x256
L_13001256:
    mov    DWORD PTR [esp+0x54],0x0
.org 0x25e
L_1300125e:
    mov    eax,esp
.org 0x260
L_13001260:
    mov    ecx,DWORD PTR [esp+0x60]
.org 0x264
L_13001264:
    mov    edx,DWORD PTR [esp+0x64]
.org 0x268
L_13001268:
    call   DWORD PTR [0x13005000]
.org 0x26e
L_1300126e:
    add    esp,0x68
.org 0x271
L_13001271:
    pop    edi
.org 0x272
L_13001272:
    pop    esi
.org 0x273
L_13001273:
    pop    ebx
.org 0x274
L_13001274:
    ret
.org 0x275
L_13001275:
    mov    eax,ebx
.org 0x277
L_13001277:
    pop    edi
.org 0x278
L_13001278:
    pop    esi
.org 0x279
L_13001279:
    pop    ebx
.org 0x27a
L_1300127a:
    jmp    DWORD PTR [0x13005000]
.org 0x280
L_13001280:
    ud2
.org 0x282
L_13001282:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x28a
L_1300128a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x290
L_13001290:
    # Original function: install6
    push   edi
.org 0x291
L_13001291:
    mov    edi,edx
.org 0x293
L_13001293:
    xor    edx,edx
.org 0x295
L_13001295:
    push   esi
.org 0x296
L_13001296:
    mov    esi,ecx
.org 0x298
L_13001298:
    push   ebx
.org 0x299
L_13001299:
    mov    ebx,eax
.org 0x29b
L_1300129b:
    sub    esp,0x10
.org 0x29e
L_1300129e:
    mov    ecx,DWORD PTR [esp+0x20]
.org 0x2a2
L_130012a2:
    movzx  eax,BYTE PTR [ecx+edx*1]
.org 0x2a6
L_130012a6:
    cmp    BYTE PTR [ebx+edx*1],al
.org 0x2a9
L_130012a9:
    # jne    130012d3
    .byte 0x75
    .byte L_130012d3 - . - 1
.org 0x2ab
L_130012ab:
    add    edx,0x1
.org 0x2ae
L_130012ae:
    cmp    edx,0x6
.org 0x2b1
L_130012b1:
    # jne    130012a2
    .byte 0x75
    .byte L_130012a2 - . - 1
.org 0x2b3
L_130012b3:
    mov    edx,ebx
.org 0x2b5
L_130012b5:
    lea    eax,[edi+0x7]
.org 0x2b8
L_130012b8:
    mov    ecx,0x4
.org 0x2bd
L_130012bd:
    sub    edx,edi
.org 0x2bf
L_130012bf:
    sub    edx,0x5
.org 0x2c2
L_130012c2:
    mov    DWORD PTR [esp+0x6],edx
.org 0x2c6
L_130012c6:
    lea    edx,[esp+0x6]
.org 0x2ca
L_130012ca:
    # call   130010f0
    .byte 0xe8
    .long L_130010f0 - . - 4
.org 0x2cf
L_130012cf:
    test   eax,eax
.org 0x2d1
L_130012d1:
    # jne    130012e0
    .byte 0x75
    .byte L_130012e0 - . - 1
.org 0x2d3
L_130012d3:
    add    esp,0x10
.org 0x2d6
L_130012d6:
    xor    eax,eax
.org 0x2d8
L_130012d8:
    pop    ebx
.org 0x2d9
L_130012d9:
    pop    esi
.org 0x2da
L_130012da:
    pop    edi
.org 0x2db
L_130012db:
    ret
.org 0x2dc
L_130012dc:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x2e0
L_130012e0:
    mov    eax,0xffff9000
.org 0x2e5
L_130012e5:
    lea    edx,[esp+0xa]
.org 0x2e9
L_130012e9:
    mov    ecx,0x6
.org 0x2ee
L_130012ee:
    mov    DWORD PTR [esp+0xa],0xe9
.org 0x2f6
L_130012f6:
    mov    WORD PTR [esp+0xe],ax
.org 0x2fb
L_130012fb:
    lea    eax,[ebx+0x5]
.org 0x2fe
L_130012fe:
    sub    esi,eax
.org 0x300
L_13001300:
    mov    eax,ebx
.org 0x302
L_13001302:
    mov    DWORD PTR [esp+0xb],esi
.org 0x306
L_13001306:
    # call   130010f0
    .byte 0xe8
    .long L_130010f0 - . - 4
.org 0x30b
L_1300130b:
    add    esp,0x10
.org 0x30e
L_1300130e:
    pop    ebx
.org 0x30f
L_1300130f:
    pop    esi
.org 0x310
L_13001310:
    pop    edi
.org 0x311
L_13001311:
    ret
.org 0x312
L_13001312:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x31a
L_1300131a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x320
L_13001320:
    # Original function: FHDUU_OrdinarySpecialId
    push   esi
.org 0x321
L_13001321:
    xor    eax,eax
.org 0x323
L_13001323:
    push   ebx
.org 0x324
L_13001324:
    mov    esi,DWORD PTR [esp+0xc]
.org 0x328
L_13001328:
    test   esi,esi
.org 0x32a
L_1300132a:
    # je     13001333
    .byte 0x74
    .byte L_13001333 - . - 1
.org 0x32c
L_1300132c:
    mov    ebx,DWORD PTR [esi+0x3c]
.org 0x32f
L_1300132f:
    test   ebx,ebx
.org 0x331
L_13001331:
    # jne    1300134d
    .byte 0x75
    .byte L_1300134d - . - 1
.org 0x333
L_13001333:
    pop    ebx
.org 0x334
L_13001334:
    pop    esi
.org 0x335
L_13001335:
    ret
.org 0x336
L_13001336:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x33e
L_1300133e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x340
L_13001340:
    test   dx,dx
.org 0x343
L_13001343:
    # je     130013b0
    .byte 0x74
    .byte L_130013b0 - . - 1
.org 0x345
L_13001345:
    add    eax,0x2
.org 0x348
L_13001348:
    cmp    cx,dx
.org 0x34b
L_1300134b:
    # jne    130013b0
    .byte 0x75
    .byte L_130013b0 - . - 1
.org 0x34d
L_1300134d:
    movzx  ecx,WORD PTR [ebx+eax*1]
.org 0x351
L_13001351:
    movzx  edx,WORD PTR [eax+0x13004020]
.org 0x358
L_13001358:
    test   cx,cx
.org 0x35b
L_1300135b:
    # jne    13001340
    .byte 0x75
    .byte L_13001340 - . - 1
.org 0x35d
L_1300135d:
    test   dx,dx
.org 0x360
L_13001360:
    # jne    130013b0
    .byte 0x75
    .byte L_130013b0 - . - 1
.org 0x362
L_13001362:
    mov    eax,DWORD PTR [esi+0x54]
.org 0x365
L_13001365:
    test   eax,eax
.org 0x367
L_13001367:
    # je     13001333
    .byte 0x74
    .byte L_13001333 - . - 1
.org 0x369
L_13001369:
    lea    edx,[eax-0x1]
.org 0x36c
L_1300136c:
    cmp    edx,0x1fff
.org 0x372
L_13001372:
    # ja     130013b0
    .byte 0x77
    .byte L_130013b0 - . - 1
.org 0x374
L_13001374:
    mov    ecx,DWORD PTR [0x13005018]
.org 0x37a
L_1300137a:
    test   ecx,ecx
.org 0x37c
L_1300137c:
    # je     130013b0
    .byte 0x74
    .byte L_130013b0 - . - 1
.org 0x37e
L_1300137e:
    cmp    DWORD PTR [0x13005014],0x4826b8
.org 0x388
L_13001388:
    # jbe    130013b0
    .byte 0x76
    .byte L_130013b0 - . - 1
.org 0x38a
L_1300138a:
    mov    ecx,DWORD PTR [ecx+0x4826b4]
.org 0x390
L_13001390:
    test   ecx,ecx
.org 0x392
L_13001392:
    # je     130013b0
    .byte 0x74
    .byte L_130013b0 - . - 1
.org 0x394
L_13001394:
    mov    ecx,DWORD PTR [ecx]
.org 0x396
L_13001396:
    test   ecx,ecx
.org 0x398
L_13001398:
    # je     130013b0
    .byte 0x74
    .byte L_130013b0 - . - 1
.org 0x39a
L_1300139a:
    imul   edx,edx,0x124
.org 0x3a0
L_130013a0:
    pop    ebx
.org 0x3a1
L_130013a1:
    pop    esi
.org 0x3a2
L_130013a2:
    cmp    BYTE PTR [ecx+edx*1],0x0
.org 0x3a6
L_130013a6:
    mov    edx,0x0
.org 0x3ab
L_130013ab:
    cmovne eax,edx
.org 0x3ae
L_130013ae:
    ret
.org 0x3af
L_130013af:
    # Alignment padding: nop
    .byte 0x90
.org 0x3b0
L_130013b0:
    xor    eax,eax
.org 0x3b2
L_130013b2:
    pop    ebx
.org 0x3b3
L_130013b3:
    pop    esi
.org 0x3b4
L_130013b4:
    ret
.org 0x3b5
L_130013b5:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x3bd
L_130013bd:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x3c0
L_130013c0:
    # Original function: XenoPlugin_Query
    push   ebx
.org 0x3c1
L_130013c1:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x3c5
L_130013c5:
    test   edx,edx
.org 0x3c7
L_130013c7:
    # je     130014d0
    .byte 0xf,0x84
    .long L_130014d0 - . - 4
.org 0x3cd
L_130013cd:
    mov    ebx,DWORD PTR [edx]
.org 0x3cf
L_130013cf:
    xor    eax,eax
.org 0x3d1
L_130013d1:
    cmp    ebx,0x207
.org 0x3d7
L_130013d7:
    # ja     130013e0
    .byte 0x77
    .byte L_130013e0 - . - 1
.org 0x3d9
L_130013d9:
    pop    ebx
.org 0x3da
L_130013da:
    ret    0x4
.org 0x3dd
L_130013dd:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x3e0
L_130013e0:
    mov    DWORD PTR [edx+0x4],0x1
.org 0x3e7
L_130013e7:
    # jmp    13001400
    .byte 0xeb
    .byte L_13001400 - . - 1
.org 0x3e9
L_130013e9:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x3f1
L_130013f1:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x3f9
L_130013f9:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x400
L_13001400:
    movzx  ecx,WORD PTR [eax+0x130041e0]
.org 0x407
L_13001407:
    test   cx,cx
.org 0x40a
L_1300140a:
    # je     13001419
    .byte 0x74
    .byte L_13001419 - . - 1
.org 0x40c
L_1300140c:
    mov    WORD PTR [edx+eax*1+0x8],cx
.org 0x411
L_13001411:
    add    eax,0x2
.org 0x414
L_13001414:
    cmp    eax,0x7e
.org 0x417
L_13001417:
    # jne    13001400
    .byte 0x75
    .byte L_13001400 - . - 1
.org 0x419
L_13001419:
    xor    ecx,ecx
.org 0x41b
L_1300141b:
    mov    WORD PTR [edx+eax*1+0x8],cx
.org 0x420
L_13001420:
    xor    eax,eax
.org 0x422
L_13001422:
    # jmp    13001440
    .byte 0xeb
    .byte L_13001440 - . - 1
.org 0x424
L_13001424:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x42c
L_1300142c:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x434
L_13001434:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x43c
L_1300143c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x440
L_13001440:
    movzx  ecx,WORD PTR [eax+0x130041d0]
.org 0x447
L_13001447:
    test   cx,cx
.org 0x44a
L_1300144a:
    # je     1300145c
    .byte 0x74
    .byte L_1300145c - . - 1
.org 0x44c
L_1300144c:
    mov    WORD PTR [edx+eax*1+0x88],cx
.org 0x454
L_13001454:
    add    eax,0x2
.org 0x457
L_13001457:
    cmp    eax,0x3e
.org 0x45a
L_1300145a:
    # jne    13001440
    .byte 0x75
    .byte L_13001440 - . - 1
.org 0x45c
L_1300145c:
    xor    ecx,ecx
.org 0x45e
L_1300145e:
    mov    WORD PTR [edx+eax*1+0x88],cx
.org 0x466
L_13001466:
    xor    eax,eax
.org 0x468
L_13001468:
    # jmp    13001480
    .byte 0xeb
    .byte L_13001480 - . - 1
.org 0x46a
L_1300146a:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x472
L_13001472:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x47a
L_1300147a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x480
L_13001480:
    movzx  ecx,WORD PTR [eax+0x13004140]
.org 0x487
L_13001487:
    test   cx,cx
.org 0x48a
L_1300148a:
    # je     1300149e
    .byte 0x74
    .byte L_1300149e - . - 1
.org 0x48c
L_1300148c:
    mov    WORD PTR [edx+eax*1+0xc8],cx
.org 0x494
L_13001494:
    add    eax,0x2
.org 0x497
L_13001497:
    cmp    eax,0x13e
.org 0x49c
L_1300149c:
    # jne    13001480
    .byte 0x75
    .byte L_13001480 - . - 1
.org 0x49e
L_1300149e:
    xor    ecx,ecx
.org 0x4a0
L_130014a0:
    mov    WORD PTR [edx+eax*1+0xc8],cx
.org 0x4a8
L_130014a8:
    cmp    ebx,0x20f
.org 0x4ae
L_130014ae:
    # jbe    130014c4
    .byte 0x76
    .byte L_130014c4 - . - 1
.org 0x4b0
L_130014b0:
    mov    DWORD PTR [edx+0x20c],0x0
.org 0x4ba
L_130014ba:
    mov    DWORD PTR [edx+0x208],0x0
.org 0x4c4
L_130014c4:
    mov    eax,0x1
.org 0x4c9
L_130014c9:
    pop    ebx
.org 0x4ca
L_130014ca:
    ret    0x4
.org 0x4cd
L_130014cd:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x4d0
L_130014d0:
    xor    eax,eax
.org 0x4d2
L_130014d2:
    pop    ebx
.org 0x4d3
L_130014d3:
    ret    0x4
.org 0x4d6
L_130014d6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x4de
L_130014de:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x4e0
L_130014e0:
    # Original function: XenoPlugin_Initialize
    push   ebp
.org 0x4e1
L_130014e1:
    mov    edx,0x1
.org 0x4e6
L_130014e6:
    push   edi
.org 0x4e7
L_130014e7:
    push   esi
.org 0x4e8
L_130014e8:
    push   ebx
.org 0x4e9
L_130014e9:
    sub    esp,0x2c
.org 0x4ec
L_130014ec:
    mov    eax,DWORD PTR [esp+0x40]
.org 0x4f0
L_130014f0:
    test   eax,eax
.org 0x4f2
L_130014f2:
    # je     130014ff
    .byte 0x74
    .byte L_130014ff - . - 1
.org 0x4f4
L_130014f4:
    cmp    DWORD PTR [eax],0x1f
.org 0x4f7
L_130014f7:
    # jbe    130014ff
    .byte 0x76
    .byte L_130014ff - . - 1
.org 0x4f9
L_130014f9:
    cmp    DWORD PTR [eax+0x4],0x1
.org 0x4fd
L_130014fd:
    # je     13001510
    .byte 0x74
    .byte L_13001510 - . - 1
.org 0x4ff
L_130014ff:
    add    esp,0x2c
.org 0x502
L_13001502:
    mov    eax,edx
.org 0x504
L_13001504:
    pop    ebx
.org 0x505
L_13001505:
    pop    esi
.org 0x506
L_13001506:
    pop    edi
.org 0x507
L_13001507:
    pop    ebp
.org 0x508
L_13001508:
    ret    0x4
.org 0x50b
L_1300150b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x510
L_13001510:
    mov    edx,DWORD PTR [eax+0x8]
.org 0x513
L_13001513:
    mov    eax,DWORD PTR [eax+0x1c]
.org 0x516
L_13001516:
    mov    DWORD PTR [0x13005018],edx
.org 0x51c
L_1300151c:
    mov    ds:0x13005010,eax
.org 0x521
L_13001521:
    test   edx,edx
.org 0x523
L_13001523:
    # je     13001638
    .byte 0xf,0x84
    .long L_13001638 - . - 4
.org 0x529
L_13001529:
    cmp    WORD PTR [edx],0x5a4d
.org 0x52e
L_1300152e:
    # jne    13001638
    .byte 0xf,0x85
    .long L_13001638 - . - 4
.org 0x534
L_13001534:
    add    edx,DWORD PTR [edx+0x3c]
.org 0x537
L_13001537:
    cmp    DWORD PTR [edx],0x4550
.org 0x53d
L_1300153d:
    # jne    13001638
    .byte 0xf,0x85
    .long L_13001638 - . - 4
.org 0x543
L_13001543:
    cmp    WORD PTR [edx+0x18],0x10b
.org 0x549
L_13001549:
    # jne    13001638
    .byte 0xf,0x85
    .long L_13001638 - . - 4
.org 0x54f
L_1300154f:
    mov    eax,DWORD PTR [edx+0x50]
.org 0x552
L_13001552:
    mov    ds:0x13005014,eax
.org 0x557
L_13001557:
    cmp    eax,0x4826b8
.org 0x55c
L_1300155c:
    # jbe    13001638
    .byte 0xf,0x86
    .long L_13001638 - . - 4
.org 0x562
L_13001562:
    # call   13001000
    .byte 0xe8
    .long L_13001000 - . - 4
.org 0x567
L_13001567:
    mov    esi,eax
.org 0x569
L_13001569:
    test   eax,eax
.org 0x56b
L_1300156b:
    # je     13001670
    .byte 0xf,0x84
    .long L_13001670 - . - 4
.org 0x571
L_13001571:
    mov    esi,DWORD PTR [eax+0xc]
.org 0x574
L_13001574:
    test   esi,esi
.org 0x576
L_13001576:
    # je     13001670
    .byte 0xf,0x84
    .long L_13001670 - . - 4
.org 0x57c
L_1300157c:
    mov    ebx,DWORD PTR [esi+0x14]
.org 0x57f
L_1300157f:
    lea    eax,[esi+0x14]
.org 0x582
L_13001582:
    cmp    eax,ebx
.org 0x584
L_13001584:
    # je     13001768
    .byte 0xf,0x84
    .long L_13001768 - . - 4
.org 0x58a
L_1300158a:
    test   ebx,ebx
.org 0x58c
L_1300158c:
    # je     13001768
    .byte 0xf,0x84
    .long L_13001768 - . - 4
.org 0x592
L_13001592:
    xor    edi,edi
.org 0x594
L_13001594:
    # jmp    130015c0
    .byte 0xeb
    .byte L_130015c0 - . - 1
.org 0x596
L_13001596:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x59e
L_1300159e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x5a0
L_130015a0:
    mov    ebx,DWORD PTR [ebx]
.org 0x5a2
L_130015a2:
    add    edi,0x1
.org 0x5a5
L_130015a5:
    test   ebx,ebx
.org 0x5a7
L_130015a7:
    setne  cl
.org 0x5aa
L_130015aa:
    cmp    eax,ebx
.org 0x5ac
L_130015ac:
    setne  dl
.org 0x5af
L_130015af:
    test   cl,dl
.org 0x5b1
L_130015b1:
    # je     13001768
    .byte 0xf,0x84
    .long L_13001768 - . - 4
.org 0x5b7
L_130015b7:
    cmp    edi,0x20
.org 0x5ba
L_130015ba:
    # je     13001768
    .byte 0xf,0x84
    .long L_13001768 - . - 4
.org 0x5c0
L_130015c0:
    mov    esi,DWORD PTR [ebx+0x10]
.org 0x5c3
L_130015c3:
    mov    ebp,DWORD PTR [ebx+0x28]
.org 0x5c6
L_130015c6:
    test   esi,esi
.org 0x5c8
L_130015c8:
    # je     130015a0
    .byte 0x74
    .byte L_130015a0 - . - 1
.org 0x5ca
L_130015ca:
    test   ebp,ebp
.org 0x5cc
L_130015cc:
    # je     130015a0
    .byte 0x74
    .byte L_130015a0 - . - 1
.org 0x5ce
L_130015ce:
    mov    DWORD PTR [esp+0xc],esi
.org 0x5d2
L_130015d2:
    mov    edx,0x6e
.org 0x5d7
L_130015d7:
    xor    ecx,ecx
.org 0x5d9
L_130015d9:
    mov    DWORD PTR [esp+0x4],eax
.org 0x5dd
L_130015dd:
    mov    DWORD PTR [esp+0x8],ebx
.org 0x5e1
L_130015e1:
    # jmp    1300160e
    .byte 0xeb
    .byte L_1300160e - . - 1
.org 0x5e3
L_130015e3:
    # jmp    13001600
    .byte 0xeb
    .byte L_13001600 - . - 1
.org 0x5e5
L_130015e5:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x5ed
L_130015ed:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x5f5
L_130015f5:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x5fd
L_130015fd:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x600
L_13001600:
    movzx  edx,BYTE PTR [ecx+0x13004001]
.org 0x607
L_13001607:
    add    ecx,0x1
.org 0x60a
L_1300160a:
    test   dl,dl
.org 0x60c
L_1300160c:
    # je     13001650
    .byte 0x74
    .byte L_13001650 - . - 1
.org 0x60e
L_1300160e:
    movzx  eax,WORD PTR [ebp+ecx*2+0x0]
.org 0x613
L_13001613:
    lea    esi,[eax-0x41]
.org 0x616
L_13001616:
    lea    ebx,[eax+0x20]
.org 0x619
L_13001619:
    cmp    si,0x1a
.org 0x61d
L_1300161d:
    cmovb  eax,ebx
.org 0x620
L_13001620:
    cmp    dx,ax
.org 0x623
L_13001623:
    # je     13001600
    .byte 0x74
    .byte L_13001600 - . - 1
.org 0x625
L_13001625:
    mov    eax,DWORD PTR [esp+0x4]
.org 0x629
L_13001629:
    mov    ebx,DWORD PTR [esp+0x8]
.org 0x62d
L_1300162d:
    # jmp    130015a0
    .byte 0xe9
    .long L_130015a0 - . - 4
.org 0x632
L_13001632:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x638
L_13001638:
    add    esp,0x2c
.org 0x63b
L_1300163b:
    mov    edx,0x2
.org 0x640
L_13001640:
    pop    ebx
.org 0x641
L_13001641:
    mov    eax,edx
.org 0x643
L_13001643:
    pop    esi
.org 0x644
L_13001644:
    pop    edi
.org 0x645
L_13001645:
    pop    ebp
.org 0x646
L_13001646:
    ret    0x4
.org 0x649
L_13001649:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x650
L_13001650:
    cmp    WORD PTR [ebp+ecx*2+0x0],0x0
.org 0x656
L_13001656:
    mov    esi,DWORD PTR [esp+0xc]
.org 0x65a
L_1300165a:
    mov    eax,DWORD PTR [esp+0x4]
.org 0x65e
L_1300165e:
    mov    ebx,DWORD PTR [esp+0x8]
.org 0x662
L_13001662:
    # jne    130015a0
    .byte 0xf,0x85
    .long L_130015a0 - . - 4
.org 0x668
L_13001668:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x670
L_13001670:
    mov    edx,0x13003000
.org 0x675
L_13001675:
    mov    eax,esi
.org 0x677
L_13001677:
    # call   13001010
    .byte 0xe8
    .long L_13001010 - . - 4
.org 0x67c
L_1300167c:
    mov    edx,0x13003017
.org 0x681
L_13001681:
    mov    ds:0x1300500c,eax
.org 0x686
L_13001686:
    mov    ebx,eax
.org 0x688
L_13001688:
    mov    eax,esi
.org 0x68a
L_1300168a:
    # call   13001010
    .byte 0xe8
    .long L_13001010 - . - 4
.org 0x68f
L_1300168f:
    mov    ds:0x13005008,eax
.org 0x694
L_13001694:
    test   ebx,ebx
.org 0x696
L_13001696:
    # je     1300176f
    .byte 0xf,0x84
    .long L_1300176f - . - 4
.org 0x69c
L_1300169c:
    test   eax,eax
.org 0x69e
L_1300169e:
    # je     1300176f
    .byte 0xf,0x84
    .long L_1300176f - . - 4
.org 0x6a4
L_130016a4:
    mov    ebp,0xffffe0c4
.org 0x6a9
L_130016a9:
    mov    eax,0xffffd0c4
.org 0x6ae
L_130016ae:
    cmp    DWORD PTR [0x13005014],0x336426
.org 0x6b8
L_130016b8:
    mov    DWORD PTR [esp+0x14],0x83ec8b55
.org 0x6c0
L_130016c0:
    mov    WORD PTR [esp+0x18],bp
.org 0x6c5
L_130016c5:
    mov    edx,0x4
.org 0x6ca
L_130016ca:
    mov    DWORD PTR [esp+0x1a],0x83ec8b55
.org 0x6d2
L_130016d2:
    mov    WORD PTR [esp+0x1e],ax
.org 0x6d7
L_130016d7:
    # jbe    130014ff
    .byte 0xf,0x86
    .long L_130014ff - . - 4
.org 0x6dd
L_130016dd:
    sub    esp,0xc
.org 0x6e0
L_130016e0:
    mov    ecx,0x130011c0
.org 0x6e5
L_130016e5:
    mov    eax,ds:0x13005018
.org 0x6ea
L_130016ea:
    mov    DWORD PTR [0x13005004],0x130011b0
.org 0x6f4
L_130016f4:
    mov    DWORD PTR [0x13005000],0x13001220
.org 0x6fe
L_130016fe:
    lea    edx,[esp+0x20]
.org 0x702
L_13001702:
    push   edx
.org 0x703
L_13001703:
    add    eax,0x336278
.org 0x708
L_13001708:
    mov    edx,0x130011b0
.org 0x70d
L_1300170d:
    # call   13001290
    .byte 0xe8
    .long L_13001290 - . - 4
.org 0x712
L_13001712:
    add    esp,0x10
.org 0x715
L_13001715:
    test   eax,eax
.org 0x717
L_13001717:
    # je     13001779
    .byte 0x74
    .byte L_13001779 - . - 1
.org 0x719
L_13001719:
    sub    esp,0xc
.org 0x71c
L_1300171c:
    mov    eax,ds:0x13005018
.org 0x721
L_13001721:
    mov    ecx,0x13001230
.org 0x726
L_13001726:
    lea    edx,[esp+0x26]
.org 0x72a
L_1300172a:
    push   edx
.org 0x72b
L_1300172b:
    add    eax,0x336420
.org 0x730
L_13001730:
    mov    edx,0x13001220
.org 0x735
L_13001735:
    # call   13001290
    .byte 0xe8
    .long L_13001290 - . - 4
.org 0x73a
L_1300173a:
    add    esp,0x10
.org 0x73d
L_1300173d:
    mov    edx,eax
.org 0x73f
L_1300173f:
    mov    eax,ds:0x13005010
.org 0x744
L_13001744:
    test   edx,edx
.org 0x746
L_13001746:
    # je     1300179d
    .byte 0x74
    .byte L_1300179d - . - 1
.org 0x748
L_13001748:
    test   eax,eax
.org 0x74a
L_1300174a:
    # je     1300175d
    .byte 0x74
    .byte L_1300175d - . - 1
.org 0x74c
L_1300174c:
    sub    esp,0x8
.org 0x74f
L_1300174f:
    push   0x130040a0
.org 0x754
L_13001754:
    push   0x130041e0
.org 0x759
L_13001759:
    call   eax
.org 0x75b
L_1300175b:
    pop    eax
.org 0x75c
L_1300175c:
    pop    edx
.org 0x75d
L_1300175d:
    xor    edx,edx
.org 0x75f
L_1300175f:
    # jmp    130014ff
    .byte 0xe9
    .long L_130014ff - . - 4
.org 0x764
L_13001764:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x768
L_13001768:
    xor    esi,esi
.org 0x76a
L_1300176a:
    # jmp    13001670
    .byte 0xe9
    .long L_13001670 - . - 4
.org 0x76f
L_1300176f:
    mov    edx,0x3
.org 0x774
L_13001774:
    # jmp    130014ff
    .byte 0xe9
    .long L_130014ff - . - 4
.org 0x779
L_13001779:
    mov    eax,ds:0x13005010
.org 0x77e
L_1300177e:
    test   eax,eax
.org 0x780
L_13001780:
    # je     13001793
    .byte 0x74
    .byte L_13001793 - . - 1
.org 0x782
L_13001782:
    sub    esp,0x8
.org 0x785
L_13001785:
    push   0x13004060
.org 0x78a
L_1300178a:
    push   0x130041e0
.org 0x78f
L_1300178f:
    call   eax
.org 0x791
L_13001791:
    pop    esi
.org 0x792
L_13001792:
    pop    edi
.org 0x793
L_13001793:
    mov    edx,0x5
.org 0x798
L_13001798:
    # jmp    130014ff
    .byte 0xe9
    .long L_130014ff - . - 4
.org 0x79d
L_1300179d:
    test   eax,eax
.org 0x79f
L_1300179f:
    # je     130017b2
    .byte 0x74
    .byte L_130017b2 - . - 1
.org 0x7a1
L_130017a1:
    sub    esp,0x8
.org 0x7a4
L_130017a4:
    push   0x13004060
.org 0x7a9
L_130017a9:
    push   0x130041e0
.org 0x7ae
L_130017ae:
    call   eax
.org 0x7b0
L_130017b0:
    pop    ecx
.org 0x7b1
L_130017b1:
    pop    ebx
.org 0x7b2
L_130017b2:
    mov    edx,0x6
.org 0x7b7
L_130017b7:
    # jmp    130014ff
    .byte 0xe9
    .long L_130014ff - . - 4
.org 0x7bc
L_130017bc:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x7c0
L_130017c0:
    # Original function: DllMain
    mov    eax,0x1
.org 0x7c5
L_130017c5:
    ret    0xc
.org 0x7c8
