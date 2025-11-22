	.arch armv8-a
	.file	"dry.c"
// GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.2) version 9.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu -D PASS2 dry.c
// -march=armv8-a -mlittle-endian -mabi=lp64 -auxbase-strip arm_O0.s -O0
// -Wno-old-style-definition -fverbose-asm -fasynchronous-unwind-tables
// -fstack-protector-strong -Wformat -Wformat-security
// -fstack-clash-protection
// options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
// -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec -fcommon
// -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
// -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
// -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
// -fipa-stack-alignment -fira-hoist-pressure -fira-share-save-slots
// -fira-share-spill-slots -fivopts -fkeep-static-consts
// -fleading-underscore -flifetime-dse -flto-odr-type-merging -fmath-errno
// -fmerge-debug-strings -fomit-frame-pointer -fpeephole -fplt
// -fprefetch-loop-arrays -freg-struct-return
// -fsched-critical-path-heuristic -fsched-dep-count-heuristic
// -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
// -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
// -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
// -fshow-column -fshrink-wrap-separate -fsigned-zeros
// -fsplit-ivs-in-unroller -fssa-backprop -fstack-clash-protection
// -fstack-protector-strong -fstdarg-opt -fstrict-volatile-bitfields
// -fsync-libcalls -ftrapping-math -ftree-cselim -ftree-forwprop
// -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
// -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
// -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
// -fverbose-asm -fzero-initialized-in-bss -mfix-cortex-a53-835769
// -mfix-cortex-a53-843419 -mglibc -mlittle-endian
// -momit-leaf-frame-pointer -mpc-relative-literal-loads

	.text
	.align	2
	.global	Proc_6
	.type	Proc_6, %function
Proc_6:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	w0, [sp, 28]	// Enum_Val_Par, Enum_Val_Par
	str	x1, [sp, 16]	// Enum_Ref_Par, Enum_Ref_Par
// dry.c:868:   *Enum_Ref_Par = Enum_Val_Par;
	ldr	x0, [sp, 16]	// tmp92, Enum_Ref_Par
	ldr	w1, [sp, 28]	// tmp93, Enum_Val_Par
	str	w1, [x0]	// tmp93, *Enum_Ref_Par_7(D)
// dry.c:869:   if (! Func_3 (Enum_Val_Par))
	ldr	w0, [sp, 28]	//, Enum_Val_Par
	bl	Func_3		//
// dry.c:869:   if (! Func_3 (Enum_Val_Par))
	cmp	w0, 0	// _1,
	bne	.L2		//,
// dry.c:871:     *Enum_Ref_Par = Ident_4;
	ldr	x0, [sp, 16]	// tmp94, Enum_Ref_Par
	mov	w1, 3	// tmp95,
	str	w1, [x0]	// tmp95, *Enum_Ref_Par_7(D)
.L2:
// dry.c:872:   switch (Enum_Val_Par)
	ldr	w0, [sp, 28]	// tmp96, Enum_Val_Par
	cmp	w0, 4	// tmp96,
	beq	.L3		//,
	ldr	w0, [sp, 28]	// tmp97, Enum_Val_Par
	cmp	w0, 4	// tmp97,
	bhi	.L11		//,
	ldr	w0, [sp, 28]	// tmp98, Enum_Val_Par
	cmp	w0, 3	// tmp98,
	beq	.L12		//,
	ldr	w0, [sp, 28]	// tmp99, Enum_Val_Par
	cmp	w0, 3	// tmp99,
	bhi	.L11		//,
	ldr	w0, [sp, 28]	// tmp100, Enum_Val_Par
	cmp	w0, 2	// tmp100,
	beq	.L6		//,
	ldr	w0, [sp, 28]	// tmp101, Enum_Val_Par
	cmp	w0, 2	// tmp101,
	bhi	.L11		//,
	ldr	w0, [sp, 28]	// tmp102, Enum_Val_Par
	cmp	w0, 0	// tmp102,
	beq	.L7		//,
	ldr	w0, [sp, 28]	// tmp103, Enum_Val_Par
	cmp	w0, 1	// tmp103,
	beq	.L8		//,
// dry.c:891: } /* Proc_6 */
	b	.L11		//
.L7:
// dry.c:875:       *Enum_Ref_Par = Ident_1;
	ldr	x0, [sp, 16]	// tmp104, Enum_Ref_Par
	str	wzr, [x0]	//, *Enum_Ref_Par_7(D)
// dry.c:876:       break;
	b	.L4		//
.L8:
// dry.c:878:       if (Int_Glob > 100)
	adrp	x0, :got:Int_Glob	// tmp106,
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp105, tmp106,
	ldr	w0, [x0]	// Int_Glob.0_2, Int_Glob
// dry.c:878:       if (Int_Glob > 100)
	cmp	w0, 100	// Int_Glob.0_2,
	ble	.L9		//,
// dry.c:880:       *Enum_Ref_Par = Ident_1;
	ldr	x0, [sp, 16]	// tmp107, Enum_Ref_Par
	str	wzr, [x0]	//, *Enum_Ref_Par_7(D)
// dry.c:882:       break;
	b	.L4		//
.L9:
// dry.c:881:       else *Enum_Ref_Par = Ident_4;
	ldr	x0, [sp, 16]	// tmp108, Enum_Ref_Par
	mov	w1, 3	// tmp109,
	str	w1, [x0]	// tmp109, *Enum_Ref_Par_7(D)
// dry.c:882:       break;
	b	.L4		//
.L6:
// dry.c:884:       *Enum_Ref_Par = Ident_2;
	ldr	x0, [sp, 16]	// tmp110, Enum_Ref_Par
	mov	w1, 1	// tmp111,
	str	w1, [x0]	// tmp111, *Enum_Ref_Par_7(D)
// dry.c:885:       break;
	b	.L4		//
.L3:
// dry.c:888:       *Enum_Ref_Par = Ident_3;
	ldr	x0, [sp, 16]	// tmp112, Enum_Ref_Par
	mov	w1, 2	// tmp113,
	str	w1, [x0]	// tmp113, *Enum_Ref_Par_7(D)
// dry.c:889:       break;
	b	.L4		//
.L12:
// dry.c:886:     case Ident_4: break;
	nop	
.L4:
.L11:
// dry.c:891: } /* Proc_6 */
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	Proc_6, .-Proc_6
	.align	2
	.global	Proc_7
	.type	Proc_7, %function
Proc_7:
.LFB7:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// Int_1_Par_Val, Int_1_Par_Val
	str	w1, [sp, 8]	// Int_2_Par_Val, Int_2_Par_Val
	str	x2, [sp]	// Int_Par_Ref, Int_Par_Ref
// dry.c:906:   Int_Loc = Int_1_Par_Val + 2;
	ldr	w0, [sp, 12]	// tmp92, Int_1_Par_Val
	add	w0, w0, 2	// tmp91, tmp92,
	str	w0, [sp, 28]	// tmp91, Int_Loc
// dry.c:907:   *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
	ldr	w1, [sp, 8]	// tmp93, Int_2_Par_Val
	ldr	w0, [sp, 28]	// tmp94, Int_Loc
	add	w1, w1, w0	// _1, tmp93, tmp94
// dry.c:907:   *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
	ldr	x0, [sp]	// tmp95, Int_Par_Ref
	str	w1, [x0]	// _1, *Int_Par_Ref_6(D)
// dry.c:908: } /* Proc_7 */
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	Proc_7, .-Proc_7
	.align	2
	.global	Proc_8
	.type	Proc_8, %function
Proc_8:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #48	//,,
	.cfi_def_cfa_offset 48
	str	x0, [sp, 24]	// Arr_1_Par_Ref, Arr_1_Par_Ref
	str	x1, [sp, 16]	// Arr_2_Par_Ref, Arr_2_Par_Ref
	str	w2, [sp, 12]	// Int_1_Par_Val, Int_1_Par_Val
	str	w3, [sp, 8]	// Int_2_Par_Val, Int_2_Par_Val
// dry.c:920:   Int_Loc = Int_1_Par_Val + 5;
	ldr	w0, [sp, 12]	// tmp128, Int_1_Par_Val
	add	w0, w0, 5	// tmp127, tmp128,
	str	w0, [sp, 44]	// tmp127, Int_Loc
// dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	ldrsw	x0, [sp, 44]	// _1, Int_Loc
	lsl	x0, x0, 2	// _2, _1,
	ldr	x1, [sp, 24]	// tmp129, Arr_1_Par_Ref
	add	x0, x1, x0	// _3, tmp129, _2
// dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	ldr	w1, [sp, 8]	// tmp130, Int_2_Par_Val
	str	w1, [x0]	// tmp130, *_3
// dry.c:922:   Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
	ldrsw	x0, [sp, 44]	// _4, Int_Loc
	lsl	x0, x0, 2	// _5, _4,
	ldr	x1, [sp, 24]	// tmp131, Arr_1_Par_Ref
	add	x1, x1, x0	// _6, tmp131, _5
// dry.c:922:   Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
	ldrsw	x0, [sp, 44]	// _7, Int_Loc
	add	x0, x0, 1	// _8, _7,
	lsl	x0, x0, 2	// _9, _8,
	ldr	x2, [sp, 24]	// tmp132, Arr_1_Par_Ref
	add	x0, x2, x0	// _10, tmp132, _9
// dry.c:922:   Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
	ldr	w1, [x1]	// _11, *_6
// dry.c:922:   Arr_1_Par_Ref [Int_Loc+1] = Arr_1_Par_Ref [Int_Loc];
	str	w1, [x0]	// _11, *_10
// dry.c:923:   Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
	ldrsw	x0, [sp, 44]	// _12, Int_Loc
	add	x0, x0, 30	// _13, _12,
	lsl	x0, x0, 2	// _14, _13,
	ldr	x1, [sp, 24]	// tmp133, Arr_1_Par_Ref
	add	x0, x1, x0	// _15, tmp133, _14
// dry.c:923:   Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
	ldr	w1, [sp, 44]	// tmp134, Int_Loc
	str	w1, [x0]	// tmp134, *_15
// dry.c:924:   for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
	ldr	w0, [sp, 44]	// tmp135, Int_Loc
	str	w0, [sp, 40]	// tmp135, Int_Index
// dry.c:924:   for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
	b	.L15		//
.L16:
// dry.c:925:     Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
	ldrsw	x1, [sp, 44]	// _16, Int_Loc
	mov	x0, x1	// tmp136, _16
	lsl	x0, x0, 1	// tmp137, tmp136,
	add	x0, x0, x1	// tmp136, tmp136, _16
	lsl	x0, x0, 3	// tmp138, tmp136,
	add	x0, x0, x1	// tmp136, tmp136, _16
	lsl	x0, x0, 3	// tmp139, tmp136,
	mov	x1, x0	// _17, tmp136
	ldr	x0, [sp, 16]	// tmp140, Arr_2_Par_Ref
	add	x0, x0, x1	// _18, tmp140, _17
// dry.c:925:     Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
	ldrsw	x1, [sp, 40]	// tmp141, Int_Index
	ldr	w2, [sp, 44]	// tmp142, Int_Loc
	str	w2, [x0, x1, lsl 2]	// tmp142, *_18
// dry.c:924:   for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
	ldr	w0, [sp, 40]	// tmp144, Int_Index
	add	w0, w0, 1	// tmp143, tmp144,
	str	w0, [sp, 40]	// tmp143, Int_Index
.L15:
// dry.c:924:   for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
	ldr	w0, [sp, 44]	// tmp145, Int_Loc
	add	w0, w0, 1	// _19, tmp145,
// dry.c:924:   for (Int_Index = Int_Loc; Int_Index <= Int_Loc+1; ++Int_Index)
	ldr	w1, [sp, 40]	// tmp146, Int_Index
	cmp	w1, w0	// tmp146, _19
	ble	.L16		//,
// dry.c:926:   Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
	ldrsw	x1, [sp, 44]	// _20, Int_Loc
	mov	x0, x1	// tmp147, _20
	lsl	x0, x0, 1	// tmp148, tmp147,
	add	x0, x0, x1	// tmp147, tmp147, _20
	lsl	x0, x0, 3	// tmp149, tmp147,
	add	x0, x0, x1	// tmp147, tmp147, _20
	lsl	x0, x0, 3	// tmp150, tmp147,
	mov	x1, x0	// _21, tmp147
	ldr	x0, [sp, 16]	// tmp151, Arr_2_Par_Ref
	add	x0, x0, x1	// _22, tmp151, _21
	ldr	w1, [sp, 44]	// tmp152, Int_Loc
	sub	w1, w1, #1	// _23, tmp152,
	sxtw	x1, w1	// tmp153, _23
	ldr	w2, [x0, x1, lsl 2]	// _24, *_22
	ldrsw	x1, [sp, 44]	// _25, Int_Loc
	mov	x0, x1	// tmp154, _25
	lsl	x0, x0, 1	// tmp155, tmp154,
	add	x0, x0, x1	// tmp154, tmp154, _25
	lsl	x0, x0, 3	// tmp156, tmp154,
	add	x0, x0, x1	// tmp154, tmp154, _25
	lsl	x0, x0, 3	// tmp157, tmp154,
	mov	x1, x0	// _26, tmp154
	ldr	x0, [sp, 16]	// tmp158, Arr_2_Par_Ref
	add	x0, x0, x1	// _27, tmp158, _26
	ldr	w1, [sp, 44]	// tmp159, Int_Loc
	sub	w1, w1, #1	// _28, tmp159,
	add	w2, w2, 1	// _29, _24,
	sxtw	x1, w1	// tmp160, _28
	str	w2, [x0, x1, lsl 2]	// _29, *_27
// dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	ldrsw	x0, [sp, 44]	// _30, Int_Loc
	lsl	x0, x0, 2	// _31, _30,
	ldr	x1, [sp, 24]	// tmp161, Arr_1_Par_Ref
	add	x2, x1, x0	// _32, tmp161, _31
// dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	ldrsw	x1, [sp, 44]	// _33, Int_Loc
	mov	x0, x1	// tmp162, _33
	lsl	x0, x0, 1	// tmp163, tmp162,
	add	x0, x0, x1	// tmp162, tmp162, _33
	lsl	x0, x0, 3	// tmp164, tmp162,
	add	x0, x0, x1	// tmp162, tmp162, _33
	lsl	x0, x0, 3	// tmp165, tmp162,
	add	x0, x0, 4000	// _35, _34,
	ldr	x1, [sp, 16]	// tmp166, Arr_2_Par_Ref
	add	x0, x1, x0	// _36, tmp166, _35
// dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	ldr	w2, [x2]	// _37, *_32
// dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	ldrsw	x1, [sp, 44]	// tmp167, Int_Loc
	str	w2, [x0, x1, lsl 2]	// _37, *_36
// dry.c:928:   Int_Glob = 5;
	adrp	x0, :got:Int_Glob	// tmp169,
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp168, tmp169,
	mov	w1, 5	// tmp170,
	str	w1, [x0]	// tmp170, Int_Glob
// dry.c:929: } /* Proc_8 */
	nop	
	add	sp, sp, 48	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	Proc_8, .-Proc_8
	.align	2
	.global	Func_1
	.type	Func_1, %function
Func_1:
.LFB9:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	strb	w0, [sp, 15]	// Ch_1_Par_Val, Ch_1_Par_Val
	strb	w1, [sp, 14]	// Ch_2_Par_Val, Ch_2_Par_Val
// dry.c:942:   Ch_1_Loc = Ch_1_Par_Val;
	ldrb	w0, [sp, 15]	// tmp92, Ch_1_Par_Val
	strb	w0, [sp, 30]	// tmp92, Ch_1_Loc
// dry.c:943:   Ch_2_Loc = Ch_1_Loc;
	ldrb	w0, [sp, 30]	// tmp93, Ch_1_Loc
	strb	w0, [sp, 31]	// tmp93, Ch_2_Loc
// dry.c:944:   if (Ch_2_Loc != Ch_2_Par_Val)
	ldrb	w1, [sp, 31]	// tmp94, Ch_2_Loc
	ldrb	w0, [sp, 14]	// tmp95, Ch_2_Par_Val
	cmp	w1, w0	// tmp94, tmp95
	beq	.L18		//,
// dry.c:946:     return (Ident_1);
	mov	w0, 0	// _1,
	b	.L19		//
.L18:
// dry.c:949:     Ch_1_Glob = Ch_1_Loc;
	adrp	x0, :got:Ch_1_Glob	// tmp97,
	ldr	x0, [x0, #:got_lo12:Ch_1_Glob]	// tmp96, tmp97,
	ldrb	w1, [sp, 30]	// tmp98, Ch_1_Loc
	strb	w1, [x0]	// tmp98, Ch_1_Glob
// dry.c:950:     return (Ident_2);
	mov	w0, 1	// _1,
.L19:
// dry.c:952: } /* Func_1 */
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE9:
	.size	Func_1, .-Func_1
	.align	2
	.global	Func_2
	.type	Func_2, %function
Func_2:
.LFB10:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// Str_1_Par_Ref, Str_1_Par_Ref
	str	x1, [sp, 16]	// Str_2_Par_Ref, Str_2_Par_Ref
// dry.c:964:   Int_Loc = 2;
	mov	w0, 2	// tmp101,
	str	w0, [sp, 44]	// tmp101, Int_Loc
// dry.c:965:   while (Int_Loc <= 2) /* loop body executed once */
	b	.L21		//
.L22:
// dry.c:966:     if (Func_1 (Str_1_Par_Ref[Int_Loc],
	ldrsw	x0, [sp, 44]	// _1, Int_Loc
	ldr	x1, [sp, 24]	// tmp102, Str_1_Par_Ref
	add	x0, x1, x0	// _2, tmp102, _1
// dry.c:966:     if (Func_1 (Str_1_Par_Ref[Int_Loc],
	ldrb	w2, [x0]	// _3, *_2
// dry.c:967:                 Str_2_Par_Ref[Int_Loc+1]) == Ident_1)
	ldrsw	x0, [sp, 44]	// _4, Int_Loc
	add	x0, x0, 1	// _5, _4,
	ldr	x1, [sp, 16]	// tmp103, Str_2_Par_Ref
	add	x0, x1, x0	// _6, tmp103, _5
// dry.c:966:     if (Func_1 (Str_1_Par_Ref[Int_Loc],
	ldrb	w0, [x0]	// _7, *_6
	mov	w1, w0	//, _7
	mov	w0, w2	//, _3
	bl	Func_1		//
// dry.c:966:     if (Func_1 (Str_1_Par_Ref[Int_Loc],
	cmp	w0, 0	// _8,
	bne	.L21		//,
// dry.c:970:       Ch_Loc = 'A';
	mov	w0, 65	// tmp104,
	strb	w0, [sp, 43]	// tmp104, Ch_Loc
// dry.c:971:       Int_Loc += 1;
	ldr	w0, [sp, 44]	// tmp106, Int_Loc
	add	w0, w0, 1	// tmp105, tmp106,
	str	w0, [sp, 44]	// tmp105, Int_Loc
.L21:
// dry.c:965:   while (Int_Loc <= 2) /* loop body executed once */
	ldr	w0, [sp, 44]	// tmp107, Int_Loc
	cmp	w0, 2	// tmp107,
	ble	.L22		//,
// dry.c:973:   if (Ch_Loc >= 'W' && Ch_Loc < 'Z')
	ldrb	w0, [sp, 43]	// tmp108, Ch_Loc
	cmp	w0, 86	// tmp108,
	bls	.L23		//,
// dry.c:973:   if (Ch_Loc >= 'W' && Ch_Loc < 'Z')
	ldrb	w0, [sp, 43]	// tmp109, Ch_Loc
	cmp	w0, 89	// tmp109,
	bhi	.L23		//,
// dry.c:975:     Int_Loc = 7;
	mov	w0, 7	// tmp110,
	str	w0, [sp, 44]	// tmp110, Int_Loc
.L23:
// dry.c:976:   if (Ch_Loc == 'R')
	ldrb	w0, [sp, 43]	// tmp111, Ch_Loc
	cmp	w0, 82	// tmp111,
	bne	.L24		//,
// dry.c:978:     return (true);
	mov	w0, 1	// _13,
	b	.L25		//
.L24:
// dry.c:981:     if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
	ldr	x1, [sp, 16]	//, Str_2_Par_Ref
	ldr	x0, [sp, 24]	//, Str_1_Par_Ref
	bl	strcmp		//
// dry.c:981:     if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
	cmp	w0, 0	// _9,
	ble	.L26		//,
// dry.c:984:       Int_Loc += 7;
	ldr	w0, [sp, 44]	// tmp113, Int_Loc
	add	w0, w0, 7	// tmp112, tmp113,
	str	w0, [sp, 44]	// tmp112, Int_Loc
// dry.c:985:       Int_Glob = Int_Loc;
	adrp	x0, :got:Int_Glob	// tmp115,
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp114, tmp115,
	ldr	w1, [sp, 44]	// tmp116, Int_Loc
	str	w1, [x0]	// tmp116, Int_Glob
// dry.c:986:       return (true);
	mov	w0, 1	// _13,
	b	.L25		//
.L26:
// dry.c:989:       return (false);
	mov	w0, 0	// _13,
.L25:
// dry.c:991: } /* Func_2 */
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE10:
	.size	Func_2, .-Func_2
	.align	2
	.global	Func_3
	.type	Func_3, %function
Func_3:
.LFB11:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	w0, [sp, 12]	// Enum_Par_Val, Enum_Par_Val
// dry.c:1001:   Enum_Loc = Enum_Par_Val;
	ldr	w0, [sp, 12]	// tmp92, Enum_Par_Val
	str	w0, [sp, 28]	// tmp92, Enum_Loc
// dry.c:1002:   if (Enum_Loc == Ident_3)
	ldr	w0, [sp, 28]	// tmp93, Enum_Loc
	cmp	w0, 2	// tmp93,
	bne	.L28		//,
// dry.c:1004:     return (true);
	mov	w0, 1	// _1,
	b	.L29		//
.L28:
// dry.c:1006:     return (false);
	mov	w0, 0	// _1,
.L29:
// dry.c:1007: } /* Func_3 */
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE11:
	.size	Func_3, .-Func_3
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
