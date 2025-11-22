	.file	"linpack.c"
	.intel_syntax noprefix
# GNU C23 (GCC) version 15.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.2.1, MPFR version 4.2.2, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O2
	.text
	.p2align 4
	.type	daxpy.part.0, @function
daxpy.part.0:
.LFB36:
	.cfi_startproc
# linpack.c:268: void daxpy ( int n, double da, double dx[], int incx, double dy[], int incy )
	mov	r9, rsi	# dx, dx
	mov	rsi, rcx	# dy, dy
# linpack.c:335:   if ( incx != 1 || incy != 1 )
	cmp	edx, 1	# incx,
	jne	.L13	#,
	cmp	r8d, 1	# incy,
	jne	.L13	#,
# linpack.c:369:     for ( i = 0; i < m; i++ )
	mov	r8d, edi	# m, n
	and	r8d, 3	# m,
	je	.L8	#,
	movsx	rdx, r8d	# _150, m
	xor	eax, eax	# ivtmp.47
.L9:
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movsd	xmm1, QWORD PTR [r9+rax*8]	# _38, MEM[(double *)dx_20(D) + ivtmp.47_148 * 8]
	mulsd	xmm1, xmm0	# _38, da
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	addsd	xmm1, QWORD PTR [rsi+rax*8]	# _39, MEM[(double *)dy_14(D) + ivtmp.47_148 * 8]
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movsd	QWORD PTR [rsi+rax*8], xmm1	# MEM[(double *)dy_14(D) + ivtmp.47_148 * 8], _39
# linpack.c:369:     for ( i = 0; i < m; i++ )
	add	rax, 1	# ivtmp.47,
	cmp	rax, rdx	# ivtmp.47, _150
	jne	.L9	#,
.L8:
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	cmp	edi, r8d	# n, m
	jle	.L1	#,
	lea	ecx, [rdi-1]	# _80,
	movsx	r10, r8d	# _119, m
	sub	rcx, r8	# _41, m
	lea	rdx, [0+r10*8]	# _118,
	and	ecx, 4294967292	# _28,
	lea	rax, [rsi+rdx]	# ivtmp.42,
	add	rdx, r9	# ivtmp.43, dx
	add	rcx, r10	# _17, _119
	lea	rcx, [rsi+32+rcx*8]	# _147,
	.p2align 4
	.p2align 3
.L10:
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movsd	xmm1, QWORD PTR [rdx]	# _48, MEM[(double *)_93]
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	add	rax, 32	# ivtmp.42,
	add	rdx, 32	# ivtmp.43,
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	mulsd	xmm1, xmm0	# _48, da
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	addsd	xmm1, QWORD PTR [rax-32]	# _49, MEM[(double *)_110]
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movsd	QWORD PTR [rax-32], xmm1	# MEM[(double *)_110], _49
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movsd	xmm1, QWORD PTR [rdx-24]	# _56, MEM[(double *)_93 + 8B]
	mulsd	xmm1, xmm0	# _56, da
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	addsd	xmm1, QWORD PTR [rax-24]	# _57, MEM[(double *)_110 + 8B]
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movsd	QWORD PTR [rax-24], xmm1	# MEM[(double *)_110 + 8B], _57
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movsd	xmm1, QWORD PTR [rdx-16]	# _64, MEM[(double *)_93 + 16B]
	mulsd	xmm1, xmm0	# _64, da
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	addsd	xmm1, QWORD PTR [rax-16]	# _65, MEM[(double *)_110 + 16B]
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movsd	QWORD PTR [rax-16], xmm1	# MEM[(double *)_110 + 16B], _65
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movsd	xmm1, QWORD PTR [rdx-8]	# _72, MEM[(double *)_93 + 24B]
	mulsd	xmm1, xmm0	# _72, da
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	addsd	xmm1, QWORD PTR [rax-8]	# _73, MEM[(double *)_110 + 24B]
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movsd	QWORD PTR [rax-8], xmm1	# MEM[(double *)_110 + 24B], _73
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	cmp	rax, rcx	# ivtmp.42, _147
	jne	.L10	#,
.L1:
# linpack.c:383: }
	ret	
	.p2align 4,,10
	.p2align 3
.L13:
# linpack.c:339:       ix = 0;
	xor	ecx, ecx	# ix
# linpack.c:337:     if ( 0 <= incx )
	test	edx, edx	# incx
	js	.L21	#,
# linpack.c:348:       iy = 0;
	xor	eax, eax	# iy
# linpack.c:346:     if ( 0 <= incy )
	test	r8d, r8d	# incy
	js	.L22	#,
.L5:
# linpack.c:355:     for ( i = 0; i < n; i++ )
	test	edi, edi	# n
	jle	.L1	#,
.L23:
	cdqe
	movsx	r8, r8d	# _139, incy
	movsx	rcx, ecx	# _128, ix
	lea	rax, [rsi+rax*8]	# ivtmp.34,
	movsx	rsi, edx	# _131, incx
	sal	r8, 3	# _138,
	lea	rcx, [r9+rcx*8]	# ivtmp.35,
	sal	rsi, 3	# _130,
	xor	edx, edx	# i
	.p2align 5
	.p2align 4
	.p2align 3
.L7:
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	movsd	xmm1, QWORD PTR [rcx]	# _24, MEM[(double *)_123]
# linpack.c:355:     for ( i = 0; i < n; i++ )
	add	edx, 1	# i,
# linpack.c:355:     for ( i = 0; i < n; i++ )
	add	rcx, rsi	# ivtmp.35, _130
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	mulsd	xmm1, xmm0	# _24, da
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	addsd	xmm1, QWORD PTR [rax]	# _25, MEM[(double *)_125]
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	movsd	QWORD PTR [rax], xmm1	# MEM[(double *)_125], _25
# linpack.c:355:     for ( i = 0; i < n; i++ )
	add	rax, r8	# ivtmp.34, _138
	cmp	edi, edx	# n, i
	jne	.L7	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L22:
# linpack.c:352:       iy = ( - n + 1 ) * incy;
	mov	eax, 1	# tmp179,
	sub	eax, edi	# _9, n
# linpack.c:352:       iy = ( - n + 1 ) * incy;
	imul	eax, r8d	# iy, incy
# linpack.c:355:     for ( i = 0; i < n; i++ )
	test	edi, edi	# n
	jg	.L23	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L21:
# linpack.c:343:       ix = ( - n + 1 ) * incx;
	mov	ecx, 1	# tmp177,
# linpack.c:348:       iy = 0;
	xor	eax, eax	# iy
# linpack.c:343:       ix = ( - n + 1 ) * incx;
	sub	ecx, edi	# _7, n
# linpack.c:343:       ix = ( - n + 1 ) * incx;
	imul	ecx, edx	# ix, incx
# linpack.c:346:     if ( 0 <= incy )
	test	r8d, r8d	# incy
	jns	.L5	#,
	jmp	.L22	#
	.cfi_endproc
.LFE36:
	.size	daxpy.part.0, .-daxpy.part.0
	.p2align 4
	.type	dscal.part.0, @function
dscal.part.0:
.LFB37:
	.cfi_startproc
# linpack.c:780:     m = n % 5;
	movsx	rcx, edi	# n, n
	mov	eax, edi	# tmp154, n
# linpack.c:731: void dscal ( int n, double sa, double x[], int incx )
	mov	r8, rsi	# x, x
# linpack.c:780:     m = n % 5;
	imul	rcx, rcx, 1717986919	# tmp151, n,
	sar	eax, 31	# tmp154,
	sar	rcx, 33	# tmp153,
	sub	ecx, eax	# tmp.61, tmp154
	lea	eax, [rcx+rcx*4]	# tmp157,
# linpack.c:782:     for ( i = 0; i < m; i++ )
	mov	ecx, edi	# tmp.61, n
	sub	ecx, eax	# tmp.61, tmp157
	je	.L25	#,
	movsx	rdx, ecx	# _36, tmp.61
	mov	rax, rsi	# ivtmp.90, x
	lea	rdx, [rsi+rdx*8]	# _94,
.L26:
# linpack.c:784:       x[i] = sa * x[i];
	movsd	xmm1, QWORD PTR [rax]	# _10, MEM[(double *)_34]
# linpack.c:782:     for ( i = 0; i < m; i++ )
	add	rax, 8	# ivtmp.90,
# linpack.c:784:       x[i] = sa * x[i];
	mulsd	xmm1, xmm0	# _10, sa
# linpack.c:784:       x[i] = sa * x[i];
	movsd	QWORD PTR [rax-8], xmm1	# MEM[(double *)_34], _10
# linpack.c:782:     for ( i = 0; i < m; i++ )
	cmp	rax, rdx	# ivtmp.90, _94
	jne	.L26	#,
.L25:
# linpack.c:787:     for ( i = m; i < n; i = i + 5 )
	cmp	edi, ecx	# n, tmp.61
	jle	.L24	#,
	sub	edi, 1	# _93,
	movapd	xmm1, xmm0	# _20, sa
	sub	edi, ecx	# _72, tmp.61
	unpcklpd	xmm1, xmm1	# _20
	cmp	edi, 4	# _72,
	jbe	.L28	#,
	mov	eax, 3435973837	# tmp167,
	mov	edx, edi	# _72, _72
	imul	rdx, rax	# tmp166, tmp167
	movsx	rax, ecx	# _112, tmp.61
	lea	rax, [r8+rax*8]	# ivtmp.83,
	shr	rdx, 34	# _71,
	add	edx, 1	# niters.58,
	mov	esi, edx	# _92, niters.58
	shr	esi	# _92
	lea	rsi, [rsi+rsi*4]	# _85,
	sal	rsi, 4	# tmp176,
	add	rsi, rax	# _51, ivtmp.83
	.p2align 4
	.p2align 3
.L29:
# linpack.c:789:       x[i]   = sa * x[i];
	movupd	xmm5, XMMWORD PTR [rax+16]	# vect__16.65_118, MEM <vector(2) double> [(double *)_15 + 16B]
	movupd	xmm4, XMMWORD PTR [rax+32]	# vect__16.66_120, MEM <vector(2) double> [(double *)_15 + 32B]
	add	rax, 80	# ivtmp.83,
	movupd	xmm3, XMMWORD PTR [rax-32]	# vect__16.67_122, MEM <vector(2) double> [(double *)_15 + 48B]
	movupd	xmm2, XMMWORD PTR [rax-16]	# vect__16.68_124, MEM <vector(2) double> [(double *)_15 + 64B]
	movupd	xmm6, XMMWORD PTR [rax-80]	# vect__16.64_116, MEM <vector(2) double> [(double *)_15]
# linpack.c:789:       x[i]   = sa * x[i];
	mulpd	xmm5, xmm1	# vect__17.69, _20
	mulpd	xmm4, xmm1	# vect__17.69, _20
	mulpd	xmm3, xmm1	# vect__17.69, _20
	mulpd	xmm2, xmm1	# vect__17.69, _20
	mulpd	xmm6, xmm1	# vect__17.69_125, _20
# linpack.c:789:       x[i]   = sa * x[i];
	movups	XMMWORD PTR [rax-64], xmm5	# MEM <vector(2) double> [(double *)_15 + 16B], vect__17.69
	movups	XMMWORD PTR [rax-48], xmm4	# MEM <vector(2) double> [(double *)_15 + 32B], vect__17.69
	movups	XMMWORD PTR [rax-32], xmm3	# MEM <vector(2) double> [(double *)_15 + 48B], vect__17.69
	movups	XMMWORD PTR [rax-16], xmm2	# MEM <vector(2) double> [(double *)_15 + 64B], vect__17.69
	movups	XMMWORD PTR [rax-80], xmm6	# MEM <vector(2) double> [(double *)_15], vect__17.69_125
	cmp	rax, rsi	# ivtmp.83, _51
	jne	.L29	#,
	test	dl, 1	# niters.58,
	je	.L24	#,
	and	edx, -2	# niters_vector_mult_vf.60_102,
	lea	eax, [rdx+rdx*4]	# _105,
	add	ecx, eax	# tmp.61, _105
.L28:
# linpack.c:789:       x[i]   = sa * x[i];
	movsx	rcx, ecx	# _68, tmp.61
	sal	rcx, 3	# _67,
	lea	rax, [r8+rcx]	# _66,
	movupd	xmm2, XMMWORD PTR [rax+16]	# vect__65.77_24, MEM <vector(2) double> [(double *)_66 + 16B]
# linpack.c:789:       x[i]   = sa * x[i];
	movupd	xmm7, XMMWORD PTR [rax]	# tmp204, MEM <vector(2) double> [(double *)_66]
	mulpd	xmm2, xmm1	# vect__64.78, _20
	mulpd	xmm1, xmm7	# vect__64.78_26, tmp204
# linpack.c:789:       x[i]   = sa * x[i];
	movups	XMMWORD PTR [rax+16], xmm2	# MEM <vector(2) double> [(double *)_66 + 16B], vect__64.78
	movups	XMMWORD PTR [rax], xmm1	# MEM <vector(2) double> [(double *)_66], vect__64.78_26
# linpack.c:793:       x[i+4] = sa * x[i+4];
	mulsd	xmm0, QWORD PTR [r8+32+rcx]	# _90, *_88
# linpack.c:793:       x[i+4] = sa * x[i+4];
	movsd	QWORD PTR [r8+32+rcx], xmm0	# *_88, _90
.L24:
# linpack.c:814: }
	ret	
	.cfi_endproc
.LFE37:
	.size	dscal.part.0, .-dscal.part.0
	.p2align 4
	.globl	cpu_time
	.type	cpu_time, @function
cpu_time:
.LFB23:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
# linpack.c:261:   value = ( double ) clock ( ) 
	call	clock	#
# linpack.c:261:   value = ( double ) clock ( ) 
	pxor	xmm0, xmm0	# _2
	cvtsi2sd	xmm0, rax	# _2, _1
# linpack.c:261:   value = ( double ) clock ( ) 
	divsd	xmm0, QWORD PTR .LC0[rip]	# value_5,
# linpack.c:265: }
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE23:
	.size	cpu_time, .-cpu_time
	.p2align 4
	.globl	daxpy
	.type	daxpy, @function
daxpy:
.LFB24:
	.cfi_startproc
# linpack.c:327:   if ( da == 0.0 )
	pxor	xmm1, xmm1	# tmp112
# linpack.c:316: {
	mov	r9d, edx	# incx, incx
# linpack.c:327:   if ( da == 0.0 )
	mov	edx, 0	# tmp114,
	ucomisd	xmm0, xmm1	# da, tmp112
	setnp	al	#, tmp111
	cmovne	eax, edx	# tmp111,, _10, tmp114
	test	al, al	# _10
	jne	.L41	#,
	test	edi, edi	# n
	jle	.L41	#,
	mov	edx, r9d	#, incx
	jmp	daxpy.part.0	#
	.p2align 4,,10
	.p2align 3
.L41:
# linpack.c:383: }
	ret	
	.cfi_endproc
.LFE24:
	.size	daxpy, .-daxpy
	.p2align 4
	.globl	ddot
	.type	ddot, @function
ddot:
.LFB25:
	.cfi_startproc
# linpack.c:434: {
	mov	r9, rcx	# dy, dy
# linpack.c:445:     return dtemp;
	pxor	xmm0, xmm0	# <retval>
# linpack.c:443:   if ( n <= 0 )
	test	edi, edi	# n
	jle	.L43	#,
# linpack.c:451:   if ( incx != 1 || incy != 1 )
	cmp	edx, 1	# incx,
	jne	.L60	#,
	cmp	r8d, 1	# incy,
	jne	.L60	#,
# linpack.c:483:     m = n % 5;
	movsx	r8, edi	# n, n
	mov	eax, edi	# tmp247, n
	imul	r8, r8, 1717986919	# tmp244, n,
	sar	eax, 31	# tmp247,
	sar	r8, 33	# tmp246,
	sub	r8d, eax	# tmp.107, tmp247
	lea	eax, [r8+r8*4]	# tmp250,
# linpack.c:485:     for ( i = 0; i < m; i++ )
	mov	r8d, edi	# tmp.107, n
	sub	r8d, eax	# tmp.107, tmp250
	je	.L59	#,
	movsx	rax, r8d	# _187, tmp.107
	xor	edx, edx	# ivtmp.146
.L51:
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	movsd	xmm1, QWORD PTR [rsi+rdx*8]	# MEM[(double *)dx_76(D) + ivtmp.146_53 * 8], MEM[(double *)dx_76(D) + ivtmp.146_53 * 8]
	mulsd	xmm1, QWORD PTR [r9+rdx*8]	# _21, MEM[(double *)dy_78(D) + ivtmp.146_53 * 8]
# linpack.c:485:     for ( i = 0; i < m; i++ )
	add	rdx, 1	# ivtmp.146,
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	addsd	xmm0, xmm1	# <retval>, _21
# linpack.c:485:     for ( i = 0; i < m; i++ )
	cmp	rdx, rax	# ivtmp.146, _187
	jne	.L51	#,
# linpack.c:490:     for ( i = m; i < n; i = i + 5 )
	cmp	edi, r8d	# n, tmp.107
	jle	.L67	#,
.L50:
	sub	edi, 1	# _146,
	sub	edi, r8d	# _191, tmp.107
	cmp	edi, 4	# _191,
	jbe	.L52	#,
	mov	ecx, edi	# _191, _191
	mov	edx, 3435973837	# tmp257,
	sal	rax, 3	# _131,
	imul	rcx, rdx	# tmp256, tmp257
	lea	rdx, [r9+rax]	# ivtmp.141,
	add	rax, rsi	# ivtmp.143, dx
	shr	rcx, 34	# _190,
	add	ecx, 1	# niters.104,
	mov	edi, ecx	# _49, niters.104
	shr	edi	# _49
	lea	rdi, [rdi+rdi*4]	# _50,
	sal	rdi, 4	# tmp265,
	add	rdi, rdx	# _52, ivtmp.141
	.p2align 4
	.p2align 3
.L53:
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movupd	xmm7, XMMWORD PTR [rax]	# tmp337, MEM <vector(2) double> [(double *)_39]
	movupd	xmm3, XMMWORD PTR [rdx]	# vect__29.122, MEM <vector(2) double> [(double *)_44]
	add	rdx, 80	# ivtmp.141,
	add	rax, 80	# ivtmp.143,
	movupd	xmm6, XMMWORD PTR [rax-48]	# tmp341, MEM <vector(2) double> [(double *)_39 + 32B]
	movupd	xmm1, XMMWORD PTR [rdx-48]	# vect__29.122, MEM <vector(2) double> [(double *)_44 + 32B]
	mulpd	xmm3, xmm7	# vect__29.122, tmp337
	movupd	xmm4, XMMWORD PTR [rdx-16]	# vect__29.122, MEM <vector(2) double> [(double *)_44 + 64B]
	movupd	xmm7, XMMWORD PTR [rax-64]	# tmp339, MEM <vector(2) double> [(double *)_39 + 16B]
	mulpd	xmm1, xmm6	# vect__29.122, tmp341
	movupd	xmm6, XMMWORD PTR [rax-16]	# tmp345, MEM <vector(2) double> [(double *)_39 + 64B]
	movupd	xmm2, XMMWORD PTR [rdx-64]	# vect__29.122, MEM <vector(2) double> [(double *)_44 + 16B]
	movupd	xmm5, XMMWORD PTR [rdx-32]	# vect__29.122, MEM <vector(2) double> [(double *)_44 + 48B]
	mulpd	xmm4, xmm6	# vect__29.122, tmp345
	mulpd	xmm2, xmm7	# vect__29.122, tmp339
	movupd	xmm7, XMMWORD PTR [rax-32]	# tmp343, MEM <vector(2) double> [(double *)_39 + 48B]
	movapd	xmm6, xmm3	# stmp_dtemp_79.123, vect__29.122
	unpckhpd	xmm3, xmm3	# stmp_dtemp_79.123
	addsd	xmm6, xmm0	# stmp_dtemp_79.123, <retval>
	mulpd	xmm5, xmm7	# vect__29.122, tmp343
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addsd	xmm3, xmm6	# stmp_dtemp_79.123, stmp_dtemp_79.123
	movapd	xmm0, xmm2	# stmp_dtemp_79.123, vect__29.122
	unpckhpd	xmm2, xmm2	# stmp_dtemp_79.123
	addsd	xmm0, xmm3	# stmp_dtemp_79.123, stmp_dtemp_79.123
	addsd	xmm2, xmm0	# stmp_dtemp_79.123, stmp_dtemp_79.123
	movapd	xmm0, xmm1	# stmp_dtemp_79.123, vect__29.122
	unpckhpd	xmm1, xmm1	# stmp_dtemp_79.123
	addsd	xmm0, xmm2	# stmp_dtemp_79.123, stmp_dtemp_79.123
	addsd	xmm1, xmm0	# stmp_dtemp_79.123, stmp_dtemp_79.123
	addsd	xmm1, xmm5	# stmp_dtemp_79.123, stmp_dtemp_79.123
	unpckhpd	xmm5, xmm5	# stmp_dtemp_79.123
	addsd	xmm1, xmm5	# stmp_dtemp_79.123, stmp_dtemp_79.123
	addsd	xmm1, xmm4	# stmp_dtemp_79.123_216, stmp_dtemp_79.123
	unpckhpd	xmm4, xmm4	# stmp_dtemp_79.123_214
	movapd	xmm0, xmm1	# stmp_dtemp_79.123_216, stmp_dtemp_79.123_216
	addsd	xmm0, xmm4	# stmp_dtemp_79.123_216, stmp_dtemp_79.123_214
	cmp	rdi, rdx	# _52, ivtmp.141
	jne	.L53	#,
	test	cl, 1	# niters.104,
	je	.L43	#,
	and	ecx, -2	# niters_vector_mult_vf.106_137,
	lea	eax, [rcx+rcx*4]	# _134,
	add	r8d, eax	# tmp.107, _134
	movsx	rax, r8d	# _187, tmp.107
.L52:
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movsd	xmm1, QWORD PTR [r9+rax*8]	# *_183, *_183
	mulsd	xmm1, QWORD PTR [rsi+rax*8]	# _181, *_185
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addsd	xmm1, xmm0	# _180, <retval>
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	movsd	xmm0, QWORD PTR [r9+8+rax*8]	# *_175, *_175
	mulsd	xmm0, QWORD PTR [rsi+8+rax*8]	# _173, *_177
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	addsd	xmm1, xmm0	# _172, _173
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	movsd	xmm0, QWORD PTR [r9+16+rax*8]	# *_167, *_167
	mulsd	xmm0, QWORD PTR [rsi+16+rax*8]	# _165, *_169
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	addsd	xmm1, xmm0	# _164, _165
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	movsd	xmm0, QWORD PTR [r9+24+rax*8]	# *_159, *_159
	mulsd	xmm0, QWORD PTR [rsi+24+rax*8]	# _157, *_161
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	addsd	xmm1, xmm0	# _156, _157
# linpack.c:496:                     + dx[i+4] * dy[i+4];
	movsd	xmm0, QWORD PTR [r9+32+rax*8]	# *_151, *_151
	mulsd	xmm0, QWORD PTR [rsi+32+rax*8]	# _149, *_153
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addsd	xmm0, xmm1	# <retval>, _156
.L43:
# linpack.c:500: }
	ret	
	.p2align 4,,10
	.p2align 3
.L60:
# linpack.c:455:       ix = 0;
	xor	ecx, ecx	# ix
# linpack.c:453:     if ( 0 <= incx )
	test	edx, edx	# incx
	jns	.L47	#,
# linpack.c:459:       ix = ( - n + 1 ) * incx;
	mov	ecx, 1	# tmp232,
	sub	ecx, edi	# _4, n
# linpack.c:459:       ix = ( - n + 1 ) * incx;
	imul	ecx, edx	# ix, incx
.L47:
# linpack.c:464:       iy = 0;
	xor	eax, eax	# iy
# linpack.c:462:     if ( 0 <= incy )
	test	r8d, r8d	# incy
	jns	.L48	#,
# linpack.c:468:       iy = ( - n + 1 ) * incy;
	mov	eax, 1	# tmp234,
	sub	eax, edi	# _5, n
# linpack.c:468:       iy = ( - n + 1 ) * incy;
	imul	eax, r8d	# iy, incy
.L48:
	movsx	rcx, ecx	# _31, ix
	cdqe
	movsx	rdx, edx	# _34, incx
	movsx	r8, r8d	# _25, incy
	lea	rsi, [rsi+rcx*8]	# ivtmp.135,
	sal	rdx, 3	# _33,
	lea	rcx, [r9+rax*8]	# ivtmp.136,
	sal	r8, 3	# _24,
# linpack.c:464:       iy = 0;
	xor	eax, eax	# i
	pxor	xmm0, xmm0	# <retval>
	.p2align 5
	.p2align 4
	.p2align 3
.L49:
# linpack.c:473:       dtemp = dtemp + dx[ix] * dy[iy];
	movsd	xmm1, QWORD PTR [rsi]	# MEM[(double *)_141], MEM[(double *)_141]
	mulsd	xmm1, QWORD PTR [rcx]	# _14, MEM[(double *)_142]
# linpack.c:471:     for ( i = 0; i < n; i++ )
	add	eax, 1	# i,
# linpack.c:471:     for ( i = 0; i < n; i++ )
	add	rsi, rdx	# ivtmp.135, _33
	add	rcx, r8	# ivtmp.136, _24
# linpack.c:473:       dtemp = dtemp + dx[ix] * dy[iy];
	addsd	xmm0, xmm1	# <retval>, _14
# linpack.c:471:     for ( i = 0; i < n; i++ )
	cmp	edi, eax	# n, i
	jne	.L49	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L59:
	xor	eax, eax	# _187
	jmp	.L50	#
	.p2align 4,,10
	.p2align 3
.L67:
	ret	
	.cfi_endproc
.LFE25:
	.size	ddot, .-ddot
	.p2align 4
	.globl	dgesl
	.type	dgesl, @function
dgesl:
.LFB27:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	r14, rcx	# ipvt, ipvt
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	mov	r13, rdi	# a, a
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r12d, esi	# lda, lda
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	mov	ebp, edx	# n, n
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	mov	rbx, r8	# b, b
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 80
# linpack.c:679:   if ( job == 0 )
	test	r9d, r9d	# job
	je	.L69	#,
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	test	edx, edx	# n
	jle	.L68	#,
	mov	QWORD PTR [rsp], rdi	# %sfp, a
	movsx	rdx, esi	# _241, lda
	mov	esi, ebp	# _255, n
	mov	r11, rdi	# ivtmp.207, a
	mov	DWORD PTR [rsp+8], r12d	# %sfp, lda
	xor	r10d, r10d	# ivtmp.204
	mov	r12, r8	# b, b
	lea	r13, [0+rdx*8]	# _242,
	mov	DWORD PTR [rsp+12], ebp	# %sfp, n
	lea	r15, [8+rdx*8]	# _248,
	mov	rbp, rdi	# ivtmp.209, ivtmp.209
	mov	rbx, rsi	# _255, _255
	.p2align 4
	.p2align 3
.L83:
# linpack.c:710:       t = ddot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	mov	rsi, r11	#, ivtmp.207
	mov	edi, r10d	# ivtmp.204, ivtmp.204
	mov	r8d, 1	#,
	mov	rcx, r12	#, b
	mov	edx, 1	#,
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	add	r11, r13	# ivtmp.207, _242
# linpack.c:710:       t = ddot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	call	ddot	#
	movapd	xmm1, xmm0	# t,
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [r12+r10*8]	# MEM[(double *)b_85(D) + ivtmp.204_237 * 8], MEM[(double *)b_85(D) + ivtmp.204_237 * 8]
	subsd	xmm0, xmm1	# _43, t
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	divsd	xmm0, QWORD PTR [rbp+0]	# _49, MEM[(double *)_251]
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [r12+r10*8], xmm0	# MEM[(double *)b_85(D) + ivtmp.204_237 * 8], _49
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	add	r10, 1	# ivtmp.204,
	add	rbp, r15	# ivtmp.209, _248
	cmp	r10, rbx	# ivtmp.204, _255
	jne	.L83	#,
# linpack.c:714:     for ( k = n-1; 1 <= k; k-- )
	mov	ebp, DWORD PTR [rsp+12]	# n, %sfp
	mov	rbx, r12	# b, b
	mov	r13, QWORD PTR [rsp]	# a, %sfp
	mov	r12d, DWORD PTR [rsp+8]	# lda, %sfp
	mov	r10d, ebp	# k, n
	sub	r10d, 1	# k,
	je	.L68	#,
	lea	edx, [rbp-2]	# _138,
	mov	eax, r12d	# _144, lda
	movsx	r10, r10d	# ivtmp.190, k
	imul	edx, r12d	# _137, lda
	neg	eax	# _144
	cdqe
	lea	r15, [-8+rax*8]	# _141,
	movsx	rax, ebp	# _139, n
	movsx	rdx, edx	# _136, _137
	lea	r11, [rbx-8+rax*8]	# ivtmp.196,
	add	rdx, rax	# _135, _139
	sub	rax, r10	# tmp267, ivtmp.190
	lea	r13, [r13-8+rdx*8]	# ivtmp.194,
	lea	r12, [r14+rax*4]	# _234,
	.p2align 4
	.p2align 3
.L85:
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	edi, ebp	# _73, n
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movsd	xmm8, QWORD PTR [r11-8]	# _53, MEM[(double *)_106 + -8B]
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	rcx, r11	#, ivtmp.196
	mov	edx, 1	#,
	sub	edi, r10d	# _73, ivtmp.190
	mov	r8d, 1	#,
	mov	rsi, r13	#, ivtmp.194
	call	ddot	#
# linpack.c:717:       l = ipvt[k-1];
	movsx	rax, DWORD PTR [r12-8+r10*4]	#, MEM[(int *)_234 + -8B + ivtmp.190_152 * 4]
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	addsd	xmm0, xmm8	# _64, _53
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movsd	QWORD PTR [r11-8], xmm0	# MEM[(double *)_106 + -8B], _64
# linpack.c:719:       if ( l != k )
	cmp	eax, r10d	# l, ivtmp.190
	je	.L84	#,
# linpack.c:721:         t = b[l-1];
	movsd	xmm1, QWORD PTR [rbx-8+rax*8]	# t, *_69
# linpack.c:722:         b[l-1] = b[k-1];
	movsd	QWORD PTR [rbx-8+rax*8], xmm0	# *_69, _64
# linpack.c:723:         b[k-1] = t;
	movsd	QWORD PTR [r11-8], xmm1	# MEM[(double *)_106 + -8B], t
.L84:
# linpack.c:714:     for ( k = n-1; 1 <= k; k-- )
	sub	r10, 1	# ivtmp.190,
	add	r13, r15	# ivtmp.194, _141
	sub	r11, 8	# ivtmp.196,
	test	r10d, r10d	# ivtmp.190
	jg	.L85	#,
.L68:
# linpack.c:728: }
	add	rsp, 24	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L69:
	.cfi_restore_state
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	cmp	edx, 1	# n,
	jle	.L72	#,
# linpack.c:327:   if ( da == 0.0 )
	mov	DWORD PTR [rsp], edx	# %sfp, n
	mov	eax, edx	# _160, n
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	xor	r15d, r15d	# ivtmp.180
	mov	r11d, 1	# ivtmp.176,
# linpack.c:327:   if ( da == 0.0 )
	pxor	xmm2, xmm2	# tmp229
	mov	rbp, rcx	# ipvt, ipvt
	mov	r14, rax	# _160, _160
	.p2align 4
	.p2align 3
.L76:
# linpack.c:683:       l = ipvt[k-1];
	movsx	rdx, DWORD PTR [rbp-4+r11*4]	#, MEM[(int *)ipvt_90(D) + -4B + ivtmp.176_169 * 4]
# linpack.c:684:       t = b[l-1];
	movsd	xmm0, QWORD PTR [rbx-8+rdx*8]	# t, *_6
# linpack.c:686:       if ( l != k )
	cmp	edx, r11d	# l, ivtmp.176
	je	.L73	#,
# linpack.c:688:         b[l-1] = b[k-1];
	movsd	xmm1, QWORD PTR [rbx-8+r11*8]	# _9, MEM[(double *)b_85(D) + -8B + ivtmp.176_169 * 8]
# linpack.c:688:         b[l-1] = b[k-1];
	movsd	QWORD PTR [rbx-8+rdx*8], xmm1	# *_6, _9
# linpack.c:689:         b[k-1] = t;
	movsd	QWORD PTR [rbx-8+r11*8], xmm0	# MEM[(double *)b_85(D) + -8B + ivtmp.176_169 * 8], t
.L73:
# linpack.c:327:   if ( da == 0.0 )
	ucomisd	xmm0, xmm2	# t, tmp229
	jp	.L86	#,
	je	.L74	#,
.L86:
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	edi, DWORD PTR [rsp]	# _156, %sfp
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	movsx	rax, r15d	# _14, ivtmp.180
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	lea	rcx, [rbx+r11*8]	# _153,
	mov	r8d, 1	#,
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	add	rax, r11	# _15, ivtmp.176
	mov	edx, 1	#,
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	lea	rsi, [r13+0+rax*8]	# _17,
	sub	edi, r11d	# _156, ivtmp.176
	call	daxpy.part.0	#
.L74:
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	add	r11, 1	# ivtmp.176,
	add	r15d, r12d	# ivtmp.180, lda
	cmp	r14, r11	# _160, ivtmp.176
	jne	.L76	#,
	movsx	rcx, DWORD PTR [rsp]	#, %sfp
	mov	ebp, r12d	# _186, lda
	mov	QWORD PTR [rsp], rbx	# %sfp, b
	not	ebp	# _186
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	lea	r11d, [rcx-1]	# _70,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [rbx-8+rcx*8]	# *_119, *_119
	movsx	rbp, ebp	# _185, _186
	lea	r14, [rbx+rcx*8]	# ivtmp.168,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	edx, r11d	# _24, _70
	lea	rsi, [0+rbp*8]	# _184,
	imul	edx, r12d	# _24, lda
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	lea	eax, [r11+rdx]	# _230,
	mov	r15d, edx	# ivtmp.166, _24
	movsx	r11, r11d	# ivtmp.164, _70
	cdqe
	sub	r15d, r12d	# ivtmp.166, lda
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	divsd	xmm0, QWORD PTR [r13+0+rax*8]	# _30, *_77
	movsx	rax, r15d	# _179, ivtmp.166
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [rbx-8+rcx*8], xmm0	# *_119, _30
	mov	rbx, rsi	# _184, _184
	add	rax, rcx	# _178, _148
	lea	rbp, [r13-16+rax*8]	# ivtmp.169,
	mov	eax, r12d	# lda, lda
	mov	r12, rbp	# ivtmp.169, ivtmp.169
	mov	ebp, eax	# lda, lda
	.p2align 4
	.p2align 3
.L82:
# linpack.c:327:   if ( da == 0.0 )
	pxor	xmm1, xmm1	# tmp238
	ucomisd	xmm0, xmm1	# _30, tmp238
	jp	.L87	#,
	je	.L79	#,
.L87:
# linpack.c:700:       daxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	movsx	rdx, edx	# _31, _24
	mov	rcx, QWORD PTR [rsp]	#, %sfp
	mov	r8d, 1	#,
	mov	edi, r11d	# ivtmp.164, ivtmp.164
# linpack.c:699:       t = -b[k-1];
	xorpd	xmm0, XMMWORD PTR .LC2[rip]	# t_100,
# linpack.c:700:       daxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	lea	rsi, [r13+0+rdx*8]	# _33,
	mov	edx, 1	#,
	call	daxpy.part.0	#
.L79:
# linpack.c:322:   if ( n <= 0 )
	sub	r11, 1	# ivtmp.164,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [r14-16]	# MEM[(double *)_174 + -16B], MEM[(double *)_174 + -16B]
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	edx, r15d	# _24, ivtmp.166
# linpack.c:322:   if ( n <= 0 )
	sub	r14, 8	# ivtmp.168,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	divsd	xmm0, QWORD PTR [r12]	# _30, MEM[(double *)_172]
	sub	r15d, ebp	# ivtmp.166, lda
# linpack.c:322:   if ( n <= 0 )
	add	r12, rbx	# ivtmp.169, _184
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [r14-8], xmm0	# MEM[(double *)_174 + -16B], _30
# linpack.c:322:   if ( n <= 0 )
	test	r11d, r11d	# ivtmp.164
	jne	.L82	#,
# linpack.c:728: }
	add	rsp, 24	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L72:
	.cfi_restore_state
# linpack.c:696:     for ( k = n; 1 <= k; k-- )
	jne	.L68	#,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [r8]	# *b_85(D), *b_85(D)
	divsd	xmm0, QWORD PTR [rdi]	# _126, *a_87(D)
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [r8], xmm0	# *b_85(D), _126
	jmp	.L68	#
	.cfi_endproc
.LFE27:
	.size	dgesl, .-dgesl
	.p2align 4
	.globl	dscal
	.type	dscal, @function
dscal:
.LFB28:
	.cfi_startproc
# linpack.c:770: {
	movapd	xmm1, xmm0	# sa, sa
# linpack.c:775:   if ( n <= 0 )
	test	edi, edi	# n
	jle	.L96	#,
# linpack.c:778:   else if ( incx == 1 )
	cmp	edx, 1	# incx,
	je	.L103	#,
# linpack.c:800:       ix = 0;
	xor	eax, eax	# ix
# linpack.c:798:     if ( 0 <= incx )
	test	edx, edx	# incx
	jns	.L99	#,
# linpack.c:804:       ix = ( - n + 1 ) * incx;
	mov	eax, 1	# tmp115,
	sub	eax, edi	# _1, n
# linpack.c:804:       ix = ( - n + 1 ) * incx;
	imul	eax, edx	# ix, incx
.L99:
	movsx	rdx, edx	# _31, incx
	cdqe
# linpack.c:800:       ix = 0;
	xor	ecx, ecx	# i
	sal	rdx, 3	# _30,
	lea	rax, [rsi+rax*8]	# ivtmp.221,
	.p2align 5
	.p2align 4
	.p2align 3
.L100:
# linpack.c:809:       x[ix] = sa * x[ix];
	movsd	xmm0, QWORD PTR [rax]	# _8, MEM[(double *)_12]
# linpack.c:807:     for ( i = 0; i < n; i++ )
	add	ecx, 1	# i,
# linpack.c:809:       x[ix] = sa * x[ix];
	mulsd	xmm0, xmm1	# _8, sa
# linpack.c:809:       x[ix] = sa * x[ix];
	movsd	QWORD PTR [rax], xmm0	# MEM[(double *)_12], _8
# linpack.c:807:     for ( i = 0; i < n; i++ )
	add	rax, rdx	# ivtmp.221, _30
	cmp	edi, ecx	# n, i
	jne	.L100	#,
.L96:
# linpack.c:814: }
	ret	
	.p2align 4,,10
	.p2align 3
.L103:
	jmp	dscal.part.0	#
	.cfi_endproc
.LFE28:
	.size	dscal, .-dscal
	.p2align 4
	.globl	idamax
	.type	idamax, @function
idamax:
.LFB29:
	.cfi_startproc
# linpack.c:861: {
	mov	rcx, rsi	# dx, dx
	movsx	rax, edx	#, incx
# linpack.c:869:   if ( n < 1 || incx <= 0 )
	test	edi, edi	# n
	jle	.L117	#,
	test	eax, eax	# incx
	jle	.L117	#,
# linpack.c:878:     return value;
	mov	esi, 1	# <retval>,
# linpack.c:876:   if ( n == 1 )
	cmp	edi, 1	# n,
	je	.L104	#,
# linpack.c:883:     dmax = r8_abs ( dx[0] );
	movsd	xmm1, QWORD PTR [rcx]	# value, *dx_8(D)
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm0, xmm0	# tmp121
# linpack.c:946:     value = -x;
	cmpnlesd	xmm0, xmm1	#, tmp148, value
	movapd	xmm2, xmm1	# tmp146, value
	movapd	xmm3, xmm1	# tmp147, value
	xorpd	xmm2, XMMWORD PTR .LC2[rip]	# tmp146,
	movapd	xmm1, xmm2	# tmp146, tmp146
	andpd	xmm1, xmm0	# tmp146, tmp148
	andnpd	xmm0, xmm3	# tmp150, tmp147
	orpd	xmm1, xmm0	# value, tmp150
# linpack.c:881:   if ( incx == 1 )
	cmp	eax, 1	# incx,
	je	.L124	#,
	sal	rax, 3	# _27,
# linpack.c:890:         dmax = r8_abs ( dx[i] );
	mov	esi, 1	# <retval>,
	mov	edx, 1	# i,
	add	rcx, rax	# ivtmp.243, _27
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm4, xmm4	# tmp134
	.p2align 4
	.p2align 3
.L116:
# linpack.c:902:       if ( dmax < r8_abs ( dx[ix] ) )
	movsd	xmm0, QWORD PTR [rcx]	# value, MEM[(double *)_54]
# linpack.c:946:     value = -x;
	movapd	xmm2, xmm4	# tmp163, tmp134
# linpack.c:904:         value = i + 1;
	add	edx, 1	# i,
# linpack.c:946:     value = -x;
	cmpnlesd	xmm2, xmm0	#, tmp163, value
	movapd	xmm3, xmm0	# tmp161, value
	movapd	xmm5, xmm0	# tmp162, value
	xorpd	xmm3, XMMWORD PTR .LC2[rip]	# tmp161,
	andpd	xmm3, xmm2	# tmp161, tmp163
	andnpd	xmm2, xmm5	# tmp165, tmp162
	movapd	xmm0, xmm3	# tmp164, tmp161
	orpd	xmm0, xmm2	# value, tmp165
# linpack.c:902:       if ( dmax < r8_abs ( dx[ix] ) )
	comisd	xmm0, xmm1	# value, value
# linpack.c:905:         dmax = r8_abs ( dx[ix] );
	maxsd	xmm0, xmm1	# value, value
	cmova	esi, edx	# i,, <retval>
	movapd	xmm1, xmm0	# value, value
# linpack.c:900:     for ( i = 1; i < n; i++ )
	add	rcx, rax	# ivtmp.243, _27
	cmp	edi, edx	# n, i
	jg	.L116	#,
.L104:
# linpack.c:912: }
	mov	eax, esi	#, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L117:
# linpack.c:871:     return value;
	xor	esi, esi	# <retval>
# linpack.c:912: }
	mov	eax, esi	#, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L124:
	add	rcx, 8	# ivtmp.234,
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm4, xmm4	# tmp125
	.p2align 4
	.p2align 3
.L111:
# linpack.c:887:       if ( dmax < r8_abs ( dx[i] ) )
	movsd	xmm0, QWORD PTR [rcx]	# value, MEM[(double *)_58]
# linpack.c:946:     value = -x;
	movapd	xmm2, xmm4	# tmp153, tmp125
# linpack.c:889:         value = i + 1;
	add	eax, 1	# incx,
# linpack.c:946:     value = -x;
	cmpnlesd	xmm2, xmm0	#, tmp153, value
	movapd	xmm3, xmm0	# tmp151, value
	movapd	xmm5, xmm0	# tmp152, value
	xorpd	xmm3, XMMWORD PTR .LC2[rip]	# tmp151,
	andpd	xmm3, xmm2	# tmp151, tmp153
	andnpd	xmm2, xmm5	# tmp155, tmp152
	movapd	xmm0, xmm3	# tmp154, tmp151
	orpd	xmm0, xmm2	# value, tmp155
# linpack.c:887:       if ( dmax < r8_abs ( dx[i] ) )
	comisd	xmm0, xmm1	# value, value
# linpack.c:890:         dmax = r8_abs ( dx[i] );
	maxsd	xmm0, xmm1	# value, value
	cmova	esi, eax	# incx,, <retval>
	movapd	xmm1, xmm0	# value, value
# linpack.c:885:     for ( i = 1; i < n; i++ )
	add	rcx, 8	# ivtmp.234,
	cmp	edi, eax	# n, incx
	jg	.L111	#,
# linpack.c:912: }
	mov	eax, esi	#, <retval>
	ret	
	.cfi_endproc
.LFE29:
	.size	idamax, .-idamax
	.p2align 4
	.globl	dgefa
	.type	dgefa, @function
dgefa:
.LFB26:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	mov	r15d, edx	# n, n
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	r14d, esi	# lda, lda
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 120	#,
	.cfi_def_cfa_offset 176
# linpack.c:548: {
	mov	QWORD PTR [rsp+104], rdi	# %sfp, a
	mov	QWORD PTR [rsp+40], rcx	# %sfp, ipvt
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	cmp	edx, 1	# n,
	jle	.L137	#,
	movsx	rax, esi	# _114, lda
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	mov	DWORD PTR [rsp+12], edx	# %sfp, n
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	mov	r10, rdi	# ivtmp.268, a
	xor	r11d, r11d	# ivtmp.270
	lea	rcx, [8+rax*8]	# _112,
	sal	rax, 3	# _141,
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	mov	r12, rdi	# a, a
# linpack.c:557:   info = 0;
	mov	DWORD PTR [rsp+88], 0	# %sfp,
	mov	QWORD PTR [rsp+56], rcx	# %sfp, _112
	lea	ecx, [rsi+1]	# _67,
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	mov	r9d, 1	# ivtmp.263,
	mov	DWORD PTR [rsp+52], ecx	# %sfp, _67
	mov	ecx, edx	# _157, n
	mov	QWORD PTR [rsp+64], rcx	# %sfp, _157
	lea	ecx, [rdx+1]	# _148,
	mov	QWORD PTR [rsp+96], rax	# %sfp, _141
	mov	DWORD PTR [rsp+48], ecx	# %sfp, _148
	mov	DWORD PTR [rsp+36], 0	# %sfp,
	jmp	.L134	#
	.p2align 4,,10
	.p2align 3
.L138:
# linpack.c:571:       info = k;
	mov	DWORD PTR [rsp+88], r9d	# %sfp, ivtmp.263
	lea	edx, [r14+r11]	# ivtmp.270,
.L127:
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	mov	esi, DWORD PTR [rsp+52]	# _67, %sfp
	add	r9, 1	# ivtmp.263,
	add	DWORD PTR [rsp+36], esi	# %sfp, _67
	mov	r11d, edx	# ivtmp.270, ivtmp.270
	add	r10, QWORD PTR [rsp+56]	# ivtmp.268, %sfp
	cmp	r9, QWORD PTR [rsp+64]	# ivtmp.263, %sfp
	je	.L144	#,
.L134:
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	mov	edi, DWORD PTR [rsp+48]	# _59, %sfp
	mov	edx, 1	#,
	mov	rsi, r10	#, ivtmp.268
	mov	ebp, r9d	# _47, ivtmp.263
	sub	edi, r9d	# _59, ivtmp.263
	call	idamax	#
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	pxor	xmm1, xmm1	# tmp185
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	lea	ebx, [rax+r9]	# _12,
# linpack.c:565:     ipvt[k-1] = l;
	mov	rax, QWORD PTR [rsp+40]	# ipvt, %sfp
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	lea	edx, [rbx-2+r11]	# _16,
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	lea	r15d, [rbx-1]	# l,
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	movsx	rdx, edx	# _17, _16
# linpack.c:565:     ipvt[k-1] = l;
	mov	DWORD PTR [rax-4+r9*4], r15d	# MEM[(int *)ipvt_70(D) + -4B + ivtmp.263_118 * 4], l
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	lea	rdx, [r12+rdx*8]	# _19,
	movsd	xmm0, QWORD PTR [rdx]	# _20, *_19
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	ucomisd	xmm0, xmm1	# _20, tmp185
	jp	.L140	#,
	je	.L138	#,
.L140:
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	mov	edi, DWORD PTR [rsp+12]	# _9, %sfp
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movsx	rsi, DWORD PTR [rsp+36]	# _170, %sfp
	mov	DWORD PTR [rsp+32], r9d	# %sfp, ivtmp.263
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	sub	edi, ebp	# _9, _47
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movsd	xmm1, QWORD PTR [r12+rsi*8]	# prephitmp_162, *_172
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	add	ebp, 1	# j,
# linpack.c:577:     if ( l != k )
	cmp	r9d, r15d	# ivtmp.263, l
	je	.L129	#,
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movsd	QWORD PTR [rdx], xmm1	# *_19, prephitmp_162
# linpack.c:581:       a[k-1+(k-1)*lda] = t;
	movapd	xmm1, xmm0	# prephitmp_162, _20
	movsd	QWORD PTR [r12+rsi*8], xmm0	# *_172, _20
.L129:
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR .LC3[rip]	# t_79,
# linpack.c:588:     dscal ( n-k, t, a+k+(k-1)*lda, 1 );
	lea	rsi, [r10+8]	# _32,
	mov	DWORD PTR [rsp+24], edi	# %sfp, _9
	mov	QWORD PTR [rsp+16], rsi	# %sfp, _32
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	divsd	xmm0, xmm1	# t_79, prephitmp_162
	call	dscal.part.0	#
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	cmp	DWORD PTR [rsp+12], ebp	# %sfp, j
	jl	.L144	#,
	lea	edx, [r14+r11]	# ivtmp.270,
	movsx	rsi, ebx	# _145, _12
	mov	eax, DWORD PTR [rsp+36]	# ivtmp.277, %sfp
# linpack.c:327:   if ( da == 0.0 )
	mov	QWORD PTR [rsp+72], r10	# %sfp, ivtmp.268
	movsx	r8, edx	# _144, ivtmp.270
	mov	QWORD PTR [rsp+80], r9	# %sfp, ivtmp.263
	mov	edi, DWORD PTR [rsp+24]	# _9, %sfp
	pxor	xmm2, xmm2	# tmp202
	add	r8, rsi	# _146, _145
	lea	r13d, [rax+r14]	# ivtmp.258,
	mov	DWORD PTR [rsp+92], edx	# %sfp, ivtmp.270
	lea	rbx, [r12-16+r8*8]	# ivtmp.253,
	mov	r8, r9	# _159, ivtmp.263
	sub	r8, rsi	# _159, _145
	lea	r11, [0+r8*8]	# _121,
	mov	QWORD PTR [rsp+24], r11	# %sfp, _121
	mov	r11d, r14d	# lda, lda
	mov	r14d, r15d	# l, l
	mov	r15d, r13d	# ivtmp.258, ivtmp.258
	mov	r13, QWORD PTR [rsp+96]	# _141, %sfp
	.p2align 4
	.p2align 3
.L133:
# linpack.c:594:       t = a[l-1+(j-1)*lda];
	movsd	xmm0, QWORD PTR [rbx]	# t, MEM[(double *)_127]
# linpack.c:595:       if ( l != k )
	cmp	DWORD PTR [rsp+32], r14d	# %sfp, l
	je	.L130	#,
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movsx	rdx, r15d	# _40, ivtmp.258
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movsd	xmm1, QWORD PTR [r12+rdx*8]	# _43, *_42
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movsd	QWORD PTR [rbx], xmm1	# MEM[(double *)_127], _43
# linpack.c:598:         a[k-1+(j-1)*lda] = t;
	movsd	QWORD PTR [r12+rdx*8], xmm0	# *_42, t
.L130:
# linpack.c:327:   if ( da == 0.0 )
	ucomisd	xmm0, xmm2	# t, tmp202
	jp	.L141	#,
	je	.L131	#,
.L141:
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	mov	rax, QWORD PTR [rsp+24]	# _121, %sfp
	mov	rsi, QWORD PTR [rsp+16]	#, %sfp
	mov	r8d, 1	#,
	mov	edx, 1	#,
	lea	rcx, [rax+16+rbx]	# _119,
	call	daxpy.part.0	#
.L131:
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	add	ebp, 1	# j,
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	add	rbx, r13	# ivtmp.253, _141
	add	r15d, r11d	# ivtmp.258, lda
	cmp	DWORD PTR [rsp+12], ebp	# %sfp, j
	jge	.L133	#,
	mov	r10, QWORD PTR [rsp+72]	# ivtmp.268, %sfp
	mov	r9, QWORD PTR [rsp+80]	# ivtmp.263, %sfp
	mov	r14d, r11d	# lda, lda
	mov	edx, DWORD PTR [rsp+92]	# ivtmp.270, %sfp
	jmp	.L127	#
	.p2align 4,,10
	.p2align 3
.L144:
	mov	r15d, DWORD PTR [rsp+12]	# n, %sfp
.L126:
# linpack.c:605:   ipvt[n-1] = n;
	mov	rcx, QWORD PTR [rsp+40]	# ipvt, %sfp
# linpack.c:605:   ipvt[n-1] = n;
	movsx	rax, r15d	# _48, n
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	mov	esi, r14d	# lda, lda
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	pxor	xmm0, xmm0	# tmp211
# linpack.c:609:     info = n;
	mov	edx, r15d	# n, n
# linpack.c:605:   ipvt[n-1] = n;
	mov	DWORD PTR [rcx-4+rax*4], r15d	# *_50, n
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	lea	eax, [r15-1]	# _51,
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	mov	rcx, QWORD PTR [rsp+104]	# a, %sfp
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	imul	esi, eax	# lda, _51
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	add	eax, esi	# _53, _52
	cdqe
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	ucomisd	xmm0, QWORD PTR [rcx+rax*8]	# tmp211, *_56
# linpack.c:609:     info = n;
	mov	eax, DWORD PTR [rsp+88]	# <retval>, %sfp
	cmovne	edx, eax	# <retval>,, n
	cmovnp	eax, edx	# tmp216,, <retval>
# linpack.c:613: }
	add	rsp, 120	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret	
.L137:
	.cfi_restore_state
# linpack.c:557:   info = 0;
	mov	DWORD PTR [rsp+88], 0	# %sfp,
	jmp	.L126	#
	.cfi_endproc
.LFE26:
	.size	dgefa, .-dgefa
	.p2align 4
	.globl	r8_abs
	.type	r8_abs, @function
r8_abs:
.LFB30:
	.cfi_startproc
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm1, xmm1	# tmp100
# linpack.c:946:     value = -x;
	movapd	xmm2, xmm0	# tmp106, x
	xorpd	xmm2, XMMWORD PTR .LC2[rip]	# tmp106,
	cmpnlesd	xmm1, xmm0	#, tmp108, x
	andpd	xmm2, xmm1	# tmp109, tmp108
	andnpd	xmm1, xmm0	# tmp110, x
	orpd	xmm1, xmm2	# tmp110, tmp109
	movapd	xmm0, xmm1	# x, tmp110
# linpack.c:949: }
	ret	
	.cfi_endproc
.LFE30:
	.size	r8_abs, .-r8_abs
	.p2align 4
	.globl	r8_epsilon
	.type	r8_epsilon, @function
r8_epsilon:
.LFB31:
	.cfi_startproc
	movsd	xmm1, QWORD PTR .LC5[rip]	# tmp103,
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	mov	eax, 52	# ivtmp_2,
# linpack.c:991:     r = r / 2.0;
	movapd	xmm0, xmm1	# r, tmp103
	.p2align 4
	.p2align 4
	.p2align 3
.L149:
	mulsd	xmm0, xmm1	# r, tmp103
	mulsd	xmm0, xmm1	# r, tmp103
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	sub	eax, 2	# ivtmp_2,
	jne	.L149	#,
# linpack.c:993:   r = 2.0 * r;
	addsd	xmm0, xmm0	# r_3, r
# linpack.c:996: }
	ret	
	.cfi_endproc
.LFE31:
	.size	r8_epsilon, .-r8_epsilon
	.p2align 4
	.globl	r8_max
	.type	r8_max, @function
r8_max:
.LFB32:
	.cfi_startproc
# linpack.c:1032:   return value;
	maxsd	xmm0, xmm1	# _3, y
# linpack.c:1033: }
	ret	
	.cfi_endproc
.LFE32:
	.size	r8_max, .-r8_max
	.p2align 4
	.globl	r8_random
	.type	r8_random, @function
r8_random:
.LFB33:
	.cfi_startproc
# linpack.c:1081:   it4 = iseed[3] * m4;
	mov	eax, DWORD PTR [rdi+12]	# _1, MEM[(int *)iseed_32(D) + 12B]
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	mov	r10d, DWORD PTR [rdi+8]	# _2, MEM[(int *)iseed_32(D) + 8B]
# linpack.c:1065: {
	mov	r9, rdi	# iseed, iseed
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	movsd	xmm2, QWORD PTR .LC6[rip]	# tmp192,
# linpack.c:1081:   it4 = iseed[3] * m4;
	imul	ecx, eax, 2549	# it4, _1,
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imul	esi, r10d, 2549	# _3, _2,
	mov	edx, ecx	# tmp141, it4
	sar	edx, 31	# tmp141,
	shr	edx, 20	# tmp142,
	lea	r8d, [rcx+rdx]	# tmp143,
	and	r8d, 4095	# tmp144,
	sub	r8d, edx	# _47, tmp142
# linpack.c:1082:   it3 = it4 / ipw2;
	test	ecx, ecx	# it4
	lea	edx, [rcx+4095]	# tmp149,
	cmovns	edx, ecx	# tmp149,, it4, it4
# linpack.c:1095:   iseed[0] = it1;
	movd	xmm3, r8d	# _47, _47
# linpack.c:1082:   it3 = it4 / ipw2;
	sar	edx, 12	# it3_35,
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	lea	ecx, [rsi+rdx]	# _4,
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imul	edx, eax, 2508	# _5, _1,
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	add	edx, ecx	# it3, _4
	mov	ecx, edx	# tmp152, it3
# linpack.c:1085:   it2 = it3 / ipw2;
	lea	esi, [rdx+4095]	# tmp160,
	sar	ecx, 31	# tmp152,
	shr	ecx, 20	# tmp153,
	lea	edi, [rdx+rcx]	# tmp154,
	and	edi, 4095	# tmp155,
	sub	edi, ecx	# _31, tmp153
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	ecx, DWORD PTR [r9+4], 2549	# _7, MEM[(int *)iseed_32(D) + 4B],
# linpack.c:1085:   it2 = it3 / ipw2;
	test	edx, edx	# it3
	cmovs	edx, esi	# tmp160,, it3
# linpack.c:1095:   iseed[0] = it1;
	movd	xmm1, edi	# tmp187, _31
	punpckldq	xmm1, xmm3	# tmp187, _47
# linpack.c:1085:   it2 = it3 / ipw2;
	sar	edx, 12	# it2_37,
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	edx, ecx	# _8, _7
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	ecx, r10d, 2508	# _9, _2,
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	edx, ecx	# _10, _9
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	ecx, eax, 322	# _11, _1,
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	ecx, edx	# it2, _10
	mov	edx, ecx	# tmp165, it2
# linpack.c:1088:   it1 = it2 / ipw2;
	lea	r11d, [rcx+4095]	# tmp174,
	sar	edx, 31	# tmp165,
	shr	edx, 20	# tmp166,
	lea	esi, [rcx+rdx]	# tmp167,
	and	esi, 4095	# tmp168,
	sub	esi, edx	# _30, tmp166
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	edx, DWORD PTR [r9], 2549	# _13, *iseed_32(D),
# linpack.c:1088:   it1 = it2 / ipw2;
	test	ecx, ecx	# it2
	cmovs	ecx, r11d	# tmp174,, it2
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	r10d, r10d, 322	# _17, _2,
# linpack.c:1095:   iseed[0] = it1;
	movd	xmm4, esi	# _30, _30
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	eax, eax, 494	# _19, _1,
# linpack.c:1088:   it1 = it2 / ipw2;
	sar	ecx, 12	# it1_39,
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	edx, ecx	# _14, it1_39
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	ecx, DWORD PTR [r9+4], 2508	# _15, MEM[(int *)iseed_32(D) + 4B],
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	edx, ecx	# _16, _15
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	edx, r10d	# _18, _17
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	eax, edx	# it1, _18
# linpack.c:1091:   it1 = ( it1 % ipw2 );
	cdq
	shr	edx, 20	# tmp182,
	add	eax, edx	# tmp183, tmp182
	and	eax, 4095	# tmp184,
	sub	eax, edx	# it1_41, tmp182
# linpack.c:1095:   iseed[0] = it1;
	movd	xmm0, eax	# tmp188, it1_41
	punpckldq	xmm0, xmm4	# tmp188, _30
	punpcklqdq	xmm0, xmm1	# _88, tmp187
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	pxor	xmm1, xmm1	# _23
	cvtsi2sd	xmm1, r8d	# _23, _47
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	mulsd	xmm1, xmm2	# _24, tmp192
# linpack.c:1095:   iseed[0] = it1;
	movups	XMMWORD PTR [r9], xmm0	# MEM <vector(4) int> [(int *)iseed_32(D)], _88
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	pxor	xmm0, xmm0	# _22
	cvtsi2sd	xmm0, edi	# _22, _31
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	addsd	xmm1, xmm0	# _25, _22
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	pxor	xmm0, xmm0	# _21
	cvtsi2sd	xmm0, esi	# _21, _30
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	mulsd	xmm1, xmm2	# _26, tmp192
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	addsd	xmm0, xmm1	# _27, _26
# linpack.c:1103:       r * ( ( double ) ( it1 ) 
	pxor	xmm1, xmm1	# _20
	cvtsi2sd	xmm1, eax	# _20, it1_41
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	mulsd	xmm0, xmm2	# _28, tmp192
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	addsd	xmm0, xmm1	# _29, _20
# linpack.c:1102:   value = 
	mulsd	xmm0, xmm2	# value_46, tmp192
# linpack.c:1109: }
	ret	
	.cfi_endproc
.LFE33:
	.size	r8_random, .-r8_random
	.p2align 4
	.globl	r8mat_gen
	.type	r8mat_gen, @function
r8mat_gen:
.LFB34:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r12d, esi	# n, n
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movsx	rbx, edi	#, lda
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	mov	edi, ebx	# _1, lda
	imul	edi, esi	# _1, n
# linpack.c:1132: {
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 80
# linpack.c:1135:   int init[4] = { 1, 2, 3, 1325 };
	movdqa	xmm0, XMMWORD PTR .LC7[rip]	# tmp113,
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	movsx	rdi, edi	# _2, _1
# linpack.c:1135:   int init[4] = { 1, 2, 3, 1325 };
	movaps	XMMWORD PTR [rsp], xmm0	# MEM <vector(4) int> [(int *)&init], tmp113
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	sal	rdi, 3	# _3,
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	call	malloc	#
	mov	r15, rax	# <retval>,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	test	r12d, r12d	# n
	jle	.L157	#,
	movsd	xmm5, QWORD PTR .LC5[rip]	# tmp123,
	mov	rbp, rax	# ivtmp.318, <retval>
	lea	r14, [0+rbx*8]	# _13,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	mov	r13d, 1	# j,
	.p2align 4
	.p2align 3
.L159:
# linpack.c:1132: {
	mov	ebx, 1	# ivtmp.310,
	.p2align 4
	.p2align 3
.L160:
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	mov	rdi, rsp	#,
	call	r8_random	#
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	subsd	xmm0, xmm5	# _12, tmp123
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	movsd	QWORD PTR [rbp-8+rbx*8], xmm0	# MEM[(double *)_21 + -8B + ivtmp.310_33 * 8], _12
# linpack.c:1142:     for ( i = 1; i <= n; i++ )
	add	rbx, 1	# ivtmp.310,
	cmp	r12d, ebx	# n, ivtmp.310
	jge	.L160	#,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	add	r13d, 1	# j,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	add	rbp, r14	# ivtmp.318, _13
	cmp	r12d, r13d	# n, j
	jge	.L159	#,
.L157:
# linpack.c:1149: }
	add	rsp, 24	#,
	.cfi_def_cfa_offset 56
	mov	rax, r15	#, <retval>
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE34:
	.size	r8mat_gen, .-r8mat_gen
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC8:
	.string	"%d %B %Y %I:%M:%S %p"
	.text
	.p2align 4
	.globl	timestamp
	.type	timestamp, @function
timestamp:
.LFB35:
	.cfi_startproc
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
# linpack.c:1188:   now = time ( NULL );
	xor	edi, edi	#
	call	time	#
# linpack.c:1189:   tm = localtime ( &now );
	lea	rdi, [rsp+8]	# tmp100,
# linpack.c:1188:   now = time ( NULL );
	mov	QWORD PTR [rsp+8], rax	# now, _1
# linpack.c:1189:   tm = localtime ( &now );
	call	localtime	#
# linpack.c:1191:   len = strftime ( time_buffer, TIME_SIZE, "%d %B %Y %I:%M:%S %p", tm );
	mov	edx, OFFSET FLAT:.LC8	#,
	mov	esi, 40	#,
	mov	edi, OFFSET FLAT:time_buffer.0	#,
	mov	rcx, rax	#, tm
	call	strftime	#
# linpack.c:1193:   printf ( "%s\n", time_buffer );
	mov	edi, OFFSET FLAT:time_buffer.0	#,
	call	puts	#
# linpack.c:1197: }
	add	rsp, 24	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE35:
	.size	timestamp, .-timestamp
	.section	.rodata.str1.1
.LC9:
	.string	"LINPACK_BENCH"
.LC10:
	.string	"  C version"
.LC11:
	.string	"  The LINPACK benchmark."
.LC12:
	.string	"  Language: C"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.string	"  Datatype: Double precision real"
	.align 8
.LC14:
	.string	"  Matrix order N               = %d\n"
	.align 8
.LC15:
	.string	"  Leading matrix dimension LDA = %d\n"
	.section	.rodata.str1.1
.LC16:
	.string	"LINPACK_BENCH - Fatal error!"
	.section	.rodata.str1.8
	.align 8
.LC17:
	.string	"  The matrix A is apparently singular."
	.section	.rodata.str1.1
.LC18:
	.string	"  Abnormal end of execution."
	.section	.rodata.str1.8
	.align 8
.LC23:
	.string	"     Norm. Resid      Resid           MACHEP         X[1]          X[N]"
	.align 8
.LC24:
	.string	"  %14f  %14f  %14e  %14f  %14f\n"
	.align 8
.LC25:
	.string	"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio"
	.align 8
.LC28:
	.string	"  %9f  %9f  %9f  %9f  %9f  %9f\n"
	.section	.rodata.str1.1
.LC29:
	.string	"  Normal end of execution."
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 104	#,
	.cfi_def_cfa_offset 160
# linpack.c:69:   timestamp ( );
	call	timestamp	#
# linpack.c:70:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:71:   printf ( "LINPACK_BENCH\n" );
	mov	edi, OFFSET FLAT:.LC9	#,
	call	puts	#
# linpack.c:72:   printf ( "  C version\n" );
	mov	edi, OFFSET FLAT:.LC10	#,
	call	puts	#
# linpack.c:73:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:74:   printf ( "  The LINPACK benchmark.\n" );
	mov	edi, OFFSET FLAT:.LC11	#,
	call	puts	#
# linpack.c:75:   printf ( "  Language: C\n" );
	mov	edi, OFFSET FLAT:.LC12	#,
	call	puts	#
# linpack.c:76:   printf ( "  Datatype: Double precision real\n" );
	mov	edi, OFFSET FLAT:.LC13	#,
	call	puts	#
# linpack.c:77:   printf ( "  Matrix order N               = %d\n", N );
	mov	esi, 1000	#,
	mov	edi, OFFSET FLAT:.LC14	#,
	xor	eax, eax	#
	call	printf	#
# linpack.c:78:   printf ( "  Leading matrix dimension LDA = %d\n", LDA );
	mov	esi, 1001	#,
	mov	edi, OFFSET FLAT:.LC15	#,
	xor	eax, eax	#
	call	printf	#
# linpack.c:84:   a = r8mat_gen ( LDA, N );
	mov	esi, 1000	#,
	mov	edi, 1001	#,
	call	r8mat_gen	#
# linpack.c:85:   b = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
# linpack.c:84:   a = r8mat_gen ( LDA, N );
	mov	r14, rax	# a,
# linpack.c:85:   b = ( double * ) malloc ( N * sizeof ( double ) );
	call	malloc	#
# linpack.c:86:   ipvt = ( int * ) malloc ( N * sizeof ( int ) );
	mov	edi, 4000	#,
# linpack.c:85:   b = ( double * ) malloc ( N * sizeof ( double ) );
	mov	r15, rax	# b,
# linpack.c:86:   ipvt = ( int * ) malloc ( N * sizeof ( int ) );
	call	malloc	#
# linpack.c:87:   resid = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
# linpack.c:86:   ipvt = ( int * ) malloc ( N * sizeof ( int ) );
	mov	QWORD PTR [rsp+8], rax	# %sfp,
# linpack.c:87:   resid = ( double * ) malloc ( N * sizeof ( double ) );
	call	malloc	#
# linpack.c:88:   rhs = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
# linpack.c:87:   resid = ( double * ) malloc ( N * sizeof ( double ) );
	mov	QWORD PTR [rsp+24], rax	# %sfp,
# linpack.c:88:   rhs = ( double * ) malloc ( N * sizeof ( double ) );
	call	malloc	#
# linpack.c:89:   x = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
# linpack.c:88:   rhs = ( double * ) malloc ( N * sizeof ( double ) );
	mov	QWORD PTR [rsp+16], rax	# %sfp,
# linpack.c:89:   x = ( double * ) malloc ( N * sizeof ( double ) );
	call	malloc	#
	mov	r10, QWORD PTR [rsp+24]	# resid, %sfp
	mov	rcx, r14	# ivtmp.455, a
	mov	r11, QWORD PTR [rsp+16]	# rhs, %sfp
	mov	rbp, rax	# x,
	lea	rdx, [r14+8000]	# ivtmp.484,
	lea	rsi, [r14+8016000]	# _366,
# linpack.c:91:   a_max = 0.0;
	pxor	xmm1, xmm1	# a_max
.L166:
	lea	rax, [rdx-8000]	# ivtmp.475,
	.p2align 5
	.p2align 4
	.p2align 3
.L169:
# linpack.c:96:       a_max = r8_max ( a_max, a[i+j*LDA] );
	movsd	xmm2, QWORD PTR [rax]	# _6, MEM[(double *)_269]
	movapd	xmm0, xmm1	# a_max, a_max
# linpack.c:94:     for ( i = 0; i < N; i++ )
	add	rax, 8	# ivtmp.475,
	maxsd	xmm0, xmm2	# a_max, _6
	movapd	xmm1, xmm0	# a_max, _162
	cmp	rax, rdx	# ivtmp.475, ivtmp.484
	jne	.L169	#,
# linpack.c:92:   for ( j = 0; j < N; j++ )
	lea	rdx, [rax+8008]	# ivtmp.484,
	cmp	rdx, rsi	# ivtmp.484, _366
	jne	.L166	#,
	movsd	xmm3, QWORD PTR .LC4[rip]	# r,
	lea	r13, [rbp+8000]	# _106,
	mov	rax, rbp	# ivtmp.468, x
.L171:
# linpack.c:102:     x[i] = 1.0;
	movsd	QWORD PTR [rax], xmm3	# MEM[(double *)_104], r
# linpack.c:100:   for ( i = 0; i < N; i++ )
	add	rax, 16	# ivtmp.468,
# linpack.c:102:     x[i] = 1.0;
	movsd	QWORD PTR [rax-8], xmm3	# MEM[(double *)_104], r
# linpack.c:100:   for ( i = 0; i < N; i++ )
	cmp	r13, rax	# _106, ivtmp.468
	jne	.L171	#,
	mov	rbx, r15	# ivtmp.388, b
	lea	rsi, [r14+8008000]	# ivtmp.461,
	lea	r12, [r15+8000]	# _198,
	mov	rdi, r15	# ivtmp.458, b
.L173:
	mov	rdx, rbp	# ivtmp.452, x
	mov	rax, rcx	# ivtmp.449, ivtmp.455
	pxor	xmm2, xmm2	# vect__25.370
	.p2align 6
	.p2align 4
	.p2align 3
.L172:
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movsd	xmm1, QWORD PTR [rdx]	# vect_cst__350, MEM[(double *)_205]
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movupd	xmm6, XMMWORD PTR [rax]	# tmp422, MEM <vector(2) double> [(double *)_293]
# linpack.c:108:     for ( j = 0; j < N; j++ )
	add	rax, 8008	# ivtmp.449,
	add	rdx, 8	# ivtmp.452,
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	unpcklpd	xmm1, xmm1	# vect_cst__350
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	mulpd	xmm1, xmm6	# vect__24.368_351, tmp422
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	addpd	xmm2, xmm1	# vect__25.370, vect__24.368_351
# linpack.c:108:     for ( j = 0; j < N; j++ )
	cmp	rsi, rax	# ivtmp.461, ivtmp.449
	jne	.L172	#,
	movups	XMMWORD PTR [rdi], xmm2	# MEM <vector(2) double> [(double *)_239], vect__25.370
	add	rdi, 16	# ivtmp.458,
	add	rcx, 16	# ivtmp.455,
	add	rsi, 16	# ivtmp.461,
	cmp	r12, rdi	# _198, ivtmp.458
	jne	.L173	#,
# linpack.c:261:   value = ( double ) clock ( ) 
	mov	QWORD PTR [rsp+40], r10	# %sfp, resid
	mov	QWORD PTR [rsp+32], r11	# %sfp, rhs
	movsd	QWORD PTR [rsp+48], xmm0	# %sfp, _162
	call	clock	#
# linpack.c:115:   info = dgefa ( a, LDA, N, ipvt );
	mov	rcx, QWORD PTR [rsp+8]	#, %sfp
	mov	edx, 1000	#,
	mov	rdi, r14	#, a
	mov	esi, 1001	#,
# linpack.c:261:   value = ( double ) clock ( ) 
	mov	QWORD PTR [rsp+16], rax	# %sfp,
# linpack.c:115:   info = dgefa ( a, LDA, N, ipvt );
	call	dgefa	#
# linpack.c:117:   if ( info != 0 )
	mov	r11, QWORD PTR [rsp+32]	# rhs, %sfp
	mov	r10, QWORD PTR [rsp+40]	# resid, %sfp
	test	eax, eax	# <retval>
# linpack.c:115:   info = dgefa ( a, LDA, N, ipvt );
	mov	DWORD PTR [rsp+24], eax	# %sfp, <retval>
# linpack.c:117:   if ( info != 0 )
	movsd	xmm0, QWORD PTR [rsp+48]	# _162, %sfp
	jne	.L221	#,
	mov	QWORD PTR [rsp+64], r11	# %sfp, rhs
# linpack.c:261:   value = ( double ) clock ( ) 
	pxor	xmm1, xmm1	# _165
	cvtsi2sd	xmm1, QWORD PTR [rsp+16]	# _165, %sfp
# linpack.c:261:   value = ( double ) clock ( ) 
	divsd	xmm1, QWORD PTR .LC0[rip]	# _165,
	mov	QWORD PTR [rsp+56], r10	# %sfp, resid
	movsd	QWORD PTR [rsp+48], xmm0	# %sfp, _162
	movsd	QWORD PTR [rsp+16], xmm1	# %sfp, _165
# linpack.c:261:   value = ( double ) clock ( ) 
	call	clock	#
# linpack.c:261:   value = ( double ) clock ( ) 
	pxor	xmm1, xmm1	# _196
	cvtsi2sd	xmm1, rax	# _196, _195
# linpack.c:261:   value = ( double ) clock ( ) 
	divsd	xmm1, QWORD PTR .LC0[rip]	# value_197,
# linpack.c:127:   time[0] = t2 - t1;
	subsd	xmm1, QWORD PTR [rsp+16]	# value_197, %sfp
	movsd	QWORD PTR [rsp+16], xmm1	# %sfp, value_197
# linpack.c:261:   value = ( double ) clock ( ) 
	call	clock	#
# linpack.c:132:   dgesl ( a, LDA, N, ipvt, b, job );
	mov	rcx, QWORD PTR [rsp+8]	#, %sfp
	xor	r9d, r9d	#
	mov	r8, r15	#, b
	mov	edx, 1000	#,
	mov	esi, 1001	#,
# linpack.c:261:   value = ( double ) clock ( ) 
	pxor	xmm1, xmm1	# _193
# linpack.c:132:   dgesl ( a, LDA, N, ipvt, b, job );
	mov	rdi, r14	#, a
# linpack.c:261:   value = ( double ) clock ( ) 
	cvtsi2sd	xmm1, rax	# _193, _192
# linpack.c:261:   value = ( double ) clock ( ) 
	movapd	xmm3, xmm1	# _193, _193
	divsd	xmm3, QWORD PTR .LC0[rip]	# _193,
	movsd	QWORD PTR [rsp+32], xmm3	# %sfp, _193
# linpack.c:132:   dgesl ( a, LDA, N, ipvt, b, job );
	call	dgesl	#
# linpack.c:261:   value = ( double ) clock ( ) 
	call	clock	#
# linpack.c:261:   value = ( double ) clock ( ) 
	pxor	xmm1, xmm1	# _190
# linpack.c:137:   total = time[0] + time[1];
	movsd	xmm6, QWORD PTR [rsp+16]	# total, %sfp
# linpack.c:139:   free ( a );
	mov	rdi, r14	#, a
# linpack.c:261:   value = ( double ) clock ( ) 
	cvtsi2sd	xmm1, rax	# _190, _188
# linpack.c:261:   value = ( double ) clock ( ) 
	divsd	xmm1, QWORD PTR .LC0[rip]	# value_191,
# linpack.c:135:   time[1] = t2 - t1;
	movapd	xmm3, xmm1	# value_191, value_191
	subsd	xmm3, QWORD PTR [rsp+32]	# value_191, %sfp
# linpack.c:137:   total = time[0] + time[1];
	addsd	xmm6, xmm3	# total, _27
# linpack.c:135:   time[1] = t2 - t1;
	movsd	QWORD PTR [rsp+32], xmm3	# %sfp, _27
# linpack.c:137:   total = time[0] + time[1];
	movsd	QWORD PTR [rsp+40], xmm6	# %sfp, total
# linpack.c:139:   free ( a );
	call	free	#
# linpack.c:143:   a = r8mat_gen ( LDA, N );
	mov	esi, 1000	#,
	mov	edi, 1001	#,
	call	r8mat_gen	#
	mov	rdx, r13	# tmp292, _106
	movsd	xmm6, QWORD PTR [rsp+40]	# total, %sfp
	movsd	xmm0, QWORD PTR [rsp+48]	# _162, %sfp
	sub	rdx, rbp	# tmp292, x
	mov	r14, rax	# a,
	mov	r10, QWORD PTR [rsp+56]	# resid, %sfp
	mov	r11, QWORD PTR [rsp+64]	# rhs, %sfp
	and	dl, 8	# tmp292,
	movsd	xmm3, QWORD PTR .LC4[rip]	# r,
	mov	rax, rbp	# ivtmp.442, x
	je	.L176	#,
# linpack.c:145:   for ( i = 0; i < N; i++ )
	lea	rax, [rbp+8]	# ivtmp.442,
# linpack.c:147:     x[i] = 1.0;
	movsd	QWORD PTR [rbp+0], xmm3	# MEM[(double *)_215], r
# linpack.c:145:   for ( i = 0; i < N; i++ )
	cmp	r13, rax	# _106, ivtmp.442
	je	.L218	#,
.L176:
# linpack.c:147:     x[i] = 1.0;
	movsd	QWORD PTR [rax], xmm3	# MEM[(double *)_215], r
# linpack.c:145:   for ( i = 0; i < N; i++ )
	add	rax, 16	# ivtmp.442,
# linpack.c:147:     x[i] = 1.0;
	movsd	QWORD PTR [rax-8], xmm3	# MEM[(double *)_215], r
# linpack.c:145:   for ( i = 0; i < N; i++ )
	cmp	r13, rax	# _106, ivtmp.442
	jne	.L176	#,
.L218:
	lea	rdx, [r14+8008000]	# ivtmp.416,
	mov	rdi, r14	# ivtmp.413, a
	mov	rsi, r11	# ivtmp.432, rhs
	mov	r9, r14	# ivtmp.429, a
	lea	r13, [r11+8000]	# _310,
	mov	rcx, rdx	# ivtmp.435, ivtmp.416
.L178:
	mov	r8, rbp	# ivtmp.426, x
	mov	rax, r9	# ivtmp.420, ivtmp.429
	pxor	xmm2, xmm2	# vect__46.361
	.p2align 6
	.p2align 4
	.p2align 3
.L177:
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movsd	xmm1, QWORD PTR [r8]	# vect_cst__326, MEM[(double *)_49]
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movupd	xmm5, XMMWORD PTR [rax]	# tmp434, MEM <vector(2) double> [(double *)_48]
# linpack.c:153:     for ( j = 0; j < N; j++ )
	add	rax, 8008	# ivtmp.420,
	add	r8, 8	# ivtmp.426,
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	unpcklpd	xmm1, xmm1	# vect_cst__326
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	mulpd	xmm1, xmm5	# vect__45.359_327, tmp434
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	addpd	xmm2, xmm1	# vect__46.361, vect__45.359_327
# linpack.c:153:     for ( j = 0; j < N; j++ )
	cmp	rcx, rax	# ivtmp.435, ivtmp.420
	jne	.L177	#,
	movups	XMMWORD PTR [rsi], xmm2	# MEM <vector(2) double> [(double *)_219], vect__46.361
	add	rsi, 16	# ivtmp.432,
	add	r9, 16	# ivtmp.429,
	add	rcx, 16	# ivtmp.435,
	cmp	rsi, r13	# ivtmp.432, _310
	jne	.L178	#,
	movsd	xmm4, QWORD PTR .LC20[rip]	# tmp269,
	xor	esi, esi	# ivtmp.409
	unpcklpd	xmm4, xmm4	# tmp269
.L180:
# linpack.c:161:     resid[i] = -rhs[i];
	movupd	xmm2, XMMWORD PTR [r11+rsi]	# vect__50.349_88, MEM <vector(2) double> [(double *)rhs_130 + ivtmp.409_14 * 1]
# linpack.c:161:     resid[i] = -rhs[i];
	mov	rcx, r15	# ivtmp.405, b
	mov	rax, rdi	# ivtmp.400, ivtmp.413
	xorpd	xmm2, xmm4	# vect__52.350, tmp269
	.p2align 6
	.p2align 4
	.p2align 3
.L179:
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movsd	xmm1, QWORD PTR [rcx]	# vect_cst__95, MEM[(double *)_17]
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movupd	xmm7, XMMWORD PTR [rax]	# tmp437, MEM <vector(2) double> [(double *)_18]
# linpack.c:162:     for ( j = 0; j < N; j++ )
	add	rax, 8008	# ivtmp.400,
	add	rcx, 8	# ivtmp.405,
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	unpcklpd	xmm1, xmm1	# vect_cst__95
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	mulpd	xmm1, xmm7	# vect__64.346_91, tmp437
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	addpd	xmm2, xmm1	# vect__52.350, vect__64.346_91
# linpack.c:162:     for ( j = 0; j < N; j++ )
	cmp	rax, rdx	# ivtmp.400, ivtmp.416
	jne	.L179	#,
	movups	XMMWORD PTR [r10+rsi], xmm2	# MEM <vector(2) double> [(double *)resid_128 + ivtmp.409_14 * 1], vect__52.350
	add	rsi, 16	# ivtmp.409,
	add	rdi, 16	# ivtmp.413,
	lea	rdx, [rax+16]	# ivtmp.416,
	cmp	rsi, 8000	# ivtmp.409,
	jne	.L180	#,
# linpack.c:168:   resid_max = 0.0;
	pxor	xmm5, xmm5	# resid_max
	mov	rax, r10	# ivtmp.395, resid
	lea	rdx, [r10+8000]	# _307,
# linpack.c:940:   if ( 0.0 <= x )
	movapd	xmm7, xmm5	# tmp233,
.L184:
# linpack.c:171:     resid_max = r8_max ( resid_max, r8_abs ( resid[i] ) );
	movsd	xmm2, QWORD PTR [rax]	# value, MEM[(double *)_31]
# linpack.c:946:     value = -x;
	movapd	xmm1, xmm7	# tmp312, tmp233
# linpack.c:169:   for ( i = 0; i < N; i++ )
	add	rax, 8	# ivtmp.395,
# linpack.c:946:     value = -x;
	cmpnlesd	xmm1, xmm2	#, tmp312, value
	movapd	xmm4, xmm2	# tmp310, value
	movapd	xmm8, xmm2	# tmp311, value
	xorpd	xmm4, XMMWORD PTR .LC2[rip]	# tmp310,
	andpd	xmm4, xmm1	# tmp310, tmp312
	andnpd	xmm1, xmm8	# tmp314, tmp311
	movapd	xmm2, xmm4	# tmp313, tmp310
	orpd	xmm2, xmm1	# value, tmp314
	maxsd	xmm5, xmm2	# resid_max, value
	movapd	xmm1, xmm5	# _225, resid_max
# linpack.c:169:   for ( i = 0; i < N; i++ )
	cmp	rax, rdx	# ivtmp.395, _307
	jne	.L184	#,
# linpack.c:174:   b_max = 0.0;
	pxor	xmm7, xmm7	# b_max
# linpack.c:940:   if ( 0.0 <= x )
	movapd	xmm8, xmm7	# tmp242,
.L188:
# linpack.c:177:     b_max = r8_max ( b_max, r8_abs ( b[i] ) );
	movsd	xmm2, QWORD PTR [rbx]	# value, MEM[(double *)_37]
# linpack.c:946:     value = -x;
	movapd	xmm4, xmm8	# tmp317, tmp242
# linpack.c:175:   for ( i = 0; i < N; i++ )
	add	rbx, 8	# ivtmp.388,
# linpack.c:946:     value = -x;
	cmpnlesd	xmm4, xmm2	#, tmp317, value
	movapd	xmm5, xmm2	# tmp315, value
	movapd	xmm9, xmm2	# tmp316, value
	xorpd	xmm5, XMMWORD PTR .LC2[rip]	# tmp315,
	andpd	xmm5, xmm4	# tmp315, tmp317
	andnpd	xmm4, xmm9	# tmp319, tmp316
	movapd	xmm2, xmm5	# tmp318, tmp315
	orpd	xmm2, xmm4	# value, tmp319
	movapd	xmm4, xmm7	# b_max, b_max
	maxsd	xmm4, xmm2	# b_max, value
	movapd	xmm7, xmm4	# b_max, _281
# linpack.c:175:   for ( i = 0; i < N; i++ )
	cmp	rbx, r12	# ivtmp.388, _198
	jne	.L188	#,
	movsd	xmm2, QWORD PTR .LC5[rip]	# tmp268,
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	mov	eax, 52	# ivtmp_318,
# linpack.c:991:     r = r / 2.0;
	mulsd	xmm3, xmm2	# r, tmp268
.L189:
	mulsd	xmm3, xmm2	# r, tmp268
	mulsd	xmm3, xmm2	# r, tmp268
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	sub	eax, 2	# ivtmp_318,
	jne	.L189	#,
# linpack.c:993:   r = 2.0 * r;
	addsd	xmm3, xmm3	# r, r
# linpack.c:191:     time[3] = -1.0;
	movsd	xmm7, QWORD PTR .LC3[rip]	# time$3,
# linpack.c:993:   r = 2.0 * r;
	movapd	xmm2, xmm3	# r, r
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	movapd	xmm3, xmm1	# _74, _225
	divsd	xmm3, QWORD PTR .LC21[rip]	# _74,
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm3, xmm0	# _75, _162
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm3, xmm4	# _75, _281
	movapd	xmm0, xmm3	# _76, _75
# linpack.c:185:   if ( 0.0 < total )
	pxor	xmm3, xmm3	# tmp256
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm0, xmm2	# residn, r
# linpack.c:185:   if ( 0.0 < total )
	comisd	xmm6, xmm3	# total, tmp256
	jbe	.L190	#,
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	movsd	xmm3, QWORD PTR .LC0[rip]	# _77,
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	movsd	xmm7, QWORD PTR .LC22[rip]	# tmp259,
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	mulsd	xmm3, xmm6	# _77, total
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	divsd	xmm7, xmm3	# time$3, _77
.L190:
# linpack.c:196:   printf ( "\n" );
	mov	edi, 10	#,
	mov	QWORD PTR [rsp+88], r11	# %sfp, rhs
	mov	QWORD PTR [rsp+80], r10	# %sfp, resid
	movsd	QWORD PTR [rsp+48], xmm6	# %sfp, total
	movsd	QWORD PTR [rsp+40], xmm7	# %sfp, time$3
	movsd	QWORD PTR [rsp+72], xmm1	# %sfp, _225
	movsd	QWORD PTR [rsp+64], xmm2	# %sfp, r
	movsd	QWORD PTR [rsp+56], xmm0	# %sfp, residn
	call	putchar	#
# linpack.c:197:   printf ( "     Norm. Resid      Resid           MACHEP         X[1]          X[N]\n" );
	mov	edi, OFFSET FLAT:.LC23	#,
	call	puts	#
# linpack.c:198:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:199:   printf ( "  %14f  %14f  %14e  %14f  %14f\n", residn, resid_max, eps, b[0], b[N-1] );
	movsd	xmm3, QWORD PTR [r15]	#, *b_124
	mov	edi, OFFSET FLAT:.LC24	#,
	movsd	xmm4, QWORD PTR [r15+7992]	#, MEM[(double *)b_124 + 7992B]
	movsd	xmm2, QWORD PTR [rsp+64]	# r, %sfp
	movsd	xmm1, QWORD PTR [rsp+72]	# _225, %sfp
	mov	eax, 5	#,
	movsd	xmm0, QWORD PTR [rsp+56]	# residn, %sfp
	call	printf	#
# linpack.c:200:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:201:   printf ( "      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio\n" );
	mov	edi, OFFSET FLAT:.LC25	#,
	call	puts	#
# linpack.c:202:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:203:   printf ( "  %9f  %9f  %9f  %9f  %9f  %9f\n", 
	movsd	xmm7, QWORD PTR [rsp+40]	# time$3, %sfp
	mov	edi, OFFSET FLAT:.LC28	#,
	movsd	xmm4, QWORD PTR .LC27[rip]	# tmp264,
	movsd	xmm2, QWORD PTR [rsp+48]	#, %sfp
	movsd	xmm1, QWORD PTR [rsp+32]	#, %sfp
	mov	eax, 6	#,
	movsd	xmm0, QWORD PTR [rsp+16]	#, %sfp
	movapd	xmm3, xmm7	#, time$3
	movsd	xmm5, QWORD PTR [rsp+48]	# tmp450, %sfp
	divsd	xmm5, QWORD PTR .LC26[rip]	# tmp450,
	divsd	xmm4, xmm7	#, time$3
	call	printf	#
# linpack.c:206:   free ( a );
	mov	rdi, r14	#, a
	call	free	#
# linpack.c:207:   free ( b );
	mov	rdi, r15	#, b
	call	free	#
# linpack.c:208:   free ( ipvt );
	mov	rdi, QWORD PTR [rsp+8]	#, %sfp
	call	free	#
# linpack.c:209:   free ( resid );
	mov	rdi, QWORD PTR [rsp+80]	#, %sfp
	call	free	#
# linpack.c:210:   free ( rhs );
	mov	rdi, QWORD PTR [rsp+88]	#, %sfp
	call	free	#
# linpack.c:211:   free ( x );
	mov	rdi, rbp	#, x
	call	free	#
# linpack.c:215:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:216:   printf ( "LINPACK_BENCH\n" );
	mov	edi, OFFSET FLAT:.LC9	#,
	call	puts	#
# linpack.c:217:   printf ( "  Normal end of execution.\n" );
	mov	edi, OFFSET FLAT:.LC29	#,
	call	puts	#
# linpack.c:219:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:220:   timestamp ( );
	call	timestamp	#
.L165:
# linpack.c:225: }
	mov	eax, DWORD PTR [rsp+24]	#, %sfp
	add	rsp, 104	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret	
.L221:
	.cfi_restore_state
# linpack.c:119:     printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:120:     printf ( "LINPACK_BENCH - Fatal error!\n" );
	mov	edi, OFFSET FLAT:.LC16	#,
	call	puts	#
# linpack.c:121:     printf ( "  The matrix A is apparently singular.\n" );
	mov	edi, OFFSET FLAT:.LC17	#,
	call	puts	#
# linpack.c:122:     printf ( "  Abnormal end of execution.\n" );
	mov	edi, OFFSET FLAT:.LC18	#,
	call	puts	#
# linpack.c:123:     return 1;
	mov	DWORD PTR [rsp+24], 1	# %sfp,
	jmp	.L165	#
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.local	time_buffer.0
	.comm	time_buffer.0,40,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1093567616
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC3:
	.long	0
	.long	-1074790400
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	0
	.long	1071644672
	.align 8
.LC6:
	.long	0
	.long	1060110336
	.section	.rodata.cst16
	.align 16
.LC7:
	.long	1
	.long	2
	.long	3
	.long	1325
	.set	.LC20,.LC2
	.section	.rodata.cst8
	.align 8
.LC21:
	.long	0
	.long	1083129856
	.align 8
.LC22:
	.long	-1789569707
	.long	1103359365
	.align 8
.LC26:
	.long	824633721
	.long	1068280840
	.align 8
.LC27:
	.long	0
	.long	1073741824
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
