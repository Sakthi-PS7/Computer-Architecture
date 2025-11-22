	.arch armv8-a
	.file	"dry.c"
// GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.2) version 9.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu dry.c -mlittle-endian
// -mabi=lp64 -auxbase-strip asm-snippets_ARM_V8/dry_O2_v8.s -O2
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
// -ffunction-cse -fgcse -fgcse-lm -fgnu-runtime -fgnu-unique
// -fguess-branch-probability -fhoist-adjacent-loads -fident
// -fif-conversion -fif-conversion2 -findirect-inlining -finline
// -finline-atomics -finline-functions-called-once -finline-small-functions
// -fipa-bit-cp -fipa-cp -fipa-icf -fipa-icf-functions -fipa-icf-variables
// -fipa-profile -fipa-pure-const -fipa-ra -fipa-reference
// -fipa-reference-addressable -fipa-sra -fipa-stack-alignment -fipa-vrp
// -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
// -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
// -fleading-underscore -flifetime-dse -flra-remat -flto-odr-type-merging
// -fmath-errno -fmerge-constants -fmerge-debug-strings
// -fmove-loop-invariants -fomit-frame-pointer -foptimize-sibling-calls
// -foptimize-strlen -fpartial-inlining -fpeephole -fpeephole2 -fplt
// -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
// -freorder-functions -frerun-cse-after-loop
// -fsched-critical-path-heuristic -fsched-dep-count-heuristic
// -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
// -fsched-pressure -fsched-rank-heuristic -fsched-spec
// -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
// -fschedule-insns -fschedule-insns2 -fsection-anchors
// -fsemantic-interposition -fshow-column -fshrink-wrap
// -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
// -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstack-clash-protection
// -fstack-protector-strong -fstdarg-opt -fstore-merging -fstrict-aliasing
// -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
// -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
// -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
// -ftree-copy-prop -ftree-cselim -ftree-dce -ftree-dominator-opts
// -ftree-dse -ftree-forwprop -ftree-fre -ftree-loop-if-convert
// -ftree-loop-im -ftree-loop-ivcanon -ftree-loop-optimize
// -ftree-parallelize-loops= -ftree-phiprop -ftree-pre -ftree-pta
// -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
// -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
// -funit-at-a-time -funwind-tables -fverbose-asm -fzero-initialized-in-bss
// -mfix-cortex-a53-835769 -mfix-cortex-a53-843419 -mglibc -mlittle-endian
// -momit-leaf-frame-pointer -mpc-relative-literal-loads

	.text
	.align	2
	.p2align 3,,7
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
	beq	.L4		//,
// dry.c:799: } /* Proc_2 */
	ret	
	.p2align 2,,3
.L4:
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	adrp	x2, :got:Int_Glob	// tmp102,
// dry.c:794:       Int_Loc -= 1;
	ldr	w1, [x0]	//, *Int_Par_Ref_7(D)
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	ldr	x2, [x2, #:got_lo12:Int_Glob]	// tmp101, tmp102,
// dry.c:794:       Int_Loc -= 1;
	add	w1, w1, 9	// Int_Loc, *Int_Par_Ref_7(D),
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	ldr	w2, [x2]	//, Int_Glob
	sub	w1, w1, w2	// tmp103, Int_Loc, Int_Glob
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	str	w1, [x0]	// tmp103, *Int_Par_Ref_7(D)
// dry.c:799: } /* Proc_2 */
	ret	
	.cfi_endproc
.LFE52:
	.size	Proc_2, .-Proc_2
	.align	2
	.p2align 3,,7
	.global	Proc_3
	.type	Proc_3, %function
Proc_3:
.LFB53:
	.cfi_startproc
// dry.c:807:   if (Ptr_Glob != Null)
	adrp	x1, :got:Ptr_Glob	// tmp96,
	ldr	x1, [x1, #:got_lo12:Ptr_Glob]	// tmp95, tmp96,
	ldr	x2, [x1]	// pretmp_12, Ptr_Glob
// dry.c:807:   if (Ptr_Glob != Null)
	cbz	x2, .L6	// pretmp_12,
// dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	ldr	x2, [x2]	// _2, Ptr_Glob.98_1->Ptr_Comp
// dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	str	x2, [x0]	// _2, *Ptr_Ref_Par_8(D)
	ldr	x2, [x1]	// pretmp_12, Ptr_Glob
.L6:
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	adrp	x1, :got:Int_Glob	// tmp101,
	add	x2, x2, 16	//, pretmp_12,
	mov	w0, 10	//,
	ldr	x1, [x1, #:got_lo12:Int_Glob]	// tmp100, tmp101,
	ldr	w1, [x1]	//, Int_Glob
	b	Proc_7		//
	.cfi_endproc
.LFE53:
	.size	Proc_3, .-Proc_3
	.align	2
	.p2align 3,,7
	.global	Proc_1
	.type	Proc_1, %function
Proc_1:
.LFB51:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
// dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	mov	w2, 5	// tmp112,
// dry.c:752: {
	mov	x29, sp	//,
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0	// Ptr_Val_Par, tmp129
// dry.c:753:   REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
	ldr	x19, [x0]	// Next_Record, Ptr_Val_Par_14(D)->Ptr_Comp
// dry.c:752: {
	str	x21, [sp, 32]	//,
	.cfi_offset 21, -16
// dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	adrp	x21, :got:Ptr_Glob	// tmp105,
// dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	mov	x0, x19	//, Next_Record
// dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	ldr	x21, [x21, #:got_lo12:Ptr_Glob]	// tmp104, tmp105,
	ldr	x1, [x21]	// Ptr_Glob, Ptr_Glob
	ldp	x4, x5, [x1]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	stp	x4, x5, [x19]	// *Ptr_Glob.94_1, *Next_Record_15
	ldp	x4, x5, [x1, 16]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	stp	x4, x5, [x19, 16]	// *Ptr_Glob.94_1, *Next_Record_15
	ldp	x4, x5, [x1, 32]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	stp	x4, x5, [x19, 32]	// *Ptr_Glob.94_1, *Next_Record_15
	ldr	x1, [x1, 48]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	str	x1, [x19, 48]	// *Ptr_Glob.94_1, *Next_Record_15
// dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	ldr	x1, [x20]	// _4, Ptr_Val_Par_14(D)->Ptr_Comp
// dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	str	w2, [x20, 16]	// tmp112, Ptr_Val_Par_14(D)->variant.var_1.Int_Comp
// dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	str	x1, [x19]	// _4, Next_Record_15->Ptr_Comp
// dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	str	w2, [x19, 16]	// tmp112, Next_Record_15->variant.var_1.Int_Comp
// dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	bl	Proc_3		//
// dry.c:766:   if (Next_Record->Discr == Ident_1)
	ldr	w0, [x19, 8]	//, Next_Record_15->Discr
	cbz	w0, .L13	// Next_Record_15->Discr,
// dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	ldr	x0, [x20]	// _25, Ptr_Val_Par_14(D)->Ptr_Comp
// dry.c:778: } /* Proc_1 */
	ldr	x21, [sp, 32]	//,
// dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	ldp	x2, x3, [x0]	// *_25, *_25
	stp	x2, x3, [x20]	// *_25, *Ptr_Val_Par_14(D)
	ldp	x2, x3, [x0, 16]	// *_25, *_25
	stp	x2, x3, [x20, 16]	// *_25, *Ptr_Val_Par_14(D)
	ldp	x2, x3, [x0, 32]	// *_25, *_25
	stp	x2, x3, [x20, 32]	// *_25, *Ptr_Val_Par_14(D)
	ldr	x0, [x0, 48]	// *_25, *_25
	str	x0, [x20, 48]	// *_25, *Ptr_Val_Par_14(D)
// dry.c:778: } /* Proc_1 */
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_remember_state
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
	ret	
	.p2align 2,,3
.L13:
	.cfi_restore_state
// dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	ldr	w0, [x20, 12]	//, Ptr_Val_Par_14(D)->variant.var_1.Enum_Comp
// dry.c:769:     Next_Record->variant.var_1.Int_Comp = 6;
	mov	w1, 6	// tmp115,
	str	w1, [x19, 16]	// tmp115, Next_Record_15->variant.var_1.Int_Comp
// dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	add	x1, x19, 12	//, Next_Record,
	bl	Proc_6		//
// dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	ldr	x3, [x21]	// Ptr_Glob, Ptr_Glob
// dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	mov	x2, x19	// tmp121, Next_Record
// dry.c:778: } /* Proc_1 */
	ldp	x19, x20, [sp, 16]	//,,
// dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	mov	w1, 10	//,
// dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	ldr	x3, [x3]	// _10, Ptr_Glob.95_9->Ptr_Comp
// dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	ldr	w0, [x2, 16]	//, Next_Record_15->variant.var_1.Int_Comp
// dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	str	x3, [x2], 16	// _10, Next_Record_15->Ptr_Comp
// dry.c:778: } /* Proc_1 */
	ldr	x21, [sp, 32]	//,
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_restore 21
	.cfi_restore 19
	.cfi_restore 20
	.cfi_def_cfa_offset 0
// dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	b	Proc_7		//
	.cfi_endproc
.LFE51:
	.size	Proc_1, .-Proc_1
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
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 3,,7
	.global	main
	.type	main, %function
main:
.LFB50:
	.cfi_startproc
	stp	x29, x30, [sp, -240]!	//,,,
	.cfi_def_cfa_offset 240
	.cfi_offset 29, -240
	.cfi_offset 30, -232
// dry.c:561:   if (argc > 2)
	cmp	w0, 2	// tmp739,
// dry.c:549: {
	adrp	x0, :got:__stack_chk_guard	// tmp790,
	mov	x29, sp	//,
	ldr	x2, [x0, #:got_lo12:__stack_chk_guard]	// tmp226, tmp790,
	mov	x0, x1	// argv, tmp740
	stp	x19, x20, [sp, 16]	//,,
	ldr	x1, [x2]	// tmp787, __stack_chk_guard
	str	x1, [sp, 232]	// tmp787, D.5812
	mov	x1,0	// tmp787
	stp	x21, x22, [sp, 32]	//,,
	stp	x23, x24, [sp, 48]	//,,
	stp	x25, x26, [sp, 64]	//,,
	stp	x27, x28, [sp, 80]	//,,
	.cfi_offset 19, -224
	.cfi_offset 20, -216
	.cfi_offset 21, -208
	.cfi_offset 22, -200
	.cfi_offset 23, -192
	.cfi_offset 24, -184
	.cfi_offset 25, -176
	.cfi_offset 26, -168
	.cfi_offset 27, -160
	.cfi_offset 28, -152
// dry.c:561:   if (argc > 2)
	bgt	.L36		//,
// dry.c:566:   if (argc == 2)
	beq	.L37		//,
.L16:
// dry.c:575:      Number_Of_Runs = NUMBER_OF_RUNS;
	mov	w0, 50000	// Number_Of_Runs,
	str	w0, [sp, 156]	// Number_Of_Runs, %sfp
.L17:
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x0, 56	//,
	bl	malloc		//
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	adrp	x1, :got:Next_Ptr_Glob	// tmp792,
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x19, x0	// tmp230, tmp742
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x0, 56	//,
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	ldr	x1, [x1, #:got_lo12:Next_Ptr_Glob]	// tmp231, tmp792,
	str	x19, [x1]	// tmp230, Next_Ptr_Glob
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	bl	malloc		//
	mov	x1, x0	// tmp233, tmp743
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	adrp	x0, :got:Ptr_Glob	// tmp793,
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:90:   return __builtin___strcpy_chk (__dest, __src, __bos (__dest));
	adrp	x3, .LC1	// tmp240,
	add	x3, x3, :lo12:.LC1	// tmp239, tmp240,
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	ldr	x6, [x0, #:got_lo12:Ptr_Glob]	// tmp234, tmp793,
	adrp	x2, .LC2	// tmp247,
	add	x2, x2, :lo12:.LC2	// tmp246, tmp247,
// dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	mov	w7, 40	// tmp237,
	str	w7, [x1, 16]	// tmp237, MEM[(struct record *)_4].variant.var_1.Int_Comp
// dry.c:591:   Arr_2_Glob [8][7] = 10;
	adrp	x0, :got:Arr_2_Glob	// tmp794,
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:90:   return __builtin___strcpy_chk (__dest, __src, __bos (__dest));
	ldr	x7, [x3, 16]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x7, [x1, 36]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_4 + 20B]
	ldr	x7, [x2, 16]	// tmp251,
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	str	x1, [x6]	// tmp233, Ptr_Glob
	str	x7, [sp, 184]	// tmp251, MEM[(char * {ref-all})&Str_1_Loc]
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:90:   return __builtin___strcpy_chk (__dest, __src, __bos (__dest));
	add	x4, x1, 20	// tmp238, tmp233,
	ldp	x6, x7, [x2]	// tmp250,
	stp	x6, x7, [sp, 168]	// tmp250, MEM[(char * {ref-all})&Str_1_Loc]
	ldp	x8, x9, [x3]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
// dry.c:591:   Arr_2_Glob [8][7] = 10;
	ldr	x5, [x0, #:got_lo12:Arr_2_Glob]	// tmp253, tmp794,
// dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	mov	x0, 8589934592	// tmp236,
	stp	x19, x0, [x1]	// tmp230, tmp236, MEM[(struct record *)_4].Ptr_Comp
// dry.c:591:   Arr_2_Glob [8][7] = 10;
	mov	w0, 10	// tmp255,
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:90:   return __builtin___strcpy_chk (__dest, __src, __bos (__dest));
	ldr	x1, [x3, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	stp	x8, x9, [x4]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_4 + 20B]
	ldr	x2, [x2, 23]	// tmp252,
	str	x1, [x4, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_4 + 20B]
	str	x2, [sp, 191]	// tmp252, MEM[(char * {ref-all})&Str_1_Loc]
// dry.c:591:   Arr_2_Glob [8][7] = 10;
	str	w0, [x5, 1628]	// tmp255, Arr_2_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	bl	putchar		//
	mov	w0, 1	//,
	adrp	x2, .LC3	// tmp257,
	adrp	x1, .LC4	// tmp259,
	add	x2, x2, :lo12:.LC3	//, tmp257,
	add	x1, x1, :lo12:.LC4	//, tmp259,
	bl	__printf_chk		//
// dry.c:599:   if (Reg)
	adrp	x0, .LANCHOR0	// tmp261,
// dry.c:599:   if (Reg)
	ldr	w0, [x0, #:lo12:.LANCHOR0]	//, Reg
	cbnz	w0, .L38	// Reg,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x0, .LC6	// tmp266,
	add	x0, x0, :lo12:.LC6	//, tmp266,
	bl	puts		//
.L19:
	adrp	x2, .LC7	// tmp268,
	adrp	x1, .LC8	// tmp270,
	add	x2, x2, :lo12:.LC7	//, tmp268,
	add	x1, x1, :lo12:.LC8	//, tmp270,
	mov	w3, 100	//,
	mov	w0, 1	//,
	bl	__printf_chk		//
	add	x24, sp, 168	// tmp712,,
	mov	w0, 10	//,
	bl	putchar		//
// dry.c:610:   Done = false;
	adrp	x0, :got:Done	// tmp795,
	add	x22, sp, 160	// tmp711,,
	mov	x25, x24	// tmp712, tmp712
	adrp	x1, .LC11	// tmp735,
	ldr	x0, [x0, #:got_lo12:Done]	// tmp271, tmp795,
	add	x23, sp, 200	// tmp716,,
	add	x27, x1, :lo12:.LC11	// tmp736, tmp735,
// dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	add	x28, sp, 164	// tmp734,,
	mov	x24, x22	// tmp711, tmp711
	adrp	x26, :got:Ch_2_Glob	// tmp714,
// dry.c:610:   Done = false;
	str	wzr, [x0]	//, Done
	.p2align 3,,7
.L26:
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	ldr	w19, [sp, 156]	//, %sfp
	adrp	x0, .LC9	// tmp796,
	add	x1, x0, :lo12:.LC9	//, tmp796,
	mov	w0, 1	//,
	mov	w2, w19	//, Number_Of_Runs
	bl	__printf_chk		//
// dry.c:619:     Start_Timer();
	adrp	x0, :got:time_info	// tmp797,
	ldr	x20, [x0, #:got_lo12:time_info]	// tmp275, tmp797,
	add	w0, w19, 1	// _96, Number_Of_Runs,
	str	w0, [sp, 104]	// _96, %sfp
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	mov	w19, 1	// Run_Index,
// dry.c:619:     Start_Timer();
	mov	x0, x20	//, tmp275
	bl	times		//
	adrp	x0, .LC10	// tmp800,
	add	x0, x0, :lo12:.LC10	// tmp291, tmp800,
	adrp	x1, :got:Begin_Time	// tmp801,
	ldp	x2, x3, [x0]	// tmp295,
	stp	x2, x3, [sp, 112]	// tmp295, %sfp
	ldr	x1, [x1, #:got_lo12:Begin_Time]	// tmp277, tmp801,
// dry.c:830:   Ch_1_Glob = 'A';
	adrp	x2, :got:Ch_1_Glob	// tmp804,
	ldr	x2, [x2, #:got_lo12:Ch_1_Glob]	// tmp282, tmp804,
	str	x2, [sp, 128]	// tmp282, %sfp
// dry.c:619:     Start_Timer();
	ldr	x2, [x20]	// time_info.tms_utime, time_info.tms_utime
	str	x2, [x1]	// time_info.tms_utime, Begin_Time
	ldr	x1, [x0, 16]	// tmp296,
	ldr	x0, [x0, 23]	// tmp297,
	stp	x1, x0, [sp, 136]	// tmp296, tmp297, %sfp
	.p2align 3,,7
.L24:
// dry.c:830:   Ch_1_Glob = 'A';
	mov	w4, 65	// tmp810,
	ldr	x0, [sp, 136]	// tmp296, %sfp
	str	x0, [x23, 16]	// tmp296, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	adrp	x0, :got:Bool_Glob	// tmp808,
	mov	w2, 1	// tmp287,
// dry.c:822:   Ch_2_Glob = 'B';
	ldr	x20, [x26, #:got_lo12:Ch_2_Glob]	// tmp288, tmp714,
// dry.c:630:       Enum_Loc = Ident_2;
	str	w2, [sp, 164]	// tmp287, Enum_Loc
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	ldr	x21, [x0, #:got_lo12:Bool_Glob]	// tmp285, tmp808,
// dry.c:822:   Ch_2_Glob = 'B';
	mov	w3, 66	// tmp290,
// dry.c:830:   Ch_1_Glob = 'A';
	ldr	x0, [sp, 128]	// tmp282, %sfp
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	mov	x1, x23	//, tmp716
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	str	w2, [x21]	// tmp287, Bool_Glob
	ldr	x2, [sp, 144]	// tmp297, %sfp
// dry.c:830:   Ch_1_Glob = 'A';
	strb	w4, [x0]	// tmp810, Ch_1_Glob
	ldp	x4, x5, [sp, 112]	// tmp295, %sfp
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	mov	x0, x25	//, tmp712
	stp	x4, x5, [x23]	// tmp295, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:822:   Ch_2_Glob = 'B';
	strb	w3, [x20]	// tmp290, Ch_2_Glob
	str	x2, [x23, 23]	// tmp297, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	bl	Func_2		//
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	cmp	w0, 0	// tmp744,
	cset	w0, eq	// tmp304,
// dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	mov	w1, 7	// tmp305,
// dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	mov	x2, x24	//, tmp711
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	str	w0, [x21]	// tmp304, Bool_Glob
// dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	mov	w0, 2	//,
// dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	str	w1, [sp, 160]	// tmp305, Int_3_Loc
// dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	mov	w1, 3	//,
	bl	Proc_7		//
// dry.c:642:       Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	adrp	x0, :got:Arr_2_Glob	// tmp813,
	ldr	w3, [sp, 160]	//, Int_3_Loc
	mov	w2, 3	//,
	ldr	x1, [x0, #:got_lo12:Arr_2_Glob]	//, tmp813,
	adrp	x0, :got:Arr_1_Glob	// tmp814,
	ldr	x0, [x0, #:got_lo12:Arr_1_Glob]	//, tmp814,
	bl	Proc_8		//
// dry.c:644:       Proc_1 (Ptr_Glob);
	adrp	x0, :got:Ptr_Glob	// tmp815,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp312, tmp815,
	ldr	x0, [x0]	//, Ptr_Glob
	bl	Proc_1		//
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldrb	w0, [x20]	// Ch_2_Glob, Ch_2_Glob
	cmp	w0, 64	// Ch_2_Glob,
	bls	.L29		//,
// dry.c:654: 	  Int_Glob = Run_Index;
	adrp	x0, :got:Int_Glob	// tmp816,
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	mov	w22, 65	// Ch_Index,
// dry.c:628:       Int_2_Loc = 3;
	mov	w20, 3	// Int_2_Loc,
// dry.c:654: 	  Int_Glob = Run_Index;
	ldr	x21, [x0, #:got_lo12:Int_Glob]	// tmp732, tmp816,
	b	.L22		//
	.p2align 2,,3
.L21:
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldr	x0, [x26, #:got_lo12:Ch_2_Glob]	// tmp330, tmp714,
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	add	w1, w22, 1	// tmp329, Ch_Index,
	and	w22, w1, 255	// Ch_Index, tmp329
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldrb	w0, [x0]	// Ch_2_Glob, Ch_2_Glob
	cmp	w0, w1, uxtb	// Ch_2_Glob, tmp329
	bcc	.L39		//,
.L22:
// dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	mov	w1, 67	//,
	mov	w0, w22	//, Ch_Index
	bl	Func_1		//
// dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	ldr	w1, [sp, 164]	//, Enum_Loc
	cmp	w0, w1	// tmp745, Enum_Loc
	bne	.L21		//,
// dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	mov	x1, x28	//, tmp734
	mov	w0, 0	//,
	bl	Proc_6		//
// dry.c:654: 	  Int_Glob = Run_Index;
	str	w19, [x21]	// Run_Index, Int_Glob
	ldr	x0, [x27, 16]	// tmp325,
	str	x0, [x23, 16]	// tmp325, MEM[(char * {ref-all})&Str_2_Loc]
	ldp	x0, x1, [x27]	// tmp324,
	stp	x0, x1, [x23]	// tmp324, MEM[(char * {ref-all})&Str_2_Loc]
	mov	w20, w19	// Int_2_Loc, Run_Index
	ldr	x0, [x27, 23]	// tmp326,
	str	x0, [x23, 23]	// tmp326, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldr	x0, [x26, #:got_lo12:Ch_2_Glob]	// tmp330, tmp714,
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	add	w1, w22, 1	// tmp329, Ch_Index,
	and	w22, w1, 255	// Ch_Index, tmp329
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldrb	w0, [x0]	// Ch_2_Glob, Ch_2_Glob
	cmp	w0, w1, uxtb	// Ch_2_Glob, tmp329
	bcs	.L22		//,
.L39:
	add	w5, w20, w20, lsl 1	// prephitmp_271, Int_2_Loc, Int_2_Loc,
.L20:
// dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	ldr	w1, [sp, 160]	//, Int_3_Loc
// dry.c:791:     if (Ch_1_Glob == 'A')
	adrp	x0, :got:Ch_1_Glob	// tmp817,
	ldr	x0, [x0, #:got_lo12:Ch_1_Glob]	// tmp336, tmp817,
// dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	sdiv	w20, w5, w1	// _22, prephitmp_271, Int_3_Loc.17_21
// dry.c:791:     if (Ch_1_Glob == 'A')
	ldrb	w0, [x0]	// Ch_1_Glob, Ch_1_Glob
// dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	mov	w21, w20	// Int_1_Loc, _22
// dry.c:791:     if (Ch_1_Glob == 'A')
	cmp	w0, 65	// Ch_1_Glob,
	bne	.L23		//,
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	adrp	x0, :got:Int_Glob	// tmp818,
// dry.c:794:       Int_Loc -= 1;
	add	w21, w20, 9	// Int_Loc, _22,
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp340, tmp818,
	ldr	w0, [x0]	//, Int_Glob
	sub	w21, w21, w0	// Int_1_Loc, Int_Loc, Int_Glob
.L23:
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	ldr	w0, [sp, 104]	//, %sfp
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	add	w19, w19, 1	// Run_Index, Run_Index,
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	cmp	w0, w19	// _96, Run_Index
	bne	.L24		//,
// dry.c:671:     Stop_Timer();
	adrp	x0, :got:time_info	// tmp820,
	mov	w22, w1	// Int_3_Loc.17_21, Int_3_Loc.17_21
	str	w5, [sp, 104]	// prephitmp_271, %sfp
	ldr	x19, [x0, #:got_lo12:time_info]	// tmp343, tmp820,
	mov	x0, x19	//, tmp343
	bl	times		//
// dry.c:673:     User_Time = End_Time - Begin_Time;
	adrp	x0, :got:Begin_Time	// tmp821,
	ldr	x3, [x0, #:got_lo12:Begin_Time]	// tmp349, tmp821,
// dry.c:671:     Stop_Timer();
	adrp	x0, :got:End_Time	// tmp822,
	ldr	x4, [x0, #:got_lo12:End_Time]	// tmp347, tmp822,
// dry.c:673:     User_Time = End_Time - Begin_Time;
	adrp	x0, :got:User_Time	// tmp823,
// dry.c:673:     User_Time = End_Time - Begin_Time;
	ldr	x3, [x3]	// Begin_Time, Begin_Time
// dry.c:673:     User_Time = End_Time - Begin_Time;
	ldr	x2, [x0, #:got_lo12:User_Time]	// tmp352, tmp823,
// dry.c:671:     Stop_Timer();
	ldr	x0, [x19]	// _25, time_info.tms_utime
	str	x0, [x4]	// _25, End_Time
// dry.c:673:     User_Time = End_Time - Begin_Time;
	sub	x0, x0, x3	// _27, _25, Begin_Time
// dry.c:673:     User_Time = End_Time - Begin_Time;
	str	x0, [x2]	// _27, User_Time
// dry.c:675:     if (User_Time < Too_Small_Time)
	cmp	x0, 199	// _27,
	ble	.L40		//,
// dry.c:679:     } else Done = true;
	adrp	x0, :got:Done	// tmp827,
	ldr	w5, [sp, 104]	//, %sfp
	mov	x24, x25	// tmp712, tmp712
	mov	w25, w20	// _22, _22
	ldr	x0, [x0, #:got_lo12:Done]	// tmp363, tmp827,
	mov	w20, w21	// Int_1_Loc, Int_1_Loc
	mov	w21, w22	// Int_3_Loc.17_21, Int_3_Loc.17_21
	mov	w1, 1	// tmp365,
	str	w1, [x0]	// tmp365, Done
.L27:
// dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	adrp	x19, :got:stderr	// tmp367,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, 53	//,
	mov	x1, 1	//,
	adrp	x0, .LC13	// tmp370,
// dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	ldr	x19, [x19, #:got_lo12:stderr]	// tmp366, tmp367,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	add	x0, x0, :lo12:.LC13	//, tmp370,
	str	w5, [sp, 144]	// prephitmp_271, %sfp
	adrp	x22, .LC18	// tmp409,
	add	x22, x22, :lo12:.LC18	// tmp408, tmp409,
	adrp	x28, .LC24	// tmp462,
	ldr	x3, [x19]	//, stderr
	add	x28, x28, :lo12:.LC24	// tmp461, tmp462,
	bl	fwrite		//
	ldr	x1, [x19]	//, stderr
	mov	w0, 10	//,
	bl	fputc		//
// dry.c:684:   fprintf (stderr, "Int_Glob:            %d\n", Int_Glob);
	adrp	x0, :got:Int_Glob	// tmp828,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	adrp	x2, .LC14	// tmp378,
	add	x2, x2, :lo12:.LC14	//, tmp378,
// dry.c:684:   fprintf (stderr, "Int_Glob:            %d\n", Int_Glob);
	ldr	x3, [x0, #:got_lo12:Int_Glob]	// tmp374, tmp828,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x3]	//, Int_Glob
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	adrp	x1, .LC15	// tmp383,
	add	x27, x1, :lo12:.LC15	// tmp382, tmp383,
	mov	w3, 5	//,
	mov	x2, x27	//, tmp382
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	adrp	x0, :got:Bool_Glob	// tmp830,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	adrp	x2, .LC16	// tmp391,
	add	x2, x2, :lo12:.LC16	//, tmp391,
// dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	ldr	x3, [x0, #:got_lo12:Bool_Glob]	// tmp387, tmp830,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x3]	//, Bool_Glob
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x27	//, tmp382
	mov	w3, 1	//,
	mov	w1, w3	//,
	bl	__fprintf_chk		//
// dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	adrp	x0, :got:Ch_1_Glob	// tmp831,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	adrp	x2, .LC17	// tmp404,
	add	x2, x2, :lo12:.LC17	//, tmp404,
// dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	ldr	x3, [x0, #:got_lo12:Ch_1_Glob]	// tmp400, tmp831,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
	ldrb	w3, [x3]	//, Ch_1_Glob
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x22	//, tmp408
	mov	w3, 65	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:690:   fprintf (stderr, "Ch_2_Glob:           %c\n", Ch_2_Glob);
	ldr	x3, [x26, #:got_lo12:Ch_2_Glob]	// tmp413, tmp714,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	adrp	x2, .LC19	// tmp417,
	ldrb	w3, [x3]	//, Ch_2_Glob
	add	x2, x2, :lo12:.LC19	//, tmp417,
	mov	x26, x27	// tmp382, tmp382
	adrp	x27, .LC26	// tmp476,
	add	x27, x27, :lo12:.LC26	// tmp475, tmp476,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x22	//, tmp408
	mov	w3, 66	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	adrp	x0, :got:Arr_1_Glob	// tmp832,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	adrp	x2, .LC20	// tmp430,
	add	x2, x2, :lo12:.LC20	//, tmp430,
// dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	ldr	x3, [x0, #:got_lo12:Arr_1_Glob]	// tmp426, tmp832,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x3, 32]	//, Arr_1_Glob
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x26	//, tmp382
	mov	w3, 7	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	adrp	x0, :got:Arr_2_Glob	// tmp833,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	adrp	x2, .LC21	// tmp443,
	add	x2, x2, :lo12:.LC21	//, tmp443,
// dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	ldr	x3, [x0, #:got_lo12:Arr_2_Glob]	// tmp439, tmp833,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x3, 1628]	//, Arr_2_Glob
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 41	//,
	mov	x1, 1	//,
	adrp	x0, .LC22	// tmp451,
	add	x0, x0, :lo12:.LC22	//, tmp451,
	bl	fwrite		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 11	//,
	mov	x1, 1	//,
	adrp	x0, .LC23	// tmp456,
	add	x0, x0, :lo12:.LC23	//, tmp456,
	bl	fwrite		//
// dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	adrp	x0, :got:Ptr_Glob	// tmp834,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x28	//, tmp461
	mov	w1, 1	//,
// dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	ldr	x22, [x0, #:got_lo12:Ptr_Glob]	// tmp458, tmp834,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
// dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	ldr	x3, [x22]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x3, [x3]	//, Ptr_Glob.44_53->Ptr_Comp
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 48	//,
	mov	x1, 1	//,
	adrp	x0, .LC25	// tmp470,
	add	x0, x0, :lo12:.LC25	//, tmp470,
	bl	fwrite		//
// dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	ldr	x1, [x22]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x27	//, tmp475
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x1, 8]	//, Ptr_Glob.47_58->Discr
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	str	x26, [sp, 104]	// tmp382, %sfp
	ldr	x0, [x19]	//, stderr
	mov	x2, x26	//, tmp382
	mov	w3, 0	//,
	mov	w1, 1	//,
	adrp	x26, .LC27	// tmp490,
	add	x26, x26, :lo12:.LC27	// tmp489, tmp490,
	bl	__fprintf_chk		//
// dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	ldr	x1, [x22]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x26	//, tmp489
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x1, 12]	//, Ptr_Glob.50_62->variant.var_1.Enum_Comp
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	w3, 2	//,
	ldr	x2, [sp, 104]	//, %sfp
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	ldr	x1, [x22]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	adrp	x0, .LC28	// tmp504,
	add	x7, x0, :lo12:.LC28	// tmp503, tmp504,
	str	x7, [sp, 136]	// tmp503, %sfp
	ldr	x0, [x19]	//, stderr
	mov	x2, x7	//, tmp503
	ldr	w3, [x1, 16]	//, Ptr_Glob.53_66->variant.var_1.Int_Comp
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	w3, 17	//,
	ldr	x2, [sp, 104]	//, %sfp
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	adrp	x1, .LC29	// tmp518,
	add	x6, x1, :lo12:.LC29	// tmp517, tmp518,
	mov	w1, 1	//,
	ldr	x3, [x22]	// Ptr_Glob, Ptr_Glob
	mov	x2, x6	//, tmp517
	str	x6, [sp, 112]	// tmp517, %sfp
	add	x3, x3, 20	//, Ptr_Glob,
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	adrp	x0, .LC30	// tmp526,
	add	x4, x0, :lo12:.LC30	// tmp525, tmp526,
	mov	x2, 52	//,
	mov	x0, x4	//, tmp525
	mov	x1, 1	//,
	str	x4, [sp, 128]	// tmp525, %sfp
	bl	fwrite		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 16	//,
	mov	x1, 1	//,
	adrp	x0, .LC31	// tmp531,
	add	x0, x0, :lo12:.LC31	//, tmp531,
	bl	fwrite		//
// dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	adrp	x0, :got:Next_Ptr_Glob	// tmp835,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x28	//, tmp461
	mov	w1, 1	//,
// dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	ldr	x22, [x0, #:got_lo12:Next_Ptr_Glob]	// tmp533, tmp835,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
// dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	ldr	x3, [x22]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x3, [x3]	//, Next_Ptr_Glob.60_75->Ptr_Comp
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 63	//,
	mov	x1, 1	//,
	adrp	x0, .LC32	// tmp545,
	add	x0, x0, :lo12:.LC32	//, tmp545,
	bl	fwrite		//
// dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	ldr	x3, [x22]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x27	//, tmp475
	ldr	x0, [x19]	//, stderr
	mov	w1, 1	//,
	ldr	w3, [x3, 8]	//, Next_Ptr_Glob.63_80->Discr
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	w3, 0	//,
	ldr	x27, [sp, 104]	// tmp382, %sfp
	mov	w1, 1	//,
	mov	x2, x27	//, tmp382
	bl	__fprintf_chk		//
// dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	ldr	x3, [x22]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x26	//, tmp489
	ldr	x0, [x19]	//, stderr
	mov	w1, 1	//,
	ldr	w3, [x3, 12]	//, Next_Ptr_Glob.66_84->variant.var_1.Enum_Comp
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	w3, 1	//,
	mov	x2, x27	//, tmp382
	mov	w1, w3	//,
	bl	__fprintf_chk		//
// dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	ldr	x3, [x22]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x3, 16]	//, Next_Ptr_Glob.69_88->variant.var_1.Int_Comp
	ldr	x7, [sp, 136]	// tmp503, %sfp
	mov	x2, x7	//, tmp503
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x27	//, tmp382
	mov	w3, 18	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	w1, 1	//,
	ldr	x6, [sp, 112]	// tmp517, %sfp
	ldr	x3, [x22]	// Next_Ptr_Glob, Next_Ptr_Glob
	mov	x2, x6	//, tmp517
	add	x3, x3, 20	//, Next_Ptr_Glob,
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 52	//,
	ldr	x4, [sp, 128]	// tmp525, %sfp
	mov	x1, 1	//,
	mov	x0, x4	//, tmp525
	bl	fwrite		//
	ldr	x0, [x19]	//, stderr
	mov	w3, w20	//, Int_1_Loc
	mov	w1, 1	//,
	adrp	x2, .LC33	// tmp603,
	add	x2, x2, :lo12:.LC33	//, tmp603,
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	adrp	x20, :got:Microseconds	// tmp680,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x27	//, tmp382
	mov	w3, 5	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	ldr	w5, [sp, 144]	//, %sfp
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	sub	w1, w5, w21	// tmp612, prephitmp_271, Int_3_Loc.17_21
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	lsl	w2, w1, 3	// tmp614, tmp612,
	sub	w1, w2, w1	// tmp615, tmp614, tmp612
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	adrp	x2, .LC34	// tmp618,
	sub	w3, w1, w25	//, tmp615, _22
	add	x2, x2, :lo12:.LC34	//, tmp618,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x27	//, tmp382
	mov	w3, 13	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	w3, [sp, 160]	//, Int_3_Loc
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	adrp	x2, .LC35	// tmp629,
	add	x2, x2, :lo12:.LC35	//, tmp629,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x27	//, tmp382
	mov	w3, 7	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	w3, [sp, 164]	//, Enum_Loc
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	adrp	x2, .LC36	// tmp640,
	add	x2, x2, :lo12:.LC36	//, tmp640,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	w3, 1	//,
	mov	x2, x27	//, tmp382
	mov	w1, w3	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x3, x24	//, tmp712
	mov	w1, 1	//,
	adrp	x2, .LC37	// tmp651,
	add	x2, x2, :lo12:.LC37	//, tmp651,
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 52	//,
	mov	x1, 1	//,
	adrp	x0, .LC38	// tmp659,
	add	x0, x0, :lo12:.LC38	//, tmp659,
	bl	fwrite		//
	ldr	x0, [x19]	//, stderr
	mov	x3, x23	//, tmp716
	mov	w1, 1	//,
	adrp	x2, .LC39	// tmp662,
	add	x2, x2, :lo12:.LC39	//, tmp662,
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 52	//,
	mov	x1, 1	//,
	adrp	x0, .LC40	// tmp670,
	add	x0, x0, :lo12:.LC40	//, tmp670,
	bl	fwrite		//
	ldr	x1, [x19]	//, stderr
	mov	w0, 10	//,
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	adrp	x19, :got:Dhrystones_Per_Second	// tmp688,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	bl	fputc		//
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	adrp	x0, :got:User_Time	// tmp837,
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	ldr	s0, [sp, 156]	//, %sfp
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	mov	w1, 1120403456	// tmp746,
	fmov	s1, w1	// tmp678, tmp746
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	ldr	x0, [x0, #:got_lo12:User_Time]	// tmp674, tmp837,
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	scvtf	s0, s0	// tmp677, Number_Of_Runs
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	mov	x1, 145685290680320	// tmp747,
	movk	x1, 0x412e, lsl 48	// tmp747,,
	fmov	d3, x1	// tmp683, tmp747
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	ldr	x0, [x0]	// User_Time, User_Time
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fmul	s0, s0, s1	// _116, tmp677, tmp678
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	ldr	x19, [x19, #:got_lo12:Dhrystones_Per_Second]	// tmp687, tmp688,
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	scvtf	s2, x0	// _112, User_Time
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	ldr	x20, [x20, #:got_lo12:Microseconds]	// tmp679, tmp680,
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fcvt	d4, s0	// tmp684, _116
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x1, .LC41	// tmp691,
	mov	w0, 1	//,
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	fcvt	d1, s2	// tmp681, _112
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	add	x1, x1, :lo12:.LC41	//, tmp691,
// dry.c:737:                         / (float) User_Time;
	fdiv	s0, s0, s2	// tmp689, _116, _112
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	fmul	d1, d1, d3	// tmp682, tmp681, tmp683
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fdiv	d1, d1, d4	// tmp685, tmp682, tmp684
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	str	s0, [x19]	// tmp689, Dhrystones_Per_Second
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fcvt	s0, d1	// tmp686, tmp685
	str	s0, [x20]	// tmp686, Microseconds
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	bl	__printf_chk		//
// dry.c:740:     printf ("%10.2f \n", Microseconds);
	ldr	s0, [x20]	// Microseconds, Microseconds
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x1, .LC42	// tmp697,
	mov	w0, 1	//,
	add	x1, x1, :lo12:.LC42	//, tmp697,
	fcvt	d0, s0	//, Microseconds
	bl	__printf_chk		//
	adrp	x1, .LC43	// tmp699,
	mov	w0, 1	//,
	add	x1, x1, :lo12:.LC43	//, tmp699,
	bl	__printf_chk		//
// dry.c:742:     printf ("%10.0f \n", Dhrystones_Per_Second);
	ldr	s0, [x19]	// Dhrystones_Per_Second, Dhrystones_Per_Second
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x1, .LC44	// tmp705,
	add	x1, x1, :lo12:.LC44	//, tmp705,
	mov	w0, 1	//,
	fcvt	d0, s0	//, Dhrystones_Per_Second
	bl	__printf_chk		//
	mov	w0, 10	//,
	bl	putchar		//
// dry.c:745: }
	adrp	x0, :got:__stack_chk_guard	// tmp838,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp707, tmp838,
	ldr	x1, [sp, 232]	// tmp788, D.5812
	ldr	x2, [x0]	// tmp789, __stack_chk_guard
	subs	x1, x1, x2	// tmp788, tmp789
	mov	x2, 0	// tmp789
	bne	.L41		//,
	mov	w0, 0	//,
	ldp	x19, x20, [sp, 16]	//,,
	ldp	x21, x22, [sp, 32]	//,,
	ldp	x23, x24, [sp, 48]	//,,
	ldp	x25, x26, [sp, 64]	//,,
	ldp	x27, x28, [sp, 80]	//,,
	ldp	x29, x30, [sp], 240	//,,,
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
.L38:
	.cfi_restore_state
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x0, .LC5	// tmp264,
	add	x0, x0, :lo12:.LC5	//, tmp264,
	bl	puts		//
	b	.L19		//
	.p2align 2,,3
.L29:
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	mov	w5, 9	// prephitmp_271,
	b	.L20		//
.L40:
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x0, .LC12	// tmp355,
	add	x0, x0, :lo12:.LC12	//, tmp355,
	bl	puts		//
// dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	ldr	w0, [sp, 156]	//, %sfp
	add	w2, w0, w0, lsl 2	// tmp358, Number_Of_Runs, Number_Of_Runs,
// dry.c:611:   while (!Done) {
	adrp	x0, :got:Done	// tmp825,
	ldr	x0, [x0, #:got_lo12:Done]	// tmp360, tmp825,
// dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	lsl	w1, w2, 1	// Number_Of_Runs, tmp358,
	str	w1, [sp, 156]	// Number_Of_Runs, %sfp
// dry.c:611:   while (!Done) {
	ldr	w0, [x0]	//, Done
	cbz	w0, .L26	// Done,
	mov	x24, x25	// tmp712, tmp712
	ldr	w5, [sp, 104]	//, %sfp
	mov	w25, w20	// _22, _22
	mov	w20, w21	// Int_1_Loc, Int_1_Loc
	mov	w21, w22	// Int_3_Loc.17_21, Int_3_Loc.17_21
	b	.L27		//
.L37:
// /usr/include/stdlib.h:363:   return (int) strtol (__nptr, (char **) NULL, 10);
	ldr	x0, [x0, 8]	//, MEM[(char * *)argv_142(D) + 8B]
	mov	w2, 10	//,
	mov	x1, 0	//,
	bl	strtol		//
// /usr/include/stdlib.h:363:   return (int) strtol (__nptr, (char **) NULL, 10);
	str	w0, [sp, 156]	// _184, %sfp
// dry.c:573:   if (Number_Of_Runs <= 0)
	cmp	w0, 0	// _184,
	bgt	.L17		//,
	b	.L16		//
.L41:
// dry.c:745: }
	bl	__stack_chk_fail		//
.L36:
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	ldr	x2, [x0]	//, *argv_142(D)
	adrp	x1, .LC0	// tmp229,
	add	x1, x1, :lo12:.LC0	//, tmp229,
	mov	w0, 1	//,
	bl	__printf_chk		//
// dry.c:564:      exit (1);
	mov	w0, 1	//,
	bl	exit		//
	.cfi_endproc
.LFE50:
	.size	main, .-main
	.section	.rodata.str1.8
	.align	3
.LC2:
	.string	"DHRYSTONE PROGRAM, 1'ST STRING"
	.align	3
.LC11:
	.string	"DHRYSTONE PROGRAM, 3'RD STRING"
	.align	3
.LC10:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
	.section	.text.startup
	.text
	.align	2
	.p2align 3,,7
	.global	Proc_4
	.type	Proc_4, %function
Proc_4:
.LFB54:
	.cfi_startproc
// dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	adrp	x1, :got:Ch_1_Glob	// tmp98,
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	adrp	x0, :got:Bool_Glob	// tmp96,
// dry.c:822:   Ch_2_Glob = 'B';
	adrp	x2, :got:Ch_2_Glob	// tmp107,
	mov	w3, 66	// tmp108,
// dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	ldr	x1, [x1, #:got_lo12:Ch_1_Glob]	// tmp97, tmp98,
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	ldr	x0, [x0, #:got_lo12:Bool_Glob]	// tmp95, tmp96,
// dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	ldrb	w1, [x1]	// Ch_1_Glob, Ch_1_Glob
// dry.c:822:   Ch_2_Glob = 'B';
	ldr	x2, [x2, #:got_lo12:Ch_2_Glob]	// tmp106, tmp107,
// dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	cmp	w1, 65	// Ch_1_Glob,
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	ldr	w4, [x0]	//, Bool_Glob
// dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	cset	w1, eq	// Bool_Loc,
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	orr	w1, w1, w4	// tmp104, Bool_Loc, Bool_Glob
// dry.c:822:   Ch_2_Glob = 'B';
	strb	w3, [x2]	// tmp108, Ch_2_Glob
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	str	w1, [x0]	// tmp104, Bool_Glob
// dry.c:823: } /* Proc_4 */
	ret	
	.cfi_endproc
.LFE54:
	.size	Proc_4, .-Proc_4
	.align	2
	.p2align 3,,7
	.global	Proc_5
	.type	Proc_5, %function
Proc_5:
.LFB55:
	.cfi_startproc
// dry.c:830:   Ch_1_Glob = 'A';
	adrp	x1, :got:Ch_1_Glob	// tmp91,
// dry.c:831:   Bool_Glob = false;
	adrp	x0, :got:Bool_Glob	// tmp94,
// dry.c:830:   Ch_1_Glob = 'A';
	mov	w2, 65	// tmp92,
	ldr	x1, [x1, #:got_lo12:Ch_1_Glob]	// tmp90, tmp91,
// dry.c:831:   Bool_Glob = false;
	ldr	x0, [x0, #:got_lo12:Bool_Glob]	// tmp93, tmp94,
// dry.c:830:   Ch_1_Glob = 'A';
	strb	w2, [x1]	// tmp92, Ch_1_Glob
// dry.c:831:   Bool_Glob = false;
	str	wzr, [x0]	//, Bool_Glob
// dry.c:832: } /* Proc_5 */
	ret	
	.cfi_endproc
.LFE55:
	.size	Proc_5, .-Proc_5
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
