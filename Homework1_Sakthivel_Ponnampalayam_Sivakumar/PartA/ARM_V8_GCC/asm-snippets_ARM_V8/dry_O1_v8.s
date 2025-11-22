	.arch armv8-a
	.file	"dry.c"
// GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.2) version 9.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu dry.c -mlittle-endian
// -mabi=lp64 -auxbase-strip asm-snippets_ARM_V8/dry_O1_v8.s -O1
// -Wno-old-style-definition -fverbose-asm -fasynchronous-unwind-tables
// -fstack-protector-strong -Wformat -Wformat-security
// -fstack-clash-protection
// options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
// -fassume-phsa -fasynchronous-unwind-tables -fauto-inc-dec
// -fbranch-count-reg -fcombine-stack-adjustments -fcommon -fcompare-elim
// -fcprop-registers -fdefer-pop -fdelete-null-pointer-checks
// -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
// -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm
// -fgnu-runtime -fgnu-unique -fguess-branch-probability -fident
// -fif-conversion -fif-conversion2 -finline -finline-atomics
// -finline-functions-called-once -fipa-profile -fipa-pure-const
// -fipa-reference -fipa-reference-addressable -fipa-stack-alignment
// -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
// -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
// -flto-odr-type-merging -fmath-errno -fmerge-constants
// -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
// -fpeephole -fplt -fprefetch-loop-arrays -freg-struct-return
// -freorder-blocks -fsched-critical-path-heuristic
// -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
// -fsched-last-insn-heuristic -fsched-pressure -fsched-rank-heuristic
// -fsched-spec -fsched-spec-insn-heuristic -fsched-stalled-insns-dep
// -fschedule-fusion -fsection-anchors -fsemantic-interposition
// -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
// -fsplit-ivs-in-unroller -fsplit-wide-types -fssa-backprop -fssa-phiopt
// -fstack-clash-protection -fstack-protector-strong -fstdarg-opt
// -fstrict-volatile-bitfields -fsync-libcalls -ftoplevel-reorder
// -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp
// -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim -ftree-dce
// -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
// -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
// -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
// -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
// -ftree-ter -funit-at-a-time -funwind-tables -fverbose-asm
// -fzero-initialized-in-bss -mfix-cortex-a53-835769
// -mfix-cortex-a53-843419 -mglibc -mlittle-endian
// -momit-leaf-frame-pointer -mpc-relative-literal-loads

	.text
	.align	2
	.global	Proc_2
	.type	Proc_2, %function
Proc_2:
.LFB52:
	.cfi_startproc
// dry.c:791:     if (Ch_1_Glob == 'A')
	adrp	x1, :got:Ch_1_Glob	// tmp97,
	ldr	x1, [x1, #:got_lo12:Ch_1_Glob]	// tmp96, tmp97,
// dry.c:791:     if (Ch_1_Glob == 'A')
	ldrb	w1, [x1]	// Ch_1_Glob, Ch_1_Glob
	cmp	w1, 65	// Ch_1_Glob,
	beq	.L3		//,
.L1:
// dry.c:799: } /* Proc_2 */
	ret	
.L3:
// dry.c:794:       Int_Loc -= 1;
	ldr	w1, [x0]	//, *Int_Par_Ref_7(D)
	add	w1, w1, 9	// Int_Loc, *Int_Par_Ref_7(D),
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	adrp	x2, :got:Int_Glob	// tmp102,
	ldr	x2, [x2, #:got_lo12:Int_Glob]	// tmp101, tmp102,
	ldr	w2, [x2]	//, Int_Glob
	sub	w1, w1, w2	// tmp103, Int_Loc, Int_Glob
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	str	w1, [x0]	// tmp103, *Int_Par_Ref_7(D)
// dry.c:799: } /* Proc_2 */
	b	.L1		//
	.cfi_endproc
.LFE52:
	.size	Proc_2, .-Proc_2
	.align	2
	.global	Proc_3
	.type	Proc_3, %function
Proc_3:
.LFB53:
	.cfi_startproc
	stp	x29, x30, [sp, -16]!	//,,,
	.cfi_def_cfa_offset 16
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	mov	x29, sp	//,
// dry.c:807:   if (Ptr_Glob != Null)
	adrp	x1, :got:Ptr_Glob	// tmp97,
	ldr	x1, [x1, #:got_lo12:Ptr_Glob]	// tmp96, tmp97,
	ldr	x1, [x1]	// Ptr_Glob.98_1, Ptr_Glob
// dry.c:807:   if (Ptr_Glob != Null)
	cbz	x1, .L5	// Ptr_Glob.98_1,
// dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	ldr	x1, [x1]	// _2, Ptr_Glob.98_1->Ptr_Comp
// dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	str	x1, [x0]	// _2, *Ptr_Ref_Par_8(D)
.L5:
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	adrp	x0, :got:Ptr_Glob	// tmp99,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp98, tmp99,
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	ldr	x2, [x0]	// Ptr_Glob, Ptr_Glob
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	add	x2, x2, 16	//, Ptr_Glob,
	adrp	x0, :got:Int_Glob	// tmp103,
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp102, tmp103,
	ldr	w1, [x0]	//, Int_Glob
	mov	w0, 10	//,
	bl	Proc_7		//
// dry.c:811: } /* Proc_3 */
	ldp	x29, x30, [sp], 16	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE53:
	.size	Proc_3, .-Proc_3
	.align	2
	.global	Proc_1
	.type	Proc_1, %function
Proc_1:
.LFB51:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -16
	.cfi_offset 20, -8
	mov	x20, x0	// Ptr_Val_Par, tmp128
// dry.c:753:   REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
	ldr	x19, [x0]	// Next_Record, Ptr_Val_Par_14(D)->Ptr_Comp
// dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	adrp	x0, :got:Ptr_Glob	// tmp104,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp103, tmp104,
	ldr	x0, [x0]	// Ptr_Glob.94_1, Ptr_Glob
	ldp	x2, x3, [x0]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	stp	x2, x3, [x19]	// *Ptr_Glob.94_1, *Next_Record_15
	ldp	x2, x3, [x0, 16]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	stp	x2, x3, [x19, 16]	// *Ptr_Glob.94_1, *Next_Record_15
	ldp	x2, x3, [x0, 32]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	stp	x2, x3, [x19, 32]	// *Ptr_Glob.94_1, *Next_Record_15
	ldr	x0, [x0, 48]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	str	x0, [x19, 48]	// *Ptr_Glob.94_1, *Next_Record_15
// dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	mov	w0, 5	// tmp111,
	str	w0, [x20, 16]	// tmp111, Ptr_Val_Par_14(D)->variant.var_1.Int_Comp
// dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	str	w0, [x19, 16]	// tmp111, Next_Record_15->variant.var_1.Int_Comp
// dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	ldr	x0, [x20]	// _2, Ptr_Val_Par_14(D)->Ptr_Comp
// dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	str	x0, [x19]	// _2, Next_Record_15->Ptr_Comp
// dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	mov	x0, x19	//, Next_Record
	bl	Proc_3		//
// dry.c:766:   if (Next_Record->Discr == Ident_1)
	ldr	w0, [x19, 8]	//, Next_Record_15->Discr
	cbz	w0, .L11	// Next_Record_15->Discr,
// dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	ldr	x0, [x20]	// _11, Ptr_Val_Par_14(D)->Ptr_Comp
	ldp	x2, x3, [x0]	// *_11, *_11
	stp	x2, x3, [x20]	// *_11, *Ptr_Val_Par_14(D)
	ldp	x2, x3, [x0, 16]	// *_11, *_11
	stp	x2, x3, [x20, 16]	// *_11, *Ptr_Val_Par_14(D)
	ldp	x2, x3, [x0, 32]	// *_11, *_11
	stp	x2, x3, [x20, 32]	// *_11, *Ptr_Val_Par_14(D)
	ldr	x0, [x0, 48]	// *_11, *_11
	str	x0, [x20, 48]	// *_11, *Ptr_Val_Par_14(D)
.L7:
// dry.c:778: } /* Proc_1 */
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
.L11:
	.cfi_restore_state
// dry.c:769:     Next_Record->variant.var_1.Int_Comp = 6;
	mov	w0, 6	// tmp114,
	str	w0, [x19, 16]	// tmp114, Next_Record_15->variant.var_1.Int_Comp
// dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	add	x1, x19, 12	//, Next_Record,
	ldr	w0, [x20, 12]	//, Ptr_Val_Par_14(D)->variant.var_1.Enum_Comp
	bl	Proc_6		//
// dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	adrp	x0, :got:Ptr_Glob	// tmp119,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp118, tmp119,
	ldr	x0, [x0]	// Ptr_Glob, Ptr_Glob
	ldr	x0, [x0]	// _8, Ptr_Glob.95_7->Ptr_Comp
// dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	mov	x2, x19	// tmp120, Next_Record
	str	x0, [x2], 16	// _8, Next_Record_15->Ptr_Comp
// dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	mov	w1, 10	//,
	ldr	w0, [x19, 16]	//, Next_Record_15->variant.var_1.Int_Comp
	bl	Proc_7		//
	b	.L7		//
	.cfi_endproc
.LFE51:
	.size	Proc_1, .-Proc_1
	.align	2
	.global	Proc_4
	.type	Proc_4, %function
Proc_4:
.LFB54:
	.cfi_startproc
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	adrp	x0, :got:Bool_Glob	// tmp96,
	ldr	x0, [x0, #:got_lo12:Bool_Glob]	// tmp95, tmp96,
// dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	adrp	x1, :got:Ch_1_Glob	// tmp98,
	ldr	x1, [x1, #:got_lo12:Ch_1_Glob]	// tmp97, tmp98,
	ldrb	w1, [x1]	// Ch_1_Glob, Ch_1_Glob
	cmp	w1, 65	// Ch_1_Glob,
	cset	w1, eq	// Bool_Loc,
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	ldr	w2, [x0]	//, Bool_Glob
	orr	w1, w1, w2	// tmp104, Bool_Loc, Bool_Glob
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	str	w1, [x0]	// tmp104, Bool_Glob
// dry.c:822:   Ch_2_Glob = 'B';
	adrp	x0, :got:Ch_2_Glob	// tmp107,
	ldr	x0, [x0, #:got_lo12:Ch_2_Glob]	// tmp106, tmp107,
	mov	w1, 66	// tmp108,
	strb	w1, [x0]	// tmp108, Ch_2_Glob
// dry.c:823: } /* Proc_4 */
	ret	
	.cfi_endproc
.LFE54:
	.size	Proc_4, .-Proc_4
	.align	2
	.global	Proc_5
	.type	Proc_5, %function
Proc_5:
.LFB55:
	.cfi_startproc
// dry.c:830:   Ch_1_Glob = 'A';
	adrp	x0, :got:Ch_1_Glob	// tmp91,
	ldr	x0, [x0, #:got_lo12:Ch_1_Glob]	// tmp90, tmp91,
	mov	w1, 65	// tmp92,
	strb	w1, [x0]	// tmp92, Ch_1_Glob
// dry.c:831:   Bool_Glob = false;
	adrp	x0, :got:Bool_Glob	// tmp94,
	ldr	x0, [x0, #:got_lo12:Bool_Glob]	// tmp93, tmp94,
	str	wzr, [x0]	//, Bool_Glob
// dry.c:832: } /* Proc_5 */
	ret	
	.cfi_endproc
.LFE55:
	.size	Proc_5, .-Proc_5
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"Usage: %s [number of loops]\n"
	.align	3
.LC1:
	.string	"DHRYSTONE PROGRAM, SOME STRING"
	.align	3
.LC3:
	.string	"C, Version 2.2a"
	.align	3
.LC4:
	.string	"Dhrystone Benchmark, Version %s\n"
	.align	3
.LC5:
	.string	"Program compiled with 'register' attribute"
	.align	3
.LC6:
	.string	"Program compiled without 'register' attribute"
	.align	3
.LC7:
	.string	"times()"
	.align	3
.LC8:
	.string	"Using %s, HZ=%d\n"
	.align	3
.LC9:
	.string	"Trying %d runs: "
	.align	3
.LC12:
	.string	"too few"
	.align	3
.LC13:
	.string	"Final values of the variables used in the benchmark:\n"
	.align	3
.LC14:
	.string	"Int_Glob:            %d\n"
	.align	3
.LC15:
	.string	"        should be:   %d\n"
	.align	3
.LC16:
	.string	"Bool_Glob:           %d\n"
	.align	3
.LC17:
	.string	"Ch_1_Glob:           %c\n"
	.align	3
.LC18:
	.string	"        should be:   %c\n"
	.align	3
.LC19:
	.string	"Ch_2_Glob:           %c\n"
	.align	3
.LC20:
	.string	"Arr_1_Glob[8]:       %d\n"
	.align	3
.LC21:
	.string	"Arr_2_Glob[8][7]:    %d\n"
	.align	3
.LC22:
	.string	"        should be:   Number_Of_Runs + 10\n"
	.align	3
.LC23:
	.string	"Ptr_Glob->\n"
	.align	3
.LC24:
	.string	"  Ptr_Comp:          %ld\n"
	.align	3
.LC25:
	.string	"        should be:   (implementation-dependent)\n"
	.align	3
.LC26:
	.string	"  Discr:             %d\n"
	.align	3
.LC27:
	.string	"  Enum_Comp:         %d\n"
	.align	3
.LC28:
	.string	"  Int_Comp:          %d\n"
	.align	3
.LC29:
	.string	"  Str_Comp:          %s\n"
	.align	3
.LC30:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
	.align	3
.LC31:
	.string	"Next_Ptr_Glob->\n"
	.align	3
.LC32:
	.string	"        should be:   (implementation-dependent), same as above\n"
	.align	3
.LC33:
	.string	"Int_1_Loc:           %d\n"
	.align	3
.LC34:
	.string	"Int_2_Loc:           %d\n"
	.align	3
.LC35:
	.string	"Int_3_Loc:           %d\n"
	.align	3
.LC36:
	.string	"Enum_Loc:            %d\n"
	.align	3
.LC37:
	.string	"Str_1_Loc:           %s\n"
	.align	3
.LC38:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
	.align	3
.LC39:
	.string	"Str_2_Loc:           %s\n"
	.align	3
.LC40:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.align	3
.LC41:
	.string	"\nMicroseconds for one run through Dhrystone: "
	.align	3
.LC42:
	.string	"%10.2f \n"
	.align	3
.LC43:
	.string	"Dhrystones per Second:                      "
	.align	3
.LC44:
	.string	"%10.0f \n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB50:
	.cfi_startproc
	stp	x29, x30, [sp, -208]!	//,,,
	.cfi_def_cfa_offset 208
	.cfi_offset 29, -208
	.cfi_offset 30, -200
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	stp	x27, x28, [sp, 80]	//,,
	.cfi_offset 19, -192
	.cfi_offset 20, -184
	.cfi_offset 21, -176
	.cfi_offset 22, -168
	.cfi_offset 23, -160
	.cfi_offset 24, -152
	.cfi_offset 25, -144
	.cfi_offset 26, -136
	.cfi_offset 27, -128
	.cfi_offset 28, -120
	mov	w2, w0	// argc, tmp714
	mov	x0, x1	// argv, tmp715
// dry.c:549: {
	adrp	x1, :got:__stack_chk_guard	// tmp229,
	ldr	x1, [x1, #:got_lo12:__stack_chk_guard]	// tmp228, tmp229,
	ldr	x3, [x1]	// tmp723, __stack_chk_guard
	str	x3, [sp, 200]	// tmp723, D.5800
	mov	x3,0	// tmp723
// dry.c:561:   if (argc > 2)
	cmp	w2, 2	// argc,
	bgt	.L37		//,
// dry.c:571:      Number_Of_Runs = NUMBER_OF_RUNS;
	mov	w25, 50000	// Number_Of_Runs,
// dry.c:566:   if (argc == 2)
	beq	.L38		//,
.L16:
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x0, 56	//,
	bl	malloc		//
	mov	x19, x0	// tmp232, tmp717
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	adrp	x0, :got:Next_Ptr_Glob	// tmp234,
	ldr	x0, [x0, #:got_lo12:Next_Ptr_Glob]	// tmp233, tmp234,
	str	x19, [x0]	// tmp232, Next_Ptr_Glob
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x0, 56	//,
	bl	malloc		//
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	adrp	x1, :got:Ptr_Glob	// tmp237,
	ldr	x1, [x1, #:got_lo12:Ptr_Glob]	// tmp236, tmp237,
	str	x0, [x1]	// tmp235, Ptr_Glob
// dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	str	x19, [x0]	// tmp232, MEM[(struct record *)_4].Ptr_Comp
// dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	str	wzr, [x0, 8]	//, MEM[(struct record *)_4].Discr
// dry.c:585:   Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
	mov	w1, 2	// tmp238,
	str	w1, [x0, 12]	// tmp238, MEM[(struct record *)_4].variant.var_1.Enum_Comp
// dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	mov	w1, 40	// tmp239,
	str	w1, [x0, 16]	// tmp239, MEM[(struct record *)_4].variant.var_1.Int_Comp
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:90:   return __builtin___strcpy_chk (__dest, __src, __bos (__dest));
	add	x0, x0, 20	// tmp240, tmp235,
	adrp	x1, .LC1	// tmp242,
	add	x1, x1, :lo12:.LC1	// tmp241, tmp242,
	ldp	x2, x3, [x1]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	stp	x2, x3, [x0]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_4 + 20B]
	ldr	x2, [x1, 16]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x2, [x0, 16]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_4 + 20B]
	ldr	x1, [x1, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x1, [x0, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_4 + 20B]
	adrp	x0, .LC2	// tmp249,
	add	x0, x0, :lo12:.LC2	// tmp248, tmp249,
	ldp	x2, x3, [x0]	// tmp252,
	stp	x2, x3, [sp, 136]	// tmp252, MEM[(char * {ref-all})&Str_1_Loc]
	ldr	x1, [x0, 16]	// tmp253,
	str	x1, [sp, 152]	// tmp253, MEM[(char * {ref-all})&Str_1_Loc]
	ldr	x0, [x0, 23]	// tmp254,
	str	x0, [sp, 159]	// tmp254, MEM[(char * {ref-all})&Str_1_Loc]
// dry.c:591:   Arr_2_Glob [8][7] = 10;
	mov	w0, 10	// tmp257,
	adrp	x1, :got:Arr_2_Glob	// tmp256,
	ldr	x1, [x1, #:got_lo12:Arr_2_Glob]	// tmp255, tmp256,
	str	w0, [x1, 1628]	// tmp257, Arr_2_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	bl	putchar		//
	adrp	x2, .LC3	// tmp259,
	add	x2, x2, :lo12:.LC3	//, tmp259,
	adrp	x1, .LC4	// tmp261,
	add	x1, x1, :lo12:.LC4	//, tmp261,
	mov	w0, 1	//,
	bl	__printf_chk		//
// dry.c:599:   if (Reg)
	adrp	x0, .LANCHOR0	// tmp263,
// dry.c:599:   if (Reg)
	ldr	w0, [x0, #:lo12:.LANCHOR0]	//, Reg
	cbz	w0, .L17	// Reg,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x0, .LC5	// tmp266,
	add	x0, x0, :lo12:.LC5	//, tmp266,
	bl	puts		//
.L18:
	mov	w3, 100	//,
	adrp	x2, .LC7	// tmp270,
	add	x2, x2, :lo12:.LC7	//, tmp270,
	adrp	x1, .LC8	// tmp272,
	add	x1, x1, :lo12:.LC8	//, tmp272,
	mov	w0, 1	//,
	bl	__printf_chk		//
	mov	w0, 10	//,
	bl	putchar		//
// dry.c:610:   Done = false;
	adrp	x0, :got:Done	// tmp274,
	ldr	x0, [x0, #:got_lo12:Done]	// tmp273, tmp274,
	str	wzr, [x0]	//, Done
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x0, .LC9	// tmp276,
	add	x0, x0, :lo12:.LC9	// tmp275, tmp276,
	str	x0, [sp, 104]	// tmp275, %sfp
// dry.c:619:     Start_Timer();
	adrp	x27, :got:time_info	// tmp278,
	ldr	x26, [x27, #:got_lo12:time_info]	// tmp277, tmp278,
// dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	add	x23, sp, 132	// tmp713,,
	b	.L27		//
.L37:
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	ldr	x2, [x0]	//, *argv_141(D)
	adrp	x1, .LC0	// tmp231,
	add	x1, x1, :lo12:.LC0	//, tmp231,
	mov	w0, 1	//,
	bl	__printf_chk		//
// dry.c:564:      exit (1);
	mov	w0, 1	//,
	bl	exit		//
.L38:
// /usr/include/stdlib.h:363:   return (int) strtol (__nptr, (char **) NULL, 10);
	mov	w2, 10	//,
	mov	x1, 0	//,
	ldr	x0, [x0, 8]	//, MEM[(char * *)argv_141(D) + 8B]
	bl	strtol		//
	mov	x25, x0	// _191, tmp716
// dry.c:575:      Number_Of_Runs = NUMBER_OF_RUNS;
	cmp	w0, 0	// _191,
	mov	w0, 50000	// tmp699,
	csel	w25, w25, w0, gt	// Number_Of_Runs, _191, tmp699,
	b	.L16		//
.L17:
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x0, .LC6	// tmp268,
	add	x0, x0, :lo12:.LC6	//, tmp268,
	bl	puts		//
	b	.L18		//
.L39:
// dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	mov	x1, x23	//, tmp713
	mov	w0, 0	//,
	bl	Proc_6		//
	ldp	x0, x1, [x21]	// tmp322,
	stp	x0, x1, [sp, 168]	// tmp322, MEM[(char * {ref-all})&Str_2_Loc]
	ldr	x0, [x21, 16]	// tmp323,
	str	x0, [sp, 184]	// tmp323, MEM[(char * {ref-all})&Str_2_Loc]
	ldr	x0, [x21, 23]	// tmp324,
	str	x0, [sp, 191]	// tmp324, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:654: 	  Int_Glob = Run_Index;
	str	w20, [x22]	// Run_Index, Int_Glob
	mov	w28, w20	// Int_2_Loc, Run_Index
.L23:
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	add	w1, w19, 1	// tmp327, Ch_Index,
	and	w19, w1, 255	// Ch_Index, tmp327
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	adrp	x0, :got:Ch_2_Glob	// tmp329,
	ldr	x0, [x0, #:got_lo12:Ch_2_Glob]	// tmp328, tmp329,
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldrb	w0, [x0]	// Ch_2_Glob, Ch_2_Glob
	cmp	w0, w1, uxtb	// Ch_2_Glob, tmp327
	bcc	.L22		//,
.L24:
// dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	mov	w1, 67	//,
	mov	w0, w19	//, Ch_Index
	bl	Func_1		//
// dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	ldr	w1, [sp, 132]	//, Enum_Loc
	cmp	w0, w1	// tmp720, Enum_Loc
	bne	.L23		//,
	b	.L39		//
.L31:
// dry.c:628:       Int_2_Loc = 3;
	mov	w28, 3	// Int_2_Loc,
.L22:
// dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	ldr	w19, [sp, 124]	//, Int_1_Loc
	mul	w19, w28, w19	// Int_2_Loc, Int_2_Loc, Int_1_Loc
// dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	ldr	w28, [sp, 128]	//, Int_3_Loc
	sdiv	w22, w19, w28	// _23, Int_2_Loc, Int_3_Loc.17_22
// dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	str	w22, [sp, 124]	// _23, Int_1_Loc
// dry.c:662:       Proc_2 (&Int_1_Loc);
	add	x0, sp, 124	//,,
	bl	Proc_2		//
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	add	w20, w20, 1	// Run_Index, Run_Index,
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	cmp	w24, w20	// _137, Run_Index
	beq	.L40		//,
.L25:
// dry.c:624:       Proc_5();
	bl	Proc_5		//
// dry.c:625:       Proc_4();
	bl	Proc_4		//
// dry.c:627:       Int_1_Loc = 2;
	mov	w0, 2	// tmp284,
	str	w0, [sp, 124]	// tmp284, Int_1_Loc
	adrp	x0, .LC10	// tmp286,
	add	x0, x0, :lo12:.LC10	// tmp285, tmp286,
	ldp	x2, x3, [x0]	// tmp289,
	stp	x2, x3, [sp, 168]	// tmp289, MEM[(char * {ref-all})&Str_2_Loc]
	ldr	x1, [x0, 16]	// tmp290,
	str	x1, [sp, 184]	// tmp290, MEM[(char * {ref-all})&Str_2_Loc]
	ldr	x0, [x0, 23]	// tmp291,
	str	x0, [sp, 191]	// tmp291, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:630:       Enum_Loc = Ident_2;
	mov	w0, 1	// tmp292,
	str	w0, [sp, 132]	// tmp292, Enum_Loc
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	add	x1, sp, 168	//,,
	add	x0, sp, 136	//,,
	bl	Func_2		//
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	cmp	w0, 0	// tmp719,
	cset	w1, eq	// tmp298,
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	adrp	x0, :got:Bool_Glob	// tmp296,
	ldr	x0, [x0, #:got_lo12:Bool_Glob]	// tmp295, tmp296,
	str	w1, [x0]	// tmp298, Bool_Glob
// dry.c:633:       while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
	ldr	w0, [sp, 124]	//, Int_1_Loc
// dry.c:633:       while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
	cmp	w0, 2	// _14,
	bgt	.L20		//,
// dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	add	x22, sp, 128	// tmp303,,
	mov	w19, 3	// tmp705,
.L21:
// dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	add	w1, w0, w0, lsl 2	// tmp301, _14, _14,
// dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	sub	w1, w1, #3	// tmp302, tmp301,
// dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	str	w1, [sp, 128]	// tmp302, Int_3_Loc
// dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	mov	x2, x22	//, tmp303
	mov	w1, w19	//, tmp705
	bl	Proc_7		//
// dry.c:639: 	Int_1_Loc += 1;
	ldr	w0, [sp, 124]	//, Int_1_Loc
	add	w0, w0, 1	// _14, Int_1_Loc,
	str	w0, [sp, 124]	// _14, Int_1_Loc
// dry.c:633:       while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
	cmp	w0, 2	// _14,
	ble	.L21		//,
.L20:
// dry.c:642:       Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	ldr	w3, [sp, 128]	//, Int_3_Loc
	mov	w2, w0	//, _14
	adrp	x1, :got:Arr_2_Glob	// tmp307,
	ldr	x1, [x1, #:got_lo12:Arr_2_Glob]	//, tmp307,
	adrp	x0, :got:Arr_1_Glob	// tmp309,
	ldr	x0, [x0, #:got_lo12:Arr_1_Glob]	//, tmp309,
	bl	Proc_8		//
// dry.c:644:       Proc_1 (Ptr_Glob);
	adrp	x0, :got:Ptr_Glob	// tmp311,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp310, tmp311,
	ldr	x0, [x0]	//, Ptr_Glob
	bl	Proc_1		//
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	adrp	x0, :got:Ch_2_Glob	// tmp314,
	ldr	x0, [x0, #:got_lo12:Ch_2_Glob]	// tmp313, tmp314,
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldrb	w0, [x0]	// Ch_2_Glob, Ch_2_Glob
	cmp	w0, 64	// Ch_2_Glob,
	bls	.L31		//,
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	mov	w19, 65	// Ch_Index,
// dry.c:628:       Int_2_Loc = 3;
	mov	w28, 3	// Int_2_Loc,
// dry.c:654: 	  Int_Glob = Run_Index;
	adrp	x22, :got:Int_Glob	// tmp703,
	ldr	x22, [x22, #:got_lo12:Int_Glob]	// tmp704, tmp703,
	b	.L24		//
.L40:
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	sub	w19, w19, w28	// tmp333, Int_2_Loc, Int_3_Loc.17_22
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	lsl	w0, w19, 3	// tmp335, tmp333,
	sub	w19, w0, w19	// tmp336, tmp335, tmp333
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	sub	w22, w19, w22	// Int_2_Loc, tmp336, _23
.L19:
// dry.c:671:     Stop_Timer();
	ldr	x19, [x27, #:got_lo12:time_info]	// tmp337, tmp278,
	mov	x0, x19	//, tmp337
	bl	times		//
	ldr	x0, [x19]	// _26, time_info.tms_utime
	adrp	x1, :got:End_Time	// tmp342,
	ldr	x1, [x1, #:got_lo12:End_Time]	// tmp341, tmp342,
	str	x0, [x1]	// _26, End_Time
// dry.c:673:     User_Time = End_Time - Begin_Time;
	adrp	x1, :got:Begin_Time	// tmp344,
	ldr	x1, [x1, #:got_lo12:Begin_Time]	// tmp343, tmp344,
	ldr	x1, [x1]	// Begin_Time, Begin_Time
	sub	x0, x0, x1	// _28, _26, Begin_Time
// dry.c:673:     User_Time = End_Time - Begin_Time;
	adrp	x1, :got:User_Time	// tmp347,
	ldr	x1, [x1, #:got_lo12:User_Time]	// tmp346, tmp347,
	str	x0, [x1]	// _28, User_Time
// dry.c:675:     if (User_Time < Too_Small_Time)
	cmp	x0, 199	// _28,
	ble	.L41		//,
// dry.c:679:     } else Done = true;
	adrp	x0, :got:Done	// tmp358,
	ldr	x0, [x0, #:got_lo12:Done]	// tmp357, tmp358,
	mov	w1, 1	// tmp359,
	str	w1, [x0]	// tmp359, Done
.L28:
// dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	adrp	x19, :got:stderr	// tmp361,
	ldr	x19, [x19, #:got_lo12:stderr]	// tmp360, tmp361,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x3, [x19]	//, stderr
	mov	x2, 53	//,
	mov	x1, 1	//,
	adrp	x0, .LC13	// tmp364,
	add	x0, x0, :lo12:.LC13	//, tmp364,
	bl	fwrite		//
	ldr	x1, [x19]	//, stderr
	mov	w0, 10	//,
	bl	fputc		//
	adrp	x0, :got:Int_Glob	// tmp369,
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp368, tmp369,
	ldr	w3, [x0]	//, Int_Glob
	adrp	x2, .LC14	// tmp372,
	add	x2, x2, :lo12:.LC14	//, tmp372,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	adrp	x20, .LC15	// tmp377,
	add	x20, x20, :lo12:.LC15	// tmp376, tmp377,
	mov	w3, 5	//,
	mov	x2, x20	//, tmp376
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	adrp	x0, :got:Bool_Glob	// tmp382,
	ldr	x0, [x0, #:got_lo12:Bool_Glob]	// tmp381, tmp382,
	ldr	w3, [x0]	//, Bool_Glob
	adrp	x2, .LC16	// tmp385,
	add	x2, x2, :lo12:.LC16	//, tmp385,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 1	//,
	mov	x2, x20	//, tmp376
	mov	w1, w3	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	adrp	x0, :got:Ch_1_Glob	// tmp395,
	ldr	x0, [x0, #:got_lo12:Ch_1_Glob]	// tmp394, tmp395,
	ldrb	w3, [x0]	//, Ch_1_Glob
	adrp	x2, .LC17	// tmp398,
	add	x2, x2, :lo12:.LC17	//, tmp398,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	adrp	x21, .LC18	// tmp403,
	add	x21, x21, :lo12:.LC18	// tmp402, tmp403,
	mov	w3, 65	//,
	mov	x2, x21	//, tmp402
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	adrp	x0, :got:Ch_2_Glob	// tmp408,
	ldr	x0, [x0, #:got_lo12:Ch_2_Glob]	// tmp407, tmp408,
	ldrb	w3, [x0]	//, Ch_2_Glob
	adrp	x2, .LC19	// tmp411,
	add	x2, x2, :lo12:.LC19	//, tmp411,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 66	//,
	mov	x2, x21	//, tmp402
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	adrp	x0, :got:Arr_1_Glob	// tmp421,
	ldr	x0, [x0, #:got_lo12:Arr_1_Glob]	// tmp420, tmp421,
	ldr	w3, [x0, 32]	//, Arr_1_Glob
	adrp	x2, .LC20	// tmp424,
	add	x2, x2, :lo12:.LC20	//, tmp424,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 7	//,
	mov	x2, x20	//, tmp376
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	adrp	x0, :got:Arr_2_Glob	// tmp434,
	ldr	x0, [x0, #:got_lo12:Arr_2_Glob]	// tmp433, tmp434,
	ldr	w3, [x0, 1628]	//, Arr_2_Glob
	adrp	x2, .LC21	// tmp437,
	add	x2, x2, :lo12:.LC21	//, tmp437,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 41	//,
	mov	x1, 1	//,
	adrp	x0, .LC22	// tmp445,
	add	x0, x0, :lo12:.LC22	//, tmp445,
	bl	fwrite		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 11	//,
	mov	x1, 1	//,
	adrp	x0, .LC23	// tmp450,
	add	x0, x0, :lo12:.LC23	//, tmp450,
	bl	fwrite		//
// dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	adrp	x21, :got:Ptr_Glob	// tmp453,
	ldr	x21, [x21, #:got_lo12:Ptr_Glob]	// tmp452, tmp453,
	ldr	x0, [x21]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	adrp	x28, .LC24	// tmp456,
	add	x28, x28, :lo12:.LC24	// tmp455, tmp456,
	ldr	x3, [x0]	//, Ptr_Glob.44_54->Ptr_Comp
	mov	x2, x28	//, tmp455
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 48	//,
	mov	x1, 1	//,
	adrp	x0, .LC25	// tmp464,
	add	x0, x0, :lo12:.LC25	//, tmp464,
	bl	fwrite		//
// dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	ldr	x0, [x21]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	adrp	x27, .LC26	// tmp470,
	add	x27, x27, :lo12:.LC26	// tmp469, tmp470,
	ldr	w3, [x0, 8]	//, Ptr_Glob.47_59->Discr
	mov	x2, x27	//, tmp469
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 0	//,
	mov	x2, x20	//, tmp376
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
// dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	ldr	x0, [x21]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	adrp	x26, .LC27	// tmp484,
	add	x26, x26, :lo12:.LC27	// tmp483, tmp484,
	ldr	w3, [x0, 12]	//, Ptr_Glob.50_63->variant.var_1.Enum_Comp
	mov	x2, x26	//, tmp483
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 2	//,
	mov	x2, x20	//, tmp376
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
// dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	ldr	x0, [x21]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	adrp	x24, .LC28	// tmp498,
	add	x24, x24, :lo12:.LC28	// tmp497, tmp498,
	ldr	w3, [x0, 16]	//, Ptr_Glob.53_67->variant.var_1.Int_Comp
	mov	x2, x24	//, tmp497
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 17	//,
	mov	x2, x20	//, tmp376
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	ldr	x3, [x21]	// Ptr_Glob, Ptr_Glob
	adrp	x23, .LC29	// tmp512,
	add	x23, x23, :lo12:.LC29	// tmp511, tmp512,
	add	x3, x3, 20	//, Ptr_Glob,
	mov	x2, x23	//, tmp511
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	adrp	x0, .LC30	// tmp520,
	add	x0, x0, :lo12:.LC30	// tmp519, tmp520,
	ldr	x3, [x19]	//, stderr
	mov	x2, 52	//,
	mov	x1, 1	//,
	str	x0, [sp, 104]	// tmp519, %sfp
	bl	fwrite		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 16	//,
	mov	x1, 1	//,
	adrp	x0, .LC31	// tmp525,
	add	x0, x0, :lo12:.LC31	//, tmp525,
	bl	fwrite		//
// dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	adrp	x21, :got:Next_Ptr_Glob	// tmp528,
	ldr	x21, [x21, #:got_lo12:Next_Ptr_Glob]	// tmp527, tmp528,
	ldr	x0, [x21]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x3, [x0]	//, Next_Ptr_Glob.60_76->Ptr_Comp
	mov	x2, x28	//, tmp455
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 63	//,
	mov	x1, 1	//,
	adrp	x0, .LC32	// tmp539,
	add	x0, x0, :lo12:.LC32	//, tmp539,
	bl	fwrite		//
// dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	ldr	x0, [x21]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	w3, [x0, 8]	//, Next_Ptr_Glob.63_81->Discr
	mov	x2, x27	//, tmp469
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 0	//,
	mov	x2, x20	//, tmp376
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
// dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	ldr	x0, [x21]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	w3, [x0, 12]	//, Next_Ptr_Glob.66_85->variant.var_1.Enum_Comp
	mov	x2, x26	//, tmp483
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 1	//,
	mov	x2, x20	//, tmp376
	mov	w1, w3	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
// dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	ldr	x0, [x21]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	w3, [x0, 16]	//, Next_Ptr_Glob.69_89->variant.var_1.Int_Comp
	mov	x2, x24	//, tmp497
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 18	//,
	mov	x2, x20	//, tmp376
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	ldr	x3, [x21]	// Next_Ptr_Glob, Next_Ptr_Glob
	add	x3, x3, 20	//, Next_Ptr_Glob,
	mov	x2, x23	//, tmp511
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 52	//,
	mov	x1, 1	//,
	ldr	x0, [sp, 104]	//, %sfp
	bl	fwrite		//
	ldr	w3, [sp, 124]	//, Int_1_Loc
	adrp	x2, .LC33	// tmp598,
	add	x2, x2, :lo12:.LC33	//, tmp598,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 5	//,
	mov	x2, x20	//, tmp376
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, w22	//, Int_2_Loc
	adrp	x2, .LC34	// tmp608,
	add	x2, x2, :lo12:.LC34	//, tmp608,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 13	//,
	mov	x2, x20	//, tmp376
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	ldr	w3, [sp, 128]	//, Int_3_Loc
	adrp	x2, .LC35	// tmp619,
	add	x2, x2, :lo12:.LC35	//, tmp619,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 7	//,
	mov	x2, x20	//, tmp376
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	ldr	w3, [sp, 132]	//, Enum_Loc
	adrp	x2, .LC36	// tmp630,
	add	x2, x2, :lo12:.LC36	//, tmp630,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	mov	w3, 1	//,
	mov	x2, x20	//, tmp376
	mov	w1, w3	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	add	x3, sp, 136	//,,
	adrp	x2, .LC37	// tmp641,
	add	x2, x2, :lo12:.LC37	//, tmp641,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 52	//,
	mov	x1, 1	//,
	adrp	x0, .LC38	// tmp649,
	add	x0, x0, :lo12:.LC38	//, tmp649,
	bl	fwrite		//
	add	x3, sp, 168	//,,
	adrp	x2, .LC39	// tmp652,
	add	x2, x2, :lo12:.LC39	//, tmp652,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 52	//,
	mov	x1, 1	//,
	adrp	x0, .LC40	// tmp660,
	add	x0, x0, :lo12:.LC40	//, tmp660,
	bl	fwrite		//
	ldr	x1, [x19]	//, stderr
	mov	w0, 10	//,
	bl	fputc		//
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	adrp	x0, :got:User_Time	// tmp665,
	ldr	x0, [x0, #:got_lo12:User_Time]	// tmp664, tmp665,
	ldr	x0, [x0]	// User_Time, User_Time
	scvtf	s2, x0	// _113, User_Time
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	scvtf	s0, w25	// tmp667, Number_Of_Runs
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	mov	w0, 1120403456	// tmp721,
	fmov	s1, w0	// tmp721, tmp721
	fmul	s0, s0, s1	// _117, tmp667, tmp721
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	adrp	x20, :got:Microseconds	// tmp670,
	ldr	x20, [x20, #:got_lo12:Microseconds]	// tmp669, tmp670,
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	fcvt	d1, s2	// tmp671, _113
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	mov	x0, 145685290680320	// tmp722,
	movk	x0, 0x412e, lsl 48	// tmp722,,
	fmov	d3, x0	// tmp722, tmp722
	fmul	d1, d1, d3	// tmp672, tmp671, tmp722
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fcvt	d3, s0	// tmp674, _117
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fdiv	d1, d1, d3	// tmp675, tmp672, tmp674
	fcvt	s1, d1	// tmp676, tmp675
	str	s1, [x20]	// tmp676, Microseconds
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	adrp	x19, :got:Dhrystones_Per_Second	// tmp678,
	ldr	x19, [x19, #:got_lo12:Dhrystones_Per_Second]	// tmp677, tmp678,
// dry.c:737:                         / (float) User_Time;
	fdiv	s0, s0, s2	// tmp679, _117, _113
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	str	s0, [x19]	// tmp679, Dhrystones_Per_Second
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x1, .LC41	// tmp681,
	add	x1, x1, :lo12:.LC41	//, tmp681,
	mov	w0, 1	//,
	bl	__printf_chk		//
// dry.c:740:     printf ("%10.2f \n", Microseconds);
	ldr	s0, [x20]	// Microseconds, Microseconds
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	fcvt	d0, s0	//, Microseconds
	adrp	x1, .LC42	// tmp687,
	add	x1, x1, :lo12:.LC42	//, tmp687,
	mov	w0, 1	//,
	bl	__printf_chk		//
	adrp	x1, .LC43	// tmp689,
	add	x1, x1, :lo12:.LC43	//, tmp689,
	mov	w0, 1	//,
	bl	__printf_chk		//
// dry.c:742:     printf ("%10.0f \n", Dhrystones_Per_Second);
	ldr	s0, [x19]	// Dhrystones_Per_Second, Dhrystones_Per_Second
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	fcvt	d0, s0	//, Dhrystones_Per_Second
	adrp	x1, .LC44	// tmp695,
	add	x1, x1, :lo12:.LC44	//, tmp695,
	mov	w0, 1	//,
	bl	__printf_chk		//
	mov	w0, 10	//,
	bl	putchar		//
// dry.c:745: }
	adrp	x0, :got:__stack_chk_guard	// tmp698,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp697, tmp698,
	ldr	x1, [sp, 200]	// tmp724, D.5800
	ldr	x2, [x0]	// tmp725, __stack_chk_guard
	subs	x1, x1, x2	// tmp724, tmp725
	mov	x2, 0	// tmp725
	bne	.L42		//,
	mov	w0, 0	//,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldp	x27, x28, [sp, 80]	//,,
	ldp	x29, x30, [sp], 208	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 27
	.cfi_restore 28
	.cfi_restore 25
	.cfi_restore 26
	.cfi_restore 23
	.cfi_restore 24
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
.L41:
	.cfi_restore_state
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x0, .LC12	// tmp349,
	add	x0, x0, :lo12:.LC12	//, tmp349,
	bl	puts		//
// dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	add	w25, w25, w25, lsl 2	// tmp352, Number_Of_Runs, Number_Of_Runs,
	lsl	w25, w25, 1	// Number_Of_Runs, tmp352,
// dry.c:611:   while (!Done) {
	adrp	x0, :got:Done	// tmp355,
	ldr	x0, [x0, #:got_lo12:Done]	// tmp354, tmp355,
// dry.c:611:   while (!Done) {
	ldr	w0, [x0]	//, Done
	cbnz	w0, .L28	// Done,
.L27:
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	mov	w2, w25	//, Number_Of_Runs
	ldr	x1, [sp, 104]	//, %sfp
	mov	w0, 1	//,
	bl	__printf_chk		//
// dry.c:619:     Start_Timer();
	mov	x0, x26	//, tmp277
	bl	times		//
	ldr	x1, [x26]	// time_info.tms_utime, time_info.tms_utime
	adrp	x0, :got:Begin_Time	// tmp280,
	ldr	x0, [x0, #:got_lo12:Begin_Time]	// tmp279, tmp280,
	str	x1, [x0]	// time_info.tms_utime, Begin_Time
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	cmp	w25, 0	// Number_Of_Runs,
	ble	.L19		//,
	add	w24, w25, 1	// _137, Number_Of_Runs,
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	mov	w20, 1	// Run_Index,
	adrp	x21, .LC11	// tmp707,
	add	x21, x21, :lo12:.LC11	// tmp708, tmp707,
	b	.L25		//
.L42:
// dry.c:745: }
	bl	__stack_chk_fail		//
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.section	.rodata.str1.8
	.align	3
.LC2:
	.string	"DHRYSTONE PROGRAM, 1'ST STRING"
	.align	3
.LC10:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
	.align	3
.LC11:
	.string	"DHRYSTONE PROGRAM, 3'RD STRING"
	.text
	.comm	Dhrystones_Per_Second,4,4
	.comm	Microseconds,4,4
	.comm	User_Time,8,8
	.comm	End_Time,8,8
	.comm	Begin_Time,8,8
	.comm	Done,4,4
	.global	Reg
	.comm	Arr_2_Glob,10000,8
	.comm	Arr_1_Glob,200,8
	.comm	Ch_2_Glob,1,1
	.comm	Ch_1_Glob,1,1
	.comm	Bool_Glob,4,4
	.comm	Int_Glob,4,4
	.comm	Next_Ptr_Glob,8,8
	.comm	Ptr_Glob,8,8
	.comm	time_info,32,8
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	Reg, %object
	.size	Reg, 4
Reg:
	.zero	4
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
