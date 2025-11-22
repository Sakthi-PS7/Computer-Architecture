
./dry_arm_O3:     file format elf64-littleaarch64


Disassembly of section .init:

0000000000000a70 <_init>:
_init():
 a70:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
 a74:	910003fd 	mov	x29, sp
 a78:	940002ed 	bl	162c <call_weak_fn>
 a7c:	a8c17bfd 	ldp	x29, x30, [sp], #16
 a80:	d65f03c0 	ret

Disassembly of section .plt:

0000000000000a90 <.plt>:
 a90:	a9bf7bf0 	stp	x16, x30, [sp, #-16]!
 a94:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 a98:	f9475a11 	ldr	x17, [x16, #3760]
 a9c:	913ac210 	add	x16, x16, #0xeb0
 aa0:	d61f0220 	br	x17
 aa4:	d503201f 	nop
 aa8:	d503201f 	nop
 aac:	d503201f 	nop

0000000000000ab0 <exit@plt>:
 ab0:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 ab4:	f9475e11 	ldr	x17, [x16, #3768]
 ab8:	913ae210 	add	x16, x16, #0xeb8
 abc:	d61f0220 	br	x17

0000000000000ac0 <__cxa_finalize@plt>:
 ac0:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 ac4:	f9476211 	ldr	x17, [x16, #3776]
 ac8:	913b0210 	add	x16, x16, #0xec0
 acc:	d61f0220 	br	x17

0000000000000ad0 <fputc@plt>:
 ad0:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 ad4:	f9476611 	ldr	x17, [x16, #3784]
 ad8:	913b2210 	add	x16, x16, #0xec8
 adc:	d61f0220 	br	x17

0000000000000ae0 <malloc@plt>:
 ae0:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 ae4:	f9476a11 	ldr	x17, [x16, #3792]
 ae8:	913b4210 	add	x16, x16, #0xed0
 aec:	d61f0220 	br	x17

0000000000000af0 <__libc_start_main@plt>:
 af0:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 af4:	f9476e11 	ldr	x17, [x16, #3800]
 af8:	913b6210 	add	x16, x16, #0xed8
 afc:	d61f0220 	br	x17

0000000000000b00 <__printf_chk@plt>:
 b00:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 b04:	f9477211 	ldr	x17, [x16, #3808]
 b08:	913b8210 	add	x16, x16, #0xee0
 b0c:	d61f0220 	br	x17

0000000000000b10 <__stack_chk_fail@plt>:
 b10:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 b14:	f9477611 	ldr	x17, [x16, #3816]
 b18:	913ba210 	add	x16, x16, #0xee8
 b1c:	d61f0220 	br	x17

0000000000000b20 <__gmon_start__@plt>:
 b20:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 b24:	f9477a11 	ldr	x17, [x16, #3824]
 b28:	913bc210 	add	x16, x16, #0xef0
 b2c:	d61f0220 	br	x17

0000000000000b30 <abort@plt>:
 b30:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 b34:	f9477e11 	ldr	x17, [x16, #3832]
 b38:	913be210 	add	x16, x16, #0xef8
 b3c:	d61f0220 	br	x17

0000000000000b40 <puts@plt>:
 b40:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 b44:	f9478211 	ldr	x17, [x16, #3840]
 b48:	913c0210 	add	x16, x16, #0xf00
 b4c:	d61f0220 	br	x17

0000000000000b50 <__fprintf_chk@plt>:
 b50:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 b54:	f9478611 	ldr	x17, [x16, #3848]
 b58:	913c2210 	add	x16, x16, #0xf08
 b5c:	d61f0220 	br	x17

0000000000000b60 <strcmp@plt>:
 b60:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 b64:	f9478a11 	ldr	x17, [x16, #3856]
 b68:	913c4210 	add	x16, x16, #0xf10
 b6c:	d61f0220 	br	x17

0000000000000b70 <strtol@plt>:
 b70:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 b74:	f9478e11 	ldr	x17, [x16, #3864]
 b78:	913c6210 	add	x16, x16, #0xf18
 b7c:	d61f0220 	br	x17

0000000000000b80 <fwrite@plt>:
 b80:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 b84:	f9479211 	ldr	x17, [x16, #3872]
 b88:	913c8210 	add	x16, x16, #0xf20
 b8c:	d61f0220 	br	x17

0000000000000b90 <times@plt>:
 b90:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 b94:	f9479611 	ldr	x17, [x16, #3880]
 b98:	913ca210 	add	x16, x16, #0xf28
 b9c:	d61f0220 	br	x17

0000000000000ba0 <putchar@plt>:
 ba0:	d0000090 	adrp	x16, 12000 <__FRAME_END__+0xfc88>
 ba4:	f9479a11 	ldr	x17, [x16, #3888]
 ba8:	913cc210 	add	x16, x16, #0xf30
 bac:	d61f0220 	br	x17

Disassembly of section .text:

0000000000000bb0 <main>:
main():
     bb0:	a9b17bfd 	stp	x29, x30, [sp, #-240]!
     bb4:	7100081f 	cmp	w0, #0x2
     bb8:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     bbc:	910003fd 	mov	x29, sp
     bc0:	f947d002 	ldr	x2, [x0, #4000]
     bc4:	aa0103e0 	mov	x0, x1
     bc8:	a90153f3 	stp	x19, x20, [sp, #16]
     bcc:	f9400041 	ldr	x1, [x2]
     bd0:	f90077e1 	str	x1, [sp, #232]
     bd4:	d2800001 	mov	x1, #0x0                   	// #0
     bd8:	a9025bf5 	stp	x21, x22, [sp, #32]
     bdc:	a90363f7 	stp	x23, x24, [sp, #48]
     be0:	a9046bf9 	stp	x25, x26, [sp, #64]
     be4:	a90573fb 	stp	x27, x28, [sp, #80]
     be8:	54004f8c 	b.gt	15d8 <main+0xa28>
     bec:	54004e40 	b.eq	15b4 <main+0xa04>  // b.none
     bf0:	52986a00 	mov	w0, #0xc350                	// #50000
     bf4:	b9009fe0 	str	w0, [sp, #156]
     bf8:	d2800700 	mov	x0, #0x38                  	// #56
     bfc:	97ffffb9 	bl	ae0 <malloc@plt>
     c00:	d0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
     c04:	aa0003f3 	mov	x19, x0
     c08:	d2800700 	mov	x0, #0x38                  	// #56
     c0c:	f947f021 	ldr	x1, [x1, #4064]
     c10:	f9000033 	str	x19, [x1]
     c14:	97ffffb3 	bl	ae0 <malloc@plt>
     c18:	d0000001 	adrp	x1, 2000 <_IO_stdin_used+0x550>
     c1c:	91005004 	add	x4, x0, #0x14
     c20:	b0000003 	adrp	x3, 1000 <main+0x450>
     c24:	912b6063 	add	x3, x3, #0xad8
     c28:	fd406020 	ldr	d0, [x1, #192]
     c2c:	aa0003e1 	mov	x1, x0
     c30:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     c34:	d0000002 	adrp	x2, 2000 <_IO_stdin_used+0x550>
     c38:	91018042 	add	x2, x2, #0x60
     c3c:	52800507 	mov	w7, #0x28                  	// #40
     c40:	f947c806 	ldr	x6, [x0, #3984]
     c44:	b9001027 	str	w7, [x1, #16]
     c48:	f9400867 	ldr	x7, [x3, #16]
     c4c:	f8024027 	stur	x7, [x1, #36]
     c50:	f9400847 	ldr	x7, [x2, #16]
     c54:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     c58:	f90000c1 	str	x1, [x6]
     c5c:	f9005fe7 	str	x7, [sp, #184]
     c60:	a9402468 	ldp	x8, x9, [x3]
     c64:	f9000033 	str	x19, [x1]
     c68:	a9401c46 	ldp	x6, x7, [x2]
     c6c:	fd000420 	str	d0, [x1, #8]
     c70:	f947b005 	ldr	x5, [x0, #3936]
     c74:	a9002488 	stp	x8, x9, [x4]
     c78:	52800140 	mov	w0, #0xa                   	// #10
     c7c:	f8417061 	ldur	x1, [x3, #23]
     c80:	f8017081 	stur	x1, [x4, #23]
     c84:	f8417042 	ldur	x2, [x2, #23]
     c88:	a90a9fe6 	stp	x6, x7, [sp, #168]
     c8c:	f80bf3e2 	stur	x2, [sp, #191]
     c90:	b9065ca0 	str	w0, [x5, #1628]
     c94:	97ffffc3 	bl	ba0 <putchar@plt>
     c98:	52800020 	mov	w0, #0x1                   	// #1
     c9c:	b0000002 	adrp	x2, 1000 <main+0x450>
     ca0:	b0000001 	adrp	x1, 1000 <main+0x450>
     ca4:	912be042 	add	x2, x2, #0xaf8
     ca8:	912c2021 	add	x1, x1, #0xb08
     cac:	97ffff95 	bl	b00 <__printf_chk@plt>
     cb0:	f0000080 	adrp	x0, 13000 <__data_start>
     cb4:	b9401400 	ldr	w0, [x0, #20]
     cb8:	350042a0 	cbnz	w0, 150c <main+0x95c>
     cbc:	b0000000 	adrp	x0, 1000 <main+0x450>
     cc0:	912d8000 	add	x0, x0, #0xb60
     cc4:	97ffff9f 	bl	b40 <puts@plt>
     cc8:	b0000002 	adrp	x2, 1000 <main+0x450>
     ccc:	b0000001 	adrp	x1, 1000 <main+0x450>
     cd0:	912e4042 	add	x2, x2, #0xb90
     cd4:	912e6021 	add	x1, x1, #0xb98
     cd8:	52800c83 	mov	w3, #0x64                  	// #100
     cdc:	52800020 	mov	w0, #0x1                   	// #1
     ce0:	97ffff88 	bl	b00 <__printf_chk@plt>
     ce4:	9102a3f8 	add	x24, sp, #0xa8
     ce8:	52800140 	mov	w0, #0xa                   	// #10
     cec:	97ffffad 	bl	ba0 <putchar@plt>
     cf0:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     cf4:	d0000001 	adrp	x1, 2000 <_IO_stdin_used+0x550>
     cf8:	910323f7 	add	x23, sp, #0xc8
     cfc:	910293fc 	add	x28, sp, #0xa4
     d00:	f947a800 	ldr	x0, [x0, #3920]
     d04:	aa1803f9 	mov	x25, x24
     d08:	91020036 	add	x22, x1, #0x80
     d0c:	d000009a 	adrp	x26, 12000 <__FRAME_END__+0xfc88>
     d10:	910283e1 	add	x1, sp, #0xa0
     d14:	d000009b 	adrp	x27, 12000 <__FRAME_END__+0xfc88>
     d18:	b900001f 	str	wzr, [x0]
     d1c:	f9004be1 	str	x1, [sp, #144]
     d20:	b9409ff4 	ldr	w20, [sp, #156]
     d24:	b0000000 	adrp	x0, 1000 <main+0x450>
     d28:	912ec001 	add	x1, x0, #0xbb0
     d2c:	52800020 	mov	w0, #0x1                   	// #1
     d30:	2a1403e2 	mov	w2, w20
     d34:	97ffff73 	bl	b00 <__printf_chk@plt>
     d38:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     d3c:	f947c013 	ldr	x19, [x0, #3968]
     d40:	11000680 	add	w0, w20, #0x1
     d44:	b90063e0 	str	w0, [sp, #96]
     d48:	52800034 	mov	w20, #0x1                   	// #1
     d4c:	aa1303e0 	mov	x0, x19
     d50:	97ffff90 	bl	b90 <times@plt>
     d54:	d0000000 	adrp	x0, 2000 <_IO_stdin_used+0x550>
     d58:	91028000 	add	x0, x0, #0xa0
     d5c:	d0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
     d60:	a9400c02 	ldp	x2, x3, [x0]
     d64:	a9070fe2 	stp	x2, x3, [sp, #112]
     d68:	f947a421 	ldr	x1, [x1, #3912]
     d6c:	d0000082 	adrp	x2, 12000 <__FRAME_END__+0xfc88>
     d70:	f947f842 	ldr	x2, [x2, #4080]
     d74:	f90037e2 	str	x2, [sp, #104]
     d78:	f9400262 	ldr	x2, [x19]
     d7c:	f9000022 	str	x2, [x1]
     d80:	f9400801 	ldr	x1, [x0, #16]
     d84:	f8417000 	ldur	x0, [x0, #23]
     d88:	a90803e1 	stp	x1, x0, [sp, #128]
     d8c:	d503201f 	nop
     d90:	52800824 	mov	w4, #0x41                  	// #65
     d94:	f94043e0 	ldr	x0, [sp, #128]
     d98:	f9000ae0 	str	x0, [x23, #16]
     d9c:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     da0:	52800022 	mov	w2, #0x1                   	// #1
     da4:	f947b753 	ldr	x19, [x26, #3944]
     da8:	b900a7e2 	str	w2, [sp, #164]
     dac:	f947e815 	ldr	x21, [x0, #4048]
     db0:	52800843 	mov	w3, #0x42                  	// #66
     db4:	f94037e0 	ldr	x0, [sp, #104]
     db8:	aa1703e1 	mov	x1, x23
     dbc:	b90002a2 	str	w2, [x21]
     dc0:	f94047e2 	ldr	x2, [sp, #136]
     dc4:	39000004 	strb	w4, [x0]
     dc8:	a94717e4 	ldp	x4, x5, [sp, #112]
     dcc:	aa1903e0 	mov	x0, x25
     dd0:	a90016e4 	stp	x4, x5, [x23]
     dd4:	39000263 	strb	w3, [x19]
     dd8:	f80172e2 	stur	x2, [x23, #23]
     ddc:	94000287 	bl	17f8 <Func_2>
     de0:	7100001f 	cmp	w0, #0x0
     de4:	f9404be2 	ldr	x2, [sp, #144]
     de8:	1a9f17e0 	cset	w0, eq  // eq = none
     dec:	528000e1 	mov	w1, #0x7                   	// #7
     df0:	b90002a0 	str	w0, [x21]
     df4:	52800040 	mov	w0, #0x2                   	// #2
     df8:	b900a3e1 	str	w1, [sp, #160]
     dfc:	52800061 	mov	w1, #0x3                   	// #3
     e00:	94000256 	bl	1758 <Proc_7>
     e04:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     e08:	b940a3e3 	ldr	w3, [sp, #160]
     e0c:	52800062 	mov	w2, #0x3                   	// #3
     e10:	f947b001 	ldr	x1, [x0, #3936]
     e14:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     e18:	f947f400 	ldr	x0, [x0, #4072]
     e1c:	94000253 	bl	1768 <Proc_8>
     e20:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     e24:	f947c800 	ldr	x0, [x0, #3984]
     e28:	f9400000 	ldr	x0, [x0]
     e2c:	94000289 	bl	1850 <Proc_1>
     e30:	39400260 	ldrb	w0, [x19]
     e34:	7101001f 	cmp	w0, #0x40
     e38:	54003989 	b.ls	1568 <main+0x9b8>  // b.plast
     e3c:	52800838 	mov	w24, #0x41                  	// #65
     e40:	52800075 	mov	w21, #0x3                   	// #3
     e44:	d503201f 	nop
     e48:	52800861 	mov	w1, #0x43                  	// #67
     e4c:	2a1803e0 	mov	w0, w24
     e50:	9400025e 	bl	17c8 <Func_1>
     e54:	b940a7e1 	ldr	w1, [sp, #164]
     e58:	6b01001f 	cmp	w0, w1
     e5c:	54003600 	b.eq	151c <main+0x96c>  // b.none
     e60:	39400261 	ldrb	w1, [x19]
     e64:	11000700 	add	w0, w24, #0x1
     e68:	12001c18 	and	w24, w0, #0xff
     e6c:	6b20003f 	cmp	w1, w0, uxtb
     e70:	54fffec2 	b.cs	e48 <main+0x298>  // b.hs, b.nlast
     e74:	0b1506a5 	add	w5, w21, w21, lsl #1
     e78:	b940a3e6 	ldr	w6, [sp, #160]
     e7c:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     e80:	f947f800 	ldr	x0, [x0, #4080]
     e84:	1ac60cb5 	sdiv	w21, w5, w6
     e88:	39400000 	ldrb	w0, [x0]
     e8c:	2a1503f3 	mov	w19, w21
     e90:	7101041f 	cmp	w0, #0x41
     e94:	540000a1 	b.ne	ea8 <main+0x2f8>  // b.any
     e98:	f947e360 	ldr	x0, [x27, #4032]
     e9c:	110026b3 	add	w19, w21, #0x9
     ea0:	b9400000 	ldr	w0, [x0]
     ea4:	4b000273 	sub	w19, w19, w0
     ea8:	b94063e0 	ldr	w0, [sp, #96]
     eac:	11000694 	add	w20, w20, #0x1
     eb0:	6b14001f 	cmp	w0, w20
     eb4:	54fff6e1 	b.ne	d90 <main+0x1e0>  // b.any
     eb8:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     ebc:	2a0603f8 	mov	w24, w6
     ec0:	b90063e5 	str	w5, [sp, #96]
     ec4:	f947c014 	ldr	x20, [x0, #3968]
     ec8:	aa1403e0 	mov	x0, x20
     ecc:	97ffff31 	bl	b90 <times@plt>
     ed0:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     ed4:	f947a402 	ldr	x2, [x0, #3912]
     ed8:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     edc:	f947dc03 	ldr	x3, [x0, #4024]
     ee0:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     ee4:	f9400042 	ldr	x2, [x2]
     ee8:	f947ec01 	ldr	x1, [x0, #4056]
     eec:	f9400280 	ldr	x0, [x20]
     ef0:	f9000060 	str	x0, [x3]
     ef4:	cb020000 	sub	x0, x0, x2
     ef8:	f9000020 	str	x0, [x1]
     efc:	f1031c1f 	cmp	x0, #0xc7
     f00:	5400338d 	b.le	1570 <main+0x9c0>
     f04:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     f08:	b94063e5 	ldr	w5, [sp, #96]
     f0c:	2a1803e6 	mov	w6, w24
     f10:	aa1903f8 	mov	x24, x25
     f14:	f947a800 	ldr	x0, [x0, #3920]
     f18:	2a1503f9 	mov	w25, w21
     f1c:	2a1303f5 	mov	w21, w19
     f20:	52800021 	mov	w1, #0x1                   	// #1
     f24:	b9000001 	str	w1, [x0]
     f28:	d0000093 	adrp	x19, 12000 <__FRAME_END__+0xfc88>
     f2c:	d28006a2 	mov	x2, #0x35                  	// #53
     f30:	d2800021 	mov	x1, #0x1                   	// #1
     f34:	b0000000 	adrp	x0, 1000 <main+0x450>
     f38:	f947be73 	ldr	x19, [x19, #3960]
     f3c:	912f4000 	add	x0, x0, #0xbd0
     f40:	b90083e6 	str	w6, [sp, #128]
     f44:	b0000014 	adrp	x20, 1000 <main+0x450>
     f48:	b9008be5 	str	w5, [sp, #136]
     f4c:	9130a294 	add	x20, x20, #0xc28
     f50:	f9400263 	ldr	x3, [x19]
     f54:	b0000016 	adrp	x22, 1000 <main+0x450>
     f58:	913222d6 	add	x22, x22, #0xc88
     f5c:	b000001c 	adrp	x28, 1000 <main+0x450>
     f60:	9135239c 	add	x28, x28, #0xd48
     f64:	97ffff07 	bl	b80 <fwrite@plt>
     f68:	f9400261 	ldr	x1, [x19]
     f6c:	52800140 	mov	w0, #0xa                   	// #10
     f70:	97fffed8 	bl	ad0 <fputc@plt>
     f74:	f947e363 	ldr	x3, [x27, #4032]
     f78:	52800021 	mov	w1, #0x1                   	// #1
     f7c:	f9400260 	ldr	x0, [x19]
     f80:	b0000002 	adrp	x2, 1000 <main+0x450>
     f84:	b9400063 	ldr	w3, [x3]
     f88:	91302042 	add	x2, x2, #0xc08
     f8c:	b000001b 	adrp	x27, 1000 <main+0x450>
     f90:	9136837b 	add	x27, x27, #0xda0
     f94:	97fffeef 	bl	b50 <__fprintf_chk@plt>
     f98:	f9400260 	ldr	x0, [x19]
     f9c:	aa1403e2 	mov	x2, x20
     fa0:	528000a3 	mov	w3, #0x5                   	// #5
     fa4:	52800021 	mov	w1, #0x1                   	// #1
     fa8:	97fffeea 	bl	b50 <__fprintf_chk@plt>
     fac:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     fb0:	52800021 	mov	w1, #0x1                   	// #1
     fb4:	b0000002 	adrp	x2, 1000 <main+0x450>
     fb8:	91312042 	add	x2, x2, #0xc48
     fbc:	f947e803 	ldr	x3, [x0, #4048]
     fc0:	f9400260 	ldr	x0, [x19]
     fc4:	b9400063 	ldr	w3, [x3]
     fc8:	97fffee2 	bl	b50 <__fprintf_chk@plt>
     fcc:	f9400260 	ldr	x0, [x19]
     fd0:	aa1403e2 	mov	x2, x20
     fd4:	52800023 	mov	w3, #0x1                   	// #1
     fd8:	2a0303e1 	mov	w1, w3
     fdc:	97fffedd 	bl	b50 <__fprintf_chk@plt>
     fe0:	d0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
     fe4:	52800021 	mov	w1, #0x1                   	// #1
     fe8:	b0000002 	adrp	x2, 1000 <main+0x450>
     fec:	9131a042 	add	x2, x2, #0xc68
     ff0:	f947f803 	ldr	x3, [x0, #4080]
     ff4:	f9400260 	ldr	x0, [x19]
     ff8:	39400063 	ldrb	w3, [x3]
     ffc:	97fffed5 	bl	b50 <__fprintf_chk@plt>
    1000:	f9400260 	ldr	x0, [x19]
    1004:	aa1603e2 	mov	x2, x22
    1008:	52800823 	mov	w3, #0x41                  	// #65
    100c:	52800021 	mov	w1, #0x1                   	// #1
    1010:	97fffed0 	bl	b50 <__fprintf_chk@plt>
    1014:	f947b743 	ldr	x3, [x26, #3944]
    1018:	52800021 	mov	w1, #0x1                   	// #1
    101c:	f9400260 	ldr	x0, [x19]
    1020:	90000002 	adrp	x2, 1000 <main+0x450>
    1024:	39400063 	ldrb	w3, [x3]
    1028:	9132a042 	add	x2, x2, #0xca8
    102c:	9000001a 	adrp	x26, 1000 <main+0x450>
    1030:	9137035a 	add	x26, x26, #0xdc0
    1034:	97fffec7 	bl	b50 <__fprintf_chk@plt>
    1038:	f9400260 	ldr	x0, [x19]
    103c:	aa1603e2 	mov	x2, x22
    1040:	52800843 	mov	w3, #0x42                  	// #66
    1044:	52800021 	mov	w1, #0x1                   	// #1
    1048:	97fffec2 	bl	b50 <__fprintf_chk@plt>
    104c:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    1050:	52800021 	mov	w1, #0x1                   	// #1
    1054:	90000002 	adrp	x2, 1000 <main+0x450>
    1058:	91332042 	add	x2, x2, #0xcc8
    105c:	f947f403 	ldr	x3, [x0, #4072]
    1060:	f9400260 	ldr	x0, [x19]
    1064:	b9402063 	ldr	w3, [x3, #32]
    1068:	97fffeba 	bl	b50 <__fprintf_chk@plt>
    106c:	f9400260 	ldr	x0, [x19]
    1070:	aa1403e2 	mov	x2, x20
    1074:	528000e3 	mov	w3, #0x7                   	// #7
    1078:	52800021 	mov	w1, #0x1                   	// #1
    107c:	97fffeb5 	bl	b50 <__fprintf_chk@plt>
    1080:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    1084:	52800021 	mov	w1, #0x1                   	// #1
    1088:	90000002 	adrp	x2, 1000 <main+0x450>
    108c:	9133a042 	add	x2, x2, #0xce8
    1090:	f947b003 	ldr	x3, [x0, #3936]
    1094:	f9400260 	ldr	x0, [x19]
    1098:	b9465c63 	ldr	w3, [x3, #1628]
    109c:	97fffead 	bl	b50 <__fprintf_chk@plt>
    10a0:	f9400263 	ldr	x3, [x19]
    10a4:	d2800522 	mov	x2, #0x29                  	// #41
    10a8:	d2800021 	mov	x1, #0x1                   	// #1
    10ac:	90000000 	adrp	x0, 1000 <main+0x450>
    10b0:	91342000 	add	x0, x0, #0xd08
    10b4:	97fffeb3 	bl	b80 <fwrite@plt>
    10b8:	f9400263 	ldr	x3, [x19]
    10bc:	d2800162 	mov	x2, #0xb                   	// #11
    10c0:	d2800021 	mov	x1, #0x1                   	// #1
    10c4:	90000000 	adrp	x0, 1000 <main+0x450>
    10c8:	9134e000 	add	x0, x0, #0xd38
    10cc:	97fffead 	bl	b80 <fwrite@plt>
    10d0:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    10d4:	aa1c03e2 	mov	x2, x28
    10d8:	52800021 	mov	w1, #0x1                   	// #1
    10dc:	f947c816 	ldr	x22, [x0, #3984]
    10e0:	f9400260 	ldr	x0, [x19]
    10e4:	f94002c3 	ldr	x3, [x22]
    10e8:	f9400063 	ldr	x3, [x3]
    10ec:	97fffe99 	bl	b50 <__fprintf_chk@plt>
    10f0:	f9400263 	ldr	x3, [x19]
    10f4:	d2800602 	mov	x2, #0x30                  	// #48
    10f8:	d2800021 	mov	x1, #0x1                   	// #1
    10fc:	90000000 	adrp	x0, 1000 <main+0x450>
    1100:	9135a000 	add	x0, x0, #0xd68
    1104:	97fffe9f 	bl	b80 <fwrite@plt>
    1108:	f94002c1 	ldr	x1, [x22]
    110c:	aa1b03e2 	mov	x2, x27
    1110:	f9400260 	ldr	x0, [x19]
    1114:	b9400823 	ldr	w3, [x1, #8]
    1118:	52800021 	mov	w1, #0x1                   	// #1
    111c:	97fffe8d 	bl	b50 <__fprintf_chk@plt>
    1120:	f9400260 	ldr	x0, [x19]
    1124:	aa1403e2 	mov	x2, x20
    1128:	52800003 	mov	w3, #0x0                   	// #0
    112c:	52800021 	mov	w1, #0x1                   	// #1
    1130:	97fffe88 	bl	b50 <__fprintf_chk@plt>
    1134:	f94002c1 	ldr	x1, [x22]
    1138:	aa1a03e2 	mov	x2, x26
    113c:	f9400260 	ldr	x0, [x19]
    1140:	b9400c23 	ldr	w3, [x1, #12]
    1144:	52800021 	mov	w1, #0x1                   	// #1
    1148:	97fffe82 	bl	b50 <__fprintf_chk@plt>
    114c:	f9400260 	ldr	x0, [x19]
    1150:	aa1403e2 	mov	x2, x20
    1154:	52800043 	mov	w3, #0x2                   	// #2
    1158:	52800021 	mov	w1, #0x1                   	// #1
    115c:	97fffe7d 	bl	b50 <__fprintf_chk@plt>
    1160:	f94002c1 	ldr	x1, [x22]
    1164:	90000000 	adrp	x0, 1000 <main+0x450>
    1168:	91378008 	add	x8, x0, #0xde0
    116c:	f9003be8 	str	x8, [sp, #112]
    1170:	f9400260 	ldr	x0, [x19]
    1174:	aa0803e2 	mov	x2, x8
    1178:	b9401023 	ldr	w3, [x1, #16]
    117c:	52800021 	mov	w1, #0x1                   	// #1
    1180:	97fffe74 	bl	b50 <__fprintf_chk@plt>
    1184:	f9400260 	ldr	x0, [x19]
    1188:	aa1403e2 	mov	x2, x20
    118c:	52800223 	mov	w3, #0x11                  	// #17
    1190:	52800021 	mov	w1, #0x1                   	// #1
    1194:	97fffe6f 	bl	b50 <__fprintf_chk@plt>
    1198:	f9400260 	ldr	x0, [x19]
    119c:	90000001 	adrp	x1, 1000 <main+0x450>
    11a0:	91380027 	add	x7, x1, #0xe00
    11a4:	52800021 	mov	w1, #0x1                   	// #1
    11a8:	f94002c3 	ldr	x3, [x22]
    11ac:	aa0703e2 	mov	x2, x7
    11b0:	f90037e7 	str	x7, [sp, #104]
    11b4:	91005063 	add	x3, x3, #0x14
    11b8:	97fffe66 	bl	b50 <__fprintf_chk@plt>
    11bc:	f9400263 	ldr	x3, [x19]
    11c0:	90000000 	adrp	x0, 1000 <main+0x450>
    11c4:	91388004 	add	x4, x0, #0xe20
    11c8:	d2800682 	mov	x2, #0x34                  	// #52
    11cc:	aa0403e0 	mov	x0, x4
    11d0:	d2800021 	mov	x1, #0x1                   	// #1
    11d4:	f90033e4 	str	x4, [sp, #96]
    11d8:	97fffe6a 	bl	b80 <fwrite@plt>
    11dc:	f9400263 	ldr	x3, [x19]
    11e0:	d2800202 	mov	x2, #0x10                  	// #16
    11e4:	d2800021 	mov	x1, #0x1                   	// #1
    11e8:	90000000 	adrp	x0, 1000 <main+0x450>
    11ec:	91396000 	add	x0, x0, #0xe58
    11f0:	97fffe64 	bl	b80 <fwrite@plt>
    11f4:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    11f8:	aa1c03e2 	mov	x2, x28
    11fc:	52800021 	mov	w1, #0x1                   	// #1
    1200:	f947f016 	ldr	x22, [x0, #4064]
    1204:	f9400260 	ldr	x0, [x19]
    1208:	f94002c3 	ldr	x3, [x22]
    120c:	f9400063 	ldr	x3, [x3]
    1210:	97fffe50 	bl	b50 <__fprintf_chk@plt>
    1214:	f9400263 	ldr	x3, [x19]
    1218:	d28007e2 	mov	x2, #0x3f                  	// #63
    121c:	d2800021 	mov	x1, #0x1                   	// #1
    1220:	90000000 	adrp	x0, 1000 <main+0x450>
    1224:	9139c000 	add	x0, x0, #0xe70
    1228:	97fffe56 	bl	b80 <fwrite@plt>
    122c:	f94002c3 	ldr	x3, [x22]
    1230:	aa1b03e2 	mov	x2, x27
    1234:	f9400260 	ldr	x0, [x19]
    1238:	52800021 	mov	w1, #0x1                   	// #1
    123c:	b9400863 	ldr	w3, [x3, #8]
    1240:	97fffe44 	bl	b50 <__fprintf_chk@plt>
    1244:	f9400260 	ldr	x0, [x19]
    1248:	aa1403e2 	mov	x2, x20
    124c:	52800003 	mov	w3, #0x0                   	// #0
    1250:	52800021 	mov	w1, #0x1                   	// #1
    1254:	97fffe3f 	bl	b50 <__fprintf_chk@plt>
    1258:	f94002c3 	ldr	x3, [x22]
    125c:	aa1a03e2 	mov	x2, x26
    1260:	f9400260 	ldr	x0, [x19]
    1264:	52800021 	mov	w1, #0x1                   	// #1
    1268:	b9400c63 	ldr	w3, [x3, #12]
    126c:	97fffe39 	bl	b50 <__fprintf_chk@plt>
    1270:	f9400260 	ldr	x0, [x19]
    1274:	aa1403e2 	mov	x2, x20
    1278:	52800023 	mov	w3, #0x1                   	// #1
    127c:	2a0303e1 	mov	w1, w3
    1280:	97fffe34 	bl	b50 <__fprintf_chk@plt>
    1284:	f94002c3 	ldr	x3, [x22]
    1288:	52800021 	mov	w1, #0x1                   	// #1
    128c:	f9400260 	ldr	x0, [x19]
    1290:	b9401063 	ldr	w3, [x3, #16]
    1294:	f9403be8 	ldr	x8, [sp, #112]
    1298:	aa0803e2 	mov	x2, x8
    129c:	97fffe2d 	bl	b50 <__fprintf_chk@plt>
    12a0:	f9400260 	ldr	x0, [x19]
    12a4:	aa1403e2 	mov	x2, x20
    12a8:	52800243 	mov	w3, #0x12                  	// #18
    12ac:	52800021 	mov	w1, #0x1                   	// #1
    12b0:	97fffe28 	bl	b50 <__fprintf_chk@plt>
    12b4:	f9400260 	ldr	x0, [x19]
    12b8:	52800021 	mov	w1, #0x1                   	// #1
    12bc:	f94037e7 	ldr	x7, [sp, #104]
    12c0:	f94002c3 	ldr	x3, [x22]
    12c4:	aa0703e2 	mov	x2, x7
    12c8:	91005063 	add	x3, x3, #0x14
    12cc:	97fffe21 	bl	b50 <__fprintf_chk@plt>
    12d0:	f9400263 	ldr	x3, [x19]
    12d4:	d2800682 	mov	x2, #0x34                  	// #52
    12d8:	f94033e4 	ldr	x4, [sp, #96]
    12dc:	d2800021 	mov	x1, #0x1                   	// #1
    12e0:	aa0403e0 	mov	x0, x4
    12e4:	97fffe27 	bl	b80 <fwrite@plt>
    12e8:	f9400260 	ldr	x0, [x19]
    12ec:	2a1503e3 	mov	w3, w21
    12f0:	52800021 	mov	w1, #0x1                   	// #1
    12f4:	90000002 	adrp	x2, 1000 <main+0x450>
    12f8:	913ac042 	add	x2, x2, #0xeb0
    12fc:	97fffe15 	bl	b50 <__fprintf_chk@plt>
    1300:	f9400260 	ldr	x0, [x19]
    1304:	aa1403e2 	mov	x2, x20
    1308:	528000a3 	mov	w3, #0x5                   	// #5
    130c:	52800021 	mov	w1, #0x1                   	// #1
    1310:	97fffe10 	bl	b50 <__fprintf_chk@plt>
    1314:	b94083e6 	ldr	w6, [sp, #128]
    1318:	b9408be5 	ldr	w5, [sp, #136]
    131c:	f9400260 	ldr	x0, [x19]
    1320:	4b0600a1 	sub	w1, w5, w6
    1324:	531d7022 	lsl	w2, w1, #3
    1328:	4b010041 	sub	w1, w2, w1
    132c:	90000002 	adrp	x2, 1000 <main+0x450>
    1330:	4b190023 	sub	w3, w1, w25
    1334:	913b4042 	add	x2, x2, #0xed0
    1338:	52800021 	mov	w1, #0x1                   	// #1
    133c:	97fffe05 	bl	b50 <__fprintf_chk@plt>
    1340:	f9400260 	ldr	x0, [x19]
    1344:	aa1403e2 	mov	x2, x20
    1348:	528001a3 	mov	w3, #0xd                   	// #13
    134c:	52800021 	mov	w1, #0x1                   	// #1
    1350:	97fffe00 	bl	b50 <__fprintf_chk@plt>
    1354:	b940a3e3 	ldr	w3, [sp, #160]
    1358:	52800021 	mov	w1, #0x1                   	// #1
    135c:	f9400260 	ldr	x0, [x19]
    1360:	90000002 	adrp	x2, 1000 <main+0x450>
    1364:	913bc042 	add	x2, x2, #0xef0
    1368:	97fffdfa 	bl	b50 <__fprintf_chk@plt>
    136c:	f9400260 	ldr	x0, [x19]
    1370:	aa1403e2 	mov	x2, x20
    1374:	528000e3 	mov	w3, #0x7                   	// #7
    1378:	52800021 	mov	w1, #0x1                   	// #1
    137c:	97fffdf5 	bl	b50 <__fprintf_chk@plt>
    1380:	b940a7e3 	ldr	w3, [sp, #164]
    1384:	52800021 	mov	w1, #0x1                   	// #1
    1388:	f9400260 	ldr	x0, [x19]
    138c:	90000002 	adrp	x2, 1000 <main+0x450>
    1390:	913c4042 	add	x2, x2, #0xf10
    1394:	97fffdef 	bl	b50 <__fprintf_chk@plt>
    1398:	f9400260 	ldr	x0, [x19]
    139c:	aa1403e2 	mov	x2, x20
    13a0:	52800023 	mov	w3, #0x1                   	// #1
    13a4:	2a0303e1 	mov	w1, w3
    13a8:	b0000094 	adrp	x20, 12000 <__FRAME_END__+0xfc88>
    13ac:	97fffde9 	bl	b50 <__fprintf_chk@plt>
    13b0:	f9400260 	ldr	x0, [x19]
    13b4:	aa1803e3 	mov	x3, x24
    13b8:	52800021 	mov	w1, #0x1                   	// #1
    13bc:	90000002 	adrp	x2, 1000 <main+0x450>
    13c0:	913cc042 	add	x2, x2, #0xf30
    13c4:	97fffde3 	bl	b50 <__fprintf_chk@plt>
    13c8:	f9400263 	ldr	x3, [x19]
    13cc:	d2800682 	mov	x2, #0x34                  	// #52
    13d0:	d2800021 	mov	x1, #0x1                   	// #1
    13d4:	90000000 	adrp	x0, 1000 <main+0x450>
    13d8:	913d4000 	add	x0, x0, #0xf50
    13dc:	97fffde9 	bl	b80 <fwrite@plt>
    13e0:	f9400260 	ldr	x0, [x19]
    13e4:	aa1703e3 	mov	x3, x23
    13e8:	52800021 	mov	w1, #0x1                   	// #1
    13ec:	90000002 	adrp	x2, 1000 <main+0x450>
    13f0:	913e2042 	add	x2, x2, #0xf88
    13f4:	97fffdd7 	bl	b50 <__fprintf_chk@plt>
    13f8:	f9400263 	ldr	x3, [x19]
    13fc:	d2800682 	mov	x2, #0x34                  	// #52
    1400:	d2800021 	mov	x1, #0x1                   	// #1
    1404:	90000000 	adrp	x0, 1000 <main+0x450>
    1408:	913ea000 	add	x0, x0, #0xfa8
    140c:	97fffddd 	bl	b80 <fwrite@plt>
    1410:	f9400261 	ldr	x1, [x19]
    1414:	52800140 	mov	w0, #0xa                   	// #10
    1418:	b0000093 	adrp	x19, 12000 <__FRAME_END__+0xfc88>
    141c:	97fffdad 	bl	ad0 <fputc@plt>
    1420:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    1424:	bd409fe0 	ldr	s0, [sp, #156]
    1428:	52a85901 	mov	w1, #0x42c80000            	// #1120403456
    142c:	1e270021 	fmov	s1, w1
    1430:	f947ec00 	ldr	x0, [x0, #4056]
    1434:	5e21d800 	scvtf	s0, s0
    1438:	d2d09001 	mov	x1, #0x848000000000        	// #145685290680320
    143c:	f2e825c1 	movk	x1, #0x412e, lsl #48
    1440:	9e670023 	fmov	d3, x1
    1444:	f9400000 	ldr	x0, [x0]
    1448:	1e210800 	fmul	s0, s0, s1
    144c:	f947da73 	ldr	x19, [x19, #4016]
    1450:	9e220002 	scvtf	s2, x0
    1454:	f947c694 	ldr	x20, [x20, #3976]
    1458:	1e22c004 	fcvt	d4, s0
    145c:	90000001 	adrp	x1, 1000 <main+0x450>
    1460:	52800020 	mov	w0, #0x1                   	// #1
    1464:	1e22c041 	fcvt	d1, s2
    1468:	913f8021 	add	x1, x1, #0xfe0
    146c:	1e221800 	fdiv	s0, s0, s2
    1470:	1e630821 	fmul	d1, d1, d3
    1474:	1e641821 	fdiv	d1, d1, d4
    1478:	bd000260 	str	s0, [x19]
    147c:	1e624020 	fcvt	s0, d1
    1480:	bd000280 	str	s0, [x20]
    1484:	97fffd9f 	bl	b00 <__printf_chk@plt>
    1488:	bd400280 	ldr	s0, [x20]
    148c:	b0000001 	adrp	x1, 2000 <_IO_stdin_used+0x550>
    1490:	52800020 	mov	w0, #0x1                   	// #1
    1494:	91004021 	add	x1, x1, #0x10
    1498:	1e22c000 	fcvt	d0, s0
    149c:	97fffd99 	bl	b00 <__printf_chk@plt>
    14a0:	b0000001 	adrp	x1, 2000 <_IO_stdin_used+0x550>
    14a4:	52800020 	mov	w0, #0x1                   	// #1
    14a8:	91008021 	add	x1, x1, #0x20
    14ac:	97fffd95 	bl	b00 <__printf_chk@plt>
    14b0:	bd400260 	ldr	s0, [x19]
    14b4:	b0000001 	adrp	x1, 2000 <_IO_stdin_used+0x550>
    14b8:	91014021 	add	x1, x1, #0x50
    14bc:	52800020 	mov	w0, #0x1                   	// #1
    14c0:	1e22c000 	fcvt	d0, s0
    14c4:	97fffd8f 	bl	b00 <__printf_chk@plt>
    14c8:	52800140 	mov	w0, #0xa                   	// #10
    14cc:	97fffdb5 	bl	ba0 <putchar@plt>
    14d0:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    14d4:	f947d000 	ldr	x0, [x0, #4000]
    14d8:	f94077e1 	ldr	x1, [sp, #232]
    14dc:	f9400002 	ldr	x2, [x0]
    14e0:	eb020021 	subs	x1, x1, x2
    14e4:	d2800002 	mov	x2, #0x0                   	// #0
    14e8:	54000761 	b.ne	15d4 <main+0xa24>  // b.any
    14ec:	52800000 	mov	w0, #0x0                   	// #0
    14f0:	a94153f3 	ldp	x19, x20, [sp, #16]
    14f4:	a9425bf5 	ldp	x21, x22, [sp, #32]
    14f8:	a94363f7 	ldp	x23, x24, [sp, #48]
    14fc:	a9446bf9 	ldp	x25, x26, [sp, #64]
    1500:	a94573fb 	ldp	x27, x28, [sp, #80]
    1504:	a8cf7bfd 	ldp	x29, x30, [sp], #240
    1508:	d65f03c0 	ret
    150c:	90000000 	adrp	x0, 1000 <main+0x450>
    1510:	912cc000 	add	x0, x0, #0xb30
    1514:	97fffd8b 	bl	b40 <puts@plt>
    1518:	17fffdec 	b	cc8 <main+0x118>
    151c:	aa1c03e1 	mov	x1, x28
    1520:	52800000 	mov	w0, #0x0                   	// #0
    1524:	94000077 	bl	1700 <Proc_6>
    1528:	2a1403f5 	mov	w21, w20
    152c:	f947b741 	ldr	x1, [x26, #3944]
    1530:	11000702 	add	w2, w24, #0x1
    1534:	f947e360 	ldr	x0, [x27, #4032]
    1538:	12001c58 	and	w24, w2, #0xff
    153c:	39400021 	ldrb	w1, [x1]
    1540:	f9400ac3 	ldr	x3, [x22, #16]
    1544:	b9000014 	str	w20, [x0]
    1548:	6b22003f 	cmp	w1, w2, uxtb
    154c:	f9000ae3 	str	x3, [x23, #16]
    1550:	a94006c0 	ldp	x0, x1, [x22]
    1554:	a90006e0 	stp	x0, x1, [x23]
    1558:	f84172c0 	ldur	x0, [x22, #23]
    155c:	f80172e0 	stur	x0, [x23, #23]
    1560:	54ffc742 	b.cs	e48 <main+0x298>  // b.hs, b.nlast
    1564:	17fffe44 	b	e74 <main+0x2c4>
    1568:	52800125 	mov	w5, #0x9                   	// #9
    156c:	17fffe43 	b	e78 <main+0x2c8>
    1570:	90000000 	adrp	x0, 1000 <main+0x450>
    1574:	912f2000 	add	x0, x0, #0xbc8
    1578:	97fffd72 	bl	b40 <puts@plt>
    157c:	b9409fe0 	ldr	w0, [sp, #156]
    1580:	0b000801 	add	w1, w0, w0, lsl #2
    1584:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    1588:	f947a800 	ldr	x0, [x0, #3920]
    158c:	531f7821 	lsl	w1, w1, #1
    1590:	b9009fe1 	str	w1, [sp, #156]
    1594:	b9400000 	ldr	w0, [x0]
    1598:	34ffbc40 	cbz	w0, d20 <main+0x170>
    159c:	2a1803e6 	mov	w6, w24
    15a0:	b94063e5 	ldr	w5, [sp, #96]
    15a4:	aa1903f8 	mov	x24, x25
    15a8:	2a1503f9 	mov	w25, w21
    15ac:	2a1303f5 	mov	w21, w19
    15b0:	17fffe5e 	b	f28 <main+0x378>
    15b4:	f9400400 	ldr	x0, [x0, #8]
    15b8:	52800142 	mov	w2, #0xa                   	// #10
    15bc:	d2800001 	mov	x1, #0x0                   	// #0
    15c0:	97fffd6c 	bl	b70 <strtol@plt>
    15c4:	b9009fe0 	str	w0, [sp, #156]
    15c8:	7100001f 	cmp	w0, #0x0
    15cc:	54ffb16c 	b.gt	bf8 <main+0x48>
    15d0:	17fffd88 	b	bf0 <main+0x40>
    15d4:	97fffd4f 	bl	b10 <__stack_chk_fail@plt>
    15d8:	f9400002 	ldr	x2, [x0]
    15dc:	90000001 	adrp	x1, 1000 <main+0x450>
    15e0:	912ae021 	add	x1, x1, #0xab8
    15e4:	52800020 	mov	w0, #0x1                   	// #1
    15e8:	97fffd46 	bl	b00 <__printf_chk@plt>
    15ec:	52800020 	mov	w0, #0x1                   	// #1
    15f0:	97fffd30 	bl	ab0 <exit@plt>

00000000000015f4 <_start>:
_start():
    15f4:	d280001d 	mov	x29, #0x0                   	// #0
    15f8:	d280001e 	mov	x30, #0x0                   	// #0
    15fc:	aa0003e5 	mov	x5, x0
    1600:	f94003e1 	ldr	x1, [sp]
    1604:	910023e2 	add	x2, sp, #0x8
    1608:	910003e6 	mov	x6, sp
    160c:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    1610:	f947e400 	ldr	x0, [x0, #4040]
    1614:	b0000083 	adrp	x3, 12000 <__FRAME_END__+0xfc88>
    1618:	f947d463 	ldr	x3, [x3, #4008]
    161c:	b0000084 	adrp	x4, 12000 <__FRAME_END__+0xfc88>
    1620:	f947a084 	ldr	x4, [x4, #3904]
    1624:	97fffd33 	bl	af0 <__libc_start_main@plt>
    1628:	97fffd42 	bl	b30 <abort@plt>

000000000000162c <call_weak_fn>:
call_weak_fn():
    162c:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    1630:	f947cc00 	ldr	x0, [x0, #3992]
    1634:	b4000040 	cbz	x0, 163c <call_weak_fn+0x10>
    1638:	17fffd3a 	b	b20 <__gmon_start__@plt>
    163c:	d65f03c0 	ret

0000000000001640 <deregister_tm_clones>:
deregister_tm_clones():
    1640:	d0000080 	adrp	x0, 13000 <__data_start>
    1644:	91004000 	add	x0, x0, #0x10
    1648:	d0000081 	adrp	x1, 13000 <__data_start>
    164c:	91004021 	add	x1, x1, #0x10
    1650:	eb00003f 	cmp	x1, x0
    1654:	540000c0 	b.eq	166c <deregister_tm_clones+0x2c>  // b.none
    1658:	b0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
    165c:	f947ac21 	ldr	x1, [x1, #3928]
    1660:	b4000061 	cbz	x1, 166c <deregister_tm_clones+0x2c>
    1664:	aa0103f0 	mov	x16, x1
    1668:	d61f0200 	br	x16
    166c:	d65f03c0 	ret

0000000000001670 <register_tm_clones>:
register_tm_clones():
    1670:	d0000080 	adrp	x0, 13000 <__data_start>
    1674:	91004000 	add	x0, x0, #0x10
    1678:	d0000081 	adrp	x1, 13000 <__data_start>
    167c:	91004021 	add	x1, x1, #0x10
    1680:	cb000021 	sub	x1, x1, x0
    1684:	d37ffc22 	lsr	x2, x1, #63
    1688:	8b810c41 	add	x1, x2, x1, asr #3
    168c:	eb8107ff 	cmp	xzr, x1, asr #1
    1690:	9341fc21 	asr	x1, x1, #1
    1694:	540000c0 	b.eq	16ac <register_tm_clones+0x3c>  // b.none
    1698:	b0000082 	adrp	x2, 12000 <__FRAME_END__+0xfc88>
    169c:	f947fc42 	ldr	x2, [x2, #4088]
    16a0:	b4000062 	cbz	x2, 16ac <register_tm_clones+0x3c>
    16a4:	aa0203f0 	mov	x16, x2
    16a8:	d61f0200 	br	x16
    16ac:	d65f03c0 	ret

00000000000016b0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
    16b0:	a9be7bfd 	stp	x29, x30, [sp, #-32]!
    16b4:	910003fd 	mov	x29, sp
    16b8:	f9000bf3 	str	x19, [sp, #16]
    16bc:	d0000093 	adrp	x19, 13000 <__data_start>
    16c0:	39404260 	ldrb	w0, [x19, #16]
    16c4:	35000140 	cbnz	w0, 16ec <__do_global_dtors_aux+0x3c>
    16c8:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    16cc:	f947b800 	ldr	x0, [x0, #3952]
    16d0:	b4000080 	cbz	x0, 16e0 <__do_global_dtors_aux+0x30>
    16d4:	d0000080 	adrp	x0, 13000 <__data_start>
    16d8:	f9400400 	ldr	x0, [x0, #8]
    16dc:	97fffcf9 	bl	ac0 <__cxa_finalize@plt>
    16e0:	97ffffd8 	bl	1640 <deregister_tm_clones>
    16e4:	52800020 	mov	w0, #0x1                   	// #1
    16e8:	39004260 	strb	w0, [x19, #16]
    16ec:	f9400bf3 	ldr	x19, [sp, #16]
    16f0:	a8c27bfd 	ldp	x29, x30, [sp], #32
    16f4:	d65f03c0 	ret

00000000000016f8 <frame_dummy>:
frame_dummy():
    16f8:	17ffffde 	b	1670 <register_tm_clones>
    16fc:	d503201f 	nop

0000000000001700 <Proc_6>:
Proc_6():
    1700:	7100081f 	cmp	w0, #0x2
    1704:	54000240 	b.eq	174c <Proc_6+0x4c>  // b.none
    1708:	52800062 	mov	w2, #0x3                   	// #3
    170c:	b9000022 	str	w2, [x1]
    1710:	7100041f 	cmp	w0, #0x1
    1714:	540000e0 	b.eq	1730 <Proc_6+0x30>  // b.none
    1718:	54000169 	b.ls	1744 <Proc_6+0x44>  // b.plast
    171c:	7100101f 	cmp	w0, #0x4
    1720:	54000061 	b.ne	172c <Proc_6+0x2c>  // b.any
    1724:	52800040 	mov	w0, #0x2                   	// #2
    1728:	b9000020 	str	w0, [x1]
    172c:	d65f03c0 	ret
    1730:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    1734:	f947e000 	ldr	x0, [x0, #4032]
    1738:	b9400000 	ldr	w0, [x0]
    173c:	7101901f 	cmp	w0, #0x64
    1740:	54ffff6d 	b.le	172c <Proc_6+0x2c>
    1744:	b900003f 	str	wzr, [x1]
    1748:	d65f03c0 	ret
    174c:	52800020 	mov	w0, #0x1                   	// #1
    1750:	b9000020 	str	w0, [x1]
    1754:	d65f03c0 	ret

0000000000001758 <Proc_7>:
Proc_7():
    1758:	11000800 	add	w0, w0, #0x2
    175c:	0b010000 	add	w0, w0, w1
    1760:	b9000040 	str	w0, [x2]
    1764:	d65f03c0 	ret

0000000000001768 <Proc_8>:
Proc_8():
    1768:	11001444 	add	w4, w2, #0x5
    176c:	52801905 	mov	w5, #0xc8                  	// #200
    1770:	0e040c60 	dup	v0.2s, w3
    1774:	937e7c42 	sbfiz	x2, x2, #2, #32
    1778:	937e7c86 	sbfiz	x6, x4, #2, #32
    177c:	9b257c85 	smull	x5, w4, w5
    1780:	8b060007 	add	x7, x0, x6
    1784:	8b050043 	add	x3, x2, x5
    1788:	fc266800 	str	d0, [x0, x6]
    178c:	8b030023 	add	x3, x1, x3
    1790:	b90078e4 	str	w4, [x7, #120]
    1794:	8b020021 	add	x1, x1, x2
    1798:	b0000086 	adrp	x6, 12000 <__FRAME_END__+0xfc88>
    179c:	8b050021 	add	x1, x1, x5
    17a0:	b9401065 	ldr	w5, [x3, #16]
    17a4:	f947e0c2 	ldr	x2, [x6, #4032]
    17a8:	110004a5 	add	w5, w5, #0x1
    17ac:	29021065 	stp	w5, w4, [x3, #16]
    17b0:	528000a6 	mov	w6, #0x5                   	// #5
    17b4:	b9001864 	str	w4, [x3, #24]
    17b8:	b864d800 	ldr	w0, [x0, w4, sxtw #2]
    17bc:	b9000046 	str	w6, [x2]
    17c0:	b90fb420 	str	w0, [x1, #4020]
    17c4:	d65f03c0 	ret

00000000000017c8 <Func_1>:
Func_1():
    17c8:	12001c21 	and	w1, w1, #0xff
    17cc:	12001c02 	and	w2, w0, #0xff
    17d0:	6b20003f 	cmp	w1, w0, uxtb
    17d4:	54000060 	b.eq	17e0 <Func_1+0x18>  // b.none
    17d8:	52800000 	mov	w0, #0x0                   	// #0
    17dc:	d65f03c0 	ret
    17e0:	b0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
    17e4:	52800020 	mov	w0, #0x1                   	// #1
    17e8:	f947f821 	ldr	x1, [x1, #4080]
    17ec:	39000022 	strb	w2, [x1]
    17f0:	d65f03c0 	ret
    17f4:	d503201f 	nop

00000000000017f8 <Func_2>:
Func_2():
    17f8:	39400803 	ldrb	w3, [x0, #2]
    17fc:	39400c22 	ldrb	w2, [x1, #3]
    1800:	6b02007f 	cmp	w3, w2
    1804:	540001c0 	b.eq	183c <Func_2+0x44>  // b.none
    1808:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    180c:	910003fd 	mov	x29, sp
    1810:	97fffcd4 	bl	b60 <strcmp@plt>
    1814:	7100001f 	cmp	w0, #0x0
    1818:	52800000 	mov	w0, #0x0                   	// #0
    181c:	540000cd 	b.le	1834 <Func_2+0x3c>
    1820:	b0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
    1824:	52800142 	mov	w2, #0xa                   	// #10
    1828:	52800020 	mov	w0, #0x1                   	// #1
    182c:	f947e021 	ldr	x1, [x1, #4032]
    1830:	b9000022 	str	w2, [x1]
    1834:	a8c17bfd 	ldp	x29, x30, [sp], #16
    1838:	d65f03c0 	ret
    183c:	14000000 	b	183c <Func_2+0x44>

0000000000001840 <Func_3>:
Func_3():
    1840:	7100081f 	cmp	w0, #0x2
    1844:	1a9f17e0 	cset	w0, eq  // eq = none
    1848:	d65f03c0 	ret
    184c:	d503201f 	nop

0000000000001850 <Proc_1>:
Proc_1():
    1850:	a9bd7bfd 	stp	x29, x30, [sp, #-48]!
    1854:	b0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
    1858:	528000a3 	mov	w3, #0x5                   	// #5
    185c:	910003fd 	mov	x29, sp
    1860:	f947e021 	ldr	x1, [x1, #4032]
    1864:	a90153f3 	stp	x19, x20, [sp, #16]
    1868:	aa0003f4 	mov	x20, x0
    186c:	f9400013 	ldr	x19, [x0]
    1870:	52800140 	mov	w0, #0xa                   	// #10
    1874:	b9400021 	ldr	w1, [x1]
    1878:	f90013f5 	str	x21, [sp, #32]
    187c:	b0000095 	adrp	x21, 12000 <__FRAME_END__+0xfc88>
    1880:	f947cab5 	ldr	x21, [x21, #3984]
    1884:	f94002a2 	ldr	x2, [x21]
    1888:	a9401444 	ldp	x4, x5, [x2]
    188c:	a9001664 	stp	x4, x5, [x19]
    1890:	a9411444 	ldp	x4, x5, [x2, #16]
    1894:	a9011664 	stp	x4, x5, [x19, #16]
    1898:	a9421444 	ldp	x4, x5, [x2, #32]
    189c:	a9021664 	stp	x4, x5, [x19, #32]
    18a0:	f9401844 	ldr	x4, [x2, #48]
    18a4:	f9001a64 	str	x4, [x19, #48]
    18a8:	b9001283 	str	w3, [x20, #16]
    18ac:	f9400284 	ldr	x4, [x20]
    18b0:	f9000264 	str	x4, [x19]
    18b4:	b9001263 	str	w3, [x19, #16]
    18b8:	f9400042 	ldr	x2, [x2]
    18bc:	f9000262 	str	x2, [x19]
    18c0:	f94002a2 	ldr	x2, [x21]
    18c4:	91004042 	add	x2, x2, #0x10
    18c8:	97ffffa4 	bl	1758 <Proc_7>
    18cc:	b9400a60 	ldr	w0, [x19, #8]
    18d0:	340001c0 	cbz	w0, 1908 <Proc_1+0xb8>
    18d4:	f9400280 	ldr	x0, [x20]
    18d8:	f94013f5 	ldr	x21, [sp, #32]
    18dc:	a9400c02 	ldp	x2, x3, [x0]
    18e0:	a9000e82 	stp	x2, x3, [x20]
    18e4:	a9410c02 	ldp	x2, x3, [x0, #16]
    18e8:	a9010e82 	stp	x2, x3, [x20, #16]
    18ec:	a9420c02 	ldp	x2, x3, [x0, #32]
    18f0:	a9020e82 	stp	x2, x3, [x20, #32]
    18f4:	f9401800 	ldr	x0, [x0, #48]
    18f8:	f9001a80 	str	x0, [x20, #48]
    18fc:	a94153f3 	ldp	x19, x20, [sp, #16]
    1900:	a8c37bfd 	ldp	x29, x30, [sp], #48
    1904:	d65f03c0 	ret
    1908:	b9400e80 	ldr	w0, [x20, #12]
    190c:	528000c1 	mov	w1, #0x6                   	// #6
    1910:	b9001261 	str	w1, [x19, #16]
    1914:	91003261 	add	x1, x19, #0xc
    1918:	97ffff7a 	bl	1700 <Proc_6>
    191c:	f94002a3 	ldr	x3, [x21]
    1920:	aa1303e2 	mov	x2, x19
    1924:	a94153f3 	ldp	x19, x20, [sp, #16]
    1928:	52800141 	mov	w1, #0xa                   	// #10
    192c:	f9400063 	ldr	x3, [x3]
    1930:	b9401040 	ldr	w0, [x2, #16]
    1934:	f8010443 	str	x3, [x2], #16
    1938:	f94013f5 	ldr	x21, [sp, #32]
    193c:	a8c37bfd 	ldp	x29, x30, [sp], #48
    1940:	17ffff86 	b	1758 <Proc_7>
    1944:	d503201f 	nop

0000000000001948 <Proc_2>:
Proc_2():
    1948:	b0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
    194c:	f947f821 	ldr	x1, [x1, #4080]
    1950:	39400021 	ldrb	w1, [x1]
    1954:	7101043f 	cmp	w1, #0x41
    1958:	54000040 	b.eq	1960 <Proc_2+0x18>  // b.none
    195c:	d65f03c0 	ret
    1960:	b0000082 	adrp	x2, 12000 <__FRAME_END__+0xfc88>
    1964:	b9400001 	ldr	w1, [x0]
    1968:	f947e042 	ldr	x2, [x2, #4032]
    196c:	11002421 	add	w1, w1, #0x9
    1970:	b9400042 	ldr	w2, [x2]
    1974:	4b020021 	sub	w1, w1, w2
    1978:	b9000001 	str	w1, [x0]
    197c:	d65f03c0 	ret

0000000000001980 <Proc_3>:
Proc_3():
    1980:	b0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
    1984:	f947c821 	ldr	x1, [x1, #3984]
    1988:	f9400022 	ldr	x2, [x1]
    198c:	b4000082 	cbz	x2, 199c <Proc_3+0x1c>
    1990:	f9400042 	ldr	x2, [x2]
    1994:	f9000002 	str	x2, [x0]
    1998:	f9400022 	ldr	x2, [x1]
    199c:	b0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
    19a0:	91004042 	add	x2, x2, #0x10
    19a4:	52800140 	mov	w0, #0xa                   	// #10
    19a8:	f947e021 	ldr	x1, [x1, #4032]
    19ac:	b9400021 	ldr	w1, [x1]
    19b0:	17ffff6a 	b	1758 <Proc_7>
    19b4:	d503201f 	nop

00000000000019b8 <Proc_4>:
Proc_4():
    19b8:	b0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
    19bc:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    19c0:	b0000082 	adrp	x2, 12000 <__FRAME_END__+0xfc88>
    19c4:	52800843 	mov	w3, #0x42                  	// #66
    19c8:	f947f821 	ldr	x1, [x1, #4080]
    19cc:	f947e800 	ldr	x0, [x0, #4048]
    19d0:	39400021 	ldrb	w1, [x1]
    19d4:	f947b442 	ldr	x2, [x2, #3944]
    19d8:	7101043f 	cmp	w1, #0x41
    19dc:	b9400004 	ldr	w4, [x0]
    19e0:	1a9f17e1 	cset	w1, eq  // eq = none
    19e4:	2a040021 	orr	w1, w1, w4
    19e8:	39000043 	strb	w3, [x2]
    19ec:	b9000001 	str	w1, [x0]
    19f0:	d65f03c0 	ret
    19f4:	d503201f 	nop

00000000000019f8 <Proc_5>:
Proc_5():
    19f8:	b0000081 	adrp	x1, 12000 <__FRAME_END__+0xfc88>
    19fc:	b0000080 	adrp	x0, 12000 <__FRAME_END__+0xfc88>
    1a00:	52800822 	mov	w2, #0x41                  	// #65
    1a04:	f947f821 	ldr	x1, [x1, #4080]
    1a08:	f947e800 	ldr	x0, [x0, #4048]
    1a0c:	39000022 	strb	w2, [x1]
    1a10:	b900001f 	str	wzr, [x0]
    1a14:	d65f03c0 	ret

0000000000001a18 <__libc_csu_init>:
__libc_csu_init():
    1a18:	a9bc7bfd 	stp	x29, x30, [sp, #-64]!
    1a1c:	910003fd 	mov	x29, sp
    1a20:	a90153f3 	stp	x19, x20, [sp, #16]
    1a24:	b0000094 	adrp	x20, 12000 <__FRAME_END__+0xfc88>
    1a28:	91326294 	add	x20, x20, #0xc98
    1a2c:	a9025bf5 	stp	x21, x22, [sp, #32]
    1a30:	b0000095 	adrp	x21, 12000 <__FRAME_END__+0xfc88>
    1a34:	913242b5 	add	x21, x21, #0xc90
    1a38:	cb150294 	sub	x20, x20, x21
    1a3c:	2a0003f6 	mov	w22, w0
    1a40:	a90363f7 	stp	x23, x24, [sp, #48]
    1a44:	aa0103f7 	mov	x23, x1
    1a48:	aa0203f8 	mov	x24, x2
    1a4c:	97fffc09 	bl	a70 <_init>
    1a50:	eb940fff 	cmp	xzr, x20, asr #3
    1a54:	54000160 	b.eq	1a80 <__libc_csu_init+0x68>  // b.none
    1a58:	9343fe94 	asr	x20, x20, #3
    1a5c:	d2800013 	mov	x19, #0x0                   	// #0
    1a60:	f8737aa3 	ldr	x3, [x21, x19, lsl #3]
    1a64:	aa1803e2 	mov	x2, x24
    1a68:	91000673 	add	x19, x19, #0x1
    1a6c:	aa1703e1 	mov	x1, x23
    1a70:	2a1603e0 	mov	w0, w22
    1a74:	d63f0060 	blr	x3
    1a78:	eb13029f 	cmp	x20, x19
    1a7c:	54ffff21 	b.ne	1a60 <__libc_csu_init+0x48>  // b.any
    1a80:	a94153f3 	ldp	x19, x20, [sp, #16]
    1a84:	a9425bf5 	ldp	x21, x22, [sp, #32]
    1a88:	a94363f7 	ldp	x23, x24, [sp, #48]
    1a8c:	a8c47bfd 	ldp	x29, x30, [sp], #64
    1a90:	d65f03c0 	ret
    1a94:	d503201f 	nop

0000000000001a98 <__libc_csu_fini>:
__libc_csu_fini():
    1a98:	d65f03c0 	ret

Disassembly of section .fini:

0000000000001a9c <_fini>:
_fini():
    1a9c:	a9bf7bfd 	stp	x29, x30, [sp, #-16]!
    1aa0:	910003fd 	mov	x29, sp
    1aa4:	a8c17bfd 	ldp	x29, x30, [sp], #16
    1aa8:	d65f03c0 	ret
