	.file	"linpack.c"
	.intel_syntax noprefix
# GNU C23 (GCC) version 15.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.2.1, MPFR version 4.2.2, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0
	.text
	.section	.rodata
.LC1:
	.string	"LINPACK_BENCH"
.LC2:
	.string	"  C version"
.LC3:
	.string	"  The LINPACK benchmark."
.LC4:
	.string	"  Language: C"
	.align 8
.LC5:
	.string	"  Datatype: Double precision real"
	.align 8
.LC6:
	.string	"  Matrix order N               = %d\n"
	.align 8
.LC7:
	.string	"  Leading matrix dimension LDA = %d\n"
.LC11:
	.string	"LINPACK_BENCH - Fatal error!"
	.align 8
.LC12:
	.string	"  The matrix A is apparently singular."
.LC13:
	.string	"  Abnormal end of execution."
	.align 8
.LC19:
	.string	"     Norm. Resid      Resid           MACHEP         X[1]          X[N]"
	.align 8
.LC20:
	.string	"  %14f  %14f  %14e  %14f  %14f\n"
	.align 8
.LC21:
	.string	"      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio"
	.align 8
.LC22:
	.string	"  %9f  %9f  %9f  %9f  %9f  %9f\n"
.LC23:
	.string	"  Normal end of execution."
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 208	#,
# linpack.c:51:   double cray = 0.056;
	movsd	xmm0, QWORD PTR .LC0[rip]	# tmp214,
	movsd	QWORD PTR [rbp-40], xmm0	# cray, tmp214
# linpack.c:69:   timestamp ( );
	call	timestamp	#
# linpack.c:70:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:71:   printf ( "LINPACK_BENCH\n" );
	mov	edi, OFFSET FLAT:.LC1	#,
	call	puts	#
# linpack.c:72:   printf ( "  C version\n" );
	mov	edi, OFFSET FLAT:.LC2	#,
	call	puts	#
# linpack.c:73:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:74:   printf ( "  The LINPACK benchmark.\n" );
	mov	edi, OFFSET FLAT:.LC3	#,
	call	puts	#
# linpack.c:75:   printf ( "  Language: C\n" );
	mov	edi, OFFSET FLAT:.LC4	#,
	call	puts	#
# linpack.c:76:   printf ( "  Datatype: Double precision real\n" );
	mov	edi, OFFSET FLAT:.LC5	#,
	call	puts	#
# linpack.c:77:   printf ( "  Matrix order N               = %d\n", N );
	mov	esi, 1000	#,
	mov	edi, OFFSET FLAT:.LC6	#,
	mov	eax, 0	#,
	call	printf	#
# linpack.c:78:   printf ( "  Leading matrix dimension LDA = %d\n", LDA );
	mov	esi, 1001	#,
	mov	edi, OFFSET FLAT:.LC7	#,
	mov	eax, 0	#,
	call	printf	#
# linpack.c:80:   ops = ( double ) ( 2 * N * N * N ) / 3.0 + 2.0 * ( double ) ( N * N );
	movsd	xmm0, QWORD PTR .LC8[rip]	# tmp215,
	movsd	QWORD PTR [rbp-48], xmm0	# ops, tmp215
# linpack.c:84:   a = r8mat_gen ( LDA, N );
	mov	esi, 1000	#,
	mov	edi, 1001	#,
	call	r8mat_gen	#
	mov	QWORD PTR [rbp-56], rax	# a, tmp216
# linpack.c:85:   b = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
	call	malloc	#
	mov	QWORD PTR [rbp-64], rax	# b, tmp217
# linpack.c:86:   ipvt = ( int * ) malloc ( N * sizeof ( int ) );
	mov	edi, 4000	#,
	call	malloc	#
	mov	QWORD PTR [rbp-72], rax	# ipvt, tmp218
# linpack.c:87:   resid = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
	call	malloc	#
	mov	QWORD PTR [rbp-80], rax	# resid, tmp219
# linpack.c:88:   rhs = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
	call	malloc	#
	mov	QWORD PTR [rbp-88], rax	# rhs, tmp220
# linpack.c:89:   x = ( double * ) malloc ( N * sizeof ( double ) );
	mov	edi, 8000	#,
	call	malloc	#
	mov	QWORD PTR [rbp-96], rax	# x, tmp221
# linpack.c:91:   a_max = 0.0;
	pxor	xmm0, xmm0	# tmp222
	movsd	QWORD PTR [rbp-8], xmm0	# a_max, tmp222
# linpack.c:92:   for ( j = 0; j < N; j++ )
	mov	DWORD PTR [rbp-24], 0	# j,
# linpack.c:92:   for ( j = 0; j < N; j++ )
	jmp	.L2	#
.L5:
# linpack.c:94:     for ( i = 0; i < N; i++ )
	mov	DWORD PTR [rbp-20], 0	# i,
# linpack.c:94:     for ( i = 0; i < N; i++ )
	jmp	.L3	#
.L4:
# linpack.c:96:       a_max = r8_max ( a_max, a[i+j*LDA] );
	mov	eax, DWORD PTR [rbp-24]	# tmp223, j
	imul	edx, eax, 1001	# _1, tmp223,
# linpack.c:96:       a_max = r8_max ( a_max, a[i+j*LDA] );
	mov	eax, DWORD PTR [rbp-20]	# tmp224, i
	add	eax, edx	# _2, _1
	cdqe
# linpack.c:96:       a_max = r8_max ( a_max, a[i+j*LDA] );
	lea	rdx, [0+rax*8]	# _4,
	mov	rax, QWORD PTR [rbp-56]	# tmp225, a
	add	rax, rdx	# _5, _4
# linpack.c:96:       a_max = r8_max ( a_max, a[i+j*LDA] );
	movsd	xmm0, QWORD PTR [rax]	# _6, *_5
	mov	rax, QWORD PTR [rbp-8]	# tmp226, a_max
	movapd	xmm1, xmm0	#, _6
	movq	xmm0, rax	#, tmp226
	call	r8_max	#
	movq	rax, xmm0	# tmp227,
	mov	QWORD PTR [rbp-8], rax	# a_max, tmp227
# linpack.c:94:     for ( i = 0; i < N; i++ )
	add	DWORD PTR [rbp-20], 1	# i,
.L3:
# linpack.c:94:     for ( i = 0; i < N; i++ )
	cmp	DWORD PTR [rbp-20], 999	# i,
	jle	.L4	#,
# linpack.c:92:   for ( j = 0; j < N; j++ )
	add	DWORD PTR [rbp-24], 1	# j,
.L2:
# linpack.c:92:   for ( j = 0; j < N; j++ )
	cmp	DWORD PTR [rbp-24], 999	# j,
	jle	.L5	#,
# linpack.c:100:   for ( i = 0; i < N; i++ )
	mov	DWORD PTR [rbp-20], 0	# i,
# linpack.c:100:   for ( i = 0; i < N; i++ )
	jmp	.L6	#
.L7:
# linpack.c:102:     x[i] = 1.0;
	mov	eax, DWORD PTR [rbp-20]	# tmp228, i
	cdqe
	lea	rdx, [0+rax*8]	# _8,
	mov	rax, QWORD PTR [rbp-96]	# tmp229, x
	add	rax, rdx	# _9, _8
# linpack.c:102:     x[i] = 1.0;
	movsd	xmm0, QWORD PTR .LC10[rip]	# tmp230,
	movsd	QWORD PTR [rax], xmm0	# *_9, tmp230
# linpack.c:100:   for ( i = 0; i < N; i++ )
	add	DWORD PTR [rbp-20], 1	# i,
.L6:
# linpack.c:100:   for ( i = 0; i < N; i++ )
	cmp	DWORD PTR [rbp-20], 999	# i,
	jle	.L7	#,
# linpack.c:105:   for ( i = 0; i < N; i++ )
	mov	DWORD PTR [rbp-20], 0	# i,
# linpack.c:105:   for ( i = 0; i < N; i++ )
	jmp	.L8	#
.L11:
# linpack.c:107:     b[i] = 0.0;
	mov	eax, DWORD PTR [rbp-20]	# tmp231, i
	cdqe
	lea	rdx, [0+rax*8]	# _11,
	mov	rax, QWORD PTR [rbp-64]	# tmp232, b
	add	rax, rdx	# _12, _11
# linpack.c:107:     b[i] = 0.0;
	pxor	xmm0, xmm0	# tmp233
	movsd	QWORD PTR [rax], xmm0	# *_12, tmp233
# linpack.c:108:     for ( j = 0; j < N; j++ )
	mov	DWORD PTR [rbp-24], 0	# j,
# linpack.c:108:     for ( j = 0; j < N; j++ )
	jmp	.L9	#
.L10:
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	mov	eax, DWORD PTR [rbp-20]	# tmp234, i
	cdqe
	lea	rdx, [0+rax*8]	# _14,
	mov	rax, QWORD PTR [rbp-64]	# tmp235, b
	add	rax, rdx	# _15, _14
	movsd	xmm1, QWORD PTR [rax]	# _16, *_15
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	mov	eax, DWORD PTR [rbp-24]	# tmp236, j
	imul	edx, eax, 1001	# _17, tmp236,
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	mov	eax, DWORD PTR [rbp-20]	# tmp237, i
	add	eax, edx	# _18, _17
	cdqe
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	lea	rdx, [0+rax*8]	# _20,
	mov	rax, QWORD PTR [rbp-56]	# tmp238, a
	add	rax, rdx	# _21, _20
	movsd	xmm2, QWORD PTR [rax]	# _22, *_21
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	mov	eax, DWORD PTR [rbp-24]	# tmp239, j
	cdqe
	lea	rdx, [0+rax*8]	# _24,
	mov	rax, QWORD PTR [rbp-96]	# tmp240, x
	add	rax, rdx	# _25, _24
	movsd	xmm0, QWORD PTR [rax]	# _26, *_25
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	mulsd	xmm0, xmm2	# _27, _22
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	mov	eax, DWORD PTR [rbp-20]	# tmp241, i
	cdqe
	lea	rdx, [0+rax*8]	# _29,
	mov	rax, QWORD PTR [rbp-64]	# tmp242, b
	add	rax, rdx	# _30, _29
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	addsd	xmm0, xmm1	# _31, _16
# linpack.c:110:       b[i] = b[i] + a[i+j*LDA] * x[j];
	movsd	QWORD PTR [rax], xmm0	# *_30, _31
# linpack.c:108:     for ( j = 0; j < N; j++ )
	add	DWORD PTR [rbp-24], 1	# j,
.L9:
# linpack.c:108:     for ( j = 0; j < N; j++ )
	cmp	DWORD PTR [rbp-24], 999	# j,
	jle	.L10	#,
# linpack.c:105:   for ( i = 0; i < N; i++ )
	add	DWORD PTR [rbp-20], 1	# i,
.L8:
# linpack.c:105:   for ( i = 0; i < N; i++ )
	cmp	DWORD PTR [rbp-20], 999	# i,
	jle	.L11	#,
# linpack.c:113:   t1 = cpu_time ( );
	call	cpu_time	#
	movq	rax, xmm0	# tmp243,
	mov	QWORD PTR [rbp-104], rax	# t1, tmp243
# linpack.c:115:   info = dgefa ( a, LDA, N, ipvt );
	mov	rdx, QWORD PTR [rbp-72]	# tmp244, ipvt
	mov	rax, QWORD PTR [rbp-56]	# tmp245, a
	mov	rcx, rdx	#, tmp244
	mov	edx, 1000	#,
	mov	esi, 1001	#,
	mov	rdi, rax	#, tmp245
	call	dgefa	#
	mov	DWORD PTR [rbp-108], eax	# info, tmp246
# linpack.c:117:   if ( info != 0 )
	cmp	DWORD PTR [rbp-108], 0	# info,
	je	.L12	#,
# linpack.c:119:     printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:120:     printf ( "LINPACK_BENCH - Fatal error!\n" );
	mov	edi, OFFSET FLAT:.LC11	#,
	call	puts	#
# linpack.c:121:     printf ( "  The matrix A is apparently singular.\n" );
	mov	edi, OFFSET FLAT:.LC12	#,
	call	puts	#
# linpack.c:122:     printf ( "  Abnormal end of execution.\n" );
	mov	edi, OFFSET FLAT:.LC13	#,
	call	puts	#
# linpack.c:123:     return 1;
	mov	eax, 1	# _131,
	jmp	.L31	#
.L12:
# linpack.c:126:   t2 = cpu_time ( );
	call	cpu_time	#
	movq	rax, xmm0	# tmp247,
	mov	QWORD PTR [rbp-120], rax	# t2, tmp247
# linpack.c:127:   time[0] = t2 - t1;
	movsd	xmm0, QWORD PTR [rbp-120]	# tmp248, t2
	subsd	xmm0, QWORD PTR [rbp-104]	# _32, t1
# linpack.c:127:   time[0] = t2 - t1;
	movsd	QWORD PTR [rbp-208], xmm0	# time[0], _32
# linpack.c:129:   t1 = cpu_time ( );
	call	cpu_time	#
	movq	rax, xmm0	# tmp249,
	mov	QWORD PTR [rbp-104], rax	# t1, tmp249
# linpack.c:131:   job = 0;
	mov	DWORD PTR [rbp-124], 0	# job,
# linpack.c:132:   dgesl ( a, LDA, N, ipvt, b, job );
	mov	esi, DWORD PTR [rbp-124]	# tmp250, job
	mov	rcx, QWORD PTR [rbp-64]	# tmp251, b
	mov	rdx, QWORD PTR [rbp-72]	# tmp252, ipvt
	mov	rax, QWORD PTR [rbp-56]	# tmp253, a
	mov	r9d, esi	#, tmp250
	mov	r8, rcx	#, tmp251
	mov	rcx, rdx	#, tmp252
	mov	edx, 1000	#,
	mov	esi, 1001	#,
	mov	rdi, rax	#, tmp253
	call	dgesl	#
# linpack.c:134:   t2 = cpu_time ( );
	call	cpu_time	#
	movq	rax, xmm0	# tmp254,
	mov	QWORD PTR [rbp-120], rax	# t2, tmp254
# linpack.c:135:   time[1] = t2 - t1;
	movsd	xmm0, QWORD PTR [rbp-120]	# tmp255, t2
	subsd	xmm0, QWORD PTR [rbp-104]	# _33, t1
# linpack.c:135:   time[1] = t2 - t1;
	movsd	QWORD PTR [rbp-200], xmm0	# time[1], _33
# linpack.c:137:   total = time[0] + time[1];
	movsd	xmm1, QWORD PTR [rbp-208]	# _34, time[0]
# linpack.c:137:   total = time[0] + time[1];
	movsd	xmm0, QWORD PTR [rbp-200]	# _35, time[1]
# linpack.c:137:   total = time[0] + time[1];
	addsd	xmm0, xmm1	# total_189, _34
	movsd	QWORD PTR [rbp-136], xmm0	# total, total_189
# linpack.c:139:   free ( a );
	mov	rax, QWORD PTR [rbp-56]	# tmp257, a
	mov	rdi, rax	#, tmp257
	call	free	#
# linpack.c:143:   a = r8mat_gen ( LDA, N );
	mov	esi, 1000	#,
	mov	edi, 1001	#,
	call	r8mat_gen	#
	mov	QWORD PTR [rbp-56], rax	# a, tmp258
# linpack.c:145:   for ( i = 0; i < N; i++ )
	mov	DWORD PTR [rbp-20], 0	# i,
# linpack.c:145:   for ( i = 0; i < N; i++ )
	jmp	.L14	#
.L15:
# linpack.c:147:     x[i] = 1.0;
	mov	eax, DWORD PTR [rbp-20]	# tmp259, i
	cdqe
	lea	rdx, [0+rax*8]	# _37,
	mov	rax, QWORD PTR [rbp-96]	# tmp260, x
	add	rax, rdx	# _38, _37
# linpack.c:147:     x[i] = 1.0;
	movsd	xmm0, QWORD PTR .LC10[rip]	# tmp261,
	movsd	QWORD PTR [rax], xmm0	# *_38, tmp261
# linpack.c:145:   for ( i = 0; i < N; i++ )
	add	DWORD PTR [rbp-20], 1	# i,
.L14:
# linpack.c:145:   for ( i = 0; i < N; i++ )
	cmp	DWORD PTR [rbp-20], 999	# i,
	jle	.L15	#,
# linpack.c:150:   for ( i = 0; i < N; i++ )
	mov	DWORD PTR [rbp-20], 0	# i,
# linpack.c:150:   for ( i = 0; i < N; i++ )
	jmp	.L16	#
.L19:
# linpack.c:152:     rhs[i] = 0.0;
	mov	eax, DWORD PTR [rbp-20]	# tmp262, i
	cdqe
	lea	rdx, [0+rax*8]	# _40,
	mov	rax, QWORD PTR [rbp-88]	# tmp263, rhs
	add	rax, rdx	# _41, _40
# linpack.c:152:     rhs[i] = 0.0;
	pxor	xmm0, xmm0	# tmp264
	movsd	QWORD PTR [rax], xmm0	# *_41, tmp264
# linpack.c:153:     for ( j = 0; j < N; j++ )
	mov	DWORD PTR [rbp-24], 0	# j,
# linpack.c:153:     for ( j = 0; j < N; j++ )
	jmp	.L17	#
.L18:
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	mov	eax, DWORD PTR [rbp-20]	# tmp265, i
	cdqe
	lea	rdx, [0+rax*8]	# _43,
	mov	rax, QWORD PTR [rbp-88]	# tmp266, rhs
	add	rax, rdx	# _44, _43
	movsd	xmm1, QWORD PTR [rax]	# _45, *_44
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	mov	eax, DWORD PTR [rbp-24]	# tmp267, j
	imul	edx, eax, 1001	# _46, tmp267,
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	mov	eax, DWORD PTR [rbp-20]	# tmp268, i
	add	eax, edx	# _47, _46
	cdqe
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	lea	rdx, [0+rax*8]	# _49,
	mov	rax, QWORD PTR [rbp-56]	# tmp269, a
	add	rax, rdx	# _50, _49
	movsd	xmm2, QWORD PTR [rax]	# _51, *_50
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	mov	eax, DWORD PTR [rbp-24]	# tmp270, j
	cdqe
	lea	rdx, [0+rax*8]	# _53,
	mov	rax, QWORD PTR [rbp-96]	# tmp271, x
	add	rax, rdx	# _54, _53
	movsd	xmm0, QWORD PTR [rax]	# _55, *_54
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	mulsd	xmm0, xmm2	# _56, _51
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	mov	eax, DWORD PTR [rbp-20]	# tmp272, i
	cdqe
	lea	rdx, [0+rax*8]	# _58,
	mov	rax, QWORD PTR [rbp-88]	# tmp273, rhs
	add	rax, rdx	# _59, _58
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	addsd	xmm0, xmm1	# _60, _45
# linpack.c:155:       rhs[i] = rhs[i] + a[i+j*LDA] * x[j];
	movsd	QWORD PTR [rax], xmm0	# *_59, _60
# linpack.c:153:     for ( j = 0; j < N; j++ )
	add	DWORD PTR [rbp-24], 1	# j,
.L17:
# linpack.c:153:     for ( j = 0; j < N; j++ )
	cmp	DWORD PTR [rbp-24], 999	# j,
	jle	.L18	#,
# linpack.c:150:   for ( i = 0; i < N; i++ )
	add	DWORD PTR [rbp-20], 1	# i,
.L16:
# linpack.c:150:   for ( i = 0; i < N; i++ )
	cmp	DWORD PTR [rbp-20], 999	# i,
	jle	.L19	#,
# linpack.c:159:   for ( i = 0; i < N; i++ )
	mov	DWORD PTR [rbp-20], 0	# i,
# linpack.c:159:   for ( i = 0; i < N; i++ )
	jmp	.L20	#
.L23:
# linpack.c:161:     resid[i] = -rhs[i];
	mov	eax, DWORD PTR [rbp-20]	# tmp274, i
	cdqe
	lea	rdx, [0+rax*8]	# _62,
	mov	rax, QWORD PTR [rbp-88]	# tmp275, rhs
	add	rax, rdx	# _63, _62
	movsd	xmm0, QWORD PTR [rax]	# _64, *_63
# linpack.c:161:     resid[i] = -rhs[i];
	mov	eax, DWORD PTR [rbp-20]	# tmp276, i
	cdqe
	lea	rdx, [0+rax*8]	# _66,
	mov	rax, QWORD PTR [rbp-80]	# tmp277, resid
	add	rax, rdx	# _67, _66
# linpack.c:161:     resid[i] = -rhs[i];
	movq	xmm1, QWORD PTR .LC14[rip]	# tmp278,
	xorpd	xmm0, xmm1	# _68, tmp278
# linpack.c:161:     resid[i] = -rhs[i];
	movsd	QWORD PTR [rax], xmm0	# *_67, _68
# linpack.c:162:     for ( j = 0; j < N; j++ )
	mov	DWORD PTR [rbp-24], 0	# j,
# linpack.c:162:     for ( j = 0; j < N; j++ )
	jmp	.L21	#
.L22:
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	mov	eax, DWORD PTR [rbp-20]	# tmp279, i
	cdqe
	lea	rdx, [0+rax*8]	# _70,
	mov	rax, QWORD PTR [rbp-80]	# tmp280, resid
	add	rax, rdx	# _71, _70
	movsd	xmm1, QWORD PTR [rax]	# _72, *_71
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	mov	eax, DWORD PTR [rbp-24]	# tmp281, j
	imul	edx, eax, 1001	# _73, tmp281,
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	mov	eax, DWORD PTR [rbp-20]	# tmp282, i
	add	eax, edx	# _74, _73
	cdqe
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	lea	rdx, [0+rax*8]	# _76,
	mov	rax, QWORD PTR [rbp-56]	# tmp283, a
	add	rax, rdx	# _77, _76
	movsd	xmm2, QWORD PTR [rax]	# _78, *_77
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	mov	eax, DWORD PTR [rbp-24]	# tmp284, j
	cdqe
	lea	rdx, [0+rax*8]	# _80,
	mov	rax, QWORD PTR [rbp-64]	# tmp285, b
	add	rax, rdx	# _81, _80
	movsd	xmm0, QWORD PTR [rax]	# _82, *_81
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	mulsd	xmm0, xmm2	# _83, _78
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	mov	eax, DWORD PTR [rbp-20]	# tmp286, i
	cdqe
	lea	rdx, [0+rax*8]	# _85,
	mov	rax, QWORD PTR [rbp-80]	# tmp287, resid
	add	rax, rdx	# _86, _85
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	addsd	xmm0, xmm1	# _87, _72
# linpack.c:164:       resid[i] = resid[i] + a[i+j*LDA] * b[j];
	movsd	QWORD PTR [rax], xmm0	# *_86, _87
# linpack.c:162:     for ( j = 0; j < N; j++ )
	add	DWORD PTR [rbp-24], 1	# j,
.L21:
# linpack.c:162:     for ( j = 0; j < N; j++ )
	cmp	DWORD PTR [rbp-24], 999	# j,
	jle	.L22	#,
# linpack.c:159:   for ( i = 0; i < N; i++ )
	add	DWORD PTR [rbp-20], 1	# i,
.L20:
# linpack.c:159:   for ( i = 0; i < N; i++ )
	cmp	DWORD PTR [rbp-20], 999	# i,
	jle	.L23	#,
# linpack.c:168:   resid_max = 0.0;
	pxor	xmm0, xmm0	# tmp288
	movsd	QWORD PTR [rbp-32], xmm0	# resid_max, tmp288
# linpack.c:169:   for ( i = 0; i < N; i++ )
	mov	DWORD PTR [rbp-20], 0	# i,
# linpack.c:169:   for ( i = 0; i < N; i++ )
	jmp	.L24	#
.L25:
# linpack.c:171:     resid_max = r8_max ( resid_max, r8_abs ( resid[i] ) );
	mov	eax, DWORD PTR [rbp-20]	# tmp289, i
	cdqe
	lea	rdx, [0+rax*8]	# _89,
	mov	rax, QWORD PTR [rbp-80]	# tmp290, resid
	add	rax, rdx	# _90, _89
# linpack.c:171:     resid_max = r8_max ( resid_max, r8_abs ( resid[i] ) );
	mov	rax, QWORD PTR [rax]	# _91, *_90
	movq	xmm0, rax	#, _91
	call	r8_abs	#
	movq	rdx, xmm0	# _92,
# linpack.c:171:     resid_max = r8_max ( resid_max, r8_abs ( resid[i] ) );
	mov	rax, QWORD PTR [rbp-32]	# tmp291, resid_max
	movq	xmm1, rdx	#, _92
	movq	xmm0, rax	#, tmp291
	call	r8_max	#
	movq	rax, xmm0	# tmp292,
	mov	QWORD PTR [rbp-32], rax	# resid_max, tmp292
# linpack.c:169:   for ( i = 0; i < N; i++ )
	add	DWORD PTR [rbp-20], 1	# i,
.L24:
# linpack.c:169:   for ( i = 0; i < N; i++ )
	cmp	DWORD PTR [rbp-20], 999	# i,
	jle	.L25	#,
# linpack.c:174:   b_max = 0.0;
	pxor	xmm0, xmm0	# tmp293
	movsd	QWORD PTR [rbp-16], xmm0	# b_max, tmp293
# linpack.c:175:   for ( i = 0; i < N; i++ )
	mov	DWORD PTR [rbp-20], 0	# i,
# linpack.c:175:   for ( i = 0; i < N; i++ )
	jmp	.L26	#
.L27:
# linpack.c:177:     b_max = r8_max ( b_max, r8_abs ( b[i] ) );
	mov	eax, DWORD PTR [rbp-20]	# tmp294, i
	cdqe
	lea	rdx, [0+rax*8]	# _94,
	mov	rax, QWORD PTR [rbp-64]	# tmp295, b
	add	rax, rdx	# _95, _94
# linpack.c:177:     b_max = r8_max ( b_max, r8_abs ( b[i] ) );
	mov	rax, QWORD PTR [rax]	# _96, *_95
	movq	xmm0, rax	#, _96
	call	r8_abs	#
	movq	rdx, xmm0	# _97,
# linpack.c:177:     b_max = r8_max ( b_max, r8_abs ( b[i] ) );
	mov	rax, QWORD PTR [rbp-16]	# tmp296, b_max
	movq	xmm1, rdx	#, _97
	movq	xmm0, rax	#, tmp296
	call	r8_max	#
	movq	rax, xmm0	# tmp297,
	mov	QWORD PTR [rbp-16], rax	# b_max, tmp297
# linpack.c:175:   for ( i = 0; i < N; i++ )
	add	DWORD PTR [rbp-20], 1	# i,
.L26:
# linpack.c:175:   for ( i = 0; i < N; i++ )
	cmp	DWORD PTR [rbp-20], 999	# i,
	jle	.L27	#,
# linpack.c:180:   eps = r8_epsilon ( );
	call	r8_epsilon	#
	movq	rax, xmm0	# tmp298,
	mov	QWORD PTR [rbp-144], rax	# eps, tmp298
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	movsd	xmm0, QWORD PTR [rbp-32]	# tmp299, resid_max
	movsd	xmm1, QWORD PTR .LC15[rip]	# tmp300,
	divsd	xmm0, xmm1	# _98, tmp300
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm0, QWORD PTR [rbp-8]	# _99, a_max
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm0, QWORD PTR [rbp-16]	# _100, b_max
# linpack.c:182:   residn = resid_max / ( double ) N / a_max / b_max / eps;
	divsd	xmm0, QWORD PTR [rbp-144]	# residn_202, eps
	movsd	QWORD PTR [rbp-152], xmm0	# residn, residn_202
# linpack.c:184:   time[2] = total;
	movsd	xmm0, QWORD PTR [rbp-136]	# tmp302, total
	movsd	QWORD PTR [rbp-192], xmm0	# time[2], tmp302
# linpack.c:185:   if ( 0.0 < total )
	movsd	xmm0, QWORD PTR [rbp-136]	# tmp303, total
	pxor	xmm1, xmm1	# tmp304
	comisd	xmm0, xmm1	# tmp303, tmp304
	jbe	.L33	#,
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	movsd	xmm1, QWORD PTR [rbp-136]	# tmp305, total
	movsd	xmm0, QWORD PTR .LC16[rip]	# tmp306,
	mulsd	xmm1, xmm0	# _101, tmp306
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	movsd	xmm0, QWORD PTR [rbp-48]	# tmp307, ops
	divsd	xmm0, xmm1	# _102, _101
# linpack.c:187:     time[3] = ops / ( 1.0E+06 * total );
	movsd	QWORD PTR [rbp-184], xmm0	# time[3], _102
	jmp	.L30	#
.L33:
# linpack.c:191:     time[3] = -1.0;
	movsd	xmm0, QWORD PTR .LC17[rip]	# tmp308,
	movsd	QWORD PTR [rbp-184], xmm0	# time[3], tmp308
.L30:
# linpack.c:193:   time[4] = 2.0 / time[3];
	movsd	xmm1, QWORD PTR [rbp-184]	# _103, time[3]
# linpack.c:193:   time[4] = 2.0 / time[3];
	movsd	xmm0, QWORD PTR .LC18[rip]	# tmp309,
	divsd	xmm0, xmm1	# _104, _103
# linpack.c:193:   time[4] = 2.0 / time[3];
	movsd	QWORD PTR [rbp-176], xmm0	# time[4], _104
# linpack.c:194:   time[5] = total / cray;
	movsd	xmm0, QWORD PTR [rbp-136]	# tmp310, total
	divsd	xmm0, QWORD PTR [rbp-40]	# _105, cray
# linpack.c:194:   time[5] = total / cray;
	movsd	QWORD PTR [rbp-168], xmm0	# time[5], _105
# linpack.c:196:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:197:   printf ( "     Norm. Resid      Resid           MACHEP         X[1]          X[N]\n" );
	mov	edi, OFFSET FLAT:.LC19	#,
	call	puts	#
# linpack.c:198:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:199:   printf ( "  %14f  %14f  %14e  %14f  %14f\n", residn, resid_max, eps, b[0], b[N-1] );
	mov	rax, QWORD PTR [rbp-64]	# tmp311, b
	add	rax, 7992	# _106,
# linpack.c:199:   printf ( "  %14f  %14f  %14e  %14f  %14f\n", residn, resid_max, eps, b[0], b[N-1] );
	movsd	xmm3, QWORD PTR [rax]	# _107, *_106
	mov	rax, QWORD PTR [rbp-64]	# tmp312, b
	movsd	xmm2, QWORD PTR [rax]	# _108, *b_162
	movsd	xmm1, QWORD PTR [rbp-144]	# tmp313, eps
	movsd	xmm0, QWORD PTR [rbp-32]	# tmp314, resid_max
	mov	rax, QWORD PTR [rbp-152]	# tmp315, residn
	movapd	xmm4, xmm3	#, _107
	movapd	xmm3, xmm2	#, _108
	movapd	xmm2, xmm1	#, tmp313
	movapd	xmm1, xmm0	#, tmp314
	movq	xmm0, rax	#, tmp315
	mov	edi, OFFSET FLAT:.LC20	#,
	mov	eax, 5	#,
	call	printf	#
# linpack.c:200:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:201:   printf ( "      Factor     Solve      Total     MFLOPS       Unit      Cray-Ratio\n" );
	mov	edi, OFFSET FLAT:.LC21	#,
	call	puts	#
# linpack.c:202:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:203:   printf ( "  %9f  %9f  %9f  %9f  %9f  %9f\n", 
	movsd	xmm4, QWORD PTR [rbp-168]	# _109, time[5]
	movsd	xmm3, QWORD PTR [rbp-176]	# _110, time[4]
	movsd	xmm2, QWORD PTR [rbp-184]	# _111, time[3]
	movsd	xmm1, QWORD PTR [rbp-192]	# _112, time[2]
	movsd	xmm0, QWORD PTR [rbp-200]	# _113, time[1]
	mov	rax, QWORD PTR [rbp-208]	# _114, time[0]
	movapd	xmm5, xmm4	#, _109
	movapd	xmm4, xmm3	#, _110
	movapd	xmm3, xmm2	#, _111
	movapd	xmm2, xmm1	#, _112
	movapd	xmm1, xmm0	#, _113
	movq	xmm0, rax	#, _114
	mov	edi, OFFSET FLAT:.LC22	#,
	mov	eax, 6	#,
	call	printf	#
# linpack.c:206:   free ( a );
	mov	rax, QWORD PTR [rbp-56]	# tmp316, a
	mov	rdi, rax	#, tmp316
	call	free	#
# linpack.c:207:   free ( b );
	mov	rax, QWORD PTR [rbp-64]	# tmp317, b
	mov	rdi, rax	#, tmp317
	call	free	#
# linpack.c:208:   free ( ipvt );
	mov	rax, QWORD PTR [rbp-72]	# tmp318, ipvt
	mov	rdi, rax	#, tmp318
	call	free	#
# linpack.c:209:   free ( resid );
	mov	rax, QWORD PTR [rbp-80]	# tmp319, resid
	mov	rdi, rax	#, tmp319
	call	free	#
# linpack.c:210:   free ( rhs );
	mov	rax, QWORD PTR [rbp-88]	# tmp320, rhs
	mov	rdi, rax	#, tmp320
	call	free	#
# linpack.c:211:   free ( x );
	mov	rax, QWORD PTR [rbp-96]	# tmp321, x
	mov	rdi, rax	#, tmp321
	call	free	#
# linpack.c:215:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:216:   printf ( "LINPACK_BENCH\n" );
	mov	edi, OFFSET FLAT:.LC1	#,
	call	puts	#
# linpack.c:217:   printf ( "  Normal end of execution.\n" );
	mov	edi, OFFSET FLAT:.LC23	#,
	call	puts	#
# linpack.c:219:   printf ( "\n" );
	mov	edi, 10	#,
	call	putchar	#
# linpack.c:220:   timestamp ( );
	call	timestamp	#
# linpack.c:222:   return 0;
	mov	eax, 0	# _131,
.L31:
# linpack.c:225: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.globl	cpu_time
	.type	cpu_time, @function
cpu_time:
.LFB7:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# linpack.c:261:   value = ( double ) clock ( ) 
	call	clock	#
# linpack.c:261:   value = ( double ) clock ( ) 
	pxor	xmm0, xmm0	# _2
	cvtsi2sd	xmm0, rax	# _2, _1
# linpack.c:261:   value = ( double ) clock ( ) 
	movsd	xmm1, QWORD PTR .LC16[rip]	# tmp103,
	divsd	xmm0, xmm1	# value_5, tmp103
	movsd	QWORD PTR [rbp-8], xmm0	# value, value_5
# linpack.c:264:   return value;
	movsd	xmm0, QWORD PTR [rbp-8]	# _6, value
# linpack.c:265: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	cpu_time, .-cpu_time
	.globl	daxpy
	.type	daxpy, @function
daxpy:
.LFB8:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi	# n, n
	movsd	QWORD PTR [rbp-32], xmm0	# da, da
	mov	QWORD PTR [rbp-40], rsi	# dx, dx
	mov	DWORD PTR [rbp-24], edx	# incx, incx
	mov	QWORD PTR [rbp-48], rcx	# dy, dy
	mov	DWORD PTR [rbp-52], r8d	# incy, incy
# linpack.c:322:   if ( n <= 0 )
	cmp	DWORD PTR [rbp-20], 0	# n,
	jle	.L55	#,
# linpack.c:327:   if ( da == 0.0 )
	pxor	xmm0, xmm0	# tmp187
	ucomisd	xmm0, QWORD PTR [rbp-32]	# tmp187, da
	jp	.L39	#,
	pxor	xmm0, xmm0	# tmp188
	ucomisd	xmm0, QWORD PTR [rbp-32]	# tmp188, da
	je	.L56	#,
.L39:
# linpack.c:335:   if ( incx != 1 || incy != 1 )
	cmp	DWORD PTR [rbp-24], 1	# incx,
	jne	.L41	#,
# linpack.c:335:   if ( incx != 1 || incy != 1 )
	cmp	DWORD PTR [rbp-52], 1	# incy,
	je	.L42	#,
.L41:
# linpack.c:337:     if ( 0 <= incx )
	cmp	DWORD PTR [rbp-24], 0	# incx,
	js	.L43	#,
# linpack.c:339:       ix = 0;
	mov	DWORD PTR [rbp-8], 0	# ix,
	jmp	.L44	#
.L43:
# linpack.c:343:       ix = ( - n + 1 ) * incx;
	mov	eax, 1	# tmp189,
	sub	eax, DWORD PTR [rbp-20]	# _1, n
# linpack.c:343:       ix = ( - n + 1 ) * incx;
	mov	edx, DWORD PTR [rbp-24]	# tmp191, incx
	imul	eax, edx	# ix_119, tmp191
	mov	DWORD PTR [rbp-8], eax	# ix, ix_119
.L44:
# linpack.c:346:     if ( 0 <= incy )
	cmp	DWORD PTR [rbp-52], 0	# incy,
	js	.L45	#,
# linpack.c:348:       iy = 0;
	mov	DWORD PTR [rbp-12], 0	# iy,
	jmp	.L46	#
.L45:
# linpack.c:352:       iy = ( - n + 1 ) * incy;
	mov	eax, 1	# tmp192,
	sub	eax, DWORD PTR [rbp-20]	# _2, n
# linpack.c:352:       iy = ( - n + 1 ) * incy;
	mov	edx, DWORD PTR [rbp-52]	# tmp194, incy
	imul	eax, edx	# iy_121, tmp194
	mov	DWORD PTR [rbp-12], eax	# iy, iy_121
.L46:
# linpack.c:355:     for ( i = 0; i < n; i++ )
	mov	DWORD PTR [rbp-4], 0	# i,
# linpack.c:355:     for ( i = 0; i < n; i++ )
	jmp	.L47	#
.L48:
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	mov	eax, DWORD PTR [rbp-12]	# tmp195, iy
	cdqe
	lea	rdx, [0+rax*8]	# _4,
	mov	rax, QWORD PTR [rbp-48]	# tmp196, dy
	add	rax, rdx	# _5, _4
	movsd	xmm1, QWORD PTR [rax]	# _6, *_5
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	mov	eax, DWORD PTR [rbp-8]	# tmp197, ix
	cdqe
	lea	rdx, [0+rax*8]	# _8,
	mov	rax, QWORD PTR [rbp-40]	# tmp198, dx
	add	rax, rdx	# _9, _8
	movsd	xmm0, QWORD PTR [rax]	# _10, *_9
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _11, da
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	mov	eax, DWORD PTR [rbp-12]	# tmp199, iy
	cdqe
	lea	rdx, [0+rax*8]	# _13,
	mov	rax, QWORD PTR [rbp-48]	# tmp200, dy
	add	rax, rdx	# _14, _13
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	addsd	xmm0, xmm1	# _15, _6
# linpack.c:357:       dy[iy] = dy[iy] + da * dx[ix];
	movsd	QWORD PTR [rax], xmm0	# *_14, _15
# linpack.c:358:       ix = ix + incx;
	mov	eax, DWORD PTR [rbp-24]	# tmp201, incx
	add	DWORD PTR [rbp-8], eax	# ix, tmp201
# linpack.c:359:       iy = iy + incy;
	mov	eax, DWORD PTR [rbp-52]	# tmp202, incy
	add	DWORD PTR [rbp-12], eax	# iy, tmp202
# linpack.c:355:     for ( i = 0; i < n; i++ )
	add	DWORD PTR [rbp-4], 1	# i,
.L47:
# linpack.c:355:     for ( i = 0; i < n; i++ )
	mov	eax, DWORD PTR [rbp-4]	# tmp203, i
	cmp	eax, DWORD PTR [rbp-20]	# tmp203, n
	jl	.L48	#,
# linpack.c:335:   if ( incx != 1 || incy != 1 )
	jmp	.L54	#
.L42:
# linpack.c:367:     m = n % 4;
	mov	edx, DWORD PTR [rbp-20]	# tmp205, n
	mov	eax, edx	# tmp206, tmp205
	sar	eax, 31	# tmp206,
	shr	eax, 30	# tmp207,
	add	edx, eax	# tmp208, tmp207
	and	edx, 3	# tmp209,
	sub	edx, eax	# m_106, tmp207
	mov	DWORD PTR [rbp-16], edx	# m, m_106
# linpack.c:369:     for ( i = 0; i < m; i++ )
	mov	DWORD PTR [rbp-4], 0	# i,
# linpack.c:369:     for ( i = 0; i < m; i++ )
	jmp	.L50	#
.L51:
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	mov	eax, DWORD PTR [rbp-4]	# tmp211, i
	cdqe
	lea	rdx, [0+rax*8]	# _17,
	mov	rax, QWORD PTR [rbp-48]	# tmp212, dy
	add	rax, rdx	# _18, _17
	movsd	xmm1, QWORD PTR [rax]	# _19, *_18
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	mov	eax, DWORD PTR [rbp-4]	# tmp213, i
	cdqe
	lea	rdx, [0+rax*8]	# _21,
	mov	rax, QWORD PTR [rbp-40]	# tmp214, dx
	add	rax, rdx	# _22, _21
	movsd	xmm0, QWORD PTR [rax]	# _23, *_22
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _24, da
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	mov	eax, DWORD PTR [rbp-4]	# tmp215, i
	cdqe
	lea	rdx, [0+rax*8]	# _26,
	mov	rax, QWORD PTR [rbp-48]	# tmp216, dy
	add	rax, rdx	# _27, _26
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	addsd	xmm0, xmm1	# _28, _19
# linpack.c:371:       dy[i] = dy[i] + da * dx[i];
	movsd	QWORD PTR [rax], xmm0	# *_27, _28
# linpack.c:369:     for ( i = 0; i < m; i++ )
	add	DWORD PTR [rbp-4], 1	# i,
.L50:
# linpack.c:369:     for ( i = 0; i < m; i++ )
	mov	eax, DWORD PTR [rbp-4]	# tmp217, i
	cmp	eax, DWORD PTR [rbp-16]	# tmp217, m
	jl	.L51	#,
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	mov	eax, DWORD PTR [rbp-16]	# tmp218, m
	mov	DWORD PTR [rbp-4], eax	# i, tmp218
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	jmp	.L52	#
.L53:
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	mov	eax, DWORD PTR [rbp-4]	# tmp219, i
	cdqe
	lea	rdx, [0+rax*8]	# _30,
	mov	rax, QWORD PTR [rbp-48]	# tmp220, dy
	add	rax, rdx	# _31, _30
	movsd	xmm1, QWORD PTR [rax]	# _32, *_31
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	mov	eax, DWORD PTR [rbp-4]	# tmp221, i
	cdqe
	lea	rdx, [0+rax*8]	# _34,
	mov	rax, QWORD PTR [rbp-40]	# tmp222, dx
	add	rax, rdx	# _35, _34
	movsd	xmm0, QWORD PTR [rax]	# _36, *_35
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _37, da
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	mov	eax, DWORD PTR [rbp-4]	# tmp223, i
	cdqe
	lea	rdx, [0+rax*8]	# _39,
	mov	rax, QWORD PTR [rbp-48]	# tmp224, dy
	add	rax, rdx	# _40, _39
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	addsd	xmm0, xmm1	# _41, _32
# linpack.c:376:       dy[i  ] = dy[i  ] + da * dx[i  ];
	movsd	QWORD PTR [rax], xmm0	# *_40, _41
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	mov	eax, DWORD PTR [rbp-4]	# tmp225, i
	cdqe
	add	rax, 1	# _43,
	lea	rdx, [0+rax*8]	# _44,
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	mov	rax, QWORD PTR [rbp-48]	# tmp226, dy
	add	rax, rdx	# _45, _44
	movsd	xmm1, QWORD PTR [rax]	# _46, *_45
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	mov	eax, DWORD PTR [rbp-4]	# tmp227, i
	cdqe
	add	rax, 1	# _48,
	lea	rdx, [0+rax*8]	# _49,
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	mov	rax, QWORD PTR [rbp-40]	# tmp228, dx
	add	rax, rdx	# _50, _49
	movsd	xmm0, QWORD PTR [rax]	# _51, *_50
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _52, da
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	mov	eax, DWORD PTR [rbp-4]	# tmp229, i
	cdqe
	add	rax, 1	# _54,
	lea	rdx, [0+rax*8]	# _55,
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	mov	rax, QWORD PTR [rbp-48]	# tmp230, dy
	add	rax, rdx	# _56, _55
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	addsd	xmm0, xmm1	# _57, _46
# linpack.c:377:       dy[i+1] = dy[i+1] + da * dx[i+1];
	movsd	QWORD PTR [rax], xmm0	# *_56, _57
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	mov	eax, DWORD PTR [rbp-4]	# tmp231, i
	cdqe
	add	rax, 2	# _59,
	lea	rdx, [0+rax*8]	# _60,
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	mov	rax, QWORD PTR [rbp-48]	# tmp232, dy
	add	rax, rdx	# _61, _60
	movsd	xmm1, QWORD PTR [rax]	# _62, *_61
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	mov	eax, DWORD PTR [rbp-4]	# tmp233, i
	cdqe
	add	rax, 2	# _64,
	lea	rdx, [0+rax*8]	# _65,
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	mov	rax, QWORD PTR [rbp-40]	# tmp234, dx
	add	rax, rdx	# _66, _65
	movsd	xmm0, QWORD PTR [rax]	# _67, *_66
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _68, da
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	mov	eax, DWORD PTR [rbp-4]	# tmp235, i
	cdqe
	add	rax, 2	# _70,
	lea	rdx, [0+rax*8]	# _71,
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	mov	rax, QWORD PTR [rbp-48]	# tmp236, dy
	add	rax, rdx	# _72, _71
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	addsd	xmm0, xmm1	# _73, _62
# linpack.c:378:       dy[i+2] = dy[i+2] + da * dx[i+2];
	movsd	QWORD PTR [rax], xmm0	# *_72, _73
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	mov	eax, DWORD PTR [rbp-4]	# tmp237, i
	cdqe
	add	rax, 3	# _75,
	lea	rdx, [0+rax*8]	# _76,
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	mov	rax, QWORD PTR [rbp-48]	# tmp238, dy
	add	rax, rdx	# _77, _76
	movsd	xmm1, QWORD PTR [rax]	# _78, *_77
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	mov	eax, DWORD PTR [rbp-4]	# tmp239, i
	cdqe
	add	rax, 3	# _80,
	lea	rdx, [0+rax*8]	# _81,
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	mov	rax, QWORD PTR [rbp-40]	# tmp240, dx
	add	rax, rdx	# _82, _81
	movsd	xmm0, QWORD PTR [rax]	# _83, *_82
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _84, da
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	mov	eax, DWORD PTR [rbp-4]	# tmp241, i
	cdqe
	add	rax, 3	# _86,
	lea	rdx, [0+rax*8]	# _87,
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	mov	rax, QWORD PTR [rbp-48]	# tmp242, dy
	add	rax, rdx	# _88, _87
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	addsd	xmm0, xmm1	# _89, _78
# linpack.c:379:       dy[i+3] = dy[i+3] + da * dx[i+3];
	movsd	QWORD PTR [rax], xmm0	# *_88, _89
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	add	DWORD PTR [rbp-4], 4	# i,
.L52:
# linpack.c:374:     for ( i = m; i < n; i = i + 4 )
	mov	eax, DWORD PTR [rbp-4]	# tmp243, i
	cmp	eax, DWORD PTR [rbp-20]	# tmp243, n
	jl	.L53	#,
# linpack.c:382:   return;
	jmp	.L36	#
.L54:
	jmp	.L36	#
.L55:
# linpack.c:324:     return;
	nop	
	jmp	.L36	#
.L56:
# linpack.c:329:     return;
	nop	
.L36:
# linpack.c:383: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	daxpy, .-daxpy
	.globl	ddot
	.type	ddot, @function
ddot:
.LFB9:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-36], edi	# n, n
	mov	QWORD PTR [rbp-48], rsi	# dx, dx
	mov	DWORD PTR [rbp-40], edx	# incx, incx
	mov	QWORD PTR [rbp-56], rcx	# dy, dy
	mov	DWORD PTR [rbp-60], r8d	# incy, incy
# linpack.c:441:   dtemp = 0.0;
	pxor	xmm0, xmm0	# tmp177
	movsd	QWORD PTR [rbp-8], xmm0	# dtemp, tmp177
# linpack.c:443:   if ( n <= 0 )
	cmp	DWORD PTR [rbp-36], 0	# n,
	jg	.L58	#,
# linpack.c:445:     return dtemp;
	movsd	xmm0, QWORD PTR [rbp-8]	# _89, dtemp
	jmp	.L59	#
.L58:
# linpack.c:451:   if ( incx != 1 || incy != 1 )
	cmp	DWORD PTR [rbp-40], 1	# incx,
	jne	.L60	#,
# linpack.c:451:   if ( incx != 1 || incy != 1 )
	cmp	DWORD PTR [rbp-60], 1	# incy,
	je	.L61	#,
.L60:
# linpack.c:453:     if ( 0 <= incx )
	cmp	DWORD PTR [rbp-40], 0	# incx,
	js	.L62	#,
# linpack.c:455:       ix = 0;
	mov	DWORD PTR [rbp-16], 0	# ix,
	jmp	.L63	#
.L62:
# linpack.c:459:       ix = ( - n + 1 ) * incx;
	mov	eax, 1	# tmp178,
	sub	eax, DWORD PTR [rbp-36]	# _1, n
# linpack.c:459:       ix = ( - n + 1 ) * incx;
	mov	edx, DWORD PTR [rbp-40]	# tmp180, incx
	imul	eax, edx	# ix_104, tmp180
	mov	DWORD PTR [rbp-16], eax	# ix, ix_104
.L63:
# linpack.c:462:     if ( 0 <= incy )
	cmp	DWORD PTR [rbp-60], 0	# incy,
	js	.L64	#,
# linpack.c:464:       iy = 0;
	mov	DWORD PTR [rbp-20], 0	# iy,
	jmp	.L65	#
.L64:
# linpack.c:468:       iy = ( - n + 1 ) * incy;
	mov	eax, 1	# tmp181,
	sub	eax, DWORD PTR [rbp-36]	# _2, n
# linpack.c:468:       iy = ( - n + 1 ) * incy;
	mov	edx, DWORD PTR [rbp-60]	# tmp183, incy
	imul	eax, edx	# iy_106, tmp183
	mov	DWORD PTR [rbp-20], eax	# iy, iy_106
.L65:
# linpack.c:471:     for ( i = 0; i < n; i++ )
	mov	DWORD PTR [rbp-12], 0	# i,
# linpack.c:471:     for ( i = 0; i < n; i++ )
	jmp	.L66	#
.L67:
# linpack.c:473:       dtemp = dtemp + dx[ix] * dy[iy];
	mov	eax, DWORD PTR [rbp-16]	# tmp184, ix
	cdqe
	lea	rdx, [0+rax*8]	# _4,
	mov	rax, QWORD PTR [rbp-48]	# tmp185, dx
	add	rax, rdx	# _5, _4
	movsd	xmm1, QWORD PTR [rax]	# _6, *_5
# linpack.c:473:       dtemp = dtemp + dx[ix] * dy[iy];
	mov	eax, DWORD PTR [rbp-20]	# tmp186, iy
	cdqe
	lea	rdx, [0+rax*8]	# _8,
	mov	rax, QWORD PTR [rbp-56]	# tmp187, dy
	add	rax, rdx	# _9, _8
	movsd	xmm0, QWORD PTR [rax]	# _10, *_9
# linpack.c:473:       dtemp = dtemp + dx[ix] * dy[iy];
	mulsd	xmm0, xmm1	# _11, _6
# linpack.c:473:       dtemp = dtemp + dx[ix] * dy[iy];
	movsd	xmm1, QWORD PTR [rbp-8]	# tmp189, dtemp
	addsd	xmm0, xmm1	# dtemp_109, tmp189
	movsd	QWORD PTR [rbp-8], xmm0	# dtemp, dtemp_109
# linpack.c:474:       ix = ix + incx;
	mov	eax, DWORD PTR [rbp-40]	# tmp190, incx
	add	DWORD PTR [rbp-16], eax	# ix, tmp190
# linpack.c:475:       iy = iy + incy;
	mov	eax, DWORD PTR [rbp-60]	# tmp191, incy
	add	DWORD PTR [rbp-20], eax	# iy, tmp191
# linpack.c:471:     for ( i = 0; i < n; i++ )
	add	DWORD PTR [rbp-12], 1	# i,
.L66:
# linpack.c:471:     for ( i = 0; i < n; i++ )
	mov	eax, DWORD PTR [rbp-12]	# tmp192, i
	cmp	eax, DWORD PTR [rbp-36]	# tmp192, n
	jl	.L67	#,
# linpack.c:451:   if ( incx != 1 || incy != 1 )
	jmp	.L68	#
.L61:
# linpack.c:483:     m = n % 5;
	mov	edx, DWORD PTR [rbp-36]	# tmp194, n
	movsx	rax, edx	# tmp195, tmp194
	imul	rax, rax, 1717986919	# tmp196, tmp195,
	shr	rax, 32	# tmp197,
	mov	ecx, eax	# tmp198, tmp197
	sar	ecx	# tmp198
	mov	eax, edx	# tmp199, tmp194
	sar	eax, 31	# tmp199,
	sub	ecx, eax	# tmp193, tmp199
	mov	eax, ecx	# tmp200, tmp193
	sal	eax, 2	# tmp200,
	add	eax, ecx	# tmp200, tmp193
	sub	edx, eax	# m_94, tmp200
	mov	DWORD PTR [rbp-24], edx	# m, m_94
# linpack.c:485:     for ( i = 0; i < m; i++ )
	mov	DWORD PTR [rbp-12], 0	# i,
# linpack.c:485:     for ( i = 0; i < m; i++ )
	jmp	.L69	#
.L70:
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	mov	eax, DWORD PTR [rbp-12]	# tmp202, i
	cdqe
	lea	rdx, [0+rax*8]	# _13,
	mov	rax, QWORD PTR [rbp-48]	# tmp203, dx
	add	rax, rdx	# _14, _13
	movsd	xmm1, QWORD PTR [rax]	# _15, *_14
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	mov	eax, DWORD PTR [rbp-12]	# tmp204, i
	cdqe
	lea	rdx, [0+rax*8]	# _17,
	mov	rax, QWORD PTR [rbp-56]	# tmp205, dy
	add	rax, rdx	# _18, _17
	movsd	xmm0, QWORD PTR [rax]	# _19, *_18
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	mulsd	xmm0, xmm1	# _20, _15
# linpack.c:487:       dtemp = dtemp + dx[i] * dy[i];
	movsd	xmm1, QWORD PTR [rbp-8]	# tmp207, dtemp
	addsd	xmm0, xmm1	# dtemp_102, tmp207
	movsd	QWORD PTR [rbp-8], xmm0	# dtemp, dtemp_102
# linpack.c:485:     for ( i = 0; i < m; i++ )
	add	DWORD PTR [rbp-12], 1	# i,
.L69:
# linpack.c:485:     for ( i = 0; i < m; i++ )
	mov	eax, DWORD PTR [rbp-12]	# tmp208, i
	cmp	eax, DWORD PTR [rbp-24]	# tmp208, m
	jl	.L70	#,
# linpack.c:490:     for ( i = m; i < n; i = i + 5 )
	mov	eax, DWORD PTR [rbp-24]	# tmp209, m
	mov	DWORD PTR [rbp-12], eax	# i, tmp209
# linpack.c:490:     for ( i = m; i < n; i = i + 5 )
	jmp	.L71	#
.L72:
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	mov	eax, DWORD PTR [rbp-12]	# tmp210, i
	cdqe
	lea	rdx, [0+rax*8]	# _22,
	mov	rax, QWORD PTR [rbp-48]	# tmp211, dx
	add	rax, rdx	# _23, _22
	movsd	xmm1, QWORD PTR [rax]	# _24, *_23
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	mov	eax, DWORD PTR [rbp-12]	# tmp212, i
	cdqe
	lea	rdx, [0+rax*8]	# _26,
	mov	rax, QWORD PTR [rbp-56]	# tmp213, dy
	add	rax, rdx	# _27, _26
	movsd	xmm0, QWORD PTR [rax]	# _28, *_27
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	mulsd	xmm0, xmm1	# _29, _24
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	movapd	xmm1, xmm0	# _29, _29
	addsd	xmm1, QWORD PTR [rbp-8]	# _29, dtemp
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	mov	eax, DWORD PTR [rbp-12]	# tmp214, i
	cdqe
	add	rax, 1	# _32,
	lea	rdx, [0+rax*8]	# _33,
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	mov	rax, QWORD PTR [rbp-48]	# tmp215, dx
	add	rax, rdx	# _34, _33
	movsd	xmm2, QWORD PTR [rax]	# _35, *_34
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	mov	eax, DWORD PTR [rbp-12]	# tmp216, i
	cdqe
	add	rax, 1	# _37,
	lea	rdx, [0+rax*8]	# _38,
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	mov	rax, QWORD PTR [rbp-56]	# tmp217, dy
	add	rax, rdx	# _39, _38
	movsd	xmm0, QWORD PTR [rax]	# _40, *_39
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	mulsd	xmm0, xmm2	# _41, _35
# linpack.c:493:                     + dx[i+1] * dy[i+1] 
	addsd	xmm1, xmm0	# _42, _41
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	mov	eax, DWORD PTR [rbp-12]	# tmp218, i
	cdqe
	add	rax, 2	# _44,
	lea	rdx, [0+rax*8]	# _45,
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	mov	rax, QWORD PTR [rbp-48]	# tmp219, dx
	add	rax, rdx	# _46, _45
	movsd	xmm2, QWORD PTR [rax]	# _47, *_46
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	mov	eax, DWORD PTR [rbp-12]	# tmp220, i
	cdqe
	add	rax, 2	# _49,
	lea	rdx, [0+rax*8]	# _50,
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	mov	rax, QWORD PTR [rbp-56]	# tmp221, dy
	add	rax, rdx	# _51, _50
	movsd	xmm0, QWORD PTR [rax]	# _52, *_51
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	mulsd	xmm0, xmm2	# _53, _47
# linpack.c:494:                     + dx[i+2] * dy[i+2] 
	addsd	xmm1, xmm0	# _54, _53
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	mov	eax, DWORD PTR [rbp-12]	# tmp222, i
	cdqe
	add	rax, 3	# _56,
	lea	rdx, [0+rax*8]	# _57,
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	mov	rax, QWORD PTR [rbp-48]	# tmp223, dx
	add	rax, rdx	# _58, _57
	movsd	xmm2, QWORD PTR [rax]	# _59, *_58
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	mov	eax, DWORD PTR [rbp-12]	# tmp224, i
	cdqe
	add	rax, 3	# _61,
	lea	rdx, [0+rax*8]	# _62,
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	mov	rax, QWORD PTR [rbp-56]	# tmp225, dy
	add	rax, rdx	# _63, _62
	movsd	xmm0, QWORD PTR [rax]	# _64, *_63
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	mulsd	xmm0, xmm2	# _65, _59
# linpack.c:495:                     + dx[i+3] * dy[i+3] 
	addsd	xmm1, xmm0	# _66, _65
# linpack.c:496:                     + dx[i+4] * dy[i+4];
	mov	eax, DWORD PTR [rbp-12]	# tmp226, i
	cdqe
	add	rax, 4	# _68,
	lea	rdx, [0+rax*8]	# _69,
# linpack.c:496:                     + dx[i+4] * dy[i+4];
	mov	rax, QWORD PTR [rbp-48]	# tmp227, dx
	add	rax, rdx	# _70, _69
	movsd	xmm2, QWORD PTR [rax]	# _71, *_70
# linpack.c:496:                     + dx[i+4] * dy[i+4];
	mov	eax, DWORD PTR [rbp-12]	# tmp228, i
	cdqe
	add	rax, 4	# _73,
	lea	rdx, [0+rax*8]	# _74,
# linpack.c:496:                     + dx[i+4] * dy[i+4];
	mov	rax, QWORD PTR [rbp-56]	# tmp229, dy
	add	rax, rdx	# _75, _74
	movsd	xmm0, QWORD PTR [rax]	# _76, *_75
# linpack.c:496:                     + dx[i+4] * dy[i+4];
	mulsd	xmm0, xmm2	# _77, _71
# linpack.c:492:       dtemp = dtemp + dx[i  ] * dy[i  ] 
	addsd	xmm0, xmm1	# dtemp_100, _66
	movsd	QWORD PTR [rbp-8], xmm0	# dtemp, dtemp_100
# linpack.c:490:     for ( i = m; i < n; i = i + 5 )
	add	DWORD PTR [rbp-12], 5	# i,
.L71:
# linpack.c:490:     for ( i = m; i < n; i = i + 5 )
	mov	eax, DWORD PTR [rbp-12]	# tmp231, i
	cmp	eax, DWORD PTR [rbp-36]	# tmp231, n
	jl	.L72	#,
.L68:
# linpack.c:499:   return dtemp;
	movsd	xmm0, QWORD PTR [rbp-8]	# _89, dtemp
.L59:
# linpack.c:500: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	ddot, .-ddot
	.globl	dgefa
	.type	dgefa, @function
dgefa:
.LFB10:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR [rbp-40], rdi	# a, a
	mov	DWORD PTR [rbp-44], esi	# lda, lda
	mov	DWORD PTR [rbp-48], edx	# n, n
	mov	QWORD PTR [rbp-56], rcx	# ipvt, ipvt
# linpack.c:557:   info = 0;
	mov	DWORD PTR [rbp-4], 0	# info,
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	mov	DWORD PTR [rbp-12], 1	# k,
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	jmp	.L74	#
.L82:
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	mov	eax, DWORD PTR [rbp-12]	# tmp225, k
	movsx	rdx, eax	# _1, tmp225
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	mov	eax, DWORD PTR [rbp-12]	# tmp226, k
	sub	eax, 1	# _2,
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	imul	eax, DWORD PTR [rbp-44]	# _3, lda
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	cdqe
	add	rax, rdx	# _5, _1
	sub	rax, 1	# _6,
	lea	rdx, [0+rax*8]	# _7,
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	mov	rax, QWORD PTR [rbp-40]	# tmp227, a
	lea	rcx, [rdx+rax]	# _8,
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	mov	eax, DWORD PTR [rbp-48]	# tmp228, n
	sub	eax, DWORD PTR [rbp-12]	# _9, k
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	add	eax, 1	# _10,
	mov	edx, 1	#,
	mov	rsi, rcx	#, _8
	mov	edi, eax	#, _10
	call	idamax	#
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	mov	edx, DWORD PTR [rbp-12]	# tmp229, k
	add	eax, edx	# _12, tmp229
# linpack.c:564:     l = idamax ( n-k+1, a+(k-1)+(k-1)*lda, 1 ) + k - 1;
	sub	eax, 1	# tmp230,
	mov	DWORD PTR [rbp-16], eax	# l, tmp230
# linpack.c:565:     ipvt[k-1] = l;
	mov	eax, DWORD PTR [rbp-12]	# tmp231, k
	cdqe
	sal	rax, 2	# _14,
# linpack.c:565:     ipvt[k-1] = l;
	lea	rdx, [rax-4]	# _15,
# linpack.c:565:     ipvt[k-1] = l;
	mov	rax, QWORD PTR [rbp-56]	# tmp232, ipvt
	add	rdx, rax	# _16, tmp232
# linpack.c:565:     ipvt[k-1] = l;
	mov	eax, DWORD PTR [rbp-16]	# tmp233, l
	mov	DWORD PTR [rdx], eax	# *_16, tmp233
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	mov	eax, DWORD PTR [rbp-16]	# tmp234, l
	lea	edx, [rax-1]	# _17,
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	mov	eax, DWORD PTR [rbp-12]	# tmp235, k
	sub	eax, 1	# _18,
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	imul	eax, DWORD PTR [rbp-44]	# _19, lda
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	add	eax, edx	# _20, _17
	cdqe
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	lea	rdx, [0+rax*8]	# _22,
	mov	rax, QWORD PTR [rbp-40]	# tmp236, a
	add	rax, rdx	# _23, _22
	movsd	xmm0, QWORD PTR [rax]	# _24, *_23
# linpack.c:569:     if ( a[l-1+(k-1)*lda] == 0.0 )
	pxor	xmm1, xmm1	# tmp237
	ucomisd	xmm0, xmm1	# _24, tmp237
	jp	.L75	#,
	pxor	xmm1, xmm1	# tmp238
	ucomisd	xmm0, xmm1	# _24, tmp238
	jne	.L75	#,
# linpack.c:571:       info = k;
	mov	eax, DWORD PTR [rbp-12]	# tmp239, k
	mov	DWORD PTR [rbp-4], eax	# info, tmp239
# linpack.c:572:       continue;
	jmp	.L77	#
.L75:
# linpack.c:577:     if ( l != k )
	mov	eax, DWORD PTR [rbp-16]	# tmp240, l
	cmp	eax, DWORD PTR [rbp-12]	# tmp240, k
	je	.L78	#,
# linpack.c:579:       t = a[l-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-16]	# tmp241, l
	lea	edx, [rax-1]	# _25,
# linpack.c:579:       t = a[l-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-12]	# tmp242, k
	sub	eax, 1	# _26,
# linpack.c:579:       t = a[l-1+(k-1)*lda];
	imul	eax, DWORD PTR [rbp-44]	# _27, lda
# linpack.c:579:       t = a[l-1+(k-1)*lda];
	add	eax, edx	# _28, _25
	cdqe
# linpack.c:579:       t = a[l-1+(k-1)*lda];
	lea	rdx, [0+rax*8]	# _30,
	mov	rax, QWORD PTR [rbp-40]	# tmp243, a
	add	rax, rdx	# _31, _30
# linpack.c:579:       t = a[l-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [rax]	# tmp244, *_31
	movsd	QWORD PTR [rbp-24], xmm0	# t, tmp244
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-12]	# tmp245, k
	lea	edx, [rax-1]	# _32,
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-12]	# tmp246, k
	sub	eax, 1	# _33,
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	imul	eax, DWORD PTR [rbp-44]	# _34, lda
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	add	eax, edx	# _35, _32
	cdqe
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	lea	rdx, [0+rax*8]	# _37,
	mov	rax, QWORD PTR [rbp-40]	# tmp247, a
	add	rdx, rax	# _38, tmp247
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-16]	# tmp248, l
	lea	ecx, [rax-1]	# _39,
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-12]	# tmp249, k
	sub	eax, 1	# _40,
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	imul	eax, DWORD PTR [rbp-44]	# _41, lda
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	add	eax, ecx	# _42, _39
	cdqe
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	lea	rcx, [0+rax*8]	# _44,
	mov	rax, QWORD PTR [rbp-40]	# tmp250, a
	add	rax, rcx	# _45, _44
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR [rdx]	# _46, *_38
# linpack.c:580:       a[l-1+(k-1)*lda] = a[k-1+(k-1)*lda];
	movsd	QWORD PTR [rax], xmm0	# *_45, _46
# linpack.c:581:       a[k-1+(k-1)*lda] = t;
	mov	eax, DWORD PTR [rbp-12]	# tmp251, k
	lea	edx, [rax-1]	# _47,
# linpack.c:581:       a[k-1+(k-1)*lda] = t;
	mov	eax, DWORD PTR [rbp-12]	# tmp252, k
	sub	eax, 1	# _48,
# linpack.c:581:       a[k-1+(k-1)*lda] = t;
	imul	eax, DWORD PTR [rbp-44]	# _49, lda
# linpack.c:581:       a[k-1+(k-1)*lda] = t;
	add	eax, edx	# _50, _47
	cdqe
# linpack.c:581:       a[k-1+(k-1)*lda] = t;
	lea	rdx, [0+rax*8]	# _52,
	mov	rax, QWORD PTR [rbp-40]	# tmp253, a
	add	rax, rdx	# _53, _52
# linpack.c:581:       a[k-1+(k-1)*lda] = t;
	movsd	xmm0, QWORD PTR [rbp-24]	# tmp254, t
	movsd	QWORD PTR [rax], xmm0	# *_53, tmp254
.L78:
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-12]	# tmp255, k
	lea	edx, [rax-1]	# _54,
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-12]	# tmp256, k
	sub	eax, 1	# _55,
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	imul	eax, DWORD PTR [rbp-44]	# _56, lda
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	add	eax, edx	# _57, _54
	cdqe
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	lea	rdx, [0+rax*8]	# _59,
	mov	rax, QWORD PTR [rbp-40]	# tmp257, a
	add	rax, rdx	# _60, _59
	movsd	xmm1, QWORD PTR [rax]	# _61, *_60
# linpack.c:586:     t = -1.0 / a[k-1+(k-1)*lda];
	movsd	xmm0, QWORD PTR .LC17[rip]	# tmp259,
	divsd	xmm0, xmm1	# t_152, _61
	movsd	QWORD PTR [rbp-24], xmm0	# t, t_152
# linpack.c:588:     dscal ( n-k, t, a+k+(k-1)*lda, 1 );
	mov	eax, DWORD PTR [rbp-12]	# tmp260, k
	movsx	rdx, eax	# _62, tmp260
# linpack.c:588:     dscal ( n-k, t, a+k+(k-1)*lda, 1 );
	mov	eax, DWORD PTR [rbp-12]	# tmp261, k
	sub	eax, 1	# _63,
# linpack.c:588:     dscal ( n-k, t, a+k+(k-1)*lda, 1 );
	imul	eax, DWORD PTR [rbp-44]	# _64, lda
# linpack.c:588:     dscal ( n-k, t, a+k+(k-1)*lda, 1 );
	cdqe
	add	rax, rdx	# _66, _62
	lea	rdx, [0+rax*8]	# _67,
# linpack.c:588:     dscal ( n-k, t, a+k+(k-1)*lda, 1 );
	mov	rax, QWORD PTR [rbp-40]	# tmp262, a
	lea	rsi, [rdx+rax]	# _68,
	mov	eax, DWORD PTR [rbp-48]	# tmp263, n
	sub	eax, DWORD PTR [rbp-12]	# _69, k
	mov	rcx, QWORD PTR [rbp-24]	# tmp264, t
	mov	edx, 1	#,
	movq	xmm0, rcx	#, tmp264
	mov	edi, eax	#, _69
	call	dscal	#
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	mov	eax, DWORD PTR [rbp-12]	# tmp268, k
	add	eax, 1	# j_154,
	mov	DWORD PTR [rbp-8], eax	# j, j_154
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	jmp	.L79	#
.L81:
# linpack.c:594:       t = a[l-1+(j-1)*lda];
	mov	eax, DWORD PTR [rbp-16]	# tmp269, l
	lea	edx, [rax-1]	# _70,
# linpack.c:594:       t = a[l-1+(j-1)*lda];
	mov	eax, DWORD PTR [rbp-8]	# tmp270, j
	sub	eax, 1	# _71,
# linpack.c:594:       t = a[l-1+(j-1)*lda];
	imul	eax, DWORD PTR [rbp-44]	# _72, lda
# linpack.c:594:       t = a[l-1+(j-1)*lda];
	add	eax, edx	# _73, _70
	cdqe
# linpack.c:594:       t = a[l-1+(j-1)*lda];
	lea	rdx, [0+rax*8]	# _75,
	mov	rax, QWORD PTR [rbp-40]	# tmp271, a
	add	rax, rdx	# _76, _75
# linpack.c:594:       t = a[l-1+(j-1)*lda];
	movsd	xmm0, QWORD PTR [rax]	# tmp272, *_76
	movsd	QWORD PTR [rbp-24], xmm0	# t, tmp272
# linpack.c:595:       if ( l != k )
	mov	eax, DWORD PTR [rbp-16]	# tmp273, l
	cmp	eax, DWORD PTR [rbp-12]	# tmp273, k
	je	.L80	#,
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	mov	eax, DWORD PTR [rbp-12]	# tmp274, k
	lea	edx, [rax-1]	# _77,
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	mov	eax, DWORD PTR [rbp-8]	# tmp275, j
	sub	eax, 1	# _78,
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	imul	eax, DWORD PTR [rbp-44]	# _79, lda
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	add	eax, edx	# _80, _77
	cdqe
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	lea	rdx, [0+rax*8]	# _82,
	mov	rax, QWORD PTR [rbp-40]	# tmp276, a
	add	rdx, rax	# _83, tmp276
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	mov	eax, DWORD PTR [rbp-16]	# tmp277, l
	lea	ecx, [rax-1]	# _84,
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	mov	eax, DWORD PTR [rbp-8]	# tmp278, j
	sub	eax, 1	# _85,
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	imul	eax, DWORD PTR [rbp-44]	# _86, lda
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	add	eax, ecx	# _87, _84
	cdqe
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	lea	rcx, [0+rax*8]	# _89,
	mov	rax, QWORD PTR [rbp-40]	# tmp279, a
	add	rax, rcx	# _90, _89
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movsd	xmm0, QWORD PTR [rdx]	# _91, *_83
# linpack.c:597:         a[l-1+(j-1)*lda] = a[k-1+(j-1)*lda];
	movsd	QWORD PTR [rax], xmm0	# *_90, _91
# linpack.c:598:         a[k-1+(j-1)*lda] = t;
	mov	eax, DWORD PTR [rbp-12]	# tmp280, k
	lea	edx, [rax-1]	# _92,
# linpack.c:598:         a[k-1+(j-1)*lda] = t;
	mov	eax, DWORD PTR [rbp-8]	# tmp281, j
	sub	eax, 1	# _93,
# linpack.c:598:         a[k-1+(j-1)*lda] = t;
	imul	eax, DWORD PTR [rbp-44]	# _94, lda
# linpack.c:598:         a[k-1+(j-1)*lda] = t;
	add	eax, edx	# _95, _92
	cdqe
# linpack.c:598:         a[k-1+(j-1)*lda] = t;
	lea	rdx, [0+rax*8]	# _97,
	mov	rax, QWORD PTR [rbp-40]	# tmp282, a
	add	rax, rdx	# _98, _97
# linpack.c:598:         a[k-1+(j-1)*lda] = t;
	movsd	xmm0, QWORD PTR [rbp-24]	# tmp283, t
	movsd	QWORD PTR [rax], xmm0	# *_98, tmp283
.L80:
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	mov	eax, DWORD PTR [rbp-12]	# tmp284, k
	movsx	rdx, eax	# _99, tmp284
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	mov	eax, DWORD PTR [rbp-8]	# tmp285, j
	sub	eax, 1	# _100,
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	imul	eax, DWORD PTR [rbp-44]	# _101, lda
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	cdqe
	add	rax, rdx	# _103, _99
	lea	rdx, [0+rax*8]	# _104,
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	mov	rax, QWORD PTR [rbp-40]	# tmp286, a
	add	rdx, rax	# _105, tmp286
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	mov	eax, DWORD PTR [rbp-12]	# tmp287, k
	movsx	rcx, eax	# _106, tmp287
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	mov	eax, DWORD PTR [rbp-12]	# tmp288, k
	sub	eax, 1	# _107,
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	imul	eax, DWORD PTR [rbp-44]	# _108, lda
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	cdqe
	add	rax, rcx	# _110, _106
	lea	rcx, [0+rax*8]	# _111,
# linpack.c:600:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, a+k+(j-1)*lda, 1 );
	mov	rax, QWORD PTR [rbp-40]	# tmp289, a
	lea	rsi, [rcx+rax]	# _112,
	mov	eax, DWORD PTR [rbp-48]	# tmp290, n
	sub	eax, DWORD PTR [rbp-12]	# _113, k
	mov	rdi, QWORD PTR [rbp-24]	# tmp291, t
	mov	r8d, 1	#,
	mov	rcx, rdx	#, _105
	mov	edx, 1	#,
	movq	xmm0, rdi	#, tmp291
	mov	edi, eax	#, _113
	call	daxpy	#
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	add	DWORD PTR [rbp-8], 1	# j,
.L79:
# linpack.c:592:     for ( j = k+1; j <= n; j++ )
	mov	eax, DWORD PTR [rbp-8]	# tmp292, j
	cmp	eax, DWORD PTR [rbp-48]	# tmp292, n
	jle	.L81	#,
.L77:
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	add	DWORD PTR [rbp-12], 1	# k,
.L74:
# linpack.c:559:   for ( k = 1; k <= n-1; k++ )
	mov	eax, DWORD PTR [rbp-48]	# tmp293, n
	cmp	eax, DWORD PTR [rbp-12]	# tmp293, k
	jg	.L82	#,
# linpack.c:605:   ipvt[n-1] = n;
	mov	eax, DWORD PTR [rbp-48]	# tmp294, n
	cdqe
	sal	rax, 2	# _115,
# linpack.c:605:   ipvt[n-1] = n;
	lea	rdx, [rax-4]	# _116,
# linpack.c:605:   ipvt[n-1] = n;
	mov	rax, QWORD PTR [rbp-56]	# tmp295, ipvt
	add	rdx, rax	# _117, tmp295
# linpack.c:605:   ipvt[n-1] = n;
	mov	eax, DWORD PTR [rbp-48]	# tmp296, n
	mov	DWORD PTR [rdx], eax	# *_117, tmp296
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	mov	eax, DWORD PTR [rbp-48]	# tmp297, n
	lea	edx, [rax-1]	# _118,
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	mov	eax, DWORD PTR [rbp-48]	# tmp298, n
	sub	eax, 1	# _119,
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	imul	eax, DWORD PTR [rbp-44]	# _120, lda
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	add	eax, edx	# _121, _118
	cdqe
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	lea	rdx, [0+rax*8]	# _123,
	mov	rax, QWORD PTR [rbp-40]	# tmp299, a
	add	rax, rdx	# _124, _123
	movsd	xmm0, QWORD PTR [rax]	# _125, *_124
# linpack.c:607:   if ( a[n-1+(n-1)*lda] == 0.0 )
	pxor	xmm1, xmm1	# tmp300
	ucomisd	xmm0, xmm1	# _125, tmp300
	jp	.L83	#,
	pxor	xmm1, xmm1	# tmp301
	ucomisd	xmm0, xmm1	# _125, tmp301
	jne	.L83	#,
# linpack.c:609:     info = n;
	mov	eax, DWORD PTR [rbp-48]	# tmp302, n
	mov	DWORD PTR [rbp-4], eax	# info, tmp302
.L83:
# linpack.c:612:   return info;
	mov	eax, DWORD PTR [rbp-4]	# _145, info
# linpack.c:613: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	dgefa, .-dgefa
	.globl	dgesl
	.type	dgesl, @function
dgesl:
.LFB11:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR [rbp-24], rdi	# a, a
	mov	DWORD PTR [rbp-28], esi	# lda, lda
	mov	DWORD PTR [rbp-32], edx	# n, n
	mov	QWORD PTR [rbp-40], rcx	# ipvt, ipvt
	mov	QWORD PTR [rbp-48], r8	# b, b
	mov	DWORD PTR [rbp-52], r9d	# job, job
# linpack.c:679:   if ( job == 0 )
	cmp	DWORD PTR [rbp-52], 0	# job,
	jne	.L89	#,
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	mov	DWORD PTR [rbp-4], 1	# k,
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	jmp	.L90	#
.L92:
# linpack.c:683:       l = ipvt[k-1];
	mov	eax, DWORD PTR [rbp-4]	# tmp227, k
	cdqe
	sal	rax, 2	# _2,
# linpack.c:683:       l = ipvt[k-1];
	lea	rdx, [rax-4]	# _3,
# linpack.c:683:       l = ipvt[k-1];
	mov	rax, QWORD PTR [rbp-40]	# tmp228, ipvt
	add	rax, rdx	# _4, _3
# linpack.c:683:       l = ipvt[k-1];
	mov	eax, DWORD PTR [rax]	# tmp229, *_4
	mov	DWORD PTR [rbp-8], eax	# l, tmp229
# linpack.c:684:       t = b[l-1];
	mov	eax, DWORD PTR [rbp-8]	# tmp230, l
	cdqe
	sal	rax, 3	# _6,
# linpack.c:684:       t = b[l-1];
	lea	rdx, [rax-8]	# _7,
# linpack.c:684:       t = b[l-1];
	mov	rax, QWORD PTR [rbp-48]	# tmp231, b
	add	rax, rdx	# _8, _7
# linpack.c:684:       t = b[l-1];
	movsd	xmm0, QWORD PTR [rax]	# tmp232, *_8
	movsd	QWORD PTR [rbp-16], xmm0	# t, tmp232
# linpack.c:686:       if ( l != k )
	mov	eax, DWORD PTR [rbp-8]	# tmp233, l
	cmp	eax, DWORD PTR [rbp-4]	# tmp233, k
	je	.L91	#,
# linpack.c:688:         b[l-1] = b[k-1];
	mov	eax, DWORD PTR [rbp-4]	# tmp234, k
	cdqe
	sal	rax, 3	# _10,
# linpack.c:688:         b[l-1] = b[k-1];
	lea	rdx, [rax-8]	# _11,
# linpack.c:688:         b[l-1] = b[k-1];
	mov	rax, QWORD PTR [rbp-48]	# tmp235, b
	add	rdx, rax	# _12, tmp235
# linpack.c:688:         b[l-1] = b[k-1];
	mov	eax, DWORD PTR [rbp-8]	# tmp236, l
	cdqe
	sal	rax, 3	# _14,
# linpack.c:688:         b[l-1] = b[k-1];
	lea	rcx, [rax-8]	# _15,
# linpack.c:688:         b[l-1] = b[k-1];
	mov	rax, QWORD PTR [rbp-48]	# tmp237, b
	add	rax, rcx	# _16, _15
# linpack.c:688:         b[l-1] = b[k-1];
	movsd	xmm0, QWORD PTR [rdx]	# _17, *_12
# linpack.c:688:         b[l-1] = b[k-1];
	movsd	QWORD PTR [rax], xmm0	# *_16, _17
# linpack.c:689:         b[k-1] = t;
	mov	eax, DWORD PTR [rbp-4]	# tmp238, k
	cdqe
	sal	rax, 3	# _19,
# linpack.c:689:         b[k-1] = t;
	lea	rdx, [rax-8]	# _20,
# linpack.c:689:         b[k-1] = t;
	mov	rax, QWORD PTR [rbp-48]	# tmp239, b
	add	rax, rdx	# _21, _20
# linpack.c:689:         b[k-1] = t;
	movsd	xmm0, QWORD PTR [rbp-16]	# tmp240, t
	movsd	QWORD PTR [rax], xmm0	# *_21, tmp240
.L91:
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	eax, DWORD PTR [rbp-4]	# tmp241, k
	cdqe
	lea	rdx, [0+rax*8]	# _23,
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	rax, QWORD PTR [rbp-48]	# tmp242, b
	add	rdx, rax	# _24, tmp242
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	eax, DWORD PTR [rbp-4]	# tmp243, k
	movsx	rcx, eax	# _25, tmp243
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	eax, DWORD PTR [rbp-4]	# tmp244, k
	sub	eax, 1	# _26,
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	imul	eax, DWORD PTR [rbp-28]	# _27, lda
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	cdqe
	add	rax, rcx	# _29, _25
	lea	rcx, [0+rax*8]	# _30,
# linpack.c:692:       daxpy ( n-k, t, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	rax, QWORD PTR [rbp-24]	# tmp245, a
	lea	rsi, [rcx+rax]	# _31,
	mov	eax, DWORD PTR [rbp-32]	# tmp246, n
	sub	eax, DWORD PTR [rbp-4]	# _32, k
	mov	rdi, QWORD PTR [rbp-16]	# tmp247, t
	mov	r8d, 1	#,
	mov	rcx, rdx	#, _24
	mov	edx, 1	#,
	movq	xmm0, rdi	#, tmp247
	mov	edi, eax	#, _32
	call	daxpy	#
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	add	DWORD PTR [rbp-4], 1	# k,
.L90:
# linpack.c:681:     for ( k = 1; k <= n-1; k++ )
	mov	eax, DWORD PTR [rbp-32]	# tmp248, n
	cmp	eax, DWORD PTR [rbp-4]	# tmp248, k
	jg	.L92	#,
# linpack.c:696:     for ( k = n; 1 <= k; k-- )
	mov	eax, DWORD PTR [rbp-32]	# tmp249, n
	mov	DWORD PTR [rbp-4], eax	# k, tmp249
# linpack.c:696:     for ( k = n; 1 <= k; k-- )
	jmp	.L93	#
.L94:
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-4]	# tmp250, k
	cdqe
	sal	rax, 3	# _34,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	lea	rdx, [rax-8]	# _35,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	rax, QWORD PTR [rbp-48]	# tmp251, b
	add	rax, rdx	# _36, _35
	movsd	xmm0, QWORD PTR [rax]	# _37, *_36
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-4]	# tmp252, k
	lea	edx, [rax-1]	# _38,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-4]	# tmp253, k
	sub	eax, 1	# _39,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	imul	eax, DWORD PTR [rbp-28]	# _40, lda
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	add	eax, edx	# _41, _38
	cdqe
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	lea	rdx, [0+rax*8]	# _43,
	mov	rax, QWORD PTR [rbp-24]	# tmp254, a
	add	rax, rdx	# _44, _43
	movsd	xmm1, QWORD PTR [rax]	# _45, *_44
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-4]	# tmp255, k
	cdqe
	sal	rax, 3	# _47,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	lea	rdx, [rax-8]	# _48,
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	mov	rax, QWORD PTR [rbp-48]	# tmp256, b
	add	rax, rdx	# _49, _48
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	divsd	xmm0, xmm1	# _50, _45
# linpack.c:698:       b[k-1] = b[k-1] / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [rax], xmm0	# *_49, _50
# linpack.c:699:       t = -b[k-1];
	mov	eax, DWORD PTR [rbp-4]	# tmp257, k
	cdqe
	sal	rax, 3	# _52,
# linpack.c:699:       t = -b[k-1];
	lea	rdx, [rax-8]	# _53,
# linpack.c:699:       t = -b[k-1];
	mov	rax, QWORD PTR [rbp-48]	# tmp258, b
	add	rax, rdx	# _54, _53
	movsd	xmm0, QWORD PTR [rax]	# _55, *_54
# linpack.c:699:       t = -b[k-1];
	movq	xmm1, QWORD PTR .LC14[rip]	# tmp260,
	xorpd	xmm0, xmm1	# t_164, tmp260
	movsd	QWORD PTR [rbp-16], xmm0	# t, t_164
# linpack.c:700:       daxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	mov	eax, DWORD PTR [rbp-4]	# tmp261, k
	sub	eax, 1	# _56,
# linpack.c:700:       daxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	imul	eax, DWORD PTR [rbp-28]	# _57, lda
	cdqe
# linpack.c:700:       daxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	lea	rdx, [0+rax*8]	# _59,
# linpack.c:700:       daxpy ( k-1, t, a+0+(k-1)*lda, 1, b, 1 );
	mov	rax, QWORD PTR [rbp-24]	# tmp262, a
	lea	rsi, [rdx+rax]	# _60,
	mov	eax, DWORD PTR [rbp-4]	# tmp263, k
	lea	edi, [rax-1]	# _61,
	mov	rdx, QWORD PTR [rbp-48]	# tmp264, b
	mov	rax, QWORD PTR [rbp-16]	# tmp265, t
	mov	r8d, 1	#,
	mov	rcx, rdx	#, tmp264
	mov	edx, 1	#,
	movq	xmm0, rax	#, tmp265
	call	daxpy	#
# linpack.c:696:     for ( k = n; 1 <= k; k-- )
	sub	DWORD PTR [rbp-4], 1	# k,
.L93:
# linpack.c:696:     for ( k = n; 1 <= k; k-- )
	cmp	DWORD PTR [rbp-4], 0	# k,
	jg	.L94	#,
# linpack.c:727:   return;
	jmp	.L88	#
.L89:
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	mov	DWORD PTR [rbp-4], 1	# k,
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	jmp	.L96	#
.L97:
# linpack.c:710:       t = ddot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	mov	eax, DWORD PTR [rbp-4]	# tmp266, k
	sub	eax, 1	# _62,
# linpack.c:710:       t = ddot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	imul	eax, DWORD PTR [rbp-28]	# _63, lda
	cdqe
# linpack.c:710:       t = ddot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	lea	rdx, [0+rax*8]	# _65,
# linpack.c:710:       t = ddot ( k-1, a+0+(k-1)*lda, 1, b, 1 );
	mov	rax, QWORD PTR [rbp-24]	# tmp267, a
	lea	rsi, [rdx+rax]	# _66,
	mov	eax, DWORD PTR [rbp-4]	# tmp268, k
	lea	edi, [rax-1]	# _67,
	mov	rax, QWORD PTR [rbp-48]	# tmp269, b
	mov	r8d, 1	#,
	mov	rcx, rax	#, tmp269
	mov	edx, 1	#,
	call	ddot	#
	movq	rax, xmm0	# tmp270,
	mov	QWORD PTR [rbp-16], rax	# t, tmp270
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-4]	# tmp271, k
	cdqe
	sal	rax, 3	# _69,
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	lea	rdx, [rax-8]	# _70,
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	mov	rax, QWORD PTR [rbp-48]	# tmp272, b
	add	rax, rdx	# _71, _70
	movsd	xmm0, QWORD PTR [rax]	# _72, *_71
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	subsd	xmm0, QWORD PTR [rbp-16]	# _73, t
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-4]	# tmp273, k
	lea	edx, [rax-1]	# _74,
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-4]	# tmp274, k
	sub	eax, 1	# _75,
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	imul	eax, DWORD PTR [rbp-28]	# _76, lda
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	add	eax, edx	# _77, _74
	cdqe
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	lea	rdx, [0+rax*8]	# _79,
	mov	rax, QWORD PTR [rbp-24]	# tmp275, a
	add	rax, rdx	# _80, _79
	movsd	xmm1, QWORD PTR [rax]	# _81, *_80
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	mov	eax, DWORD PTR [rbp-4]	# tmp276, k
	cdqe
	sal	rax, 3	# _83,
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	lea	rdx, [rax-8]	# _84,
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	mov	rax, QWORD PTR [rbp-48]	# tmp277, b
	add	rax, rdx	# _85, _84
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	divsd	xmm0, xmm1	# _86, _81
# linpack.c:711:       b[k-1] = ( b[k-1] - t ) / a[k-1+(k-1)*lda];
	movsd	QWORD PTR [rax], xmm0	# *_85, _86
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	add	DWORD PTR [rbp-4], 1	# k,
.L96:
# linpack.c:708:     for ( k = 1; k <= n; k++ )
	mov	eax, DWORD PTR [rbp-4]	# tmp278, k
	cmp	eax, DWORD PTR [rbp-32]	# tmp278, n
	jle	.L97	#,
# linpack.c:714:     for ( k = n-1; 1 <= k; k-- )
	mov	eax, DWORD PTR [rbp-32]	# tmp282, n
	sub	eax, 1	# k_145,
	mov	DWORD PTR [rbp-4], eax	# k, k_145
# linpack.c:714:     for ( k = n-1; 1 <= k; k-- )
	jmp	.L98	#
.L100:
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	eax, DWORD PTR [rbp-4]	# tmp283, k
	cdqe
	sal	rax, 3	# _88,
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	lea	rdx, [rax-8]	# _89,
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	rax, QWORD PTR [rbp-48]	# tmp284, b
	add	rax, rdx	# _90, _89
	movsd	xmm2, QWORD PTR [rax]	# _91, *_90
	movsd	QWORD PTR [rbp-64], xmm2	# %sfp, _91
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	eax, DWORD PTR [rbp-4]	# tmp285, k
	cdqe
	lea	rdx, [0+rax*8]	# _93,
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	rax, QWORD PTR [rbp-48]	# tmp286, b
	add	rdx, rax	# _94, tmp286
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	eax, DWORD PTR [rbp-4]	# tmp287, k
	movsx	rcx, eax	# _95, tmp287
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	eax, DWORD PTR [rbp-4]	# tmp288, k
	sub	eax, 1	# _96,
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	imul	eax, DWORD PTR [rbp-28]	# _97, lda
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	cdqe
	add	rax, rcx	# _99, _95
	lea	rcx, [0+rax*8]	# _100,
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	rax, QWORD PTR [rbp-24]	# tmp289, a
	lea	rsi, [rcx+rax]	# _101,
	mov	eax, DWORD PTR [rbp-32]	# tmp290, n
	sub	eax, DWORD PTR [rbp-4]	# _102, k
	mov	r8d, 1	#,
	mov	rcx, rdx	#, _94
	mov	edx, 1	#,
	mov	edi, eax	#, _102
	call	ddot	#
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	eax, DWORD PTR [rbp-4]	# tmp291, k
	cdqe
	sal	rax, 3	# _105,
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	lea	rdx, [rax-8]	# _106,
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	mov	rax, QWORD PTR [rbp-48]	# tmp292, b
	add	rax, rdx	# _107, _106
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	addsd	xmm0, QWORD PTR [rbp-64]	# _108, %sfp
# linpack.c:716:       b[k-1] = b[k-1] + ddot ( n-k, a+k+(k-1)*lda, 1, b+k, 1 );
	movsd	QWORD PTR [rax], xmm0	# *_107, _108
# linpack.c:717:       l = ipvt[k-1];
	mov	eax, DWORD PTR [rbp-4]	# tmp293, k
	cdqe
	sal	rax, 2	# _110,
# linpack.c:717:       l = ipvt[k-1];
	lea	rdx, [rax-4]	# _111,
# linpack.c:717:       l = ipvt[k-1];
	mov	rax, QWORD PTR [rbp-40]	# tmp294, ipvt
	add	rax, rdx	# _112, _111
# linpack.c:717:       l = ipvt[k-1];
	mov	eax, DWORD PTR [rax]	# tmp295, *_112
	mov	DWORD PTR [rbp-8], eax	# l, tmp295
# linpack.c:719:       if ( l != k )
	mov	eax, DWORD PTR [rbp-8]	# tmp296, l
	cmp	eax, DWORD PTR [rbp-4]	# tmp296, k
	je	.L99	#,
# linpack.c:721:         t = b[l-1];
	mov	eax, DWORD PTR [rbp-8]	# tmp297, l
	cdqe
	sal	rax, 3	# _114,
# linpack.c:721:         t = b[l-1];
	lea	rdx, [rax-8]	# _115,
# linpack.c:721:         t = b[l-1];
	mov	rax, QWORD PTR [rbp-48]	# tmp298, b
	add	rax, rdx	# _116, _115
# linpack.c:721:         t = b[l-1];
	movsd	xmm0, QWORD PTR [rax]	# tmp299, *_116
	movsd	QWORD PTR [rbp-16], xmm0	# t, tmp299
# linpack.c:722:         b[l-1] = b[k-1];
	mov	eax, DWORD PTR [rbp-4]	# tmp300, k
	cdqe
	sal	rax, 3	# _118,
# linpack.c:722:         b[l-1] = b[k-1];
	lea	rdx, [rax-8]	# _119,
# linpack.c:722:         b[l-1] = b[k-1];
	mov	rax, QWORD PTR [rbp-48]	# tmp301, b
	add	rdx, rax	# _120, tmp301
# linpack.c:722:         b[l-1] = b[k-1];
	mov	eax, DWORD PTR [rbp-8]	# tmp302, l
	cdqe
	sal	rax, 3	# _122,
# linpack.c:722:         b[l-1] = b[k-1];
	lea	rcx, [rax-8]	# _123,
# linpack.c:722:         b[l-1] = b[k-1];
	mov	rax, QWORD PTR [rbp-48]	# tmp303, b
	add	rax, rcx	# _124, _123
# linpack.c:722:         b[l-1] = b[k-1];
	movsd	xmm0, QWORD PTR [rdx]	# _125, *_120
# linpack.c:722:         b[l-1] = b[k-1];
	movsd	QWORD PTR [rax], xmm0	# *_124, _125
# linpack.c:723:         b[k-1] = t;
	mov	eax, DWORD PTR [rbp-4]	# tmp304, k
	cdqe
	sal	rax, 3	# _127,
# linpack.c:723:         b[k-1] = t;
	lea	rdx, [rax-8]	# _128,
# linpack.c:723:         b[k-1] = t;
	mov	rax, QWORD PTR [rbp-48]	# tmp305, b
	add	rax, rdx	# _129, _128
# linpack.c:723:         b[k-1] = t;
	movsd	xmm0, QWORD PTR [rbp-16]	# tmp306, t
	movsd	QWORD PTR [rax], xmm0	# *_129, tmp306
.L99:
# linpack.c:714:     for ( k = n-1; 1 <= k; k-- )
	sub	DWORD PTR [rbp-4], 1	# k,
.L98:
# linpack.c:714:     for ( k = n-1; 1 <= k; k-- )
	cmp	DWORD PTR [rbp-4], 0	# k,
	jg	.L100	#,
# linpack.c:727:   return;
	nop	
.L88:
# linpack.c:728: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	dgesl, .-dgesl
	.globl	dscal
	.type	dscal, @function
dscal:
.LFB12:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi	# n, n
	movsd	QWORD PTR [rbp-32], xmm0	# sa, sa
	mov	QWORD PTR [rbp-40], rsi	# x, x
	mov	DWORD PTR [rbp-24], edx	# incx, incx
# linpack.c:775:   if ( n <= 0 )
	cmp	DWORD PTR [rbp-20], 0	# n,
	jle	.L114	#,
# linpack.c:778:   else if ( incx == 1 )
	cmp	DWORD PTR [rbp-24], 1	# incx,
	jne	.L104	#,
# linpack.c:780:     m = n % 5;
	mov	edx, DWORD PTR [rbp-20]	# tmp164, n
	movsx	rax, edx	# tmp165, tmp164
	imul	rax, rax, 1717986919	# tmp166, tmp165,
	shr	rax, 32	# tmp167,
	mov	ecx, eax	# tmp168, tmp167
	sar	ecx	# tmp168
	mov	eax, edx	# tmp169, tmp164
	sar	eax, 31	# tmp169,
	sub	ecx, eax	# tmp163, tmp169
	mov	eax, ecx	# tmp170, tmp163
	sal	eax, 2	# tmp170,
	add	eax, ecx	# tmp170, tmp163
	sub	edx, eax	# m_86, tmp170
	mov	DWORD PTR [rbp-12], edx	# m, m_86
# linpack.c:782:     for ( i = 0; i < m; i++ )
	mov	DWORD PTR [rbp-4], 0	# i,
# linpack.c:782:     for ( i = 0; i < m; i++ )
	jmp	.L105	#
.L106:
# linpack.c:784:       x[i] = sa * x[i];
	mov	eax, DWORD PTR [rbp-4]	# tmp172, i
	cdqe
	lea	rdx, [0+rax*8]	# _2,
	mov	rax, QWORD PTR [rbp-40]	# tmp173, x
	add	rax, rdx	# _3, _2
	movsd	xmm0, QWORD PTR [rax]	# _4, *_3
# linpack.c:784:       x[i] = sa * x[i];
	mov	eax, DWORD PTR [rbp-4]	# tmp174, i
	cdqe
	lea	rdx, [0+rax*8]	# _6,
	mov	rax, QWORD PTR [rbp-40]	# tmp175, x
	add	rax, rdx	# _7, _6
# linpack.c:784:       x[i] = sa * x[i];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _8, sa
# linpack.c:784:       x[i] = sa * x[i];
	movsd	QWORD PTR [rax], xmm0	# *_7, _8
# linpack.c:782:     for ( i = 0; i < m; i++ )
	add	DWORD PTR [rbp-4], 1	# i,
.L105:
# linpack.c:782:     for ( i = 0; i < m; i++ )
	mov	eax, DWORD PTR [rbp-4]	# tmp176, i
	cmp	eax, DWORD PTR [rbp-12]	# tmp176, m
	jl	.L106	#,
# linpack.c:787:     for ( i = m; i < n; i = i + 5 )
	mov	eax, DWORD PTR [rbp-12]	# tmp177, m
	mov	DWORD PTR [rbp-4], eax	# i, tmp177
# linpack.c:787:     for ( i = m; i < n; i = i + 5 )
	jmp	.L107	#
.L108:
# linpack.c:789:       x[i]   = sa * x[i];
	mov	eax, DWORD PTR [rbp-4]	# tmp178, i
	cdqe
	lea	rdx, [0+rax*8]	# _10,
	mov	rax, QWORD PTR [rbp-40]	# tmp179, x
	add	rax, rdx	# _11, _10
	movsd	xmm0, QWORD PTR [rax]	# _12, *_11
# linpack.c:789:       x[i]   = sa * x[i];
	mov	eax, DWORD PTR [rbp-4]	# tmp180, i
	cdqe
	lea	rdx, [0+rax*8]	# _14,
	mov	rax, QWORD PTR [rbp-40]	# tmp181, x
	add	rax, rdx	# _15, _14
# linpack.c:789:       x[i]   = sa * x[i];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _16, sa
# linpack.c:789:       x[i]   = sa * x[i];
	movsd	QWORD PTR [rax], xmm0	# *_15, _16
# linpack.c:790:       x[i+1] = sa * x[i+1];
	mov	eax, DWORD PTR [rbp-4]	# tmp182, i
	cdqe
	add	rax, 1	# _18,
	lea	rdx, [0+rax*8]	# _19,
# linpack.c:790:       x[i+1] = sa * x[i+1];
	mov	rax, QWORD PTR [rbp-40]	# tmp183, x
	add	rax, rdx	# _20, _19
	movsd	xmm0, QWORD PTR [rax]	# _21, *_20
# linpack.c:790:       x[i+1] = sa * x[i+1];
	mov	eax, DWORD PTR [rbp-4]	# tmp184, i
	cdqe
	add	rax, 1	# _23,
	lea	rdx, [0+rax*8]	# _24,
# linpack.c:790:       x[i+1] = sa * x[i+1];
	mov	rax, QWORD PTR [rbp-40]	# tmp185, x
	add	rax, rdx	# _25, _24
# linpack.c:790:       x[i+1] = sa * x[i+1];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _26, sa
# linpack.c:790:       x[i+1] = sa * x[i+1];
	movsd	QWORD PTR [rax], xmm0	# *_25, _26
# linpack.c:791:       x[i+2] = sa * x[i+2];
	mov	eax, DWORD PTR [rbp-4]	# tmp186, i
	cdqe
	add	rax, 2	# _28,
	lea	rdx, [0+rax*8]	# _29,
# linpack.c:791:       x[i+2] = sa * x[i+2];
	mov	rax, QWORD PTR [rbp-40]	# tmp187, x
	add	rax, rdx	# _30, _29
	movsd	xmm0, QWORD PTR [rax]	# _31, *_30
# linpack.c:791:       x[i+2] = sa * x[i+2];
	mov	eax, DWORD PTR [rbp-4]	# tmp188, i
	cdqe
	add	rax, 2	# _33,
	lea	rdx, [0+rax*8]	# _34,
# linpack.c:791:       x[i+2] = sa * x[i+2];
	mov	rax, QWORD PTR [rbp-40]	# tmp189, x
	add	rax, rdx	# _35, _34
# linpack.c:791:       x[i+2] = sa * x[i+2];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _36, sa
# linpack.c:791:       x[i+2] = sa * x[i+2];
	movsd	QWORD PTR [rax], xmm0	# *_35, _36
# linpack.c:792:       x[i+3] = sa * x[i+3];
	mov	eax, DWORD PTR [rbp-4]	# tmp190, i
	cdqe
	add	rax, 3	# _38,
	lea	rdx, [0+rax*8]	# _39,
# linpack.c:792:       x[i+3] = sa * x[i+3];
	mov	rax, QWORD PTR [rbp-40]	# tmp191, x
	add	rax, rdx	# _40, _39
	movsd	xmm0, QWORD PTR [rax]	# _41, *_40
# linpack.c:792:       x[i+3] = sa * x[i+3];
	mov	eax, DWORD PTR [rbp-4]	# tmp192, i
	cdqe
	add	rax, 3	# _43,
	lea	rdx, [0+rax*8]	# _44,
# linpack.c:792:       x[i+3] = sa * x[i+3];
	mov	rax, QWORD PTR [rbp-40]	# tmp193, x
	add	rax, rdx	# _45, _44
# linpack.c:792:       x[i+3] = sa * x[i+3];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _46, sa
# linpack.c:792:       x[i+3] = sa * x[i+3];
	movsd	QWORD PTR [rax], xmm0	# *_45, _46
# linpack.c:793:       x[i+4] = sa * x[i+4];
	mov	eax, DWORD PTR [rbp-4]	# tmp194, i
	cdqe
	add	rax, 4	# _48,
	lea	rdx, [0+rax*8]	# _49,
# linpack.c:793:       x[i+4] = sa * x[i+4];
	mov	rax, QWORD PTR [rbp-40]	# tmp195, x
	add	rax, rdx	# _50, _49
	movsd	xmm0, QWORD PTR [rax]	# _51, *_50
# linpack.c:793:       x[i+4] = sa * x[i+4];
	mov	eax, DWORD PTR [rbp-4]	# tmp196, i
	cdqe
	add	rax, 4	# _53,
	lea	rdx, [0+rax*8]	# _54,
# linpack.c:793:       x[i+4] = sa * x[i+4];
	mov	rax, QWORD PTR [rbp-40]	# tmp197, x
	add	rax, rdx	# _55, _54
# linpack.c:793:       x[i+4] = sa * x[i+4];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _56, sa
# linpack.c:793:       x[i+4] = sa * x[i+4];
	movsd	QWORD PTR [rax], xmm0	# *_55, _56
# linpack.c:787:     for ( i = m; i < n; i = i + 5 )
	add	DWORD PTR [rbp-4], 5	# i,
.L107:
# linpack.c:787:     for ( i = m; i < n; i = i + 5 )
	mov	eax, DWORD PTR [rbp-4]	# tmp198, i
	cmp	eax, DWORD PTR [rbp-20]	# tmp198, n
	jl	.L108	#,
# linpack.c:813:   return;
	jmp	.L114	#
.L104:
# linpack.c:798:     if ( 0 <= incx )
	cmp	DWORD PTR [rbp-24], 0	# incx,
	js	.L109	#,
# linpack.c:800:       ix = 0;
	mov	DWORD PTR [rbp-8], 0	# ix,
	jmp	.L110	#
.L109:
# linpack.c:804:       ix = ( - n + 1 ) * incx;
	mov	eax, 1	# tmp199,
	sub	eax, DWORD PTR [rbp-20]	# _57, n
# linpack.c:804:       ix = ( - n + 1 ) * incx;
	mov	edx, DWORD PTR [rbp-24]	# tmp201, incx
	imul	eax, edx	# ix_78, tmp201
	mov	DWORD PTR [rbp-8], eax	# ix, ix_78
.L110:
# linpack.c:807:     for ( i = 0; i < n; i++ )
	mov	DWORD PTR [rbp-4], 0	# i,
# linpack.c:807:     for ( i = 0; i < n; i++ )
	jmp	.L111	#
.L112:
# linpack.c:809:       x[ix] = sa * x[ix];
	mov	eax, DWORD PTR [rbp-8]	# tmp202, ix
	cdqe
	lea	rdx, [0+rax*8]	# _59,
	mov	rax, QWORD PTR [rbp-40]	# tmp203, x
	add	rax, rdx	# _60, _59
	movsd	xmm0, QWORD PTR [rax]	# _61, *_60
# linpack.c:809:       x[ix] = sa * x[ix];
	mov	eax, DWORD PTR [rbp-8]	# tmp204, ix
	cdqe
	lea	rdx, [0+rax*8]	# _63,
	mov	rax, QWORD PTR [rbp-40]	# tmp205, x
	add	rax, rdx	# _64, _63
# linpack.c:809:       x[ix] = sa * x[ix];
	mulsd	xmm0, QWORD PTR [rbp-32]	# _65, sa
# linpack.c:809:       x[ix] = sa * x[ix];
	movsd	QWORD PTR [rax], xmm0	# *_64, _65
# linpack.c:810:       ix = ix + incx;
	mov	eax, DWORD PTR [rbp-24]	# tmp206, incx
	add	DWORD PTR [rbp-8], eax	# ix, tmp206
# linpack.c:807:     for ( i = 0; i < n; i++ )
	add	DWORD PTR [rbp-4], 1	# i,
.L111:
# linpack.c:807:     for ( i = 0; i < n; i++ )
	mov	eax, DWORD PTR [rbp-4]	# tmp207, i
	cmp	eax, DWORD PTR [rbp-20]	# tmp207, n
	jl	.L112	#,
# linpack.c:813:   return;
	nop	
.L114:
	nop	
# linpack.c:814: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	dscal, .-dscal
	.globl	idamax
	.type	idamax, @function
idamax:
.LFB13:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	DWORD PTR [rbp-36], edi	# n, n
	mov	QWORD PTR [rbp-48], rsi	# dx, dx
	mov	DWORD PTR [rbp-40], edx	# incx, incx
# linpack.c:867:   value = 0;
	mov	DWORD PTR [rbp-20], 0	# value,
# linpack.c:869:   if ( n < 1 || incx <= 0 )
	cmp	DWORD PTR [rbp-36], 0	# n,
	jle	.L116	#,
# linpack.c:869:   if ( n < 1 || incx <= 0 )
	cmp	DWORD PTR [rbp-40], 0	# incx,
	jg	.L117	#,
.L116:
# linpack.c:871:     return value;
	mov	eax, DWORD PTR [rbp-20]	# _33, value
	jmp	.L118	#
.L117:
# linpack.c:874:   value = 1;
	mov	DWORD PTR [rbp-20], 1	# value,
# linpack.c:876:   if ( n == 1 )
	cmp	DWORD PTR [rbp-36], 1	# n,
	jne	.L119	#,
# linpack.c:878:     return value;
	mov	eax, DWORD PTR [rbp-20]	# _33, value
	jmp	.L118	#
.L119:
# linpack.c:881:   if ( incx == 1 )
	cmp	DWORD PTR [rbp-40], 1	# incx,
	jne	.L120	#,
# linpack.c:883:     dmax = r8_abs ( dx[0] );
	mov	rax, QWORD PTR [rbp-48]	# tmp120, dx
	mov	rax, QWORD PTR [rax]	# _1, *dx_46(D)
	movq	xmm0, rax	#, _1
	call	r8_abs	#
	movq	rax, xmm0	# tmp121,
	mov	QWORD PTR [rbp-8], rax	# dmax, tmp121
# linpack.c:885:     for ( i = 1; i < n; i++ )
	mov	DWORD PTR [rbp-12], 1	# i,
# linpack.c:885:     for ( i = 1; i < n; i++ )
	jmp	.L121	#
.L124:
# linpack.c:887:       if ( dmax < r8_abs ( dx[i] ) )
	mov	eax, DWORD PTR [rbp-12]	# tmp122, i
	cdqe
	lea	rdx, [0+rax*8]	# _3,
	mov	rax, QWORD PTR [rbp-48]	# tmp123, dx
	add	rax, rdx	# _4, _3
# linpack.c:887:       if ( dmax < r8_abs ( dx[i] ) )
	mov	rax, QWORD PTR [rax]	# _5, *_4
	movq	xmm0, rax	#, _5
	call	r8_abs	#
	movq	rax, xmm0	# _6,
# linpack.c:887:       if ( dmax < r8_abs ( dx[i] ) )
	movq	xmm1, rax	# _6, _6
	comisd	xmm1, QWORD PTR [rbp-8]	# _6, dmax
	jbe	.L122	#,
# linpack.c:889:         value = i + 1;
	mov	eax, DWORD PTR [rbp-12]	# tmp127, i
	add	eax, 1	# value_61,
	mov	DWORD PTR [rbp-20], eax	# value, value_61
# linpack.c:890:         dmax = r8_abs ( dx[i] );
	mov	eax, DWORD PTR [rbp-12]	# tmp128, i
	cdqe
	lea	rdx, [0+rax*8]	# _8,
	mov	rax, QWORD PTR [rbp-48]	# tmp129, dx
	add	rax, rdx	# _9, _8
# linpack.c:890:         dmax = r8_abs ( dx[i] );
	mov	rax, QWORD PTR [rax]	# _10, *_9
	movq	xmm0, rax	#, _10
	call	r8_abs	#
	movq	rax, xmm0	# tmp130,
	mov	QWORD PTR [rbp-8], rax	# dmax, tmp130
.L122:
# linpack.c:885:     for ( i = 1; i < n; i++ )
	add	DWORD PTR [rbp-12], 1	# i,
.L121:
# linpack.c:885:     for ( i = 1; i < n; i++ )
	mov	eax, DWORD PTR [rbp-12]	# tmp131, i
	cmp	eax, DWORD PTR [rbp-36]	# tmp131, n
	jl	.L124	#,
	jmp	.L125	#
.L120:
# linpack.c:896:     ix = 0;
	mov	DWORD PTR [rbp-16], 0	# ix,
# linpack.c:897:     dmax = r8_abs ( dx[0] );
	mov	rax, QWORD PTR [rbp-48]	# tmp132, dx
	mov	rax, QWORD PTR [rax]	# _11, *dx_46(D)
	movq	xmm0, rax	#, _11
	call	r8_abs	#
	movq	rax, xmm0	# tmp133,
	mov	QWORD PTR [rbp-8], rax	# dmax, tmp133
# linpack.c:898:     ix = ix + incx;
	mov	eax, DWORD PTR [rbp-40]	# tmp134, incx
	add	DWORD PTR [rbp-16], eax	# ix, tmp134
# linpack.c:900:     for ( i = 1; i < n; i++ )
	mov	DWORD PTR [rbp-12], 1	# i,
# linpack.c:900:     for ( i = 1; i < n; i++ )
	jmp	.L126	#
.L129:
# linpack.c:902:       if ( dmax < r8_abs ( dx[ix] ) )
	mov	eax, DWORD PTR [rbp-16]	# tmp135, ix
	cdqe
	lea	rdx, [0+rax*8]	# _13,
	mov	rax, QWORD PTR [rbp-48]	# tmp136, dx
	add	rax, rdx	# _14, _13
# linpack.c:902:       if ( dmax < r8_abs ( dx[ix] ) )
	mov	rax, QWORD PTR [rax]	# _15, *_14
	movq	xmm0, rax	#, _15
	call	r8_abs	#
	movq	rax, xmm0	# _16,
# linpack.c:902:       if ( dmax < r8_abs ( dx[ix] ) )
	movq	xmm2, rax	# _16, _16
	comisd	xmm2, QWORD PTR [rbp-8]	# _16, dmax
	jbe	.L127	#,
# linpack.c:904:         value = i + 1;
	mov	eax, DWORD PTR [rbp-12]	# tmp140, i
	add	eax, 1	# value_52,
	mov	DWORD PTR [rbp-20], eax	# value, value_52
# linpack.c:905:         dmax = r8_abs ( dx[ix] );
	mov	eax, DWORD PTR [rbp-16]	# tmp141, ix
	cdqe
	lea	rdx, [0+rax*8]	# _18,
	mov	rax, QWORD PTR [rbp-48]	# tmp142, dx
	add	rax, rdx	# _19, _18
# linpack.c:905:         dmax = r8_abs ( dx[ix] );
	mov	rax, QWORD PTR [rax]	# _20, *_19
	movq	xmm0, rax	#, _20
	call	r8_abs	#
	movq	rax, xmm0	# tmp143,
	mov	QWORD PTR [rbp-8], rax	# dmax, tmp143
.L127:
# linpack.c:907:       ix = ix + incx;
	mov	eax, DWORD PTR [rbp-40]	# tmp144, incx
	add	DWORD PTR [rbp-16], eax	# ix, tmp144
# linpack.c:900:     for ( i = 1; i < n; i++ )
	add	DWORD PTR [rbp-12], 1	# i,
.L126:
# linpack.c:900:     for ( i = 1; i < n; i++ )
	mov	eax, DWORD PTR [rbp-12]	# tmp145, i
	cmp	eax, DWORD PTR [rbp-36]	# tmp145, n
	jl	.L129	#,
.L125:
# linpack.c:911:   return value;
	mov	eax, DWORD PTR [rbp-20]	# _33, value
.L118:
# linpack.c:912: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	idamax, .-idamax
	.globl	r8_abs
	.type	r8_abs, @function
r8_abs:
.LFB14:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-24], xmm0	# x, x
# linpack.c:940:   if ( 0.0 <= x )
	movsd	xmm0, QWORD PTR [rbp-24]	# tmp100, x
	pxor	xmm1, xmm1	# tmp101
	comisd	xmm0, xmm1	# tmp100, tmp101
	jb	.L138	#,
# linpack.c:942:     value = x;
	movsd	xmm0, QWORD PTR [rbp-24]	# tmp102, x
	movsd	QWORD PTR [rbp-8], xmm0	# value, tmp102
	jmp	.L135	#
.L138:
# linpack.c:946:     value = -x;
	movsd	xmm0, QWORD PTR [rbp-24]	# tmp104, x
	movq	xmm1, QWORD PTR .LC14[rip]	# tmp105,
	xorpd	xmm0, xmm1	# value_3, tmp105
	movsd	QWORD PTR [rbp-8], xmm0	# value, value_3
.L135:
# linpack.c:948:   return value;
	movsd	xmm0, QWORD PTR [rbp-8]	# _5, value
# linpack.c:949: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	r8_abs, .-r8_abs
	.globl	r8_epsilon
	.type	r8_epsilon, @function
r8_epsilon:
.LFB15:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# linpack.c:987:   r = 1.0;
	movsd	xmm0, QWORD PTR .LC10[rip]	# tmp101,
	movsd	QWORD PTR [rbp-8], xmm0	# r, tmp101
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	jmp	.L140	#
.L141:
# linpack.c:991:     r = r / 2.0;
	movsd	xmm0, QWORD PTR [rbp-8]	# tmp103, r
	movsd	xmm1, QWORD PTR .LC18[rip]	# tmp104,
	divsd	xmm0, xmm1	# r_7, tmp104
	movsd	QWORD PTR [rbp-8], xmm0	# r, r_7
.L140:
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	movsd	xmm1, QWORD PTR [rbp-8]	# tmp105, r
	movsd	xmm0, QWORD PTR .LC10[rip]	# tmp106,
	addsd	xmm0, xmm1	# _1, tmp105
# linpack.c:989:   while ( 1.0 < ( double ) ( 1.0 + r )  )
	movsd	xmm1, QWORD PTR .LC10[rip]	# tmp107,
	comisd	xmm0, xmm1	# _1, tmp107
	ja	.L141	#,
# linpack.c:993:   r = 2.0 * r;
	movsd	xmm0, QWORD PTR [rbp-8]	# tmp108, r
	addsd	xmm0, xmm0	# r_4, tmp108
	movsd	QWORD PTR [rbp-8], xmm0	# r, r_4
# linpack.c:995:   return r;
	movsd	xmm0, QWORD PTR [rbp-8]	# _5, r
# linpack.c:996: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	r8_epsilon, .-r8_epsilon
	.globl	r8_max
	.type	r8_max, @function
r8_max:
.LFB16:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	movsd	QWORD PTR [rbp-24], xmm0	# x, x
	movsd	QWORD PTR [rbp-32], xmm1	# y, y
# linpack.c:1024:   if ( y < x )
	movsd	xmm0, QWORD PTR [rbp-24]	# tmp100, x
	comisd	xmm0, QWORD PTR [rbp-32]	# tmp100, y
	jbe	.L149	#,
# linpack.c:1026:     value = x;
	movsd	xmm0, QWORD PTR [rbp-24]	# tmp101, x
	movsd	QWORD PTR [rbp-8], xmm0	# value, tmp101
	jmp	.L146	#
.L149:
# linpack.c:1030:     value = y;
	movsd	xmm0, QWORD PTR [rbp-32]	# tmp102, y
	movsd	QWORD PTR [rbp-8], xmm0	# value, tmp102
.L146:
# linpack.c:1032:   return value;
	movsd	xmm0, QWORD PTR [rbp-8]	# _6, value
# linpack.c:1033: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	r8_max, .-r8_max
	.globl	r8_random
	.type	r8_random, @function
r8_random:
.LFB17:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-72], rdi	# iseed, iseed
# linpack.c:1066:   int ipw2 = 4096;
	mov	DWORD PTR [rbp-4], 4096	# ipw2,
# linpack.c:1071:   int m1 = 494;
	mov	DWORD PTR [rbp-8], 494	# m1,
# linpack.c:1072:   int m2 = 322;
	mov	DWORD PTR [rbp-12], 322	# m2,
# linpack.c:1073:   int m3 = 2508;
	mov	DWORD PTR [rbp-16], 2508	# m3,
# linpack.c:1074:   int m4 = 2549;
	mov	DWORD PTR [rbp-20], 2549	# m4,
# linpack.c:1075:   double one = 1.0;
	movsd	xmm0, QWORD PTR .LC10[rip]	# tmp150,
	movsd	QWORD PTR [rbp-32], xmm0	# one, tmp150
# linpack.c:1076:   double r = 1.0 / 4096.0;
	movsd	xmm0, QWORD PTR .LC24[rip]	# tmp151,
	movsd	QWORD PTR [rbp-40], xmm0	# r, tmp151
# linpack.c:1081:   it4 = iseed[3] * m4;
	mov	rax, QWORD PTR [rbp-72]	# tmp152, iseed
	add	rax, 12	# _1,
	mov	eax, DWORD PTR [rax]	# _2, *_1
# linpack.c:1081:   it4 = iseed[3] * m4;
	mov	edx, DWORD PTR [rbp-20]	# tmp154, m4
	imul	eax, edx	# it4_60, tmp154
	mov	DWORD PTR [rbp-44], eax	# it4, it4_60
# linpack.c:1082:   it3 = it4 / ipw2;
	mov	eax, DWORD PTR [rbp-44]	# tmp158, it4
	cdq
	idiv	DWORD PTR [rbp-4]	# ipw2
	mov	DWORD PTR [rbp-48], eax	# it3, it3_61
# linpack.c:1083:   it4 = it4 - ipw2 * it3;
	mov	eax, DWORD PTR [rbp-4]	# tmp159, ipw2
	imul	eax, DWORD PTR [rbp-48]	# _3, it3
# linpack.c:1083:   it4 = it4 - ipw2 * it3;
	sub	DWORD PTR [rbp-44], eax	# it4, _3
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	mov	rax, QWORD PTR [rbp-72]	# tmp160, iseed
	add	rax, 8	# _4,
	mov	eax, DWORD PTR [rax]	# _5, *_4
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imul	eax, DWORD PTR [rbp-20]	# _5, m4
	mov	edx, eax	# _6, _5
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	mov	eax, DWORD PTR [rbp-48]	# tmp161, it3
	add	edx, eax	# _7, tmp161
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	mov	rax, QWORD PTR [rbp-72]	# tmp162, iseed
	add	rax, 12	# _8,
	mov	eax, DWORD PTR [rax]	# _9, *_8
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	imul	eax, DWORD PTR [rbp-16]	# _10, m3
# linpack.c:1084:   it3 = it3 + iseed[2] * m4 + iseed[3] * m3;
	add	eax, edx	# tmp163, _7
	mov	DWORD PTR [rbp-48], eax	# it3, tmp163
# linpack.c:1085:   it2 = it3 / ipw2;
	mov	eax, DWORD PTR [rbp-48]	# tmp167, it3
	cdq
	idiv	DWORD PTR [rbp-4]	# ipw2
	mov	DWORD PTR [rbp-52], eax	# it2, it2_64
# linpack.c:1086:   it3 = it3 - ipw2 * it2;
	mov	eax, DWORD PTR [rbp-4]	# tmp168, ipw2
	imul	eax, DWORD PTR [rbp-52]	# _11, it2
# linpack.c:1086:   it3 = it3 - ipw2 * it2;
	sub	DWORD PTR [rbp-48], eax	# it3, _11
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	mov	rax, QWORD PTR [rbp-72]	# tmp169, iseed
	add	rax, 4	# _12,
	mov	eax, DWORD PTR [rax]	# _13, *_12
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	eax, DWORD PTR [rbp-20]	# _13, m4
	mov	edx, eax	# _14, _13
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	mov	eax, DWORD PTR [rbp-52]	# tmp170, it2
	add	edx, eax	# _15, tmp170
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	mov	rax, QWORD PTR [rbp-72]	# tmp171, iseed
	add	rax, 8	# _16,
	mov	eax, DWORD PTR [rax]	# _17, *_16
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	eax, DWORD PTR [rbp-16]	# _18, m3
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	edx, eax	# _19, _18
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	mov	rax, QWORD PTR [rbp-72]	# tmp172, iseed
	add	rax, 12	# _20,
	mov	eax, DWORD PTR [rax]	# _21, *_20
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	imul	eax, DWORD PTR [rbp-12]	# _22, m2
# linpack.c:1087:   it2 = it2 + iseed[1] * m4 + iseed[2] * m3 + iseed[3] * m2;
	add	eax, edx	# tmp173, _19
	mov	DWORD PTR [rbp-52], eax	# it2, tmp173
# linpack.c:1088:   it1 = it2 / ipw2;
	mov	eax, DWORD PTR [rbp-52]	# tmp177, it2
	cdq
	idiv	DWORD PTR [rbp-4]	# ipw2
	mov	DWORD PTR [rbp-56], eax	# it1, it1_67
# linpack.c:1089:   it2 = it2 - ipw2 * it1;
	mov	eax, DWORD PTR [rbp-4]	# tmp178, ipw2
	imul	eax, DWORD PTR [rbp-56]	# _23, it1
# linpack.c:1089:   it2 = it2 - ipw2 * it1;
	sub	DWORD PTR [rbp-52], eax	# it2, _23
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	mov	rax, QWORD PTR [rbp-72]	# tmp179, iseed
	mov	eax, DWORD PTR [rax]	# _24, *iseed_58(D)
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	eax, DWORD PTR [rbp-20]	# _24, m4
	mov	edx, eax	# _25, _24
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	mov	eax, DWORD PTR [rbp-56]	# tmp180, it1
	add	edx, eax	# _26, tmp180
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	mov	rax, QWORD PTR [rbp-72]	# tmp181, iseed
	add	rax, 4	# _27,
	mov	eax, DWORD PTR [rax]	# _28, *_27
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	eax, DWORD PTR [rbp-16]	# _29, m3
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	edx, eax	# _30, _29
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	mov	rax, QWORD PTR [rbp-72]	# tmp182, iseed
	add	rax, 8	# _31,
	mov	eax, DWORD PTR [rax]	# _32, *_31
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	eax, DWORD PTR [rbp-12]	# _33, m2
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	edx, eax	# _34, _33
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	mov	rax, QWORD PTR [rbp-72]	# tmp183, iseed
	add	rax, 12	# _35,
	mov	eax, DWORD PTR [rax]	# _36, *_35
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	imul	eax, DWORD PTR [rbp-8]	# _37, m1
# linpack.c:1090:   it1 = it1 + iseed[0] * m4 + iseed[1] * m3 + iseed[2] * m2 + iseed[3] * m1;
	add	eax, edx	# tmp184, _34
	mov	DWORD PTR [rbp-56], eax	# it1, tmp184
# linpack.c:1091:   it1 = ( it1 % ipw2 );
	mov	eax, DWORD PTR [rbp-56]	# tmp186, it1
	cdq
	idiv	DWORD PTR [rbp-4]	# ipw2
	mov	DWORD PTR [rbp-56], edx	# it1, it1_70
# linpack.c:1095:   iseed[0] = it1;
	mov	rax, QWORD PTR [rbp-72]	# tmp189, iseed
	mov	edx, DWORD PTR [rbp-56]	# tmp190, it1
	mov	DWORD PTR [rax], edx	# *iseed_58(D), tmp190
# linpack.c:1096:   iseed[1] = it2;
	mov	rax, QWORD PTR [rbp-72]	# tmp191, iseed
	lea	rdx, [rax+4]	# _38,
# linpack.c:1096:   iseed[1] = it2;
	mov	eax, DWORD PTR [rbp-52]	# tmp192, it2
	mov	DWORD PTR [rdx], eax	# *_38, tmp192
# linpack.c:1097:   iseed[2] = it3;
	mov	rax, QWORD PTR [rbp-72]	# tmp193, iseed
	lea	rdx, [rax+8]	# _39,
# linpack.c:1097:   iseed[2] = it3;
	mov	eax, DWORD PTR [rbp-48]	# tmp194, it3
	mov	DWORD PTR [rdx], eax	# *_39, tmp194
# linpack.c:1098:   iseed[3] = it4;
	mov	rax, QWORD PTR [rbp-72]	# tmp195, iseed
	lea	rdx, [rax+12]	# _40,
# linpack.c:1098:   iseed[3] = it4;
	mov	eax, DWORD PTR [rbp-44]	# tmp196, it4
	mov	DWORD PTR [rdx], eax	# *_40, tmp196
# linpack.c:1103:       r * ( ( double ) ( it1 ) 
	pxor	xmm1, xmm1	# _41
	cvtsi2sd	xmm1, DWORD PTR [rbp-56]	# _41, it1
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	pxor	xmm2, xmm2	# _42
	cvtsi2sd	xmm2, DWORD PTR [rbp-52]	# _42, it2
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	pxor	xmm3, xmm3	# _43
	cvtsi2sd	xmm3, DWORD PTR [rbp-48]	# _43, it3
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	pxor	xmm0, xmm0	# _44
	cvtsi2sd	xmm0, DWORD PTR [rbp-44]	# _44, it4
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	mulsd	xmm0, QWORD PTR [rbp-40]	# _45, r
# linpack.c:1106:     + r * ( ( double ) ( it4 ) ) ) ) );
	addsd	xmm0, xmm3	# _46, _43
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	mulsd	xmm0, QWORD PTR [rbp-40]	# _47, r
# linpack.c:1105:     + r * ( ( double ) ( it3 ) 
	addsd	xmm0, xmm2	# _48, _42
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	mulsd	xmm0, QWORD PTR [rbp-40]	# _49, r
# linpack.c:1104:     + r * ( ( double ) ( it2 ) 
	addsd	xmm0, xmm1	# _50, _41
# linpack.c:1102:   value = 
	movsd	xmm1, QWORD PTR [rbp-40]	# tmp198, r
	mulsd	xmm0, xmm1	# value_75, tmp198
	movsd	QWORD PTR [rbp-64], xmm0	# value, value_75
# linpack.c:1108:   return value;
	movsd	xmm0, QWORD PTR [rbp-64]	# _76, value
# linpack.c:1109: }
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	r8_random, .-r8_random
	.globl	r8mat_gen
	.type	r8mat_gen, @function
r8mat_gen:
.LFB18:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	DWORD PTR [rbp-36], edi	# lda, lda
	mov	DWORD PTR [rbp-40], esi	# n, n
# linpack.c:1135:   int init[4] = { 1, 2, 3, 1325 };
	mov	DWORD PTR [rbp-32], 1	# init[0],
	mov	DWORD PTR [rbp-28], 2	# init[1],
	mov	DWORD PTR [rbp-24], 3	# init[2],
	mov	DWORD PTR [rbp-20], 1325	# init[3],
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	mov	eax, DWORD PTR [rbp-36]	# tmp112, lda
	imul	eax, DWORD PTR [rbp-40]	# _1, n
	cdqe
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	sal	rax, 3	# _3,
# linpack.c:1138:   a = ( double * ) malloc ( lda * n * sizeof ( double ) );
	mov	rdi, rax	#, _3
	call	malloc	#
	mov	QWORD PTR [rbp-16], rax	# a, tmp113
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	mov	DWORD PTR [rbp-8], 1	# j,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	jmp	.L153	#
.L156:
# linpack.c:1142:     for ( i = 1; i <= n; i++ )
	mov	DWORD PTR [rbp-4], 1	# i,
# linpack.c:1142:     for ( i = 1; i <= n; i++ )
	jmp	.L154	#
.L155:
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	lea	rax, [rbp-32]	# tmp114,
	mov	rdi, rax	#, tmp114
	call	r8_random	#
	movq	rax, xmm0	# _4,
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	mov	edx, DWORD PTR [rbp-4]	# tmp115, i
	lea	ecx, [rdx-1]	# _5,
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	mov	edx, DWORD PTR [rbp-8]	# tmp116, j
	sub	edx, 1	# _6,
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	imul	edx, DWORD PTR [rbp-36]	# _7, lda
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	add	edx, ecx	# _8, _5
	movsx	rdx, edx	# _9, _8
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	lea	rcx, [0+rdx*8]	# _10,
	mov	rdx, QWORD PTR [rbp-16]	# tmp117, a
	add	rdx, rcx	# _11, _10
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	movsd	xmm1, QWORD PTR .LC25[rip]	# tmp118,
	movq	xmm0, rax	# _4, _4
	subsd	xmm0, xmm1	# _4, tmp118
# linpack.c:1144:       a[i-1+(j-1)*lda] = r8_random ( init ) - 0.5;
	movsd	QWORD PTR [rdx], xmm0	# *_11, _12
# linpack.c:1142:     for ( i = 1; i <= n; i++ )
	add	DWORD PTR [rbp-4], 1	# i,
.L154:
# linpack.c:1142:     for ( i = 1; i <= n; i++ )
	mov	eax, DWORD PTR [rbp-4]	# tmp119, i
	cmp	eax, DWORD PTR [rbp-40]	# tmp119, n
	jle	.L155	#,
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	add	DWORD PTR [rbp-8], 1	# j,
.L153:
# linpack.c:1140:   for ( j = 1; j <= n; j++ )
	mov	eax, DWORD PTR [rbp-8]	# tmp120, j
	cmp	eax, DWORD PTR [rbp-40]	# tmp120, n
	jle	.L156	#,
# linpack.c:1148:   return a;
	mov	rax, QWORD PTR [rbp-16]	# _27, a
# linpack.c:1149: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	r8mat_gen, .-r8mat_gen
	.section	.rodata
.LC26:
	.string	"%d %B %Y %I:%M:%S %p"
	.text
	.globl	timestamp
	.type	timestamp, @function
timestamp:
.LFB19:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
# linpack.c:1188:   now = time ( NULL );
	mov	edi, 0	#,
	call	time	#
# linpack.c:1188:   now = time ( NULL );
	mov	QWORD PTR [rbp-24], rax	# now, _1
# linpack.c:1189:   tm = localtime ( &now );
	lea	rax, [rbp-24]	# tmp99,
	mov	rdi, rax	#, tmp99
	call	localtime	#
	mov	QWORD PTR [rbp-8], rax	# tm, tmp100
# linpack.c:1191:   len = strftime ( time_buffer, TIME_SIZE, "%d %B %Y %I:%M:%S %p", tm );
	mov	rax, QWORD PTR [rbp-8]	# tmp101, tm
	mov	rcx, rax	#, tmp101
	mov	edx, OFFSET FLAT:.LC26	#,
	mov	esi, 40	#,
	mov	edi, OFFSET FLAT:time_buffer.0	#,
	call	strftime	#
	mov	QWORD PTR [rbp-16], rax	# len, tmp102
# linpack.c:1193:   printf ( "%s\n", time_buffer );
	mov	edi, OFFSET FLAT:time_buffer.0	#,
	call	puts	#
# linpack.c:1195:   return;
	nop	
# linpack.c:1197: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	timestamp, .-timestamp
	.local	time_buffer.0
	.comm	time_buffer.0,40,32
	.section	.rodata
	.align 8
.LC0:
	.long	824633721
	.long	1068280840
	.align 8
.LC8:
	.long	-1789569707
	.long	1103359365
	.align 8
.LC10:
	.long	0
	.long	1072693248
	.align 16
.LC14:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC15:
	.long	0
	.long	1083129856
	.align 8
.LC16:
	.long	0
	.long	1093567616
	.align 8
.LC17:
	.long	0
	.long	-1074790400
	.align 8
.LC18:
	.long	0
	.long	1073741824
	.align 8
.LC24:
	.long	0
	.long	1060110336
	.align 8
.LC25:
	.long	0
	.long	1071644672
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
