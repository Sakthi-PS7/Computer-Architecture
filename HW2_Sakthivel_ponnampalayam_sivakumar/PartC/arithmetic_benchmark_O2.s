	.file	"arithmetic_benchmark.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"Final result = %f\n"
.LC7:
	.string	"Elapsed time = %f seconds\n"
.LC9:
	.string	"Performance = %.2f MFLOPS\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	call	clock
	movsd	.LC0(%rip), %xmm0
	movsd	.LC1(%rip), %xmm4
	movsd	.LC2(%rip), %xmm3
	movsd	.LC3(%rip), %xmm2
	movq	%rax, %rbx
	movl	$100000000, %eax
	movsd	.LC4(%rip), %xmm1
	.p2align 5
	.p2align 4
	.p2align 3
.L2:
	addsd	%xmm4, %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	subq	$1, %rax
	jne	.L2
	movsd	%xmm0, 8(%rsp)
	call	clock
	movsd	8(%rsp), %xmm0
	pxor	%xmm1, %xmm1
	movl	$.LC6, %edi
	subq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm1
	movl	$1, %eax
	divsd	.LC5(%rip), %xmm1
	movsd	%xmm1, (%rsp)
	call	printf
	movsd	(%rsp), %xmm0
	movl	$.LC7, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC9, %edi
	movl	$1, %eax
	movsd	.LC8(%rip), %xmm0
	divsd	(%rsp), %xmm0
	call	printf
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 8
.LC1:
	.long	2106939156
	.long	1074570327
	.align 8
.LC2:
	.long	1408474396
	.long	1072809756
	.align 8
.LC3:
	.long	-1728023577
	.long	1074860559
	.align 8
.LC4:
	.long	-741895471
	.long	1074447346
	.align 8
.LC5:
	.long	0
	.long	1093567616
	.align 8
.LC8:
	.long	0
	.long	1081671680
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
