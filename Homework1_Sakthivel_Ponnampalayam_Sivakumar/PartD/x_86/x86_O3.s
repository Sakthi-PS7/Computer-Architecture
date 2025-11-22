	.file	"dry.c"
	.intel_syntax noprefix
# GNU C23 (GCC) version 15.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.2.1, MPFR version 4.2.2, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O3
	.text
	.p2align 4
	.globl	Proc_6
	.type	Proc_6, @function
Proc_6:
.LFB22:
	.cfi_startproc
# dry.c:1002:   if (Enum_Loc == Ident_3)
	cmp	edi, 2	# Enum_Val_Par,
	je	.L8	#,
# dry.c:871:     *Enum_Ref_Par = Ident_4;
	mov	DWORD PTR [rsi], 3	# *Enum_Ref_Par_5(D),
# dry.c:872:   switch (Enum_Val_Par)
	cmp	edi, 1	# Enum_Val_Par,
	je	.L4	#,
	cmp	edi, 4	# Enum_Val_Par,
	je	.L5	#,
	test	edi, edi	# Enum_Val_Par
	je	.L6	#,
.L1:
# dry.c:891: } /* Proc_6 */
	ret	
	.p2align 4,,10
	.p2align 3
.L4:
# dry.c:878:       if (Int_Glob > 100)
	cmp	DWORD PTR Int_Glob[rip], 100	# Int_Glob,
	jle	.L1	#,
.L6:
# dry.c:880:       *Enum_Ref_Par = Ident_1;
	mov	DWORD PTR [rsi], 0	# *Enum_Ref_Par_5(D),
	ret	
	.p2align 4,,10
	.p2align 3
.L8:
# dry.c:884:       *Enum_Ref_Par = Ident_2;
	mov	DWORD PTR [rsi], 1	# *Enum_Ref_Par_5(D),
# dry.c:885:       break;
	ret	
	.p2align 4,,10
	.p2align 3
.L5:
# dry.c:888:       *Enum_Ref_Par = Ident_3;
	mov	DWORD PTR [rsi], 2	# *Enum_Ref_Par_5(D),
# dry.c:891: } /* Proc_6 */
	ret	
	.cfi_endproc
.LFE22:
	.size	Proc_6, .-Proc_6
	.p2align 4
	.globl	Proc_7
	.type	Proc_7, @function
Proc_7:
.LFB23:
	.cfi_startproc
# dry.c:907:   *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
	lea	eax, [rdi+2+rsi]	# tmp104,
	mov	DWORD PTR [rdx], eax	# *Int_Par_Ref_6(D), tmp104
# dry.c:908: } /* Proc_7 */
	ret	
	.cfi_endproc
.LFE23:
	.size	Proc_7, .-Proc_7
	.p2align 4
	.globl	Proc_8
	.type	Proc_8, @function
Proc_8:
.LFB24:
	.cfi_startproc
# dry.c:916: {
	mov	r9, rdi	# Arr_1_Par_Ref, Arr_1_Par_Ref
# dry.c:920:   Int_Loc = Int_1_Par_Val + 5;
	lea	edi, [rdx+5]	# Int_Loc,
# dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	movd	xmm1, ecx	# Int_2_Par_Val, Int_2_Par_Val
	movsx	rdx, edx	# _47, Int_1_Par_Val
# dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	movsx	rax, edi	# _1, Int_Loc
# dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	pshufd	xmm0, xmm1, 0xe0	# _48, Int_2_Par_Val
# dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	lea	r8, [r9+rax*4]	# _3,
# dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	movq	QWORD PTR [r8], xmm0	# MEM <vector(2) int> [(int *)_3], _48
# dry.c:923:   Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
	mov	DWORD PTR [r9+120+rax*4], edi	# *_9, Int_Loc
# dry.c:925:     Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
	imul	rax, rax, 200	# _40, _1,
	lea	rcx, [rax+rdx*4]	# _12,
# dry.c:926:   Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
	add	DWORD PTR [rsi+16+rcx], 1	# MEM <int> [(int[50] *)_50 + 16B],
# dry.c:925:     Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
	mov	DWORD PTR [rsi+20+rcx], edi	# MEM <int> [(int[50] *)_50 + 20B], Int_Loc
	mov	DWORD PTR [rsi+24+rcx], edi	# MEM <int> [(int[50] *)_50 + 24B], Int_Loc
# dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	mov	ecx, DWORD PTR [r8]	# _20, *_3
# dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	add	rsi, rax	# tmp123, _40
# dry.c:928:   Int_Glob = 5;
	mov	DWORD PTR Int_Glob[rip], 5	# Int_Glob,
# dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	mov	DWORD PTR [rsi+4020+rdx*4], ecx	# MEM <int> [(int[50] *)_11 + 20B], _20
# dry.c:929: } /* Proc_8 */
	ret	
	.cfi_endproc
.LFE24:
	.size	Proc_8, .-Proc_8
	.p2align 4
	.globl	Func_1
	.type	Func_1, @function
Func_1:
.LFB25:
	.cfi_startproc
# dry.c:946:     return (Ident_1);
	xor	eax, eax	# <retval>
# dry.c:944:   if (Ch_2_Loc != Ch_2_Par_Val)
	cmp	dil, sil	# Ch_1_Par_Val, Ch_2_Par_Val
	je	.L14	#,
# dry.c:952: } /* Func_1 */
	ret	
	.p2align 4,,10
	.p2align 3
.L14:
# dry.c:949:     Ch_1_Glob = Ch_1_Loc;
	mov	BYTE PTR Ch_1_Glob[rip], dil	# Ch_1_Glob, Ch_1_Par_Val
# dry.c:950:     return (Ident_2);
	mov	eax, 1	# <retval>,
# dry.c:952: } /* Func_1 */
	ret	
	.cfi_endproc
.LFE25:
	.size	Func_1, .-Func_1
	.p2align 4
	.globl	Func_2
	.type	Func_2, @function
Func_2:
.LFB26:
	.cfi_startproc
# dry.c:944:   if (Ch_2_Loc != Ch_2_Par_Val)
	movzx	eax, BYTE PTR [rsi+3]	# tmp112, MEM[(char *)Str_2_Par_Ref_12(D) + 3B]
	cmp	BYTE PTR [rdi+2], al	# MEM[(char *)Str_1_Par_Ref_11(D) + 2B], tmp112
	je	.L17	#,
# dry.c:960: {
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
# dry.c:981:     if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
	call	strcmp	#
# dry.c:981:     if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
	test	eax, eax	#
# dry.c:989:       return (false);
	mov	eax, 0	# <retval>,
# dry.c:981:     if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
	jle	.L15	#,
# dry.c:985:       Int_Glob = Int_Loc;
	mov	DWORD PTR Int_Glob[rip], 10	# Int_Glob,
# dry.c:986:       return (true);
	mov	eax, 1	# <retval>,
.L15:
# dry.c:991: } /* Func_2 */
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret	
	.p2align 1
.L17:
	jmp	.L17	#
	.cfi_endproc
.LFE26:
	.size	Func_2, .-Func_2
	.p2align 4
	.globl	Func_3
	.type	Func_3, @function
Func_3:
.LFB27:
	.cfi_startproc
# dry.c:1002:   if (Enum_Loc == Ident_3)
	xor	eax, eax	# _4
	cmp	edi, 2	# Enum_Par_Val,
	sete	al	#, _4
# dry.c:1007: } /* Func_3 */
	ret	
	.cfi_endproc
.LFE27:
	.size	Func_3, .-Func_3
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
