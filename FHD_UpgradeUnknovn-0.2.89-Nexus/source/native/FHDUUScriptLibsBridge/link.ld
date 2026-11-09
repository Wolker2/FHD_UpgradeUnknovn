SECTIONS { .text 0x18001000 : { *(.text) } /DISCARD/ : { *(.note*) *(.comment) *(.eh_frame*) } }
