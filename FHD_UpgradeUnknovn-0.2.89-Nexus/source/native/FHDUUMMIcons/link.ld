SECTIONS { .text 0x12001000 : { *(.text) } /DISCARD/ : { *(.note*) *(.comment) *(.eh_frame*) } }
