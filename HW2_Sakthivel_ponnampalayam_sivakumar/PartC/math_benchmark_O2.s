	.file	"math_benchmark.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"Final result = %f\n"
.LC8:
	.string	"Elapsed time = %f seconds\n"
.LC10:
	.string	"Performance = %.2f MFLOPS\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$10000000, %ebx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	call	clock
	movq	$0x000000000, (%rsp)
	movsd	.LC0(%rip), %xmm2
	movsd	.LC1(%rip), %xmm0
	movsd	.LC3(%rip), %xmm1
	movq	%rax, %rbp
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L11:
	movsd	8(%rsp), %xmm1
	leaq	24(%rsp), %rdi
	leaq	16(%rsp), %rsi
	addsd	.LC5(%rip), %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)
	call	sincos
	movsd	24(%rsp), %xmm0
	movsd	16(%rsp), %xmm2
	movsd	8(%rsp), %xmm1
.L6:
	addsd	(%rsp), %xmm0
	addsd	%xmm0, %xmm2
	pxor	%xmm0, %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L8
	movapd	%xmm1, %xmm0
	sqrtsd	%xmm0, %xmm0
.L4:
	addsd	%xmm0, %xmm2
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm1, 8(%rsp)
	addsd	%xmm1, %xmm0
	movsd	%xmm2, (%rsp)
	call	log
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	subl	$1, %ebx
	jne	.L11
	call	clock
	pxor	%xmm0, %xmm0
	movl	$.LC7, %edi
	subq	%rbp, %rax
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC6(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	movsd	(%rsp), %xmm0
	movl	$1, %eax
	call	printf
	movsd	8(%rsp), %xmm0
	movl	$.LC8, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC10, %edi
	movl	$1, %eax
	movsd	.LC9(%rip), %xmm0
	divsd	8(%rsp), %xmm0
	call	printf
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	movapd	%xmm1, %xmm0
	movsd	%xmm2, 8(%rsp)
	movsd	%xmm1, (%rsp)
	call	sqrt
	movsd	8(%rsp), %xmm2
	movsd	(%rsp), %xmm1
	jmp	.L4
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	106659152
	.long	1072436520
	.align 8
.LC1:
	.long	1951073776
	.long	1071558376
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	0
	.long	1072693248
	.align 8
.LC5:
	.long	-1598689907
	.long	1051772663
	.align 8
.LC6:
	.long	0
	.long	1093567616
	.align 8
.LC9:
	.long	0
	.long	1078198272
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
