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

