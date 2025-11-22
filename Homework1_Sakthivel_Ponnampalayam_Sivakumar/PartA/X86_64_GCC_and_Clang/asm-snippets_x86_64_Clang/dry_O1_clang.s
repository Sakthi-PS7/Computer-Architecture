	.text
	.file	"dry.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function main
.LCPI0_0:
	.quad	0x412e848000000000              #  1.0E+6
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_1:
	.long	0x42c80000                      #  100
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # 
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$3, %edi
	jge	.LBB0_20
# %bb.1:
	movl	$50000, %eax                    # imm = 0xC350
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	cmpl	$2, %edi
	jne	.LBB0_3
# %bb.2:
	movq	8(%rsi), %rdi
	callq	atoi
	testl	%eax, %eax
	movl	$50000, %ecx                    # imm = 0xC350
	cmovgl	%eax, %ecx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
.LBB0_3:
	movl	$56, %edi
	callq	malloc
	movq	%rax, %rbx
	movq	%rax, Next_Ptr_Glob(%rip)
	movl	$56, %edi
	callq	malloc
	movq	%rax, Ptr_Glob(%rip)
	movq	%rbx, (%rax)
	movabsq	$8589934592, %rcx               # imm = 0x200000000
	movq	%rcx, 8(%rax)
	movq	Ptr_Glob(%rip), %rax
	movl	$40, 16(%rax)
	movups	.L.str.1(%rip), %xmm0
	movups	%xmm0, 20(%rax)
	movups	.L.str.1+15(%rip), %xmm0
	movups	%xmm0, 35(%rax)
	movups	.L.str.2+15(%rip), %xmm0
	movups	%xmm0, 79(%rsp)
	movups	.L.str.2(%rip), %xmm0
	movaps	%xmm0, 64(%rsp)
	movl	$10, Arr_2_Glob+1628(%rip)
	movl	$10, %edi
	callq	putchar@PLT
	movl	$.L.str.4, %edi
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	printf
	cmpl	$0, Reg(%rip)
	movl	$.Lstr, %eax
	movl	$.Lstr.47, %edi
	cmoveq	%rax, %rdi
	callq	puts@PLT
	movl	$.L.str.8, %edi
	movl	$.L.str.9, %esi
	movl	$100, %edx
	xorl	%eax, %eax
	callq	printf
	movl	$10, %edi
	callq	putchar@PLT
	movl	$0, Done(%rip)
	leaq	16(%rsp), %r13
	leaq	20(%rsp), %r14
                                        # implicit-def: $ebp
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_4 Depth=1
	movl	$1, Done(%rip)
	cmpl	$0, Done(%rip)
	jne	.LBB0_19
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_10 Depth 3
	movl	$.L.str.10, %edi
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$time_info, %edi
	callq	times
	movq	time_info(%rip), %rax
	movq	%rax, Begin_Time(%rip)
	testl	%ebx, %ebx
	jle	.LBB0_15
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movl	$1, %r12d
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=2
	imull	12(%rsp), %r15d
	movl	16(%rsp), %ebp
	movl	%r15d, %eax
	cltd
	idivl	%ebp
	movl	%eax, %ebx
	movl	%eax, 12(%rsp)
	leaq	12(%rsp), %rdi
	callq	Proc_2
	leal	1(%r12), %eax
	cmpl	24(%rsp), %r12d                 # 4-byte Folded Reload
	movl	%eax, %r12d
	je	.LBB0_14
.LBB0_6:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_7 Depth 3
                                        #       Child Loop BB0_10 Depth 3
	callq	Proc_5
	callq	Proc_4
	movl	$2, 12(%rsp)
	movups	.L.str.11(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movups	.L.str.11+15(%rip), %xmm0
	movups	%xmm0, 47(%rsp)
	movl	$1, 20(%rsp)
	leaq	64(%rsp), %rdi
	leaq	32(%rsp), %rsi
	callq	Func_2
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	%ecx, Bool_Glob(%rip)
	movl	12(%rsp), %ebp
	cmpl	$2, %ebp
	movl	$2, %eax
	movl	$2, %ebx
	cmovgl	%ebp, %ebx
	addl	$1, %ebx
	.p2align	4, 0x90
.LBB0_7:                                #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	leal	(%rax,%rax,4), %eax
	addl	$-3, %eax
	movl	%eax, 16(%rsp)
	movl	%ebp, %edi
	movl	$3, %esi
	movq	%r13, %rdx
	callq	Proc_7
	addl	$1, %ebp
	movl	%ebp, %eax
	cmpl	%ebp, %ebx
	jne	.LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=2
	movl	%ebx, 12(%rsp)
	movl	16(%rsp), %ecx
	movl	$Arr_1_Glob, %edi
	movl	$Arr_2_Glob, %esi
	movl	%ebx, %edx
	callq	Proc_8
	movq	Ptr_Glob(%rip), %rdi
	callq	Proc_1
	movl	$3, %r15d
	cmpb	$65, Ch_2_Glob(%rip)
	jl	.LBB0_13
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=2
	movl	$3, %r15d
	movb	$65, %bl
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=3
	addb	$1, %bl
	cmpb	Ch_2_Glob(%rip), %bl
	jg	.LBB0_13
.LBB0_10:                               #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	20(%rsp), %ebp
	movsbl	%bl, %edi
	movl	$67, %esi
	callq	Func_1
	cmpl	%eax, %ebp
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=3
	xorl	%edi, %edi
	movq	%r14, %rsi
	callq	Proc_6
	movups	.L.str.12+15(%rip), %xmm0
	movups	%xmm0, 47(%rsp)
	movups	.L.str.12(%rip), %xmm0
	movaps	%xmm0, 32(%rsp)
	movl	%r12d, Int_Glob(%rip)
	movl	%r12d, %r15d
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_4 Depth=1
	subl	%ebp, %r15d
	leal	(,%r15,8), %ebp
	subl	%r15d, %ebp
	subl	%ebx, %ebp
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=1
	movl	$time_info, %edi
	callq	times
	movq	time_info(%rip), %rax
	movq	%rax, End_Time(%rip)
	subq	Begin_Time(%rip), %rax
	movq	%rax, User_Time(%rip)
	cmpq	$199, %rax
	jg	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_4 Depth=1
	movl	$.Lstr.46, %edi
	callq	puts@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	addl	%eax, %eax
	leal	(%rax,%rax,4), %eax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	cmpl	$0, Done(%rip)
	je	.LBB0_4
.LBB0_19:
	movq	stderr(%rip), %rcx
	movl	$.L.str.14, %edi
	movl	$53, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	movq	stderr(%rip), %rdi
	movl	Int_Glob(%rip), %edx
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$5, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	Bool_Glob(%rip), %edx
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movsbl	Ch_1_Glob(%rip), %edx
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.19, %esi
	movl	$65, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movsbl	Ch_2_Glob(%rip), %edx
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.19, %esi
	movl	$66, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	Arr_1_Glob+32(%rip), %edx
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$7, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	Arr_2_Glob+1628(%rip), %edx
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rcx
	movl	$.L.str.23, %edi
	movl	$41, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr(%rip), %rcx
	movl	$.L.str.24, %edi
	movl	$11, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr(%rip), %rdi
	movq	Ptr_Glob(%rip), %rax
	movq	(%rax), %rdx
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rcx
	movl	$.L.str.26, %edi
	movl	$48, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr(%rip), %rdi
	movq	Ptr_Glob(%rip), %rax
	movl	8(%rax), %edx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Ptr_Glob(%rip), %rax
	movl	12(%rax), %edx
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$2, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Ptr_Glob(%rip), %rax
	movl	16(%rax), %edx
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$17, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Ptr_Glob(%rip), %rdx
	addq	$20, %rdx
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rcx
	movl	$.L.str.31, %edi
	movl	$52, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr(%rip), %rcx
	movl	$.L.str.32, %edi
	movl	$16, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr(%rip), %rdi
	movq	Next_Ptr_Glob(%rip), %rax
	movq	(%rax), %rdx
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rcx
	movl	$.L.str.33, %edi
	movl	$63, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr(%rip), %rdi
	movq	Next_Ptr_Glob(%rip), %rax
	movl	8(%rax), %edx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Next_Ptr_Glob(%rip), %rax
	movl	12(%rax), %edx
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Next_Ptr_Glob(%rip), %rax
	movl	16(%rax), %edx
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$18, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	Next_Ptr_Glob(%rip), %rdx
	addq	$20, %rdx
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rcx
	movl	$.L.str.31, %edi
	movl	$52, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr(%rip), %rdi
	movl	12(%rsp), %edx
	movl	$.L.str.34, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$5, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.35, %esi
	movl	%ebp, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$13, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	16(%rsp), %edx
	movl	$.L.str.36, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$7, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	20(%rsp), %edx
	movl	$.L.str.37, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	movl	$1, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	leaq	64(%rsp), %rdx
	movl	$.L.str.38, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rcx
	movl	$.L.str.39, %edi
	movl	$52, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr(%rip), %rdi
	leaq	32(%rsp), %rdx
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rcx
	movl	$.L.str.41, %edi
	movl	$52, %esi
	movl	$1, %edx
	callq	fwrite@PLT
	movq	stderr(%rip), %rsi
	movl	$10, %edi
	callq	fputc@PLT
	cvtsi2ssq	User_Time(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm1
	cvtsi2ssl	24(%rsp), %xmm2         # 4-byte Folded Reload
	mulsd	.LCPI0_0(%rip), %xmm1
	mulss	.LCPI0_1(%rip), %xmm2
	cvtss2sd	%xmm2, %xmm3
	divsd	%xmm3, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, Microseconds(%rip)
	divss	%xmm0, %xmm2
	movss	%xmm2, Dhrystones_Per_Second(%rip)
	movl	$.L.str.42, %edi
	xorl	%eax, %eax
	callq	printf
	movss	Microseconds(%rip), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.43, %edi
	movb	$1, %al
	callq	printf
	movl	$.L.str.44, %edi
	xorl	%eax, %eax
	callq	printf
	movss	Dhrystones_Per_Second(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.45, %edi
	movb	$1, %al
	callq	printf
	movl	$10, %edi
	callq	putchar@PLT
	xorl	%eax, %eax
	addq	$104, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_20:
	.cfi_def_cfa_offset 160
	movq	(%rsi), %rsi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
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
	movb	$65, Ch_1_Glob(%rip)
	movl	$0, Bool_Glob(%rip)
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
	xorl	%eax, %eax
	cmpb	$65, Ch_1_Glob(%rip)
	sete	%al
	orl	%eax, Bool_Glob(%rip)
	movb	$66, Ch_2_Glob(%rip)
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	(%rdi), %rbx
	movq	Ptr_Glob(%rip), %rax
	movq	48(%rax), %rcx
	movq	%rcx, 48(%rbx)
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movl	$5, 16(%rdi)
	movl	$5, 16(%rbx)
	movq	(%rdi), %rax
	movq	%rax, (%rbx)
	movq	%rbx, %rdi
	callq	Proc_3
	cmpl	$0, 8(%rbx)
	je	.LBB3_1
# %bb.2:
	movq	(%r14), %rax
	movups	(%rax), %xmm0
	movups	16(%rax), %xmm1
	movups	32(%rax), %xmm2
	movups	%xmm1, 16(%r14)
	movups	%xmm2, 32(%r14)
	movq	48(%rax), %rax
	movq	%rax, 48(%r14)
	movups	%xmm0, (%r14)
	jmp	.LBB3_3
.LBB3_1:
	leaq	16(%rbx), %r15
	movl	$6, 16(%rbx)
	movl	12(%r14), %edi
	leaq	12(%rbx), %rsi
	callq	Proc_6
	movq	Ptr_Glob(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movl	16(%rbx), %edi
	movl	$10, %esi
	movq	%r15, %rdx
	callq	Proc_7
.LBB3_3:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
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
	cmpb	$65, Ch_1_Glob(%rip)
	jne	.LBB4_2
# %bb.1:
	movl	(%rdi), %eax
	subl	Int_Glob(%rip), %eax
	addl	$9, %eax
	movl	%eax, (%rdi)
.LBB4_2:
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	Ptr_Glob(%rip), %rax
	testq	%rax, %rax
	je	.LBB5_2
# %bb.1:
	movq	(%rax), %rax
	movq	%rax, (%rdi)
.LBB5_2:
	movl	Int_Glob(%rip), %esi
	movq	Ptr_Glob(%rip), %rdx
	addq	$16, %rdx
	movl	$10, %edi
	callq	Proc_7
	popq	%rax
	.cfi_def_cfa_offset 8
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

	.type	.L.str.4,@object                # 
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Dhrystone Benchmark, Version %s\n"
	.size	.L.str.4, 33

	.type	.L.str.5,@object                # 
.L.str.5:
	.asciz	"C, Version 2.2a"
	.size	.L.str.5, 16

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

	.type	.L.str.14,@object               # 
	.section	.rodata.str1.1,"aMS",@progbits,1
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

	.type	.Lstr,@object                   # 
.Lstr:
	.asciz	"Program compiled without 'register' attribute"
	.size	.Lstr, 46

	.type	.Lstr.46,@object                # 
.Lstr.46:
	.asciz	"too few"
	.size	.Lstr.46, 8

	.type	.Lstr.47,@object                # 
.Lstr.47:
	.asciz	"Program compiled with 'register' attribute"
	.size	.Lstr.47, 43

	.ident	"Intel(R) oneAPI DPC++/C++ Compiler 2021.3.0 (2021.3.0.20210619)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym Arr_2_Glob
	.addrsig_sym time_info
	.addrsig_sym Arr_1_Glob
