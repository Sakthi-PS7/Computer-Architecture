	.file	"linpack.c"
	.intel_syntax noprefix
# GNU C23 (GCC) version 15.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.2.1, MPFR version 4.2.2, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O1
	.text
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
	.globl	daxpy
	.type	daxpy, @function
daxpy:
.LFB24:
	.cfi_startproc
	mov	r10, rsi	# dx, dx
	mov	r9d, edx	# incx, incx
# linpack.c:327:   if ( da == 0.0 )
	test	edi, edi	# n
	jle	.L3	#,
	pxor	xmm1, xmm1	# tmp182
	ucomisd	xmm0, xmm1	# da, tmp182
	setnp	al	#, tmp181
	mov	edx, 0	# tmp184,
	cmovne	eax, edx	# tmp181,, _25, tmp184
	test	al, al	# _25
	jne	.L3	#,
# linpack.c:335:   if ( incx != 1 || incy != 1 )
	cmp	r9d, 1	# incx,
	jne	.L15	#,
	cmp	r8d, 1	# incy,
	jne	.L15	#,
# linpack.c:367:     m = n % 4;
	mov	eax, edi	# tmp202, n
	sar	eax, 31	# tmp202,
	shr	eax, 30	# tmp203,
	lea	r8d, [rdi+rax]	# tmp204,
	and	r8d, 3	# tmp205,
	sub	r8d, eax	# m_74, tmp203
# linpack.c:369:     for ( i = 0; i < m; i++ )
	test	r8d, r8d	# m_74
	jle	.L10	#,
	movsx	rdx, r8d	# _153, m_74
	mov	eax, 0	# ivtmp.47,
	.p2align 5
.L11:
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movapd	xmm1, xmm0	# _24, da
	mulsd	xmm1, QWORD PTR [r10+rax*8]	# _24, MEM[(double *)dx_77(D) + ivtmp.47_151 * 8]
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	addsd	xmm1, QWORD PTR [rcx+rax*8]	# _26, MEM[(double *)dy_76(D) + ivtmp.47_151 * 8]
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movsd	QWORD PTR [rcx+rax*8], xmm1	# MEM[(double *)dy_76(D) + ivtmp.47_151 * 8], _26
# linpack.c:369:     for ( i = 0; i < m; i++ )
	add	rax, 1	# ivtmp.47,
	cmp	rax, rdx	# ivtmp.47, _153
	jne	.L11	#,
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	cmp	edi, r8d	# n, m_74
	jle	.L3	#,
.L10:
	movsx	r9, r8d	# _117, m_74
	lea	rdx, [0+r9*8]	# _118,
	lea	rax, [rdx+rcx]	# ivtmp.42,
	add	rdx, r10	# ivtmp.43, dx
	lea	esi, [rdi-1]	# _93,
	sub	rsi, r8	# _143, m_74
	and	esi, 4294967292	# _145,
	add	rsi, r9	# _146, _117
	lea	rcx, [rcx+32+rsi*8]	# _150,
.L12:
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movapd	xmm1, xmm0	# _33, da
	mulsd	xmm1, QWORD PTR [rdx]	# _33, MEM[(double *)_134]
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	addsd	xmm1, QWORD PTR [rax]	# _34, MEM[(double *)_126]
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movsd	QWORD PTR [rax], xmm1	# MEM[(double *)_126], _34
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movapd	xmm1, xmm0	# _41, da
	mulsd	xmm1, QWORD PTR [rdx+8]	# _41, MEM[(double *)_134 + 8B]
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	addsd	xmm1, QWORD PTR [rax+8]	# _42, MEM[(double *)_126 + 8B]
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movsd	QWORD PTR [rax+8], xmm1	# MEM[(double *)_126 + 8B], _42
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movapd	xmm1, xmm0	# _49, da
	mulsd	xmm1, QWORD PTR [rdx+16]	# _49, MEM[(double *)_134 + 16B]
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	addsd	xmm1, QWORD PTR [rax+16]	# _50, MEM[(double *)_126 + 16B]
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movsd	QWORD PTR [rax+16], xmm1	# MEM[(double *)_126 + 16B], _50
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movapd	xmm1, xmm0	# _57, da
	mulsd	xmm1, QWORD PTR [rdx+24]	# _57, MEM[(double *)_134 + 24B]
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	addsd	xmm1, QWORD PTR [rax+24]	# _58, MEM[(double *)_126 + 24B]
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movsd	QWORD PTR [rax+24], xmm1	# MEM[(double *)_126 + 24B], _58
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	add	rax, 32	# ivtmp.42,
	add	rdx, 32	# ivtmp.43,
	cmp	rax, rcx	# ivtmp.42, _150
	jne	.L12	#,
.L3:
# linpack.c:383: }
	ret	
.L15:
# linpack.c:339:       ix = 0;
	mov	edx, 0	# ix,
# linpack.c:337:     if ( 0 <= incx )
	test	r9d, r9d	# incx
	js	.L19	#,
.L7:
# linpack.c:348:       iy = 0;
	mov	eax, 0	# iy,
# linpack.c:346:     if ( 0 <= incy )
	test	r8d, r8d	# incy
	js	.L20	#,
.L8:
	movsx	r8, r8d	# _61, incy
	lea	rsi, [0+r8*8]	# _67,
	cdqe
	lea	rax, [rcx+rax*8]	# ivtmp.34,
	movsx	r8, r9d	# _59, incx
	sal	r8, 3	# _100,
	movsx	rdx, edx	# _94, ix
	lea	rcx, [r10+rdx*8]	# ivtmp.35,
# linpack.c:348:       iy = 0;
	mov	edx, 0	# i,
	.p2align 5
.L9:
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	movapd	xmm1, xmm0	# _14, da
	mulsd	xmm1, QWORD PTR [rcx]	# _14, MEM[(double *)_113]
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	addsd	xmm1, QWORD PTR [rax]	# _15, MEM[(double *)_111]
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	movsd	QWORD PTR [rax], xmm1	# MEM[(double *)_111], _15
# linpack.c:355:     for ( i = 0; i < n; i++ )
	add	edx, 1	# i,
# linpack.c:355:     for ( i = 0; i < n; i++ )
	add	rax, rsi	# ivtmp.34, _67
	add	rcx, r8	# ivtmp.35, _100
	cmp	edi, edx	# n, i
	jg	.L9	#,
	ret	
.L19:
# linpack.c:343:       ix = ( - n + 1 ) * incx;
	mov	edx, 1	# tmp190,
	sub	edx, edi	# _4, n
# linpack.c:343:       ix = ( - n + 1 ) * incx;
	imul	edx, r9d	# ix, incx
	jmp	.L7	#
.L20:
# linpack.c:352:       iy = ( - n + 1 ) * incy;
	mov	eax, 1	# tmp192,
	sub	eax, edi	# _5, n
# linpack.c:352:       iy = ( - n + 1 ) * incy;
	imul	eax, r8d	# iy, incy
	jmp	.L8	#
	.cfi_endproc
.LFE24:
	.size	daxpy, .-daxpy
	.globl	ddot
	.type	ddot, @function
ddot:
.LFB25:
	.cfi_startproc
# linpack.c:445:     return dtemp;
	pxor	xmm0, xmm0	# <retval>
# linpack.c:443:   if ( n <= 0 )
	test	edi, edi	# n
	jle	.L21	#,
# linpack.c:451:   if ( incx != 1 || incy != 1 )
	cmp	edx, 1	# incx,
	jne	.L35	#,
	cmp	r8d, 1	# incy,
	jne	.L35	#,
# linpack.c:483:     m = n % 5;
	movsx	rax, edi	# n, n
	imul	rax, rax, 1717986919	# tmp173, n,
	sar	rax, 33	# tmp175,
	mov	edx, edi	# tmp176, n
	sar	edx, 31	# tmp176,
	sub	eax, edx	# m, tmp176
	lea	edx, [rax+rax*4]	# tmp179,
	mov	eax, edi	# m, n
	sub	eax, edx	# m, tmp179
# linpack.c:485:     for ( i = 0; i < m; i++ )
	test	eax, eax	# m
	jle	.L34	#,
	movsx	r8, eax	# _117, m
	mov	edx, 0	# ivtmp.78,
# linpack.c:441:   dtemp = 0.0;
	pxor	xmm0, xmm0	# <retval>
	.p2align 5
.L29:
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	movsd	xmm1, QWORD PTR [rsi+rdx*8]	# MEM[(double *)dx_79(D) + ivtmp.78_115 * 8], MEM[(double *)dx_79(D) + ivtmp.78_115 * 8]
	mulsd	xmm1, QWORD PTR [rcx+rdx*8]	# _23, MEM[(double *)dy_81(D) + ivtmp.78_115 * 8]
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	addsd	xmm0, xmm1	# <retval>, _23
# linpack.c:485:     for ( i = 0; i < m; i++ )
	add	rdx, 1	# ivtmp.78,
	cmp	rdx, r8	# ivtmp.78, _117
	jne	.L29	#,
# linpack.c:490:     for ( i = m; i < n; i = i + 5 )
	cmp	edi, eax	# n, m
	jle	.L39	#,
.L28:
	cdqe
.L30:
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movsd	xmm1, QWORD PTR [rsi+rax*8]	# MEM[(double *)dx_79(D) + ivtmp.72_111 * 8], MEM[(double *)dx_79(D) + ivtmp.72_111 * 8]
	mulsd	xmm1, QWORD PTR [rcx+rax*8]	# _30, MEM[(double *)dy_81(D) + ivtmp.72_111 * 8]
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addsd	xmm1, xmm0	# _31, <retval>
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	movsd	xmm0, QWORD PTR [rsi+8+rax*8]	# MEM[(double *)dx_79(D) + 8B + ivtmp.72_111 * 8], MEM[(double *)dx_79(D) + 8B + ivtmp.72_111 * 8]
	mulsd	xmm0, QWORD PTR [rcx+8+rax*8]	# _38, MEM[(double *)dy_81(D) + 8B + ivtmp.72_111 * 8]
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	addsd	xmm1, xmm0	# _39, _38
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	movsd	xmm0, QWORD PTR [rsi+16+rax*8]	# MEM[(double *)dx_79(D) + 16B + ivtmp.72_111 * 8], MEM[(double *)dx_79(D) + 16B + ivtmp.72_111 * 8]
	mulsd	xmm0, QWORD PTR [rcx+16+rax*8]	# _46, MEM[(double *)dy_81(D) + 16B + ivtmp.72_111 * 8]
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	addsd	xmm1, xmm0	# _47, _46
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	movsd	xmm0, QWORD PTR [rsi+24+rax*8]	# MEM[(double *)dx_79(D) + 24B + ivtmp.72_111 * 8], MEM[(double *)dx_79(D) + 24B + ivtmp.72_111 * 8]
	mulsd	xmm0, QWORD PTR [rcx+24+rax*8]	# _54, MEM[(double *)dy_81(D) + 24B + ivtmp.72_111 * 8]
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	addsd	xmm1, xmm0	# _55, _54
# linpack.c:496:                     + dx[i+4] * dy[i+4];
	movsd	xmm0, QWORD PTR [rsi+32+rax*8]	# MEM[(double *)dx_79(D) + 32B + ivtmp.72_111 * 8], MEM[(double *)dx_79(D) + 32B + ivtmp.72_111 * 8]
	mulsd	xmm0, QWORD PTR [rcx+32+rax*8]	# _62, MEM[(double *)dy_81(D) + 32B + ivtmp.72_111 * 8]
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addsd	xmm0, xmm1	# <retval>, _55
# linpack.c:490:     for ( i = m; i < n; i = i + 5 )
	add	rax, 5	# ivtmp.72,
	cmp	edi, eax	# n, ivtmp.72
	jg	.L30	#,
.L21:
# linpack.c:500: }
	ret	
.L35:
# linpack.c:455:       ix = 0;
	mov	r10d, 0	# ix,
# linpack.c:453:     if ( 0 <= incx )
	test	edx, edx	# incx
	js	.L40	#,
.L25:
# linpack.c:464:       iy = 0;
	mov	eax, 0	# iy,
# linpack.c:462:     if ( 0 <= incy )
	test	r8d, r8d	# incy
	js	.L41	#,
.L26:
	movsx	rdx, edx	# _68, incx
	lea	r9, [0+rdx*8]	# _64,
	movsx	r10, r10d	# _71, ix
	lea	rsi, [rsi+r10*8]	# ivtmp.66,
	movsx	r8, r8d	# _96, incy
	sal	r8, 3	# _97,
	cdqe
	lea	rdx, [rcx+rax*8]	# ivtmp.67,
# linpack.c:464:       iy = 0;
	mov	eax, 0	# i,
	pxor	xmm0, xmm0	# <retval>
	.p2align 5
.L27:
# linpack.c:473:       dtemp = dtemp + dx[ix] * dy[iy];
	movsd	xmm1, QWORD PTR [rsi]	# MEM[(double *)_109], MEM[(double *)_109]
	mulsd	xmm1, QWORD PTR [rdx]	# _14, MEM[(double *)_110]
# linpack.c:473:       dtemp = dtemp + dx[ix] * dy[iy];
	addsd	xmm0, xmm1	# <retval>, _14
# linpack.c:471:     for ( i = 0; i < n; i++ )
	add	eax, 1	# i,
# linpack.c:471:     for ( i = 0; i < n; i++ )
	add	rsi, r9	# ivtmp.66, _64
	add	rdx, r8	# ivtmp.67, _97
	cmp	edi, eax	# n, i
	jne	.L27	#,
	ret	
.L40:
# linpack.c:459:       ix = ( - n + 1 ) * incx;
	mov	r10d, 1	# tmp161,
	sub	r10d, edi	# _4, n
# linpack.c:459:       ix = ( - n + 1 ) * incx;
	imul	r10d, edx	# ix, incx
	jmp	.L25	#
.L41:
# linpack.c:468:       iy = ( - n + 1 ) * incy;
	mov	eax, 1	# tmp163,
	sub	eax, edi	# _5, n
# linpack.c:468:       iy = ( - n + 1 ) * incy;
	imul	eax, r8d	# iy, incy
	jmp	.L26	#
.L39:
	ret	
.L34:
# linpack.c:441:   dtemp = 0.0;
	pxor	xmm0, xmm0	# <retval>
	jmp	.L28	#
	.cfi_endproc
.LFE25:
	.size	ddot, .-ddot
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
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 96
	mov	eax, edx	# n, n
	mov	r13, rcx	# ipvt, ipvt
	mov	rbx, r8	# b, b
# linpack.c:679:   if ( job == 0 )
	test	r9d, r9d	# job
	je	.L43	#,
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	test	edx, edx	# n
	jle	.L42	#,
	movsx	rdx, esi	# _220, lda
	sal	rdx, 3	# _221,
	lea	r15, [rdx+8]	# _227,
	lea	ecx, [rax-1]	# _232,
	mov	DWORD PTR [rsp+8], ecx	# %sfp, _232
	mov	ecx, eax	# _234, n
	mov	QWORD PTR [rsp], rcx	# %sfp, _234
	mov	r14, rdi	# ivtmp.138, a
	mov	r12, rdi	# ivtmp.136, a
	mov	ebp, 0	# ivtmp.133,
	mov	QWORD PTR [rsp+16], rdi	# %sfp, a
	mov	DWORD PTR [rsp+24], esi	# %sfp, lda
	mov	DWORD PTR [rsp+28], eax	# %sfp, n
	mov	QWORD PTR [rsp+32], r13	# %sfp, ipvt
	mov	r13, rdx	# _221, _221
.L51:
# linpack.c:710:       t = ddot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	mov	r8d, 1	#,
	mov	rcx, rbx	#, b
	mov	edx, 1	#,
	mov	rsi, r12	#, ivtmp.136
	mov	edi, ebp	# ivtmp.133, ivtmp.133
	call	ddot	#
	movapd	xmm1, xmm0	# t,
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [rbx+rbp*8]	# MEM[(double *)b_86(D) + ivtmp.133_216 * 8], MEM[(double *)b_86(D) + ivtmp.133_216 * 8]
	subsd	xmm0, xmm1	# _44, t
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	divsd	xmm0, QWORD PTR [r14]	# _50, MEM[(double *)_230]
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [rbx+rbp*8], xmm0	# MEM[(double *)b_86(D) + ivtmp.133_216 * 8], _50
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	add	rbp, 1	# ivtmp.133,
	add	r12, r13	# ivtmp.136, _221
	add	r14, r15	# ivtmp.138, _227
	mov	rax, QWORD PTR [rsp]	# _234, %sfp
	cmp	rbp, rax	# ivtmp.133, _234
	jne	.L51	#,
# linpack.c:714:     for ( k = n-1; 1 <= k; k-- )
	mov	rdi, QWORD PTR [rsp+16]	# a, %sfp
	mov	esi, DWORD PTR [rsp+24]	# lda, %sfp
	mov	eax, DWORD PTR [rsp+28]	# n, %sfp
	mov	r13, QWORD PTR [rsp+32]	# ipvt, %sfp
	cmp	eax, 1	# n,
	jle	.L42	#,
	movsx	rbp, DWORD PTR [rsp+8]	# ivtmp.119, %sfp
	mov	edx, esi	# _178, lda
	neg	edx	# _178
	movsx	rdx, edx	# _179, _178
	lea	r15, [-8+rdx*8]	# _181,
	movsx	rdx, eax	# _183, n
	lea	ecx, [rax-2]	# _184,
	imul	ecx, esi	# _185, lda
	movsx	rcx, ecx	# _186, _185
	add	rcx, rdx	# _187, _183
	lea	r14, [rdi-8+rcx*8]	# ivtmp.123,
	lea	r12, [rbx-8+rdx*8]	# ivtmp.125,
	sub	rdx, rbp	# tmp252, ivtmp.119
	lea	rsi, [r13+0+rdx*4]	# _213,
	mov	r13d, eax	# n, n
	mov	QWORD PTR [rsp+8], rbx	# %sfp, b
	mov	rbx, rsi	# _213, _213
	jmp	.L53	#
.L43:
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	cmp	edx, 1	# n,
	jle	.L46	#,
	movsx	rdx, esi	# _153, lda
	lea	r14, [8+rdx*8]	# _155,
	lea	r12, [rdi+8]	# ivtmp.109,
	mov	r15d, eax	# _169, n
	mov	ebp, 1	# ivtmp.104,
	mov	QWORD PTR [rsp+8], rdi	# %sfp, a
	mov	DWORD PTR [rsp+16], esi	# %sfp, lda
	mov	DWORD PTR [rsp], eax	# %sfp, n
	jmp	.L48	#
.L47:
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	lea	rcx, [rbx+rbp*8]	# _165,
	mov	edi, DWORD PTR [rsp]	# _162, %sfp
	sub	edi, ebp	# _162, ivtmp.104
	mov	r8d, 1	#,
	mov	edx, 1	#,
	mov	rsi, r12	#, ivtmp.109
	call	daxpy	#
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	add	rbp, 1	# ivtmp.104,
	add	r12, r14	# ivtmp.109, _155
	cmp	rbp, r15	# ivtmp.104, _169
	je	.L59	#,
.L48:
# linpack.c:683:       l = ipvt[k-1];
	mov	eax, DWORD PTR [r13-4+rbp*4]	# l, MEM[(int *)ipvt_91(D) + -4B + ivtmp.104_149 * 4]
# linpack.c:684:       t = b[l-1];
	movsx	rdx, eax	# _4, l
	lea	rdx, [rbx-8+rdx*8]	# _6,
# linpack.c:684:       t = b[l-1];
	movsd	xmm0, QWORD PTR [rdx]	# t, *_6
# linpack.c:686:       if ( l != k )
	cmp	eax, ebp	# l, ivtmp.104
	je	.L47	#,
# linpack.c:688:         b[l-1] = b[k-1];
	movsd	xmm1, QWORD PTR [rbx-8+rbp*8]	# _9, MEM[(double *)b_86(D) + -8B + ivtmp.104_149 * 8]
# linpack.c:688:         b[l-1] = b[k-1];
	movsd	QWORD PTR [rdx], xmm1	# *_6, _9
# linpack.c:689:         b[k-1] = t;
	movsd	QWORD PTR [rbx-8+rbp*8], xmm0	# MEM[(double *)b_86(D) + -8B + ivtmp.104_149 * 8], t
	jmp	.L47	#
.L59:
	mov	rdi, QWORD PTR [rsp+8]	# a, %sfp
	mov	esi, DWORD PTR [rsp+16]	# lda, %sfp
	mov	eax, DWORD PTR [rsp]	# n, %sfp
.L49:
	movsx	rbp, eax	# ivtmp.94, n
	mov	r15d, esi	# _73, lda
	not	r15d	# _73
	movsx	r15, r15d	# _77, _73
	sal	r15, 3	# _72,
	sub	eax, 1	# _119,
	imul	eax, esi	# _117, lda
	cdqe
	lea	rdx, [rbp+0+rax]	# _113,
	lea	r13, [rdi-8+rdx*8]	# ivtmp.97,
	neg	esi	# _136
	movsx	r14, esi	# _137, _136
	sal	r14, 3	# _138,
	lea	r12, [rdi+rax*8]	# ivtmp.100,
.L50:
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [rbx-8+rbp*8]	# MEM[(double *)b_86(D) + -8B + ivtmp.94_116 * 8], MEM[(double *)b_86(D) + -8B + ivtmp.94_116 * 8]
	divsd	xmm0, QWORD PTR [r13+0]	# _30, MEM[(double *)_145]
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [rbx-8+rbp*8], xmm0	# MEM[(double *)b_86(D) + -8B + ivtmp.94_116 * 8], _30
# linpack.c:699:       t = -b[k-1];
	xorpd	xmm0, XMMWORD PTR .LC2[rip]	# t_101,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	lea	edi, [rbp-1]	# _147,
# linpack.c:700:       daxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	mov	r8d, 1	#,
	mov	rcx, rbx	#, b
	mov	edx, 1	#,
	mov	rsi, r12	#, ivtmp.100
	call	daxpy	#
# linpack.c:696:     for ( k = n; 1 <= k; k-- )
	sub	rbp, 1	# ivtmp.94,
	add	r13, r15	# ivtmp.97, _72
	add	r12, r14	# ivtmp.100, _138
	test	ebp, ebp	# ivtmp.94
	jg	.L50	#,
.L42:
# linpack.c:728: }
	add	rsp, 40	#,
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
.L46:
	.cfi_restore_state
# linpack.c:696:     for ( k = n; 1 <= k; k-- )
	test	edx, edx	# n
	jle	.L42	#,
	jmp	.L49	#
.L52:
# linpack.c:714:     for ( k = n-1; 1 <= k; k-- )
	sub	rbp, 1	# ivtmp.119,
	add	r14, r15	# ivtmp.123, _181
	sub	r12, 8	# ivtmp.125,
	test	ebp, ebp	# ivtmp.119
	jle	.L42	#,
.L53:
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movsd	xmm2, QWORD PTR [r12-8]	# _54, MEM[(double *)_198 + -8B]
	movsd	QWORD PTR [rsp], xmm2	# %sfp, _54
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	edi, r13d	# _204, n
	sub	edi, ebp	# _204, ivtmp.119
	mov	r8d, 1	#,
	mov	rcx, r12	#, ivtmp.125
	mov	edx, 1	#,
	mov	rsi, r14	#, ivtmp.123
	call	ddot	#
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	addsd	xmm0, QWORD PTR [rsp]	# _65, %sfp
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movsd	QWORD PTR [r12-8], xmm0	# MEM[(double *)_198 + -8B], _65
# linpack.c:717:       l = ipvt[k-1];
	mov	eax, DWORD PTR [rbx-8+rbp*4]	# l, MEM[(int *)_213 + -8B + ivtmp.119_170 * 4]
# linpack.c:719:       if ( l != k )
	cmp	eax, ebp	# l, ivtmp.119
	je	.L52	#,
# linpack.c:721:         t = b[l-1];
	cdqe
	mov	rsi, QWORD PTR [rsp+8]	# b, %sfp
	lea	rax, [rsi-8+rax*8]	# _70,
# linpack.c:721:         t = b[l-1];
	movsd	xmm1, QWORD PTR [rax]	# t, *_70
# linpack.c:722:         b[l-1] = b[k-1];
	movsd	QWORD PTR [rax], xmm0	# *_70, _65
# linpack.c:723:         b[k-1] = t;
	movsd	QWORD PTR [r12-8], xmm1	# MEM[(double *)_198 + -8B], t
	jmp	.L52	#
	.cfi_endproc
.LFE27:
	.size	dgesl, .-dgesl
	.globl	dscal
	.type	dscal, @function
dscal:
.LFB28:
	.cfi_startproc
	mov	ecx, edi	# n, n
	mov	rdi, rsi	# x, x
# linpack.c:775:   if ( n <= 0 )
	test	ecx, ecx	# n
	jle	.L60	#,
# linpack.c:778:   else if ( incx == 1 )
	cmp	edx, 1	# incx,
	je	.L72	#,
# linpack.c:800:       ix = 0;
	mov	eax, 0	# ix,
# linpack.c:798:     if ( 0 <= incx )
	test	edx, edx	# incx
	js	.L73	#,
.L66:
	movsx	rdx, edx	# _95, incx
	lea	rsi, [0+rdx*8]	# _96,
	cdqe
	lea	rax, [rdi+rax*8]	# ivtmp.162,
# linpack.c:800:       ix = 0;
	mov	edx, 0	# i,
	.p2align 5
.L67:
# linpack.c:809:       x[ix] = sa * x[ix];
	movapd	xmm1, xmm0	# _38, sa
	mulsd	xmm1, QWORD PTR [rax]	# _38, MEM[(double *)_101]
# linpack.c:809:       x[ix] = sa * x[ix];
	movsd	QWORD PTR [rax], xmm1	# MEM[(double *)_101], _38
# linpack.c:807:     for ( i = 0; i < n; i++ )
	add	edx, 1	# i,
# linpack.c:807:     for ( i = 0; i < n; i++ )
	add	rax, rsi	# ivtmp.162, _96
	cmp	ecx, edx	# n, i
	jne	.L67	#,
.L60:
# linpack.c:814: }
	ret	
.L72:
# linpack.c:780:     m = n % 5;
	movsx	rdx, ecx	# n, n
	imul	rdx, rdx, 1717986919	# tmp138, n,
	sar	rdx, 33	# tmp140,
	mov	eax, ecx	# tmp141, n
	sar	eax, 31	# tmp141,
	sub	edx, eax	# m, tmp141
	lea	eax, [rdx+rdx*4]	# tmp144,
	mov	edx, ecx	# m, n
	sub	edx, eax	# m, tmp144
# linpack.c:782:     for ( i = 0; i < m; i++ )
	test	edx, edx	# m
	jle	.L63	#,
	mov	rax, rsi	# ivtmp.154, x
	movsx	rsi, edx	# _89, m
	lea	rsi, [rdi+rsi*8]	# _92,
	.p2align 5
.L64:
# linpack.c:784:       x[i] = sa * x[i];
	movapd	xmm1, xmm0	# _5, sa
	mulsd	xmm1, QWORD PTR [rax]	# _5, MEM[(double *)_87]
# linpack.c:784:       x[i] = sa * x[i];
	movsd	QWORD PTR [rax], xmm1	# MEM[(double *)_87], _5
# linpack.c:782:     for ( i = 0; i < m; i++ )
	add	rax, 8	# ivtmp.154,
	cmp	rax, rsi	# ivtmp.154, _92
	jne	.L64	#,
# linpack.c:787:     for ( i = m; i < n; i = i + 5 )
	cmp	ecx, edx	# n, m
	jle	.L60	#,
.L63:
	movsx	rax, edx	# _41, m
	lea	rax, [rdi+rax*8]	# ivtmp.149,
.L65:
# linpack.c:789:       x[i]   = sa * x[i];
	movapd	xmm1, xmm0	# _10, sa
	mulsd	xmm1, QWORD PTR [rax]	# _10, MEM[(double *)_44]
# linpack.c:789:       x[i]   = sa * x[i];
	movsd	QWORD PTR [rax], xmm1	# MEM[(double *)_44], _10
# linpack.c:790:       x[i+1] = sa * x[i+1];
	movapd	xmm1, xmm0	# _15, sa
	mulsd	xmm1, QWORD PTR [rax+8]	# _15, MEM[(double *)_44 + 8B]
# linpack.c:790:       x[i+1] = sa * x[i+1];
	movsd	QWORD PTR [rax+8], xmm1	# MEM[(double *)_44 + 8B], _15
# linpack.c:791:       x[i+2] = sa * x[i+2];
	movapd	xmm1, xmm0	# _20, sa
	mulsd	xmm1, QWORD PTR [rax+16]	# _20, MEM[(double *)_44 + 16B]
# linpack.c:791:       x[i+2] = sa * x[i+2];
	movsd	QWORD PTR [rax+16], xmm1	# MEM[(double *)_44 + 16B], _20
# linpack.c:792:       x[i+3] = sa * x[i+3];
	movapd	xmm1, xmm0	# _25, sa
	mulsd	xmm1, QWORD PTR [rax+24]	# _25, MEM[(double *)_44 + 24B]
# linpack.c:792:       x[i+3] = sa * x[i+3];
	movsd	QWORD PTR [rax+24], xmm1	# MEM[(double *)_44 + 24B], _25
# linpack.c:793:       x[i+4] = sa * x[i+4];
	movapd	xmm1, xmm0	# _30, sa
	mulsd	xmm1, QWORD PTR [rax+32]	# _30, MEM[(double *)_44 + 32B]
# linpack.c:793:       x[i+4] = sa * x[i+4];
	movsd	QWORD PTR [rax+32], xmm1	# MEM[(double *)_44 + 32B], _30
# linpack.c:787:     for ( i = m; i < n; i = i + 5 )
	add	edx, 5	# m,
# linpack.c:787:     for ( i = m; i < n; i = i + 5 )
	add	rax, 40	# ivtmp.149,
	cmp	ecx, edx	# n, m
	jg	.L65	#,
	ret	
.L73:
# linpack.c:804:       ix = ( - n + 1 ) * incx;
	mov	eax, 1	# tmp162,
	sub	eax, ecx	# _31, n
# linpack.c:804:       ix = ( - n + 1 ) * incx;
	imul	eax, edx	# ix, incx
	jmp	.L66	#
	.cfi_endproc
.LFE28:
	.size	dscal, .-dscal
	.globl	idamax
	.type	idamax, @function
idamax:
.LFB29:
	.cfi_startproc
	mov	rax, rsi	# dx, dx
# linpack.c:869:   if ( n < 1 || incx <= 0 )
	test	edi, edi	# n
	jle	.L87	#,
	test	edx, edx	# incx
	jle	.L87	#,
# linpack.c:878:     return value;
	mov	ecx, edi	# <retval>, n
# linpack.c:876:   if ( n == 1 )
	cmp	edi, 1	# n,
	je	.L74	#,
# linpack.c:881:   if ( incx == 1 )
	cmp	edx, 1	# incx,
	je	.L93	#,
# linpack.c:897:     dmax = r8_abs ( dx[0] );
	movsd	xmm3, QWORD PTR [rsi]	# value, *dx_32(D)
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm0, xmm0	# tmp133
# linpack.c:946:     value = -x;
	movapd	xmm1, xmm3	# tmp168, value
	xorpd	xmm1, XMMWORD PTR .LC2[rip]	# tmp168,
	cmpnlesd	xmm0, xmm3	#, tmp170, value
	andpd	xmm1, xmm0	# tmp171, tmp170
	andnpd	xmm0, xmm3	# tmp172, tmp169
	movapd	xmm3, xmm0	# tmp172, tmp172
	orpd	xmm3, xmm1	# tmp172, tmp171
	movsx	rdx, edx	# _24, incx
	lea	rsi, [0+rdx*8]	# _20,
	add	rax, rsi	# ivtmp.180, _20
# linpack.c:890:         dmax = r8_abs ( dx[i] );
	mov	ecx, 1	# <retval>,
	mov	edx, 1	# i,
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm4, xmm4	# tmp138
# linpack.c:946:     value = -x;
	movq	xmm6, QWORD PTR .LC2[rip]	# tmp154,
.L86:
# linpack.c:902:       if ( dmax < r8_abs ( dx[ix] ) )
	movsd	xmm0, QWORD PTR [rax]	# value, MEM[(double *)_54]
# linpack.c:946:     value = -x;
	movapd	xmm5, xmm0	# tmp174, value
	movapd	xmm2, xmm0	# tmp173, value
	xorpd	xmm2, xmm6	# tmp173, tmp154
	movapd	xmm1, xmm4	# tmp175, tmp138
	cmpnlesd	xmm1, xmm0	#, tmp175, value
	andpd	xmm2, xmm1	# tmp173, tmp175
	movapd	xmm0, xmm2	# tmp176, tmp173
	andnpd	xmm1, xmm5	# tmp177, tmp174
	orpd	xmm0, xmm1	# value, tmp177
# linpack.c:905:         dmax = r8_abs ( dx[ix] );
	lea	r8d, [rdx+1]	# tmp151,
	comisd	xmm0, xmm3	# value, value
	cmova	ecx, r8d	# tmp151,, <retval>
	maxsd	xmm0, xmm3	# value, value
	movapd	xmm3, xmm0	# value, value
# linpack.c:900:     for ( i = 1; i < n; i++ )
	mov	edx, r8d	# i, tmp151
# linpack.c:900:     for ( i = 1; i < n; i++ )
	add	rax, rsi	# ivtmp.180, _20
	cmp	edi, r8d	# n, i
	jg	.L86	#,
.L74:
# linpack.c:912: }
	mov	eax, ecx	#, <retval>
	ret	
.L93:
# linpack.c:883:     dmax = r8_abs ( dx[0] );
	movsd	xmm3, QWORD PTR [rsi]	# value, *dx_32(D)
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm0, xmm0	# tmp125
# linpack.c:946:     value = -x;
	movapd	xmm1, xmm3	# tmp158, value
	xorpd	xmm1, XMMWORD PTR .LC2[rip]	# tmp158,
	cmpnlesd	xmm0, xmm3	#, tmp160, value
	andpd	xmm1, xmm0	# tmp161, tmp160
	andnpd	xmm0, xmm3	# tmp162, tmp159
	movapd	xmm3, xmm0	# tmp162, tmp162
	orpd	xmm3, xmm1	# tmp162, tmp161
# linpack.c:861: {
	mov	ecx, edx	# <retval>, incx
	mov	edx, 1	# ivtmp.169,
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm4, xmm4	# tmp129
# linpack.c:946:     value = -x;
	movq	xmm6, QWORD PTR .LC2[rip]	# tmp153,
.L81:
# linpack.c:887:       if ( dmax < r8_abs ( dx[i] ) )
	movsd	xmm0, QWORD PTR [rax+rdx*8]	# value, MEM[(double *)dx_32(D) + ivtmp.169_45 * 8]
# linpack.c:946:     value = -x;
	movapd	xmm5, xmm0	# tmp164, value
	movapd	xmm2, xmm0	# tmp163, value
	xorpd	xmm2, xmm6	# tmp163, tmp153
	movapd	xmm1, xmm4	# tmp165, tmp129
	cmpnlesd	xmm1, xmm0	#, tmp165, value
	andpd	xmm2, xmm1	# tmp163, tmp165
	movapd	xmm0, xmm2	# tmp166, tmp163
	andnpd	xmm1, xmm5	# tmp167, tmp164
	orpd	xmm0, xmm1	# value, tmp167
# linpack.c:890:         dmax = r8_abs ( dx[i] );
	lea	esi, [rdx+1]	# tmp146,
	comisd	xmm0, xmm3	# value, value
	cmova	ecx, esi	# tmp146,, <retval>
	maxsd	xmm0, xmm3	# value, value
	movapd	xmm3, xmm0	# value, value
# linpack.c:885:     for ( i = 1; i < n; i++ )
	add	rdx, 1	# ivtmp.169,
	cmp	edi, edx	# n, ivtmp.169
	jg	.L81	#,
	jmp	.L74	#
.L87:
# linpack.c:871:     return value;
	mov	ecx, 0	# <retval>,
	jmp	.L74	#
	.cfi_endproc
.LFE29:
	.size	idamax, .-idamax
	.globl	dgefa
	.type	dgefa, @function
dgefa:
.LFB26:
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
	sub	rsp, 96	#,
	.cfi_def_cfa_offset 152
	mov	QWORD PTR [rsp+8], rdi	# %sfp, a
	mov	r15d, esi	# lda, lda
	mov	DWORD PTR [rsp+4], edx	# %sfp, n
	mov	QWORD PTR [rsp+56], rcx	# %sfp, ipvt
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	cmp	edx, 1	# n,
	jle	.L104	#,
	movsx	rax, esi	# _129, lda
	lea	rsi, [8+rax*8]	# _131,
	mov	QWORD PTR [rsp+64], rsi	# %sfp, _131
	lea	ecx, [r15+1]	# _139,
	mov	DWORD PTR [rsp+80], ecx	# %sfp, _139
	mov	esi, edx	# _149, n
	mov	QWORD PTR [rsp+72], rsi	# %sfp, _149
	sal	rax, 3	# _89,
	mov	QWORD PTR [rsp+32], rax	# %sfp, _89
	mov	QWORD PTR [rsp+40], rdi	# %sfp, a
	mov	DWORD PTR [rsp+52], 0	# %sfp,
	mov	DWORD PTR [rsp+48], 0	# %sfp,
	mov	r14d, 1	# ivtmp.199,
# linpack.c:557:   info = 0;
	mov	edx, 0	# <retval>,
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	mov	DWORD PTR [rsp+84], edx	# %sfp, <retval>
	jmp	.L101	#
.L107:
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	mov	ecx, DWORD PTR [rsp+4]	# _9, %sfp
	sub	ecx, ebp	# _9, _145
	mov	DWORD PTR [rsp+24], ecx	# %sfp, _9
	mov	DWORD PTR [rsp+28], r14d	# %sfp, ivtmp.199
# linpack.c:577:     if ( l != k )
	cmp	r13d, r14d	# l, ivtmp.199
	je	.L98	#,
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movsx	rdx, DWORD PTR [rsp+52]	# _22, %sfp
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	mov	rsi, QWORD PTR [rsp+8]	# a, %sfp
	lea	rdx, [rsi+rdx*8]	# _24,
	movsd	xmm1, QWORD PTR [rdx]	# _25, *_24
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movsd	QWORD PTR [rax], xmm1	# *_19, _25
# linpack.c:581:       a[k-1+(k-1)*lda] = t;
	movsd	QWORD PTR [rdx], xmm0	# *_24, _20
.L98:
# linpack.c:588:     dscal ( n-k, t, a+k+(k-1)*lda, 1 );
	mov	rax, QWORD PTR [rsp+40]	# ivtmp.202, %sfp
	lea	rsi, [rax+8]	# _32,
	mov	QWORD PTR [rsp+16], rsi	# %sfp, _32
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	movsx	rax, DWORD PTR [rsp+52]	# _27, %sfp
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	mov	r12, QWORD PTR [rsp+8]	# a, %sfp
	movsd	xmm0, QWORD PTR .LC3[rip]	# t_79,
	divsd	xmm0, QWORD PTR [r12+rax*8]	# t_79, *_29
# linpack.c:588:     dscal ( n-k, t, a+k+(k-1)*lda, 1 );
	mov	edx, 1	#,
	mov	edi, DWORD PTR [rsp+24]	#, %sfp
	call	dscal	#
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	add	ebp, 1	# j,
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	cmp	DWORD PTR [rsp+4], ebp	# %sfp, j
	jl	.L110	#,
	movsx	rax, ebx	# _103, _12
	mov	ecx, DWORD PTR [rsp+48]	# ivtmp.204, %sfp
	lea	edx, [rcx+r15]	# _161,
	movsx	rdx, edx	# _102, _161
	add	rdx, rax	# _104, _103
	lea	rbx, [r12-16+rdx*8]	# ivtmp.188,
	mov	edi, DWORD PTR [rsp+52]	# ivtmp.212, %sfp
	lea	r12d, [r15+rdi]	# ivtmp.193,
	mov	rdx, r14	# _150, ivtmp.199
	sub	rdx, rax	# _150, _103
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	lea	rax, [16+rdx*8]	# _65,
	mov	QWORD PTR [rsp+88], r14	# %sfp, ivtmp.199
	mov	r14, rax	# _65, _65
	jmp	.L100	#
.L99:
	lea	rcx, [r14+rbx]	# _124,
	mov	r8d, 1	#,
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+16]	#, %sfp
	mov	edi, DWORD PTR [rsp+24]	#, %sfp
	call	daxpy	#
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	add	ebp, 1	# j,
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	mov	rax, QWORD PTR [rsp+32]	# _89, %sfp
	add	rbx, rax	# ivtmp.188, _89
	add	r12d, r15d	# ivtmp.193, lda
	cmp	DWORD PTR [rsp+4], ebp	# %sfp, j
	jl	.L112	#,
.L100:
# linpack.c:594:       t = a[l-1+(j-1)*lda];
	movsd	xmm0, QWORD PTR [rbx]	# t, MEM[(double *)_116]
# linpack.c:595:       if ( l != k )
	mov	eax, DWORD PTR [rsp+28]	# k, %sfp
	cmp	r13d, eax	# l, k
	je	.L99	#,
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movsx	rax, r12d	# _40, ivtmp.193
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	mov	rsi, QWORD PTR [rsp+8]	# a, %sfp
	lea	rax, [rsi+rax*8]	# _42,
	movsd	xmm1, QWORD PTR [rax]	# _43, *_42
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movsd	QWORD PTR [rbx], xmm1	# MEM[(double *)_116], _43
# linpack.c:598:         a[k-1+(j-1)*lda] = t;
	movsd	QWORD PTR [rax], xmm0	# *_42, t
	jmp	.L99	#
.L112:
	mov	r14, QWORD PTR [rsp+88]	# ivtmp.199, %sfp
.L96:
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	add	r14, 1	# ivtmp.199,
	mov	rsi, QWORD PTR [rsp+64]	# _131, %sfp
	add	QWORD PTR [rsp+40], rsi	# %sfp, _131
	add	DWORD PTR [rsp+48], r15d	# %sfp, lda
	mov	edx, DWORD PTR [rsp+80]	# _139, %sfp
	add	DWORD PTR [rsp+52], edx	# %sfp, _139
	mov	rax, QWORD PTR [rsp+72]	# _149, %sfp
	cmp	r14, rax	# ivtmp.199, _149
	je	.L113	#,
.L101:
	mov	ebp, r14d	# _145, ivtmp.199
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	mov	eax, DWORD PTR [rsp+4]	# n, %sfp
	lea	edi, [rax+1]	# _61,
	sub	edi, r14d	# _144, ivtmp.199
	mov	edx, 1	#,
	mov	rsi, QWORD PTR [rsp+40]	#, %sfp
	call	idamax	#
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	lea	ebx, [rax+r14]	# _12,
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	lea	r13d, [rbx-1]	# l,
# linpack.c:565:     ipvt[k-1] = l;
	mov	rax, QWORD PTR [rsp+56]	# ipvt, %sfp
	mov	DWORD PTR [rax-4+r14*4], r13d	# MEM[(int *)ipvt_70(D) + -4B + ivtmp.199_125 * 4], l
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	mov	eax, DWORD PTR [rsp+48]	# ivtmp.204, %sfp
	lea	eax, [rbx-2+rax]	# _16,
	cdqe
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	mov	rdi, QWORD PTR [rsp+8]	# a, %sfp
	lea	rax, [rdi+rax*8]	# _19,
	movsd	xmm0, QWORD PTR [rax]	# _20, *_19
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	pxor	xmm1, xmm1	# tmp190
	ucomisd	xmm0, xmm1	# _20, tmp190
	jp	.L107	#,
	jne	.L107	#,
# linpack.c:571:       info = k;
	mov	DWORD PTR [rsp+84], r14d	# %sfp, ivtmp.199
	jmp	.L96	#
.L113:
	mov	edx, DWORD PTR [rsp+84]	# <retval>, %sfp
.L95:
# linpack.c:605:   ipvt[n-1] = n;
	mov	edi, DWORD PTR [rsp+4]	# n, %sfp
	movsx	rax, edi	# _48, n
# linpack.c:605:   ipvt[n-1] = n;
	mov	rsi, QWORD PTR [rsp+56]	# ipvt, %sfp
	mov	DWORD PTR [rsi-4+rax*4], edi	# *_50, n
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	lea	ecx, [rdi-1]	# _51,
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	mov	eax, r15d	# lda, lda
	imul	eax, ecx	# lda, _51
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	add	eax, ecx	# _53, _51
	cdqe
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	pxor	xmm0, xmm0	# tmp215
	mov	rcx, QWORD PTR [rsp+8]	# a, %sfp
	ucomisd	xmm0, QWORD PTR [rcx+rax*8]	# tmp215, *_56
	jp	.L94	#,
# linpack.c:609:     info = n;
	cmove	edx, edi	# <retval>,, <retval>, n
.L94:
# linpack.c:613: }
	mov	eax, edx	#, <retval>
	add	rsp, 96	#,
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
.L104:
	.cfi_restore_state
# linpack.c:557:   info = 0;
	mov	edx, 0	# <retval>,
	jmp	.L95	#
.L110:
	mov	edx, DWORD PTR [rsp+84]	# <retval>, %sfp
	jmp	.L95	#
	.cfi_endproc
.LFE26:
	.size	dgefa, .-dgefa
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
	andnpd	xmm1, xmm0	# tmp110, tmp107
	orpd	xmm1, xmm2	# tmp110, tmp109
	movapd	xmm0, xmm1	# x, tmp110
# linpack.c:949: }
	ret	
	.cfi_endproc
.LFE30:
	.size	r8_abs, .-r8_abs
	.globl	r8_epsilon
	.type	r8_epsilon, @function
r8_epsilon:
.LFB31:
	.cfi_startproc
# linpack.c:984: {
	mov	eax, 53	# ivtmp_2,
# linpack.c:987:   r = 1.0;
	movsd	xmm0, QWORD PTR .LC4[rip]	# r,
# linpack.c:991:     r = r / 2.0;
	movsd	xmm1, QWORD PTR .LC5[rip]	# tmp101,
	.p2align 4
.L117:
	mulsd	xmm0, xmm1	# r, tmp101
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	sub	eax, 1	# ivtmp_2,
	jne	.L117	#,
# linpack.c:993:   r = 2.0 * r;
	addsd	xmm0, xmm0	# r_3, r
# linpack.c:996: }
	ret	
	.cfi_endproc
.LFE31:
	.size	r8_epsilon, .-r8_epsilon
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
	.globl	r8_random
	.type	r8_random, @function
r8_random:
.LFB33:
	.cfi_startproc
	mov	rdx, rdi	# iseed, iseed
# linpack.c:1081:   it4 = iseed[3] * m4;
	mov	eax, DWORD PTR [rdi+12]	# _1, MEM[(int *)iseed_32(D) + 12B]
# linpack.c:1081:   it4 = iseed[3] * m4;
	imul	esi, eax, 2549	# it4, _1,
	mov	ecx, esi	# tmp140, it4
	sar	ecx, 31	# tmp140,
	shr	ecx, 20	# tmp141,
	lea	r9d, [rsi+rcx]	# tmp142,
	and	r9d, 4095	# tmp143,
	sub	r9d, ecx	# _47, tmp141
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	mov	r10d, DWORD PTR [rdi+8]	# _2, MEM[(int *)iseed_32(D) + 8B]
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imul	edi, r10d, 2549	# _3, _2,
# linpack.c:1082:   it3 = it4 / ipw2;
	lea	ecx, [rsi+4095]	# tmp148,
	test	esi, esi	# it4
	cmovns	ecx, esi	# tmp148,, it4, it4
	sar	ecx, 12	# it3_35,
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	lea	esi, [rdi+rcx]	# _4,
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imul	ecx, eax, 2508	# _5, _1,
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	add	ecx, esi	# it3, _4
	mov	esi, ecx	# tmp151, it3
	sar	esi, 31	# tmp151,
	shr	esi, 20	# tmp152,
	lea	r8d, [rcx+rsi]	# tmp153,
	and	r8d, 4095	# tmp154,
	sub	r8d, esi	# _31, tmp152
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	esi, DWORD PTR [rdx+4], 2549	# _7, MEM[(int *)iseed_32(D) + 4B],
# linpack.c:1085:   it2 = it3 / ipw2;
	lea	edi, [rcx+4095]	# tmp159,
	test	ecx, ecx	# it3
	cmovs	ecx, edi	# tmp159,, it3
	sar	ecx, 12	# it2_37,
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	ecx, esi	# _8, _7
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	esi, r10d, 2508	# _9, _2,
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	ecx, esi	# _10, _9
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	esi, eax, 322	# _11, _1,
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	esi, ecx	# it2, _10
	mov	ecx, esi	# tmp164, it2
	sar	ecx, 31	# tmp164,
	shr	ecx, 20	# tmp165,
	lea	edi, [rsi+rcx]	# tmp166,
	and	edi, 4095	# tmp167,
	sub	edi, ecx	# _30, tmp165
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	ecx, DWORD PTR [rdx], 2549	# _13, *iseed_32(D),
# linpack.c:1088:   it1 = it2 / ipw2;
	lea	r11d, [rsi+4095]	# tmp173,
	test	esi, esi	# it2
	cmovs	esi, r11d	# tmp173,, it2
	sar	esi, 12	# it1_39,
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	ecx, esi	# _14, it1_39
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	esi, DWORD PTR [rdx+4], 2508	# _15, MEM[(int *)iseed_32(D) + 4B],
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	ecx, esi	# _16, _15
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	r10d, r10d, 322	# _17, _2,
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	ecx, r10d	# _18, _17
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	eax, eax, 494	# _19, _1,
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	eax, ecx	# it1, _18
# linpack.c:1091:   it1 = ( it1 % ipw2 );
	mov	ecx, eax	# tmp180, it1
	sar	ecx, 31	# tmp180,
	shr	ecx, 20	# tmp181,
	add	eax, ecx	# tmp182, tmp181
	and	eax, 4095	# tmp183,
	sub	eax, ecx	# it1_41, tmp181
# linpack.c:1095:   iseed[0] = it1;
	mov	DWORD PTR [rdx], eax	# *iseed_32(D), it1_41
# linpack.c:1096:   iseed[1] = it2;
	mov	DWORD PTR [rdx+4], edi	# MEM[(int *)iseed_32(D) + 4B], _30
# linpack.c:1097:   iseed[2] = it3;
	mov	DWORD PTR [rdx+8], r8d	# MEM[(int *)iseed_32(D) + 8B], _31
# linpack.c:1098:   iseed[3] = it4;
	mov	DWORD PTR [rdx+12], r9d	# MEM[(int *)iseed_32(D) + 12B], _47
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	pxor	xmm1, xmm1	# _23
	cvtsi2sd	xmm1, r9d	# _23, _47
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	movsd	xmm2, QWORD PTR .LC6[rip]	# tmp188,
	mulsd	xmm1, xmm2	# _24, tmp188
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	pxor	xmm0, xmm0	# _22
	cvtsi2sd	xmm0, r8d	# _22, _31
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	addsd	xmm1, xmm0	# _25, _22
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	mulsd	xmm1, xmm2	# _26, tmp188
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	pxor	xmm0, xmm0	# _21
	cvtsi2sd	xmm0, edi	# _21, _30
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	addsd	xmm0, xmm1	# _27, _26
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	mulsd	xmm0, xmm2	# _28, tmp188
# linpack.c:1103:       r * ( ( double ) ( it1 ) 
	pxor	xmm1, xmm1	# _20
	cvtsi2sd	xmm1, eax	# _20, it1_41
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	addsd	xmm0, xmm1	# _29, _20
# linpack.c:1102:   value = 
	mulsd	xmm0, xmm2	# value_46, tmp188
# linpack.c:1109: }
	ret	
	.cfi_endproc
.LFE33:
	.size	r8_random, .-r8_random
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
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 80
	mov	ebx, edi	# lda, lda
	mov	r12d, esi	# n, n
# linpack.c:1135:   int init[4] = { 1, 2, 3, 1325 };
	mov	DWORD PTR [rsp], 1	# init[0],
	mov	DWORD PTR [rsp+4], 2	# init[1],
	mov	DWORD PTR [rsp+8], 3	# init[2],
	mov	DWORD PTR [rsp+12], 1325	# init[3],
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	imul	edi, esi	# _1, n
	movsx	rdi, edi	# _2, _1
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	sal	rdi, 3	# _3,
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	call	malloc	#
	mov	r15, rax	# <retval>, <retval>
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	test	r12d, r12d	# n
	jle	.L123	#,
	movsx	rbx, ebx	# _45, lda
	lea	r14, [0+rbx*8]	# _46,
	mov	rbp, rax	# ivtmp.239, <retval>
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	mov	r13d, 1	# j,
.L125:
# linpack.c:1132: {
	mov	ebx, 1	# ivtmp.231,
.L126:
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	mov	rdi, rsp	# tmp118,
	call	r8_random	#
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	subsd	xmm0, QWORD PTR .LC5[rip]	# _12,
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	movsd	QWORD PTR [rbp-8+rbx*8], xmm0	# MEM[(double *)_32 + -8B + ivtmp.231_16 * 8], _12
# linpack.c:1142:     for ( i = 1; i <= n; i++ )
	add	rbx, 1	# ivtmp.231,
	cmp	r12d, ebx	# n, ivtmp.231
	jge	.L126	#,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	add	r13d, 1	# j,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	add	rbp, r14	# ivtmp.239, _46
	cmp	r12d, r13d	# n, j
	jge	.L125	#,
.L123:
# linpack.c:1149: }
	mov	rax, r15	#, <retval>
	add	rsp, 24	#,
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
	.cfi_endproc
.LFE34:
	.size	r8mat_gen, .-r8mat_gen
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"%d %B %Y %I:%M:%S %p"
	.text
	.globl	timestamp
	.type	timestamp, @function
timestamp:
.LFB35:
	.cfi_startproc
	sub	rsp, 24	#,
	.cfi_def_cfa_offset 32
# linpack.c:1188:   now = time ( NULL );
	mov	edi, 0	#,
	call	time	#
# linpack.c:1188:   now = time ( NULL );
	mov	QWORD PTR [rsp+8], rax	# now, _1
# linpack.c:1189:   tm = localtime ( &now );
	lea	rdi, [rsp+8]	# tmp100,
	call	localtime	#
	mov	rcx, rax	# tm, tm
# linpack.c:1191:   len = strftime ( time_buffer, TIME_SIZE, "%d %B %Y %I:%M:%S %p", tm );
	mov	edx, OFFSET FLAT:.LC7	#,
	mov	esi, 40	#,
	mov	edi, OFFSET FLAT:time_buffer.0	#,
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
.LC8:
	.string	"LINPACK_BENCH"
.LC9:
	.string	"  C version"
.LC10:
	.string	"  The LINPACK benchmark."
.LC11:
	.string	"  Language: C"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC12:
	.string	"  Datatype: Double precision real"
	.align 8
.LC13:
	.string	"  Matrix order N               = %d\n"
	.align 8
.LC14:
	.string	"  Leading matrix dimension LDA = %d\n"
	.section	.rodata.str1.1
.LC15:
	.string	"LINPACK_BENCH - Fatal error!"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"  The matrix A is apparently singular."
	.section	.rodata.str1.1
.LC17:
	.string	"  Abnormal end of execution."
	.section	.rodata.str1.8
	.align 8
.LC20:
	.string	"     Norm. Resid      Resid           MACHEP         X[1]          X[N]"
	.align 8
.LC21:
	.string	"  %14f  %14f  %14e  %14f  %14f\n"
	.align 8
.LC22:
	.string	"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio"
	.align 8
.LC25:
	.string	"  %9f  %9f  %9f  %9f  %9f  %9f\n"
	.section	.rodata.str1.1
.LC26:
	.string	"  Normal end of execution."
	.text
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
	sub	rsp, 88	#,
	.cfi_def_cfa_offset 144
# linpack.c:69:   timestamp ( );
	call	timestamp	#
# linpack.c:70:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:71:   printf ( "LINPACK_BENCH\n" );
	mov	edi, OFFSET FLAT:.LC8	#,
	call	puts	#
# linpack.c:72:   printf ( "  C version\n" );
	mov	edi, OFFSET FLAT:.LC9	#,
	call	puts	#
# linpack.c:73:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:74:   printf ( "  The LINPACK benchmark.\n" );
	mov	edi, OFFSET FLAT:.LC10	#,
	call	puts	#
# linpack.c:75:   printf ( "  Language: C\n" );
	mov	edi, OFFSET FLAT:.LC11	#,
	call	puts	#
# linpack.c:76:   printf ( "  Datatype: Double precision real\n" );
	mov	edi, OFFSET FLAT:.LC12	#,
	call	puts	#
# linpack.c:77:   printf ( "  Matrix order N               = %d\n", N );
	mov	esi, 1000	#,
	mov	edi, OFFSET FLAT:.LC13	#,
	mov	eax, 0	#,
	call	printf	#
# linpack.c:78:   printf ( "  Leading matrix dimension LDA = %d\n", LDA );
	mov	esi, 1001	#,
	mov	edi, OFFSET FLAT:.LC14	#,
	mov	eax, 0	#,
	call	printf	#
# linpack.c:84:   a = r8mat_gen ( LDA, N );
	mov	esi, 1000	#,
	mov	edi, 1001	#,
	call	r8mat_gen	#
	mov	r15, rax	# a, a
# linpack.c:85:   b = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
	call	malloc	#
	mov	rbx, rax	# b, b
# linpack.c:86:   ipvt = ( int * ) malloc ( N * sizeof ( int ) );
	mov	edi, 4000	#,
	call	malloc	#
	mov	QWORD PTR [rsp+32], rax	# %sfp, ipvt
# linpack.c:87:   resid = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
	call	malloc	#
	mov	r14, rax	# resid, resid
# linpack.c:88:   rhs = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
	call	malloc	#
	mov	r13, rax	# rhs, rhs
# linpack.c:89:   x = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
	call	malloc	#
	mov	rbp, rax	# x, x
	lea	rdx, [r15+8000]	# ivtmp.355,
	lea	rcx, [r15+8016000]	# _357,
# linpack.c:91:   a_max = 0.0;
	mov	QWORD PTR [rsp+8], 0x000000000	# %sfp,
.L132:
	lea	rax, [rdx-8000]	# ivtmp.346,
	.p2align 6
.L135:
# linpack.c:96:       a_max = r8_max ( a_max, a[i+j*LDA] );
	movsd	xmm0, QWORD PTR [rax]	# _6, MEM[(double *)_344]
	movsd	xmm7, QWORD PTR [rsp+8]	# a_max, %sfp
	movapd	xmm1, xmm7	# a_max, a_max
	maxsd	xmm1, xmm0	# a_max, _6
	movsd	QWORD PTR [rsp+8], xmm1	# %sfp, _199
# linpack.c:94:     for ( i = 0; i < N; i++ )
	add	rax, 8	# ivtmp.346,
	cmp	rax, rdx	# ivtmp.346, ivtmp.355
	jne	.L135	#,
# linpack.c:92:   for ( j = 0; j < N; j++ )
	add	rdx, 8008	# ivtmp.355,
	cmp	rdx, rcx	# ivtmp.355, _357
	jne	.L132	#,
	lea	r12, [rbp+8000]	# _337,
	mov	rax, rbp	# ivtmp.339, x
# linpack.c:102:     x[i] = 1.0;
	movsd	xmm0, QWORD PTR .LC4[rip]	# tmp192,
.L137:
	movsd	QWORD PTR [rax], xmm0	# MEM[(double *)_335], tmp192
# linpack.c:100:   for ( i = 0; i < N; i++ )
	add	rax, 8	# ivtmp.339,
	cmp	rax, r12	# ivtmp.339, _337
	jne	.L137	#,
	lea	rcx, [r15+8008000]	# ivtmp.331,
	mov	esi, 0	# ivtmp.324,
.L139:
	lea	rax, [rcx-8008000]	# ivtmp.321,
	mov	rdx, rbp	# ivtmp.322, x
	pxor	xmm1, xmm1	# D__lsm.256
	.p2align 5
.L138:
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movsd	xmm0, QWORD PTR [rax]	# MEM[(double *)_318], MEM[(double *)_318]
	mulsd	xmm0, QWORD PTR [rdx]	# _24, MEM[(double *)_319]
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	addsd	xmm1, xmm0	# D__lsm.256, _24
# linpack.c:108:     for ( j = 0; j < N; j++ )
	add	rax, 8008	# ivtmp.321,
	add	rdx, 8	# ivtmp.322,
	cmp	rax, rcx	# ivtmp.321, ivtmp.331
	jne	.L138	#,
	movsd	QWORD PTR [rbx+rsi*8], xmm1	# MEM[(double *)b_126 + ivtmp.324_325 * 8], D__lsm.256
# linpack.c:105:   for ( i = 0; i < N; i++ )
	add	rsi, 1	# ivtmp.324,
	add	rcx, 8	# ivtmp.331,
	cmp	rsi, 1000	# ivtmp.324,
	jne	.L139	#,
# linpack.c:113:   t1 = cpu_time ( );
	call	cpu_time	#
	movsd	QWORD PTR [rsp+16], xmm0	# %sfp, t1
# linpack.c:115:   info = dgefa ( a, LDA, N, ipvt );
	mov	rcx, QWORD PTR [rsp+32]	#, %sfp
	mov	edx, 1000	#,
	mov	esi, 1001	#,
	mov	rdi, r15	#, a
	call	dgefa	#
	mov	DWORD PTR [rsp+60], eax	# %sfp, <retval>
# linpack.c:117:   if ( info != 0 )
	test	eax, eax	# <retval>
	jne	.L172	#,
# linpack.c:126:   t2 = cpu_time ( );
	call	cpu_time	#
# linpack.c:127:   time[0] = t2 - t1;
	subsd	xmm0, QWORD PTR [rsp+16]	# t2, %sfp
	movsd	QWORD PTR [rsp+40], xmm0	# %sfp, t2
# linpack.c:129:   t1 = cpu_time ( );
	call	cpu_time	#
	movsd	QWORD PTR [rsp+16], xmm0	# %sfp, t1
# linpack.c:132:   dgesl ( a, LDA, N, ipvt, b, job );
	mov	r9d, 0	#,
	mov	r8, rbx	#, b
	mov	rcx, QWORD PTR [rsp+32]	#, %sfp
	mov	edx, 1000	#,
	mov	esi, 1001	#,
	mov	rdi, r15	#, a
	call	dgesl	#
# linpack.c:134:   t2 = cpu_time ( );
	call	cpu_time	#
# linpack.c:135:   time[1] = t2 - t1;
	movapd	xmm5, xmm0	# t2, t2
	subsd	xmm5, QWORD PTR [rsp+16]	# t2, %sfp
	movsd	QWORD PTR [rsp+64], xmm5	# %sfp, _27
# linpack.c:137:   total = time[0] + time[1];
	movsd	xmm0, QWORD PTR [rsp+40]	# total, %sfp
	addsd	xmm0, xmm5	# total, _27
	movsd	QWORD PTR [rsp+48], xmm0	# %sfp, total
# linpack.c:139:   free ( a );
	mov	rdi, r15	#, a
	call	free	#
# linpack.c:143:   a = r8mat_gen ( LDA, N );
	mov	esi, 1000	#,
	mov	edi, 1001	#,
	call	r8mat_gen	#
	mov	r15, rax	# a, a
	mov	rax, rbp	# ivtmp.314, x
# linpack.c:147:     x[i] = 1.0;
	movsd	xmm0, QWORD PTR .LC4[rip]	# tmp195,
.L142:
	movsd	QWORD PTR [rax], xmm0	# MEM[(double *)_306], tmp195
# linpack.c:145:   for ( i = 0; i < N; i++ )
	add	rax, 8	# ivtmp.314,
	cmp	rax, r12	# ivtmp.314, _337
	jne	.L142	#,
	lea	rcx, [r15+8008000]	# ivtmp.288,
	mov	rsi, rcx	# ivtmp.306, ivtmp.288
	mov	edi, 0	# ivtmp.299,
.L144:
	lea	rax, [rsi-8008000]	# ivtmp.296,
	mov	rdx, rbp	# ivtmp.297, x
	pxor	xmm1, xmm1	# D__lsm.255
	.p2align 5
.L143:
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movsd	xmm0, QWORD PTR [rax]	# MEM[(double *)_289], MEM[(double *)_289]
	mulsd	xmm0, QWORD PTR [rdx]	# _45, MEM[(double *)_290]
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	addsd	xmm1, xmm0	# D__lsm.255, _45
# linpack.c:153:     for ( j = 0; j < N; j++ )
	add	rax, 8008	# ivtmp.296,
	add	rdx, 8	# ivtmp.297,
	cmp	rax, rsi	# ivtmp.296, ivtmp.306
	jne	.L143	#,
	movsd	QWORD PTR [r13+0+rdi*8], xmm1	# MEM[(double *)rhs_132 + ivtmp.299_296 * 8], D__lsm.255
# linpack.c:150:   for ( i = 0; i < N; i++ )
	add	rdi, 1	# ivtmp.299,
	add	rsi, 8	# ivtmp.306,
	cmp	rdi, 1000	# ivtmp.299,
	jne	.L144	#,
	mov	esi, 0	# ivtmp.280,
# linpack.c:161:     resid[i] = -rhs[i];
	movq	xmm2, QWORD PTR .LC2[rip]	# tmp199,
.L146:
	movsd	xmm1, QWORD PTR [r13+0+rsi*8]	# MEM[(double *)rhs_132 + ivtmp.280_273 * 8], MEM[(double *)rhs_132 + ivtmp.280_273 * 8]
	xorpd	xmm1, xmm2	# D__lsm.254, tmp199
	lea	rax, [rcx-8008000]	# ivtmp.277,
	mov	rdi, rbx	# ivtmp.263, b
	mov	rdx, rbx	# ivtmp.278, b
	.p2align 5
.L145:
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movsd	xmm0, QWORD PTR [rax]	# MEM[(double *)_266], MEM[(double *)_266]
	mulsd	xmm0, QWORD PTR [rdx]	# _64, MEM[(double *)_267]
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	addsd	xmm1, xmm0	# D__lsm.254, _64
# linpack.c:162:     for ( j = 0; j < N; j++ )
	add	rax, 8008	# ivtmp.277,
	add	rdx, 8	# ivtmp.278,
	cmp	rax, rcx	# ivtmp.277, ivtmp.288
	jne	.L145	#,
	movsd	QWORD PTR [r14+rsi*8], xmm1	# MEM[(double *)resid_130 + ivtmp.280_273 * 8], D__lsm.254
# linpack.c:159:   for ( i = 0; i < N; i++ )
	add	rsi, 1	# ivtmp.280,
	add	rcx, 8	# ivtmp.288,
	cmp	rsi, 1000	# ivtmp.280,
	jne	.L146	#,
	mov	rax, r14	# ivtmp.270, resid
	lea	rdx, [r14+8000]	# _75,
# linpack.c:168:   resid_max = 0.0;
	mov	QWORD PTR [rsp+16], 0x000000000	# %sfp,
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm3, xmm3	# tmp202
# linpack.c:946:     value = -x;
	movq	xmm5, QWORD PTR .LC2[rip]	# tmp253,
.L150:
# linpack.c:171:     resid_max = r8_max ( resid_max, r8_abs ( resid[i] ) );
	movsd	xmm0, QWORD PTR [rax]	# value, MEM[(double *)_215]
# linpack.c:946:     value = -x;
	movapd	xmm4, xmm0	# tmp268, value
	movapd	xmm2, xmm0	# tmp267, value
	xorpd	xmm2, xmm5	# tmp267, tmp253
	movapd	xmm1, xmm3	# tmp269, tmp202
	cmpnlesd	xmm1, xmm0	#, tmp269, value
	andpd	xmm2, xmm1	# tmp267, tmp269
	movapd	xmm0, xmm2	# tmp270, tmp267
	andnpd	xmm1, xmm4	# tmp271, tmp268
	orpd	xmm0, xmm1	# value, tmp271
	movsd	xmm6, QWORD PTR [rsp+16]	# resid_max, %sfp
	movapd	xmm1, xmm6	# resid_max, resid_max
	maxsd	xmm1, xmm0	# resid_max, value
	movsd	QWORD PTR [rsp+16], xmm1	# %sfp, _201
# linpack.c:169:   for ( i = 0; i < N; i++ )
	add	rax, 8	# ivtmp.270,
	cmp	rdx, rax	# _75, ivtmp.270
	jne	.L150	#,
	lea	rax, [rbx+8000]	# _13,
# linpack.c:174:   b_max = 0.0;
	pxor	xmm3, xmm3	# b_max
# linpack.c:940:   if ( 0.0 <= x )
	movapd	xmm4, xmm3	# tmp211,
# linpack.c:946:     value = -x;
	movq	xmm6, QWORD PTR .LC2[rip]	# tmp252,
.L154:
# linpack.c:177:     b_max = r8_max ( b_max, r8_abs ( b[i] ) );
	movsd	xmm0, QWORD PTR [rdi]	# value, MEM[(double *)_53]
# linpack.c:946:     value = -x;
	movapd	xmm5, xmm0	# tmp273, value
	movapd	xmm2, xmm0	# tmp272, value
	xorpd	xmm2, xmm6	# tmp272, tmp252
	movapd	xmm1, xmm4	# tmp274, tmp211
	cmpnlesd	xmm1, xmm0	#, tmp274, value
	andpd	xmm2, xmm1	# tmp272, tmp274
	movapd	xmm0, xmm2	# tmp275, tmp272
	andnpd	xmm1, xmm5	# tmp276, tmp273
	orpd	xmm0, xmm1	# value, tmp276
	maxsd	xmm3, xmm0	# b_max, value
	movsd	QWORD PTR [rsp+24], xmm3	# %sfp, _205
# linpack.c:175:   for ( i = 0; i < N; i++ )
	add	rdi, 8	# ivtmp.263,
	cmp	rax, rdi	# _13, ivtmp.263
	jne	.L154	#,
# linpack.c:180:   eps = r8_epsilon ( );
	call	r8_epsilon	#
	movapd	xmm6, xmm0	# eps, eps
	movsd	QWORD PTR [rsp+72], xmm0	# %sfp, eps
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	movsd	xmm4, QWORD PTR [rsp+16]	# _76, %sfp
	divsd	xmm4, QWORD PTR .LC18[rip]	# _76,
	movapd	xmm0, xmm4	# _76, _76
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm0, QWORD PTR [rsp+8]	# _77, %sfp
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm0, QWORD PTR [rsp+24]	# _78, %sfp
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	movapd	xmm4, xmm0	# _78, _78
	divsd	xmm4, xmm6	# _78, eps
	movsd	QWORD PTR [rsp+8], xmm4	# %sfp, _78
# linpack.c:185:   if ( 0.0 < total )
	pxor	xmm0, xmm0	# tmp224
	movsd	xmm5, QWORD PTR [rsp+48]	# total, %sfp
# linpack.c:191:     time[3] = -1.0;
	mov	r12, QWORD PTR .LC3[rip]	# time$3,
# linpack.c:185:   if ( 0.0 < total )
	comisd	xmm5, xmm0	# total, tmp224
	jbe	.L155	#,
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	movsd	xmm1, QWORD PTR .LC19[rip]	# tmp227,
	mulsd	xmm5, QWORD PTR .LC0[rip]	# _79,
	divsd	xmm1, xmm5	# tmp227, _79
	movq	r12, xmm1	# time$3, tmp227
.L155:
# linpack.c:196:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:197:   printf ( "     Norm. Resid      Resid           MACHEP         X[1]          X[N]\n" );
	mov	edi, OFFSET FLAT:.LC20	#,
	call	puts	#
# linpack.c:198:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:199:   printf ( "  %14f  %14f  %14e  %14f  %14f\n", residn, resid_max, eps, b[0], b[N-1] );
	movsd	xmm4, QWORD PTR [rbx+7992]	#, MEM[(double *)b_126 + 7992B]
	movsd	xmm3, QWORD PTR [rbx]	#, *b_126
	movsd	xmm2, QWORD PTR [rsp+72]	#, %sfp
	movsd	xmm1, QWORD PTR [rsp+16]	#, %sfp
	movsd	xmm0, QWORD PTR [rsp+8]	#, %sfp
	mov	edi, OFFSET FLAT:.LC21	#,
	mov	eax, 5	#,
	call	printf	#
# linpack.c:200:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:201:   printf ( "      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio\n" );
	mov	edi, OFFSET FLAT:.LC22	#,
	call	puts	#
# linpack.c:202:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:203:   printf ( "  %9f  %9f  %9f  %9f  %9f  %9f\n", 
	movsd	xmm2, QWORD PTR [rsp+48]	# total, %sfp
	movapd	xmm5, xmm2	# tmp305, total
	divsd	xmm5, QWORD PTR .LC23[rip]	# tmp305,
	movsd	xmm4, QWORD PTR .LC24[rip]	# tmp232,
	movq	xmm6, r12	# time$3, time$3
	divsd	xmm4, xmm6	#, time$3
	movq	xmm3, r12	#, time$3
	movsd	xmm1, QWORD PTR [rsp+64]	#, %sfp
	movsd	xmm0, QWORD PTR [rsp+40]	#, %sfp
	mov	edi, OFFSET FLAT:.LC25	#,
	mov	eax, 6	#,
	call	printf	#
# linpack.c:206:   free ( a );
	mov	rdi, r15	#, a
	call	free	#
# linpack.c:207:   free ( b );
	mov	rdi, rbx	#, b
	call	free	#
# linpack.c:208:   free ( ipvt );
	mov	rdi, QWORD PTR [rsp+32]	#, %sfp
	call	free	#
# linpack.c:209:   free ( resid );
	mov	rdi, r14	#, resid
	call	free	#
# linpack.c:210:   free ( rhs );
	mov	rdi, r13	#, rhs
	call	free	#
# linpack.c:211:   free ( x );
	mov	rdi, rbp	#, x
	call	free	#
# linpack.c:215:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:216:   printf ( "LINPACK_BENCH\n" );
	mov	edi, OFFSET FLAT:.LC8	#,
	call	puts	#
# linpack.c:217:   printf ( "  Normal end of execution.\n" );
	mov	edi, OFFSET FLAT:.LC26	#,
	call	puts	#
# linpack.c:219:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:220:   timestamp ( );
	call	timestamp	#
.L131:
# linpack.c:225: }
	mov	eax, DWORD PTR [rsp+60]	#, %sfp
	add	rsp, 88	#,
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
.L172:
	.cfi_restore_state
# linpack.c:119:     printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:120:     printf ( "LINPACK_BENCH - Fatal error!\n" );
	mov	edi, OFFSET FLAT:.LC15	#,
	call	puts	#
# linpack.c:121:     printf ( "  The matrix A is apparently singular.\n" );
	mov	edi, OFFSET FLAT:.LC16	#,
	call	puts	#
# linpack.c:122:     printf ( "  Abnormal end of execution.\n" );
	mov	edi, OFFSET FLAT:.LC17	#,
	call	puts	#
# linpack.c:123:     return 1;
	mov	DWORD PTR [rsp+60], 1	# %sfp,
	jmp	.L131	#
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
	.align 8
.LC18:
	.long	0
	.long	1083129856
	.align 8
.LC19:
	.long	-1789569707
	.long	1103359365
	.align 8
.LC23:
	.long	824633721
	.long	1068280840
	.align 8
.LC24:
	.long	0
	.long	1073741824
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
