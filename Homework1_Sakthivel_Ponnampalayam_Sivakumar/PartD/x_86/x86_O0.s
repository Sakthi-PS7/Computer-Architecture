	.file	"dry.c"
	.intel_syntax noprefix
# GNU C23 (GCC) version 15.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.2.1, MPFR version 4.2.2, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -O0
	.text
	.globl	Proc_6
	.type	Proc_6, @function
Proc_6:
.LFB6:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR [rbp-4], edi	# Enum_Val_Par, Enum_Val_Par
	mov	QWORD PTR [rbp-16], rsi	# Enum_Ref_Par, Enum_Ref_Par
# dry.c:868:   *Enum_Ref_Par = Enum_Val_Par;
	mov	rax, QWORD PTR [rbp-16]	# tmp100, Enum_Ref_Par
	mov	edx, DWORD PTR [rbp-4]	# tmp101, Enum_Val_Par
	mov	DWORD PTR [rax], edx	# *Enum_Ref_Par_7(D), tmp101
# dry.c:869:   if (! Func_3 (Enum_Val_Par))
	mov	eax, DWORD PTR [rbp-4]	# tmp102, Enum_Val_Par
	mov	edi, eax	#, tmp102
	call	Func_3	#
# dry.c:869:   if (! Func_3 (Enum_Val_Par))
	test	eax, eax	# _1
	jne	.L2	#,
# dry.c:871:     *Enum_Ref_Par = Ident_4;
	mov	rax, QWORD PTR [rbp-16]	# tmp103, Enum_Ref_Par
	mov	DWORD PTR [rax], 3	# *Enum_Ref_Par_7(D),
.L2:
# dry.c:872:   switch (Enum_Val_Par)
	cmp	DWORD PTR [rbp-4], 4	# Enum_Val_Par,
	je	.L3	#,
	cmp	DWORD PTR [rbp-4], 4	# Enum_Val_Par,
	ja	.L11	#,
	cmp	DWORD PTR [rbp-4], 3	# Enum_Val_Par,
	je	.L12	#,
	cmp	DWORD PTR [rbp-4], 3	# Enum_Val_Par,
	ja	.L11	#,
	cmp	DWORD PTR [rbp-4], 2	# Enum_Val_Par,
	je	.L6	#,
	cmp	DWORD PTR [rbp-4], 2	# Enum_Val_Par,
	ja	.L11	#,
	cmp	DWORD PTR [rbp-4], 0	# Enum_Val_Par,
	je	.L7	#,
	cmp	DWORD PTR [rbp-4], 1	# Enum_Val_Par,
	je	.L8	#,
# dry.c:891: } /* Proc_6 */
	jmp	.L11	#
.L7:
# dry.c:875:       *Enum_Ref_Par = Ident_1;
	mov	rax, QWORD PTR [rbp-16]	# tmp104, Enum_Ref_Par
	mov	DWORD PTR [rax], 0	# *Enum_Ref_Par_7(D),
# dry.c:876:       break;
	jmp	.L4	#
.L8:
# dry.c:878:       if (Int_Glob > 100)
	mov	eax, DWORD PTR Int_Glob[rip]	# Int_Glob.0_2, Int_Glob
# dry.c:878:       if (Int_Glob > 100)
	cmp	eax, 100	# Int_Glob.0_2,
	jle	.L9	#,
# dry.c:880:       *Enum_Ref_Par = Ident_1;
	mov	rax, QWORD PTR [rbp-16]	# tmp105, Enum_Ref_Par
	mov	DWORD PTR [rax], 0	# *Enum_Ref_Par_7(D),
# dry.c:882:       break;
	jmp	.L4	#
.L9:
# dry.c:881:       else *Enum_Ref_Par = Ident_4;
	mov	rax, QWORD PTR [rbp-16]	# tmp106, Enum_Ref_Par
	mov	DWORD PTR [rax], 3	# *Enum_Ref_Par_7(D),
# dry.c:882:       break;
	jmp	.L4	#
.L6:
# dry.c:884:       *Enum_Ref_Par = Ident_2;
	mov	rax, QWORD PTR [rbp-16]	# tmp107, Enum_Ref_Par
	mov	DWORD PTR [rax], 1	# *Enum_Ref_Par_7(D),
# dry.c:885:       break;
	jmp	.L4	#
.L3:
# dry.c:888:       *Enum_Ref_Par = Ident_3;
	mov	rax, QWORD PTR [rbp-16]	# tmp108, Enum_Ref_Par
	mov	DWORD PTR [rax], 2	# *Enum_Ref_Par_7(D),
# dry.c:889:       break;
	jmp	.L4	#
.L12:
# dry.c:886:     case Ident_4: break;
	nop	
.L4:
.L11:
# dry.c:891: } /* Proc_6 */
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	Proc_6, .-Proc_6
	.globl	Proc_7
	.type	Proc_7, @function
Proc_7:
.LFB7:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi	# Int_1_Par_Val, Int_1_Par_Val
	mov	DWORD PTR [rbp-24], esi	# Int_2_Par_Val, Int_2_Par_Val
	mov	QWORD PTR [rbp-32], rdx	# Int_Par_Ref, Int_Par_Ref
# dry.c:906:   Int_Loc = Int_1_Par_Val + 2;
	mov	eax, DWORD PTR [rbp-20]	# tmp102, Int_1_Par_Val
	add	eax, 2	# Int_Loc_3,
	mov	DWORD PTR [rbp-4], eax	# Int_Loc, Int_Loc_3
# dry.c:907:   *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
	mov	edx, DWORD PTR [rbp-24]	# tmp103, Int_2_Par_Val
	mov	eax, DWORD PTR [rbp-4]	# tmp104, Int_Loc
	add	edx, eax	# _1, tmp104
# dry.c:907:   *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
	mov	rax, QWORD PTR [rbp-32]	# tmp105, Int_Par_Ref
	mov	DWORD PTR [rax], edx	# *Int_Par_Ref_6(D), _1
# dry.c:908: } /* Proc_7 */
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	Proc_7, .-Proc_7
	.globl	Proc_8
	.type	Proc_8, @function
Proc_8:
.LFB8:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR [rbp-24], rdi	# Arr_1_Par_Ref, Arr_1_Par_Ref
	mov	QWORD PTR [rbp-32], rsi	# Arr_2_Par_Ref, Arr_2_Par_Ref
	mov	DWORD PTR [rbp-36], edx	# Int_1_Par_Val, Int_1_Par_Val
	mov	DWORD PTR [rbp-40], ecx	# Int_2_Par_Val, Int_2_Par_Val
# dry.c:920:   Int_Loc = Int_1_Par_Val + 5;
	mov	eax, DWORD PTR [rbp-36]	# tmp138, Int_1_Par_Val
	add	eax, 5	# Int_Loc_41,
	mov	DWORD PTR [rbp-8], eax	# Int_Loc, Int_Loc_41
# dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	mov	eax, DWORD PTR [rbp-8]	# tmp139, Int_Loc
	cdqe
	lea	rdx, [0+rax*4]	# _2,
	mov	rax, QWORD PTR [rbp-24]	# tmp140, Arr_1_Par_Ref
	add	rdx, rax	# _3, tmp140
# dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	mov	eax, DWORD PTR [rbp-40]	# tmp141, Int_2_Par_Val
	mov	DWORD PTR [rdx], eax	# *_3, tmp141
# dry.c:922:   Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
	mov	eax, DWORD PTR [rbp-8]	# tmp142, Int_Loc
	cdqe
	lea	rdx, [0+rax*4]	# _5,
	mov	rax, QWORD PTR [rbp-24]	# tmp143, Arr_1_Par_Ref
	add	rax, rdx	# _6, _5
# dry.c:922:   Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
	mov	edx, DWORD PTR [rbp-8]	# tmp144, Int_Loc
	movsx	rdx, edx	# _7, tmp144
	add	rdx, 1	# _8,
	lea	rcx, [0+rdx*4]	# _9,
# dry.c:922:   Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
	mov	rdx, QWORD PTR [rbp-24]	# tmp145, Arr_1_Par_Ref
	add	rdx, rcx	# _10, _9
# dry.c:922:   Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
	mov	eax, DWORD PTR [rax]	# _11, *_6
# dry.c:922:   Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
	mov	DWORD PTR [rdx], eax	# *_10, _11
# dry.c:923:   Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
	mov	eax, DWORD PTR [rbp-8]	# tmp146, Int_Loc
	cdqe
	add	rax, 30	# _13,
	lea	rdx, [0+rax*4]	# _14,
# dry.c:923:   Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
	mov	rax, QWORD PTR [rbp-24]	# tmp147, Arr_1_Par_Ref
	add	rdx, rax	# _15, tmp147
# dry.c:923:   Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
	mov	eax, DWORD PTR [rbp-8]	# tmp148, Int_Loc
	mov	DWORD PTR [rdx], eax	# *_15, tmp148
# dry.c:924:   for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
	mov	eax, DWORD PTR [rbp-8]	# tmp149, Int_Loc
	mov	DWORD PTR [rbp-4], eax	# Int_Index, tmp149
# dry.c:924:   for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
	jmp	.L15	#
.L16:
# dry.c:925:     Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
	mov	eax, DWORD PTR [rbp-8]	# tmp150, Int_Loc
	cdqe
	imul	rdx, rax, 200	# _17, _16,
	mov	rax, QWORD PTR [rbp-32]	# tmp151, Arr_2_Par_Ref
	lea	rcx, [rdx+rax]	# _18,
# dry.c:925:     Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
	mov	eax, DWORD PTR [rbp-4]	# tmp153, Int_Index
	cdqe
	mov	edx, DWORD PTR [rbp-8]	# tmp154, Int_Loc
	mov	DWORD PTR [rcx+rax*4], edx	# (*_18)[Int_Index_38], tmp154
# dry.c:924:   for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
	add	DWORD PTR [rbp-4], 1	# Int_Index,
.L15:
# dry.c:924:   for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
	mov	eax, DWORD PTR [rbp-8]	# tmp155, Int_Loc
	add	eax, 1	# _19,
# dry.c:924:   for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
	cmp	DWORD PTR [rbp-4], eax	# Int_Index, _19
	jle	.L16	#,
# dry.c:926:   Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
	mov	eax, DWORD PTR [rbp-8]	# tmp156, Int_Loc
	cdqe
	imul	rdx, rax, 200	# _21, _20,
	mov	rax, QWORD PTR [rbp-32]	# tmp157, Arr_2_Par_Ref
	add	rdx, rax	# _22, tmp157
# dry.c:926:   Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
	mov	eax, DWORD PTR [rbp-8]	# tmp158, Int_Loc
	sub	eax, 1	# _23,
	cdqe
	mov	eax, DWORD PTR [rdx+rax*4]	# _24, (*_22)[_23]
# dry.c:926:   Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
	mov	edx, DWORD PTR [rbp-8]	# tmp160, Int_Loc
	movsx	rdx, edx	# _25, tmp160
	imul	rcx, rdx, 200	# _26, _25,
	mov	rdx, QWORD PTR [rbp-32]	# tmp161, Arr_2_Par_Ref
	add	rdx, rcx	# _27, _26
# dry.c:926:   Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
	mov	ecx, DWORD PTR [rbp-8]	# tmp162, Int_Loc
	lea	esi, [rcx-1]	# _28,
# dry.c:926:   Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
	lea	ecx, [rax+1]	# _29,
	movsx	rax, esi	# tmp163, _28
	mov	DWORD PTR [rdx+rax*4], ecx	# (*_27)[_28], _29
# dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	mov	eax, DWORD PTR [rbp-8]	# tmp164, Int_Loc
	cdqe
	lea	rdx, [0+rax*4]	# _31,
	mov	rax, QWORD PTR [rbp-24]	# tmp165, Arr_1_Par_Ref
	add	rax, rdx	# _32, _31
# dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	mov	edx, DWORD PTR [rbp-8]	# tmp166, Int_Loc
	movsx	rdx, edx	# _33, tmp166
	imul	rdx, rdx, 200	# _34, _33,
# dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	lea	rcx, [rdx+4000]	# _35,
# dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	mov	rdx, QWORD PTR [rbp-32]	# tmp167, Arr_2_Par_Ref
	add	rcx, rdx	# _36, tmp167
# dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	mov	edx, DWORD PTR [rax]	# _37, *_32
# dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	mov	eax, DWORD PTR [rbp-8]	# tmp169, Int_Loc
	cdqe
	mov	DWORD PTR [rcx+rax*4], edx	# (*_36)[Int_Loc_41], _37
# dry.c:928:   Int_Glob = 5;
	mov	DWORD PTR Int_Glob[rip], 5	# Int_Glob,
# dry.c:929: } /* Proc_8 */
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	Proc_8, .-Proc_8
	.globl	Func_1
	.type	Func_1, @function
Func_1:
.LFB9:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	edx, edi	# tmp100, Ch_1_Par_Val
	mov	eax, esi	# tmp102, Ch_2_Par_Val
	mov	BYTE PTR [rbp-20], dl	# Ch_1_Par_Val, tmp101
	mov	BYTE PTR [rbp-24], al	# Ch_2_Par_Val, tmp103
# dry.c:942:   Ch_1_Loc = Ch_1_Par_Val;
	movzx	eax, BYTE PTR [rbp-20]	# tmp104, Ch_1_Par_Val
	mov	BYTE PTR [rbp-1], al	# Ch_1_Loc, tmp104
# dry.c:943:   Ch_2_Loc = Ch_1_Loc;
	movzx	eax, BYTE PTR [rbp-1]	# tmp105, Ch_1_Loc
	mov	BYTE PTR [rbp-2], al	# Ch_2_Loc, tmp105
# dry.c:944:   if (Ch_2_Loc != Ch_2_Par_Val)
	movzx	eax, BYTE PTR [rbp-2]	# tmp106, Ch_2_Loc
	cmp	al, BYTE PTR [rbp-24]	# tmp106, Ch_2_Par_Val
	je	.L18	#,
# dry.c:946:     return (Ident_1);
	mov	eax, 0	# _1,
	jmp	.L19	#
.L18:
# dry.c:949:     Ch_1_Glob = Ch_1_Loc;
	movzx	eax, BYTE PTR [rbp-1]	# tmp107, Ch_1_Loc
	mov	BYTE PTR Ch_1_Glob[rip], al	# Ch_1_Glob, tmp107
# dry.c:950:     return (Ident_2);
	mov	eax, 1	# _1,
.L19:
# dry.c:952: } /* Func_1 */
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	Func_1, .-Func_1
	.globl	Func_2
	.type	Func_2, @function
Func_2:
.LFB10:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR [rbp-24], rdi	# Str_1_Par_Ref, Str_1_Par_Ref
	mov	QWORD PTR [rbp-32], rsi	# Str_2_Par_Ref, Str_2_Par_Ref
# dry.c:964:   Int_Loc = 2;
	mov	DWORD PTR [rbp-4], 2	# Int_Loc,
# dry.c:965:   while (Int_Loc <= 2) /* loop body executed once */
	jmp	.L21	#
.L22:
# dry.c:967:                 Str_2_Par_Ref[Int_Loc+1]) == Ident_1)
	mov	eax, DWORD PTR [rbp-4]	# tmp111, Int_Loc
	cdqe
	lea	rdx, [rax+1]	# _2,
# dry.c:967:                 Str_2_Par_Ref[Int_Loc+1]) == Ident_1)
	mov	rax, QWORD PTR [rbp-32]	# tmp112, Str_2_Par_Ref
	add	rax, rdx	# _3, _2
	movzx	eax, BYTE PTR [rax]	# _4, *_3
# dry.c:966:     if (Func_1 (Str_1_Par_Ref[Int_Loc],
	movsx	edx, al	# _5, _4
# dry.c:966:     if (Func_1 (Str_1_Par_Ref[Int_Loc],
	mov	eax, DWORD PTR [rbp-4]	# tmp113, Int_Loc
	movsx	rcx, eax	# _6, tmp113
	mov	rax, QWORD PTR [rbp-24]	# tmp114, Str_1_Par_Ref
	add	rax, rcx	# _7, _6
	movzx	eax, BYTE PTR [rax]	# _8, *_7
# dry.c:966:     if (Func_1 (Str_1_Par_Ref[Int_Loc],
	movsx	eax, al	# _9, _8
	mov	esi, edx	#, _5
	mov	edi, eax	#, _9
	call	Func_1	#
# dry.c:966:     if (Func_1 (Str_1_Par_Ref[Int_Loc],
	test	eax, eax	# _10
	jne	.L21	#,
# dry.c:970:       Ch_Loc = 'A';
	mov	BYTE PTR [rbp-5], 65	# Ch_Loc,
# dry.c:971:       Int_Loc += 1;
	add	DWORD PTR [rbp-4], 1	# Int_Loc,
.L21:
# dry.c:965:   while (Int_Loc <= 2) /* loop body executed once */
	cmp	DWORD PTR [rbp-4], 2	# Int_Loc,
	jle	.L22	#,
# dry.c:973:   if (Ch_Loc >= 'W' && Ch_Loc < 'Z')
	cmp	BYTE PTR [rbp-5], 86	# Ch_Loc,
	jle	.L23	#,
# dry.c:973:   if (Ch_Loc >= 'W' && Ch_Loc < 'Z')
	cmp	BYTE PTR [rbp-5], 89	# Ch_Loc,
	jg	.L23	#,
# dry.c:975:     Int_Loc = 7;
	mov	DWORD PTR [rbp-4], 7	# Int_Loc,
.L23:
# dry.c:976:   if (Ch_Loc == 'R')
	cmp	BYTE PTR [rbp-5], 82	# Ch_Loc,
	jne	.L24	#,
# dry.c:978:     return (true);
	mov	eax, 1	# _15,
	jmp	.L25	#
.L24:
# dry.c:981:     if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
	mov	rdx, QWORD PTR [rbp-32]	# tmp115, Str_2_Par_Ref
	mov	rax, QWORD PTR [rbp-24]	# tmp116, Str_1_Par_Ref
	mov	rsi, rdx	#, tmp115
	mov	rdi, rax	#, tmp116
	call	strcmp	#
# dry.c:981:     if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
	test	eax, eax	# _11
	jle	.L26	#,
# dry.c:984:       Int_Loc += 7;
	add	DWORD PTR [rbp-4], 7	# Int_Loc,
# dry.c:985:       Int_Glob = Int_Loc;
	mov	eax, DWORD PTR [rbp-4]	# tmp117, Int_Loc
	mov	DWORD PTR Int_Glob[rip], eax	# Int_Glob, tmp117
# dry.c:986:       return (true);
	mov	eax, 1	# _15,
	jmp	.L25	#
.L26:
# dry.c:989:       return (false);
	mov	eax, 0	# _15,
.L25:
# dry.c:991: } /* Func_2 */
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	Func_2, .-Func_2
	.globl	Func_3
	.type	Func_3, @function
Func_3:
.LFB11:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR [rbp-20], edi	# Enum_Par_Val, Enum_Par_Val
# dry.c:1001:   Enum_Loc = Enum_Par_Val;
	mov	eax, DWORD PTR [rbp-20]	# tmp100, Enum_Par_Val
	mov	DWORD PTR [rbp-4], eax	# Enum_Loc, tmp100
# dry.c:1002:   if (Enum_Loc == Ident_3)
	cmp	DWORD PTR [rbp-4], 2	# Enum_Loc,
	jne	.L28	#,
# dry.c:1004:     return (true);
	mov	eax, 1	# _1,
	jmp	.L29	#
.L28:
# dry.c:1006:     return (false);
	mov	eax, 0	# _1,
.L29:
# dry.c:1007: } /* Func_3 */
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	Func_3, .-Func_3
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
