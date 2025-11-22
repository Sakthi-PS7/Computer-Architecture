	.arch armv8-a
	.file	"dry.c"
// GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.2) version 9.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu dry.c -mlittle-endian
// -mabi=lp64 -auxbase-strip asm-snippets_ARM_V8/dry_O3_v8.s -O3
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
	.global	Proc_1
	.type	Proc_1, %function
Proc_1:
.LFB51:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	adrp	x1, :got:Int_Glob	// tmp121,
// dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	mov	w3, 5	// tmp114,
// dry.c:752: {
	mov	x29, sp	//,
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	ldr	x1, [x1, #:got_lo12:Int_Glob]	// tmp120, tmp121,
// dry.c:752: {
	stp	x19, x20, [sp, 16]	//,,
	.cfi_offset 19, -32
	.cfi_offset 20, -24
	mov	x20, x0	// Ptr_Val_Par, tmp138
// dry.c:753:   REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
	ldr	x19, [x0]	// Next_Record, Ptr_Val_Par_14(D)->Ptr_Comp
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	mov	w0, 10	//,
	ldr	w1, [x1]	//, Int_Glob
// dry.c:752: {
	str	x21, [sp, 32]	//,
	.cfi_offset 21, -16
// dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	adrp	x21, :got:Ptr_Glob	// tmp107,
	ldr	x21, [x21, #:got_lo12:Ptr_Glob]	// tmp106, tmp107,
	ldr	x2, [x21]	// Ptr_Glob.94_1, Ptr_Glob
	ldp	x4, x5, [x2]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	stp	x4, x5, [x19]	// *Ptr_Glob.94_1, *Next_Record_15
	ldp	x4, x5, [x2, 16]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	stp	x4, x5, [x19, 16]	// *Ptr_Glob.94_1, *Next_Record_15
	ldp	x4, x5, [x2, 32]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	stp	x4, x5, [x19, 32]	// *Ptr_Glob.94_1, *Next_Record_15
	ldr	x4, [x2, 48]	// *Ptr_Glob.94_1, *Ptr_Glob.94_1
	str	x4, [x19, 48]	// *Ptr_Glob.94_1, *Next_Record_15
// dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	str	w3, [x20, 16]	// tmp114, Ptr_Val_Par_14(D)->variant.var_1.Int_Comp
// dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	ldr	x4, [x20]	// _4, Ptr_Val_Par_14(D)->Ptr_Comp
// dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	str	x4, [x19]	// _4, Next_Record_15->Ptr_Comp
// dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	str	w3, [x19, 16]	// tmp114, Next_Record_15->variant.var_1.Int_Comp
// dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	ldr	x2, [x2]	// _26, Ptr_Glob.94_1->Ptr_Comp
// dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	str	x2, [x19]	// _26, MEM[(struct record * *)Next_Record_15]
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	ldr	x2, [x21]	// Ptr_Glob, Ptr_Glob
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	add	x2, x2, 16	//, Ptr_Glob,
	bl	Proc_7		//
// dry.c:766:   if (Next_Record->Discr == Ident_1)
	ldr	w0, [x19, 8]	//, Next_Record_15->Discr
	cbz	w0, .L5	// Next_Record_15->Discr,
// dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	ldr	x0, [x20]	// _30, Ptr_Val_Par_14(D)->Ptr_Comp
// dry.c:778: } /* Proc_1 */
	ldr	x21, [sp, 32]	//,
// dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	ldp	x2, x3, [x0]	// *_30, *_30
	stp	x2, x3, [x20]	// *_30, *Ptr_Val_Par_14(D)
	ldp	x2, x3, [x0, 16]	// *_30, *_30
	stp	x2, x3, [x20, 16]	// *_30, *Ptr_Val_Par_14(D)
	ldp	x2, x3, [x0, 32]	// *_30, *_30
	stp	x2, x3, [x20, 32]	// *_30, *Ptr_Val_Par_14(D)
	ldr	x0, [x0, 48]	// *_30, *_30
	str	x0, [x20, 48]	// *_30, *Ptr_Val_Par_14(D)
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
.L5:
	.cfi_restore_state
// dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	ldr	w0, [x20, 12]	//, Ptr_Val_Par_14(D)->variant.var_1.Enum_Comp
// dry.c:769:     Next_Record->variant.var_1.Int_Comp = 6;
	mov	w1, 6	// tmp124,
	str	w1, [x19, 16]	// tmp124, Next_Record_15->variant.var_1.Int_Comp
// dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	add	x1, x19, 12	//, Next_Record,
	bl	Proc_6		//
// dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	ldr	x3, [x21]	// Ptr_Glob, Ptr_Glob
// dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	mov	x2, x19	// tmp130, Next_Record
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
	cmp	w0, 2	// tmp744,
// dry.c:549: {
	adrp	x0, :got:__stack_chk_guard	// tmp792,
	mov	x29, sp	//,
	ldr	x2, [x0, #:got_lo12:__stack_chk_guard]	// tmp227, tmp792,
	mov	x0, x1	// argv, tmp745
	stp	x19, x20, [sp, 16]	//,,
	ldr	x1, [x2]	// tmp789, __stack_chk_guard
	str	x1, [sp, 232]	// tmp789, D.5811
	mov	x1,0	// tmp789
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
	bgt	.L30		//,
// dry.c:566:   if (argc == 2)
	beq	.L31		//,
.L8:
// dry.c:575:      Number_Of_Runs = NUMBER_OF_RUNS;
	mov	w0, 50000	// Number_Of_Runs,
	str	w0, [sp, 156]	// Number_Of_Runs, %sfp
.L9:
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x0, 56	//,
	bl	malloc		//
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	adrp	x1, :got:Next_Ptr_Glob	// tmp794,
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x19, x0	// tmp231, tmp747
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x0, 56	//,
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	ldr	x1, [x1, #:got_lo12:Next_Ptr_Glob]	// tmp232, tmp794,
	str	x19, [x1]	// tmp231, Next_Ptr_Glob
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	bl	malloc		//
// dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	adrp	x1, .LC45	// tmp795,
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:90:   return __builtin___strcpy_chk (__dest, __src, __bos (__dest));
	add	x4, x0, 20	// tmp239, tmp234,
	adrp	x3, .LC1	// tmp241,
	add	x3, x3, :lo12:.LC1	// tmp240, tmp241,
// dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	ldr	d0, [x1, #:lo12:.LC45]	// tmp237,
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x1, x0	// tmp234, tmp748
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	adrp	x0, :got:Ptr_Glob	// tmp796,
	adrp	x2, .LC2	// tmp248,
	add	x2, x2, :lo12:.LC2	// tmp247, tmp248,
// dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	mov	w7, 40	// tmp238,
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	ldr	x6, [x0, #:got_lo12:Ptr_Glob]	// tmp235, tmp796,
// dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	str	w7, [x1, 16]	// tmp238, MEM[(struct record *)_4].variant.var_1.Int_Comp
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:90:   return __builtin___strcpy_chk (__dest, __src, __bos (__dest));
	ldr	x7, [x3, 16]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x7, [x1, 36]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_4 + 20B]
	ldr	x7, [x2, 16]	// tmp252,
// dry.c:591:   Arr_2_Glob [8][7] = 10;
	adrp	x0, :got:Arr_2_Glob	// tmp797,
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	str	x1, [x6]	// tmp234, Ptr_Glob
	str	x7, [sp, 184]	// tmp252, MEM[(char * {ref-all})&Str_1_Loc]
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:90:   return __builtin___strcpy_chk (__dest, __src, __bos (__dest));
	ldp	x8, x9, [x3]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
// dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	str	x19, [x1]	// tmp231, MEM[(struct record *)_4].Ptr_Comp
	ldp	x6, x7, [x2]	// tmp251,
// dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	str	d0, [x1, 8]	// tmp237, MEM[(void *)_4 + 8B]
// dry.c:591:   Arr_2_Glob [8][7] = 10;
	ldr	x5, [x0, #:got_lo12:Arr_2_Glob]	// tmp254, tmp797,
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:90:   return __builtin___strcpy_chk (__dest, __src, __bos (__dest));
	stp	x8, x9, [x4]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_4 + 20B]
// dry.c:591:   Arr_2_Glob [8][7] = 10;
	mov	w0, 10	// tmp256,
// /usr/include/aarch64-linux-gnu/bits/string_fortified.h:90:   return __builtin___strcpy_chk (__dest, __src, __bos (__dest));
	ldr	x1, [x3, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x1, [x4, 23]	// MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"], MEM[(void *)_4 + 20B]
	ldr	x2, [x2, 23]	// tmp253,
	stp	x6, x7, [sp, 168]	// tmp251, MEM[(char * {ref-all})&Str_1_Loc]
	str	x2, [sp, 191]	// tmp253, MEM[(char * {ref-all})&Str_1_Loc]
// dry.c:591:   Arr_2_Glob [8][7] = 10;
	str	w0, [x5, 1628]	// tmp256, Arr_2_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	bl	putchar		//
	mov	w0, 1	//,
	adrp	x2, .LC3	// tmp258,
	adrp	x1, .LC4	// tmp260,
	add	x2, x2, :lo12:.LC3	//, tmp258,
	add	x1, x1, :lo12:.LC4	//, tmp260,
	bl	__printf_chk		//
// dry.c:599:   if (Reg)
	adrp	x0, .LANCHOR0	// tmp262,
// dry.c:599:   if (Reg)
	ldr	w0, [x0, #:lo12:.LANCHOR0]	//, Reg
	cbnz	w0, .L32	// Reg,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x0, .LC6	// tmp267,
	add	x0, x0, :lo12:.LC6	//, tmp267,
	bl	puts		//
.L11:
	adrp	x2, .LC7	// tmp269,
	adrp	x1, .LC8	// tmp271,
	add	x2, x2, :lo12:.LC7	//, tmp269,
	add	x1, x1, :lo12:.LC8	//, tmp271,
	mov	w3, 100	//,
	mov	w0, 1	//,
	bl	__printf_chk		//
	add	x24, sp, 168	// tmp721,,
	mov	w0, 10	//,
	bl	putchar		//
// dry.c:610:   Done = false;
	adrp	x0, :got:Done	// tmp798,
	adrp	x1, .LC11	// tmp740,
	add	x23, sp, 200	// tmp723,,
// dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	add	x28, sp, 164	// tmp739,,
// dry.c:610:   Done = false;
	ldr	x0, [x0, #:got_lo12:Done]	// tmp272, tmp798,
	mov	x25, x24	// tmp721, tmp721
	add	x22, x1, :lo12:.LC11	// tmp741, tmp740,
	adrp	x26, :got:Ch_2_Glob	// tmp715,
	add	x1, sp, 160	// tmp718,,
	adrp	x27, :got:Int_Glob	// tmp727,
	str	wzr, [x0]	//, Done
	str	x1, [sp, 144]	// tmp718, %sfp
	.p2align 3,,7
.L20:
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	ldr	w20, [sp, 156]	//, %sfp
	adrp	x0, .LC9	// tmp800,
	add	x1, x0, :lo12:.LC9	//, tmp800,
	mov	w0, 1	//,
	mov	w2, w20	//, Number_Of_Runs
	bl	__printf_chk		//
// dry.c:619:     Start_Timer();
	adrp	x0, :got:time_info	// tmp801,
	ldr	x19, [x0, #:got_lo12:time_info]	// tmp276, tmp801,
	add	w0, w20, 1	// _121, Number_Of_Runs,
	str	w0, [sp, 96]	// _121, %sfp
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	mov	w20, 1	// Run_Index,
// dry.c:619:     Start_Timer();
	mov	x0, x19	//, tmp276
	bl	times		//
	adrp	x0, .LC10	// tmp804,
	add	x0, x0, :lo12:.LC10	// tmp292, tmp804,
	adrp	x1, :got:Begin_Time	// tmp805,
	ldp	x2, x3, [x0]	// tmp296,
	stp	x2, x3, [sp, 112]	// tmp296, %sfp
	ldr	x1, [x1, #:got_lo12:Begin_Time]	// tmp278, tmp805,
// dry.c:830:   Ch_1_Glob = 'A';
	adrp	x2, :got:Ch_1_Glob	// tmp808,
	ldr	x2, [x2, #:got_lo12:Ch_1_Glob]	// tmp283, tmp808,
	str	x2, [sp, 104]	// tmp283, %sfp
// dry.c:619:     Start_Timer();
	ldr	x2, [x19]	// time_info.tms_utime, time_info.tms_utime
	str	x2, [x1]	// time_info.tms_utime, Begin_Time
	ldr	x1, [x0, 16]	// tmp297,
	ldr	x0, [x0, 23]	// tmp298,
	stp	x1, x0, [sp, 128]	// tmp297, tmp298, %sfp
	.p2align 3,,7
.L18:
// dry.c:830:   Ch_1_Glob = 'A';
	mov	w4, 65	// tmp814,
	ldr	x0, [sp, 128]	// tmp297, %sfp
	str	x0, [x23, 16]	// tmp297, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	adrp	x0, :got:Bool_Glob	// tmp812,
	mov	w2, 1	// tmp288,
// dry.c:822:   Ch_2_Glob = 'B';
	ldr	x19, [x26, #:got_lo12:Ch_2_Glob]	// tmp289, tmp715,
// dry.c:630:       Enum_Loc = Ident_2;
	str	w2, [sp, 164]	// tmp288, Enum_Loc
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	ldr	x21, [x0, #:got_lo12:Bool_Glob]	// tmp286, tmp812,
// dry.c:822:   Ch_2_Glob = 'B';
	mov	w3, 66	// tmp291,
// dry.c:830:   Ch_1_Glob = 'A';
	ldr	x0, [sp, 104]	// tmp283, %sfp
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	mov	x1, x23	//, tmp723
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	str	w2, [x21]	// tmp288, Bool_Glob
	ldr	x2, [sp, 136]	// tmp298, %sfp
// dry.c:830:   Ch_1_Glob = 'A';
	strb	w4, [x0]	// tmp814, Ch_1_Glob
	ldp	x4, x5, [sp, 112]	// tmp296, %sfp
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	mov	x0, x25	//, tmp721
	stp	x4, x5, [x23]	// tmp296, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:822:   Ch_2_Glob = 'B';
	strb	w3, [x19]	// tmp291, Ch_2_Glob
	str	x2, [x23, 23]	// tmp298, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	bl	Func_2		//
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	cmp	w0, 0	// tmp749,
// dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	ldr	x2, [sp, 144]	//, %sfp
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	cset	w0, eq	// tmp305,
// dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	mov	w1, 7	// tmp306,
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	str	w0, [x21]	// tmp305, Bool_Glob
// dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	mov	w0, 2	//,
// dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	str	w1, [sp, 160]	// tmp306, Int_3_Loc
// dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	mov	w1, 3	//,
	bl	Proc_7		//
// dry.c:642:       Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	adrp	x0, :got:Arr_2_Glob	// tmp817,
	ldr	w3, [sp, 160]	//, Int_3_Loc
	mov	w2, 3	//,
	ldr	x1, [x0, #:got_lo12:Arr_2_Glob]	//, tmp817,
	adrp	x0, :got:Arr_1_Glob	// tmp818,
	ldr	x0, [x0, #:got_lo12:Arr_1_Glob]	//, tmp818,
	bl	Proc_8		//
// dry.c:644:       Proc_1 (Ptr_Glob);
	adrp	x0, :got:Ptr_Glob	// tmp819,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp313, tmp819,
	ldr	x0, [x0]	//, Ptr_Glob
	bl	Proc_1		//
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldrb	w0, [x19]	// Ch_2_Glob, Ch_2_Glob
	cmp	w0, 64	// Ch_2_Glob,
	bls	.L23		//,
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	mov	w24, 65	// Ch_Index,
// dry.c:628:       Int_2_Loc = 3;
	mov	w21, 3	// Int_2_Loc,
	.p2align 3,,7
.L16:
// dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	mov	w1, 67	//,
	mov	w0, w24	//, Ch_Index
	bl	Func_1		//
// dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	ldr	w1, [sp, 164]	//, Enum_Loc
	cmp	w0, w1	// tmp750, Enum_Loc
	beq	.L33		//,
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldrb	w1, [x19]	// Ch_2_Glob, Ch_2_Glob
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	add	w0, w24, 1	// tmp334, Ch_Index,
	and	w24, w0, 255	// Ch_Index, tmp334
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	cmp	w1, w0, uxtb	// Ch_2_Glob, tmp334
	bcs	.L16		//,
.L15:
	add	w5, w21, w21, lsl 1	// prephitmp_271, Int_2_Loc, Int_2_Loc,
.L12:
// dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	ldr	w6, [sp, 160]	//, Int_3_Loc
// dry.c:791:     if (Ch_1_Glob == 'A')
	adrp	x0, :got:Ch_1_Glob	// tmp820,
	ldr	x0, [x0, #:got_lo12:Ch_1_Glob]	// tmp341, tmp820,
// dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	sdiv	w21, w5, w6	// _22, prephitmp_271, Int_3_Loc.17_21
// dry.c:791:     if (Ch_1_Glob == 'A')
	ldrb	w0, [x0]	// Ch_1_Glob, Ch_1_Glob
// dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	mov	w19, w21	// Int_1_Loc, _22
// dry.c:791:     if (Ch_1_Glob == 'A')
	cmp	w0, 65	// Ch_1_Glob,
	bne	.L17		//,
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	ldr	x0, [x27, #:got_lo12:Int_Glob]	// tmp345, tmp727,
// dry.c:794:       Int_Loc -= 1;
	add	w19, w21, 9	// Int_Loc, _22,
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	ldr	w0, [x0]	//, Int_Glob
	sub	w19, w19, w0	// Int_1_Loc, Int_Loc, Int_Glob
.L17:
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	ldr	w0, [sp, 96]	//, %sfp
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	add	w20, w20, 1	// Run_Index, Run_Index,
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	cmp	w0, w20	// _121, Run_Index
	bne	.L18		//,
// dry.c:671:     Stop_Timer();
	adrp	x0, :got:time_info	// tmp822,
	mov	w24, w6	// Int_3_Loc.17_21, Int_3_Loc.17_21
	str	w5, [sp, 96]	// prephitmp_271, %sfp
	ldr	x20, [x0, #:got_lo12:time_info]	// tmp348, tmp822,
	mov	x0, x20	//, tmp348
	bl	times		//
// dry.c:673:     User_Time = End_Time - Begin_Time;
	adrp	x0, :got:Begin_Time	// tmp823,
	ldr	x2, [x0, #:got_lo12:Begin_Time]	// tmp354, tmp823,
// dry.c:671:     Stop_Timer();
	adrp	x0, :got:End_Time	// tmp824,
	ldr	x3, [x0, #:got_lo12:End_Time]	// tmp352, tmp824,
// dry.c:673:     User_Time = End_Time - Begin_Time;
	adrp	x0, :got:User_Time	// tmp825,
// dry.c:673:     User_Time = End_Time - Begin_Time;
	ldr	x2, [x2]	// Begin_Time, Begin_Time
// dry.c:673:     User_Time = End_Time - Begin_Time;
	ldr	x1, [x0, #:got_lo12:User_Time]	// tmp357, tmp825,
// dry.c:671:     Stop_Timer();
	ldr	x0, [x20]	// _25, time_info.tms_utime
	str	x0, [x3]	// _25, End_Time
// dry.c:673:     User_Time = End_Time - Begin_Time;
	sub	x0, x0, x2	// _27, _25, Begin_Time
// dry.c:673:     User_Time = End_Time - Begin_Time;
	str	x0, [x1]	// _27, User_Time
// dry.c:675:     if (User_Time < Too_Small_Time)
	cmp	x0, 199	// _27,
	ble	.L34		//,
// dry.c:679:     } else Done = true;
	adrp	x0, :got:Done	// tmp829,
	ldr	w5, [sp, 96]	//, %sfp
	mov	w6, w24	// Int_3_Loc.17_21, Int_3_Loc.17_21
	mov	x24, x25	// tmp721, tmp721
	ldr	x0, [x0, #:got_lo12:Done]	// tmp368, tmp829,
	mov	w25, w21	// _22, _22
	mov	w21, w19	// Int_1_Loc, Int_1_Loc
	mov	w1, 1	// tmp370,
	str	w1, [x0]	// tmp370, Done
.L21:
// dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	adrp	x19, :got:stderr	// tmp372,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, 53	//,
	mov	x1, 1	//,
	adrp	x0, .LC13	// tmp375,
// dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	ldr	x19, [x19, #:got_lo12:stderr]	// tmp371, tmp372,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	add	x0, x0, :lo12:.LC13	//, tmp375,
	str	w6, [sp, 128]	// Int_3_Loc.17_21, %sfp
	adrp	x20, .LC15	// tmp388,
	str	w5, [sp, 136]	// prephitmp_271, %sfp
	add	x20, x20, :lo12:.LC15	// tmp387, tmp388,
	ldr	x3, [x19]	//, stderr
	adrp	x22, .LC18	// tmp414,
	add	x22, x22, :lo12:.LC18	// tmp413, tmp414,
	adrp	x28, .LC24	// tmp467,
	add	x28, x28, :lo12:.LC24	// tmp466, tmp467,
	bl	fwrite		//
	ldr	x1, [x19]	//, stderr
	mov	w0, 10	//,
	bl	fputc		//
// dry.c:684:   fprintf (stderr, "Int_Glob:            %d\n", Int_Glob);
	ldr	x3, [x27, #:got_lo12:Int_Glob]	// tmp379, tmp727,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	adrp	x2, .LC14	// tmp383,
	ldr	w3, [x3]	//, Int_Glob
	add	x2, x2, :lo12:.LC14	//, tmp383,
	adrp	x27, .LC26	// tmp481,
	add	x27, x27, :lo12:.LC26	// tmp480, tmp481,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 5	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	adrp	x0, :got:Bool_Glob	// tmp830,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	adrp	x2, .LC16	// tmp396,
	add	x2, x2, :lo12:.LC16	//, tmp396,
// dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	ldr	x3, [x0, #:got_lo12:Bool_Glob]	// tmp392, tmp830,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x3]	//, Bool_Glob
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 1	//,
	mov	w1, w3	//,
	bl	__fprintf_chk		//
// dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	adrp	x0, :got:Ch_1_Glob	// tmp831,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	adrp	x2, .LC17	// tmp409,
	add	x2, x2, :lo12:.LC17	//, tmp409,
// dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	ldr	x3, [x0, #:got_lo12:Ch_1_Glob]	// tmp405, tmp831,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
	ldrb	w3, [x3]	//, Ch_1_Glob
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x22	//, tmp413
	mov	w3, 65	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:690:   fprintf (stderr, "Ch_2_Glob:           %c\n", Ch_2_Glob);
	ldr	x3, [x26, #:got_lo12:Ch_2_Glob]	// tmp418, tmp715,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	adrp	x2, .LC19	// tmp422,
	ldrb	w3, [x3]	//, Ch_2_Glob
	add	x2, x2, :lo12:.LC19	//, tmp422,
	adrp	x26, .LC27	// tmp495,
	add	x26, x26, :lo12:.LC27	// tmp494, tmp495,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x22	//, tmp413
	mov	w3, 66	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	adrp	x0, :got:Arr_1_Glob	// tmp832,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	adrp	x2, .LC20	// tmp435,
	add	x2, x2, :lo12:.LC20	//, tmp435,
// dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	ldr	x3, [x0, #:got_lo12:Arr_1_Glob]	// tmp431, tmp832,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x3, 32]	//, Arr_1_Glob
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 7	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	adrp	x0, :got:Arr_2_Glob	// tmp833,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	adrp	x2, .LC21	// tmp448,
	add	x2, x2, :lo12:.LC21	//, tmp448,
// dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	ldr	x3, [x0, #:got_lo12:Arr_2_Glob]	// tmp444, tmp833,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x3, 1628]	//, Arr_2_Glob
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 41	//,
	mov	x1, 1	//,
	adrp	x0, .LC22	// tmp456,
	add	x0, x0, :lo12:.LC22	//, tmp456,
	bl	fwrite		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 11	//,
	mov	x1, 1	//,
	adrp	x0, .LC23	// tmp461,
	add	x0, x0, :lo12:.LC23	//, tmp461,
	bl	fwrite		//
// dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	adrp	x0, :got:Ptr_Glob	// tmp834,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x28	//, tmp466
	mov	w1, 1	//,
// dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	ldr	x22, [x0, #:got_lo12:Ptr_Glob]	// tmp463, tmp834,
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
	adrp	x0, .LC25	// tmp475,
	add	x0, x0, :lo12:.LC25	//, tmp475,
	bl	fwrite		//
// dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	ldr	x1, [x22]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x27	//, tmp480
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x1, 8]	//, Ptr_Glob.47_58->Discr
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 0	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	ldr	x1, [x22]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x26	//, tmp494
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x1, 12]	//, Ptr_Glob.50_62->variant.var_1.Enum_Comp
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 2	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	ldr	x1, [x22]	// Ptr_Glob, Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	adrp	x0, .LC28	// tmp509,
	add	x8, x0, :lo12:.LC28	// tmp508, tmp509,
	str	x8, [sp, 112]	// tmp508, %sfp
	ldr	x0, [x19]	//, stderr
	mov	x2, x8	//, tmp508
	ldr	w3, [x1, 16]	//, Ptr_Glob.53_66->variant.var_1.Int_Comp
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 17	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	adrp	x1, .LC29	// tmp523,
	add	x7, x1, :lo12:.LC29	// tmp522, tmp523,
	mov	w1, 1	//,
	ldr	x3, [x22]	// Ptr_Glob, Ptr_Glob
	mov	x2, x7	//, tmp522
	str	x7, [sp, 104]	// tmp522, %sfp
	add	x3, x3, 20	//, Ptr_Glob,
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	adrp	x0, .LC30	// tmp531,
	add	x4, x0, :lo12:.LC30	// tmp530, tmp531,
	mov	x2, 52	//,
	mov	x0, x4	//, tmp530
	mov	x1, 1	//,
	str	x4, [sp, 96]	// tmp530, %sfp
	bl	fwrite		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 16	//,
	mov	x1, 1	//,
	adrp	x0, .LC31	// tmp536,
	add	x0, x0, :lo12:.LC31	//, tmp536,
	bl	fwrite		//
// dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	adrp	x0, :got:Next_Ptr_Glob	// tmp835,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x28	//, tmp466
	mov	w1, 1	//,
// dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	ldr	x22, [x0, #:got_lo12:Next_Ptr_Glob]	// tmp538, tmp835,
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
	adrp	x0, .LC32	// tmp550,
	add	x0, x0, :lo12:.LC32	//, tmp550,
	bl	fwrite		//
// dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	ldr	x3, [x22]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x27	//, tmp480
	ldr	x0, [x19]	//, stderr
	mov	w1, 1	//,
	ldr	w3, [x3, 8]	//, Next_Ptr_Glob.63_80->Discr
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 0	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	ldr	x3, [x22]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	x2, x26	//, tmp494
	ldr	x0, [x19]	//, stderr
	mov	w1, 1	//,
	ldr	w3, [x3, 12]	//, Next_Ptr_Glob.66_84->variant.var_1.Enum_Comp
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 1	//,
	mov	w1, w3	//,
	bl	__fprintf_chk		//
// dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	ldr	x3, [x22]	// Next_Ptr_Glob, Next_Ptr_Glob
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	ldr	w3, [x3, 16]	//, Next_Ptr_Glob.69_88->variant.var_1.Int_Comp
	ldr	x8, [sp, 112]	// tmp508, %sfp
	mov	x2, x8	//, tmp508
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 18	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	w1, 1	//,
	ldr	x7, [sp, 104]	// tmp522, %sfp
	ldr	x3, [x22]	// Next_Ptr_Glob, Next_Ptr_Glob
	mov	x2, x7	//, tmp522
	add	x3, x3, 20	//, Next_Ptr_Glob,
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 52	//,
	ldr	x4, [sp, 96]	// tmp530, %sfp
	mov	x1, 1	//,
	mov	x0, x4	//, tmp530
	bl	fwrite		//
	ldr	x0, [x19]	//, stderr
	mov	w3, w21	//, Int_1_Loc
	mov	w1, 1	//,
	adrp	x2, .LC33	// tmp608,
	add	x2, x2, :lo12:.LC33	//, tmp608,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 5	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	ldr	w6, [sp, 128]	//, %sfp
	ldr	w5, [sp, 136]	//, %sfp
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	ldr	x0, [x19]	//, stderr
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	sub	w1, w5, w6	// tmp617, prephitmp_271, Int_3_Loc.17_21
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	lsl	w2, w1, 3	// tmp619, tmp617,
	sub	w1, w2, w1	// tmp620, tmp619, tmp617
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	adrp	x2, .LC34	// tmp623,
	sub	w3, w1, w25	//, tmp620, _22
	add	x2, x2, :lo12:.LC34	//, tmp623,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 13	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	w3, [sp, 160]	//, Int_3_Loc
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	adrp	x2, .LC35	// tmp634,
	add	x2, x2, :lo12:.LC35	//, tmp634,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 7	//,
	mov	w1, 1	//,
	bl	__fprintf_chk		//
	ldr	w3, [sp, 164]	//, Enum_Loc
	mov	w1, 1	//,
	ldr	x0, [x19]	//, stderr
	adrp	x2, .LC36	// tmp645,
	add	x2, x2, :lo12:.LC36	//, tmp645,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x2, x20	//, tmp387
	mov	w3, 1	//,
	mov	w1, w3	//,
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	adrp	x20, :got:Microseconds	// tmp685,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	bl	__fprintf_chk		//
	ldr	x0, [x19]	//, stderr
	mov	x3, x24	//, tmp721
	mov	w1, 1	//,
	adrp	x2, .LC37	// tmp656,
	add	x2, x2, :lo12:.LC37	//, tmp656,
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 52	//,
	mov	x1, 1	//,
	adrp	x0, .LC38	// tmp664,
	add	x0, x0, :lo12:.LC38	//, tmp664,
	bl	fwrite		//
	ldr	x0, [x19]	//, stderr
	mov	x3, x23	//, tmp723
	mov	w1, 1	//,
	adrp	x2, .LC39	// tmp667,
	add	x2, x2, :lo12:.LC39	//, tmp667,
	bl	__fprintf_chk		//
	ldr	x3, [x19]	//, stderr
	mov	x2, 52	//,
	mov	x1, 1	//,
	adrp	x0, .LC40	// tmp675,
	add	x0, x0, :lo12:.LC40	//, tmp675,
	bl	fwrite		//
	ldr	x1, [x19]	//, stderr
	mov	w0, 10	//,
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	adrp	x19, :got:Dhrystones_Per_Second	// tmp693,
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:100:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	bl	fputc		//
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	adrp	x0, :got:User_Time	// tmp837,
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	ldr	s0, [sp, 156]	//, %sfp
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	mov	w1, 1120403456	// tmp751,
	fmov	s1, w1	// tmp683, tmp751
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	ldr	x0, [x0, #:got_lo12:User_Time]	// tmp679, tmp837,
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	scvtf	s0, s0	// tmp682, Number_Of_Runs
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	mov	x1, 145685290680320	// tmp752,
	movk	x1, 0x412e, lsl 48	// tmp752,,
	fmov	d3, x1	// tmp688, tmp752
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	ldr	x0, [x0]	// User_Time, User_Time
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fmul	s0, s0, s1	// _116, tmp682, tmp683
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	ldr	x19, [x19, #:got_lo12:Dhrystones_Per_Second]	// tmp692, tmp693,
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	scvtf	s2, x0	// _112, User_Time
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	ldr	x20, [x20, #:got_lo12:Microseconds]	// tmp684, tmp685,
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fcvt	d4, s0	// tmp689, _116
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x1, .LC41	// tmp696,
	mov	w0, 1	//,
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	fcvt	d1, s2	// tmp686, _112
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	add	x1, x1, :lo12:.LC41	//, tmp696,
// dry.c:737:                         / (float) User_Time;
	fdiv	s0, s0, s2	// tmp694, _116, _112
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	fmul	d1, d1, d3	// tmp687, tmp686, tmp688
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fdiv	d1, d1, d4	// tmp690, tmp687, tmp689
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	str	s0, [x19]	// tmp694, Dhrystones_Per_Second
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fcvt	s0, d1	// tmp691, tmp690
	str	s0, [x20]	// tmp691, Microseconds
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	bl	__printf_chk		//
// dry.c:740:     printf ("%10.2f \n", Microseconds);
	ldr	s0, [x20]	// Microseconds, Microseconds
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x1, .LC42	// tmp702,
	mov	w0, 1	//,
	add	x1, x1, :lo12:.LC42	//, tmp702,
	fcvt	d0, s0	//, Microseconds
	bl	__printf_chk		//
	adrp	x1, .LC43	// tmp704,
	mov	w0, 1	//,
	add	x1, x1, :lo12:.LC43	//, tmp704,
	bl	__printf_chk		//
// dry.c:742:     printf ("%10.0f \n", Dhrystones_Per_Second);
	ldr	s0, [x19]	// Dhrystones_Per_Second, Dhrystones_Per_Second
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x1, .LC44	// tmp710,
	add	x1, x1, :lo12:.LC44	//, tmp710,
	mov	w0, 1	//,
	fcvt	d0, s0	//, Dhrystones_Per_Second
	bl	__printf_chk		//
	mov	w0, 10	//,
	bl	putchar		//
// dry.c:745: }
	adrp	x0, :got:__stack_chk_guard	// tmp838,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp712, tmp838,
	ldr	x1, [sp, 232]	// tmp790, D.5811
	ldr	x2, [x0]	// tmp791, __stack_chk_guard
	subs	x1, x1, x2	// tmp790, tmp791
	mov	x2, 0	// tmp791
	bne	.L35		//,
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
.L32:
	.cfi_restore_state
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x0, .LC5	// tmp265,
	add	x0, x0, :lo12:.LC5	//, tmp265,
	bl	puts		//
	b	.L11		//
	.p2align 2,,3
.L33:
// dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	mov	x1, x28	//, tmp739
	mov	w0, 0	//,
	bl	Proc_6		//
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	mov	w21, w20	// Int_2_Loc, Run_Index
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldr	x1, [x26, #:got_lo12:Ch_2_Glob]	// tmp331, tmp715,
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	add	w2, w24, 1	// tmp330, Ch_Index,
// dry.c:654: 	  Int_Glob = Run_Index;
	ldr	x0, [x27, #:got_lo12:Int_Glob]	// tmp328, tmp727,
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	and	w24, w2, 255	// Ch_Index, tmp330
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldrb	w1, [x1]	// Ch_2_Glob, Ch_2_Glob
	ldr	x3, [x22, 16]	// tmp326,
// dry.c:654: 	  Int_Glob = Run_Index;
	str	w20, [x0]	// Run_Index, Int_Glob
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	cmp	w1, w2, uxtb	// Ch_2_Glob, tmp330
	str	x3, [x23, 16]	// tmp326, MEM[(char * {ref-all})&Str_2_Loc]
	ldp	x0, x1, [x22]	// tmp325,
	stp	x0, x1, [x23]	// tmp325, MEM[(char * {ref-all})&Str_2_Loc]
	ldr	x0, [x22, 23]	// tmp327,
	str	x0, [x23, 23]	// tmp327, MEM[(char * {ref-all})&Str_2_Loc]
	bcs	.L16		//,
	b	.L15		//
	.p2align 2,,3
.L23:
	mov	w5, 9	// prephitmp_271,
	b	.L12		//
.L34:
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	adrp	x0, .LC12	// tmp360,
	add	x0, x0, :lo12:.LC12	//, tmp360,
	bl	puts		//
// dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	ldr	w0, [sp, 156]	//, %sfp
	add	w1, w0, w0, lsl 2	// tmp363, Number_Of_Runs, Number_Of_Runs,
// dry.c:611:   while (!Done) {
	adrp	x0, :got:Done	// tmp827,
	ldr	x0, [x0, #:got_lo12:Done]	// tmp365, tmp827,
// dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	lsl	w1, w1, 1	// Number_Of_Runs, tmp363,
	str	w1, [sp, 156]	// Number_Of_Runs, %sfp
// dry.c:611:   while (!Done) {
	ldr	w0, [x0]	//, Done
	cbz	w0, .L20	// Done,
	mov	w6, w24	// Int_3_Loc.17_21, Int_3_Loc.17_21
	ldr	w5, [sp, 96]	//, %sfp
	mov	x24, x25	// tmp721, tmp721
	mov	w25, w21	// _22, _22
	mov	w21, w19	// Int_1_Loc, Int_1_Loc
	b	.L21		//
.L31:
// /usr/include/stdlib.h:363:   return (int) strtol (__nptr, (char **) NULL, 10);
	ldr	x0, [x0, 8]	//, MEM[(char * *)argv_142(D) + 8B]
	mov	w2, 10	//,
	mov	x1, 0	//,
	bl	strtol		//
// /usr/include/stdlib.h:363:   return (int) strtol (__nptr, (char **) NULL, 10);
	str	w0, [sp, 156]	// _184, %sfp
// dry.c:573:   if (Number_Of_Runs <= 0)
	cmp	w0, 0	// _184,
	bgt	.L9		//,
	b	.L8		//
.L35:
// dry.c:745: }
	bl	__stack_chk_fail		//
.L30:
// /usr/include/aarch64-linux-gnu/bits/stdio2.h:107:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	ldr	x2, [x0]	//, *argv_142(D)
	adrp	x1, .LC0	// tmp230,
	add	x1, x1, :lo12:.LC0	//, tmp230,
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
	beq	.L38		//,
// dry.c:799: } /* Proc_2 */
	ret	
	.p2align 2,,3
.L38:
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
	cbz	x2, .L40	// pretmp_12,
// dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	ldr	x2, [x2]	// _2, Ptr_Glob.98_1->Ptr_Comp
// dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	str	x2, [x0]	// _2, *Ptr_Ref_Par_8(D)
	ldr	x2, [x1]	// pretmp_12, Ptr_Glob
.L40:
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC45:
	.word	0
	.word	2
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	Reg, %object
	.size	Reg, 4
Reg:
	.zero	4
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
