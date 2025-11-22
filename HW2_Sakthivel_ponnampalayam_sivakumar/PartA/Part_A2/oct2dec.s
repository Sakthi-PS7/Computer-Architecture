div8:
        addi    sp,sp,-48
        sw      ra,44(sp)
        sw      s0,40(sp)
        addi    s0,sp,48
        sw      a0,-36(s0)
        sw      zero,-20(s0)
        j       .L2
.L3:
        lw      a5,-36(s0)
        addi    a5,a5,-8
        sw      a5,-36(s0)
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
.L2:
        lw      a4,-36(s0)
        li      a5,7
        bgt     a4,a5,.L3
        lw      a5,-20(s0)
        mv      a0,a5
        lw      ra,44(sp)
        lw      s0,40(sp)
        addi    sp,sp,48
        jr      ra
mod8:
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        addi    s0,sp,32
        sw      a0,-20(s0)
        j       .L6
.L7:
        lw      a5,-20(s0)
        addi    a5,a5,-8
        sw      a5,-20(s0)
.L6:
        lw      a4,-20(s0)
        li      a5,7
        bgt     a4,a5,.L7
        lw      a5,-20(s0)
        mv      a0,a5
        lw      ra,28(sp)
        lw      s0,24(sp)
        addi    sp,sp,32
        jr      ra
mul_add:
        addi    sp,sp,-48
        sw      ra,44(sp)
        sw      s0,40(sp)
        addi    s0,sp,48
        sw      a0,-36(s0)
        sw      a1,-40(s0)
        sw      zero,-20(s0)
        sw      zero,-24(s0)
        j       .L10
.L11:
        lw      a4,-20(s0)
        lw      a5,-36(s0)
        add     a5,a4,a5
        sw      a5,-20(s0)
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
.L10:
        lw      a4,-24(s0)
        lw      a5,-40(s0)
        blt     a4,a5,.L11
        lw      a5,-20(s0)
        mv      a0,a5
        lw      ra,44(sp)
        lw      s0,40(sp)
        addi    sp,sp,48
        jr      ra
oct2dec:
        addi    sp,sp,-48
        sw      ra,44(sp)
        sw      s0,40(sp)
        addi    s0,sp,48
        sw      a0,-36(s0)
        sw      a1,-40(s0)
        lw      a5,-36(s0)
        bne     a5,zero,.L14
        li      a5,0
        j       .L15
.L14:
        lw      a0,-36(s0)
        call    mod8
        sw      a0,-20(s0)
        lw      a0,-36(s0)
        call    div8
        sw      a0,-24(s0)
        lw      a1,-40(s0)
        lw      a0,-20(s0)
        call    mul_add
        sw      a0,-28(s0)
        li      a1,8
        lw      a0,-40(s0)
        call    mul_add
        sw      a0,-32(s0)
        lw      a1,-32(s0)
        lw      a0,-24(s0)
        call    oct2dec
        mv      a4,a0
        lw      a5,-28(s0)
        add     a5,a4,a5
.L15:
        mv      a0,a5
        lw      ra,44(sp)
        lw      s0,40(sp)
        addi    sp,sp,48
        jr      ra
main:
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        addi    s0,sp,32
        li      a5,12
        sw      a5,-20(s0)
        li      a1,1
        lw      a0,-20(s0)
        mv      s2, a0 # input
        call    oct2dec
        mv      s3, a0 # store output
        mv      a5,a0
        mv      a0,a5
        lw      ra,28(sp)
        lw      s0,24(sp)
        addi    sp,sp,32
        jr      ra