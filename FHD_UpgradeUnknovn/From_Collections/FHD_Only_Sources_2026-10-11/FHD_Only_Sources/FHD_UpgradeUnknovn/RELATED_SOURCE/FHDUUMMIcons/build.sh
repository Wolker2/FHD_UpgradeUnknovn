#!/usr/bin/env bash
set -e
gcc -m32 -std=c11 -O2 -ffreestanding -fno-builtin -fno-stack-protector -fno-asynchronous-unwind-tables -fno-pic -fno-pie -c fhduu_mm_icons.c -o fhduu_mm_icons.o
python3 elf_to_coff.py fhduu_mm_icons.o fhduu_mm_icons.coff
ld -m i386pe --no-leading-underscore --shared --entry DllMain --subsystem console --image-base 0x12000000 --disable-auto-import --no-insert-timestamp fhduu_mm_icons.coff fhduu_mm_icons.def -o FHDUUMMIcons.XenoPlugin.dll
