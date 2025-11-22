	.text
	.file	"dry.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function main
.LCPI0_0:
	.long	0x42c80000                      #  100
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	0x412e848000000000              #  1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$2, -8(%rbp)
	jle	.LBB0_2
# %bb.1:
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	callq	exit
.LBB0_2:
	cmpl	$2, -8(%rbp)
	jne	.LBB0_4
# %bb.3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, -120(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	$50000, -120(%rbp)              # imm = 0xC350
.LBB0_5:
	cmpl	$0, -120(%rbp)
	jg	.LBB0_7
# %bb.6:
	movl	$50000, -120(%rbp)              # imm = 0xC350
.LBB0_7:
	movl	$56, %edi
	callq	malloc
	movq	%rax, Next_Ptr_Glob
	movl	$56, %edi
	callq	malloc
	movq	%rax, Ptr_Glob
	movq	Next_Ptr_Glob, %rcx
	movq	Ptr_Glob, %rax
	movq	%rcx, (%rax)
	movq	Ptr_Glob, %rax
	movl	$0, 8(%rax)
	movq	Ptr_Glob, %rax
	movl	$2, 12(%rax)
	movq	Ptr_Glob, %rax
	movl	$40, 16(%rax)
	movq	Ptr_Glob, %rdi
	addq	$12, %rdi
	addq	$8, %rdi
	movl	$.L.str.1, %esi
	callq	strcpy
	leaq	-80(%rbp), %rdi
	movl	$.L.str.2, %esi
	callq	strcpy
	movl	$10, Arr_2_Glob+1628
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.5, %rsi
	movb	$0, %al
	callq	printf
	cmpl	$0, Reg
	je	.LBB0_9
# %bb.8:
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf
	jmp	.LBB0_10
.LBB0_9:
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
.LBB0_10:
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.9, %rsi
	movl	$100, %edx
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, Done
.LBB0_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_13 Depth 2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_18 Depth 3
	cmpl	$0, Done
	setne	%al
	xorb	$-1, %al
	testb	$1, %al
	jne	.LBB0_12
	jmp	.LBB0_29
.LBB0_12:                               #   in Loop: Header=BB0_11 Depth=1
	movl	-120(%rbp), %esi
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$time_info, %rdi
	callq	times
	movq	time_info, %rax
	movq	%rax, Begin_Time
	movl	$1, -116(%rbp)
.LBB0_13:                               #   Parent Loop BB0_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_15 Depth 3
                                        #       Child Loop BB0_18 Depth 3
	movl	-116(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jg	.LBB0_25
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=2
	callq	Proc_5
	callq	Proc_4
	movl	$2, -20(%rbp)
	movl	$3, -24(%rbp)
	leaq	-112(%rbp), %rdi
	movl	$.L.str.11, %esi
	callq	strcpy
	movl	$1, -36(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	callq	Func_2
	cmpl	$0, %eax
	setne	%al
	xorb	$-1, %al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, Bool_Glob
.LBB0_15:                               #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=3
	imull	$5, -20(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	leaq	-28(%rbp), %rdx
	callq	Proc_7
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB0_15
.LBB0_17:                               #   in Loop: Header=BB0_13 Depth=2
	movl	-20(%rbp), %edx
	movl	-28(%rbp), %ecx
	movabsq	$Arr_1_Glob, %rdi
	movabsq	$Arr_2_Glob, %rsi
	callq	Proc_8
	movq	Ptr_Glob, %rdi
	callq	Proc_1
	movb	$65, -29(%rbp)
.LBB0_18:                               #   Parent Loop BB0_11 Depth=1
                                        #     Parent Loop BB0_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsbl	-29(%rbp), %eax
	movsbl	Ch_2_Glob, %ecx
	cmpl	%ecx, %eax
	jg	.LBB0_23
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=3
	movl	-36(%rbp), %eax
	movl	%eax, -124(%rbp)                # 4-byte Spill
	movl	$67, %esi
	movsbl	-29(%rbp), %edi
	callq	Func_1
	movl	%eax, %ecx
	movl	-124(%rbp), %eax                # 4-byte Reload
	cmpl	%ecx, %eax
	jne	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=3
	xorl	%edi, %edi
	leaq	-36(%rbp), %rsi
	callq	Proc_6
	leaq	-112(%rbp), %rdi
	movl	$.L.str.12, %esi
	callq	strcpy
	movl	-116(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-116(%rbp), %eax
	movl	%eax, Int_Glob
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=3
	jmp	.LBB0_22
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=3
	movb	-29(%rbp), %al
	addb	$1, %al
	movb	%al, -29(%rbp)
	jmp	.LBB0_18
.LBB0_23:                               #   in Loop: Header=BB0_13 Depth=2
	movl	-24(%rbp), %eax
	imull	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -20(%rbp)
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	imull	$7, %eax, %eax
	subl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
	leaq	-20(%rbp), %rdi
	callq	Proc_2
# %bb.24:                               #   in Loop: Header=BB0_13 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	.LBB0_13
.LBB0_25:                               #   in Loop: Header=BB0_11 Depth=1
	movabsq	$time_info, %rdi
	callq	times
	movq	time_info, %rax
	movq	%rax, End_Time
	movq	End_Time, %rax
	subq	Begin_Time, %rax
	movq	%rax, User_Time
	cmpq	$200, User_Time
	jge	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_11 Depth=1
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	printf
	imull	$10, -120(%rbp), %eax
	movl	%eax, -120(%rbp)
	jmp	.LBB0_28
.LBB0_27:                               #   in Loop: Header=BB0_11 Depth=1
	movl	$1, Done
.LBB0_28:                               #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_11
.LBB0_29:
	movq	stderr, %rdi
	movabsq	$.L.str.14, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.3, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movl	Int_Glob, %edx
	movabsq	$.L.str.15, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$5, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movl	Bool_Glob, %edx
	movabsq	$.L.str.17, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$1, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movsbl	Ch_1_Glob, %edx
	movabsq	$.L.str.18, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.19, %rsi
	movl	$65, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movsbl	Ch_2_Glob, %edx
	movabsq	$.L.str.20, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.19, %rsi
	movl	$66, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movl	Arr_1_Glob+32, %edx
	movabsq	$.L.str.21, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$7, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movl	Arr_2_Glob+1628, %edx
	movabsq	$.L.str.22, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.23, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.24, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	Ptr_Glob, %rax
	movq	(%rax), %rdx
	movabsq	$.L.str.25, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.26, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	Ptr_Glob, %rax
	movl	8(%rax), %edx
	movabsq	$.L.str.27, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	xorl	%edx, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	Ptr_Glob, %rax
	movl	12(%rax), %edx
	movabsq	$.L.str.28, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$2, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	Ptr_Glob, %rax
	movl	16(%rax), %edx
	movabsq	$.L.str.29, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$17, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	Ptr_Glob, %rdx
	addq	$12, %rdx
	addq	$8, %rdx
	movabsq	$.L.str.30, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.31, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.32, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	Next_Ptr_Glob, %rax
	movq	(%rax), %rdx
	movabsq	$.L.str.25, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.33, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	Next_Ptr_Glob, %rax
	movl	8(%rax), %edx
	movabsq	$.L.str.27, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	xorl	%edx, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	Next_Ptr_Glob, %rax
	movl	12(%rax), %edx
	movabsq	$.L.str.28, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$1, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	Next_Ptr_Glob, %rax
	movl	16(%rax), %edx
	movabsq	$.L.str.29, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$18, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movq	Next_Ptr_Glob, %rdx
	addq	$12, %rdx
	addq	$8, %rdx
	movabsq	$.L.str.30, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.31, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movl	-20(%rbp), %edx
	movabsq	$.L.str.34, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$5, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movl	-24(%rbp), %edx
	movabsq	$.L.str.35, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$13, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movl	-28(%rbp), %edx
	movabsq	$.L.str.36, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$7, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movl	-36(%rbp), %edx
	movabsq	$.L.str.37, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.16, %rsi
	movl	$1, %edx
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	leaq	-80(%rbp), %rdx
	movabsq	$.L.str.38, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.39, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	leaq	-112(%rbp), %rdx
	movabsq	$.L.str.40, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.41, %rsi
	movb	$0, %al
	callq	fprintf
	movq	stderr, %rdi
	movabsq	$.L.str.3, %rsi
	movb	$0, %al
	callq	fprintf
	cvtsi2ssq	User_Time, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsi2ssl	-120(%rbp), %xmm2
	movss	.LCPI0_0(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, Microseconds
	cvtsi2ssl	-120(%rbp), %xmm1
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	cvtsi2ssq	User_Time, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, Dhrystones_Per_Second
	movabsq	$.L.str.42, %rdi
	movb	$0, %al
	callq	printf
	movss	Microseconds, %xmm0             # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.43, %rdi
	movb	$1, %al
	callq	printf
	movabsq	$.L.str.44, %rdi
	movb	$0, %al
	callq	printf
	movss	Dhrystones_Per_Second, %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movabsq	$.L.str.45, %rdi
	movb	$1, %al
	callq	printf
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	Proc_5                          # -- Begin function Proc_5
	.p2align	4, 0x90
	.type	Proc_5,@function
Proc_5:                                 # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movb	$65, Ch_1_Glob
	movl	$0, Bool_Glob
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	Proc_5, .Lfunc_end1-Proc_5
	.cfi_endproc
                                        # -- End function
	.globl	Proc_4                          # -- Begin function Proc_4
	.p2align	4, 0x90
	.type	Proc_4,@function
Proc_4:                                 # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsbl	Ch_1_Glob, %eax
	cmpl	$65, %eax
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	orl	Bool_Glob, %eax
	movl	%eax, Bool_Glob
	movb	$66, Ch_2_Glob
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	Proc_4, .Lfunc_end2-Proc_4
	.cfi_endproc
                                        # -- End function
	.globl	Proc_1                          # -- Begin function Proc_1
	.p2align	4, 0x90
	.type	Proc_1,@function
Proc_1:                                 # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	Ptr_Glob, %rsi
	movl	$56, %edx
	callq	memcpy@PLT
	movq	-8(%rbp), %rax
	movl	$5, 16(%rax)
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rdi
	callq	Proc_3
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB3_2
# %bb.1:
	movq	-16(%rbp), %rax
	movl	$6, 16(%rax)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	movq	-16(%rbp), %rsi
	addq	$12, %rsi
	callq	Proc_6
	movq	Ptr_Glob, %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movl	16(%rax), %edi
	movq	-16(%rbp), %rdx
	addq	$12, %rdx
	addq	$4, %rdx
	movl	$10, %esi
	callq	Proc_7
	jmp	.LBB3_3
.LBB3_2:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	(%rax), %rsi
	movl	$56, %edx
	callq	memcpy@PLT
.LBB3_3:
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	Proc_1, .Lfunc_end3-Proc_1
	.cfi_endproc
                                        # -- End function
	.globl	Proc_2                          # -- Begin function Proc_2
	.p2align	4, 0x90
	.type	Proc_2,@function
Proc_2:                                 # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	$10, %eax
	movl	%eax, -12(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movsbl	Ch_1_Glob, %eax
	cmpl	$65, %eax
	jne	.LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %ecx
	subl	Int_Glob, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movl	$0, -16(%rbp)
.LBB4_3:                                #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_4
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB4_1
# %bb.5:
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	Proc_2, .Lfunc_end4-Proc_2
	.cfi_endproc
                                        # -- End function
	.globl	Proc_3                          # -- Begin function Proc_3
	.p2align	4, 0x90
	.type	Proc_3,@function
Proc_3:                                 # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, Ptr_Glob
	je	.LBB5_2
# %bb.1:
	movq	Ptr_Glob, %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, (%rax)
.LBB5_2:
	movl	Int_Glob, %esi
	movq	Ptr_Glob, %rdx
	addq	$12, %rdx
	addq	$4, %rdx
	movl	$10, %edi
	callq	Proc_7
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	Proc_3, .Lfunc_end5-Proc_3
	.cfi_endproc
                                        # -- End function
	.type	Reg,@object                     # 
	.bss
	.globl	Reg
	.p2align	2
Reg:
	.long	0                               # 0x0
	.size	Reg, 4

	.type	.L.str,@object                  # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: %s [number of loops]\n"
	.size	.L.str, 29

	.type	Next_Ptr_Glob,@object           # 
	.bss
	.globl	Next_Ptr_Glob
	.p2align	3
Next_Ptr_Glob:
	.quad	0
	.size	Next_Ptr_Glob, 8

	.type	Ptr_Glob,@object                # 
	.globl	Ptr_Glob
	.p2align	3
Ptr_Glob:
	.quad	0
	.size	Ptr_Glob, 8

	.type	.L.str.1,@object                # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"DHRYSTONE PROGRAM, SOME STRING"
	.size	.L.str.1, 31

	.type	.L.str.2,@object                # 
.L.str.2:
	.asciz	"DHRYSTONE PROGRAM, 1'ST STRING"
	.size	.L.str.2, 31

	.type	Arr_2_Glob,@object              # 
	.bss
	.globl	Arr_2_Glob
	.p2align	4
Arr_2_Glob:
	.zero	10000
	.size	Arr_2_Glob, 10000

	.type	.L.str.3,@object                # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.type	.L.str.4,@object                # 
.L.str.4:
	.asciz	"Dhrystone Benchmark, Version %s\n"
	.size	.L.str.4, 33

	.type	.L.str.5,@object                # 
.L.str.5:
	.asciz	"C, Version 2.2a"
	.size	.L.str.5, 16

	.type	.L.str.6,@object                # 
.L.str.6:
	.asciz	"Program compiled with 'register' attribute\n"
	.size	.L.str.6, 44

	.type	.L.str.7,@object                # 
.L.str.7:
	.asciz	"Program compiled without 'register' attribute\n"
	.size	.L.str.7, 47

	.type	.L.str.8,@object                # 
.L.str.8:
	.asciz	"Using %s, HZ=%d\n"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # 
.L.str.9:
	.asciz	"times()"
	.size	.L.str.9, 8

	.type	Done,@object                    # 
	.bss
	.globl	Done
	.p2align	2
Done:
	.long	0                               # 0x0
	.size	Done, 4

	.type	.L.str.10,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Trying %d runs: "
	.size	.L.str.10, 17

	.type	time_info,@object               # 
	.bss
	.globl	time_info
	.p2align	3
time_info:
	.zero	32
	.size	time_info, 32

	.type	Begin_Time,@object              # 
	.globl	Begin_Time
	.p2align	3
Begin_Time:
	.quad	0                               # 0x0
	.size	Begin_Time, 8

	.type	.L.str.11,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"DHRYSTONE PROGRAM, 2'ND STRING"
	.size	.L.str.11, 31

	.type	Bool_Glob,@object               # 
	.bss
	.globl	Bool_Glob
	.p2align	2
Bool_Glob:
	.long	0                               # 0x0
	.size	Bool_Glob, 4

	.type	Arr_1_Glob,@object              # 
	.globl	Arr_1_Glob
	.p2align	4
Arr_1_Glob:
	.zero	200
	.size	Arr_1_Glob, 200

	.type	Ch_2_Glob,@object               # 
	.globl	Ch_2_Glob
Ch_2_Glob:
	.byte	0                               # 0x0
	.size	Ch_2_Glob, 1

	.type	.L.str.12,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.12:
	.asciz	"DHRYSTONE PROGRAM, 3'RD STRING"
	.size	.L.str.12, 31

	.type	Int_Glob,@object                # 
	.bss
	.globl	Int_Glob
	.p2align	2
Int_Glob:
	.long	0                               # 0x0
	.size	Int_Glob, 4

	.type	End_Time,@object                # 
	.globl	End_Time
	.p2align	3
End_Time:
	.quad	0                               # 0x0
	.size	End_Time, 8

	.type	User_Time,@object               # 
	.globl	User_Time
	.p2align	3
User_Time:
	.quad	0                               # 0x0
	.size	User_Time, 8

	.type	.L.str.13,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.13:
	.asciz	"too few\n"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # 
.L.str.14:
	.asciz	"Final values of the variables used in the benchmark:\n"
	.size	.L.str.14, 54

	.type	.L.str.15,@object               # 
.L.str.15:
	.asciz	"Int_Glob:            %d\n"
	.size	.L.str.15, 25

	.type	.L.str.16,@object               # 
.L.str.16:
	.asciz	"        should be:   %d\n"
	.size	.L.str.16, 25

	.type	.L.str.17,@object               # 
.L.str.17:
	.asciz	"Bool_Glob:           %d\n"
	.size	.L.str.17, 25

	.type	.L.str.18,@object               # 
.L.str.18:
	.asciz	"Ch_1_Glob:           %c\n"
	.size	.L.str.18, 25

	.type	Ch_1_Glob,@object               # 
	.bss
	.globl	Ch_1_Glob
Ch_1_Glob:
	.byte	0                               # 0x0
	.size	Ch_1_Glob, 1

	.type	.L.str.19,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"        should be:   %c\n"
	.size	.L.str.19, 25

	.type	.L.str.20,@object               # 
.L.str.20:
	.asciz	"Ch_2_Glob:           %c\n"
	.size	.L.str.20, 25

	.type	.L.str.21,@object               # 
.L.str.21:
	.asciz	"Arr_1_Glob[8]:       %d\n"
	.size	.L.str.21, 25

	.type	.L.str.22,@object               # 
.L.str.22:
	.asciz	"Arr_2_Glob[8][7]:    %d\n"
	.size	.L.str.22, 25

	.type	.L.str.23,@object               # 
.L.str.23:
	.asciz	"        should be:   Number_Of_Runs + 10\n"
	.size	.L.str.23, 42

	.type	.L.str.24,@object               # 
.L.str.24:
	.asciz	"Ptr_Glob->\n"
	.size	.L.str.24, 12

	.type	.L.str.25,@object               # 
.L.str.25:
	.asciz	"  Ptr_Comp:          %ld\n"
	.size	.L.str.25, 26

	.type	.L.str.26,@object               # 
.L.str.26:
	.asciz	"        should be:   (implementation-dependent)\n"
	.size	.L.str.26, 49

	.type	.L.str.27,@object               # 
.L.str.27:
	.asciz	"  Discr:             %d\n"
	.size	.L.str.27, 25

	.type	.L.str.28,@object               # 
.L.str.28:
	.asciz	"  Enum_Comp:         %d\n"
	.size	.L.str.28, 25

	.type	.L.str.29,@object               # 
.L.str.29:
	.asciz	"  Int_Comp:          %d\n"
	.size	.L.str.29, 25

	.type	.L.str.30,@object               # 
.L.str.30:
	.asciz	"  Str_Comp:          %s\n"
	.size	.L.str.30, 25

	.type	.L.str.31,@object               # 
.L.str.31:
	.asciz	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
	.size	.L.str.31, 53

	.type	.L.str.32,@object               # 
.L.str.32:
	.asciz	"Next_Ptr_Glob->\n"
	.size	.L.str.32, 17

	.type	.L.str.33,@object               # 
.L.str.33:
	.asciz	"        should be:   (implementation-dependent), same as above\n"
	.size	.L.str.33, 64

	.type	.L.str.34,@object               # 
.L.str.34:
	.asciz	"Int_1_Loc:           %d\n"
	.size	.L.str.34, 25

	.type	.L.str.35,@object               # 
.L.str.35:
	.asciz	"Int_2_Loc:           %d\n"
	.size	.L.str.35, 25

	.type	.L.str.36,@object               # 
.L.str.36:
	.asciz	"Int_3_Loc:           %d\n"
	.size	.L.str.36, 25

	.type	.L.str.37,@object               # 
.L.str.37:
	.asciz	"Enum_Loc:            %d\n"
	.size	.L.str.37, 25

	.type	.L.str.38,@object               # 
.L.str.38:
	.asciz	"Str_1_Loc:           %s\n"
	.size	.L.str.38, 25

	.type	.L.str.39,@object               # 
.L.str.39:
	.asciz	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
	.size	.L.str.39, 53

	.type	.L.str.40,@object               # 
.L.str.40:
	.asciz	"Str_2_Loc:           %s\n"
	.size	.L.str.40, 25

	.type	.L.str.41,@object               # 
.L.str.41:
	.asciz	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.size	.L.str.41, 53

	.type	Microseconds,@object            # 
	.bss
	.globl	Microseconds
	.p2align	2
Microseconds:
	.long	0x00000000                      #  0
	.size	Microseconds, 4

	.type	Dhrystones_Per_Second,@object   # 
	.globl	Dhrystones_Per_Second
	.p2align	2
Dhrystones_Per_Second:
	.long	0x00000000                      #  0
	.size	Dhrystones_Per_Second, 4

	.type	.L.str.42,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.42:
	.asciz	"\nMicroseconds for one run through Dhrystone: "
	.size	.L.str.42, 46

	.type	.L.str.43,@object               # 
.L.str.43:
	.asciz	"%10.2f \n"
	.size	.L.str.43, 9

	.type	.L.str.44,@object               # 
.L.str.44:
	.asciz	"Dhrystones per Second:                      "
	.size	.L.str.44, 45

	.type	.L.str.45,@object               # 
.L.str.45:
	.asciz	"%10.0f \n"
	.size	.L.str.45, 9

	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2021.3.0 (2021.3.0.20210619)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym printf
	.addrsig_sym exit
	.addrsig_sym atoi
	.addrsig_sym malloc
	.addrsig_sym strcpy
	.addrsig_sym times
	.addrsig_sym Proc_5
	.addrsig_sym Proc_4
	.addrsig_sym Func_2
	.addrsig_sym Proc_7
	.addrsig_sym Proc_8
	.addrsig_sym Proc_1
	.addrsig_sym Func_1
	.addrsig_sym Proc_6
	.addrsig_sym Proc_2
	.addrsig_sym fprintf
	.addrsig_sym Proc_3
	.addrsig_sym Reg
	.addrsig_sym Next_Ptr_Glob
	.addrsig_sym Ptr_Glob
	.addrsig_sym Arr_2_Glob
	.addrsig_sym Done
	.addrsig_sym time_info
	.addrsig_sym Begin_Time
	.addrsig_sym Bool_Glob
	.addrsig_sym Arr_1_Glob
	.addrsig_sym Ch_2_Glob
	.addrsig_sym Int_Glob
	.addrsig_sym End_Time
	.addrsig_sym User_Time
	.addrsig_sym stderr
	.addrsig_sym Ch_1_Glob
	.addrsig_sym Microseconds
	.addrsig_sym Dhrystones_Per_Second
