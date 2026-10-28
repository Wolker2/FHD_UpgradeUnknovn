/* Recovered complete x86 source; original C was not supplied.
 * Each instruction and original function name is visible. Fixed layout and
 * explicit branch widths preserve this DLL exactly. */
.intel_syntax noprefix
.section .text,"ax",@progbits
.org 0x0
L_11001000:
    # Original function: pebAddress
    mov    eax,fs:0x30
.org 0x6
L_11001006:
    ret
.org 0x7
L_11001007:
    ud2
.org 0x9
L_11001009:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x10
L_11001010:
    # Original function: findExport
    push   ebp
.org 0x11
L_11001011:
    push   edi
.org 0x12
L_11001012:
    push   esi
.org 0x13
L_11001013:
    push   ebx
.org 0x14
L_11001014:
    sub    esp,0x14
.org 0x17
L_11001017:
    test   eax,eax
.org 0x19
L_11001019:
    # je     110010a4
    .byte 0xf,0x84
    .long L_110010a4 - . - 4
.org 0x1f
L_1100101f:
    xor    esi,esi
.org 0x21
L_11001021:
    cmp    WORD PTR [eax],0x5a4d
.org 0x26
L_11001026:
    mov    edi,eax
.org 0x28
L_11001028:
    # jne    110010a6
    .byte 0x75
    .byte L_110010a6 - . - 1
.org 0x2a
L_1100102a:
    mov    ebx,edx
.org 0x2c
L_1100102c:
    mov    edx,DWORD PTR [eax+0x3c]
.org 0x2f
L_1100102f:
    add    edx,eax
.org 0x31
L_11001031:
    cmp    DWORD PTR [edx],0x4550
.org 0x37
L_11001037:
    # jne    110010a6
    .byte 0x75
    .byte L_110010a6 - . - 1
.org 0x39
L_11001039:
    cmp    WORD PTR [edx+0x18],0x10b
.org 0x3f
L_1100103f:
    # jne    110010a6
    .byte 0x75
    .byte L_110010a6 - . - 1
.org 0x41
L_11001041:
    mov    eax,DWORD PTR [edx+0x78]
.org 0x44
L_11001044:
    mov    DWORD PTR [esp+0x8],eax
.org 0x48
L_11001048:
    test   eax,eax
.org 0x4a
L_1100104a:
    # je     110010a6
    .byte 0x74
    .byte L_110010a6 - . - 1
.org 0x4c
L_1100104c:
    lea    ecx,[edi+eax*1]
.org 0x4f
L_1100104f:
    mov    ebp,DWORD PTR [ecx+0x18]
.org 0x52
L_11001052:
    mov    eax,DWORD PTR [ecx+0x20]
.org 0x55
L_11001055:
    mov    DWORD PTR [esp+0x4],ebp
.org 0x59
L_11001059:
    test   ebp,ebp
.org 0x5b
L_1100105b:
    # je     110010a6
    .byte 0x74
    .byte L_110010a6 - . - 1
.org 0x5d
L_1100105d:
    add    eax,edi
.org 0x5f
L_1100105f:
    mov    DWORD PTR [esp+0xc],edx
.org 0x63
L_11001063:
    xor    ebp,ebp
.org 0x65
L_11001065:
    mov    DWORD PTR [esp],eax
.org 0x68
L_11001068:
    mov    DWORD PTR [esp+0x10],ecx
.org 0x6c
L_1100106c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x70
L_11001070:
    mov    eax,DWORD PTR [esp]
.org 0x73
L_11001073:
    mov    esi,DWORD PTR [eax+ebp*4]
.org 0x76
L_11001076:
    xor    eax,eax
.org 0x78
L_11001078:
    add    esi,edi
.org 0x7a
L_1100107a:
    # jmp    1100108b
    .byte 0xeb
    .byte L_1100108b - . - 1
.org 0x7c
L_1100107c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x80
L_11001080:
    test   cl,cl
.org 0x82
L_11001082:
    # je     1100109b
    .byte 0x74
    .byte L_1100109b - . - 1
.org 0x84
L_11001084:
    add    eax,0x1
.org 0x87
L_11001087:
    cmp    dl,cl
.org 0x89
L_11001089:
    # jne    1100109b
    .byte 0x75
    .byte L_1100109b - . - 1
.org 0x8b
L_1100108b:
    movzx  edx,BYTE PTR [esi+eax*1]
.org 0x8f
L_1100108f:
    movzx  ecx,BYTE PTR [ebx+eax*1]
.org 0x93
L_11001093:
    test   dl,dl
.org 0x95
L_11001095:
    # jne    11001080
    .byte 0x75
    .byte L_11001080 - . - 1
.org 0x97
L_11001097:
    test   cl,cl
.org 0x99
L_11001099:
    # je     110010b0
    .byte 0x74
    .byte L_110010b0 - . - 1
.org 0x9b
L_1100109b:
    add    ebp,0x1
.org 0x9e
L_1100109e:
    cmp    DWORD PTR [esp+0x4],ebp
.org 0xa2
L_110010a2:
    # jne    11001070
    .byte 0x75
    .byte L_11001070 - . - 1
.org 0xa4
L_110010a4:
    xor    esi,esi
.org 0xa6
L_110010a6:
    add    esp,0x14
.org 0xa9
L_110010a9:
    mov    eax,esi
.org 0xab
L_110010ab:
    pop    ebx
.org 0xac
L_110010ac:
    pop    esi
.org 0xad
L_110010ad:
    pop    edi
.org 0xae
L_110010ae:
    pop    ebp
.org 0xaf
L_110010af:
    ret
.org 0xb0
L_110010b0:
    mov    ecx,DWORD PTR [esp+0x10]
.org 0xb4
L_110010b4:
    lea    eax,[edi+ebp*2]
.org 0xb7
L_110010b7:
    mov    edx,DWORD PTR [esp+0xc]
.org 0xbb
L_110010bb:
    xor    esi,esi
.org 0xbd
L_110010bd:
    add    eax,DWORD PTR [ecx+0x24]
.org 0xc0
L_110010c0:
    movzx  eax,WORD PTR [eax]
.org 0xc3
L_110010c3:
    cmp    eax,DWORD PTR [ecx+0x14]
.org 0xc6
L_110010c6:
    # jae    110010a6
    .byte 0x73
    .byte L_110010a6 - . - 1
.org 0xc8
L_110010c8:
    lea    eax,[edi+eax*4]
.org 0xcb
L_110010cb:
    add    eax,DWORD PTR [ecx+0x1c]
.org 0xce
L_110010ce:
    mov    ecx,DWORD PTR [eax]
.org 0xd0
L_110010d0:
    mov    eax,DWORD PTR [esp+0x8]
.org 0xd4
L_110010d4:
    cmp    ecx,eax
.org 0xd6
L_110010d6:
    # jae    110010dd
    .byte 0x73
    .byte L_110010dd - . - 1
.org 0xd8
L_110010d8:
    lea    esi,[edi+ecx*1]
.org 0xdb
L_110010db:
    # jmp    110010a6
    .byte 0xeb
    .byte L_110010a6 - . - 1
.org 0xdd
L_110010dd:
    add    eax,DWORD PTR [edx+0x7c]
.org 0xe0
L_110010e0:
    cmp    ecx,eax
.org 0xe2
L_110010e2:
    # jb     110010a6
    .byte 0x72
    .byte L_110010a6 - . - 1
.org 0xe4
L_110010e4:
    # jmp    110010d8
    .byte 0xeb
    .byte L_110010d8 - . - 1
.org 0xe6
L_110010e6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xee
L_110010ee:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xf0
L_110010f0:
    # Original function: assignText
    mov    eax,DWORD PTR [esp+0x4]
.org 0xf4
L_110010f4:
    mov    edx,DWORD PTR [esp+0x8]
.org 0xf8
L_110010f8:
    mov    ecx,DWORD PTR [esp+0xc]
.org 0xfc
L_110010fc:
    jmp    DWORD PTR [0x1100901c]
.org 0x102
L_11001102:
    ud2
.org 0x104
L_11001104:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x10c
L_1100110c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x110
L_11001110:
    # Original function: appendText
    mov    eax,DWORD PTR [esp+0x4]
.org 0x114
L_11001114:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x118
L_11001118:
    jmp    DWORD PTR [0x11009018]
.org 0x11e
L_1100111e:
    ud2
.org 0x120
L_11001120:
    # Original function: clearText
    mov    eax,DWORD PTR [esp+0x4]
.org 0x124
L_11001124:
    jmp    DWORD PTR [0x11009014]
.org 0x12a
L_1100112a:
    ud2
.org 0x12c
L_1100112c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x130
L_11001130:
    # Original function: normalRecord
    test   eax,eax
.org 0x132
L_11001132:
    # je     11001170
    .byte 0x74
    .byte L_11001170 - . - 1
.org 0x134
L_11001134:
    mov    edx,DWORD PTR [0x1100902c]
.org 0x13a
L_1100113a:
    mov    edx,DWORD PTR [edx+0x4826b4]
.org 0x140
L_11001140:
    test   edx,edx
.org 0x142
L_11001142:
    # je     11001170
    .byte 0x74
    .byte L_11001170 - . - 1
.org 0x144
L_11001144:
    mov    edx,DWORD PTR [edx]
.org 0x146
L_11001146:
    test   edx,edx
.org 0x148
L_11001148:
    # je     11001170
    .byte 0x74
    .byte L_11001170 - . - 1
.org 0x14a
L_1100114a:
    mov    ecx,DWORD PTR [edx-0x4]
.org 0x14d
L_1100114d:
    test   ecx,ecx
.org 0x14f
L_1100114f:
    # jle    11001170
    .byte 0x7e
    .byte L_11001170 - . - 1
.org 0x151
L_11001151:
    cmp    ecx,eax
.org 0x153
L_11001153:
    # jb     11001170
    .byte 0x72
    .byte L_11001170 - . - 1
.org 0x155
L_11001155:
    imul   eax,eax,0x124
.org 0x15b
L_1100115b:
    lea    eax,[edx+eax*1-0x124]
.org 0x162
L_11001162:
    xor    edx,edx
.org 0x164
L_11001164:
    cmp    BYTE PTR [eax],0x0
.org 0x167
L_11001167:
    cmovne eax,edx
.org 0x16a
L_1100116a:
    ret
.org 0x16b
L_1100116b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x170
L_11001170:
    xor    eax,eax
.org 0x172
L_11001172:
    ret
.org 0x173
L_11001173:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x17b
L_1100117b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x180
L_11001180:
    # Original function: equipmentInfo
    mov    eax,DWORD PTR [esp+0x4]
.org 0x184
L_11001184:
    mov    edx,DWORD PTR [eax]
.org 0x186
L_11001186:
    jmp    DWORD PTR [edx+0x50]
.org 0x189
L_11001189:
    ud2
.org 0x18b
L_1100118b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x190
L_11001190:
    # Original function: specialTextHook
    pushf
.org 0x191
L_11001191:
    pusha
.org 0x192
L_11001192:
    push   0x54
.org 0x194
L_11001194:
    push   DWORD PTR [ebp-0x18]
.org 0x197
L_11001197:
    push   DWORD PTR [ebp-0x14]
.org 0x19a
L_1100119a:
    # call   11001210
    .byte 0xe8
    .long L_11001210 - . - 4
.org 0x19f
L_1100119f:
    add    esp,0xc
.org 0x1a2
L_110011a2:
    test   eax,eax
.org 0x1a4
L_110011a4:
    # je     110011ae
    .byte 0x74
    .byte L_110011ae - . - 1
.org 0x1a6
L_110011a6:
    popa
.org 0x1a7
L_110011a7:
    popf
.org 0x1a8
L_110011a8:
    jmp    DWORD PTR [0x1100900c]
.org 0x1ae
L_110011ae:
    popa
.org 0x1af
L_110011af:
    popf
.org 0x1b0
L_110011b0:
    push   DWORD PTR [0x11009000]
.org 0x1b6
L_110011b6:
    mov    eax,DWORD PTR [ebp-0x14]
.org 0x1b9
L_110011b9:
    jmp    DWORD PTR [0x11009010]
.org 0x1bf
L_110011bf:
    ud2
.org 0x1c1
L_110011c1:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1c9
L_110011c9:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1d0
L_110011d0:
    # Original function: bonusTextHook
    pushf
.org 0x1d1
L_110011d1:
    pusha
.org 0x1d2
L_110011d2:
    push   0x50
.org 0x1d4
L_110011d4:
    push   DWORD PTR [ebp-0x18]
.org 0x1d7
L_110011d7:
    push   DWORD PTR [ebp-0x14]
.org 0x1da
L_110011da:
    # call   11001210
    .byte 0xe8
    .long L_11001210 - . - 4
.org 0x1df
L_110011df:
    add    esp,0xc
.org 0x1e2
L_110011e2:
    test   eax,eax
.org 0x1e4
L_110011e4:
    # je     110011ee
    .byte 0x74
    .byte L_110011ee - . - 1
.org 0x1e6
L_110011e6:
    popa
.org 0x1e7
L_110011e7:
    popf
.org 0x1e8
L_110011e8:
    jmp    DWORD PTR [0x11009004]
.org 0x1ee
L_110011ee:
    popa
.org 0x1ef
L_110011ef:
    popf
.org 0x1f0
L_110011f0:
    push   DWORD PTR [0x11009000]
.org 0x1f6
L_110011f6:
    mov    eax,DWORD PTR [ebp-0x14]
.org 0x1f9
L_110011f9:
    jmp    DWORD PTR [0x11009008]
.org 0x1ff
L_110011ff:
    ud2
.org 0x201
L_11001201:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x209
L_11001209:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x210
L_11001210:
    # Original function: FHDUU_CompactInstalled
    push   ebp
.org 0x211
L_11001211:
    push   edi
.org 0x212
L_11001212:
    push   esi
.org 0x213
L_11001213:
    push   ebx
.org 0x214
L_11001214:
    sub    esp,0x20ec
.org 0x21a
L_1100121a:
    mov    edx,DWORD PTR [esp+0x2100]
.org 0x221
L_11001221:
    test   edx,edx
.org 0x223
L_11001223:
    # je     11001350
    .byte 0xf,0x84
    .long L_11001350 - . - 4
.org 0x229
L_11001229:
    mov    ecx,DWORD PTR [esp+0x2104]
.org 0x230
L_11001230:
    test   ecx,ecx
.org 0x232
L_11001232:
    # je     11001350
    .byte 0xf,0x84
    .long L_11001350 - . - 4
.org 0x238
L_11001238:
    mov    esi,DWORD PTR [edx+0x3c]
.org 0x23b
L_1100123b:
    xor    edi,edi
.org 0x23d
L_1100123d:
    xor    eax,eax
.org 0x23f
L_1100123f:
    test   esi,esi
.org 0x241
L_11001241:
    # jne    11001265
    .byte 0x75
    .byte L_11001265 - . - 1
.org 0x243
L_11001243:
    # jmp    11001352
    .byte 0xe9
    .long L_11001352 - . - 4
.org 0x248
L_11001248:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x250
L_11001250:
    test   cx,cx
.org 0x253
L_11001253:
    # je     11001350
    .byte 0xf,0x84
    .long L_11001350 - . - 4
.org 0x259
L_11001259:
    add    eax,0x2
.org 0x25c
L_1100125c:
    cmp    cx,bx
.org 0x25f
L_1100125f:
    # jne    11001350
    .byte 0xf,0x85
    .long L_11001350 - . - 4
.org 0x265
L_11001265:
    movzx  ebx,WORD PTR [esi+eax*1]
.org 0x269
L_11001269:
    movzx  ecx,WORD PTR [eax+0x110040c0]
.org 0x270
L_11001270:
    test   bx,bx
.org 0x273
L_11001273:
    # jne    11001250
    .byte 0x75
    .byte L_11001250 - . - 1
.org 0x275
L_11001275:
    test   cx,cx
.org 0x278
L_11001278:
    # jne    11001350
    .byte 0xf,0x85
    .long L_11001350 - . - 4
.org 0x27e
L_1100127e:
    movzx  ebp,BYTE PTR [edx+0xc]
.org 0x282
L_11001282:
    xor    edi,edi
.org 0x284
L_11001284:
    mov    eax,ebp
.org 0x286
L_11001286:
    cmp    al,0x47
.org 0x288
L_11001288:
    # je     11001352
    .byte 0xf,0x84
    .long L_11001352 - . - 4
.org 0x28e
L_1100128e:
    mov    eax,DWORD PTR [esp+0x2108]
.org 0x295
L_11001295:
    mov    DWORD PTR [esp+0x2100],edx
.org 0x29c
L_1100129c:
    mov    eax,DWORD PTR [edx+eax*1]
.org 0x29f
L_1100129f:
    # call   11001130
    .byte 0xe8
    .long L_11001130 - . - 4
.org 0x2a4
L_110012a4:
    mov    ebx,eax
.org 0x2a6
L_110012a6:
    test   eax,eax
.org 0x2a8
L_110012a8:
    # je     11001352
    .byte 0xf,0x84
    .long L_11001352 - . - 4
.org 0x2ae
L_110012ae:
    cmp    DWORD PTR [esp+0x2108],0x50
.org 0x2b6
L_110012b6:
    mov    DWORD PTR [esp+0x10],0x1
.org 0x2be
L_110012be:
    mov    edx,DWORD PTR [esp+0x2100]
.org 0x2c5
L_110012c5:
    # je     110015a6
    .byte 0xf,0x84
    .long L_110015a6 - . - 4
.org 0x2cb
L_110012cb:
    mov    eax,ebp
.org 0x2cd
L_110012cd:
    movzx  edi,al
.org 0x2d0
L_110012d0:
    lea    eax,[edi-0x32]
.org 0x2d3
L_110012d3:
    mov    DWORD PTR [esp+0x8],eax
.org 0x2d7
L_110012d7:
    cmp    eax,0x12
.org 0x2da
L_110012da:
    # jbe    110015c9
    .byte 0xf,0x86
    .long L_110015c9 - . - 4
.org 0x2e0
L_110012e0:
    mov    DWORD PTR [esp+0x18],0x0
.org 0x2e8
L_110012e8:
    mov    DWORD PTR [esp+0x14],0x2b
.org 0x2f0
L_110012f0:
    cmp    DWORD PTR [esp+0x2108],0x50
.org 0x2f8
L_110012f8:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x2fc
L_110012fc:
    sete   al
.org 0x2ff
L_110012ff:
    cmp    edi,0x2a
.org 0x302
L_11001302:
    setne  dl
.org 0x305
L_11001305:
    sub    ebp,0x2a
.org 0x308
L_11001308:
    mov    ecx,ebp
.org 0x30a
L_1100130a:
    and    eax,edx
.org 0x30c
L_1100130c:
    lea    edx,[esp+0x34]
.org 0x310
L_11001310:
    movzx  esi,cl
.org 0x313
L_11001313:
    mov    BYTE PTR [esp+0xf],al
.org 0x317
L_11001317:
    xor    eax,eax
.org 0x319
L_11001319:
    mov    edi,esi
.org 0x31b
L_1100131b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x320
L_11001320:
    mov    ebx,DWORD PTR [esp+0x4]
.org 0x324
L_11001324:
    lea    esi,[eax-0x1c]
.org 0x327
L_11001327:
    mov    ecx,DWORD PTR [ebx+eax*4+0x14]
.org 0x32b
L_1100132b:
    cmp    esi,0x2
.org 0x32e
L_1100132e:
    # jbe    110013a0
    .byte 0x76
    .byte L_110013a0 - . - 1
.org 0x330
L_11001330:
    cmp    eax,0x29
.org 0x333
L_11001333:
    # je     110013a0
    .byte 0x74
    .byte L_110013a0 - . - 1
.org 0x335
L_11001335:
    mov    esi,ebx
.org 0x337
L_11001337:
    mov    ebx,ebp
.org 0x339
L_11001339:
    cmp    bl,0x7
.org 0x33c
L_1100133c:
    # ja     110016d4
    .byte 0xf,0x87
    .long L_110016d4 - . - 4
.org 0x342
L_11001342:
    jmp    DWORD PTR [edi*4+0x11004000]
.org 0x349
L_11001349:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x350
L_11001350:
    xor    edi,edi
.org 0x352
L_11001352:
    add    esp,0x20ec
.org 0x358
L_11001358:
    mov    eax,edi
.org 0x35a
L_1100135a:
    pop    ebx
.org 0x35b
L_1100135b:
    pop    esi
.org 0x35c
L_1100135c:
    pop    edi
.org 0x35d
L_1100135d:
    pop    ebp
.org 0x35e
L_1100135e:
    ret
.org 0x35f
L_1100135f:
    # Alignment padding: nop
    .byte 0x90
.org 0x360
L_11001360:
    lea    ebx,[eax-0x7]
.org 0x363
L_11001363:
    mov    DWORD PTR [esp+0x4],esi
.org 0x367
L_11001367:
    cmp    ebx,0x1d
.org 0x36a
L_1100136a:
    # ja     11001440
    .byte 0xf,0x87
    .long L_11001440 - . - 4
.org 0x370
L_11001370:
    mov    esi,0x30004001
.org 0x375
L_11001375:
    bt     esi,ebx
.org 0x378
L_11001378:
    # jae    11001412
    .byte 0xf,0x83
    .long L_11001412 - . - 4
.org 0x37e
L_1100137e:
    mov    DWORD PTR [edx],ecx
.org 0x380
L_11001380:
    add    eax,0x1
.org 0x383
L_11001383:
    mov    ebx,DWORD PTR [esp+0x4]
.org 0x387
L_11001387:
    add    edx,0x4
.org 0x38a
L_1100138a:
    lea    esi,[eax-0x1c]
.org 0x38d
L_1100138d:
    mov    ecx,DWORD PTR [ebx+eax*4+0x14]
.org 0x391
L_11001391:
    cmp    esi,0x2
.org 0x394
L_11001394:
    # ja     11001330
    .byte 0x77
    .byte L_11001330 - . - 1
.org 0x396
L_11001396:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x39e
L_1100139e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x3a0
L_110013a0:
    mov    esi,DWORD PTR [esp+0x4]
.org 0x3a4
L_110013a4:
    movzx  ebx,BYTE PTR [esp+0xf]
.org 0x3a9
L_110013a9:
    # jmp    110013dd
    .byte 0xeb
    .byte L_110013dd - . - 1
.org 0x3ab
L_110013ab:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x3b3
L_110013b3:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x3bb
L_110013bb:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x3c0
L_110013c0:
    test   bl,bl
.org 0x3c2
L_110013c2:
    # je     110013e4
    .byte 0x74
    .byte L_110013e4 - . - 1
.org 0x3c4
L_110013c4:
    mov    DWORD PTR [esp+0xa4],0x0
.org 0x3cf
L_110013cf:
    mov    ecx,DWORD PTR [esi+0x88]
.org 0x3d5
L_110013d5:
    add    edx,0x4
.org 0x3d8
L_110013d8:
    mov    eax,0x1d
.org 0x3dd
L_110013dd:
    mov    DWORD PTR [edx],ecx
.org 0x3df
L_110013df:
    cmp    eax,0x1c
.org 0x3e2
L_110013e2:
    # je     110013c0
    .byte 0x74
    .byte L_110013c0 - . - 1
.org 0x3e4
L_110013e4:
    mov    DWORD PTR [esp+0x4],esi
.org 0x3e8
L_110013e8:
    # jmp    11001380
    .byte 0xeb
    .byte L_11001380 - . - 1
.org 0x3ea
L_110013ea:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x3f0
L_110013f0:
    test   eax,eax
.org 0x3f2
L_110013f2:
    # je     110016b7
    .byte 0xf,0x84
    .long L_110016b7 - . - 4
.org 0x3f8
L_110013f8:
    lea    ebx,[eax-0xd]
.org 0x3fb
L_110013fb:
    mov    DWORD PTR [esp+0x4],esi
.org 0x3ff
L_110013ff:
    cmp    ebx,0x1b
.org 0x402
L_11001402:
    # ja     11001440
    .byte 0x77
    .byte L_11001440 - . - 1
.org 0x404
L_11001404:
    mov    esi,0xb007e7f
.org 0x409
L_11001409:
    bt     esi,ebx
.org 0x40c
L_1100140c:
    # jb     1100137e
    .byte 0xf,0x82
    .long L_1100137e - . - 4
.org 0x412
L_11001412:
    mov    DWORD PTR [edx],0x0
.org 0x418
L_11001418:
    # jmp    11001380
    .byte 0xe9
    .long L_11001380 - . - 4
.org 0x41d
L_1100141d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x420
L_11001420:
    mov    DWORD PTR [esp+0x4],esi
.org 0x424
L_11001424:
    cmp    eax,0x5
.org 0x427
L_11001427:
    # jne    11001440
    .byte 0x75
    .byte L_11001440 - . - 1
.org 0x429
L_11001429:
    mov    DWORD PTR [esp+0x48],ecx
.org 0x42d
L_1100142d:
    add    edx,0x4
.org 0x430
L_11001430:
    mov    eax,0x6
.org 0x435
L_11001435:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x43d
L_1100143d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x440
L_11001440:
    mov    DWORD PTR [edx],0x0
.org 0x446
L_11001446:
    add    eax,0x1
.org 0x449
L_11001449:
    add    edx,0x4
.org 0x44c
L_1100144c:
    cmp    eax,0x2b
.org 0x44f
L_1100144f:
    # jne    11001320
    .byte 0xf,0x85
    .long L_11001320 - . - 4
.org 0x455
L_11001455:
    mov    ebx,DWORD PTR [esp+0x4]
.org 0x459
L_11001459:
    fld1
.org 0x45b
L_1100145b:
    mov    DWORD PTR [esp+0xe0],0xa000d
.org 0x466
L_11001466:
    mov    eax,DWORD PTR [ebx+0xc4]
.org 0x46c
L_1100146c:
    fsubr  DWORD PTR [ebx+0xc8]
.org 0x472
L_11001472:
    fmul   DWORD PTR [0x11006008]
.org 0x478
L_11001478:
    sub    eax,0x64
.org 0x47b
L_1100147b:
    imul   eax,eax,0x64
.org 0x47e
L_1100147e:
    fstp   DWORD PTR [esp+0x4]
.org 0x482
L_11001482:
    fld    DWORD PTR [0x1100600c]
.org 0x488
L_11001488:
    fld    DWORD PTR [esp+0x4]
.org 0x48c
L_1100148c:
    mov    DWORD PTR [esp+0x28],eax
.org 0x490
L_11001490:
    mov    eax,DWORD PTR [ebx+0xc0]
.org 0x496
L_11001496:
    sub    eax,0x64
.org 0x499
L_11001499:
    imul   eax,eax,0x64
.org 0x49c
L_1100149c:
    fcomi  st,st(1)
.org 0x49e
L_1100149e:
    fstp   st(1)
.org 0x4a0
L_110014a0:
    mov    DWORD PTR [esp+0x2c],eax
.org 0x4a4
L_110014a4:
    # jbe    11001638
    .byte 0xf,0x86
    .long L_11001638 - . - 4
.org 0x4aa
L_110014aa:
    fld    DWORD PTR [0x11006010]
.org 0x4b0
L_110014b0:
    fcomip st,st(1)
.org 0x4b2
L_110014b2:
    # jbe    1100163c
    .byte 0xf,0x86
    .long L_1100163c - . - 4
.org 0x4b8
L_110014b8:
    fld    st(0)
.org 0x4ba
L_110014ba:
    fldz
.org 0x4bc
L_110014bc:
    fcomip st,st(2)
.org 0x4be
L_110014be:
    fstp   st(1)
.org 0x4c0
L_110014c0:
    # ja     110016c9
    .byte 0xf,0x87
    .long L_110016c9 - . - 4
.org 0x4c6
L_110014c6:
    fld    DWORD PTR [0x11006004]
.org 0x4cc
L_110014cc:
    fnstcw WORD PTR [esp+0x1e]
.org 0x4d0
L_110014d0:
    faddp  st(1),st
.org 0x4d2
L_110014d2:
    movzx  eax,WORD PTR [esp+0x1e]
.org 0x4d7
L_110014d7:
    or     ah,0xc
.org 0x4da
L_110014da:
    mov    WORD PTR [esp+0x1c],ax
.org 0x4df
L_110014df:
    fldcw  WORD PTR [esp+0x1c]
.org 0x4e3
L_110014e3:
    fistp  DWORD PTR [esp+0x4]
.org 0x4e7
L_110014e7:
    fldcw  WORD PTR [esp+0x1e]
.org 0x4eb
L_110014eb:
    mov    eax,DWORD PTR [esp+0x4]
.org 0x4ef
L_110014ef:
    # jmp    11001640
    .byte 0xe9
    .long L_11001640 - . - 4
.org 0x4f4
L_110014f4:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x4f8
L_110014f8:
    mov    DWORD PTR [esp+0x4],esi
.org 0x4fc
L_110014fc:
    cmp    eax,0x4
.org 0x4ff
L_110014ff:
    # jne    11001440
    .byte 0xf,0x85
    .long L_11001440 - . - 4
.org 0x505
L_11001505:
    mov    DWORD PTR [esp+0x44],ecx
.org 0x509
L_11001509:
    add    edx,0x4
.org 0x50c
L_1100150c:
    mov    eax,0x5
.org 0x511
L_11001511:
    # jmp    11001440
    .byte 0xe9
    .long L_11001440 - . - 4
.org 0x516
L_11001516:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x51e
L_1100151e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x520
L_11001520:
    mov    DWORD PTR [esp+0x4],esi
.org 0x524
L_11001524:
    cmp    eax,0x8
.org 0x527
L_11001527:
    # jne    11001440
    .byte 0xf,0x85
    .long L_11001440 - . - 4
.org 0x52d
L_1100152d:
    mov    DWORD PTR [esp+0x54],ecx
.org 0x531
L_11001531:
    add    edx,0x4
.org 0x534
L_11001534:
    mov    eax,0x9
.org 0x539
L_11001539:
    # jmp    11001440
    .byte 0xe9
    .long L_11001440 - . - 4
.org 0x53e
L_1100153e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x540
L_11001540:
    mov    DWORD PTR [esp+0x4],esi
.org 0x544
L_11001544:
    cmp    eax,0x1
.org 0x547
L_11001547:
    # jne    11001440
    .byte 0xf,0x85
    .long L_11001440 - . - 4
.org 0x54d
L_1100154d:
    mov    DWORD PTR [esp+0x38],ecx
.org 0x551
L_11001551:
    add    edx,0x4
.org 0x554
L_11001554:
    mov    eax,0x2
.org 0x559
L_11001559:
    # jmp    11001440
    .byte 0xe9
    .long L_11001440 - . - 4
.org 0x55e
L_1100155e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x560
L_11001560:
    mov    DWORD PTR [esp+0x4],esi
.org 0x564
L_11001564:
    cmp    eax,0x6
.org 0x567
L_11001567:
    # jne    11001440
    .byte 0xf,0x85
    .long L_11001440 - . - 4
.org 0x56d
L_1100156d:
    mov    DWORD PTR [esp+0x4c],ecx
.org 0x571
L_11001571:
    add    edx,0x4
.org 0x574
L_11001574:
    mov    eax,0x7
.org 0x579
L_11001579:
    # jmp    11001440
    .byte 0xe9
    .long L_11001440 - . - 4
.org 0x57e
L_1100157e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x580
L_11001580:
    mov    ebx,esi
.org 0x582
L_11001582:
    lea    esi,[eax-0x2]
.org 0x585
L_11001585:
    cmp    esi,0x1
.org 0x588
L_11001588:
    # jbe    11001620
    .byte 0xf,0x86
    .long L_11001620 - . - 4
.org 0x58e
L_1100158e:
    cmp    eax,0x14
.org 0x591
L_11001591:
    # je     11001620
    .byte 0xf,0x84
    .long L_11001620 - . - 4
.org 0x597
L_11001597:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x59b
L_1100159b:
    mov    DWORD PTR [edx],0x0
.org 0x5a1
L_110015a1:
    # jmp    11001446
    .byte 0xe9
    .long L_11001446 - . - 4
.org 0x5a6
L_110015a6:
    mov    eax,DWORD PTR [edx+0x54]
.org 0x5a9
L_110015a9:
    # call   11001130
    .byte 0xe8
    .long L_11001130 - . - 4
.org 0x5ae
L_110015ae:
    mov    edx,DWORD PTR [esp+0x2100]
.org 0x5b5
L_110015b5:
    cmp    eax,0x1
.org 0x5b8
L_110015b8:
    mov    eax,0x1
.org 0x5bd
L_110015bd:
    sbb    eax,0xffffffff
.org 0x5c0
L_110015c0:
    mov    DWORD PTR [esp+0x10],eax
.org 0x5c4
L_110015c4:
    # jmp    110012cb
    .byte 0xe9
    .long L_110012cb - . - 4
.org 0x5c9
L_110015c9:
    sub    esp,0xc
.org 0x5cc
L_110015cc:
    push   edx
.org 0x5cd
L_110015cd:
    # call   11001180
    .byte 0xe8
    .long L_11001180 - . - 4
.org 0x5d2
L_110015d2:
    add    esp,0x10
.org 0x5d5
L_110015d5:
    test   eax,eax
.org 0x5d7
L_110015d7:
    # je     110012e0
    .byte 0xf,0x84
    .long L_110012e0 - . - 4
.org 0x5dd
L_110015dd:
    mov    ecx,DWORD PTR [eax+0x31]
.org 0x5e0
L_110015e0:
    mov    DWORD PTR [esp+0x14],0x2b
.org 0x5e8
L_110015e8:
    mov    edx,ecx
.org 0x5ea
L_110015ea:
    shr    edx,1
.org 0x5ec
L_110015ec:
    and    edx,0x1
.org 0x5ef
L_110015ef:
    and    ecx,0x4
.org 0x5f2
L_110015f2:
    mov    ecx,0x2
.org 0x5f7
L_110015f7:
    cmovne edx,ecx
.org 0x5fa
L_110015fa:
    mov    ecx,DWORD PTR [0x1100902c]
.org 0x600
L_11001600:
    mov    ecx,DWORD PTR [ecx+0x4829d4]
.org 0x606
L_11001606:
    test   ecx,ecx
.org 0x608
L_11001608:
    # je     11001613
    .byte 0x74
    .byte L_11001613 - . - 1
.org 0x60a
L_1100160a:
    movzx  esi,BYTE PTR [ecx+edx*8+0x1]
.org 0x60f
L_1100160f:
    mov    DWORD PTR [esp+0x14],esi
.org 0x613
L_11001613:
    movzx  eax,BYTE PTR [eax+0x35]
.org 0x617
L_11001617:
    mov    DWORD PTR [esp+0x18],eax
.org 0x61b
L_1100161b:
    # jmp    110012f0
    .byte 0xe9
    .long L_110012f0 - . - 4
.org 0x620
L_11001620:
    add    eax,0x1
.org 0x623
L_11001623:
    mov    DWORD PTR [edx],ecx
.org 0x625
L_11001625:
    add    edx,0x4
.org 0x628
L_11001628:
    mov    ecx,DWORD PTR [ebx+eax*4+0x14]
.org 0x62c
L_1100162c:
    # jmp    11001582
    .byte 0xe9
    .long L_11001582 - . - 4
.org 0x631
L_11001631:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x638
L_11001638:
    fstp   st(0)
.org 0x63a
L_1100163a:
    # jmp    1100163e
    .byte 0xeb
    .byte L_1100163e - . - 1
.org 0x63c
L_1100163c:
    fstp   st(0)
.org 0x63e
L_1100163e:
    xor    eax,eax
.org 0x640
L_11001640:
    mov    DWORD PTR [esp+0x30],eax
.org 0x644
L_11001644:
    sub    esp,0xc
.org 0x647
L_11001647:
    mov    edi,0x1
.org 0x64c
L_1100164c:
    lea    eax,[esp+0x34]
.org 0x650
L_11001650:
    push   eax
.org 0x651
L_11001651:
    lea    eax,[esp+0x44]
.org 0x655
L_11001655:
    push   eax
.org 0x656
L_11001656:
    push   DWORD PTR [esp+0x24]
.org 0x65a
L_1100165a:
    push   0xffe
.org 0x65f
L_1100165f:
    lea    eax,[esp+0x100]
.org 0x666
L_11001666:
    lea    ebx,[esp+0xfc]
.org 0x66d
L_1100166d:
    push   eax
.org 0x66e
L_1100166e:
    # call   11001ed0
    .byte 0xe8
    .long L_11001ed0 - . - 4
.org 0x673
L_11001673:
    mov    DWORD PTR [esp+0x44],0x0
.org 0x67b
L_1100167b:
    add    esp,0x1c
.org 0x67e
L_1100167e:
    add    eax,0x2
.org 0x681
L_11001681:
    push   eax
.org 0x682
L_11001682:
    push   ebx
.org 0x683
L_11001683:
    lea    ebx,[esp+0x30]
.org 0x687
L_11001687:
    push   ebx
.org 0x688
L_11001688:
    # call   110010f0
    .byte 0xe8
    .long L_110010f0 - . - 4
.org 0x68d
L_1100168d:
    pop    eax
.org 0x68e
L_1100168e:
    pop    edx
.org 0x68f
L_1100168f:
    push   DWORD PTR [esp+0x2c]
.org 0x693
L_11001693:
    push   DWORD PTR [esp+0x2110]
.org 0x69a
L_1100169a:
    # call   11001110
    .byte 0xe8
    .long L_11001110 - . - 4
.org 0x69f
L_1100169f:
    mov    DWORD PTR [esp],ebx
.org 0x6a2
L_110016a2:
    # call   11001120
    .byte 0xe8
    .long L_11001120 - . - 4
.org 0x6a7
L_110016a7:
    add    esp,0x10
.org 0x6aa
L_110016aa:
    mov    eax,edi
.org 0x6ac
L_110016ac:
    add    esp,0x20ec
.org 0x6b2
L_110016b2:
    pop    ebx
.org 0x6b3
L_110016b3:
    pop    esi
.org 0x6b4
L_110016b4:
    pop    edi
.org 0x6b5
L_110016b5:
    pop    ebp
.org 0x6b6
L_110016b6:
    ret
.org 0x6b7
L_110016b7:
    mov    DWORD PTR [edx],ecx
.org 0x6b9
L_110016b9:
    mov    eax,0x1
.org 0x6be
L_110016be:
    mov    ecx,DWORD PTR [esi+0x18]
.org 0x6c1
L_110016c1:
    add    edx,0x4
.org 0x6c4
L_110016c4:
    # jmp    11001337
    .byte 0xe9
    .long L_11001337 - . - 4
.org 0x6c9
L_110016c9:
    fld    DWORD PTR [0x11006000]
.org 0x6cf
L_110016cf:
    # jmp    110014cc
    .byte 0xe9
    .long L_110014cc - . - 4
.org 0x6d4
L_110016d4:
    cmp    DWORD PTR [esp+0x8],0x12
.org 0x6d9
L_110016d9:
    mov    ebx,esi
.org 0x6db
L_110016db:
    # ja     11001597
    .byte 0xf,0x87
    .long L_11001597 - . - 4
.org 0x6e1
L_110016e1:
    cmp    DWORD PTR [esp+0x14],eax
.org 0x6e5
L_110016e5:
    # je     110017c8
    .byte 0xf,0x84
    .long L_110017c8 - . - 4
.org 0x6eb
L_110016eb:
    cmp    eax,0xc
.org 0x6ee
L_110016ee:
    # je     110017c8
    .byte 0xf,0x84
    .long L_110017c8 - . - 4
.org 0x6f4
L_110016f4:
    cmp    eax,0x20
.org 0x6f7
L_110016f7:
    # je     11001751
    .byte 0x74
    .byte L_11001751 - . - 1
.org 0x6f9
L_110016f9:
    cmp    eax,0x22
.org 0x6fc
L_110016fc:
    # je     11001740
    .byte 0x74
    .byte L_11001740 - . - 1
.org 0x6fe
L_110016fe:
    cmp    eax,0x27
.org 0x701
L_11001701:
    # je     11001740
    .byte 0x74
    .byte L_11001740 - . - 1
.org 0x703
L_11001703:
    cmp    eax,0x1f
.org 0x706
L_11001706:
    # jne    11001788
    .byte 0xf,0x85
    .long L_11001788 - . - 4
.org 0x70c
L_1100170c:
    mov    esi,DWORD PTR [esp+0x18]
.org 0x710
L_11001710:
    cmp    esi,0x4
.org 0x713
L_11001713:
    # jbe    11001788
    .byte 0x76
    .byte L_11001788 - . - 1
.org 0x715
L_11001715:
    cmp    esi,0x7
.org 0x718
L_11001718:
    # jbe    110017af
    .byte 0xf,0x86
    .long L_110017af - . - 4
.org 0x71e
L_1100171e:
    mov    DWORD PTR [edx],0x0
.org 0x724
L_11001724:
    add    edx,0x4
.org 0x727
L_11001727:
    cmp    DWORD PTR [esp+0x8],0x12
.org 0x72c
L_1100172c:
    mov    eax,0x20
.org 0x731
L_11001731:
    mov    ecx,DWORD PTR [ebx+0x94]
.org 0x737
L_11001737:
    # ja     11001597
    .byte 0xf,0x87
    .long L_11001597 - . - 4
.org 0x73d
L_1100173d:
    # jmp    110016e1
    .byte 0xeb
    .byte L_110016e1 - . - 1
.org 0x73f
L_1100173f:
    # Alignment padding: nop
    .byte 0x90
.org 0x740
L_11001740:
    mov    DWORD PTR [edx],ecx
.org 0x742
L_11001742:
    add    eax,0x1
.org 0x745
L_11001745:
    add    edx,0x4
.org 0x748
L_11001748:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x74c
L_1100174c:
    # jmp    11001320
    .byte 0xe9
    .long L_11001320 - . - 4
.org 0x751
L_11001751:
    mov    esi,DWORD PTR [esp+0x18]
.org 0x755
L_11001755:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x759
L_11001759:
    lea    eax,[esi-0x6]
.org 0x75c
L_1100175c:
    cmp    eax,0x1
.org 0x75f
L_1100175f:
    # jbe    11001779
    .byte 0x76
    .byte L_11001779 - . - 1
.org 0x761
L_11001761:
    cmp    esi,0x1
.org 0x764
L_11001764:
    # je     11001779
    .byte 0x74
    .byte L_11001779 - . - 1
.org 0x766
L_11001766:
    mov    DWORD PTR [edx],0x0
.org 0x76c
L_1100176c:
    mov    eax,0x21
.org 0x771
L_11001771:
    add    edx,0x4
.org 0x774
L_11001774:
    # jmp    11001320
    .byte 0xe9
    .long L_11001320 - . - 4
.org 0x779
L_11001779:
    mov    DWORD PTR [edx],ecx
.org 0x77b
L_1100177b:
    mov    eax,0x21
.org 0x780
L_11001780:
    add    edx,0x4
.org 0x783
L_11001783:
    # jmp    11001320
    .byte 0xe9
    .long L_11001320 - . - 4
.org 0x788
L_11001788:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x78c
L_1100178c:
    cmp    eax,0x21
.org 0x78f
L_1100178f:
    # jne    11001440
    .byte 0xf,0x85
    .long L_11001440 - . - 4
.org 0x795
L_11001795:
    cmp    DWORD PTR [esp+0x14],0xb
.org 0x79a
L_1100179a:
    # jne    11001440
    .byte 0xf,0x85
    .long L_11001440 - . - 4
.org 0x7a0
L_110017a0:
    mov    DWORD PTR [edx],ecx
.org 0x7a2
L_110017a2:
    mov    eax,0x22
.org 0x7a7
L_110017a7:
    add    edx,0x4
.org 0x7aa
L_110017aa:
    # jmp    11001320
    .byte 0xe9
    .long L_11001320 - . - 4
.org 0x7af
L_110017af:
    mov    DWORD PTR [edx],ecx
.org 0x7b1
L_110017b1:
    mov    eax,0x20
.org 0x7b6
L_110017b6:
    add    edx,0x4
.org 0x7b9
L_110017b9:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x7bd
L_110017bd:
    # jmp    11001320
    .byte 0xe9
    .long L_11001320 - . - 4
.org 0x7c2
L_110017c2:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x7c8
L_110017c8:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x7cc
L_110017cc:
    mov    DWORD PTR [edx],ecx
.org 0x7ce
L_110017ce:
    # jmp    11001446
    .byte 0xe9
    .long L_11001446 - . - 4
.org 0x7d3
L_110017d3:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x7db
L_110017db:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x7e0
L_110017e0:
    # Original function: XenoPlugin_Query
    push   ebx
.org 0x7e1
L_110017e1:
    mov    edx,DWORD PTR [esp+0x8]
.org 0x7e5
L_110017e5:
    test   edx,edx
.org 0x7e7
L_110017e7:
    # je     110018f0
    .byte 0xf,0x84
    .long L_110018f0 - . - 4
.org 0x7ed
L_110017ed:
    mov    ebx,DWORD PTR [edx]
.org 0x7ef
L_110017ef:
    xor    eax,eax
.org 0x7f1
L_110017f1:
    cmp    ebx,0x207
.org 0x7f7
L_110017f7:
    # ja     11001800
    .byte 0x77
    .byte L_11001800 - . - 1
.org 0x7f9
L_110017f9:
    pop    ebx
.org 0x7fa
L_110017fa:
    ret    0x4
.org 0x7fd
L_110017fd:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x800
L_11001800:
    mov    DWORD PTR [edx+0x4],0x1
.org 0x807
L_11001807:
    # jmp    11001820
    .byte 0xeb
    .byte L_11001820 - . - 1
.org 0x809
L_11001809:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x811
L_11001811:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x819
L_11001819:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x820
L_11001820:
    movzx  ecx,WORD PTR [eax+0x11004140]
.org 0x827
L_11001827:
    test   cx,cx
.org 0x82a
L_1100182a:
    # je     11001839
    .byte 0x74
    .byte L_11001839 - . - 1
.org 0x82c
L_1100182c:
    mov    WORD PTR [edx+eax*1+0x8],cx
.org 0x831
L_11001831:
    add    eax,0x2
.org 0x834
L_11001834:
    cmp    eax,0x7e
.org 0x837
L_11001837:
    # jne    11001820
    .byte 0x75
    .byte L_11001820 - . - 1
.org 0x839
L_11001839:
    xor    ecx,ecx
.org 0x83b
L_1100183b:
    mov    WORD PTR [edx+eax*1+0x8],cx
.org 0x840
L_11001840:
    xor    eax,eax
.org 0x842
L_11001842:
    # jmp    11001860
    .byte 0xeb
    .byte L_11001860 - . - 1
.org 0x844
L_11001844:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x84c
L_1100184c:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x854
L_11001854:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x85c
L_1100185c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x860
L_11001860:
    movzx  ecx,WORD PTR [eax+0x11004130]
.org 0x867
L_11001867:
    test   cx,cx
.org 0x86a
L_1100186a:
    # je     1100187c
    .byte 0x74
    .byte L_1100187c - . - 1
.org 0x86c
L_1100186c:
    mov    WORD PTR [edx+eax*1+0x88],cx
.org 0x874
L_11001874:
    add    eax,0x2
.org 0x877
L_11001877:
    cmp    eax,0x3e
.org 0x87a
L_1100187a:
    # jne    11001860
    .byte 0x75
    .byte L_11001860 - . - 1
.org 0x87c
L_1100187c:
    xor    ecx,ecx
.org 0x87e
L_1100187e:
    mov    WORD PTR [edx+eax*1+0x88],cx
.org 0x886
L_11001886:
    xor    eax,eax
.org 0x888
L_11001888:
    # jmp    110018a0
    .byte 0xeb
    .byte L_110018a0 - . - 1
.org 0x88a
L_1100188a:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x892
L_11001892:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x89a
L_1100189a:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x8a0
L_110018a0:
    movzx  ecx,WORD PTR [eax+0x11004080]
.org 0x8a7
L_110018a7:
    test   cx,cx
.org 0x8aa
L_110018aa:
    # je     110018be
    .byte 0x74
    .byte L_110018be - . - 1
.org 0x8ac
L_110018ac:
    mov    WORD PTR [edx+eax*1+0xc8],cx
.org 0x8b4
L_110018b4:
    add    eax,0x2
.org 0x8b7
L_110018b7:
    cmp    eax,0x13e
.org 0x8bc
L_110018bc:
    # jne    110018a0
    .byte 0x75
    .byte L_110018a0 - . - 1
.org 0x8be
L_110018be:
    xor    ecx,ecx
.org 0x8c0
L_110018c0:
    mov    WORD PTR [edx+eax*1+0xc8],cx
.org 0x8c8
L_110018c8:
    cmp    ebx,0x20f
.org 0x8ce
L_110018ce:
    # jbe    110018e4
    .byte 0x76
    .byte L_110018e4 - . - 1
.org 0x8d0
L_110018d0:
    mov    DWORD PTR [edx+0x20c],0x0
.org 0x8da
L_110018da:
    mov    DWORD PTR [edx+0x208],0x0
.org 0x8e4
L_110018e4:
    mov    eax,0x1
.org 0x8e9
L_110018e9:
    pop    ebx
.org 0x8ea
L_110018ea:
    ret    0x4
.org 0x8ed
L_110018ed:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x8f0
L_110018f0:
    xor    eax,eax
.org 0x8f2
L_110018f2:
    pop    ebx
.org 0x8f3
L_110018f3:
    ret    0x4
.org 0x8f6
L_110018f6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x8fe
L_110018fe:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x900
L_11001900:
    # Original function: XenoPlugin_Initialize
    push   ebp
.org 0x901
L_11001901:
    mov    edx,0x1
.org 0x906
L_11001906:
    push   edi
.org 0x907
L_11001907:
    push   esi
.org 0x908
L_11001908:
    push   ebx
.org 0x909
L_11001909:
    sub    esp,0x6c
.org 0x90c
L_1100190c:
    mov    eax,DWORD PTR [esp+0x80]
.org 0x913
L_11001913:
    test   eax,eax
.org 0x915
L_11001915:
    # je     11001922
    .byte 0x74
    .byte L_11001922 - . - 1
.org 0x917
L_11001917:
    cmp    DWORD PTR [eax],0x1f
.org 0x91a
L_1100191a:
    # jbe    11001922
    .byte 0x76
    .byte L_11001922 - . - 1
.org 0x91c
L_1100191c:
    cmp    DWORD PTR [eax+0x4],0x1
.org 0x920
L_11001920:
    # je     11001930
    .byte 0x74
    .byte L_11001930 - . - 1
.org 0x922
L_11001922:
    add    esp,0x6c
.org 0x925
L_11001925:
    mov    eax,edx
.org 0x927
L_11001927:
    pop    ebx
.org 0x928
L_11001928:
    pop    esi
.org 0x929
L_11001929:
    pop    edi
.org 0x92a
L_1100192a:
    pop    ebp
.org 0x92b
L_1100192b:
    ret    0x4
.org 0x92e
L_1100192e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x930
L_11001930:
    mov    ecx,DWORD PTR [eax+0x8]
.org 0x933
L_11001933:
    mov    eax,DWORD PTR [eax+0x1c]
.org 0x936
L_11001936:
    mov    edx,0x2
.org 0x93b
L_1100193b:
    mov    DWORD PTR [0x1100902c],ecx
.org 0x941
L_11001941:
    mov    ds:0x11009028,eax
.org 0x946
L_11001946:
    test   ecx,ecx
.org 0x948
L_11001948:
    # je     11001922
    .byte 0x74
    .byte L_11001922 - . - 1
.org 0x94a
L_1100194a:
    cmp    WORD PTR [ecx],0x5a4d
.org 0x94f
L_1100194f:
    # jne    11001922
    .byte 0x75
    .byte L_11001922 - . - 1
.org 0x951
L_11001951:
    add    ecx,DWORD PTR [ecx+0x3c]
.org 0x954
L_11001954:
    cmp    DWORD PTR [ecx],0x4550
.org 0x95a
L_1100195a:
    # jne    11001922
    .byte 0x75
    .byte L_11001922 - . - 1
.org 0x95c
L_1100195c:
    cmp    WORD PTR [ecx+0x18],0x10b
.org 0x962
L_11001962:
    # jne    11001922
    .byte 0x75
    .byte L_11001922 - . - 1
.org 0x964
L_11001964:
    cmp    DWORD PTR [ecx+0x50],0x4826b8
.org 0x96b
L_1100196b:
    # jbe    11001922
    .byte 0x76
    .byte L_11001922 - . - 1
.org 0x96d
L_1100196d:
    # call   11001000
    .byte 0xe8
    .long L_11001000 - . - 4
.org 0x972
L_11001972:
    mov    esi,eax
.org 0x974
L_11001974:
    test   eax,eax
.org 0x976
L_11001976:
    # je     11001a50
    .byte 0xf,0x84
    .long L_11001a50 - . - 4
.org 0x97c
L_1100197c:
    mov    esi,DWORD PTR [eax+0xc]
.org 0x97f
L_1100197f:
    test   esi,esi
.org 0x981
L_11001981:
    # je     11001a50
    .byte 0xf,0x84
    .long L_11001a50 - . - 4
.org 0x987
L_11001987:
    mov    ebx,DWORD PTR [esi+0x14]
.org 0x98a
L_1100198a:
    lea    eax,[esi+0x14]
.org 0x98d
L_1100198d:
    cmp    eax,ebx
.org 0x98f
L_1100198f:
    # je     11001c98
    .byte 0xf,0x84
    .long L_11001c98 - . - 4
.org 0x995
L_11001995:
    test   ebx,ebx
.org 0x997
L_11001997:
    # je     11001c98
    .byte 0xf,0x84
    .long L_11001c98 - . - 4
.org 0x99d
L_1100199d:
    xor    edi,edi
.org 0x99f
L_1100199f:
    # jmp    110019c8
    .byte 0xeb
    .byte L_110019c8 - . - 1
.org 0x9a1
L_110019a1:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x9a8
L_110019a8:
    mov    ebx,DWORD PTR [ebx]
.org 0x9aa
L_110019aa:
    add    edi,0x1
.org 0x9ad
L_110019ad:
    test   ebx,ebx
.org 0x9af
L_110019af:
    setne  cl
.org 0x9b2
L_110019b2:
    cmp    eax,ebx
.org 0x9b4
L_110019b4:
    setne  dl
.org 0x9b7
L_110019b7:
    test   cl,dl
.org 0x9b9
L_110019b9:
    # je     11001c98
    .byte 0xf,0x84
    .long L_11001c98 - . - 4
.org 0x9bf
L_110019bf:
    cmp    edi,0x20
.org 0x9c2
L_110019c2:
    # je     11001c98
    .byte 0xf,0x84
    .long L_11001c98 - . - 4
.org 0x9c8
L_110019c8:
    mov    esi,DWORD PTR [ebx+0x10]
.org 0x9cb
L_110019cb:
    mov    ebp,DWORD PTR [ebx+0x28]
.org 0x9ce
L_110019ce:
    test   esi,esi
.org 0x9d0
L_110019d0:
    # je     110019a8
    .byte 0x74
    .byte L_110019a8 - . - 1
.org 0x9d2
L_110019d2:
    test   ebp,ebp
.org 0x9d4
L_110019d4:
    # je     110019a8
    .byte 0x74
    .byte L_110019a8 - . - 1
.org 0x9d6
L_110019d6:
    mov    DWORD PTR [esp+0xc],esi
.org 0x9da
L_110019da:
    mov    edx,0x6e
.org 0x9df
L_110019df:
    xor    ecx,ecx
.org 0x9e1
L_110019e1:
    mov    DWORD PTR [esp+0x4],eax
.org 0x9e5
L_110019e5:
    mov    DWORD PTR [esp+0x8],ebx
.org 0x9e9
L_110019e9:
    # jmp    11001a0e
    .byte 0xeb
    .byte L_11001a0e - . - 1
.org 0x9eb
L_110019eb:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x9f3
L_110019f3:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x9fb
L_110019fb:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0xa00
L_11001a00:
    movzx  edx,BYTE PTR [ecx+0x11004021]
.org 0xa07
L_11001a07:
    add    ecx,0x1
.org 0xa0a
L_11001a0a:
    test   dl,dl
.org 0xa0c
L_11001a0c:
    # je     11001a38
    .byte 0x74
    .byte L_11001a38 - . - 1
.org 0xa0e
L_11001a0e:
    movzx  eax,WORD PTR [ebp+ecx*2+0x0]
.org 0xa13
L_11001a13:
    lea    esi,[eax-0x41]
.org 0xa16
L_11001a16:
    lea    ebx,[eax+0x20]
.org 0xa19
L_11001a19:
    cmp    si,0x1a
.org 0xa1d
L_11001a1d:
    cmovb  eax,ebx
.org 0xa20
L_11001a20:
    cmp    dx,ax
.org 0xa23
L_11001a23:
    # je     11001a00
    .byte 0x74
    .byte L_11001a00 - . - 1
.org 0xa25
L_11001a25:
    mov    eax,DWORD PTR [esp+0x4]
.org 0xa29
L_11001a29:
    mov    ebx,DWORD PTR [esp+0x8]
.org 0xa2d
L_11001a2d:
    # jmp    110019a8
    .byte 0xe9
    .long L_110019a8 - . - 4
.org 0xa32
L_11001a32:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0xa38
L_11001a38:
    cmp    WORD PTR [ebp+ecx*2+0x0],0x0
.org 0xa3e
L_11001a3e:
    mov    esi,DWORD PTR [esp+0xc]
.org 0xa42
L_11001a42:
    mov    eax,DWORD PTR [esp+0x4]
.org 0xa46
L_11001a46:
    mov    ebx,DWORD PTR [esp+0x8]
.org 0xa4a
L_11001a4a:
    # jne    110019a8
    .byte 0xf,0x85
    .long L_110019a8 - . - 4
.org 0xa50
L_11001a50:
    mov    edx,0x11005000
.org 0xa55
L_11001a55:
    mov    eax,esi
.org 0xa57
L_11001a57:
    # call   11001010
    .byte 0xe8
    .long L_11001010 - . - 4
.org 0xa5c
L_11001a5c:
    mov    edx,0x11005017
.org 0xa61
L_11001a61:
    mov    ds:0x11009024,eax
.org 0xa66
L_11001a66:
    mov    edi,eax
.org 0xa68
L_11001a68:
    mov    eax,esi
.org 0xa6a
L_11001a6a:
    # call   11001010
    .byte 0xe8
    .long L_11001010 - . - 4
.org 0xa6f
L_11001a6f:
    mov    ds:0x11009020,eax
.org 0xa74
L_11001a74:
    test   eax,eax
.org 0xa76
L_11001a76:
    # je     11001d27
    .byte 0xf,0x84
    .long L_11001d27 - . - 4
.org 0xa7c
L_11001a7c:
    test   edi,edi
.org 0xa7e
L_11001a7e:
    # je     11001d27
    .byte 0xf,0x84
    .long L_11001d27 - . - 4
.org 0xa84
L_11001a84:
    mov    DWORD PTR [esp+0x48],0x736fdc68
.org 0xa8c
L_11001a8c:
    mov    ebx,DWORD PTR [0x1100902c]
.org 0xa92
L_11001a92:
    xor    eax,eax
.org 0xa94
L_11001a94:
    lea    edx,[esp+0x48]
.org 0xa98
L_11001a98:
    mov    DWORD PTR [esp+0x4c],0xec458b00
.org 0xaa0
L_11001aa0:
    movzx  ecx,BYTE PTR [edx+eax*1]
.org 0xaa4
L_11001aa4:
    cmp    BYTE PTR [ebx+eax*1+0x336a5f],cl
.org 0xaab
L_11001aab:
    # jne    11001ca0
    .byte 0xf,0x85
    .long L_11001ca0 - . - 4
.org 0xab1
L_11001ab1:
    add    eax,0x1
.org 0xab4
L_11001ab4:
    cmp    eax,0x8
.org 0xab7
L_11001ab7:
    # jne    11001aa0
    .byte 0x75
    .byte L_11001aa0 - . - 1
.org 0xab9
L_11001ab9:
    xor    eax,eax
.org 0xabb
L_11001abb:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0xac0
L_11001ac0:
    movzx  ecx,BYTE PTR [edx+eax*1]
.org 0xac4
L_11001ac4:
    cmp    BYTE PTR [ebx+eax*1+0x336bf2],cl
.org 0xacb
L_11001acb:
    # jne    11001ca0
    .byte 0xf,0x85
    .long L_11001ca0 - . - 4
.org 0xad1
L_11001ad1:
    add    eax,0x1
.org 0xad4
L_11001ad4:
    cmp    eax,0x8
.org 0xad7
L_11001ad7:
    # jne    11001ac0
    .byte 0x75
    .byte L_11001ac0 - . - 1
.org 0xad9
L_11001ad9:
    mov    ebp,0x5653
.org 0xade
L_11001ade:
    mov    BYTE PTR [esp+0x18],0x57
.org 0xae3
L_11001ae3:
    mov    eax,0x108b
.org 0xae8
L_11001ae8:
    lea    edx,[esp+0x2c]
.org 0xaec
L_11001aec:
    mov    DWORD PTR [esp+0x2c],0x840fc985
.org 0xaf4
L_11001af4:
    mov    WORD PTR [esp+0x16],bp
.org 0xaf9
L_11001af9:
    mov    BYTE PTR [esp+0x1b],0x85
.org 0xafe
L_11001afe:
    mov    WORD PTR [esp+0x19],ax
.org 0xb03
L_11001b03:
    xor    eax,eax
.org 0xb05
L_11001b05:
    movzx  ecx,BYTE PTR [edx+eax*1]
.org 0xb09
L_11001b09:
    cmp    BYTE PTR [ebx+eax*1+0x5e10],cl
.org 0xb10
L_11001b10:
    # jne    11001cba
    .byte 0xf,0x85
    .long L_11001cba - . - 4
.org 0xb16
L_11001b16:
    add    eax,0x1
.org 0xb19
L_11001b19:
    cmp    eax,0x4
.org 0xb1c
L_11001b1c:
    # jne    11001b05
    .byte 0x75
    .byte L_11001b05 - . - 1
.org 0xb1e
L_11001b1e:
    xor    eax,eax
.org 0xb20
L_11001b20:
    lea    edx,[esp+0x16]
.org 0xb24
L_11001b24:
    lea    esi,[esp+0x19]
.org 0xb28
L_11001b28:
    movzx  ecx,BYTE PTR [edx+eax*1]
.org 0xb2c
L_11001b2c:
    cmp    BYTE PTR [ebx+eax*1+0x5f2c],cl
.org 0xb33
L_11001b33:
    # jne    11001cba
    .byte 0xf,0x85
    .long L_11001cba - . - 4
.org 0xb39
L_11001b39:
    movzx  ecx,BYTE PTR [esi+eax*1]
.org 0xb3d
L_11001b3d:
    cmp    BYTE PTR [ebx+eax*1+0x5d18],cl
.org 0xb44
L_11001b44:
    # jne    11001cba
    .byte 0xf,0x85
    .long L_11001cba - . - 4
.org 0xb4a
L_11001b4a:
    add    eax,0x1
.org 0xb4d
L_11001b4d:
    cmp    eax,0x3
.org 0xb50
L_11001b50:
    # jne    11001b28
    .byte 0x75
    .byte L_11001b28 - . - 1
.org 0xb52
L_11001b52:
    lea    eax,[ebx+0x5e10]
.org 0xb58
L_11001b58:
    lea    esi,[ebx+0x336a5f]
.org 0xb5e
L_11001b5e:
    mov    DWORD PTR [esp+0x20],0x19b
.org 0xb66
L_11001b66:
    sub    esp,0xc
.org 0xb69
L_11001b69:
    mov    ds:0x1100901c,eax
.org 0xb6e
L_11001b6e:
    lea    eax,[ebx+0x5f2c]
.org 0xb74
L_11001b74:
    mov    ds:0x11009018,eax
.org 0xb79
L_11001b79:
    lea    eax,[ebx+0x5d18]
.org 0xb7f
L_11001b7f:
    mov    ds:0x11009014,eax
.org 0xb84
L_11001b84:
    lea    eax,[ebx+0x336a67]
.org 0xb8a
L_11001b8a:
    mov    ds:0x11009010,eax
.org 0xb8f
L_11001b8f:
    lea    eax,[ebx+0x336be5]
.org 0xb95
L_11001b95:
    mov    ds:0x1100900c,eax
.org 0xb9a
L_11001b9a:
    lea    eax,[ebx+0x336bfa]
.org 0xba0
L_11001ba0:
    mov    ds:0x11009008,eax
.org 0xba5
L_11001ba5:
    lea    eax,[ebx+0x336ca1]
.org 0xbab
L_11001bab:
    mov    ds:0x11009004,eax
.org 0xbb0
L_11001bb0:
    lea    eax,[ebx+0x336fdc]
.org 0xbb6
L_11001bb6:
    mov    DWORD PTR [esp+0x14],esi
.org 0xbba
L_11001bba:
    mov    DWORD PTR [esp+0x28],esi
.org 0xbbe
L_11001bbe:
    mov    DWORD PTR [esp+0x30],0x0
.org 0xbc6
L_11001bc6:
    mov    DWORD PTR [esp+0x34],0x0
.org 0xbce
L_11001bce:
    mov    ds:0x11009000,eax
.org 0xbd3
L_11001bd3:
    lea    eax,[esp+0x30]
.org 0xbd7
L_11001bd7:
    push   eax
.org 0xbd8
L_11001bd8:
    push   0x40
.org 0xbda
L_11001bda:
    lea    eax,[esp+0x34]
.org 0xbde
L_11001bde:
    push   eax
.org 0xbdf
L_11001bdf:
    lea    eax,[esp+0x34]
.org 0xbe3
L_11001be3:
    push   eax
.org 0xbe4
L_11001be4:
    push   0xffffffff
.org 0xbe6
L_11001be6:
    call   edi
.org 0xbe8
L_11001be8:
    add    esp,0xc
.org 0xbeb
L_11001beb:
    test   eax,eax
.org 0xbed
L_11001bed:
    # js     11001da8
    .byte 0xf,0x88
    .long L_11001da8 - . - 4
.org 0xbf3
L_11001bf3:
    lea    eax,[ebx+0x336bf2]
.org 0xbf9
L_11001bf9:
    lea    edi,[esp+0x50]
.org 0xbfd
L_11001bfd:
    mov    DWORD PTR [esp+0x30],esi
.org 0xc01
L_11001c01:
    xor    ebp,ebp
.org 0xc03
L_11001c03:
    mov    DWORD PTR [esp+0x34],eax
.org 0xc07
L_11001c07:
    mov    ecx,edi
.org 0xc09
L_11001c09:
    lea    esi,[esp+0x40]
.org 0xc0d
L_11001c0d:
    mov    DWORD PTR [esp+0x38],0x11001190
.org 0xc15
L_11001c15:
    mov    DWORD PTR [esp+0x3c],0x110011d0
.org 0xc1d
L_11001c1d:
    mov    DWORD PTR [esp+0x4],ebx
.org 0xc21
L_11001c21:
    mov    edx,DWORD PTR [esp+ebp*4+0x30]
.org 0xc25
L_11001c25:
    xor    eax,eax
.org 0xc27
L_11001c27:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xc2f
L_11001c2f:
    # Alignment padding: nop
    .byte 0x90
.org 0xc30
L_11001c30:
    movzx  ebx,BYTE PTR [edx+eax*1]
.org 0xc34
L_11001c34:
    mov    BYTE PTR [ecx+eax*1],bl
.org 0xc37
L_11001c37:
    add    eax,0x1
.org 0xc3a
L_11001c3a:
    cmp    eax,0x8
.org 0xc3d
L_11001c3d:
    # jne    11001c30
    .byte 0x75
    .byte L_11001c30 - . - 1
.org 0xc3f
L_11001c3f:
    mov    eax,DWORD PTR [esp+ebp*4+0x38]
.org 0xc43
L_11001c43:
    mov    ebx,DWORD PTR [esp+0x4]
.org 0xc47
L_11001c47:
    mov    DWORD PTR [esp+0x4],ecx
.org 0xc4b
L_11001c4b:
    mov    DWORD PTR [esp+0x40],0xe9
.org 0xc53
L_11001c53:
    sub    eax,edx
.org 0xc55
L_11001c55:
    mov    DWORD PTR [esp+0x44],0x90909000
.org 0xc5d
L_11001c5d:
    sub    eax,0x5
.org 0xc60
L_11001c60:
    mov    DWORD PTR [esp+0x41],eax
.org 0xc64
L_11001c64:
    xor    eax,eax
.org 0xc66
L_11001c66:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xc6e
L_11001c6e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xc70
L_11001c70:
    movzx  ecx,BYTE PTR [esi+eax*1]
.org 0xc74
L_11001c74:
    mov    BYTE PTR [edx+eax*1],cl
.org 0xc77
L_11001c77:
    add    eax,0x1
.org 0xc7a
L_11001c7a:
    cmp    eax,0x8
.org 0xc7d
L_11001c7d:
    # jne    11001c70
    .byte 0x75
    .byte L_11001c70 - . - 1
.org 0xc7f
L_11001c7f:
    mov    ecx,DWORD PTR [esp+0x4]
.org 0xc83
L_11001c83:
    add    ecx,0x8
.org 0xc86
L_11001c86:
    test   ebp,ebp
.org 0xc88
L_11001c88:
    # jne    11001cc4
    .byte 0x75
    .byte L_11001cc4 - . - 1
.org 0xc8a
L_11001c8a:
    mov    ebp,0x1
.org 0xc8f
L_11001c8f:
    # jmp    11001c1d
    .byte 0xeb
    .byte L_11001c1d - . - 1
.org 0xc91
L_11001c91:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xc98
L_11001c98:
    xor    esi,esi
.org 0xc9a
L_11001c9a:
    # jmp    11001a50
    .byte 0xe9
    .long L_11001a50 - . - 4
.org 0xc9f
L_11001c9f:
    # Alignment padding: nop
    .byte 0x90
.org 0xca0
L_11001ca0:
    mov    eax,ds:0x11009028
.org 0xca5
L_11001ca5:
    test   eax,eax
.org 0xca7
L_11001ca7:
    # je     11001cba
    .byte 0x74
    .byte L_11001cba - . - 1
.org 0xca9
L_11001ca9:
    sub    esp,0x8
.org 0xcac
L_11001cac:
    push   0x11004100
.org 0xcb1
L_11001cb1:
    push   0x11004140
.org 0xcb6
L_11001cb6:
    call   eax
.org 0xcb8
L_11001cb8:
    pop    ebx
.org 0xcb9
L_11001cb9:
    pop    esi
.org 0xcba
L_11001cba:
    mov    edx,0x4
.org 0xcbf
L_11001cbf:
    # jmp    11001922
    .byte 0xe9
    .long L_11001922 - . - 4
.org 0xcc4
L_11001cc4:
    sub    esp,0x4
.org 0xcc7
L_11001cc7:
    push   0x19b
.org 0xccc
L_11001ccc:
    push   DWORD PTR [esp+0x10]
.org 0xcd0
L_11001cd0:
    push   0xffffffff
.org 0xcd2
L_11001cd2:
    call   DWORD PTR [0x11009020]
.org 0xcd8
L_11001cd8:
    pop    ecx
.org 0xcd9
L_11001cd9:
    test   eax,eax
.org 0xcdb
L_11001cdb:
    # js     11001d31
    .byte 0x78
    .byte L_11001d31 - . - 1
.org 0xcdd
L_11001cdd:
    sub    esp,0xc
.org 0xce0
L_11001ce0:
    lea    esi,[esp+0x34]
.org 0xce4
L_11001ce4:
    push   esi
.org 0xce5
L_11001ce5:
    push   DWORD PTR [esp+0x34]
.org 0xce9
L_11001ce9:
    lea    eax,[esp+0x34]
.org 0xced
L_11001ced:
    push   eax
.org 0xcee
L_11001cee:
    lea    eax,[esp+0x34]
.org 0xcf2
L_11001cf2:
    push   eax
.org 0xcf3
L_11001cf3:
    push   0xffffffff
.org 0xcf5
L_11001cf5:
    call   DWORD PTR [0x11009024]
.org 0xcfb
L_11001cfb:
    add    esp,0xc
.org 0xcfe
L_11001cfe:
    test   eax,eax
.org 0xd00
L_11001d00:
    # js     11001db2
    .byte 0xf,0x88
    .long L_11001db2 - . - 4
.org 0xd06
L_11001d06:
    mov    eax,ds:0x11009028
.org 0xd0b
L_11001d0b:
    test   eax,eax
.org 0xd0d
L_11001d0d:
    # je     11001d20
    .byte 0x74
    .byte L_11001d20 - . - 1
.org 0xd0f
L_11001d0f:
    sub    esp,0x8
.org 0xd12
L_11001d12:
    push   0x11004040
.org 0xd17
L_11001d17:
    push   0x11004140
.org 0xd1c
L_11001d1c:
    call   eax
.org 0xd1e
L_11001d1e:
    pop    eax
.org 0xd1f
L_11001d1f:
    pop    edx
.org 0xd20
L_11001d20:
    xor    edx,edx
.org 0xd22
L_11001d22:
    # jmp    11001922
    .byte 0xe9
    .long L_11001922 - . - 4
.org 0xd27
L_11001d27:
    mov    edx,0x3
.org 0xd2c
L_11001d2c:
    # jmp    11001922
    .byte 0xe9
    .long L_11001922 - . - 4
.org 0xd31
L_11001d31:
    xor    edx,edx
.org 0xd33
L_11001d33:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xd3b
L_11001d3b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0xd40
L_11001d40:
    movzx  eax,BYTE PTR [edi+edx*1]
.org 0xd44
L_11001d44:
    mov    BYTE PTR [ebx+edx*1+0x336a5f],al
.org 0xd4b
L_11001d4b:
    add    edx,0x1
.org 0xd4e
L_11001d4e:
    cmp    edx,0x8
.org 0xd51
L_11001d51:
    # jne    11001d40
    .byte 0x75
    .byte L_11001d40 - . - 1
.org 0xd53
L_11001d53:
    xor    ecx,ecx
.org 0xd55
L_11001d55:
    lea    edx,[esp+0x58]
.org 0xd59
L_11001d59:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xd60
L_11001d60:
    movzx  eax,BYTE PTR [edx+ecx*1]
.org 0xd64
L_11001d64:
    mov    BYTE PTR [ebx+ecx*1+0x336bf2],al
.org 0xd6b
L_11001d6b:
    add    ecx,0x1
.org 0xd6e
L_11001d6e:
    cmp    ecx,0x8
.org 0xd71
L_11001d71:
    # jne    11001d60
    .byte 0x75
    .byte L_11001d60 - . - 1
.org 0xd73
L_11001d73:
    sub    esp,0x4
.org 0xd76
L_11001d76:
    push   0x19b
.org 0xd7b
L_11001d7b:
    push   DWORD PTR [esp+0x10]
.org 0xd7f
L_11001d7f:
    push   0xffffffff
.org 0xd81
L_11001d81:
    call   DWORD PTR [0x11009020]
.org 0xd87
L_11001d87:
    sub    esp,0x8
.org 0xd8a
L_11001d8a:
    lea    eax,[esp+0x34]
.org 0xd8e
L_11001d8e:
    push   eax
.org 0xd8f
L_11001d8f:
    push   DWORD PTR [esp+0x34]
.org 0xd93
L_11001d93:
    lea    eax,[esp+0x34]
.org 0xd97
L_11001d97:
    push   eax
.org 0xd98
L_11001d98:
    lea    eax,[esp+0x34]
.org 0xd9c
L_11001d9c:
    push   eax
.org 0xd9d
L_11001d9d:
    push   0xffffffff
.org 0xd9f
L_11001d9f:
    call   DWORD PTR [0x11009024]
.org 0xda5
L_11001da5:
    add    esp,0xc
.org 0xda8
L_11001da8:
    mov    edx,0x5
.org 0xdad
L_11001dad:
    # jmp    11001922
    .byte 0xe9
    .long L_11001922 - . - 4
.org 0xdb2
L_11001db2:
    xor    eax,eax
.org 0xdb4
L_11001db4:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xdbc
L_11001dbc:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0xdc0
L_11001dc0:
    movzx  edx,BYTE PTR [edi+eax*1]
.org 0xdc4
L_11001dc4:
    mov    BYTE PTR [ebx+eax*1+0x336a5f],dl
.org 0xdcb
L_11001dcb:
    add    eax,0x1
.org 0xdce
L_11001dce:
    cmp    eax,0x8
.org 0xdd1
L_11001dd1:
    # jne    11001dc0
    .byte 0x75
    .byte L_11001dc0 - . - 1
.org 0xdd3
L_11001dd3:
    xor    eax,eax
.org 0xdd5
L_11001dd5:
    lea    edx,[esp+0x58]
.org 0xdd9
L_11001dd9:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xde0
L_11001de0:
    movzx  ecx,BYTE PTR [edx+eax*1]
.org 0xde4
L_11001de4:
    mov    BYTE PTR [ebx+eax*1+0x336bf2],cl
.org 0xdeb
L_11001deb:
    add    eax,0x1
.org 0xdee
L_11001dee:
    cmp    eax,0x8
.org 0xdf1
L_11001df1:
    # jne    11001de0
    .byte 0x75
    .byte L_11001de0 - . - 1
.org 0xdf3
L_11001df3:
    sub    esp,0x4
.org 0xdf6
L_11001df6:
    push   0x19b
.org 0xdfb
L_11001dfb:
    push   DWORD PTR [esp+0x10]
.org 0xdff
L_11001dff:
    push   0xffffffff
.org 0xe01
L_11001e01:
    call   DWORD PTR [0x11009020]
.org 0xe07
L_11001e07:
    sub    esp,0x8
.org 0xe0a
L_11001e0a:
    push   esi
.org 0xe0b
L_11001e0b:
    # jmp    11001d8f
    .byte 0xeb
    .byte L_11001d8f - . - 1
.org 0xe0d
L_11001e0d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0xe10
L_11001e10:
    # Original function: DllMain
    mov    eax,0x1
.org 0xe15
L_11001e15:
    ret    0xc
.org 0xe18
L_11001e18:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xe1a
L_11001e1a:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xe1c
L_11001e1c:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xe1e
L_11001e1e:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xe20
L_11001e20:
    # Original function: number
    push   ebp
.org 0xe21
L_11001e21:
    mov    ecx,edx
.org 0xe23
L_11001e23:
    push   edi
.org 0xe24
L_11001e24:
    xor    edi,edi
.org 0xe26
L_11001e26:
    push   esi
.org 0xe27
L_11001e27:
    mov    esi,eax
.org 0xe29
L_11001e29:
    push   ebx
.org 0xe2a
L_11001e2a:
    sub    esp,0x20
.org 0xe2d
L_11001e2d:
    lea    ebx,[esp+0xc]
.org 0xe31
L_11001e31:
    # jmp    11001e60
    .byte 0xeb
    .byte L_11001e60 - . - 1
.org 0xe33
L_11001e33:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xe3b
L_11001e3b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xe43
L_11001e43:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xe4b
L_11001e4b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xe53
L_11001e53:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xe5b
L_11001e5b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0xe60
L_11001e60:
    mov    eax,0xcccccccd
.org 0xe65
L_11001e65:
    add    edi,0x1
.org 0xe68
L_11001e68:
    mul    ecx
.org 0xe6a
L_11001e6a:
    mov    eax,ecx
.org 0xe6c
L_11001e6c:
    shr    edx,0x3
.org 0xe6f
L_11001e6f:
    lea    ebp,[edx+edx*4]
.org 0xe72
L_11001e72:
    add    ebp,ebp
.org 0xe74
L_11001e74:
    sub    eax,ebp
.org 0xe76
L_11001e76:
    add    eax,0x30
.org 0xe79
L_11001e79:
    mov    WORD PTR [ebx+edi*2-0x2],ax
.org 0xe7e
L_11001e7e:
    mov    eax,ecx
.org 0xe80
L_11001e80:
    mov    ecx,edx
.org 0xe82
L_11001e82:
    cmp    eax,0x9
.org 0xe85
L_11001e85:
    # ja     11001e60
    .byte 0x77
    .byte L_11001e60 - . - 1
.org 0xe87
L_11001e87:
    mov    ebp,DWORD PTR [esi+0x4]
.org 0xe8a
L_11001e8a:
    lea    eax,[ebx+edi*2]
.org 0xe8d
L_11001e8d:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xe95
L_11001e95:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xe9d
L_11001e9d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0xea0
L_11001ea0:
    mov    edx,DWORD PTR [esi+0x8]
.org 0xea3
L_11001ea3:
    lea    ecx,[edx+0x1]
.org 0xea6
L_11001ea6:
    cmp    ecx,ebp
.org 0xea8
L_11001ea8:
    # jae    11001eb7
    .byte 0x73
    .byte L_11001eb7 - . - 1
.org 0xeaa
L_11001eaa:
    mov    DWORD PTR [esi+0x8],ecx
.org 0xead
L_11001ead:
    mov    edi,DWORD PTR [esi]
.org 0xeaf
L_11001eaf:
    movzx  ecx,WORD PTR [eax-0x2]
.org 0xeb3
L_11001eb3:
    mov    WORD PTR [edi+edx*2],cx
.org 0xeb7
L_11001eb7:
    sub    eax,0x2
.org 0xeba
L_11001eba:
    cmp    ebx,eax
.org 0xebc
L_11001ebc:
    # jne    11001ea0
    .byte 0x75
    .byte L_11001ea0 - . - 1
.org 0xebe
L_11001ebe:
    add    esp,0x20
.org 0xec1
L_11001ec1:
    pop    ebx
.org 0xec2
L_11001ec2:
    pop    esi
.org 0xec3
L_11001ec3:
    pop    edi
.org 0xec4
L_11001ec4:
    pop    ebp
.org 0xec5
L_11001ec5:
    ret
.org 0xec6
L_11001ec6:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xece
L_11001ece:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0xed0
L_11001ed0:
    # Original function: compact_mm_details
    push   ebp
.org 0xed1
L_11001ed1:
    push   edi
.org 0xed2
L_11001ed2:
    push   esi
.org 0xed3
L_11001ed3:
    push   ebx
.org 0xed4
L_11001ed4:
    sub    esp,0x1c
.org 0xed7
L_11001ed7:
    mov    edi,DWORD PTR [esp+0x34]
.org 0xedb
L_11001edb:
    mov    eax,DWORD PTR [esp+0x30]
.org 0xedf
L_11001edf:
    mov    DWORD PTR [esp+0x14],edi
.org 0xee3
L_11001ee3:
    mov    DWORD PTR [esp+0x10],eax
.org 0xee7
L_11001ee7:
    test   edi,edi
.org 0xee9
L_11001ee9:
    # jne    11001ef5
    .byte 0x75
    .byte L_11001ef5 - . - 1
.org 0xeeb
L_11001eeb:
    add    esp,0x1c
.org 0xeee
L_11001eee:
    mov    eax,edi
.org 0xef0
L_11001ef0:
    pop    ebx
.org 0xef1
L_11001ef1:
    pop    esi
.org 0xef2
L_11001ef2:
    pop    edi
.org 0xef3
L_11001ef3:
    pop    ebp
.org 0xef4
L_11001ef4:
    ret
.org 0xef5
L_11001ef5:
    mov    esi,DWORD PTR [esp+0x30]
.org 0xef9
L_11001ef9:
    xor    ebx,ebx
.org 0xefb
L_11001efb:
    mov    edx,0x3c
.org 0xf00
L_11001f00:
    mov    eax,0x11007000
.org 0xf05
L_11001f05:
    # jmp    11001f20
    .byte 0xeb
    .byte L_11001f20 - . - 1
.org 0xf07
L_11001f07:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xf0f
L_11001f0f:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xf17
L_11001f17:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0xf1f
L_11001f1f:
    # Alignment padding: nop
    .byte 0x90
.org 0xf20
L_11001f20:
    lea    ecx,[ebx+0x1]
.org 0xf23
L_11001f23:
    add    eax,0x2
.org 0xf26
L_11001f26:
    cmp    ecx,edi
.org 0xf28
L_11001f28:
    # jae    11001f30
    .byte 0x73
    .byte L_11001f30 - . - 1
.org 0xf2a
L_11001f2a:
    mov    WORD PTR [esi+ebx*2],dx
.org 0xf2e
L_11001f2e:
    mov    ebx,ecx
.org 0xf30
L_11001f30:
    movzx  edx,WORD PTR [eax]
.org 0xf33
L_11001f33:
    test   dx,dx
.org 0xf36
L_11001f36:
    # jne    11001f20
    .byte 0x75
    .byte L_11001f20 - . - 1
.org 0xf38
L_11001f38:
    mov    edx,DWORD PTR [esp+0x38]
.org 0xf3c
L_11001f3c:
    lea    eax,[esp+0x10]
.org 0xf40
L_11001f40:
    mov    DWORD PTR [esp+0x18],ebx
.org 0xf44
L_11001f44:
    # call   11001e20
    .byte 0xe8
    .long L_11001e20 - . - 4
.org 0xf49
L_11001f49:
    mov    ebp,DWORD PTR [esp+0x18]
.org 0xf4d
L_11001f4d:
    mov    ebx,DWORD PTR [esp+0x30]
.org 0xf51
L_11001f51:
    mov    edx,0x3c
.org 0xf56
L_11001f56:
    mov    eax,0x11008000
.org 0xf5b
L_11001f5b:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0xf60
L_11001f60:
    lea    ecx,[ebp+0x1]
.org 0xf63
L_11001f63:
    add    eax,0x2
.org 0xf66
L_11001f66:
    cmp    ecx,edi
.org 0xf68
L_11001f68:
    # jae    11001f70
    .byte 0x73
    .byte L_11001f70 - . - 1
.org 0xf6a
L_11001f6a:
    mov    WORD PTR [ebx+ebp*2],dx
.org 0xf6e
L_11001f6e:
    mov    ebp,ecx
.org 0xf70
L_11001f70:
    movzx  edx,WORD PTR [eax]
.org 0xf73
L_11001f73:
    test   dx,dx
.org 0xf76
L_11001f76:
    # jne    11001f60
    .byte 0x75
    .byte L_11001f60 - . - 1
.org 0xf78
L_11001f78:
    xor    ebx,ebx
.org 0xf7a
L_11001f7a:
    xor    esi,esi
.org 0xf7c
L_11001f7c:
    mov    DWORD PTR [esp],ebx
.org 0xf7f
L_11001f7f:
    # Alignment padding: nop
    .byte 0x90
.org 0xf80
L_11001f80:
    mov    eax,DWORD PTR [esp+0x3c]
.org 0xf84
L_11001f84:
    mov    edx,DWORD PTR [esp]
.org 0xf87
L_11001f87:
    mov    DWORD PTR [esp+0x4],esi
.org 0xf8b
L_11001f8b:
    lea    ebx,[ebp+0x1]
.org 0xf8e
L_11001f8e:
    mov    edx,DWORD PTR [eax+edx*4]
.org 0xf91
L_11001f91:
    test   edx,edx
.org 0xf93
L_11001f93:
    # je     11002034
    .byte 0xf,0x84
    .long L_11002034 - . - 4
.org 0xf99
L_11001f99:
    lea    eax,[esi+0x1]
.org 0xf9c
L_11001f9c:
    mov    DWORD PTR [esp+0x4],eax
.org 0xfa0
L_11001fa0:
    mov    eax,ebx
.org 0xfa2
L_11001fa2:
    test   esi,esi
.org 0xfa4
L_11001fa4:
    # jne    11002060
    .byte 0xf,0x85
    .long L_11002060 - . - 4
.org 0xfaa
L_11001faa:
    mov    esi,DWORD PTR [esp]
.org 0xfad
L_11001fad:
    mov    ecx,DWORD PTR [esi*4+0x11004180]
.org 0xfb4
L_11001fb4:
    movzx  ebx,WORD PTR [ecx]
.org 0xfb7
L_11001fb7:
    test   bx,bx
.org 0xfba
L_11001fba:
    # je     11001fdd
    .byte 0x74
    .byte L_11001fdd - . - 1
.org 0xfbc
L_11001fbc:
    mov    esi,DWORD PTR [esp+0x30]
.org 0xfc0
L_11001fc0:
    lea    eax,[ebp+0x1]
.org 0xfc3
L_11001fc3:
    add    ecx,0x2
.org 0xfc6
L_11001fc6:
    cmp    eax,edi
.org 0xfc8
L_11001fc8:
    # jae    11001fd5
    .byte 0x73
    .byte L_11001fd5 - . - 1
.org 0xfca
L_11001fca:
    mov    WORD PTR [esi+ebp*2],bx
.org 0xfce
L_11001fce:
    lea    ebx,[ebp+0x2]
.org 0xfd1
L_11001fd1:
    mov    ebp,eax
.org 0xfd3
L_11001fd3:
    mov    eax,ebx
.org 0xfd5
L_11001fd5:
    movzx  ebx,WORD PTR [ecx]
.org 0xfd8
L_11001fd8:
    test   bx,bx
.org 0xfdb
L_11001fdb:
    # jne    11001fc0
    .byte 0x75
    .byte L_11001fc0 - . - 1
.org 0xfdd
L_11001fdd:
    cmp    eax,edi
.org 0xfdf
L_11001fdf:
    # jae    11002050
    .byte 0x73
    .byte L_11002050 - . - 1
.org 0xfe1
L_11001fe1:
    mov    esi,DWORD PTR [esp+0x30]
.org 0xfe5
L_11001fe5:
    mov    ecx,0x20
.org 0xfea
L_11001fea:
    mov    WORD PTR [esi+ebp*2],cx
.org 0xfee
L_11001fee:
    test   edx,edx
.org 0xff0
L_11001ff0:
    # js     110020e0
    .byte 0xf,0x88
    .long L_110020e0 - . - 4
.org 0xff6
L_11001ff6:
    lea    ebp,[eax+0x1]
.org 0xff9
L_11001ff9:
    cmp    ebp,edi
.org 0xffb
L_11001ffb:
    # jae    110023d9
    .byte 0xf,0x83
    .long L_110023d9 - . - 4
.org 0x1001
L_11002001:
    mov    esi,DWORD PTR [esp+0x30]
.org 0x1005
L_11002005:
    mov    ecx,0x2b
.org 0x100a
L_1100200a:
    mov    WORD PTR [esi+eax*2],cx
.org 0x100e
L_1100200e:
    mov    eax,DWORD PTR [esp]
.org 0x1011
L_11002011:
    mov    DWORD PTR [esp+0x18],ebp
.org 0x1015
L_11002015:
    sub    eax,0x1d
.org 0x1018
L_11002018:
    cmp    eax,0x1
.org 0x101b
L_1100201b:
    # jbe    1100232d
    .byte 0xf,0x86
    .long L_1100232d - . - 4
.org 0x1021
L_11002021:
    lea    eax,[esp+0x10]
.org 0x1025
L_11002025:
    # call   11001e20
    .byte 0xe8
    .long L_11001e20 - . - 4
.org 0x102a
L_1100202a:
    cmp    DWORD PTR [esp],0x1c
.org 0x102e
L_1100202e:
    mov    ebp,DWORD PTR [esp+0x18]
.org 0x1032
L_11002032:
    # je     110020a8
    .byte 0x74
    .byte L_110020a8 - . - 1
.org 0x1034
L_11002034:
    add    DWORD PTR [esp],0x1
.org 0x1038
L_11002038:
    mov    eax,DWORD PTR [esp]
.org 0x103b
L_1100203b:
    cmp    eax,0x2a
.org 0x103e
L_1100203e:
    # je     11002117
    .byte 0xf,0x84
    .long L_11002117 - . - 4
.org 0x1044
L_11002044:
    mov    esi,DWORD PTR [esp+0x4]
.org 0x1048
L_11002048:
    # jmp    11001f80
    .byte 0xe9
    .long L_11001f80 - . - 4
.org 0x104d
L_1100204d:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0x76,0x0
.org 0x1050
L_11002050:
    test   edx,edx
.org 0x1052
L_11002052:
    # jns    1100200e
    .byte 0x79
    .byte L_1100200e - . - 1
.org 0x1054
L_11002054:
    neg    edx
.org 0x1056
L_11002056:
    # jmp    1100200e
    .byte 0xeb
    .byte L_1100200e - . - 1
.org 0x1058
L_11002058:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1060
L_11002060:
    mov    ebx,DWORD PTR [esp+0x30]
.org 0x1064
L_11002064:
    mov    esi,0x3b
.org 0x1069
L_11002069:
    mov    ecx,0x11008016
.org 0x106e
L_1100206e:
    # jmp    11002083
    .byte 0xeb
    .byte L_11002083 - . - 1
.org 0x1070
L_11002070:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1078
L_11002078:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x1080
L_11002080:
    lea    eax,[ebp+0x1]
.org 0x1083
L_11002083:
    add    ecx,0x2
.org 0x1086
L_11002086:
    cmp    eax,edi
.org 0x1088
L_11002088:
    # jae    11002095
    .byte 0x73
    .byte L_11002095 - . - 1
.org 0x108a
L_1100208a:
    mov    WORD PTR [ebx+ebp*2],si
.org 0x108e
L_1100208e:
    lea    esi,[ebp+0x2]
.org 0x1091
L_11002091:
    mov    ebp,eax
.org 0x1093
L_11002093:
    mov    eax,esi
.org 0x1095
L_11002095:
    movzx  esi,WORD PTR [ecx]
.org 0x1098
L_11002098:
    test   si,si
.org 0x109b
L_1100209b:
    # jne    11002080
    .byte 0x75
    .byte L_11002080 - . - 1
.org 0x109d
L_1100209d:
    # jmp    11001faa
    .byte 0xe9
    .long L_11001faa - . - 4
.org 0x10a2
L_110020a2:
    # Explicit original instruction encoding: lea    esi,[esi+0x0]
    .byte 0x8d,0xb6,0x0,0x0,0x0,0x0
.org 0x10a8
L_110020a8:
    lea    ebx,[ebp+0x1]
.org 0x10ab
L_110020ab:
    cmp    ebx,edi
.org 0x10ad
L_110020ad:
    # jae    11002100
    .byte 0x73
    .byte L_11002100 - . - 1
.org 0x10af
L_110020af:
    mov    eax,DWORD PTR [esp+0x30]
.org 0x10b3
L_110020b3:
    mov    esi,0x25
.org 0x10b8
L_110020b8:
    mov    WORD PTR [eax+ebp*2],si
.org 0x10bc
L_110020bc:
    mov    eax,DWORD PTR [esp+0x3c]
.org 0x10c0
L_110020c0:
    mov    ebp,ebx
.org 0x10c2
L_110020c2:
    mov    edx,DWORD PTR [eax+0x74]
.org 0x10c5
L_110020c5:
    test   edx,edx
.org 0x10c7
L_110020c7:
    # je     1100210b
    .byte 0x74
    .byte L_1100210b - . - 1
.org 0x10c9
L_110020c9:
    lea    ebx,[ebx+0x1]
.org 0x10cc
L_110020cc:
    mov    DWORD PTR [esp],0x1d
.org 0x10d3
L_110020d3:
    mov    esi,DWORD PTR [esp+0x4]
.org 0x10d7
L_110020d7:
    # jmp    11001f99
    .byte 0xe9
    .long L_11001f99 - . - 4
.org 0x10dc
L_110020dc:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x10e0
L_110020e0:
    add    ebp,0x2
.org 0x10e3
L_110020e3:
    cmp    ebp,edi
.org 0x10e5
L_110020e5:
    # jae    110023c9
    .byte 0xf,0x83
    .long L_110023c9 - . - 4
.org 0x10eb
L_110020eb:
    mov    ebx,0x2212
.org 0x10f0
L_110020f0:
    neg    edx
.org 0x10f2
L_110020f2:
    mov    WORD PTR [esi+eax*2],bx
.org 0x10f6
L_110020f6:
    # jmp    1100200e
    .byte 0xe9
    .long L_1100200e - . - 4
.org 0x10fb
L_110020fb:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0x74,0x26,0x0
.org 0x1100
L_11002100:
    mov    eax,DWORD PTR [esp+0x3c]
.org 0x1104
L_11002104:
    mov    edx,DWORD PTR [eax+0x74]
.org 0x1107
L_11002107:
    test   edx,edx
.org 0x1109
L_11002109:
    # jne    110020cc
    .byte 0x75
    .byte L_110020cc - . - 1
.org 0x110b
L_1100210b:
    mov    DWORD PTR [esp],0x1e
.org 0x1112
L_11002112:
    # jmp    11002044
    .byte 0xe9
    .long L_11002044 - . - 4
.org 0x1117
L_11002117:
    mov    ebx,DWORD PTR [esp+0x40]
.org 0x111b
L_1100211b:
    test   ebx,ebx
.org 0x111d
L_1100211d:
    # je     11002260
    .byte 0xf,0x84
    .long L_11002260 - . - 4
.org 0x1123
L_11002123:
    mov    edx,DWORD PTR [esp+0x4]
.org 0x1127
L_11002127:
    xor    ebx,ebx
.org 0x1129
L_11002129:
    mov    eax,DWORD PTR [esp+0x40]
.org 0x112d
L_1100212d:
    mov    esi,DWORD PTR [eax+ebx*4]
.org 0x1130
L_11002130:
    test   esi,esi
.org 0x1132
L_11002132:
    # je     11002250
    .byte 0xf,0x84
    .long L_11002250 - . - 4
.org 0x1138
L_11002138:
    lea    eax,[edx+0x1]
.org 0x113b
L_1100213b:
    mov    DWORD PTR [esp],eax
.org 0x113e
L_1100213e:
    lea    eax,[ebp+0x1]
.org 0x1141
L_11002141:
    test   edx,edx
.org 0x1143
L_11002143:
    # jne    11002282
    .byte 0xf,0x85
    .long L_11002282 - . - 4
.org 0x1149
L_11002149:
    mov    edx,DWORD PTR [ebx*4+0x11004160]
.org 0x1150
L_11002150:
    movzx  ecx,WORD PTR [edx]
.org 0x1153
L_11002153:
    test   cx,cx
.org 0x1156
L_11002156:
    # je     11002181
    .byte 0x74
    .byte L_11002181 - . - 1
.org 0x1158
L_11002158:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x115c
L_1100215c:
    mov    ebx,DWORD PTR [esp+0x30]
.org 0x1160
L_11002160:
    lea    eax,[ebp+0x1]
.org 0x1163
L_11002163:
    add    edx,0x2
.org 0x1166
L_11002166:
    cmp    eax,edi
.org 0x1168
L_11002168:
    # jae    11002175
    .byte 0x73
    .byte L_11002175 - . - 1
.org 0x116a
L_1100216a:
    mov    WORD PTR [ebx+ebp*2],cx
.org 0x116e
L_1100216e:
    lea    ecx,[ebp+0x2]
.org 0x1171
L_11002171:
    mov    ebp,eax
.org 0x1173
L_11002173:
    mov    eax,ecx
.org 0x1175
L_11002175:
    movzx  ecx,WORD PTR [edx]
.org 0x1178
L_11002178:
    test   cx,cx
.org 0x117b
L_1100217b:
    # jne    11002160
    .byte 0x75
    .byte L_11002160 - . - 1
.org 0x117d
L_1100217d:
    mov    ebx,DWORD PTR [esp+0x4]
.org 0x1181
L_11002181:
    cmp    eax,edi
.org 0x1183
L_11002183:
    # jae    110021c0
    .byte 0x73
    .byte L_110021c0 - . - 1
.org 0x1185
L_11002185:
    mov    edx,DWORD PTR [esp+0x30]
.org 0x1189
L_11002189:
    mov    ecx,0x20
.org 0x118e
L_1100218e:
    test   esi,esi
.org 0x1190
L_11002190:
    mov    WORD PTR [edx+ebp*2],cx
.org 0x1194
L_11002194:
    mov    ecx,esi
.org 0x1196
L_11002196:
    setg   dl
.org 0x1199
L_11002199:
    lea    ebp,[eax+0x1]
.org 0x119c
L_1100219c:
    shr    ecx,0x1f
.org 0x119f
L_1100219f:
    cmp    ebx,0x2
.org 0x11a2
L_110021a2:
    cmove  edx,ecx
.org 0x11a5
L_110021a5:
    cmp    dl,0x1
.org 0x11a8
L_110021a8:
    sbb    edx,edx
.org 0x11aa
L_110021aa:
    and    edx,0x2
.org 0x11ad
L_110021ad:
    add    edx,0x2b
.org 0x11b0
L_110021b0:
    cmp    ebp,edi
.org 0x11b2
L_110021b2:
    # jae    1100231d
    .byte 0xf,0x83
    .long L_1100231d - . - 4
.org 0x11b8
L_110021b8:
    mov    ecx,DWORD PTR [esp+0x30]
.org 0x11bc
L_110021bc:
    mov    WORD PTR [ecx+eax*2],dx
.org 0x11c0
L_110021c0:
    mov    eax,esi
.org 0x11c2
L_110021c2:
    mov    DWORD PTR [esp+0x18],ebp
.org 0x11c6
L_110021c6:
    neg    eax
.org 0x11c8
L_110021c8:
    cmovns esi,eax
.org 0x11cb
L_110021cb:
    mov    eax,0x51eb851f
.org 0x11d0
L_110021d0:
    mul    esi
.org 0x11d2
L_110021d2:
    lea    eax,[esp+0x10]
.org 0x11d6
L_110021d6:
    shr    edx,0x5
.org 0x11d9
L_110021d9:
    mov    DWORD PTR [esp+0x4],edx
.org 0x11dd
L_110021dd:
    # call   11001e20
    .byte 0xe8
    .long L_11001e20 - . - 4
.org 0x11e2
L_110021e2:
    mov    edx,DWORD PTR [esp+0x4]
.org 0x11e6
L_110021e6:
    mov    ebp,DWORD PTR [esp+0x18]
.org 0x11ea
L_110021ea:
    imul   edx,edx,0x64
.org 0x11ed
L_110021ed:
    sub    esi,edx
.org 0x11ef
L_110021ef:
    # je     11002237
    .byte 0x74
    .byte L_11002237 - . - 1
.org 0x11f1
L_110021f1:
    lea    eax,[ebp+0x1]
.org 0x11f4
L_110021f4:
    mov    DWORD PTR [esp+0x4],eax
.org 0x11f8
L_110021f8:
    mov    eax,0xcccccccd
.org 0x11fd
L_110021fd:
    mul    esi
.org 0x11ff
L_110021ff:
    mov    ecx,edx
.org 0x1201
L_11002201:
    shr    ecx,0x3
.org 0x1204
L_11002204:
    lea    edx,[ecx+ecx*4]
.org 0x1207
L_11002207:
    mov    eax,ecx
.org 0x1209
L_11002209:
    add    edx,edx
.org 0x120b
L_1100220b:
    sub    esi,edx
.org 0x120d
L_1100220d:
    mov    ecx,esi
.org 0x120f
L_1100220f:
    cmp    DWORD PTR [esp+0x4],edi
.org 0x1213
L_11002213:
    # jb     110022c6
    .byte 0xf,0x82
    .long L_110022c6 - . - 4
.org 0x1219
L_11002219:
    mov    edx,DWORD PTR [esp]
.org 0x121c
L_1100221c:
    test   ecx,ecx
.org 0x121e
L_1100221e:
    # je     11002250
    .byte 0x74
    .byte L_11002250 - . - 1
.org 0x1220
L_11002220:
    lea    eax,[ebp+0x1]
.org 0x1223
L_11002223:
    mov    edx,DWORD PTR [esp]
.org 0x1226
L_11002226:
    cmp    eax,edi
.org 0x1228
L_11002228:
    # jae    11002250
    .byte 0x73
    .byte L_11002250 - . - 1
.org 0x122a
L_1100222a:
    mov    esi,DWORD PTR [esp+0x30]
.org 0x122e
L_1100222e:
    lea    edx,[ecx+0x30]
.org 0x1231
L_11002231:
    mov    WORD PTR [esi+ebp*2],dx
.org 0x1235
L_11002235:
    mov    ebp,eax
.org 0x1237
L_11002237:
    lea    eax,[ebp+0x1]
.org 0x123a
L_1100223a:
    mov    edx,DWORD PTR [esp]
.org 0x123d
L_1100223d:
    cmp    eax,edi
.org 0x123f
L_1100223f:
    # jae    11002250
    .byte 0x73
    .byte L_11002250 - . - 1
.org 0x1241
L_11002241:
    mov    esi,DWORD PTR [esp+0x30]
.org 0x1245
L_11002245:
    mov    ecx,0x25
.org 0x124a
L_1100224a:
    mov    WORD PTR [esi+ebp*2],cx
.org 0x124e
L_1100224e:
    mov    ebp,eax
.org 0x1250
L_11002250:
    add    ebx,0x1
.org 0x1253
L_11002253:
    cmp    ebx,0x3
.org 0x1256
L_11002256:
    # jne    11002129
    .byte 0xf,0x85
    .long L_11002129 - . - 4
.org 0x125c
L_1100225c:
    mov    DWORD PTR [esp+0x4],edx
.org 0x1260
L_11002260:
    mov    ecx,DWORD PTR [esp+0x4]
.org 0x1264
L_11002264:
    test   ecx,ecx
.org 0x1266
L_11002266:
    # je     110022f0
    .byte 0xf,0x84
    .long L_110022f0 - . - 4
.org 0x126c
L_1100226c:
    mov    eax,DWORD PTR [esp+0x30]
.org 0x1270
L_11002270:
    xor    edx,edx
.org 0x1272
L_11002272:
    mov    edi,ebp
.org 0x1274
L_11002274:
    mov    WORD PTR [eax+ebp*2],dx
.org 0x1278
L_11002278:
    add    esp,0x1c
.org 0x127b
L_1100227b:
    mov    eax,edi
.org 0x127d
L_1100227d:
    pop    ebx
.org 0x127e
L_1100227e:
    pop    esi
.org 0x127f
L_1100227f:
    pop    edi
.org 0x1280
L_11002280:
    pop    ebp
.org 0x1281
L_11002281:
    ret
.org 0x1282
L_11002282:
    mov    DWORD PTR [esp+0x4],ebx
.org 0x1286
L_11002286:
    mov    ebx,DWORD PTR [esp+0x30]
.org 0x128a
L_1100228a:
    mov    ecx,0x3b
.org 0x128f
L_1100228f:
    mov    edx,0x11008016
.org 0x1294
L_11002294:
    # Alignment padding: lea    esi,cs:[esi+eiz*1+0x0]
    .byte 0x2e,0x8d,0xb4,0x26,0x0,0x0,0x0,0x0
.org 0x129c
L_1100229c:
    # Alignment padding: lea    esi,[esi+eiz*1+0x0]
    .byte 0x8d,0x74,0x26,0x0
.org 0x12a0
L_110022a0:
    lea    eax,[ebp+0x1]
.org 0x12a3
L_110022a3:
    add    edx,0x2
.org 0x12a6
L_110022a6:
    cmp    eax,edi
.org 0x12a8
L_110022a8:
    # jae    110022b5
    .byte 0x73
    .byte L_110022b5 - . - 1
.org 0x12aa
L_110022aa:
    mov    WORD PTR [ebx+ebp*2],cx
.org 0x12ae
L_110022ae:
    lea    ecx,[ebp+0x2]
.org 0x12b1
L_110022b1:
    mov    ebp,eax
.org 0x12b3
L_110022b3:
    mov    eax,ecx
.org 0x12b5
L_110022b5:
    movzx  ecx,WORD PTR [edx]
.org 0x12b8
L_110022b8:
    test   cx,cx
.org 0x12bb
L_110022bb:
    # jne    110022a0
    .byte 0x75
    .byte L_110022a0 - . - 1
.org 0x12bd
L_110022bd:
    mov    ebx,DWORD PTR [esp+0x4]
.org 0x12c1
L_110022c1:
    # jmp    11002149
    .byte 0xe9
    .long L_11002149 - . - 4
.org 0x12c6
L_110022c6:
    mov    esi,DWORD PTR [esp+0x30]
.org 0x12ca
L_110022ca:
    lea    edx,[ebp+ebp*1+0x0]
.org 0x12ce
L_110022ce:
    add    eax,0x30
.org 0x12d1
L_110022d1:
    mov    WORD PTR [esi+ebp*2],0x2e
.org 0x12d7
L_110022d7:
    add    ebp,0x2
.org 0x12da
L_110022da:
    cmp    ebp,edi
.org 0x12dc
L_110022dc:
    # jae    11002324
    .byte 0x73
    .byte L_11002324 - . - 1
.org 0x12de
L_110022de:
    mov    WORD PTR [esi+edx*1+0x2],ax
.org 0x12e3
L_110022e3:
    test   ecx,ecx
.org 0x12e5
L_110022e5:
    # je     11002237
    .byte 0xf,0x84
    .long L_11002237 - . - 4
.org 0x12eb
L_110022eb:
    # jmp    11002220
    .byte 0xe9
    .long L_11002220 - . - 4
.org 0x12f0
L_110022f0:
    mov    ebx,DWORD PTR [esp+0x30]
.org 0x12f4
L_110022f4:
    mov    edx,0x43d
.org 0x12f9
L_110022f9:
    mov    eax,0x11007024
.org 0x12fe
L_110022fe:
    # Alignment padding: xchg   ax,ax
    .byte 0x66,0x90
.org 0x1300
L_11002300:
    lea    ecx,[ebp+0x1]
.org 0x1303
L_11002303:
    add    eax,0x2
.org 0x1306
L_11002306:
    cmp    ecx,edi
.org 0x1308
L_11002308:
    # jae    11002310
    .byte 0x73
    .byte L_11002310 - . - 1
.org 0x130a
L_1100230a:
    mov    WORD PTR [ebx+ebp*2],dx
.org 0x130e
L_1100230e:
    mov    ebp,ecx
.org 0x1310
L_11002310:
    movzx  edx,WORD PTR [eax]
.org 0x1313
L_11002313:
    test   dx,dx
.org 0x1316
L_11002316:
    # jne    11002300
    .byte 0x75
    .byte L_11002300 - . - 1
.org 0x1318
L_11002318:
    # jmp    1100226c
    .byte 0xe9
    .long L_1100226c - . - 4
.org 0x131d
L_1100231d:
    mov    ebp,eax
.org 0x131f
L_1100231f:
    # jmp    110021c0
    .byte 0xe9
    .long L_110021c0 - . - 4
.org 0x1324
L_11002324:
    mov    ebp,DWORD PTR [esp+0x4]
.org 0x1328
L_11002328:
    # jmp    11002219
    .byte 0xe9
    .long L_11002219 - . - 4
.org 0x132d
L_1100232d:
    mov    ecx,0x64
.org 0x1332
L_11002332:
    mov    eax,edx
.org 0x1334
L_11002334:
    lea    esi,[esp+0x10]
.org 0x1338
L_11002338:
    xor    edx,edx
.org 0x133a
L_1100233a:
    div    ecx
.org 0x133c
L_1100233c:
    mov    DWORD PTR [esp+0x8],edx
.org 0x1340
L_11002340:
    mov    edx,eax
.org 0x1342
L_11002342:
    mov    eax,esi
.org 0x1344
L_11002344:
    # call   11001e20
    .byte 0xe8
    .long L_11001e20 - . - 4
.org 0x1349
L_11002349:
    mov    ebp,DWORD PTR [esp+0x18]
.org 0x134d
L_1100234d:
    mov    eax,DWORD PTR [esp+0x8]
.org 0x1351
L_11002351:
    lea    ebx,[ebp+0x1]
.org 0x1354
L_11002354:
    test   eax,eax
.org 0x1356
L_11002356:
    # je     110023b0
    .byte 0x74
    .byte L_110023b0 - . - 1
.org 0x1358
L_11002358:
    cmp    ebx,edi
.org 0x135a
L_1100235a:
    # jae    11002389
    .byte 0x73
    .byte L_11002389 - . - 1
.org 0x135c
L_1100235c:
    mov    edx,DWORD PTR [esp+0x30]
.org 0x1360
L_11002360:
    lea    esi,[ebp+ebp*1+0x0]
.org 0x1364
L_11002364:
    mov    ecx,0xa
.org 0x1369
L_11002369:
    add    ebp,0x2
.org 0x136c
L_1100236c:
    mov    WORD PTR [edx+esi*1],0x2e
.org 0x1372
L_11002372:
    xor    edx,edx
.org 0x1374
L_11002374:
    div    ecx
.org 0x1376
L_11002376:
    add    eax,0x30
.org 0x1379
L_11002379:
    cmp    ebp,edi
.org 0x137b
L_1100237b:
    # jae    110023d2
    .byte 0x73
    .byte L_110023d2 - . - 1
.org 0x137d
L_1100237d:
    mov    edx,DWORD PTR [esp+0x30]
.org 0x1381
L_11002381:
    lea    ebx,[ebp+0x1]
.org 0x1384
L_11002384:
    mov    WORD PTR [edx+esi*1+0x2],ax
.org 0x1389
L_11002389:
    mov    eax,DWORD PTR [esp+0x8]
.org 0x138d
L_1100238d:
    mov    esi,0xa
.org 0x1392
L_11002392:
    xor    edx,edx
.org 0x1394
L_11002394:
    div    esi
.org 0x1396
L_11002396:
    mov    ecx,edx
.org 0x1398
L_11002398:
    test   edx,edx
.org 0x139a
L_1100239a:
    # je     110023b0
    .byte 0x74
    .byte L_110023b0 - . - 1
.org 0x139c
L_1100239c:
    add    ecx,0x30
.org 0x139f
L_1100239f:
    cmp    ebx,edi
.org 0x13a1
L_110023a1:
    # jae    110023c0
    .byte 0x73
    .byte L_110023c0 - . - 1
.org 0x13a3
L_110023a3:
    mov    eax,DWORD PTR [esp+0x30]
.org 0x13a7
L_110023a7:
    mov    WORD PTR [eax+ebp*2],cx
.org 0x13ab
L_110023ab:
    mov    ebp,ebx
.org 0x13ad
L_110023ad:
    add    ebx,0x1
.org 0x13b0
L_110023b0:
    cmp    ebx,edi
.org 0x13b2
L_110023b2:
    # jae    110023c0
    .byte 0x73
    .byte L_110023c0 - . - 1
.org 0x13b4
L_110023b4:
    mov    eax,DWORD PTR [esp+0x30]
.org 0x13b8
L_110023b8:
    mov    WORD PTR [eax+ebp*2],0x25
.org 0x13be
L_110023be:
    mov    ebp,ebx
.org 0x13c0
L_110023c0:
    add    DWORD PTR [esp],0x1
.org 0x13c4
L_110023c4:
    # jmp    11002044
    .byte 0xe9
    .long L_11002044 - . - 4
.org 0x13c9
L_110023c9:
    mov    ebp,eax
.org 0x13cb
L_110023cb:
    neg    edx
.org 0x13cd
L_110023cd:
    # jmp    1100200e
    .byte 0xe9
    .long L_1100200e - . - 4
.org 0x13d2
L_110023d2:
    mov    ebp,ebx
.org 0x13d4
L_110023d4:
    lea    ebx,[ebx+0x1]
.org 0x13d7
L_110023d7:
    # jmp    11002389
    .byte 0xeb
    .byte L_11002389 - . - 1
.org 0x13d9
L_110023d9:
    mov    ebp,eax
.org 0x13db
L_110023db:
    # jmp    1100200e
    .byte 0xe9
    .long L_1100200e - . - 4
.org 0x13e0
L_110023e0:
    # Original function: compact_mm
    push   0x0
.org 0x13e2
L_110023e2:
    push   DWORD PTR [esp+0x14]
.org 0x13e6
L_110023e6:
    push   DWORD PTR [esp+0x14]
.org 0x13ea
L_110023ea:
    push   DWORD PTR [esp+0x14]
.org 0x13ee
L_110023ee:
    push   DWORD PTR [esp+0x14]
.org 0x13f2
L_110023f2:
    # call   11001ed0
    .byte 0xe8
    .long L_11001ed0 - . - 4
.org 0x13f7
L_110023f7:
    add    esp,0x14
.org 0x13fa
L_110023fa:
    ret
.org 0x13fb
