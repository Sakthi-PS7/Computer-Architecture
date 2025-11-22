	.file	"math_benchmark.c"
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
	subq	$64, %rsp
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	call	clock
	movq	%rax, -32(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L2
.L3:
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	sin
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	cos
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	sqrt
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	log
	movsd	-16(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-8(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	addl	$1, -20(%rbp)
.L2:
	cmpl	$9999999, -20(%rbp)
	jle	.L3
	call	clock
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	subq	-32(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-56(%rbp), %xmm0
	movsd	.LC4(%rip), %xmm1
	divsd	%xmm1, %xmm0
	divsd	-48(%rbp), %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	movq	-48(%rbp), %rax
	movq	%rax, %xmm0
	movl	$.LC7, %edi
	movl	$1, %eax
	call	printf
	movq	-64(%rbp), %rax
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
	.long	0
	.long	1071644672
	.align 8
.LC2:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC4:
	.long	0
	.long	1093567616
	.align 8
.LC5:
	.long	0
	.long	1099109072
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
