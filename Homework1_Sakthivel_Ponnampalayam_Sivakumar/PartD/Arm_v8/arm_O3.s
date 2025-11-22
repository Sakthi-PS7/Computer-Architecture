	.arch armv8-a
	.file	"dry.c"
// GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.2) version 9.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu -D PASS2 dry.c
// -march=armv8-a -mlittle-endian -mabi=lp64 -auxbase-strip arm_O3.s -O3
// -Wno-old-style-definition -fverbose-asm -fasynchronous-unwind-tables
// -fstack-protector-strong -Wformat -Wformat-security
// -fstack-clash-protection
// options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
// -falign-functions -falign-jumps -falign-labels -falign-loops
// -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec
// -fbranch-count-reg -fcaller-saves -fcode-hoisting
// -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
// -fcrossjumping -fcse-follow-jumps -fdefer-pop
// -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
// -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
// -fexpensive-optimizations -fforward-propagate -ffp-int-builtin-inexact
// -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm -fgnu-runtime
// -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads -fident
// -fif-conversion -fif-conversion2 -findirect-inlining -finline
// -finline-atomics -finline-functions -finline-functions-called-once
// -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-cp-clone -fipa-icf
// -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
// -fipa-ra -fipa-reference -fipa-reference-addressable -fipa-sra
// -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
// -fira-share-save-slots -fira-share-spill-slots
// -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
// -fleading-underscore -flifetime-dse -floop-interchange
// -floop-unroll-and-jam -flra-remat -flto-odr-type-merging -fmath-errno
// -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
// -fomit-frame-pointer -foptimize-sibling-calls -foptimize-strlen
// -fpartial-inlining -fpeel-loops -fpeephole -fpeephole2 -fplt
// -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
// -freorder-blocks -freorder-functions -frerun-cse-after-loop
// -fsched-critical-path-heuristic -fsched-dep-count-heuristic
// -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
// -fsched-pressure -fsched-rank-heuristic -fsched-spec
// -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
// -fschedule-insns -fschedule-insns2 -fsection-anchors
// -fsemantic-interposition -fshow-column -fshrink-wrap
// -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
// -fsplit-loops -fsplit-paths -fsplit-wide-types -fssa-backprop
// -fssa-phiopt -fstack-clash-protection -fstack-protector-strong
// -fstdarg-opt -fstore-merging -fstrict-aliasing
// -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
// -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
// -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
// -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
// -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
// -ftree-loop-distribution -ftree-loop-if-convert -ftree-loop-im
// -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
// -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
// -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
// -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
// -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time
// -funswitch-loops -funwind-tables -fverbose-asm
// -fversion-loops-for-strides -fzero-initialized-in-bss
// -mfix-cortex-a53-835769 -mfix-cortex-a53-843419 -mglibc -mlittle-endian
// -momit-leaf-frame-pointer -mpc-relative-literal-loads

	.text
	.align	2
	.p2align 3,,7
	.global	Proc_6
	.type	Proc_6, %function
Proc_6:
.LFB50:
	.cfi_startproc
// dry.c:1002:   if (Enum_Loc == Ident_3)
	cmp	w0, 2	// Enum_Val_Par,
	beq	.L2		//,
// dry.c:871:     *Enum_Ref_Par = Ident_4;
	mov	w2, 3	// tmp93,
	str	w2, [x1]	// tmp93, *Enum_Ref_Par_5(D)
// dry.c:872:   switch (Enum_Val_Par)
	cmp	w0, 1	// Enum_Val_Par,
	beq	.L3		//,
	bls	.L7		//,
	cmp	w0, 4	// Enum_Val_Par,
	bne	.L1		//,
// dry.c:888:       *Enum_Ref_Par = Ident_3;
	mov	w0, 2	// tmp98,
	str	w0, [x1]	// tmp98, *Enum_Ref_Par_5(D)
.L1:
// dry.c:891: } /* Proc_6 */
	ret	
	.p2align 2,,3
.L3:
// dry.c:878:       if (Int_Glob > 100)
	adrp	x0, :got:Int_Glob	// tmp95,
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp94, tmp95,
// dry.c:878:       if (Int_Glob > 100)
	ldr	w0, [x0]	//, Int_Glob
	cmp	w0, 100	// Int_Glob,
	ble	.L1		//,
.L7:
// dry.c:880:       *Enum_Ref_Par = Ident_1;
	str	wzr, [x1]	//, *Enum_Ref_Par_5(D)
// dry.c:891: } /* Proc_6 */
	ret	
	.p2align 2,,3
.L2:
// dry.c:884:       *Enum_Ref_Par = Ident_2;
	mov	w0, 1	// tmp97,
	str	w0, [x1]	// tmp97, *Enum_Ref_Par_5(D)
// dry.c:891: } /* Proc_6 */
	ret	
	.cfi_endproc
.LFE50:
	.size	Proc_6, .-Proc_6
	.align	2
	.p2align 3,,7
	.global	Proc_7
	.type	Proc_7, %function
Proc_7:
.LFB51:
	.cfi_startproc
// dry.c:906:   Int_Loc = Int_1_Par_Val + 2;
	add	w0, w0, 2	// Int_Loc, tmp97,
// dry.c:907:   *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
	add	w0, w0, w1	// tmp96, Int_Loc, tmp98
// dry.c:907:   *Int_Par_Ref = Int_2_Par_Val + Int_Loc;
	str	w0, [x2]	// tmp96, *Int_Par_Ref_6(D)
// dry.c:908: } /* Proc_7 */
	ret	
	.cfi_endproc
.LFE51:
	.size	Proc_7, .-Proc_7
	.align	2
	.p2align 3,,7
	.global	Proc_8
	.type	Proc_8, %function
Proc_8:
.LFB52:
	.cfi_startproc
// dry.c:920:   Int_Loc = Int_1_Par_Val + 5;
	add	w4, w2, 5	// Int_Loc, Int_1_Par_Val,
// dry.c:925:     Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
	mov	w5, 200	// tmp114,
// dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	dup	v0.2s, w3	// tmp111, tmp127
	sbfiz	x2, x2, 2, 32	// _28, Int_1_Par_Val,,
// dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	sbfiz	x6, x4, 2, 32	// _2, Int_Loc,,
// dry.c:925:     Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
	smull	x5, w4, w5	// _40, Int_Loc, tmp114
// dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	add	x7, x0, x6	// _3, Arr_1_Par_Ref, _2
	add	x3, x2, x5	// tmp116, _28, _40
// dry.c:921:   Arr_1_Par_Ref [Int_Loc] = Int_2_Par_Val;
	str	d0, [x0, x6]	// tmp111, MEM[(int *)_3]
	add	x3, x1, x3	// _12, Arr_2_Par_Ref, tmp116
// dry.c:923:   Arr_1_Par_Ref [Int_Loc+30] = Int_Loc;
	str	w4, [x7, 120]	// Int_Loc, *_9
// dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	add	x1, x1, x2	// tmp119, Arr_2_Par_Ref, _28
// dry.c:928:   Int_Glob = 5;
	adrp	x6, :got:Int_Glob	// tmp122,
// dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	add	x1, x1, x5	// tmp120, tmp119, _40
// dry.c:926:   Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
	ldr	w5, [x3, 16]	//, MEM[(int[50] *)_12 + 16B]
// dry.c:928:   Int_Glob = 5;
	ldr	x2, [x6, #:got_lo12:Int_Glob]	// tmp121, tmp122,
// dry.c:926:   Arr_2_Par_Ref [Int_Loc] [Int_Loc-1] += 1;
	add	w5, w5, 1	// tmp117, MEM[(int[50] *)_12 + 16B],
// dry.c:925:     Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
	stp	w5, w4, [x3, 16]	// tmp117, Int_Loc, MEM[(int[50] *)_12 + 16B]
// dry.c:928:   Int_Glob = 5;
	mov	w6, 5	// tmp123,
// dry.c:925:     Arr_2_Par_Ref [Int_Loc] [Int_Index] = Int_Loc;
	str	w4, [x3, 24]	// Int_Loc, MEM[(int[50] *)_12 + 24B]
// dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	ldr	w0, [x0, w4, sxtw 2]	//, *_3
// dry.c:928:   Int_Glob = 5;
	str	w6, [x2]	// tmp123, Int_Glob
// dry.c:927:   Arr_2_Par_Ref [Int_Loc+20] [Int_Loc] = Arr_1_Par_Ref [Int_Loc];
	str	w0, [x1, 4020]	// _20, MEM[(int[50] *)_35 + 20B]
// dry.c:929: } /* Proc_8 */
	ret	
	.cfi_endproc
.LFE52:
	.size	Proc_8, .-Proc_8
	.align	2
	.p2align 3,,7
	.global	Func_1
	.type	Func_1, %function
Func_1:
.LFB53:
	.cfi_startproc
// dry.c:938: {
	and	w1, w1, 255	// Ch_2_Par_Val, Ch_2_Par_Val
	and	w2, w0, 255	// Ch_1_Par_Val, Ch_1_Par_Val
// dry.c:944:   if (Ch_2_Loc != Ch_2_Par_Val)
	cmp	w1, w0, uxtb	// Ch_2_Par_Val, Ch_1_Par_Val
	beq	.L14		//,
// dry.c:946:     return (Ident_1);
	mov	w0, 0	// <retval>,
// dry.c:952: } /* Func_1 */
	ret	
	.p2align 2,,3
.L14:
// dry.c:949:     Ch_1_Glob = Ch_1_Loc;
	adrp	x1, :got:Ch_1_Glob	// tmp94,
// dry.c:950:     return (Ident_2);
	mov	w0, 1	// <retval>,
// dry.c:949:     Ch_1_Glob = Ch_1_Loc;
	ldr	x1, [x1, #:got_lo12:Ch_1_Glob]	// tmp93, tmp94,
	strb	w2, [x1]	// Ch_1_Par_Val, Ch_1_Glob
// dry.c:952: } /* Func_1 */
	ret	
	.cfi_endproc
.LFE53:
	.size	Func_1, .-Func_1
	.align	2
	.p2align 3,,7
	.global	Func_2
	.type	Func_2, %function
Func_2:
.LFB54:
	.cfi_startproc
	ldrb	w3, [x0, 2]	// MEM[(char *)Str_1_Par_Ref_15(D) + 2B], MEM[(char *)Str_1_Par_Ref_15(D) + 2B]
	ldrb	w2, [x1, 3]	// MEM[(char *)Str_2_Par_Ref_16(D) + 3B], MEM[(char *)Str_2_Par_Ref_16(D) + 3B]
	cmp	w3, w2	// MEM[(char *)Str_1_Par_Ref_15(D) + 2B], MEM[(char *)Str_2_Par_Ref_16(D) + 3B]
	beq	.L17		//,
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// dry.c:981:     if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
	bl	strcmp		//
// dry.c:981:     if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
	cmp	w0, 0	// tmp105,
// dry.c:989:       return (false);
	mov	w0, 0	// <retval>,
// dry.c:981:     if (strcmp (Str_1_Par_Ref, Str_2_Par_Ref) > 0)
	ble	.L15		//,
// dry.c:985:       Int_Glob = Int_Loc;
	adrp	x1, :got:Int_Glob	// tmp100,
	mov	w2, 10	// tmp101,
// dry.c:986:       return (true);
	mov	w0, 1	// <retval>,
// dry.c:985:       Int_Glob = Int_Loc;
	ldr	x1, [x1, #:got_lo12:Int_Glob]	// tmp99, tmp100,
	str	w2, [x1]	// tmp101, Int_Glob
.L15:
// dry.c:991: } /* Func_2 */
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
.L17:
	b	.L17		//
	.cfi_endproc
.LFE54:
	.size	Func_2, .-Func_2
	.align	2
	.p2align 3,,7
	.global	Func_3
	.type	Func_3, %function
Func_3:
.LFB55:
	.cfi_startproc
// dry.c:1002:   if (Enum_Loc == Ident_3)
	cmp	w0, 2	// tmp96,
// dry.c:1007: } /* Func_3 */
	cset	w0, eq	//,
	ret	
	.cfi_endproc
.LFE55:
	.size	Func_3, .-Func_3
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
