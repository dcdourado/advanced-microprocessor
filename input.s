        .text
        .globl  _start
_start:
        .align  4
        la      t0, var1
        la      t1,var2
        la      t3,var4
        lb      t4,0(t0)
        lh      t5,0(t1)
        add     t6,t5,t4
        sw      t6,0(t3)
        sub     t6,t5,t4
        sw      t6,0(t3)
        nop
        .data
var1:           .byte   0xff,0xfe,0x0,0x0
var2:           .half   0xffff,0xeeee
var3:           .word   0x12345678
        .bss
var4:           .word   0x0
        .end 