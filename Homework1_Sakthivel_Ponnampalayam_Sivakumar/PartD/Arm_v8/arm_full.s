
./dry_arm_O0:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000000a58 <_init>:
_init():
 a58:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 a5c:	910003fd 	mov	x29, sp
 a60:	9400005a 	bl	bc8 <call_weak_fn>
 a64:	a8c17bfd 	ldp	x29, x30, [sp], #16
 a68:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000a70 <.plt>:
 a70:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 a74:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 a78:	f9475a11 	ldr	x17, [x16, #3760]
 a7c:	913ac210 	add	x16, x16, #0xeb0
 a80:	d61f0220 	br	x17
 a84:	d503201f 	nop
 a88:	d503201f 	nop
 a8c:	d503201f 	nop

0000000000000a90 <exit@plt>:
 a90:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 a94:	f9475e11 	ldr	x17, [x16, #3768]
 a98:	913ae210 	add	x16, x16, #0xeb8
 a9c:	d61f0220 	br	x17

0000000000000aa0 <__cxa_finalize@plt>:
 aa0:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 aa4:	f9476211 	ldr	x17, [x16, #3776]
 aa8:	913b0210 	add	x16, x16, #0xec0
 aac:	d61f0220 	br	x17

0000000000000ab0 <fputc@plt>:
 ab0:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 ab4:	f9476611 	ldr	x17, [x16, #3784]
 ab8:	913b2210 	add	x16, x16, #0xec8
 abc:	d61f0220 	br	x17

0000000000000ac0 <atoi@plt>:
 ac0:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 ac4:	f9476a11 	ldr	x17, [x16, #3792]
 ac8:	913b4210 	add	x16, x16, #0xed0
 acc:	d61f0220 	br	x17

0000000000000ad0 <malloc@plt>:
 ad0:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 ad4:	f9476e11 	ldr	x17, [x16, #3800]
 ad8:	913b6210 	add	x16, x16, #0xed8
 adc:	d61f0220 	br	x17

0000000000000ae0 <__libc_start_main@plt>:
 ae0:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 ae4:	f9477211 	ldr	x17, [x16, #3808]
 ae8:	913b8210 	add	x16, x16, #0xee0
 aec:	d61f0220 	br	x17

0000000000000af0 <__stack_chk_fail@plt>:
 af0:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 af4:	f9477611 	ldr	x17, [x16, #3816]
 af8:	913ba210 	add	x16, x16, #0xee8
 afc:	d61f0220 	br	x17

0000000000000b00 <__gmon_start__@plt>:
 b00:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 b04:	f9477a11 	ldr	x17, [x16, #3824]
 b08:	913bc210 	add	x16, x16, #0xef0
 b0c:	d61f0220 	br	x17

0000000000000b10 <abort@plt>:
 b10:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 b14:	f9477e11 	ldr	x17, [x16, #3832]
 b18:	913be210 	add	x16, x16, #0xef8
 b1c:	d61f0220 	br	x17

0000000000000b20 <puts@plt>:
 b20:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 b24:	f9478211 	ldr	x17, [x16, #3840]
 b28:	913c0210 	add	x16, x16, #0xf00
 b2c:	d61f0220 	br	x17

0000000000000b30 <strcmp@plt>:
 b30:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 b34:	f9478611 	ldr	x17, [x16, #3848]
 b38:	913c2210 	add	x16, x16, #0xf08
 b3c:	d61f0220 	br	x17

0000000000000b40 <fwrite@plt>:
 b40:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 b44:	f9478a11 	ldr	x17, [x16, #3856]
 b48:	913c4210 	add	x16, x16, #0xf10
 b4c:	d61f0220 	br	x17

0000000000000b50 <times@plt>:
 b50:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 b54:	f9478e11 	ldr	x17, [x16, #3864]
 b58:	913c6210 	add	x16, x16, #0xf18
 b5c:	d61f0220 	br	x17

0000000000000b60 <printf@plt>:
 b60:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 b64:	f9479211 	ldr	x17, [x16, #3872]
 b68:	913c8210 	add	x16, x16, #0xf20
 b6c:	d61f0220 	br	x17

0000000000000b70 <putchar@plt>:
 b70:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 b74:	f9479611 	ldr	x17, [x16, #3880]
 b78:	913ca210 	add	x16, x16, #0xf28
 b7c:	d61f0220 	br	x17

0000000000000b80 <fprintf@plt>:
 b80:	f0000090 	adrp	x16, 13000 <__FRAME_END__+0xf610>
 b84:	f9479a11 	ldr	x17, [x16, #3888]
 b88:	913cc210 	add	x16, x16, #0xf30
 b8c:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000b90 <_start>:
_start():
     b90:	d280001d 	mov	x29, #0x0                   	// #0
     b94:	d280001e 	mov	x30, #0x0                   	// #0
     b98:	aa0003e5 	mov	x5, x0
     b9c:	f94003e1 	ldr	x1, [sp]
     ba0:	910023e2 	add	x2, sp, #0x8
     ba4:	910003e6 	mov	x6, sp
     ba8:	f0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
     bac:	f947e400 	ldr	x0, [x0, #4040]
     bb0:	f0000083 	adrp	x3, 13000 <__FRAME_END__+0xf610>
     bb4:	f947d463 	ldr	x3, [x3, #4008]
     bb8:	f0000084 	adrp	x4, 13000 <__FRAME_END__+0xf610>
     bbc:	f947a084 	ldr	x4, [x4, #3904]
     bc0:	97ffffc8 	bl	ae0 <__libc_start_main@plt>
     bc4:	97ffffd3 	bl	b10 <abort@plt>

0000000000000bc8 <call_weak_fn>:
call_weak_fn():
     bc8:	f0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
     bcc:	f947cc00 	ldr	x0, [x0, #3992]
     bd0:	b4000040 	cbz	x0, bd8 <call_weak_fn+0x10>
     bd4:	17ffffcb 	b	b00 <__gmon_start__@plt>
     bd8:	d65f03c0 	ret
     bdc:	d503201f 	nop

0000000000000be0 <deregister_tm_clones>:
deregister_tm_clones():
     be0:	900000a0 	adrp	x0, 14000 <__data_start>
     be4:	91004000 	add	x0, x0, #0x10
     be8:	900000a1 	adrp	x1, 14000 <__data_start>
     bec:	91004021 	add	x1, x1, #0x10
     bf0:	eb00003f 	cmp	x1, x0
     bf4:	540000c0 	b.eq	c0c <deregister_tm_clones+0x2c>  // b.none
     bf8:	f0000081 	adrp	x1, 13000 <__FRAME_END__+0xf610>
     bfc:	f947ac21 	ldr	x1, [x1, #3928]
     c00:	b4000061 	cbz	x1, c0c <deregister_tm_clones+0x2c>
     c04:	aa0103f0 	mov	x16, x1
     c08:	d61f0200 	br	x16
     c0c:	d65f03c0 	ret

0000000000000c10 <register_tm_clones>:
register_tm_clones():
     c10:	900000a0 	adrp	x0, 14000 <__data_start>
     c14:	91004000 	add	x0, x0, #0x10
     c18:	900000a1 	adrp	x1, 14000 <__data_start>
     c1c:	91004021 	add	x1, x1, #0x10
     c20:	cb000021 	sub	x1, x1, x0
     c24:	d37ffc22 	lsr	x2, x1, #63
     c28:	8b810c41 	add	x1, x2, x1, asr #3
     c2c:	eb8107ff 	cmp	xzr, x1, asr #1
     c30:	9341fc21 	asr	x1, x1, #1
     c34:	540000c0 	b.eq	c4c <register_tm_clones+0x3c>  // b.none
     c38:	f0000082 	adrp	x2, 13000 <__FRAME_END__+0xf610>
     c3c:	f947fc42 	ldr	x2, [x2, #4088]
     c40:	b4000062 	cbz	x2, c4c <register_tm_clones+0x3c>
     c44:	aa0203f0 	mov	x16, x2
     c48:	d61f0200 	br	x16
     c4c:	d65f03c0 	ret

0000000000000c50 <__do_global_dtors_aux>:
__do_global_dtors_aux():
     c50:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     c54:	910003fd 	mov	x29, sp
     c58:	f9000bf3 	str	x19, [sp, #16]
     c5c:	900000b3 	adrp	x19, 14000 <__data_start>
     c60:	39404260 	ldrb	w0, [x19, #16]
     c64:	35000140 	cbnz	w0, c8c <__do_global_dtors_aux+0x3c>
     c68:	f0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
     c6c:	f947b800 	ldr	x0, [x0, #3952]
     c70:	b4000080 	cbz	x0, c80 <__do_global_dtors_aux+0x30>
     c74:	900000a0 	adrp	x0, 14000 <__data_start>
     c78:	f9400400 	ldr	x0, [x0, #8]
     c7c:	97ffff89 	bl	aa0 <__cxa_finalize@plt>
     c80:	97ffffd8 	bl	be0 <deregister_tm_clones>
     c84:	52800020 	mov	w0, #0x1                   	// #1
     c88:	39004260 	strb	w0, [x19, #16]
     c8c:	f9400bf3 	ldr	x19, [sp, #16]
     c90:	a8c27bfd 	ldp	x29, x30, [sp], #32
     c94:	d65f03c0 	ret

0000000000000c98 <frame_dummy>:
frame_dummy():
     c98:	17ffffde 	b	c10 <register_tm_clones>

0000000000000c9c <Proc_6>:
Proc_6():
     c9c:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
     ca0:	910003fd 	mov	x29, sp
     ca4:	b9001fe0 	str	w0, [sp, #28]
     ca8:	f9000be1 	str	x1, [sp, #16]
     cac:	f9400be0 	ldr	x0, [sp, #16]
     cb0:	b9401fe1 	ldr	w1, [sp, #28]
     cb4:	b9000001 	str	w1, [x0]
     cb8:	b9401fe0 	ldr	w0, [sp, #28]
     cbc:	94000105 	bl	10d0 <Func_3>
     cc0:	7100001f 	cmp	w0, #0x0
     cc4:	54000081 	b.ne	cd4 <Proc_6+0x38>  // b.any
     cc8:	f9400be0 	ldr	x0, [sp, #16]
     ccc:	52800061 	mov	w1, #0x3                   	// #3
     cd0:	b9000001 	str	w1, [x0]
     cd4:	b9401fe0 	ldr	w0, [sp, #28]
     cd8:	7100101f 	cmp	w0, #0x4
     cdc:	54000540 	b.eq	d84 <Proc_6+0xe8>  // b.none
     ce0:	b9401fe0 	ldr	w0, [sp, #28]
     ce4:	7100101f 	cmp	w0, #0x4
     ce8:	54000588 	b.hi	d98 <Proc_6+0xfc>  // b.pmore
     cec:	b9401fe0 	ldr	w0, [sp, #28]
     cf0:	71000c1f 	cmp	w0, #0x3
     cf4:	54000500 	b.eq	d94 <Proc_6+0xf8>  // b.none
     cf8:	b9401fe0 	ldr	w0, [sp, #28]
     cfc:	71000c1f 	cmp	w0, #0x3
     d00:	540004c8 	b.hi	d98 <Proc_6+0xfc>  // b.pmore
     d04:	b9401fe0 	ldr	w0, [sp, #28]
     d08:	7100081f 	cmp	w0, #0x2
     d0c:	54000340 	b.eq	d74 <Proc_6+0xd8>  // b.none
     d10:	b9401fe0 	ldr	w0, [sp, #28]
     d14:	7100081f 	cmp	w0, #0x2
     d18:	54000408 	b.hi	d98 <Proc_6+0xfc>  // b.pmore
     d1c:	b9401fe0 	ldr	w0, [sp, #28]
     d20:	7100001f 	cmp	w0, #0x0
     d24:	540000a0 	b.eq	d38 <Proc_6+0x9c>  // b.none
     d28:	b9401fe0 	ldr	w0, [sp, #28]
     d2c:	7100041f 	cmp	w0, #0x1
     d30:	540000a0 	b.eq	d44 <Proc_6+0xa8>  // b.none
     d34:	14000019 	b	d98 <Proc_6+0xfc>
     d38:	f9400be0 	ldr	x0, [sp, #16]
     d3c:	b900001f 	str	wzr, [x0]
     d40:	14000016 	b	d98 <Proc_6+0xfc>
     d44:	f0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
     d48:	f947e000 	ldr	x0, [x0, #4032]
     d4c:	b9400000 	ldr	w0, [x0]
     d50:	7101901f 	cmp	w0, #0x64
     d54:	5400008d 	b.le	d64 <Proc_6+0xc8>
     d58:	f9400be0 	ldr	x0, [sp, #16]
     d5c:	b900001f 	str	wzr, [x0]
     d60:	1400000e 	b	d98 <Proc_6+0xfc>
     d64:	f9400be0 	ldr	x0, [sp, #16]
     d68:	52800061 	mov	w1, #0x3                   	// #3
     d6c:	b9000001 	str	w1, [x0]
     d70:	1400000a 	b	d98 <Proc_6+0xfc>
     d74:	f9400be0 	ldr	x0, [sp, #16]
     d78:	52800021 	mov	w1, #0x1                   	// #1
     d7c:	b9000001 	str	w1, [x0]
     d80:	14000006 	b	d98 <Proc_6+0xfc>
     d84:	f9400be0 	ldr	x0, [sp, #16]
     d88:	52800041 	mov	w1, #0x2                   	// #2
     d8c:	b9000001 	str	w1, [x0]
     d90:	14000002 	b	d98 <Proc_6+0xfc>
     d94:	d503201f 	nop
     d98:	d503201f 	nop
     d9c:	a8c27bfd 	ldp	x29, x30, [sp], #32
     da0:	d65f03c0 	ret

0000000000000da4 <Proc_7>:
Proc_7():
     da4:	d10083ff 	sub	sp, sp, #0x20
     da8:	b9000fe0 	str	w0, [sp, #12]
     dac:	b9000be1 	str	w1, [sp, #8]
     db0:	f90003e2 	str	x2, [sp]
     db4:	b9400fe0 	ldr	w0, [sp, #12]
     db8:	11000800 	add	w0, w0, #0x2
     dbc:	b9001fe0 	str	w0, [sp, #28]
     dc0:	b9400be1 	ldr	w1, [sp, #8]
     dc4:	b9401fe0 	ldr	w0, [sp, #28]
     dc8:	0b000021 	add	w1, w1, w0
     dcc:	f94003e0 	ldr	x0, [sp]
     dd0:	b9000001 	str	w1, [x0]
     dd4:	d503201f 	nop
     dd8:	910083ff 	add	sp, sp, #0x20
     ddc:	d65f03c0 	ret

0000000000000de0 <Proc_8>:
Proc_8():
     de0:	d100c3ff 	sub	sp, sp, #0x30
     de4:	f9000fe0 	str	x0, [sp, #24]
     de8:	f9000be1 	str	x1, [sp, #16]
     dec:	b9000fe2 	str	w2, [sp, #12]
     df0:	b9000be3 	str	w3, [sp, #8]
     df4:	b9400fe0 	ldr	w0, [sp, #12]
     df8:	11001400 	add	w0, w0, #0x5
     dfc:	b9002fe0 	str	w0, [sp, #44]
     e00:	b9802fe0 	ldrsw	x0, [sp, #44]
     e04:	d37ef400 	lsl	x0, x0, #2
     e08:	f9400fe1 	ldr	x1, [sp, #24]
     e0c:	8b000020 	add	x0, x1, x0
     e10:	b9400be1 	ldr	w1, [sp, #8]
     e14:	b9000001 	str	w1, [x0]
     e18:	b9802fe0 	ldrsw	x0, [sp, #44]
     e1c:	d37ef400 	lsl	x0, x0, #2
     e20:	f9400fe1 	ldr	x1, [sp, #24]
     e24:	8b000021 	add	x1, x1, x0
     e28:	b9802fe0 	ldrsw	x0, [sp, #44]
     e2c:	91000400 	add	x0, x0, #0x1
     e30:	d37ef400 	lsl	x0, x0, #2
     e34:	f9400fe2 	ldr	x2, [sp, #24]
     e38:	8b000040 	add	x0, x2, x0
     e3c:	b9400021 	ldr	w1, [x1]
     e40:	b9000001 	str	w1, [x0]
     e44:	b9802fe0 	ldrsw	x0, [sp, #44]
     e48:	91007800 	add	x0, x0, #0x1e
     e4c:	d37ef400 	lsl	x0, x0, #2
     e50:	f9400fe1 	ldr	x1, [sp, #24]
     e54:	8b000020 	add	x0, x1, x0
     e58:	b9402fe1 	ldr	w1, [sp, #44]
     e5c:	b9000001 	str	w1, [x0]
     e60:	b9402fe0 	ldr	w0, [sp, #44]
     e64:	b9002be0 	str	w0, [sp, #40]
     e68:	14000011 	b	eac <Proc_8+0xcc>
     e6c:	b9802fe1 	ldrsw	x1, [sp, #44]
     e70:	aa0103e0 	mov	x0, x1
     e74:	d37ff800 	lsl	x0, x0, #1
     e78:	8b010000 	add	x0, x0, x1
     e7c:	d37df000 	lsl	x0, x0, #3
     e80:	8b010000 	add	x0, x0, x1
     e84:	d37df000 	lsl	x0, x0, #3
     e88:	aa0003e1 	mov	x1, x0
     e8c:	f9400be0 	ldr	x0, [sp, #16]
     e90:	8b010000 	add	x0, x0, x1
     e94:	b9802be1 	ldrsw	x1, [sp, #40]
     e98:	b9402fe2 	ldr	w2, [sp, #44]
     e9c:	b8217802 	str	w2, [x0, x1, lsl #2]
     ea0:	b9402be0 	ldr	w0, [sp, #40]
     ea4:	11000400 	add	w0, w0, #0x1
     ea8:	b9002be0 	str	w0, [sp, #40]
     eac:	b9402fe0 	ldr	w0, [sp, #44]
     eb0:	11000400 	add	w0, w0, #0x1
     eb4:	b9402be1 	ldr	w1, [sp, #40]
     eb8:	6b00003f 	cmp	w1, w0
     ebc:	54fffd8d 	b.le	e6c <Proc_8+0x8c>
     ec0:	b9802fe1 	ldrsw	x1, [sp, #44]
     ec4:	aa0103e0 	mov	x0, x1
     ec8:	d37ff800 	lsl	x0, x0, #1
     ecc:	8b010000 	add	x0, x0, x1
     ed0:	d37df000 	lsl	x0, x0, #3
     ed4:	8b010000 	add	x0, x0, x1
     ed8:	d37df000 	lsl	x0, x0, #3
     edc:	aa0003e1 	mov	x1, x0
     ee0:	f9400be0 	ldr	x0, [sp, #16]
     ee4:	8b010000 	add	x0, x0, x1
     ee8:	b9402fe1 	ldr	w1, [sp, #44]
     eec:	51000421 	sub	w1, w1, #0x1
     ef0:	93407c21 	sxtw	x1, w1
     ef4:	b8617802 	ldr	w2, [x0, x1, lsl #2]
     ef8:	b9802fe1 	ldrsw	x1, [sp, #44]
     efc:	aa0103e0 	mov	x0, x1
     f00:	d37ff800 	lsl	x0, x0, #1
     f04:	8b010000 	add	x0, x0, x1
     f08:	d37df000 	lsl	x0, x0, #3
     f0c:	8b010000 	add	x0, x0, x1
     f10:	d37df000 	lsl	x0, x0, #3
     f14:	aa0003e1 	mov	x1, x0
     f18:	f9400be0 	ldr	x0, [sp, #16]
     f1c:	8b010000 	add	x0, x0, x1
     f20:	b9402fe1 	ldr	w1, [sp, #44]
     f24:	51000421 	sub	w1, w1, #0x1
     f28:	11000442 	add	w2, w2, #0x1
     f2c:	93407c21 	sxtw	x1, w1
     f30:	b8217802 	str	w2, [x0, x1, lsl #2]
     f34:	b9802fe0 	ldrsw	x0, [sp, #44]
     f38:	d37ef400 	lsl	x0, x0, #2
     f3c:	f9400fe1 	ldr	x1, [sp, #24]
     f40:	8b000022 	add	x2, x1, x0
     f44:	b9802fe1 	ldrsw	x1, [sp, #44]
     f48:	aa0103e0 	mov	x0, x1
     f4c:	d37ff800 	lsl	x0, x0, #1
     f50:	8b010000 	add	x0, x0, x1
     f54:	d37df000 	lsl	x0, x0, #3
     f58:	8b010000 	add	x0, x0, x1
     f5c:	d37df000 	lsl	x0, x0, #3
     f60:	913e8000 	add	x0, x0, #0xfa0
     f64:	f9400be1 	ldr	x1, [sp, #16]
     f68:	8b000020 	add	x0, x1, x0
     f6c:	b9400042 	ldr	w2, [x2]
     f70:	b9802fe1 	ldrsw	x1, [sp, #44]
     f74:	b8217802 	str	w2, [x0, x1, lsl #2]
     f78:	f0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
     f7c:	f947e000 	ldr	x0, [x0, #4032]
     f80:	528000a1 	mov	w1, #0x5                   	// #5
     f84:	b9000001 	str	w1, [x0]
     f88:	d503201f 	nop
     f8c:	9100c3ff 	add	sp, sp, #0x30
     f90:	d65f03c0 	ret

0000000000000f94 <Func_1>:
Func_1():
     f94:	d10083ff 	sub	sp, sp, #0x20
     f98:	39003fe0 	strb	w0, [sp, #15]
     f9c:	39003be1 	strb	w1, [sp, #14]
     fa0:	39403fe0 	ldrb	w0, [sp, #15]
     fa4:	39007be0 	strb	w0, [sp, #30]
     fa8:	39407be0 	ldrb	w0, [sp, #30]
     fac:	39007fe0 	strb	w0, [sp, #31]
     fb0:	39407fe1 	ldrb	w1, [sp, #31]
     fb4:	39403be0 	ldrb	w0, [sp, #14]
     fb8:	6b00003f 	cmp	w1, w0
     fbc:	54000060 	b.eq	fc8 <Func_1+0x34>  // b.none
     fc0:	52800000 	mov	w0, #0x0                   	// #0
     fc4:	14000006 	b	fdc <Func_1+0x48>
     fc8:	f0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
     fcc:	f947f800 	ldr	x0, [x0, #4080]
     fd0:	39407be1 	ldrb	w1, [sp, #30]
     fd4:	39000001 	strb	w1, [x0]
     fd8:	52800020 	mov	w0, #0x1                   	// #1
     fdc:	910083ff 	add	sp, sp, #0x20
     fe0:	d65f03c0 	ret

0000000000000fe4 <Func_2>:
Func_2():
     fe4:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
     fe8:	910003fd 	mov	x29, sp
     fec:	f9000fe0 	str	x0, [sp, #24]
     ff0:	f9000be1 	str	x1, [sp, #16]
     ff4:	52800040 	mov	w0, #0x2                   	// #2
     ff8:	b9002fe0 	str	w0, [sp, #44]
     ffc:	14000014 	b	104c <Func_2+0x68>
    1000:	b9802fe0 	ldrsw	x0, [sp, #44]
    1004:	f9400fe1 	ldr	x1, [sp, #24]
    1008:	8b000020 	add	x0, x1, x0
    100c:	39400002 	ldrb	w2, [x0]
    1010:	b9802fe0 	ldrsw	x0, [sp, #44]
    1014:	91000400 	add	x0, x0, #0x1
    1018:	f9400be1 	ldr	x1, [sp, #16]
    101c:	8b000020 	add	x0, x1, x0
    1020:	39400000 	ldrb	w0, [x0]
    1024:	2a0003e1 	mov	w1, w0
    1028:	2a0203e0 	mov	w0, w2
    102c:	97ffffda 	bl	f94 <Func_1>
    1030:	7100001f 	cmp	w0, #0x0
    1034:	540000c1 	b.ne	104c <Func_2+0x68>  // b.any
    1038:	52800820 	mov	w0, #0x41                  	// #65
    103c:	3900afe0 	strb	w0, [sp, #43]
    1040:	b9402fe0 	ldr	w0, [sp, #44]
    1044:	11000400 	add	w0, w0, #0x1
    1048:	b9002fe0 	str	w0, [sp, #44]
    104c:	b9402fe0 	ldr	w0, [sp, #44]
    1050:	7100081f 	cmp	w0, #0x2
    1054:	54fffd6d 	b.le	1000 <Func_2+0x1c>
    1058:	3940afe0 	ldrb	w0, [sp, #43]
    105c:	7101581f 	cmp	w0, #0x56
    1060:	540000c9 	b.ls	1078 <Func_2+0x94>  // b.plast
    1064:	3940afe0 	ldrb	w0, [sp, #43]
    1068:	7101641f 	cmp	w0, #0x59
    106c:	54000068 	b.hi	1078 <Func_2+0x94>  // b.pmore
    1070:	528000e0 	mov	w0, #0x7                   	// #7
    1074:	b9002fe0 	str	w0, [sp, #44]
    1078:	3940afe0 	ldrb	w0, [sp, #43]
    107c:	7101481f 	cmp	w0, #0x52
    1080:	54000061 	b.ne	108c <Func_2+0xa8>  // b.any
    1084:	52800020 	mov	w0, #0x1                   	// #1
    1088:	14000010 	b	10c8 <Func_2+0xe4>
    108c:	f9400be1 	ldr	x1, [sp, #16]
    1090:	f9400fe0 	ldr	x0, [sp, #24]
    1094:	97fffea7 	bl	b30 <strcmp@plt>
    1098:	7100001f 	cmp	w0, #0x0
    109c:	5400014d 	b.le	10c4 <Func_2+0xe0>
    10a0:	b9402fe0 	ldr	w0, [sp, #44]
    10a4:	11001c00 	add	w0, w0, #0x7
    10a8:	b9002fe0 	str	w0, [sp, #44]
    10ac:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    10b0:	f947e000 	ldr	x0, [x0, #4032]
    10b4:	b9402fe1 	ldr	w1, [sp, #44]
    10b8:	b9000001 	str	w1, [x0]
    10bc:	52800020 	mov	w0, #0x1                   	// #1
    10c0:	14000002 	b	10c8 <Func_2+0xe4>
    10c4:	52800000 	mov	w0, #0x0                   	// #0
    10c8:	a8c37bfd 	ldp	x29, x30, [sp], #48
    10cc:	d65f03c0 	ret

00000000000010d0 <Func_3>:
Func_3():
    10d0:	d10083ff 	sub	sp, sp, #0x20
    10d4:	b9000fe0 	str	w0, [sp, #12]
    10d8:	b9400fe0 	ldr	w0, [sp, #12]
    10dc:	b9001fe0 	str	w0, [sp, #28]
    10e0:	b9401fe0 	ldr	w0, [sp, #28]
    10e4:	7100081f 	cmp	w0, #0x2
    10e8:	54000061 	b.ne	10f4 <Func_3+0x24>  // b.any
    10ec:	52800020 	mov	w0, #0x1                   	// #1
    10f0:	14000002 	b	10f8 <Func_3+0x28>
    10f4:	52800000 	mov	w0, #0x0                   	// #0
    10f8:	910083ff 	add	sp, sp, #0x20
    10fc:	d65f03c0 	ret

0000000000001100 <main>:
main():
    1100:	a9b77bfd 	stp	x29, x30, [sp, #-144]!
    1104:	910003fd 	mov	x29, sp
    1108:	b9001fe0 	str	w0, [sp, #28]
    110c:	f9000be1 	str	x1, [sp, #16]
    1110:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1114:	f947d000 	ldr	x0, [x0, #4000]
    1118:	f9400001 	ldr	x1, [x0]
    111c:	f90047e1 	str	x1, [sp, #136]
    1120:	d2800001 	mov	x1, #0x0                   	// #0
    1124:	b9401fe0 	ldr	w0, [sp, #28]
    1128:	7100081f 	cmp	w0, #0x2
    112c:	5400012d 	b.le	1150 <main+0x50>
    1130:	f9400be0 	ldr	x0, [sp, #16]
    1134:	f9400000 	ldr	x0, [x0]
    1138:	aa0003e1 	mov	x1, x0
    113c:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1140:	91052000 	add	x0, x0, #0x148
    1144:	97fffe87 	bl	b60 <printf@plt>
    1148:	52800020 	mov	w0, #0x1                   	// #1
    114c:	97fffe51 	bl	a90 <exit@plt>
    1150:	b9401fe0 	ldr	w0, [sp, #28]
    1154:	7100081f 	cmp	w0, #0x2
    1158:	540000e1 	b.ne	1174 <main+0x74>  // b.any
    115c:	f9400be0 	ldr	x0, [sp, #16]
    1160:	91002000 	add	x0, x0, #0x8
    1164:	f9400000 	ldr	x0, [x0]
    1168:	97fffe56 	bl	ac0 <atoi@plt>
    116c:	b90047e0 	str	w0, [sp, #68]
    1170:	14000003 	b	117c <main+0x7c>
    1174:	52986a00 	mov	w0, #0xc350                	// #50000
    1178:	b90047e0 	str	w0, [sp, #68]
    117c:	b94047e0 	ldr	w0, [sp, #68]
    1180:	7100001f 	cmp	w0, #0x0
    1184:	5400006c 	b.gt	1190 <main+0x90>
    1188:	52986a00 	mov	w0, #0xc350                	// #50000
    118c:	b90047e0 	str	w0, [sp, #68]
    1190:	d2800700 	mov	x0, #0x38                  	// #56
    1194:	97fffe4f 	bl	ad0 <malloc@plt>
    1198:	aa0003e1 	mov	x1, x0
    119c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    11a0:	f947f000 	ldr	x0, [x0, #4064]
    11a4:	f9000001 	str	x1, [x0]
    11a8:	d2800700 	mov	x0, #0x38                  	// #56
    11ac:	97fffe49 	bl	ad0 <malloc@plt>
    11b0:	aa0003e1 	mov	x1, x0
    11b4:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    11b8:	f947c800 	ldr	x0, [x0, #3984]
    11bc:	f9000001 	str	x1, [x0]
    11c0:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    11c4:	f947c800 	ldr	x0, [x0, #3984]
    11c8:	f9400000 	ldr	x0, [x0]
    11cc:	d0000081 	adrp	x1, 13000 <__FRAME_END__+0xf610>
    11d0:	f947f021 	ldr	x1, [x1, #4064]
    11d4:	f9400021 	ldr	x1, [x1]
    11d8:	f9000001 	str	x1, [x0]
    11dc:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    11e0:	f947c800 	ldr	x0, [x0, #3984]
    11e4:	f9400000 	ldr	x0, [x0]
    11e8:	b900081f 	str	wzr, [x0, #8]
    11ec:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    11f0:	f947c800 	ldr	x0, [x0, #3984]
    11f4:	f9400000 	ldr	x0, [x0]
    11f8:	52800041 	mov	w1, #0x2                   	// #2
    11fc:	b9000c01 	str	w1, [x0, #12]
    1200:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1204:	f947c800 	ldr	x0, [x0, #3984]
    1208:	f9400000 	ldr	x0, [x0]
    120c:	52800501 	mov	w1, #0x28                  	// #40
    1210:	b9001001 	str	w1, [x0, #16]
    1214:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1218:	f947c800 	ldr	x0, [x0, #3984]
    121c:	f9400000 	ldr	x0, [x0]
    1220:	91005002 	add	x2, x0, #0x14
    1224:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1228:	9105a001 	add	x1, x0, #0x168
    122c:	aa0203e0 	mov	x0, x2
    1230:	a9400c22 	ldp	x2, x3, [x1]
    1234:	a9000c02 	stp	x2, x3, [x0]
    1238:	f9400822 	ldr	x2, [x1, #16]
    123c:	f9000802 	str	x2, [x0, #16]
    1240:	f8417021 	ldur	x1, [x1, #23]
    1244:	f8017001 	stur	x1, [x0, #23]
    1248:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    124c:	91062001 	add	x1, x0, #0x188
    1250:	910123e0 	add	x0, sp, #0x48
    1254:	a9400c22 	ldp	x2, x3, [x1]
    1258:	a9000c02 	stp	x2, x3, [x0]
    125c:	f9400822 	ldr	x2, [x1, #16]
    1260:	f9000802 	str	x2, [x0, #16]
    1264:	f8417021 	ldur	x1, [x1, #23]
    1268:	f8017001 	stur	x1, [x0, #23]
    126c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1270:	f947b000 	ldr	x0, [x0, #3936]
    1274:	52800141 	mov	w1, #0xa                   	// #10
    1278:	b9065c01 	str	w1, [x0, #1628]
    127c:	52800140 	mov	w0, #0xa                   	// #10
    1280:	97fffe3c 	bl	b70 <putchar@plt>
    1284:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1288:	9106a001 	add	x1, x0, #0x1a8
    128c:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1290:	9106e000 	add	x0, x0, #0x1b8
    1294:	97fffe33 	bl	b60 <printf@plt>
    1298:	f0000080 	adrp	x0, 14000 <__data_start>
    129c:	91005000 	add	x0, x0, #0x14
    12a0:	b9400000 	ldr	w0, [x0]
    12a4:	7100001f 	cmp	w0, #0x0
    12a8:	540000a0 	b.eq	12bc <main+0x1bc>  // b.none
    12ac:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    12b0:	91078000 	add	x0, x0, #0x1e0
    12b4:	97fffe1b 	bl	b20 <puts@plt>
    12b8:	14000004 	b	12c8 <main+0x1c8>
    12bc:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    12c0:	91084000 	add	x0, x0, #0x210
    12c4:	97fffe17 	bl	b20 <puts@plt>
    12c8:	52800c82 	mov	w2, #0x64                  	// #100
    12cc:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    12d0:	91090001 	add	x1, x0, #0x240
    12d4:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    12d8:	91092000 	add	x0, x0, #0x248
    12dc:	97fffe21 	bl	b60 <printf@plt>
    12e0:	52800140 	mov	w0, #0xa                   	// #10
    12e4:	97fffe23 	bl	b70 <putchar@plt>
    12e8:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    12ec:	f947a800 	ldr	x0, [x0, #3920]
    12f0:	b900001f 	str	wzr, [x0]
    12f4:	140000b3 	b	15c0 <main+0x4c0>
    12f8:	b94047e1 	ldr	w1, [sp, #68]
    12fc:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1300:	91098000 	add	x0, x0, #0x260
    1304:	97fffe17 	bl	b60 <printf@plt>
    1308:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    130c:	f947c000 	ldr	x0, [x0, #3968]
    1310:	97fffe10 	bl	b50 <times@plt>
    1314:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1318:	f947c000 	ldr	x0, [x0, #3968]
    131c:	f9400001 	ldr	x1, [x0]
    1320:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1324:	f947a400 	ldr	x0, [x0, #3912]
    1328:	f9000001 	str	x1, [x0]
    132c:	52800020 	mov	w0, #0x1                   	// #1
    1330:	b90043e0 	str	w0, [sp, #64]
    1334:	14000079 	b	1518 <main+0x418>
    1338:	94000352 	bl	2080 <Proc_5>
    133c:	9400033a 	bl	2024 <Proc_4>
    1340:	52800040 	mov	w0, #0x2                   	// #2
    1344:	b90033e0 	str	w0, [sp, #48]
    1348:	52800060 	mov	w0, #0x3                   	// #3
    134c:	b9003fe0 	str	w0, [sp, #60]
    1350:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1354:	9109e001 	add	x1, x0, #0x278
    1358:	9101a3e0 	add	x0, sp, #0x68
    135c:	a9400c22 	ldp	x2, x3, [x1]
    1360:	a9000c02 	stp	x2, x3, [x0]
    1364:	f9400822 	ldr	x2, [x1, #16]
    1368:	f9000802 	str	x2, [x0, #16]
    136c:	f8417021 	ldur	x1, [x1, #23]
    1370:	f8017001 	stur	x1, [x0, #23]
    1374:	52800020 	mov	w0, #0x1                   	// #1
    1378:	b9003be0 	str	w0, [sp, #56]
    137c:	9101a3e1 	add	x1, sp, #0x68
    1380:	910123e0 	add	x0, sp, #0x48
    1384:	97ffff18 	bl	fe4 <Func_2>
    1388:	7100001f 	cmp	w0, #0x0
    138c:	1a9f17e0 	cset	w0, eq  // eq = none
    1390:	12001c00 	and	w0, w0, #0xff
    1394:	2a0003e1 	mov	w1, w0
    1398:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    139c:	f947e800 	ldr	x0, [x0, #4048]
    13a0:	b9000001 	str	w1, [x0]
    13a4:	14000010 	b	13e4 <main+0x2e4>
    13a8:	b94033e1 	ldr	w1, [sp, #48]
    13ac:	2a0103e0 	mov	w0, w1
    13b0:	531e7400 	lsl	w0, w0, #2
    13b4:	0b010001 	add	w1, w0, w1
    13b8:	b9403fe0 	ldr	w0, [sp, #60]
    13bc:	4b000020 	sub	w0, w1, w0
    13c0:	b90037e0 	str	w0, [sp, #52]
    13c4:	b94033e0 	ldr	w0, [sp, #48]
    13c8:	9100d3e1 	add	x1, sp, #0x34
    13cc:	aa0103e2 	mov	x2, x1
    13d0:	b9403fe1 	ldr	w1, [sp, #60]
    13d4:	97fffe74 	bl	da4 <Proc_7>
    13d8:	b94033e0 	ldr	w0, [sp, #48]
    13dc:	11000400 	add	w0, w0, #0x1
    13e0:	b90033e0 	str	w0, [sp, #48]
    13e4:	b94033e0 	ldr	w0, [sp, #48]
    13e8:	b9403fe1 	ldr	w1, [sp, #60]
    13ec:	6b00003f 	cmp	w1, w0
    13f0:	54fffdcc 	b.gt	13a8 <main+0x2a8>
    13f4:	b94033e0 	ldr	w0, [sp, #48]
    13f8:	b94037e1 	ldr	w1, [sp, #52]
    13fc:	2a0103e3 	mov	w3, w1
    1400:	2a0003e2 	mov	w2, w0
    1404:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1408:	f947b001 	ldr	x1, [x0, #3936]
    140c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1410:	f947f400 	ldr	x0, [x0, #4072]
    1414:	97fffe73 	bl	de0 <Proc_8>
    1418:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    141c:	f947c800 	ldr	x0, [x0, #3984]
    1420:	f9400000 	ldr	x0, [x0]
    1424:	9400027d 	bl	1e18 <Proc_1>
    1428:	52800820 	mov	w0, #0x41                  	// #65
    142c:	3900bfe0 	strb	w0, [sp, #47]
    1430:	1400001e 	b	14a8 <main+0x3a8>
    1434:	52800861 	mov	w1, #0x43                  	// #67
    1438:	3940bfe0 	ldrb	w0, [sp, #47]
    143c:	97fffed6 	bl	f94 <Func_1>
    1440:	2a0003e1 	mov	w1, w0
    1444:	b9403be0 	ldr	w0, [sp, #56]
    1448:	6b00003f 	cmp	w1, w0
    144c:	54000281 	b.ne	149c <main+0x39c>  // b.any
    1450:	9100e3e0 	add	x0, sp, #0x38
    1454:	aa0003e1 	mov	x1, x0
    1458:	52800000 	mov	w0, #0x0                   	// #0
    145c:	97fffe10 	bl	c9c <Proc_6>
    1460:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1464:	910a6001 	add	x1, x0, #0x298
    1468:	9101a3e0 	add	x0, sp, #0x68
    146c:	a9400c22 	ldp	x2, x3, [x1]
    1470:	a9000c02 	stp	x2, x3, [x0]
    1474:	f9400822 	ldr	x2, [x1, #16]
    1478:	f9000802 	str	x2, [x0, #16]
    147c:	f8417021 	ldur	x1, [x1, #23]
    1480:	f8017001 	stur	x1, [x0, #23]
    1484:	b94043e0 	ldr	w0, [sp, #64]
    1488:	b9003fe0 	str	w0, [sp, #60]
    148c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1490:	f947e000 	ldr	x0, [x0, #4032]
    1494:	b94043e1 	ldr	w1, [sp, #64]
    1498:	b9000001 	str	w1, [x0]
    149c:	3940bfe0 	ldrb	w0, [sp, #47]
    14a0:	11000400 	add	w0, w0, #0x1
    14a4:	3900bfe0 	strb	w0, [sp, #47]
    14a8:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    14ac:	f947b400 	ldr	x0, [x0, #3944]
    14b0:	39400000 	ldrb	w0, [x0]
    14b4:	3940bfe1 	ldrb	w1, [sp, #47]
    14b8:	6b00003f 	cmp	w1, w0
    14bc:	54fffbc9 	b.ls	1434 <main+0x334>  // b.plast
    14c0:	b94033e0 	ldr	w0, [sp, #48]
    14c4:	b9403fe1 	ldr	w1, [sp, #60]
    14c8:	1b007c20 	mul	w0, w1, w0
    14cc:	b9003fe0 	str	w0, [sp, #60]
    14d0:	b94037e0 	ldr	w0, [sp, #52]
    14d4:	b9403fe1 	ldr	w1, [sp, #60]
    14d8:	1ac00c20 	sdiv	w0, w1, w0
    14dc:	b90033e0 	str	w0, [sp, #48]
    14e0:	b94037e0 	ldr	w0, [sp, #52]
    14e4:	b9403fe1 	ldr	w1, [sp, #60]
    14e8:	4b000021 	sub	w1, w1, w0
    14ec:	2a0103e0 	mov	w0, w1
    14f0:	531d7000 	lsl	w0, w0, #3
    14f4:	4b010001 	sub	w1, w0, w1
    14f8:	b94033e0 	ldr	w0, [sp, #48]
    14fc:	4b000020 	sub	w0, w1, w0
    1500:	b9003fe0 	str	w0, [sp, #60]
    1504:	9100c3e0 	add	x0, sp, #0x30
    1508:	9400028f 	bl	1f44 <Proc_2>
    150c:	b94043e0 	ldr	w0, [sp, #64]
    1510:	11000400 	add	w0, w0, #0x1
    1514:	b90043e0 	str	w0, [sp, #64]
    1518:	b94043e1 	ldr	w1, [sp, #64]
    151c:	b94047e0 	ldr	w0, [sp, #68]
    1520:	6b00003f 	cmp	w1, w0
    1524:	54fff0ad 	b.le	1338 <main+0x238>
    1528:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    152c:	f947c000 	ldr	x0, [x0, #3968]
    1530:	97fffd88 	bl	b50 <times@plt>
    1534:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1538:	f947c000 	ldr	x0, [x0, #3968]
    153c:	f9400001 	ldr	x1, [x0]
    1540:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1544:	f947dc00 	ldr	x0, [x0, #4024]
    1548:	f9000001 	str	x1, [x0]
    154c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1550:	f947dc00 	ldr	x0, [x0, #4024]
    1554:	f9400001 	ldr	x1, [x0]
    1558:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    155c:	f947a400 	ldr	x0, [x0, #3912]
    1560:	f9400000 	ldr	x0, [x0]
    1564:	cb000021 	sub	x1, x1, x0
    1568:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    156c:	f947ec00 	ldr	x0, [x0, #4056]
    1570:	f9000001 	str	x1, [x0]
    1574:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1578:	f947ec00 	ldr	x0, [x0, #4056]
    157c:	f9400000 	ldr	x0, [x0]
    1580:	f1031c1f 	cmp	x0, #0xc7
    1584:	5400016c 	b.gt	15b0 <main+0x4b0>
    1588:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    158c:	910ae000 	add	x0, x0, #0x2b8
    1590:	97fffd64 	bl	b20 <puts@plt>
    1594:	b94047e1 	ldr	w1, [sp, #68]
    1598:	2a0103e0 	mov	w0, w1
    159c:	531e7400 	lsl	w0, w0, #2
    15a0:	0b010000 	add	w0, w0, w1
    15a4:	531f7800 	lsl	w0, w0, #1
    15a8:	b90047e0 	str	w0, [sp, #68]
    15ac:	14000005 	b	15c0 <main+0x4c0>
    15b0:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    15b4:	f947a800 	ldr	x0, [x0, #3920]
    15b8:	52800021 	mov	w1, #0x1                   	// #1
    15bc:	b9000001 	str	w1, [x0]
    15c0:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    15c4:	f947a800 	ldr	x0, [x0, #3920]
    15c8:	b9400000 	ldr	w0, [x0]
    15cc:	7100001f 	cmp	w0, #0x0
    15d0:	54ffe940 	b.eq	12f8 <main+0x1f8>  // b.none
    15d4:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    15d8:	f947bc00 	ldr	x0, [x0, #3960]
    15dc:	f9400000 	ldr	x0, [x0]
    15e0:	aa0003e3 	mov	x3, x0
    15e4:	d28006a2 	mov	x2, #0x35                  	// #53
    15e8:	d2800021 	mov	x1, #0x1                   	// #1
    15ec:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    15f0:	910b0000 	add	x0, x0, #0x2c0
    15f4:	97fffd53 	bl	b40 <fwrite@plt>
    15f8:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    15fc:	f947bc00 	ldr	x0, [x0, #3960]
    1600:	f9400000 	ldr	x0, [x0]
    1604:	aa0003e1 	mov	x1, x0
    1608:	52800140 	mov	w0, #0xa                   	// #10
    160c:	97fffd29 	bl	ab0 <fputc@plt>
    1610:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1614:	f947bc00 	ldr	x0, [x0, #3960]
    1618:	f9400003 	ldr	x3, [x0]
    161c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1620:	f947e000 	ldr	x0, [x0, #4032]
    1624:	b9400000 	ldr	w0, [x0]
    1628:	2a0003e2 	mov	w2, w0
    162c:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1630:	910be001 	add	x1, x0, #0x2f8
    1634:	aa0303e0 	mov	x0, x3
    1638:	97fffd52 	bl	b80 <fprintf@plt>
    163c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1640:	f947bc00 	ldr	x0, [x0, #3960]
    1644:	f9400003 	ldr	x3, [x0]
    1648:	528000a2 	mov	w2, #0x5                   	// #5
    164c:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1650:	910c6001 	add	x1, x0, #0x318
    1654:	aa0303e0 	mov	x0, x3
    1658:	97fffd4a 	bl	b80 <fprintf@plt>
    165c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1660:	f947bc00 	ldr	x0, [x0, #3960]
    1664:	f9400003 	ldr	x3, [x0]
    1668:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    166c:	f947e800 	ldr	x0, [x0, #4048]
    1670:	b9400000 	ldr	w0, [x0]
    1674:	2a0003e2 	mov	w2, w0
    1678:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    167c:	910ce001 	add	x1, x0, #0x338
    1680:	aa0303e0 	mov	x0, x3
    1684:	97fffd3f 	bl	b80 <fprintf@plt>
    1688:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    168c:	f947bc00 	ldr	x0, [x0, #3960]
    1690:	f9400003 	ldr	x3, [x0]
    1694:	52800022 	mov	w2, #0x1                   	// #1
    1698:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    169c:	910c6001 	add	x1, x0, #0x318
    16a0:	aa0303e0 	mov	x0, x3
    16a4:	97fffd37 	bl	b80 <fprintf@plt>
    16a8:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    16ac:	f947bc00 	ldr	x0, [x0, #3960]
    16b0:	f9400003 	ldr	x3, [x0]
    16b4:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    16b8:	f947f800 	ldr	x0, [x0, #4080]
    16bc:	39400000 	ldrb	w0, [x0]
    16c0:	2a0003e2 	mov	w2, w0
    16c4:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    16c8:	910d6001 	add	x1, x0, #0x358
    16cc:	aa0303e0 	mov	x0, x3
    16d0:	97fffd2c 	bl	b80 <fprintf@plt>
    16d4:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    16d8:	f947bc00 	ldr	x0, [x0, #3960]
    16dc:	f9400003 	ldr	x3, [x0]
    16e0:	52800822 	mov	w2, #0x41                  	// #65
    16e4:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    16e8:	910de001 	add	x1, x0, #0x378
    16ec:	aa0303e0 	mov	x0, x3
    16f0:	97fffd24 	bl	b80 <fprintf@plt>
    16f4:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    16f8:	f947bc00 	ldr	x0, [x0, #3960]
    16fc:	f9400003 	ldr	x3, [x0]
    1700:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1704:	f947b400 	ldr	x0, [x0, #3944]
    1708:	39400000 	ldrb	w0, [x0]
    170c:	2a0003e2 	mov	w2, w0
    1710:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1714:	910e6001 	add	x1, x0, #0x398
    1718:	aa0303e0 	mov	x0, x3
    171c:	97fffd19 	bl	b80 <fprintf@plt>
    1720:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1724:	f947bc00 	ldr	x0, [x0, #3960]
    1728:	f9400003 	ldr	x3, [x0]
    172c:	52800842 	mov	w2, #0x42                  	// #66
    1730:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1734:	910de001 	add	x1, x0, #0x378
    1738:	aa0303e0 	mov	x0, x3
    173c:	97fffd11 	bl	b80 <fprintf@plt>
    1740:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1744:	f947bc00 	ldr	x0, [x0, #3960]
    1748:	f9400003 	ldr	x3, [x0]
    174c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1750:	f947f400 	ldr	x0, [x0, #4072]
    1754:	b9402000 	ldr	w0, [x0, #32]
    1758:	2a0003e2 	mov	w2, w0
    175c:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1760:	910ee001 	add	x1, x0, #0x3b8
    1764:	aa0303e0 	mov	x0, x3
    1768:	97fffd06 	bl	b80 <fprintf@plt>
    176c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1770:	f947bc00 	ldr	x0, [x0, #3960]
    1774:	f9400003 	ldr	x3, [x0]
    1778:	528000e2 	mov	w2, #0x7                   	// #7
    177c:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1780:	910c6001 	add	x1, x0, #0x318
    1784:	aa0303e0 	mov	x0, x3
    1788:	97fffcfe 	bl	b80 <fprintf@plt>
    178c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1790:	f947bc00 	ldr	x0, [x0, #3960]
    1794:	f9400003 	ldr	x3, [x0]
    1798:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    179c:	f947b000 	ldr	x0, [x0, #3936]
    17a0:	b9465c00 	ldr	w0, [x0, #1628]
    17a4:	2a0003e2 	mov	w2, w0
    17a8:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    17ac:	910f6001 	add	x1, x0, #0x3d8
    17b0:	aa0303e0 	mov	x0, x3
    17b4:	97fffcf3 	bl	b80 <fprintf@plt>
    17b8:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    17bc:	f947bc00 	ldr	x0, [x0, #3960]
    17c0:	f9400000 	ldr	x0, [x0]
    17c4:	aa0003e3 	mov	x3, x0
    17c8:	d2800522 	mov	x2, #0x29                  	// #41
    17cc:	d2800021 	mov	x1, #0x1                   	// #1
    17d0:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    17d4:	910fe000 	add	x0, x0, #0x3f8
    17d8:	97fffcda 	bl	b40 <fwrite@plt>
    17dc:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    17e0:	f947bc00 	ldr	x0, [x0, #3960]
    17e4:	f9400000 	ldr	x0, [x0]
    17e8:	aa0003e3 	mov	x3, x0
    17ec:	d2800162 	mov	x2, #0xb                   	// #11
    17f0:	d2800021 	mov	x1, #0x1                   	// #1
    17f4:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    17f8:	9110a000 	add	x0, x0, #0x428
    17fc:	97fffcd1 	bl	b40 <fwrite@plt>
    1800:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1804:	f947bc00 	ldr	x0, [x0, #3960]
    1808:	f9400003 	ldr	x3, [x0]
    180c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1810:	f947c800 	ldr	x0, [x0, #3984]
    1814:	f9400000 	ldr	x0, [x0]
    1818:	f9400000 	ldr	x0, [x0]
    181c:	aa0003e2 	mov	x2, x0
    1820:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1824:	9110e001 	add	x1, x0, #0x438
    1828:	aa0303e0 	mov	x0, x3
    182c:	97fffcd5 	bl	b80 <fprintf@plt>
    1830:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1834:	f947bc00 	ldr	x0, [x0, #3960]
    1838:	f9400000 	ldr	x0, [x0]
    183c:	aa0003e3 	mov	x3, x0
    1840:	d2800602 	mov	x2, #0x30                  	// #48
    1844:	d2800021 	mov	x1, #0x1                   	// #1
    1848:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    184c:	91116000 	add	x0, x0, #0x458
    1850:	97fffcbc 	bl	b40 <fwrite@plt>
    1854:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1858:	f947bc00 	ldr	x0, [x0, #3960]
    185c:	f9400003 	ldr	x3, [x0]
    1860:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1864:	f947c800 	ldr	x0, [x0, #3984]
    1868:	f9400000 	ldr	x0, [x0]
    186c:	b9400800 	ldr	w0, [x0, #8]
    1870:	2a0003e2 	mov	w2, w0
    1874:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1878:	91124001 	add	x1, x0, #0x490
    187c:	aa0303e0 	mov	x0, x3
    1880:	97fffcc0 	bl	b80 <fprintf@plt>
    1884:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1888:	f947bc00 	ldr	x0, [x0, #3960]
    188c:	f9400003 	ldr	x3, [x0]
    1890:	52800002 	mov	w2, #0x0                   	// #0
    1894:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1898:	910c6001 	add	x1, x0, #0x318
    189c:	aa0303e0 	mov	x0, x3
    18a0:	97fffcb8 	bl	b80 <fprintf@plt>
    18a4:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    18a8:	f947bc00 	ldr	x0, [x0, #3960]
    18ac:	f9400003 	ldr	x3, [x0]
    18b0:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    18b4:	f947c800 	ldr	x0, [x0, #3984]
    18b8:	f9400000 	ldr	x0, [x0]
    18bc:	b9400c00 	ldr	w0, [x0, #12]
    18c0:	2a0003e2 	mov	w2, w0
    18c4:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    18c8:	9112c001 	add	x1, x0, #0x4b0
    18cc:	aa0303e0 	mov	x0, x3
    18d0:	97fffcac 	bl	b80 <fprintf@plt>
    18d4:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    18d8:	f947bc00 	ldr	x0, [x0, #3960]
    18dc:	f9400003 	ldr	x3, [x0]
    18e0:	52800042 	mov	w2, #0x2                   	// #2
    18e4:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    18e8:	910c6001 	add	x1, x0, #0x318
    18ec:	aa0303e0 	mov	x0, x3
    18f0:	97fffca4 	bl	b80 <fprintf@plt>
    18f4:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    18f8:	f947bc00 	ldr	x0, [x0, #3960]
    18fc:	f9400003 	ldr	x3, [x0]
    1900:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1904:	f947c800 	ldr	x0, [x0, #3984]
    1908:	f9400000 	ldr	x0, [x0]
    190c:	b9401000 	ldr	w0, [x0, #16]
    1910:	2a0003e2 	mov	w2, w0
    1914:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1918:	91134001 	add	x1, x0, #0x4d0
    191c:	aa0303e0 	mov	x0, x3
    1920:	97fffc98 	bl	b80 <fprintf@plt>
    1924:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1928:	f947bc00 	ldr	x0, [x0, #3960]
    192c:	f9400003 	ldr	x3, [x0]
    1930:	52800222 	mov	w2, #0x11                  	// #17
    1934:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1938:	910c6001 	add	x1, x0, #0x318
    193c:	aa0303e0 	mov	x0, x3
    1940:	97fffc90 	bl	b80 <fprintf@plt>
    1944:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1948:	f947bc00 	ldr	x0, [x0, #3960]
    194c:	f9400003 	ldr	x3, [x0]
    1950:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1954:	f947c800 	ldr	x0, [x0, #3984]
    1958:	f9400000 	ldr	x0, [x0]
    195c:	91005000 	add	x0, x0, #0x14
    1960:	aa0003e2 	mov	x2, x0
    1964:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1968:	9113c001 	add	x1, x0, #0x4f0
    196c:	aa0303e0 	mov	x0, x3
    1970:	97fffc84 	bl	b80 <fprintf@plt>
    1974:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1978:	f947bc00 	ldr	x0, [x0, #3960]
    197c:	f9400000 	ldr	x0, [x0]
    1980:	aa0003e3 	mov	x3, x0
    1984:	d2800682 	mov	x2, #0x34                  	// #52
    1988:	d2800021 	mov	x1, #0x1                   	// #1
    198c:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1990:	91144000 	add	x0, x0, #0x510
    1994:	97fffc6b 	bl	b40 <fwrite@plt>
    1998:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    199c:	f947bc00 	ldr	x0, [x0, #3960]
    19a0:	f9400000 	ldr	x0, [x0]
    19a4:	aa0003e3 	mov	x3, x0
    19a8:	d2800202 	mov	x2, #0x10                  	// #16
    19ac:	d2800021 	mov	x1, #0x1                   	// #1
    19b0:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    19b4:	91152000 	add	x0, x0, #0x548
    19b8:	97fffc62 	bl	b40 <fwrite@plt>
    19bc:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    19c0:	f947bc00 	ldr	x0, [x0, #3960]
    19c4:	f9400003 	ldr	x3, [x0]
    19c8:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    19cc:	f947f000 	ldr	x0, [x0, #4064]
    19d0:	f9400000 	ldr	x0, [x0]
    19d4:	f9400000 	ldr	x0, [x0]
    19d8:	aa0003e2 	mov	x2, x0
    19dc:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    19e0:	9110e001 	add	x1, x0, #0x438
    19e4:	aa0303e0 	mov	x0, x3
    19e8:	97fffc66 	bl	b80 <fprintf@plt>
    19ec:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    19f0:	f947bc00 	ldr	x0, [x0, #3960]
    19f4:	f9400000 	ldr	x0, [x0]
    19f8:	aa0003e3 	mov	x3, x0
    19fc:	d28007e2 	mov	x2, #0x3f                  	// #63
    1a00:	d2800021 	mov	x1, #0x1                   	// #1
    1a04:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1a08:	91158000 	add	x0, x0, #0x560
    1a0c:	97fffc4d 	bl	b40 <fwrite@plt>
    1a10:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1a14:	f947bc00 	ldr	x0, [x0, #3960]
    1a18:	f9400003 	ldr	x3, [x0]
    1a1c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1a20:	f947f000 	ldr	x0, [x0, #4064]
    1a24:	f9400000 	ldr	x0, [x0]
    1a28:	b9400800 	ldr	w0, [x0, #8]
    1a2c:	2a0003e2 	mov	w2, w0
    1a30:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1a34:	91124001 	add	x1, x0, #0x490
    1a38:	aa0303e0 	mov	x0, x3
    1a3c:	97fffc51 	bl	b80 <fprintf@plt>
    1a40:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1a44:	f947bc00 	ldr	x0, [x0, #3960]
    1a48:	f9400003 	ldr	x3, [x0]
    1a4c:	52800002 	mov	w2, #0x0                   	// #0
    1a50:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1a54:	910c6001 	add	x1, x0, #0x318
    1a58:	aa0303e0 	mov	x0, x3
    1a5c:	97fffc49 	bl	b80 <fprintf@plt>
    1a60:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1a64:	f947bc00 	ldr	x0, [x0, #3960]
    1a68:	f9400003 	ldr	x3, [x0]
    1a6c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1a70:	f947f000 	ldr	x0, [x0, #4064]
    1a74:	f9400000 	ldr	x0, [x0]
    1a78:	b9400c00 	ldr	w0, [x0, #12]
    1a7c:	2a0003e2 	mov	w2, w0
    1a80:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1a84:	9112c001 	add	x1, x0, #0x4b0
    1a88:	aa0303e0 	mov	x0, x3
    1a8c:	97fffc3d 	bl	b80 <fprintf@plt>
    1a90:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1a94:	f947bc00 	ldr	x0, [x0, #3960]
    1a98:	f9400003 	ldr	x3, [x0]
    1a9c:	52800022 	mov	w2, #0x1                   	// #1
    1aa0:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1aa4:	910c6001 	add	x1, x0, #0x318
    1aa8:	aa0303e0 	mov	x0, x3
    1aac:	97fffc35 	bl	b80 <fprintf@plt>
    1ab0:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1ab4:	f947bc00 	ldr	x0, [x0, #3960]
    1ab8:	f9400003 	ldr	x3, [x0]
    1abc:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1ac0:	f947f000 	ldr	x0, [x0, #4064]
    1ac4:	f9400000 	ldr	x0, [x0]
    1ac8:	b9401000 	ldr	w0, [x0, #16]
    1acc:	2a0003e2 	mov	w2, w0
    1ad0:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1ad4:	91134001 	add	x1, x0, #0x4d0
    1ad8:	aa0303e0 	mov	x0, x3
    1adc:	97fffc29 	bl	b80 <fprintf@plt>
    1ae0:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1ae4:	f947bc00 	ldr	x0, [x0, #3960]
    1ae8:	f9400003 	ldr	x3, [x0]
    1aec:	52800242 	mov	w2, #0x12                  	// #18
    1af0:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1af4:	910c6001 	add	x1, x0, #0x318
    1af8:	aa0303e0 	mov	x0, x3
    1afc:	97fffc21 	bl	b80 <fprintf@plt>
    1b00:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1b04:	f947bc00 	ldr	x0, [x0, #3960]
    1b08:	f9400003 	ldr	x3, [x0]
    1b0c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1b10:	f947f000 	ldr	x0, [x0, #4064]
    1b14:	f9400000 	ldr	x0, [x0]
    1b18:	91005000 	add	x0, x0, #0x14
    1b1c:	aa0003e2 	mov	x2, x0
    1b20:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1b24:	9113c001 	add	x1, x0, #0x4f0
    1b28:	aa0303e0 	mov	x0, x3
    1b2c:	97fffc15 	bl	b80 <fprintf@plt>
    1b30:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1b34:	f947bc00 	ldr	x0, [x0, #3960]
    1b38:	f9400000 	ldr	x0, [x0]
    1b3c:	aa0003e3 	mov	x3, x0
    1b40:	d2800682 	mov	x2, #0x34                  	// #52
    1b44:	d2800021 	mov	x1, #0x1                   	// #1
    1b48:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1b4c:	91144000 	add	x0, x0, #0x510
    1b50:	97fffbfc 	bl	b40 <fwrite@plt>
    1b54:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1b58:	f947bc00 	ldr	x0, [x0, #3960]
    1b5c:	f9400003 	ldr	x3, [x0]
    1b60:	b94033e0 	ldr	w0, [sp, #48]
    1b64:	2a0003e2 	mov	w2, w0
    1b68:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1b6c:	91168001 	add	x1, x0, #0x5a0
    1b70:	aa0303e0 	mov	x0, x3
    1b74:	97fffc03 	bl	b80 <fprintf@plt>
    1b78:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1b7c:	f947bc00 	ldr	x0, [x0, #3960]
    1b80:	f9400003 	ldr	x3, [x0]
    1b84:	528000a2 	mov	w2, #0x5                   	// #5
    1b88:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1b8c:	910c6001 	add	x1, x0, #0x318
    1b90:	aa0303e0 	mov	x0, x3
    1b94:	97fffbfb 	bl	b80 <fprintf@plt>
    1b98:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1b9c:	f947bc00 	ldr	x0, [x0, #3960]
    1ba0:	f9400003 	ldr	x3, [x0]
    1ba4:	b9403fe2 	ldr	w2, [sp, #60]
    1ba8:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1bac:	91170001 	add	x1, x0, #0x5c0
    1bb0:	aa0303e0 	mov	x0, x3
    1bb4:	97fffbf3 	bl	b80 <fprintf@plt>
    1bb8:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1bbc:	f947bc00 	ldr	x0, [x0, #3960]
    1bc0:	f9400003 	ldr	x3, [x0]
    1bc4:	528001a2 	mov	w2, #0xd                   	// #13
    1bc8:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1bcc:	910c6001 	add	x1, x0, #0x318
    1bd0:	aa0303e0 	mov	x0, x3
    1bd4:	97fffbeb 	bl	b80 <fprintf@plt>
    1bd8:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1bdc:	f947bc00 	ldr	x0, [x0, #3960]
    1be0:	f9400003 	ldr	x3, [x0]
    1be4:	b94037e0 	ldr	w0, [sp, #52]
    1be8:	2a0003e2 	mov	w2, w0
    1bec:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1bf0:	91178001 	add	x1, x0, #0x5e0
    1bf4:	aa0303e0 	mov	x0, x3
    1bf8:	97fffbe2 	bl	b80 <fprintf@plt>
    1bfc:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1c00:	f947bc00 	ldr	x0, [x0, #3960]
    1c04:	f9400003 	ldr	x3, [x0]
    1c08:	528000e2 	mov	w2, #0x7                   	// #7
    1c0c:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1c10:	910c6001 	add	x1, x0, #0x318
    1c14:	aa0303e0 	mov	x0, x3
    1c18:	97fffbda 	bl	b80 <fprintf@plt>
    1c1c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1c20:	f947bc00 	ldr	x0, [x0, #3960]
    1c24:	f9400003 	ldr	x3, [x0]
    1c28:	b9403be0 	ldr	w0, [sp, #56]
    1c2c:	2a0003e2 	mov	w2, w0
    1c30:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1c34:	91180001 	add	x1, x0, #0x600
    1c38:	aa0303e0 	mov	x0, x3
    1c3c:	97fffbd1 	bl	b80 <fprintf@plt>
    1c40:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1c44:	f947bc00 	ldr	x0, [x0, #3960]
    1c48:	f9400003 	ldr	x3, [x0]
    1c4c:	52800022 	mov	w2, #0x1                   	// #1
    1c50:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1c54:	910c6001 	add	x1, x0, #0x318
    1c58:	aa0303e0 	mov	x0, x3
    1c5c:	97fffbc9 	bl	b80 <fprintf@plt>
    1c60:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1c64:	f947bc00 	ldr	x0, [x0, #3960]
    1c68:	f9400003 	ldr	x3, [x0]
    1c6c:	910123e0 	add	x0, sp, #0x48
    1c70:	aa0003e2 	mov	x2, x0
    1c74:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1c78:	91188001 	add	x1, x0, #0x620
    1c7c:	aa0303e0 	mov	x0, x3
    1c80:	97fffbc0 	bl	b80 <fprintf@plt>
    1c84:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1c88:	f947bc00 	ldr	x0, [x0, #3960]
    1c8c:	f9400000 	ldr	x0, [x0]
    1c90:	aa0003e3 	mov	x3, x0
    1c94:	d2800682 	mov	x2, #0x34                  	// #52
    1c98:	d2800021 	mov	x1, #0x1                   	// #1
    1c9c:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1ca0:	91190000 	add	x0, x0, #0x640
    1ca4:	97fffba7 	bl	b40 <fwrite@plt>
    1ca8:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1cac:	f947bc00 	ldr	x0, [x0, #3960]
    1cb0:	f9400003 	ldr	x3, [x0]
    1cb4:	9101a3e0 	add	x0, sp, #0x68
    1cb8:	aa0003e2 	mov	x2, x0
    1cbc:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1cc0:	9119e001 	add	x1, x0, #0x678
    1cc4:	aa0303e0 	mov	x0, x3
    1cc8:	97fffbae 	bl	b80 <fprintf@plt>
    1ccc:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1cd0:	f947bc00 	ldr	x0, [x0, #3960]
    1cd4:	f9400000 	ldr	x0, [x0]
    1cd8:	aa0003e3 	mov	x3, x0
    1cdc:	d2800682 	mov	x2, #0x34                  	// #52
    1ce0:	d2800021 	mov	x1, #0x1                   	// #1
    1ce4:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1ce8:	911a6000 	add	x0, x0, #0x698
    1cec:	97fffb95 	bl	b40 <fwrite@plt>
    1cf0:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1cf4:	f947bc00 	ldr	x0, [x0, #3960]
    1cf8:	f9400000 	ldr	x0, [x0]
    1cfc:	aa0003e1 	mov	x1, x0
    1d00:	52800140 	mov	w0, #0xa                   	// #10
    1d04:	97fffb6b 	bl	ab0 <fputc@plt>
    1d08:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1d0c:	f947ec00 	ldr	x0, [x0, #4056]
    1d10:	f9400000 	ldr	x0, [x0]
    1d14:	9e220000 	scvtf	s0, x0
    1d18:	1e22c000 	fcvt	d0, s0
    1d1c:	d2d09000 	mov	x0, #0x848000000000        	// #145685290680320
    1d20:	f2e825c0 	movk	x0, #0x412e, lsl #48
    1d24:	9e670001 	fmov	d1, x0
    1d28:	1e610801 	fmul	d1, d0, d1
    1d2c:	bd4047e0 	ldr	s0, [sp, #68]
    1d30:	5e21d800 	scvtf	s0, s0
    1d34:	52a85900 	mov	w0, #0x42c80000            	// #1120403456
    1d38:	1e270002 	fmov	s2, w0
    1d3c:	1e220800 	fmul	s0, s0, s2
    1d40:	1e22c000 	fcvt	d0, s0
    1d44:	1e601820 	fdiv	d0, d1, d0
    1d48:	1e624000 	fcvt	s0, d0
    1d4c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1d50:	f947c400 	ldr	x0, [x0, #3976]
    1d54:	bd000000 	str	s0, [x0]
    1d58:	bd4047e0 	ldr	s0, [sp, #68]
    1d5c:	5e21d800 	scvtf	s0, s0
    1d60:	52a85900 	mov	w0, #0x42c80000            	// #1120403456
    1d64:	1e270001 	fmov	s1, w0
    1d68:	1e210801 	fmul	s1, s0, s1
    1d6c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1d70:	f947ec00 	ldr	x0, [x0, #4056]
    1d74:	f9400000 	ldr	x0, [x0]
    1d78:	9e220000 	scvtf	s0, x0
    1d7c:	1e201820 	fdiv	s0, s1, s0
    1d80:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1d84:	f947d800 	ldr	x0, [x0, #4016]
    1d88:	bd000000 	str	s0, [x0]
    1d8c:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1d90:	911b4000 	add	x0, x0, #0x6d0
    1d94:	97fffb73 	bl	b60 <printf@plt>
    1d98:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1d9c:	f947c400 	ldr	x0, [x0, #3976]
    1da0:	bd400000 	ldr	s0, [x0]
    1da4:	1e22c000 	fcvt	d0, s0
    1da8:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1dac:	911c0000 	add	x0, x0, #0x700
    1db0:	97fffb6c 	bl	b60 <printf@plt>
    1db4:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1db8:	911c4000 	add	x0, x0, #0x710
    1dbc:	97fffb69 	bl	b60 <printf@plt>
    1dc0:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1dc4:	f947d800 	ldr	x0, [x0, #4016]
    1dc8:	bd400000 	ldr	s0, [x0]
    1dcc:	1e22c000 	fcvt	d0, s0
    1dd0:	d0000000 	adrp	x0, 3000 <Proc_5+0xf80>
    1dd4:	911d0000 	add	x0, x0, #0x740
    1dd8:	97fffb62 	bl	b60 <printf@plt>
    1ddc:	52800140 	mov	w0, #0xa                   	// #10
    1de0:	97fffb64 	bl	b70 <putchar@plt>
    1de4:	52800000 	mov	w0, #0x0                   	// #0
    1de8:	2a0003e1 	mov	w1, w0
    1dec:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1df0:	f947d000 	ldr	x0, [x0, #4000]
    1df4:	f94047e2 	ldr	x2, [sp, #136]
    1df8:	f9400003 	ldr	x3, [x0]
    1dfc:	eb030042 	subs	x2, x2, x3
    1e00:	d2800003 	mov	x3, #0x0                   	// #0
    1e04:	54000040 	b.eq	1e0c <main+0xd0c>  // b.none
    1e08:	97fffb3a 	bl	af0 <__stack_chk_fail@plt>
    1e0c:	2a0103e0 	mov	w0, w1
    1e10:	a8c97bfd 	ldp	x29, x30, [sp], #144
    1e14:	d65f03c0 	ret

0000000000001e18 <Proc_1>:
Proc_1():
    1e18:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    1e1c:	910003fd 	mov	x29, sp
    1e20:	f9000fe0 	str	x0, [sp, #24]
    1e24:	f9400fe0 	ldr	x0, [sp, #24]
    1e28:	f9400000 	ldr	x0, [x0]
    1e2c:	f90017e0 	str	x0, [sp, #40]
    1e30:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1e34:	f947c800 	ldr	x0, [x0, #3984]
    1e38:	f9400001 	ldr	x1, [x0]
    1e3c:	f9400fe0 	ldr	x0, [sp, #24]
    1e40:	f9400000 	ldr	x0, [x0]
    1e44:	a9400c22 	ldp	x2, x3, [x1]
    1e48:	a9000c02 	stp	x2, x3, [x0]
    1e4c:	a9410c22 	ldp	x2, x3, [x1, #16]
    1e50:	a9010c02 	stp	x2, x3, [x0, #16]
    1e54:	a9420c22 	ldp	x2, x3, [x1, #32]
    1e58:	a9020c02 	stp	x2, x3, [x0, #32]
    1e5c:	f9401821 	ldr	x1, [x1, #48]
    1e60:	f9001801 	str	x1, [x0, #48]
    1e64:	f9400fe0 	ldr	x0, [sp, #24]
    1e68:	528000a1 	mov	w1, #0x5                   	// #5
    1e6c:	b9001001 	str	w1, [x0, #16]
    1e70:	f9400fe0 	ldr	x0, [sp, #24]
    1e74:	b9401001 	ldr	w1, [x0, #16]
    1e78:	f94017e0 	ldr	x0, [sp, #40]
    1e7c:	b9001001 	str	w1, [x0, #16]
    1e80:	f9400fe0 	ldr	x0, [sp, #24]
    1e84:	f9400001 	ldr	x1, [x0]
    1e88:	f94017e0 	ldr	x0, [sp, #40]
    1e8c:	f9000001 	str	x1, [x0]
    1e90:	f94017e0 	ldr	x0, [sp, #40]
    1e94:	94000049 	bl	1fb8 <Proc_3>
    1e98:	f94017e0 	ldr	x0, [sp, #40]
    1e9c:	b9400800 	ldr	w0, [x0, #8]
    1ea0:	7100001f 	cmp	w0, #0x0
    1ea4:	54000341 	b.ne	1f0c <Proc_1+0xf4>  // b.any
    1ea8:	f94017e0 	ldr	x0, [sp, #40]
    1eac:	528000c1 	mov	w1, #0x6                   	// #6
    1eb0:	b9001001 	str	w1, [x0, #16]
    1eb4:	f9400fe0 	ldr	x0, [sp, #24]
    1eb8:	b9400c02 	ldr	w2, [x0, #12]
    1ebc:	f94017e0 	ldr	x0, [sp, #40]
    1ec0:	91003000 	add	x0, x0, #0xc
    1ec4:	aa0003e1 	mov	x1, x0
    1ec8:	2a0203e0 	mov	w0, w2
    1ecc:	97fffb74 	bl	c9c <Proc_6>
    1ed0:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1ed4:	f947c800 	ldr	x0, [x0, #3984]
    1ed8:	f9400000 	ldr	x0, [x0]
    1edc:	f9400001 	ldr	x1, [x0]
    1ee0:	f94017e0 	ldr	x0, [sp, #40]
    1ee4:	f9000001 	str	x1, [x0]
    1ee8:	f94017e0 	ldr	x0, [sp, #40]
    1eec:	b9401003 	ldr	w3, [x0, #16]
    1ef0:	f94017e0 	ldr	x0, [sp, #40]
    1ef4:	91004000 	add	x0, x0, #0x10
    1ef8:	aa0003e2 	mov	x2, x0
    1efc:	52800141 	mov	w1, #0xa                   	// #10
    1f00:	2a0303e0 	mov	w0, w3
    1f04:	97fffba8 	bl	da4 <Proc_7>
    1f08:	1400000c 	b	1f38 <Proc_1+0x120>
    1f0c:	f9400fe0 	ldr	x0, [sp, #24]
    1f10:	f9400001 	ldr	x1, [x0]
    1f14:	f9400fe0 	ldr	x0, [sp, #24]
    1f18:	a9400c22 	ldp	x2, x3, [x1]
    1f1c:	a9000c02 	stp	x2, x3, [x0]
    1f20:	a9410c22 	ldp	x2, x3, [x1, #16]
    1f24:	a9010c02 	stp	x2, x3, [x0, #16]
    1f28:	a9420c22 	ldp	x2, x3, [x1, #32]
    1f2c:	a9020c02 	stp	x2, x3, [x0, #32]
    1f30:	f9401821 	ldr	x1, [x1, #48]
    1f34:	f9001801 	str	x1, [x0, #48]
    1f38:	d503201f 	nop
    1f3c:	a8c37bfd 	ldp	x29, x30, [sp], #48
    1f40:	d65f03c0 	ret

0000000000001f44 <Proc_2>:
Proc_2():
    1f44:	d10083ff 	sub	sp, sp, #0x20
    1f48:	f90007e0 	str	x0, [sp, #8]
    1f4c:	f94007e0 	ldr	x0, [sp, #8]
    1f50:	b9400000 	ldr	w0, [x0]
    1f54:	11002800 	add	w0, w0, #0xa
    1f58:	b9001be0 	str	w0, [sp, #24]
    1f5c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1f60:	f947f800 	ldr	x0, [x0, #4080]
    1f64:	39400000 	ldrb	w0, [x0]
    1f68:	7101041f 	cmp	w0, #0x41
    1f6c:	54000181 	b.ne	1f9c <Proc_2+0x58>  // b.any
    1f70:	b9401be0 	ldr	w0, [sp, #24]
    1f74:	51000400 	sub	w0, w0, #0x1
    1f78:	b9001be0 	str	w0, [sp, #24]
    1f7c:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1f80:	f947e000 	ldr	x0, [x0, #4032]
    1f84:	b9400000 	ldr	w0, [x0]
    1f88:	b9401be1 	ldr	w1, [sp, #24]
    1f8c:	4b000021 	sub	w1, w1, w0
    1f90:	f94007e0 	ldr	x0, [sp, #8]
    1f94:	b9000001 	str	w1, [x0]
    1f98:	b9001fff 	str	wzr, [sp, #28]
    1f9c:	b9401fe0 	ldr	w0, [sp, #28]
    1fa0:	7100001f 	cmp	w0, #0x0
    1fa4:	54fffdc1 	b.ne	1f5c <Proc_2+0x18>  // b.any
    1fa8:	d503201f 	nop
    1fac:	d503201f 	nop
    1fb0:	910083ff 	add	sp, sp, #0x20
    1fb4:	d65f03c0 	ret

0000000000001fb8 <Proc_3>:
Proc_3():
    1fb8:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    1fbc:	910003fd 	mov	x29, sp
    1fc0:	f9000fe0 	str	x0, [sp, #24]
    1fc4:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1fc8:	f947c800 	ldr	x0, [x0, #3984]
    1fcc:	f9400000 	ldr	x0, [x0]
    1fd0:	f100001f 	cmp	x0, #0x0
    1fd4:	540000e0 	b.eq	1ff0 <Proc_3+0x38>  // b.none
    1fd8:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1fdc:	f947c800 	ldr	x0, [x0, #3984]
    1fe0:	f9400000 	ldr	x0, [x0]
    1fe4:	f9400001 	ldr	x1, [x0]
    1fe8:	f9400fe0 	ldr	x0, [sp, #24]
    1fec:	f9000001 	str	x1, [x0]
    1ff0:	d0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    1ff4:	f947e000 	ldr	x0, [x0, #4032]
    1ff8:	b9400001 	ldr	w1, [x0]
    1ffc:	10088020 	adr	x0, 13000 <__FRAME_END__+0xf610>
    2000:	f947c800 	ldr	x0, [x0, #3984]
    2004:	f9400000 	ldr	x0, [x0]
    2008:	91004000 	add	x0, x0, #0x10
    200c:	aa0003e2 	mov	x2, x0
    2010:	52800140 	mov	w0, #0xa                   	// #10
    2014:	97fffb64 	bl	da4 <Proc_7>
    2018:	d503201f 	nop
    201c:	a8c27bfd 	ldp	x29, x30, [sp], #32
    2020:	d65f03c0 	ret

0000000000002024 <Proc_4>:
Proc_4():
    2024:	d10043ff 	sub	sp, sp, #0x10
    2028:	b0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    202c:	f947f800 	ldr	x0, [x0, #4080]
    2030:	39400000 	ldrb	w0, [x0]
    2034:	7101041f 	cmp	w0, #0x41
    2038:	1a9f17e0 	cset	w0, eq  // eq = none
    203c:	12001c00 	and	w0, w0, #0xff
    2040:	b9000fe0 	str	w0, [sp, #12]
    2044:	b0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    2048:	f947e800 	ldr	x0, [x0, #4048]
    204c:	b9400001 	ldr	w1, [x0]
    2050:	b9400fe0 	ldr	w0, [sp, #12]
    2054:	2a000021 	orr	w1, w1, w0
    2058:	b0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    205c:	f947e800 	ldr	x0, [x0, #4048]
    2060:	b9000001 	str	w1, [x0]
    2064:	b0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    2068:	f947b400 	ldr	x0, [x0, #3944]
    206c:	52800841 	mov	w1, #0x42                  	// #66
    2070:	39000001 	strb	w1, [x0]
    2074:	d503201f 	nop
    2078:	910043ff 	add	sp, sp, #0x10
    207c:	d65f03c0 	ret

0000000000002080 <Proc_5>:
Proc_5():
    2080:	b0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    2084:	f947f800 	ldr	x0, [x0, #4080]
    2088:	52800821 	mov	w1, #0x41                  	// #65
    208c:	39000001 	strb	w1, [x0]
    2090:	b0000080 	adrp	x0, 13000 <__FRAME_END__+0xf610>
    2094:	f947e800 	ldr	x0, [x0, #4048]
    2098:	b900001f 	str	wzr, [x0]
    209c:	d503201f 	nop
    20a0:	d65f03c0 	ret
    20a4:	d503201f 	nop
    20a8:	14000400 	b	30a8 <__libc_csu_init>
    20ac:	d503201f 	nop
    20b0:	f9400000 	ldr	x0, [x0]
    20b4:	17ffffd5 	b	2008 <Proc_3+0x50>
	...

00000000000030a8 <__libc_csu_init>:
__libc_csu_init():
    30a8:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    30ac:	910003fd 	mov	x29, sp
    30b0:	a90153f3 	stp	x19, x20, [sp, #16]
    30b4:	90000094 	adrp	x20, 13000 <__FRAME_END__+0xf610>
    30b8:	91326294 	add	x20, x20, #0xc98
    30bc:	a9025bf5 	stp	x21, x22, [sp, #32]
    30c0:	90000095 	adrp	x21, 13000 <__FRAME_END__+0xf610>
    30c4:	913242b5 	add	x21, x21, #0xc90
    30c8:	cb150294 	sub	x20, x20, x21
    30cc:	2a0003f6 	mov	w22, w0
    30d0:	a90363f7 	stp	x23, x24, [sp, #48]
    30d4:	aa0103f7 	mov	x23, x1
    30d8:	aa0203f8 	mov	x24, x2
    30dc:	97fff65f 	bl	a58 <_init>
    30e0:	eb940fff 	cmp	xzr, x20, asr #3
    30e4:	54000160 	b.eq	3110 <__libc_csu_init+0x68>  // b.none
    30e8:	9343fe94 	asr	x20, x20, #3
    30ec:	d2800013 	mov	x19, #0x0                   	// #0
    30f0:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
    30f4:	aa1803e2 	mov	x2, x24
    30f8:	91000673 	add	x19, x19, #0x1
    30fc:	aa1703e1 	mov	x1, x23
    3100:	2a1603e0 	mov	w0, w22
    3104:	d63f0060 	blr	x3
    3108:	eb13029f 	cmp	x20, x19
    310c:	54ffff21 	b.ne	30f0 <__libc_csu_init+0x48>  // b.any
    3110:	a94153f3 	ldp	x19, x20, [sp, #16]
    3114:	a9425bf5 	ldp	x21, x22, [sp, #32]
    3118:	a94363f7 	ldp	x23, x24, [sp, #48]
    311c:	a8c47bfd 	ldp	x29, x30, [sp], #64
    3120:	d65f03c0 	ret
    3124:	d503201f 	nop

0000000000003128 <__libc_csu_fini>:
__libc_csu_fini():
    3128:	d65f03c0 	ret

Disassembly of section .fini:

000000000000312c <_fini>:
_fini():
    312c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    3130:	910003fd 	mov	x29, sp
    3134:	a8c17bfd 	ldp	x29, x30, [sp], #16
    3138:	d65f03c0 	ret
