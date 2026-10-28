SECTIONS { .text 0x19001000 : { *(.text) } /DISCARD/ : { *(.note*) *(.comment) *(.eh_frame*) } }
