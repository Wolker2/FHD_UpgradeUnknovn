SECTIONS { .text 0x10001000 : { *(.text) } /DISCARD/ : { *(.note*) *(.comment) *(.eh_frame*) } }
