	.file	"arithmetic_benchmark.c"
	.text
	.section	.rodata
.LC6:
	.string	"Final result = %f\n"
.LC7:
	.string	"Elapsed time = %f seconds\n"
.LC8:
	.string	"Performance = %.2f MFLOPS\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	call	clock
	movq	%rax, -48(%rbp)
	movq	$0, -16(%rbp)
	jmp	.L2
.L3:
	movsd	-24(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-32(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-40(%rbp), %xmm1
	movsd	-8(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-24(%rbp), %xmm0
	mulsd	-40(%rbp), %xmm0
	movsd	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-32(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movsd	-8(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addq	$1, -16(%rbp)
.L2:
	cmpq	$99999999, -16(%rbp)
	jle	.L3
	call	clock
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	subq	-48(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	-72(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	divsd	-64(%rbp), %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	movq	-64(%rbp), %rax
	movq	%rax, %xmm0
	movl	$.LC7, %edi
	movl	$1, %eax
	call	printf
	movq	-80(%rbp), %rax
	movq	%rax, %xmm0
	movl	$.LC8, %edi
	movl	$1, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	1402701959
	.long	1072939209
	.align 8
.LC1:
	.long	-741895471
	.long	1073923058
	.align 8
.LC2:
	.long	-37658273
	.long	1074505600
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	1093567616
	.align 8
.LC5:
	.long	0
	.long	1102567300
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
