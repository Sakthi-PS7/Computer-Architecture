	.file	"linpack.c"
	.intel_syntax noprefix
# GNU C23 (GCC) version 15.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.2.1, MPFR version 4.2.2, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O3
	.text
	.p2align 4
	.type	daxpy.part.0, @function
daxpy.part.0:
.LFB36:
	.cfi_startproc
# linpack.c:369:     for ( i = 0; i < m; i++ )
	mov	r8d, edi	# m, n
# linpack.c:268: void daxpy ( int n, double da, double dx[], int incx, double dy[], int incy )
	mov	rcx, rsi	# dx, dx
	movapd	xmm2, xmm0	# da, da
	mov	rsi, rdx	# dy, dy
# linpack.c:369:     for ( i = 0; i < m; i++ )
	and	r8d, 3	# m,
	je	.L2	#,
	cmp	r8d, 1	# m,
	je	.L3	#,
	mov	rax, rdx	# _172, dy
	sub	rax, rcx	# _172, dx
	cmp	rax, 8	# _172,
	je	.L3	#,
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movupd	xmm5, XMMWORD PTR [rcx]	# tmp257, MEM <vector(2) double> [(double *)dx_9(D)]
	unpcklpd	xmm0, xmm0	# _214
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movupd	xmm6, XMMWORD PTR [rdx]	# tmp258, MEM <vector(2) double> [(double *)dy_6(D)]
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	mulpd	xmm0, xmm5	# vect__13.48_215, tmp257
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	addpd	xmm0, xmm6	# vect__14.49_216, tmp258
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movups	XMMWORD PTR [rdx], xmm0	# MEM <vector(2) double> [(double *)dy_6(D)], vect__14.49_216
	cmp	r8d, 2	# m,
	je	.L2	#,
.L30:
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movsd	xmm0, QWORD PTR [rcx+16]	# _183, MEM[(double *)dx_9(D) + 16B]
	mulsd	xmm0, xmm2	# _183, da
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	addsd	xmm0, QWORD PTR [rsi+16]	# _184, MEM[(double *)dy_6(D) + 16B]
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movsd	QWORD PTR [rsi+16], xmm0	# MEM[(double *)dy_6(D) + 16B], _184
.L2:
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	cmp	edi, r8d	# n, m
	jle	.L1	#,
	movsx	r9, r8d	# _108, m
	lea	rdx, [0+r9*8]	# _103,
	lea	r11, [rsi+32+r9*8]	# _97,
	lea	rax, [rsi+rdx]	# _102,
	add	rdx, rcx	# _94, dx
	cmp	rdx, r11	# _94, _97
	jnb	.L12	#,
	lea	rcx, [rcx+32+r9*8]	# _105,
	cmp	rax, rcx	# _102, _105
	jb	.L7	#,
.L12:
	lea	esi, [rdi-1]	# _89,
	unpcklpd	xmm2, xmm2	# _141
	xor	ecx, ecx	# ivtmp.65
	sub	esi, r8d	# _131, m
	shr	esi, 2	# _132,
	add	esi, 1	# bnd.25,
	.p2align 6
	.p2align 4
	.p2align 3
.L9:
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movupd	xmm0, XMMWORD PTR [rdx+16]	# vect__22.33_150, MEM <vector(2) double> [(double *)_42 + 16B]
	movupd	xmm1, XMMWORD PTR [rdx]	# vect__22.32_148, MEM <vector(2) double> [(double *)_42]
	add	ecx, 1	# ivtmp.65,
	add	rax, 32	# ivtmp.67,
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movupd	xmm3, XMMWORD PTR [rax-16]	# tmp263, MEM <vector(2) double> [(double *)_40 + 16B]
	movupd	xmm4, XMMWORD PTR [rax-32]	# tmp264, MEM <vector(2) double> [(double *)_40]
	add	rdx, 32	# ivtmp.70,
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	mulpd	xmm0, xmm2	# vect__23.34_152, _141
	mulpd	xmm1, xmm2	# vect__23.34_151, _141
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	addpd	xmm0, xmm3	# vect__24.35, tmp263
	addpd	xmm1, xmm4	# vect__24.35_153, tmp264
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movups	XMMWORD PTR [rax-16], xmm0	# MEM <vector(2) double> [(double *)_40 + 16B], vect__24.35
	movups	XMMWORD PTR [rax-32], xmm1	# MEM <vector(2) double> [(double *)_40], vect__24.35_153
	cmp	ecx, esi	# ivtmp.65, bnd.25
	jb	.L9	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L7:
	lea	ecx, [rdi-1]	# _71,
	sub	rcx, r8	# _134, m
	and	ecx, 4294967292	# _133,
	add	rcx, r9	# _143, _108
	lea	rcx, [rsi+32+rcx*8]	# _211,
	.p2align 4
	.p2align 3
.L11:
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movsd	xmm0, QWORD PTR [rdx]	# _83, MEM[(double *)_177]
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	add	rax, 32	# ivtmp.60,
	add	rdx, 32	# ivtmp.61,
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	mulsd	xmm0, xmm2	# _83, da
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	addsd	xmm0, QWORD PTR [rax-32]	# _82, MEM[(double *)_126]
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movsd	QWORD PTR [rax-32], xmm0	# MEM[(double *)_126], _82
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movsd	xmm0, QWORD PTR [rdx-24]	# _74, MEM[(double *)_177 + 8B]
	mulsd	xmm0, xmm2	# _74, da
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	addsd	xmm0, QWORD PTR [rax-24]	# _73, MEM[(double *)_126 + 8B]
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movsd	QWORD PTR [rax-24], xmm0	# MEM[(double *)_126 + 8B], _73
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movsd	xmm0, QWORD PTR [rdx-16]	# _59, MEM[(double *)_177 + 16B]
	mulsd	xmm0, xmm2	# _59, da
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	addsd	xmm0, QWORD PTR [rax-16]	# _58, MEM[(double *)_126 + 16B]
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movsd	QWORD PTR [rax-16], xmm0	# MEM[(double *)_126 + 16B], _58
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movsd	xmm0, QWORD PTR [rdx-8]	# _116, MEM[(double *)_177 + 24B]
	mulsd	xmm0, xmm2	# _116, da
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	addsd	xmm0, QWORD PTR [rax-8]	# _117, MEM[(double *)_126 + 24B]
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movsd	QWORD PTR [rax-8], xmm0	# MEM[(double *)_126 + 24B], _117
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	cmp	rax, rcx	# ivtmp.60, _211
	jne	.L11	#,
.L1:
# linpack.c:383: }
	ret	
	.p2align 4,,10
	.p2align 3
.L3:
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	mulsd	xmm0, QWORD PTR [rcx]	# _18, *dx_9(D)
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	addsd	xmm0, QWORD PTR [rsi]	# _19, *dy_6(D)
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movsd	QWORD PTR [rsi], xmm0	# *dy_6(D), _19
# linpack.c:369:     for ( i = 0; i < m; i++ )
	test	dil, 2	# n,
	je	.L2	#,
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movsd	xmm0, QWORD PTR [rcx+8]	# _30, MEM[(double *)dx_9(D) + 8B]
	mulsd	xmm0, xmm2	# _30, da
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	addsd	xmm0, QWORD PTR [rsi+8]	# _31, MEM[(double *)dy_6(D) + 8B]
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movsd	QWORD PTR [rsi+8], xmm0	# MEM[(double *)dy_6(D) + 8B], _31
# linpack.c:369:     for ( i = 0; i < m; i++ )
	cmp	r8d, 3	# m,
	je	.L30	#,
	jmp	.L2	#
	.cfi_endproc
.LFE36:
	.size	daxpy.part.0, .-daxpy.part.0
	.p2align 4
	.type	ddot.part.0, @function
ddot.part.0:
.LFB37:
	.cfi_startproc
# linpack.c:483:     m = n % 5;
	movsx	rcx, edi	# n, n
	mov	eax, edi	# tmp222, n
# linpack.c:386: double ddot ( int n, double dx[], int incx, double dy[], int incy )
	mov	r8, rsi	# dx, dx
	mov	r9, rdx	# dy, dy
# linpack.c:483:     m = n % 5;
	imul	rcx, rcx, 1717986919	# tmp219, n,
	sar	eax, 31	# tmp222,
	sar	rcx, 33	# tmp221,
	sub	ecx, eax	# tmp.83, tmp222
	lea	eax, [rcx+rcx*4]	# tmp225,
# linpack.c:485:     for ( i = 0; i < m; i++ )
	mov	ecx, edi	# tmp.83, n
	sub	ecx, eax	# tmp.83, tmp225
	je	.L42	#,
	cmp	ecx, 1	# tmp.83,
	je	.L43	#,
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	movupd	xmm1, XMMWORD PTR [rsi]	# vect__12.110, MEM <vector(2) double> [(double *)dx_6(D)]
	movupd	xmm6, XMMWORD PTR [rdx]	# tmp290, MEM <vector(2) double> [(double *)dy_9(D)]
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	pxor	xmm2, xmm2	# tmp229
	mov	eax, ecx	# bnd.101_205, tmp.83
	shr	eax	# bnd.101_205
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	mulpd	xmm1, xmm6	# vect__12.110, tmp290
	movapd	xmm0, xmm1	# stmp_dtemp_14.111, vect__12.110
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	unpckhpd	xmm1, xmm1	# stmp_dtemp_14.111_13
	addsd	xmm0, xmm2	# stmp_dtemp_14.111_15, tmp229
	addsd	xmm0, xmm1	# <retval>, stmp_dtemp_14.111_13
	cmp	eax, 2	# bnd.101_205,
	je	.L51	#,
	cmp	ecx, 2	# tmp.83,
	je	.L33	#,
# linpack.c:485:     for ( i = 0; i < m; i++ )
	mov	eax, 2	#,
.L34:
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	movsd	xmm1, QWORD PTR [r9+rax*8]	# *_63, *_63
	mulsd	xmm1, QWORD PTR [r8+rax*8]	# _61, *_71
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	addsd	xmm0, xmm1	# <retval>, _61
.L33:
# linpack.c:490:     for ( i = m; i < n; i = i + 5 )
	cmp	edi, ecx	# n, tmp.83
	jle	.L32	#,
	sub	edi, 1	# _82,
	sub	edi, ecx	# _193, tmp.83
	cmp	edi, 4	# _193,
	jbe	.L38	#,
	mov	esi, edi	# _193, _193
	mov	eax, 3435973837	# tmp242,
	movsx	rdx, ecx	# _134, tmp.83
	imul	rsi, rax	# tmp241, tmp242
	sal	rdx, 3	# _133,
	lea	rax, [r9+rdx]	# ivtmp.120,
	add	rdx, r8	# ivtmp.122, dx
	shr	rsi, 34	# _192,
	add	esi, 1	# niters.80,
	mov	edi, esi	# _19, niters.80
	shr	edi	# _19
	lea	rdi, [rdi+rdi*4]	# _74,
	sal	rdi, 4	# tmp250,
	add	rdi, rax	# _149, ivtmp.120
	.p2align 4
	.p2align 3
.L39:
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movupd	xmm7, XMMWORD PTR [rdx]	# tmp296, MEM <vector(2) double> [(double *)_4]
	movupd	xmm4, XMMWORD PTR [rax]	# vect__23.98, MEM <vector(2) double> [(double *)_220]
	add	rax, 80	# ivtmp.120,
	add	rdx, 80	# ivtmp.122,
	movupd	xmm6, XMMWORD PTR [rdx-64]	# tmp298, MEM <vector(2) double> [(double *)_4 + 16B]
	movupd	xmm3, XMMWORD PTR [rax-64]	# vect__23.98, MEM <vector(2) double> [(double *)_220 + 16B]
	mulpd	xmm4, xmm7	# vect__23.98, tmp296
	movupd	xmm2, XMMWORD PTR [rax-48]	# vect__23.98, MEM <vector(2) double> [(double *)_220 + 32B]
	movupd	xmm7, XMMWORD PTR [rdx-48]	# tmp300, MEM <vector(2) double> [(double *)_4 + 32B]
	mulpd	xmm3, xmm6	# vect__23.98, tmp298
	movupd	xmm1, XMMWORD PTR [rax-32]	# vect__23.98, MEM <vector(2) double> [(double *)_220 + 48B]
	movupd	xmm6, XMMWORD PTR [rdx-32]	# tmp302, MEM <vector(2) double> [(double *)_4 + 48B]
	mulpd	xmm2, xmm7	# vect__23.98, tmp300
	movupd	xmm5, XMMWORD PTR [rax-16]	# vect__23.98, MEM <vector(2) double> [(double *)_220 + 64B]
	movupd	xmm7, XMMWORD PTR [rdx-16]	# tmp304, MEM <vector(2) double> [(double *)_4 + 64B]
	mulpd	xmm1, xmm6	# vect__23.98, tmp302
	mulpd	xmm5, xmm7	# vect__23.98, tmp304
	addsd	xmm0, xmm4	# stmp_dtemp_57.99, stmp_dtemp_57.99
	unpckhpd	xmm4, xmm4	# stmp_dtemp_57.99
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addsd	xmm4, xmm0	# stmp_dtemp_57.99, stmp_dtemp_57.99
	movapd	xmm0, xmm3	# stmp_dtemp_57.99, vect__23.98
	unpckhpd	xmm3, xmm3	# stmp_dtemp_57.99
	addsd	xmm0, xmm4	# stmp_dtemp_57.99, stmp_dtemp_57.99
	addsd	xmm3, xmm0	# stmp_dtemp_57.99, stmp_dtemp_57.99
	movapd	xmm0, xmm2	# stmp_dtemp_57.99, vect__23.98
	unpckhpd	xmm2, xmm2	# stmp_dtemp_57.99
	addsd	xmm0, xmm3	# stmp_dtemp_57.99, stmp_dtemp_57.99
	addsd	xmm2, xmm0	# stmp_dtemp_57.99, stmp_dtemp_57.99
	movapd	xmm0, xmm1	# stmp_dtemp_57.99, vect__23.98
	unpckhpd	xmm1, xmm1	# stmp_dtemp_57.99
	addsd	xmm0, xmm2	# stmp_dtemp_57.99, stmp_dtemp_57.99
	addsd	xmm1, xmm0	# stmp_dtemp_57.99, stmp_dtemp_57.99
	movapd	xmm0, xmm5	# stmp_dtemp_57.99, vect__23.98
	unpckhpd	xmm5, xmm5	# stmp_dtemp_57.99_84
	addsd	xmm0, xmm1	# stmp_dtemp_57.99_85, stmp_dtemp_57.99
	addsd	xmm0, xmm5	# <retval>, stmp_dtemp_57.99_84
	cmp	rdi, rax	# _149, ivtmp.120
	jne	.L39	#,
	test	sil, 1	# niters.80,
	je	.L32	#,
	and	esi, -2	# niters_vector_mult_vf.82_139,
	lea	eax, [rsi+rsi*4]	# _136,
	add	ecx, eax	# tmp.83, _136
.L38:
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movsx	rcx, ecx	# _189, tmp.83
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movsd	xmm1, QWORD PTR [r9+rcx*8]	# *_185, *_185
	mulsd	xmm1, QWORD PTR [r8+rcx*8]	# _183, *_187
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addsd	xmm1, xmm0	# _182, <retval>
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	movsd	xmm0, QWORD PTR [r9+8+rcx*8]	# *_177, *_177
	mulsd	xmm0, QWORD PTR [r8+8+rcx*8]	# _175, *_179
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	addsd	xmm1, xmm0	# _174, _175
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	movsd	xmm0, QWORD PTR [r9+16+rcx*8]	# *_169, *_169
	mulsd	xmm0, QWORD PTR [r8+16+rcx*8]	# _167, *_171
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	addsd	xmm1, xmm0	# _166, _167
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	movsd	xmm0, QWORD PTR [r9+24+rcx*8]	# *_161, *_161
	mulsd	xmm0, QWORD PTR [r8+24+rcx*8]	# _159, *_163
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	addsd	xmm1, xmm0	# _158, _159
# linpack.c:496:                     + dx[i+4] * dy[i+4];
	movsd	xmm0, QWORD PTR [r9+32+rcx*8]	# *_153, *_153
	mulsd	xmm0, QWORD PTR [r8+32+rcx*8]	# _151, *_155
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addsd	xmm0, xmm1	# <retval>, _158
.L32:
# linpack.c:500: }
	ret	
	.p2align 4,,10
	.p2align 3
.L51:
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	movupd	xmm1, XMMWORD PTR [rsi+16]	# vect__12.110, MEM <vector(2) double> [(double *)dx_6(D) + 16B]
	movupd	xmm7, XMMWORD PTR [rdx+16]	# tmp293, MEM <vector(2) double> [(double *)dy_9(D) + 16B]
	mulpd	xmm1, xmm7	# vect__12.110, tmp293
	addsd	xmm0, xmm1	# stmp_dtemp_14.111, stmp_dtemp_14.111
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	unpckhpd	xmm1, xmm1	# stmp_dtemp_14.111_217
	addsd	xmm0, xmm1	# <retval>, stmp_dtemp_14.111_217
	jmp	.L33	#
	.p2align 4,,10
	.p2align 3
.L42:
# linpack.c:441:   dtemp = 0.0;
	pxor	xmm0, xmm0	# <retval>
	jmp	.L33	#
.L43:
	pxor	xmm0, xmm0	# <retval>
# linpack.c:485:     for ( i = 0; i < m; i++ )
	xor	eax, eax	#
	jmp	.L34	#
	.cfi_endproc
.LFE37:
	.size	ddot.part.0, .-ddot.part.0
	.p2align 4
	.type	dscal.part.0, @function
dscal.part.0:
.LFB38:
	.cfi_startproc
# linpack.c:780:     m = n % 5;
	movsx	rcx, edi	# n, n
	mov	eax, edi	# tmp160, n
# linpack.c:731: void dscal ( int n, double sa, double x[], int incx )
	movapd	xmm6, xmm0	# sa, sa
	mov	r8, rsi	# x, x
# linpack.c:780:     m = n % 5;
	imul	rcx, rcx, 1717986919	# tmp157, n,
	sar	eax, 31	# tmp160,
	unpcklpd	xmm0, xmm0	# _7
	sar	rcx, 33	# tmp159,
	sub	ecx, eax	# tmp.131, tmp160
	lea	eax, [rcx+rcx*4]	# tmp163,
# linpack.c:782:     for ( i = 0; i < m; i++ )
	mov	ecx, edi	# tmp.131, n
	sub	ecx, eax	# tmp.131, tmp163
	je	.L53	#,
	cmp	ecx, 1	# tmp.131,
	je	.L61	#,
# linpack.c:784:       x[i] = sa * x[i];
	movupd	xmm1, XMMWORD PTR [rsi]	# vect__8.148_8, MEM <vector(2) double> [(double *)x_6(D)]
	mov	eax, ecx	# bnd.143_166, tmp.131
	shr	eax	# bnd.143_166
# linpack.c:784:       x[i] = sa * x[i];
	mulpd	xmm1, xmm0	# vect__10.149_10, _7
# linpack.c:784:       x[i] = sa * x[i];
	movups	XMMWORD PTR [rsi], xmm1	# MEM <vector(2) double> [(double *)x_6(D)], vect__10.149_10
	cmp	eax, 2	# bnd.143_166,
	je	.L72	#,
	cmp	ecx, 2	# tmp.131,
	je	.L53	#,
# linpack.c:782:     for ( i = 0; i < m; i++ )
	mov	eax, 2	#,
.L54:
# linpack.c:784:       x[i] = sa * x[i];
	movsd	xmm1, QWORD PTR [r8+rax*8]	# _159, *_157
	mulsd	xmm1, xmm6	# _159, sa
# linpack.c:784:       x[i] = sa * x[i];
	movsd	QWORD PTR [r8+rax*8], xmm1	# *_157, _159
.L53:
# linpack.c:787:     for ( i = m; i < n; i = i + 5 )
	cmp	edi, ecx	# n, tmp.131
	jle	.L52	#,
	sub	edi, 1	# _116,
	sub	edi, ecx	# _85, tmp.131
	cmp	edi, 4	# _85,
	jbe	.L58	#,
	mov	eax, 3435973837	# tmp177,
	mov	edx, edi	# _85, _85
	imul	rdx, rax	# tmp176, tmp177
	movsx	rax, ecx	# _114, tmp.131
	lea	rax, [r8+rax*8]	# ivtmp.164,
	shr	rdx, 34	# _84,
	add	edx, 1	# niters.128,
	mov	esi, edx	# _175, niters.128
	shr	esi	# _175
	lea	rsi, [rsi+rsi*4]	# _170,
	sal	rsi, 4	# tmp186,
	add	rsi, rax	# _64, ivtmp.164
	.p2align 4
	.p2align 3
.L59:
# linpack.c:789:       x[i]   = sa * x[i];
	movupd	xmm4, XMMWORD PTR [rax+16]	# vect__16.135_120, MEM <vector(2) double> [(double *)_178 + 16B]
	movupd	xmm3, XMMWORD PTR [rax+32]	# vect__16.136_122, MEM <vector(2) double> [(double *)_178 + 32B]
	add	rax, 80	# ivtmp.164,
	movupd	xmm2, XMMWORD PTR [rax-32]	# vect__16.137_124, MEM <vector(2) double> [(double *)_178 + 48B]
	movupd	xmm1, XMMWORD PTR [rax-16]	# vect__16.138_126, MEM <vector(2) double> [(double *)_178 + 64B]
	movupd	xmm5, XMMWORD PTR [rax-80]	# vect__16.134_118, MEM <vector(2) double> [(double *)_178]
# linpack.c:789:       x[i]   = sa * x[i];
	mulpd	xmm4, xmm0	# vect__17.139, _7
	mulpd	xmm3, xmm0	# vect__17.139, _7
	mulpd	xmm2, xmm0	# vect__17.139, _7
	mulpd	xmm1, xmm0	# vect__17.139, _7
	mulpd	xmm5, xmm0	# vect__17.139_127, _7
# linpack.c:789:       x[i]   = sa * x[i];
	movups	XMMWORD PTR [rax-64], xmm4	# MEM <vector(2) double> [(double *)_178 + 16B], vect__17.139
	movups	XMMWORD PTR [rax-48], xmm3	# MEM <vector(2) double> [(double *)_178 + 32B], vect__17.139
	movups	XMMWORD PTR [rax-32], xmm2	# MEM <vector(2) double> [(double *)_178 + 48B], vect__17.139
	movups	XMMWORD PTR [rax-16], xmm1	# MEM <vector(2) double> [(double *)_178 + 64B], vect__17.139
	movups	XMMWORD PTR [rax-80], xmm5	# MEM <vector(2) double> [(double *)_178], vect__17.139_127
	cmp	rsi, rax	# _64, ivtmp.164
	jne	.L59	#,
	test	dl, 1	# niters.128,
	je	.L52	#,
	and	edx, -2	# niters_vector_mult_vf.130_104,
	lea	eax, [rdx+rdx*4]	# _107,
	add	ecx, eax	# tmp.131, _107
.L58:
# linpack.c:789:       x[i]   = sa * x[i];
	movsx	rcx, ecx	# _81, tmp.131
	sal	rcx, 3	# _80,
	lea	rax, [r8+rcx]	# _79,
	movupd	xmm1, XMMWORD PTR [rax+16]	# vect__78.158_82, MEM <vector(2) double> [(double *)_79 + 16B]
# linpack.c:789:       x[i]   = sa * x[i];
	movupd	xmm7, XMMWORD PTR [rax]	# tmp215, MEM <vector(2) double> [(double *)_79]
	mulpd	xmm1, xmm0	# vect__77.159, _7
	mulpd	xmm0, xmm7	# vect__77.159_14, tmp215
# linpack.c:789:       x[i]   = sa * x[i];
	movups	XMMWORD PTR [rax+16], xmm1	# MEM <vector(2) double> [(double *)_79 + 16B], vect__77.159
	movups	XMMWORD PTR [rax], xmm0	# MEM <vector(2) double> [(double *)_79], vect__77.159_14
# linpack.c:793:       x[i+4] = sa * x[i+4];
	mulsd	xmm6, QWORD PTR [r8+32+rcx]	# _40, *_49
# linpack.c:793:       x[i+4] = sa * x[i+4];
	movsd	QWORD PTR [r8+32+rcx], xmm6	# *_49, _40
.L52:
# linpack.c:814: }
	ret	
	.p2align 4,,10
	.p2align 3
.L72:
# linpack.c:784:       x[i] = sa * x[i];
	movupd	xmm1, XMMWORD PTR [rsi+16]	# vect__8.148_171, MEM <vector(2) double> [(double *)x_6(D) + 16B]
# linpack.c:784:       x[i] = sa * x[i];
	mulpd	xmm1, xmm0	# vect__10.149_173, _7
# linpack.c:784:       x[i] = sa * x[i];
	movups	XMMWORD PTR [rsi+16], xmm1	# MEM <vector(2) double> [(double *)x_6(D) + 16B], vect__10.149_173
	jmp	.L53	#
.L61:
# linpack.c:782:     for ( i = 0; i < m; i++ )
	xor	eax, eax	#
	jmp	.L54	#
	.cfi_endproc
.LFE38:
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
	divsd	xmm0, QWORD PTR .LC1[rip]	# value_5,
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
	pxor	xmm1, xmm1	# tmp138
# linpack.c:316: {
	mov	r9, rcx	# dy, dy
# linpack.c:327:   if ( da == 0.0 )
	mov	ecx, 0	# tmp140,
	ucomisd	xmm0, xmm1	# da, tmp138
	setnp	al	#, tmp137
	cmovne	eax, ecx	# tmp137,, _37, tmp140
	test	al, al	# _37
	jne	.L75	#,
	test	edi, edi	# n
	jle	.L75	#,
# linpack.c:335:   if ( incx != 1 || incy != 1 )
	cmp	edx, 1	# incx,
	jne	.L87	#,
	cmp	r8d, 1	# incy,
	jne	.L87	#,
	mov	rdx, r9	#, dy
	jmp	daxpy.part.0	#
	.p2align 4,,10
	.p2align 3
.L75:
# linpack.c:383: }
	ret	
	.p2align 4,,10
	.p2align 3
.L87:
# linpack.c:339:       ix = 0;
	xor	ecx, ecx	# ix
# linpack.c:337:     if ( 0 <= incx )
	test	edx, edx	# incx
	js	.L89	#,
.L81:
# linpack.c:348:       iy = 0;
	xor	eax, eax	# iy
# linpack.c:346:     if ( 0 <= incy )
	test	r8d, r8d	# incy
	js	.L90	#,
.L82:
	movsx	rcx, ecx	# _119, ix
	movsx	r8, r8d	# _128, incy
	cdqe
	movsx	rdx, edx	# _116, incx
	lea	rsi, [rsi+rcx*8]	# ivtmp.203,
	sal	r8, 3	# _129,
	lea	rax, [r9+rax*8]	# ivtmp.202,
	sal	rdx, 3	# _117,
# linpack.c:348:       iy = 0;
	xor	ecx, ecx	# i
.L83:
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	movsd	xmm1, QWORD PTR [rsi]	# _14, MEM[(double *)_124]
# linpack.c:355:     for ( i = 0; i < n; i++ )
	add	ecx, 1	# i,
# linpack.c:355:     for ( i = 0; i < n; i++ )
	add	rsi, rdx	# ivtmp.203, _117
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	mulsd	xmm1, xmm0	# _14, da
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	addsd	xmm1, QWORD PTR [rax]	# _15, MEM[(double *)_122]
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	movsd	QWORD PTR [rax], xmm1	# MEM[(double *)_122], _15
# linpack.c:355:     for ( i = 0; i < n; i++ )
	add	rax, r8	# ivtmp.202, _129
	cmp	edi, ecx	# n, i
	jg	.L83	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L90:
# linpack.c:352:       iy = ( - n + 1 ) * incy;
	mov	eax, 1	# tmp150,
	sub	eax, edi	# _5, n
# linpack.c:352:       iy = ( - n + 1 ) * incy;
	imul	eax, r8d	# iy, incy
	jmp	.L82	#
	.p2align 4,,10
	.p2align 3
.L89:
# linpack.c:343:       ix = ( - n + 1 ) * incx;
	mov	ecx, 1	# tmp148,
	sub	ecx, edi	# _4, n
# linpack.c:343:       ix = ( - n + 1 ) * incx;
	imul	ecx, edx	# ix, incx
	jmp	.L81	#
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
	mov	r9, rsi	# dx, dx
	mov	rsi, rcx	# dy, dy
# linpack.c:443:   if ( n <= 0 )
	test	edi, edi	# n
	jle	.L98	#,
# linpack.c:451:   if ( incx != 1 || incy != 1 )
	cmp	edx, 1	# incx,
	jne	.L101	#,
	cmp	r8d, 1	# incy,
	jne	.L101	#,
	mov	rdx, rcx	#, dy
	mov	rsi, r9	#, dx
	jmp	ddot.part.0	#
	.p2align 4,,10
	.p2align 3
.L101:
# linpack.c:455:       ix = 0;
	xor	ecx, ecx	# ix
# linpack.c:453:     if ( 0 <= incx )
	test	edx, edx	# incx
	jns	.L95	#,
# linpack.c:459:       ix = ( - n + 1 ) * incx;
	mov	ecx, 1	# tmp135,
	sub	ecx, edi	# _4, n
# linpack.c:459:       ix = ( - n + 1 ) * incx;
	imul	ecx, edx	# ix, incx
.L95:
# linpack.c:464:       iy = 0;
	xor	eax, eax	# iy
# linpack.c:462:     if ( 0 <= incy )
	test	r8d, r8d	# incy
	jns	.L96	#,
# linpack.c:468:       iy = ( - n + 1 ) * incy;
	mov	eax, 1	# tmp137,
	sub	eax, edi	# _5, n
# linpack.c:468:       iy = ( - n + 1 ) * incy;
	imul	eax, r8d	# iy, incy
.L96:
	movsx	rcx, ecx	# _47, ix
	cdqe
	movsx	rdx, edx	# _85, incx
	movsx	r8, r8d	# _38, incy
	lea	r9, [r9+rcx*8]	# ivtmp.233,
	sal	rdx, 3	# _83,
	lea	rcx, [rsi+rax*8]	# ivtmp.234,
	sal	r8, 3	# _37,
# linpack.c:464:       iy = 0;
	xor	eax, eax	# i
	pxor	xmm0, xmm0	# <retval>
.L97:
# linpack.c:473:       dtemp = dtemp + dx[ix] * dy[iy];
	movsd	xmm1, QWORD PTR [r9]	# MEM[(double *)_17], MEM[(double *)_17]
	mulsd	xmm1, QWORD PTR [rcx]	# _14, MEM[(double *)_16]
# linpack.c:471:     for ( i = 0; i < n; i++ )
	add	eax, 1	# i,
# linpack.c:471:     for ( i = 0; i < n; i++ )
	add	r9, rdx	# ivtmp.233, _83
	add	rcx, r8	# ivtmp.234, _37
# linpack.c:473:       dtemp = dtemp + dx[ix] * dy[iy];
	addsd	xmm0, xmm1	# <retval>, _14
# linpack.c:471:     for ( i = 0; i < n; i++ )
	cmp	edi, eax	# n, i
	jne	.L97	#,
	ret	
	.p2align 4,,10
	.p2align 3
.L98:
# linpack.c:445:     return dtemp;
	pxor	xmm0, xmm0	# <retval>
# linpack.c:500: }
	ret	
	.cfi_endproc
.LFE25:
	.size	ddot, .-ddot
	.p2align 4
	.globl	dgefa
	.type	dgefa, @function
dgefa:
.LFB26:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	mov	rax, rdi	# a, a
	mov	r15d, edx	# n, n
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
# linpack.c:548: {
	mov	DWORD PTR [rsp+20], esi	# %sfp, lda
	mov	QWORD PTR [rsp+8], rcx	# %sfp, ipvt
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	cmp	edx, 1	# n,
	jle	.L126	#,
	movsx	r14, esi	# _86, lda
	lea	edx, [rsi+1]	# _44,
	mov	rbp, rdi	# ivtmp.276, a
	mov	r11d, 2	# ivtmp.274,
	mov	DWORD PTR [rsp+40], edx	# %sfp, _44
	mov	edx, r15d	# _188, n
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm8, xmm8	# tmp185
	lea	rcx, [8+r14*8]	# _66,
	mov	QWORD PTR [rsp+24], rcx	# %sfp, _66
	sal	r14, 3	# _156,
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	xor	ecx, ecx	# ivtmp.278
	mov	r13d, 1	# ivtmp.272,
# linpack.c:557:   info = 0;
	mov	DWORD PTR [rsp+44], 0	# %sfp,
	mov	QWORD PTR [rsp+32], rdx	# %sfp, _188
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	xor	edx, edx	# ivtmp.283
	.p2align 4
	.p2align 3
.L122:
# linpack.c:883:     dmax = r8_abs ( dx[0] );
	movsd	xmm3, QWORD PTR [rbp+0]	# dmax, MEM[(double *)_8]
# linpack.c:946:     value = -x;
	movapd	xmm0, xmm8	# tmp244, tmp185
	mov	r8d, r15d	# _111, n
	mov	edi, r13d	# k, ivtmp.272
	sub	r8d, r11d	# _111, ivtmp.274
# linpack.c:557:   info = 0;
	mov	esi, 2	# ivtmp.265,
	mov	ebx, 1	# value,
# linpack.c:946:     value = -x;
	cmpnlesd	xmm0, xmm3	#, tmp244, dmax
	movapd	xmm1, xmm3	# tmp242, dmax
	add	r8, 3	# _110,
	xorpd	xmm1, XMMWORD PTR .LC2[rip]	# tmp242,
	andpd	xmm1, xmm0	# tmp245, tmp244
	andnpd	xmm0, xmm3	# tmp246, dmax
	movapd	xmm3, xmm0	# tmp246, tmp246
	orpd	xmm3, xmm1	# tmp246, tmp245
	.p2align 4
	.p2align 3
.L109:
# linpack.c:887:       if ( dmax < r8_abs ( dx[i] ) )
	movsd	xmm0, QWORD PTR [rbp-8+rsi*8]	# value, MEM[(double *)_8 + -8B + ivtmp.265_133 * 8]
# linpack.c:946:     value = -x;
	movapd	xmm1, xmm8	# tmp249, tmp185
	cmpnlesd	xmm1, xmm0	#, tmp249, value
	movapd	xmm2, xmm0	# tmp247, value
	movapd	xmm4, xmm0	# tmp248, value
	xorpd	xmm2, XMMWORD PTR .LC2[rip]	# tmp247,
	andpd	xmm2, xmm1	# tmp247, tmp249
	andnpd	xmm1, xmm4	# tmp251, tmp248
	movapd	xmm0, xmm2	# tmp250, tmp247
	orpd	xmm0, xmm1	# value, tmp251
# linpack.c:887:       if ( dmax < r8_abs ( dx[i] ) )
	comisd	xmm0, xmm3	# value, dmax
# linpack.c:890:         dmax = r8_abs ( dx[i] );
	maxsd	xmm0, xmm3	# value, dmax
	cmova	ebx, esi	# ivtmp.265,, value
# linpack.c:885:     for ( i = 1; i < n; i++ )
	add	rsi, 1	# ivtmp.265,
# linpack.c:890:         dmax = r8_abs ( dx[i] );
	movapd	xmm3, xmm0	# dmax, value
# linpack.c:885:     for ( i = 1; i < n; i++ )
	cmp	r8, rsi	# _110, ivtmp.265
	jne	.L109	#,
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	add	ebx, edi	# _11, k
# linpack.c:565:     ipvt[k-1] = l;
	mov	r10, QWORD PTR [rsp+8]	# ipvt, %sfp
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	lea	r8d, [rbx-2+rcx]	# _15,
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	lea	esi, [rbx-1]	# l,
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	movsx	r8, r8d	# _16, _15
# linpack.c:565:     ipvt[k-1] = l;
	mov	DWORD PTR [r10-4+r13*4], esi	# MEM[(int *)ipvt_69(D) + -4B + ivtmp.272_109 * 4], l
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	lea	r8, [rax+r8*8]	# _18,
	movsd	xmm0, QWORD PTR [r8]	# _19, *_18
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	ucomisd	xmm0, xmm8	# _19, tmp185
	jp	.L130	#,
	jne	.L130	#,
# linpack.c:571:       info = k;
	mov	DWORD PTR [rsp+44], edi	# %sfp, k
	mov	edi, DWORD PTR [rsp+20]	# lda, %sfp
	add	ecx, edi	# ivtmp.278, lda
.L110:
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	add	r13, 1	# ivtmp.272,
	add	r11, 1	# ivtmp.274,
	add	rbp, QWORD PTR [rsp+24]	# ivtmp.276, %sfp
	add	edx, DWORD PTR [rsp+40]	# ivtmp.283, %sfp
	cmp	r13, QWORD PTR [rsp+32]	# ivtmp.272, %sfp
	jne	.L122	#,
.L104:
# linpack.c:605:   ipvt[n-1] = n;
	mov	rcx, QWORD PTR [rsp+8]	# ipvt, %sfp
# linpack.c:605:   ipvt[n-1] = n;
	movsx	rdx, r15d	# _47, n
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	pxor	xmm0, xmm0	# tmp225
# linpack.c:605:   ipvt[n-1] = n;
	mov	DWORD PTR [rcx-4+rdx*4], r15d	# *_49, n
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	mov	edx, DWORD PTR [rsp+20]	# lda, %sfp
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	lea	ecx, [r15-1]	# _50,
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	imul	edx, ecx	# lda, _50
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	add	edx, ecx	# _52, _50
	movsx	rdx, edx	# _53, _52
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	ucomisd	xmm0, QWORD PTR [rax+rdx*8]	# tmp225, *_55
# linpack.c:609:     info = n;
	mov	eax, DWORD PTR [rsp+44]	# <retval>, %sfp
	cmovne	r15d, eax	# <retval>,, tmp233
	cmovp	r15d, eax	# tmp233,, tmp233, <retval>
	mov	DWORD PTR [rsp+44], r15d	# %sfp, tmp233
# linpack.c:613: }
	add	rsp, 88	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	mov	eax, r15d	#, tmp233
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
.L130:
	.cfi_restore_state
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	mov	edi, r15d	# _9, n
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movsx	r9, edx	# _212, ivtmp.283
	mov	QWORD PTR [rsp+64], rax	# %sfp, a
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	mov	r12d, r11d	# j, ivtmp.274
	mov	DWORD PTR [rsp+56], ecx	# %sfp, ivtmp.278
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movsd	xmm1, QWORD PTR [rax+r9*8]	# pretmp_215, *_214
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	sub	edi, r13d	# _9, ivtmp.272
	mov	DWORD PTR [rsp+48], edx	# %sfp, ivtmp.283
# linpack.c:577:     if ( l != k )
	cmp	esi, r13d	# l, ivtmp.272
	je	.L112	#,
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movsd	QWORD PTR [r8], xmm1	# *_18, pretmp_215
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	movsd	xmm1, QWORD PTR .LC3[rip]	# tmp204,
# linpack.c:581:       a[k-1+(k-1)*lda] = t;
	movsd	QWORD PTR [rax+r9*8], xmm0	# *_214, _19
# linpack.c:588:     dscal ( n-k, t, a+k+(k-1)*lda, 1 );
	lea	r9, [rbp+8]	# _193,
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	divsd	xmm1, xmm0	# t_98, _19
	mov	rsi, r9	#, _193
	mov	DWORD PTR [rsp+72], edi	# %sfp, _9
	movapd	xmm0, xmm1	#, t_98
	call	dscal.part.0	#
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	cmp	r15d, r11d	# n, ivtmp.274
	mov	edi, DWORD PTR [rsp+72]	# _9, %sfp
	mov	edx, DWORD PTR [rsp+48]	# ivtmp.283, %sfp
	mov	ecx, DWORD PTR [rsp+56]	# ivtmp.278, %sfp
	mov	rax, QWORD PTR [rsp+64]	# a, %sfp
	jl	.L104	#,
	add	ecx, DWORD PTR [rsp+20]	# ivtmp.278, %sfp
	movsx	rbx, ebx	# _144, _11
	mov	DWORD PTR [rsp+72], edx	# %sfp, ivtmp.283
	mov	r10, r9	# _193, _193
	movsx	rsi, ecx	# _150, ivtmp.278
	mov	QWORD PTR [rsp+56], r11	# %sfp, ivtmp.274
	sub	rbx, r13	# _142, ivtmp.272
	mov	DWORD PTR [rsp+76], ecx	# %sfp, ivtmp.278
	add	rsi, r13	# _148, ivtmp.272
	mov	QWORD PTR [rsp+48], rbp	# %sfp, ivtmp.276
	lea	r12, [rax+rsi*8]	# ivtmp.259,
	mov	rbp, rbx	# _142, _142
	mov	ebx, r11d	# j, j
	mov	QWORD PTR [rsp+64], r13	# %sfp, ivtmp.272
	mov	r13, r14	# _156, _156
	mov	r14d, r15d	# n, n
	mov	r15, rax	# a, a
	.p2align 4
	.p2align 3
.L121:
# linpack.c:594:       t = a[l-1+(j-1)*lda];
	movsd	xmm0, QWORD PTR [r12-16+rbp*8]	# t, MEM[(double *)_145 + -16B + _142 * 8]
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movsd	xmm1, QWORD PTR [r12-8]	# _42, MEM[(double *)_145 + -8B]
# linpack.c:327:   if ( da == 0.0 )
	ucomisd	xmm0, xmm8	# t, tmp185
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movsd	QWORD PTR [r12-16+rbp*8], xmm1	# MEM[(double *)_145 + -16B + _142 * 8], _42
# linpack.c:598:         a[k-1+(j-1)*lda] = t;
	movsd	QWORD PTR [r12-8], xmm0	# MEM[(double *)_145 + -8B], t
# linpack.c:327:   if ( da == 0.0 )
	jp	.L132	#,
	je	.L119	#,
.L132:
	mov	rdx, r12	#, ivtmp.259
	mov	rsi, r10	#, _193
	call	daxpy.part.0	#
.L119:
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	add	ebx, 1	# j,
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	add	r12, r13	# ivtmp.259, _156
	cmp	r14d, ebx	# n, j
	jge	.L121	#,
	mov	rax, r15	# a, a
	mov	edx, DWORD PTR [rsp+72]	# ivtmp.283, %sfp
	mov	r15d, r14d	# n, n
	mov	ecx, DWORD PTR [rsp+76]	# ivtmp.278, %sfp
	mov	r14, r13	# _156, _156
	mov	rbp, QWORD PTR [rsp+48]	# ivtmp.276, %sfp
	mov	r11, QWORD PTR [rsp+56]	# ivtmp.274, %sfp
	mov	r13, QWORD PTR [rsp+64]	# ivtmp.272, %sfp
	jmp	.L110	#
	.p2align 4,,10
	.p2align 3
.L112:
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR .LC3[rip]	# tmp229,
# linpack.c:588:     dscal ( n-k, t, a+k+(k-1)*lda, 1 );
	lea	r9, [rbp+8]	# _25,
	mov	DWORD PTR [rsp+72], edi	# %sfp, _9
	mov	rsi, r9	#, _25
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	divsd	xmm0, xmm1	# t_190, pretmp_215
	call	dscal.part.0	#
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	cmp	r15d, r11d	# n, ivtmp.274
	mov	edi, DWORD PTR [rsp+72]	# _9, %sfp
	mov	edx, DWORD PTR [rsp+48]	# ivtmp.283, %sfp
	mov	ecx, DWORD PTR [rsp+56]	# ivtmp.278, %sfp
	mov	rax, QWORD PTR [rsp+64]	# a, %sfp
	jl	.L104	#,
	add	ecx, DWORD PTR [rsp+20]	# ivtmp.278, %sfp
	movsx	rbx, ebx	# _144, _11
# linpack.c:594:       t = a[l-1+(j-1)*lda];
	mov	DWORD PTR [rsp+72], edx	# %sfp, ivtmp.283
	mov	r10, r9	# _25, _25
	movsx	rsi, ecx	# _95, ivtmp.278
	mov	QWORD PTR [rsp+56], r11	# %sfp, ivtmp.274
	sub	rbx, r13	# _104, ivtmp.272
	mov	DWORD PTR [rsp+76], ecx	# %sfp, ivtmp.278
	add	rsi, r13	# _93, ivtmp.272
	mov	QWORD PTR [rsp+48], rbp	# %sfp, ivtmp.276
	lea	rbp, [rax+rsi*8]	# ivtmp.250,
	mov	QWORD PTR [rsp+64], r13	# %sfp, ivtmp.272
	mov	r13, rbx	# _104, _104
	mov	ebx, r12d	# j, j
	mov	r12, r14	# _156, _156
	mov	r14d, r15d	# n, n
	mov	r15, rax	# a, a
	.p2align 4
	.p2align 3
.L117:
	movsd	xmm0, QWORD PTR [rbp-16+r13*8]	# t, MEM[(double *)_107 + -16B + _104 * 8]
# linpack.c:327:   if ( da == 0.0 )
	ucomisd	xmm0, xmm8	# t, tmp185
	jp	.L131	#,
	je	.L115	#,
.L131:
	mov	rdx, rbp	#, ivtmp.250
	mov	rsi, r10	#, _25
	call	daxpy.part.0	#
.L115:
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	add	ebx, 1	# j,
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	add	rbp, r12	# ivtmp.250, _156
	cmp	r14d, ebx	# n, j
	jge	.L117	#,
	mov	rax, r15	# a, a
	mov	edx, DWORD PTR [rsp+72]	# ivtmp.283, %sfp
	mov	r15d, r14d	# n, n
	mov	ecx, DWORD PTR [rsp+76]	# ivtmp.278, %sfp
	mov	rbp, QWORD PTR [rsp+48]	# ivtmp.276, %sfp
	mov	r11, QWORD PTR [rsp+56]	# ivtmp.274, %sfp
	mov	r14, r12	# _156, _156
	mov	r13, QWORD PTR [rsp+64]	# ivtmp.272, %sfp
	jmp	.L110	#
.L126:
# linpack.c:557:   info = 0;
	mov	DWORD PTR [rsp+44], 0	# %sfp,
	jmp	.L104	#
	.cfi_endproc
.LFE26:
	.size	dgefa, .-dgefa
	.p2align 4
	.globl	dgesl
	.type	dgesl, @function
dgesl:
.LFB27:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	mov	r10, r8	# b, b
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
	sub	rsp, 40	#,
	.cfi_def_cfa_offset 96
# linpack.c:679:   if ( job == 0 )
	test	r9d, r9d	# job
	je	.L140	#,
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	test	edx, edx	# n
	jle	.L139	#,
	movsx	r11, esi	# _147, lda
	xor	r15d, r15d	# ivtmp.339
	mov	rbx, rdi	# ivtmp.343, a
	lea	rax, [8+r11*8]	# _145,
	mov	QWORD PTR [rsp+16], rax	# %sfp, _145
	lea	rax, [0+r11*8]	# _140,
	mov	r11, rdi	# ivtmp.345, a
	mov	QWORD PTR [rsp+8], rax	# %sfp, _140
	mov	eax, edx	# _133, n
	mov	QWORD PTR [rsp+24], rax	# %sfp, _133
# linpack.c:443:   if ( n <= 0 )
	test	r15, r15	# ivtmp.339
	je	.L155	#,
	.p2align 4
	.p2align 3
.L169:
	mov	edi, r15d	# ivtmp.339, ivtmp.339
	mov	rdx, r10	#, b
	mov	rsi, r11	#, ivtmp.345
	call	ddot.part.0	#
	movapd	xmm1, xmm0	# _186,
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [r10+r15*8]	# MEM[(double *)b_85(D) + ivtmp.339_151 * 8], MEM[(double *)b_85(D) + ivtmp.339_151 * 8]
	subsd	xmm0, xmm1	# _3, _186
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	divsd	xmm0, QWORD PTR [rbx]	# _10, MEM[(double *)_7]
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [r10+r15*8], xmm0	# MEM[(double *)b_85(D) + ivtmp.339_151 * 8], _10
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	add	r15, 1	# ivtmp.339,
	cmp	r15, QWORD PTR [rsp+24]	# ivtmp.339, %sfp
	je	.L156	#,
	add	rbx, QWORD PTR [rsp+16]	# ivtmp.343, %sfp
	add	r11, QWORD PTR [rsp+8]	# ivtmp.345, %sfp
# linpack.c:443:   if ( n <= 0 )
	test	r15, r15	# ivtmp.339
	jne	.L169	#,
.L155:
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [r10]	# MEM[(double *)b_85(D)], MEM[(double *)b_85(D)]
	divsd	xmm0, QWORD PTR [rbx]	# _49, MEM[(double *)_137]
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [r10], xmm0	# MEM[(double *)b_85(D)], _49
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	cmp	ebp, 1	# n,
	je	.L139	#,
	add	rbx, QWORD PTR [rsp+16]	# ivtmp.343, %sfp
	add	r11, QWORD PTR [rsp+8]	# ivtmp.345, %sfp
	mov	r15d, 1	# ivtmp.339,
	jmp	.L169	#
	.p2align 4,,10
	.p2align 3
.L156:
	lea	r15d, [rbp-2]	# _166,
	movsx	r11, ebp	# _160, n
	mov	ebx, 1	# ivtmp.327,
	imul	r15d, r12d	# ivtmp.333, lda
	sub	r11, 1	# ivtmp.334,
	.p2align 4
	.p2align 3
.L160:
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movsx	rax, r15d	# _58, ivtmp.333
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movsd	xmm8, QWORD PTR [r10-8+r11*8]	# _53, MEM[(double *)b_85(D) + -8B + ivtmp.334_163 * 8]
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	lea	rdx, [r10+r11*8]	# _152,
	mov	edi, ebx	#, ivtmp.327
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	add	rax, r11	# _59, ivtmp.334
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	lea	rsi, [r13+0+rax*8]	# _61,
	call	ddot.part.0	#
# linpack.c:719:       if ( l != k )
	mov	edx, ebp	# _155, n
# linpack.c:717:       l = ipvt[k-1];
	movsx	rax, DWORD PTR [r14-4+r11*4]	#, MEM[(int *)ipvt_90(D) + -4B + ivtmp.334_163 * 4]
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	addsd	xmm0, xmm8	# _64, _53
# linpack.c:719:       if ( l != k )
	sub	edx, ebx	# _155, ivtmp.327
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movsd	QWORD PTR [r10-8+r11*8], xmm0	# MEM[(double *)b_85(D) + -8B + ivtmp.334_163 * 8], _64
# linpack.c:719:       if ( l != k )
	cmp	eax, edx	# l, _155
	je	.L159	#,
# linpack.c:721:         t = b[l-1];
	movsd	xmm1, QWORD PTR [r10-8+rax*8]	# t, *_69
# linpack.c:722:         b[l-1] = b[k-1];
	movsd	QWORD PTR [r10-8+rax*8], xmm0	# *_69, _64
# linpack.c:723:         b[k-1] = t;
	movsd	QWORD PTR [r10-8+r11*8], xmm1	# MEM[(double *)b_85(D) + -8B + ivtmp.334_163 * 8], t
.L159:
# linpack.c:714:     for ( k = n-1; 1 <= k; k-- )
	add	ebx, 1	# ivtmp.327,
	sub	r15d, r12d	# ivtmp.333, lda
	sub	r11, 1	# ivtmp.334,
	cmp	ebp, ebx	# n, ivtmp.327
	jne	.L160	#,
.L139:
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
	.p2align 4,,10
	.p2align 3
.L140:
	.cfi_restore_state
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	cmp	edx, 1	# n,
	jle	.L143	#,
	mov	eax, edx	# _182, n
	xor	r15d, r15d	# ivtmp.314
# linpack.c:327:   if ( da == 0.0 )
	pxor	xmm7, xmm7	# tmp229
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	mov	ebx, 1	# ivtmp.310,
	mov	QWORD PTR [rsp+8], rax	# %sfp, _182
	.p2align 4
	.p2align 3
.L147:
# linpack.c:683:       l = ipvt[k-1];
	movsx	rdx, DWORD PTR [r14-4+rbx*4]	#, MEM[(int *)ipvt_90(D) + -4B + ivtmp.310_193 * 4]
# linpack.c:684:       t = b[l-1];
	movsd	xmm0, QWORD PTR [r10-8+rdx*8]	# t, *_6
# linpack.c:686:       if ( l != k )
	cmp	edx, ebx	# l, ivtmp.310
	je	.L144	#,
# linpack.c:688:         b[l-1] = b[k-1];
	movsd	xmm1, QWORD PTR [r10-8+rbx*8]	# _9, MEM[(double *)b_85(D) + -8B + ivtmp.310_193 * 8]
# linpack.c:688:         b[l-1] = b[k-1];
	movsd	QWORD PTR [r10-8+rdx*8], xmm1	# *_6, _9
# linpack.c:689:         b[k-1] = t;
	movsd	QWORD PTR [r10-8+rbx*8], xmm0	# MEM[(double *)b_85(D) + -8B + ivtmp.310_193 * 8], t
.L144:
# linpack.c:327:   if ( da == 0.0 )
	ucomisd	xmm0, xmm7	# t, tmp229
	jp	.L161	#,
	je	.L145	#,
.L161:
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	movsx	rax, r15d	# _14, ivtmp.314
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	edi, ebp	# _178, n
	lea	rdx, [r10+rbx*8]	# _175,
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	add	rax, rbx	# _15, ivtmp.310
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	sub	edi, ebx	# _178, ivtmp.310
	lea	rsi, [r13+0+rax*8]	# _17,
	call	daxpy.part.0	#
.L145:
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	add	rbx, 1	# ivtmp.310,
	add	r15d, r12d	# ivtmp.314, lda
	cmp	QWORD PTR [rsp+8], rbx	# %sfp, ivtmp.310
	jne	.L147	#,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsx	rsi, ebp	# _43, n
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	eax, r12d	# _25, lda
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	sub	ebp, 1	# _156,
	mov	ebx, r12d	# _223, lda
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	imul	eax, ebp	# _25, _156
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [r10-8+rsi*8]	# *_50, *_50
	not	ebx	# _223
	lea	r14, [r10+rsi*8]	# ivtmp.302,
	movsx	rbx, ebx	# _222, _223
	sal	rbx, 3	# _220,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	lea	edx, [rax+rbp]	# _181,
	mov	ecx, eax	# ivtmp.300, _25
	movsx	rbp, ebp	# ivtmp.298, _156
	movsx	rdx, edx	# _238, _181
	sub	ecx, r12d	# ivtmp.300, lda
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	divsd	xmm0, QWORD PTR [r13+0+rdx*8]	# _26, *_217
	movsx	rdx, ecx	# _204, ivtmp.300
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [r10-8+rsi*8], xmm0	# *_50, _26
	add	rdx, rsi	# _203, _43
	lea	r15, [r13-16+rdx*8]	# ivtmp.303,
.L154:
# linpack.c:327:   if ( da == 0.0 )
	pxor	xmm1, xmm1	# tmp238
	ucomisd	xmm0, xmm1	# _26, tmp238
	jp	.L162	#,
	je	.L150	#,
.L162:
# linpack.c:699:       t = -b[k-1];
	xorpd	xmm0, XMMWORD PTR .LC2[rip]	# t_100,
# linpack.c:700:       daxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	cdqe
	mov	edi, ebp	# ivtmp.298, ivtmp.298
	mov	rdx, r10	#, b
# linpack.c:700:       daxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	lea	rsi, [r13+0+rax*8]	# _33,
# linpack.c:322:   if ( n <= 0 )
	sub	rbp, 1	# ivtmp.298,
	mov	DWORD PTR [rsp+8], ecx	# %sfp, ivtmp.300
	call	daxpy.part.0	#
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [r14-16]	# MEM[(double *)_212 + -16B], MEM[(double *)_212 + -16B]
	divsd	xmm0, QWORD PTR [r15]	# _26, MEM[(double *)_264]
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [r14-16], xmm0	# MEM[(double *)_212 + -16B], _26
# linpack.c:322:   if ( n <= 0 )
	test	ebp, ebp	# ivtmp.298
	je	.L139	#,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	ecx, DWORD PTR [rsp+8]	# ivtmp.300, %sfp
# linpack.c:327:   if ( da == 0.0 )
	pxor	xmm1, xmm1	# tmp238
# linpack.c:322:   if ( n <= 0 )
	sub	r14, 8	# ivtmp.302,
	add	r15, rbx	# ivtmp.303, _220
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	eax, ecx	# _25, ivtmp.300
	sub	ecx, r12d	# ivtmp.300, lda
# linpack.c:327:   if ( da == 0.0 )
	ucomisd	xmm0, xmm1	# _26, tmp238
	jp	.L162	#,
	jne	.L162	#,
.L150:
# linpack.c:322:   if ( n <= 0 )
	sub	rbp, 1	# ivtmp.298,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [r14-16]	# MEM[(double *)_198 + -16B], MEM[(double *)_198 + -16B]
	divsd	xmm0, QWORD PTR [r15]	# _26, MEM[(double *)_196]
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [r14-16], xmm0	# MEM[(double *)_198 + -16B], _26
# linpack.c:322:   if ( n <= 0 )
	test	ebp, ebp	# ivtmp.298
	je	.L139	#,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	eax, ecx	# _25, ivtmp.300
# linpack.c:322:   if ( n <= 0 )
	sub	r14, 8	# ivtmp.302,
	sub	ecx, r12d	# ivtmp.300, lda
	add	r15, rbx	# ivtmp.303, _220
	jmp	.L154	#
	.p2align 4,,10
	.p2align 3
.L143:
# linpack.c:696:     for ( k = n; 1 <= k; k-- )
	jne	.L139	#,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [r8]	# *b_85(D), *b_85(D)
	divsd	xmm0, QWORD PTR [rdi]	# _129, *a_87(D)
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [r8], xmm0	# *b_85(D), _129
	jmp	.L139	#
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
	jle	.L171	#,
# linpack.c:778:   else if ( incx == 1 )
	cmp	edx, 1	# incx,
	je	.L178	#,
# linpack.c:800:       ix = 0;
	xor	eax, eax	# ix
# linpack.c:798:     if ( 0 <= incx )
	test	edx, edx	# incx
	jns	.L174	#,
# linpack.c:804:       ix = ( - n + 1 ) * incx;
	mov	eax, 1	# tmp115,
	sub	eax, edi	# _1, n
# linpack.c:804:       ix = ( - n + 1 ) * incx;
	imul	eax, edx	# ix, incx
.L174:
	movsx	rdx, edx	# _34, incx
	cdqe
# linpack.c:800:       ix = 0;
	xor	ecx, ecx	# i
	sal	rdx, 3	# _33,
	lea	rax, [rsi+rax*8]	# ivtmp.356,
	.p2align 5
	.p2align 4
	.p2align 3
.L175:
# linpack.c:809:       x[ix] = sa * x[ix];
	movsd	xmm0, QWORD PTR [rax]	# _8, MEM[(double *)_25]
# linpack.c:807:     for ( i = 0; i < n; i++ )
	add	ecx, 1	# i,
# linpack.c:809:       x[ix] = sa * x[ix];
	mulsd	xmm0, xmm1	# _8, sa
# linpack.c:809:       x[ix] = sa * x[ix];
	movsd	QWORD PTR [rax], xmm0	# MEM[(double *)_25], _8
# linpack.c:807:     for ( i = 0; i < n; i++ )
	add	rax, rdx	# ivtmp.356, _33
	cmp	edi, ecx	# n, i
	jne	.L175	#,
.L171:
# linpack.c:814: }
	ret	
	.p2align 4,,10
	.p2align 3
.L178:
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
	jle	.L192	#,
	test	eax, eax	# incx
	jle	.L192	#,
# linpack.c:878:     return value;
	mov	esi, 1	# <retval>,
# linpack.c:876:   if ( n == 1 )
	cmp	edi, 1	# n,
	je	.L179	#,
# linpack.c:883:     dmax = r8_abs ( dx[0] );
	movsd	xmm1, QWORD PTR [rcx]	# value, *dx_20(D)
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
	je	.L199	#,
	sal	rax, 3	# _7,
# linpack.c:890:         dmax = r8_abs ( dx[i] );
	mov	esi, 1	# <retval>,
	mov	edx, 1	# i,
	add	rcx, rax	# ivtmp.378, _7
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm4, xmm4	# tmp134
	.p2align 4
	.p2align 3
.L191:
# linpack.c:902:       if ( dmax < r8_abs ( dx[ix] ) )
	movsd	xmm0, QWORD PTR [rcx]	# value, MEM[(double *)_67]
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
	add	rcx, rax	# ivtmp.378, _7
	cmp	edi, edx	# n, i
	jg	.L191	#,
.L179:
# linpack.c:912: }
	mov	eax, esi	#, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L192:
# linpack.c:871:     return value;
	xor	esi, esi	# <retval>
# linpack.c:912: }
	mov	eax, esi	#, <retval>
	ret	
	.p2align 4,,10
	.p2align 3
.L199:
	add	rcx, 8	# ivtmp.369,
# linpack.c:940:   if ( 0.0 <= x )
	pxor	xmm4, xmm4	# tmp125
	.p2align 4
	.p2align 3
.L186:
# linpack.c:887:       if ( dmax < r8_abs ( dx[i] ) )
	movsd	xmm0, QWORD PTR [rcx]	# value, MEM[(double *)_56]
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
	add	rcx, 8	# ivtmp.369,
	cmp	eax, edi	# incx, n
	jl	.L186	#,
# linpack.c:912: }
	mov	eax, esi	#, <retval>
	ret	
	.cfi_endproc
.LFE29:
	.size	idamax, .-idamax
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
.L203:
	mulsd	xmm0, xmm1	# r, tmp103
	mulsd	xmm0, xmm1	# r, tmp103
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	sub	eax, 2	# ivtmp_2,
	jne	.L203	#,
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
	mov	r13d, esi	# n, n
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
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
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	movsx	rdi, edi	# _2, _1
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	sal	rdi, 3	# _3,
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	call	malloc	#
	mov	r11, rax	# <retval>,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	test	r13d, r13d	# n
	jle	.L211	#,
	lea	eax, [r13-1]	# _262,
	mov	r15, -8	# tmp230,
	movsd	xmm1, QWORD PTR .LC6[rip]	# tmp233,
	movsd	xmm3, QWORD PTR .LC5[rip]	# tmp232,
	sal	rax, 3	# _261,
	add	r13d, 1	# _256,
# linpack.c:1135:   int init[4] = { 1, 2, 3, 1325 };
	mov	edi, 3	# init$2,
	mov	r8d, 1325	# init$3,
	lea	rbp, [r11+8+rax]	# ivtmp.420,
	sub	r15, rax	# _190, _261
	mov	esi, 2	# init$1,
	mov	rax, r11	# <retval>, <retval>
	lea	r14, [0+rbx*8]	# _266,
	mov	edx, 1	# init$0,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	mov	r12d, 1	# j,
	.p2align 4
	.p2align 3
.L213:
	mov	DWORD PTR [rsp+12], r12d	# %sfp, j
	lea	r11, [r15+rbp]	# ivtmp.412,
	.p2align 4
	.p2align 3
.L214:
# linpack.c:1081:   it4 = iseed[3] * m4;
	imul	r10d, r8d, 2549	# it4, init$3,
	mov	ecx, r8d	# init$3, init$3
	mov	ebx, edi	# init$2, init$2
	mov	r12d, esi	# init$1, init$1
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	pxor	xmm0, xmm0	# _64
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	pxor	xmm2, xmm2	# _63
	mov	r9d, r10d	# tmp168, it4
	sar	r9d, 31	# tmp168,
	shr	r9d, 20	# tmp169,
	lea	r8d, [r10+r9]	# tmp170,
	and	r8d, 4095	# tmp171,
	sub	r8d, r9d	# init$3, tmp169
# linpack.c:1082:   it3 = it4 / ipw2;
	test	r10d, r10d	# it4
	lea	r9d, [r10+4095]	# tmp175,
	cmovns	r9d, r10d	# tmp175,, it4, it4
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imul	r10d, edi, 2549	# _36, init$2,
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	cvtsi2sd	xmm0, r8d	# _64, init$3
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	mulsd	xmm0, xmm1	# _65, tmp233
# linpack.c:1082:   it3 = it4 / ipw2;
	sar	r9d, 12	# it3_33,
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	add	r9d, r10d	# _37, _36
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imul	r10d, ecx, 2508	# _38, init$3,
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	add	r10d, r9d	# it3, _37
	mov	r9d, r10d	# tmp179, it3
	sar	r9d, 31	# tmp179,
	shr	r9d, 20	# tmp180,
	lea	edi, [r10+r9]	# tmp181,
	and	edi, 4095	# tmp182,
	sub	edi, r9d	# init$2, tmp180
# linpack.c:1085:   it2 = it3 / ipw2;
	test	r10d, r10d	# it3
	lea	r9d, [r10+4095]	# tmp186,
	cmovns	r9d, r10d	# tmp186,, it3, it3
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	r10d, esi, 2549	# _43, init$1,
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	cvtsi2sd	xmm2, edi	# _63, init$2
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	addsd	xmm0, xmm2	# _66, _63
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	pxor	xmm2, xmm2	# _62
# linpack.c:1085:   it2 = it3 / ipw2;
	sar	r9d, 12	# it2_40,
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	mulsd	xmm0, xmm1	# _67, tmp233
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	r9d, r10d	# _44, _43
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	r10d, ebx, 2508	# _45, init$2,
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	r9d, r10d	# _46, _45
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	r10d, ecx, 322	# _47, init$3,
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	r10d, r9d	# it2, _46
	mov	r9d, r10d	# tmp192, it2
	sar	r9d, 31	# tmp192,
	shr	r9d, 20	# tmp193,
	lea	esi, [r10+r9]	# tmp194,
	and	esi, 4095	# tmp195,
	sub	esi, r9d	# init$1, tmp193
# linpack.c:1088:   it1 = it2 / ipw2;
	test	r10d, r10d	# it2
	lea	r9d, [r10+4095]	# tmp199,
	cmovns	r9d, r10d	# tmp199,, it2, it2
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	edx, edx, 2549	# _52, init$0,
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	cvtsi2sd	xmm2, esi	# _62, init$1
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	addsd	xmm0, xmm2	# _68, _62
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	r12d, r12d, 2508	# _54, init$1,
# linpack.c:1103:       r * ( ( double ) ( it1 ) 
	pxor	xmm2, xmm2	# _61
# linpack.c:1142:     for ( i = 1; i <= n; i++ )
	add	r11, 8	# ivtmp.412,
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	ebx, ebx, 322	# _56, init$2,
# linpack.c:1088:   it1 = it2 / ipw2;
	sar	r9d, 12	# it1_49,
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	ecx, ecx, 494	# _58, init$3,
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	mulsd	xmm0, xmm1	# _69, tmp233
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	r9d, edx	# _53, _52
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	r9d, r12d	# _55, _54
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	ebx, r9d	# _57, _55
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	ecx, ebx	# it1, _57
# linpack.c:1091:   it1 = ( it1 % ipw2 );
	mov	r9d, ecx	# tmp207, it1
	sar	r9d, 31	# tmp207,
	shr	r9d, 20	# tmp208,
	add	ecx, r9d	# tmp209, tmp208
	and	ecx, 4095	# tmp210,
	mov	edx, ecx	# tmp210, tmp210
	sub	edx, r9d	# tmp210, tmp208
# linpack.c:1103:       r * ( ( double ) ( it1 ) 
	cvtsi2sd	xmm2, edx	# _61, init$0
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	addsd	xmm0, xmm2	# _70, _61
# linpack.c:1102:   value = 
	mulsd	xmm0, xmm1	# value_71, tmp233
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	subsd	xmm0, xmm3	# _12, tmp232
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	movsd	QWORD PTR [r11-8], xmm0	# MEM[(double *)_282], _12
# linpack.c:1142:     for ( i = 1; i <= n; i++ )
	cmp	rbp, r11	# ivtmp.420, ivtmp.412
	jne	.L214	#,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	mov	r12d, DWORD PTR [rsp+12]	# j, %sfp
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	add	rbp, r14	# ivtmp.420, _266
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	add	r12d, 1	# j,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	cmp	r12d, r13d	# j, _256
	jne	.L213	#,
	mov	r11, rax	# <retval>, <retval>
.L211:
# linpack.c:1149: }
	add	rsp, 24	#,
	.cfi_def_cfa_offset 56
	mov	rax, r11	#, <retval>
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
	mov	edx, OFFSET FLAT:.LC7	#,
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
	xor	eax, eax	#
	call	printf	#
# linpack.c:78:   printf ( "  Leading matrix dimension LDA = %d\n", LDA );
	mov	esi, 1001	#,
	mov	edi, OFFSET FLAT:.LC14	#,
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
	mov	rcx, r14	# ivtmp.569, a
	mov	r11, QWORD PTR [rsp+16]	# rhs, %sfp
	mov	rbp, rax	# x,
	lea	rdx, [r14+8000]	# ivtmp.592,
	lea	rsi, [r14+8016000]	# _292,
# linpack.c:91:   a_max = 0.0;
	pxor	xmm1, xmm1	# a_max
.L221:
	lea	rax, [rdx-8000]	# ivtmp.583,
	.p2align 5
	.p2align 4
	.p2align 3
.L224:
# linpack.c:96:       a_max = r8_max ( a_max, a[i+j*LDA] );
	movsd	xmm2, QWORD PTR [rax]	# _6, MEM[(double *)_201]
	movapd	xmm0, xmm1	# a_max, a_max
# linpack.c:94:     for ( i = 0; i < N; i++ )
	add	rax, 8	# ivtmp.583,
	maxsd	xmm0, xmm2	# a_max, _6
	movapd	xmm1, xmm0	# a_max, _162
	cmp	rax, rdx	# ivtmp.583, ivtmp.592
	jne	.L224	#,
# linpack.c:92:   for ( j = 0; j < N; j++ )
	lea	rdx, [rax+8008]	# ivtmp.592,
	cmp	rsi, rdx	# _292, ivtmp.592
	jne	.L221	#,
	movsd	xmm3, QWORD PTR .LC4[rip]	# tmp268,
	lea	r13, [rbp+8000]	# _254,
	mov	rax, rbp	# ivtmp.576, x
	unpcklpd	xmm3, xmm3	# tmp268
.L226:
# linpack.c:102:     x[i] = 1.0;
	movups	XMMWORD PTR [rax], xmm3	# MEM <vector(2) double> [(double *)_379], tmp268
	add	rax, 32	# ivtmp.576,
	movups	XMMWORD PTR [rax-16], xmm3	# MEM <vector(2) double> [(double *)_379], tmp268
	cmp	rax, r13	# ivtmp.576, _254
	jne	.L226	#,
	mov	rbx, r15	# ivtmp.498, b
	lea	rsi, [r14+8008000]	# ivtmp.570,
	lea	r12, [r15+8000]	# _202,
	mov	rdi, r15	# ivtmp.567, b
.L228:
	mov	rdx, rbp	# ivtmp.561, x
	mov	rax, rcx	# ivtmp.557, ivtmp.569
	pxor	xmm2, xmm2	# vect_D__lsm.443_247.475
	.p2align 6
	.p2align 4
	.p2align 3
.L227:
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movsd	xmm1, QWORD PTR [rdx]	# vect_cst__169, MEM[(double *)_374]
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movupd	xmm6, XMMWORD PTR [rax]	# tmp425, MEM <vector(2) double> [(double *)_168]
# linpack.c:108:     for ( j = 0; j < N; j++ )
	add	rax, 8008	# ivtmp.557,
	add	rdx, 8	# ivtmp.561,
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	unpcklpd	xmm1, xmm1	# vect_cst__169
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	mulpd	xmm1, xmm6	# vect__24.474_106, tmp425
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	addpd	xmm2, xmm1	# vect_D__lsm.443_247.475, vect__24.474_106
# linpack.c:108:     for ( j = 0; j < N; j++ )
	cmp	rax, rsi	# ivtmp.557, ivtmp.570
	jne	.L227	#,
	movups	XMMWORD PTR [rdi], xmm2	# MEM <vector(2) double> [(double *)_357], vect_D__lsm.443_247.475
	add	rdi, 16	# ivtmp.567,
	add	rcx, 16	# ivtmp.569,
	lea	rsi, [rax+16]	# ivtmp.570,
	cmp	r12, rdi	# _202, ivtmp.567
	jne	.L228	#,
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
	jne	.L276	#,
	mov	QWORD PTR [rsp+64], r11	# %sfp, rhs
# linpack.c:261:   value = ( double ) clock ( ) 
	pxor	xmm1, xmm1	# _165
	cvtsi2sd	xmm1, QWORD PTR [rsp+16]	# _165, %sfp
# linpack.c:261:   value = ( double ) clock ( ) 
	divsd	xmm1, QWORD PTR .LC1[rip]	# _165,
	mov	QWORD PTR [rsp+56], r10	# %sfp, resid
	movsd	QWORD PTR [rsp+48], xmm0	# %sfp, _162
	movsd	QWORD PTR [rsp+16], xmm1	# %sfp, _165
# linpack.c:261:   value = ( double ) clock ( ) 
	call	clock	#
# linpack.c:261:   value = ( double ) clock ( ) 
	pxor	xmm1, xmm1	# _196
	cvtsi2sd	xmm1, rax	# _196, _195
# linpack.c:261:   value = ( double ) clock ( ) 
	divsd	xmm1, QWORD PTR .LC1[rip]	# value_197,
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
	movapd	xmm4, xmm1	# _193, _193
	divsd	xmm4, QWORD PTR .LC1[rip]	# _193,
	movsd	QWORD PTR [rsp+32], xmm4	# %sfp, _193
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
	divsd	xmm1, QWORD PTR .LC1[rip]	# value_191,
# linpack.c:135:   time[1] = t2 - t1;
	movapd	xmm4, xmm1	# value_191, value_191
	subsd	xmm4, QWORD PTR [rsp+32]	# value_191, %sfp
# linpack.c:137:   total = time[0] + time[1];
	addsd	xmm6, xmm4	# total, _27
# linpack.c:135:   time[1] = t2 - t1;
	movsd	QWORD PTR [rsp+32], xmm4	# %sfp, _27
# linpack.c:137:   total = time[0] + time[1];
	movsd	QWORD PTR [rsp+40], xmm6	# %sfp, total
# linpack.c:139:   free ( a );
	call	free	#
# linpack.c:143:   a = r8mat_gen ( LDA, N );
	mov	esi, 1000	#,
	mov	edi, 1001	#,
	call	r8mat_gen	#
	mov	rdx, r13	# tmp294, _254
	movsd	xmm6, QWORD PTR [rsp+40]	# total, %sfp
	movsd	xmm0, QWORD PTR [rsp+48]	# _162, %sfp
	sub	rdx, rbp	# tmp294, x
	mov	r14, rax	# a,
	mov	r10, QWORD PTR [rsp+56]	# resid, %sfp
	mov	r11, QWORD PTR [rsp+64]	# rhs, %sfp
	and	dl, 16	# tmp294,
	movapd	xmm3, XMMWORD PTR .LC15[rip]	# tmp268,
	mov	rax, rbp	# ivtmp.551, x
	je	.L231	#,
	lea	rax, [rbp+16]	# ivtmp.551,
# linpack.c:147:     x[i] = 1.0;
	movups	XMMWORD PTR [rbp+0], xmm3	# MEM <vector(2) double> [(double *)_54], tmp268
	cmp	rax, r13	# ivtmp.551, _254
	je	.L273	#,
.L231:
	movups	XMMWORD PTR [rax], xmm3	# MEM <vector(2) double> [(double *)_54], tmp268
	add	rax, 32	# ivtmp.551,
	movups	XMMWORD PTR [rax-16], xmm3	# MEM <vector(2) double> [(double *)_54], tmp268
	cmp	rax, r13	# ivtmp.551, _254
	jne	.L231	#,
.L273:
	lea	rdx, [r14+8008000]	# ivtmp.526,
	mov	rsi, r11	# ivtmp.542, rhs
	mov	rdi, r14	# ivtmp.525, a
	mov	r9, r14	# ivtmp.544, a
	lea	r13, [r11+8000]	# _50,
	mov	rcx, rdx	# ivtmp.545, ivtmp.526
.L233:
	mov	r8, rbp	# ivtmp.536, x
	mov	rax, r9	# ivtmp.532, ivtmp.544
	pxor	xmm2, xmm2	# vect_D__lsm.442_261.464
	.p2align 6
	.p2align 4
	.p2align 3
.L232:
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movsd	xmm1, QWORD PTR [r8]	# vect_cst__285, MEM[(double *)_36]
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movupd	xmm7, XMMWORD PTR [rax]	# tmp437, MEM <vector(2) double> [(double *)_35]
# linpack.c:153:     for ( j = 0; j < N; j++ )
	add	rax, 8008	# ivtmp.532,
	add	r8, 8	# ivtmp.536,
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	unpcklpd	xmm1, xmm1	# vect_cst__285
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	mulpd	xmm1, xmm7	# vect__45.463_284, tmp437
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	addpd	xmm2, xmm1	# vect_D__lsm.442_261.464, vect__45.463_284
# linpack.c:153:     for ( j = 0; j < N; j++ )
	cmp	rax, rcx	# ivtmp.532, ivtmp.545
	jne	.L232	#,
	movups	XMMWORD PTR [rsi], xmm2	# MEM <vector(2) double> [(double *)_48], vect_D__lsm.442_261.464
	add	rsi, 16	# ivtmp.542,
	add	r9, 16	# ivtmp.544,
	lea	rcx, [rax+16]	# ivtmp.545,
	cmp	rsi, r13	# ivtmp.542, _50
	jne	.L233	#,
	movsd	xmm3, QWORD PTR .LC20[rip]	# tmp271,
	xor	esi, esi	# ivtmp.520
	unpcklpd	xmm3, xmm3	# tmp271
.L235:
# linpack.c:161:     resid[i] = -rhs[i];
	movupd	xmm2, XMMWORD PTR [r11+rsi]	# vect__50.453_307, MEM <vector(2) double> [(double *)rhs_130 + ivtmp.520_7 * 1]
# linpack.c:161:     resid[i] = -rhs[i];
	mov	rcx, r15	# ivtmp.515, b
	mov	rax, rdi	# ivtmp.511, ivtmp.525
	xorpd	xmm2, xmm3	# vect__52.454, tmp271
	.p2align 6
	.p2align 4
	.p2align 3
.L234:
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movsd	xmm1, QWORD PTR [rcx]	# vect_cst__311, MEM[(double *)_186]
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movupd	xmm5, XMMWORD PTR [rax]	# tmp440, MEM <vector(2) double> [(double *)_362]
# linpack.c:162:     for ( j = 0; j < N; j++ )
	add	rax, 8008	# ivtmp.511,
	add	rcx, 8	# ivtmp.515,
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	unpcklpd	xmm1, xmm1	# vect_cst__311
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	mulpd	xmm1, xmm5	# vect__64.450_310, tmp440
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	addpd	xmm2, xmm1	# vect__52.454, vect__64.450_310
# linpack.c:162:     for ( j = 0; j < N; j++ )
	cmp	rax, rdx	# ivtmp.511, ivtmp.526
	jne	.L234	#,
	movups	XMMWORD PTR [r10+rsi], xmm2	# MEM <vector(2) double> [(double *)resid_128 + ivtmp.520_7 * 1], vect__52.454
	add	rsi, 16	# ivtmp.520,
	add	rdi, 16	# ivtmp.525,
	lea	rdx, [rax+16]	# ivtmp.526,
	cmp	rsi, 8000	# ivtmp.520,
	jne	.L235	#,
# linpack.c:168:   resid_max = 0.0;
	pxor	xmm4, xmm4	# resid_max
	mov	rax, r10	# ivtmp.505, resid
	lea	rdx, [r10+8000]	# _14,
# linpack.c:940:   if ( 0.0 <= x )
	movapd	xmm5, xmm4	# tmp235,
.L239:
# linpack.c:171:     resid_max = r8_max ( resid_max, r8_abs ( resid[i] ) );
	movsd	xmm2, QWORD PTR [rax]	# value, MEM[(double *)_16]
# linpack.c:946:     value = -x;
	movapd	xmm1, xmm5	# tmp314, tmp235
# linpack.c:169:   for ( i = 0; i < N; i++ )
	add	rax, 8	# ivtmp.505,
# linpack.c:946:     value = -x;
	cmpnlesd	xmm1, xmm2	#, tmp314, value
	movapd	xmm3, xmm2	# tmp312, value
	movapd	xmm7, xmm2	# tmp313, value
	xorpd	xmm3, XMMWORD PTR .LC2[rip]	# tmp312,
	andpd	xmm3, xmm1	# tmp312, tmp314
	andnpd	xmm1, xmm7	# tmp316, tmp313
	movapd	xmm2, xmm3	# tmp315, tmp312
	orpd	xmm2, xmm1	# value, tmp316
	maxsd	xmm4, xmm2	# resid_max, value
	movapd	xmm1, xmm4	# _330, resid_max
# linpack.c:169:   for ( i = 0; i < N; i++ )
	cmp	rdx, rax	# _14, ivtmp.505
	jne	.L239	#,
# linpack.c:174:   b_max = 0.0;
	pxor	xmm5, xmm5	# b_max
# linpack.c:940:   if ( 0.0 <= x )
	movapd	xmm7, xmm5	# tmp244,
.L243:
# linpack.c:177:     b_max = r8_max ( b_max, r8_abs ( b[i] ) );
	movsd	xmm2, QWORD PTR [rbx]	# value, MEM[(double *)_388]
# linpack.c:946:     value = -x;
	movapd	xmm3, xmm7	# tmp319, tmp244
# linpack.c:175:   for ( i = 0; i < N; i++ )
	add	rbx, 8	# ivtmp.498,
# linpack.c:946:     value = -x;
	cmpnlesd	xmm3, xmm2	#, tmp319, value
	movapd	xmm4, xmm2	# tmp317, value
	movapd	xmm8, xmm2	# tmp318, value
	xorpd	xmm4, XMMWORD PTR .LC2[rip]	# tmp317,
	andpd	xmm4, xmm3	# tmp317, tmp319
	andnpd	xmm3, xmm8	# tmp321, tmp318
	movapd	xmm2, xmm4	# tmp320, tmp317
	orpd	xmm2, xmm3	# value, tmp321
	movapd	xmm3, xmm5	# b_max, b_max
	maxsd	xmm3, xmm2	# b_max, value
	movapd	xmm5, xmm3	# b_max, _345
# linpack.c:175:   for ( i = 0; i < N; i++ )
	cmp	r12, rbx	# _202, ivtmp.498
	jne	.L243	#,
	movsd	xmm4, QWORD PTR .LC5[rip]	# tmp270,
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	mov	eax, 52	# ivtmp_382,
# linpack.c:991:     r = r / 2.0;
	movapd	xmm2, xmm4	# r, tmp270
.L244:
	mulsd	xmm2, xmm4	# r, tmp270
	mulsd	xmm2, xmm4	# r, tmp270
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	sub	eax, 2	# ivtmp_382,
	jne	.L244	#,
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	movapd	xmm4, xmm1	# _74, _330
	divsd	xmm4, QWORD PTR .LC21[rip]	# _74,
# linpack.c:993:   r = 2.0 * r;
	addsd	xmm2, xmm2	# r, r
# linpack.c:191:     time[3] = -1.0;
	movsd	xmm7, QWORD PTR .LC3[rip]	# time$3,
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm4, xmm0	# _75, _162
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm4, xmm3	# _75, _345
# linpack.c:185:   if ( 0.0 < total )
	pxor	xmm3, xmm3	# tmp258
	comisd	xmm6, xmm3	# total, tmp258
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	movapd	xmm0, xmm4	# _76, _75
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm0, xmm2	# residn, r
# linpack.c:185:   if ( 0.0 < total )
	jbe	.L245	#,
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	movsd	xmm3, QWORD PTR .LC1[rip]	# _77,
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	movsd	xmm7, QWORD PTR .LC22[rip]	# tmp261,
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	mulsd	xmm3, xmm6	# _77, total
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	divsd	xmm7, xmm3	# time$3, _77
.L245:
# linpack.c:196:   printf ( "\n" );
	mov	edi, 10	#,
	mov	QWORD PTR [rsp+88], r11	# %sfp, rhs
	mov	QWORD PTR [rsp+80], r10	# %sfp, resid
	movsd	QWORD PTR [rsp+48], xmm6	# %sfp, total
	movsd	QWORD PTR [rsp+40], xmm7	# %sfp, time$3
	movsd	QWORD PTR [rsp+72], xmm1	# %sfp, _330
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
	movsd	xmm1, QWORD PTR [rsp+72]	# _330, %sfp
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
	movsd	xmm4, QWORD PTR .LC27[rip]	# tmp266,
	movsd	xmm2, QWORD PTR [rsp+48]	#, %sfp
	movsd	xmm1, QWORD PTR [rsp+32]	#, %sfp
	mov	eax, 6	#,
	movsd	xmm0, QWORD PTR [rsp+16]	#, %sfp
	movapd	xmm3, xmm7	#, time$3
	movsd	xmm5, QWORD PTR [rsp+48]	# tmp452, %sfp
	divsd	xmm5, QWORD PTR .LC26[rip]	# tmp452,
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
	mov	edi, OFFSET FLAT:.LC8	#,
	call	puts	#
# linpack.c:217:   printf ( "  Normal end of execution.\n" );
	mov	edi, OFFSET FLAT:.LC29	#,
	call	puts	#
# linpack.c:219:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:220:   timestamp ( );
	call	timestamp	#
.L220:
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
.L276:
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
	jmp	.L220	#
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.local	time_buffer.0
	.comm	time_buffer.0,40,32
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
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
	.set	.LC4,.LC15
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
.LC15:
	.long	0
	.long	1072693248
	.long	0
	.long	1072693248
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
