SECTIONS { .text 0x13001000 : { *(.text) } /DISCARD/ : { *(.note*) *(.comment) *(.eh_frame*) } }
