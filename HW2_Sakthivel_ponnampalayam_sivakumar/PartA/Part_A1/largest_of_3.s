largest:
        addi    sp,sp,-48
        sw      ra,44(sp)
        sw      s0,40(sp)
        addi    s0,sp,48
        sw      a0,-36(s0)
        sw      a1,-40(s0)
        sw      a2,-44(s0)
        lw      a4,-36(s0)
        lw      a5,-40(s0)
        bne     a4,a5,.L2
        lw      a4,-40(s0)
        lw      a5,-44(s0)
        bne     a4,a5,.L2
        sw      zero,-20(s0)
        sw      zero,-24(s0)
        j       .L3
.L4:
        lw      a4,-20(s0)
        lw      a5,-36(s0)
        add     a5,a4,a5
        sw      a5,-20(s0)
        lw      a5,-24(s0)
        addi    a5,a5,1
        sw      a5,-24(s0)
.L3:
        lw      a4,-24(s0)
        lw      a5,-36(s0)
        blt     a4,a5,.L4
        lw      a5,-20(s0)
        j       .L5
.L2:
        lw      a4,-36(s0)
        lw      a5,-40(s0)
        blt     a4,a5,.L6
        lw      a4,-36(s0)
        lw      a5,-44(s0)
        blt     a4,a5,.L6
        lw      a4,-36(s0)
        lw      a5,-40(s0)
        beq     a4,a5,.L7
        lw      a4,-36(s0)
        lw      a5,-44(s0)
        bne     a4,a5,.L8
.L7:
        li      a5,0
        j       .L5
.L8:
        lw      a5,-36(s0)
        j       .L5
.L6:
        lw      a4,-40(s0)
        lw      a5,-36(s0)
        blt     a4,a5,.L9
        lw      a4,-40(s0)
        lw      a5,-44(s0)
        blt     a4,a5,.L9
        lw      a4,-40(s0)
        lw      a5,-36(s0)
        beq     a4,a5,.L10
        lw      a4,-40(s0)
        lw      a5,-44(s0)
        bne     a4,a5,.L11
.L10:
        li      a5,0
        j       .L5
.L11:
        lw      a5,-40(s0)
        j       .L5
.L9:
        lw      a4,-44(s0)
        lw      a5,-36(s0)
        blt     a4,a5,.L12
        lw      a4,-44(s0)
        lw      a5,-40(s0)
        blt     a4,a5,.L12
        lw      a4,-44(s0)
        lw      a5,-36(s0)
        beq     a4,a5,.L13
        lw      a4,-44(s0)
        lw      a5,-40(s0)
        bne     a4,a5,.L14
.L13:
        li      a5,0
        j       .L5
.L14:
        lw      a5,-44(s0)
        j       .L5
.L12:
        li      a5,0
.L5:
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
        li      a5,7
        sw      a5,-20(s0)
        li      a5,8
        sw      a5,-24(s0)
        li      a5,9
        sw      a5,-28(s0)
        lw      a2,-28(s0)
        lw      a1,-24(s0)
        lw      a0,-20(s0)
        call    largest
        mv      a5,a0
        mv      a0,a5
        lw      ra,28(sp)
        lw      s0,24(sp)
        addi    sp,sp,32
        jr      ra