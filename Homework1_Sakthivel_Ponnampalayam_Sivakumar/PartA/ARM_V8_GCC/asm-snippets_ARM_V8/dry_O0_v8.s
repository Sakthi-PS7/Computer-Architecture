	.arch armv8-a
	.file	"dry.c"
// GNU C17 (Ubuntu 9.4.0-1ubuntu1~20.04.2) version 9.4.0 (aarch64-linux-gnu)
//	compiled by GNU C version 9.4.0, GMP version 6.2.0, MPFR version 4.0.2, MPC version 1.1.0, isl version isl-0.22.1-GMP

// GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
// options passed:  -imultiarch aarch64-linux-gnu dry.c -mlittle-endian
// -mabi=lp64 -auxbase-strip asm-snippets_ARM_V8/dry_O0_v8.s -O0
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
	.comm	time_info,32,8
	.comm	Ptr_Glob,8,8
	.comm	Next_Ptr_Glob,8,8
	.comm	Int_Glob,4,4
	.comm	Bool_Glob,4,4
	.comm	Ch_1_Glob,1,1
	.comm	Ch_2_Glob,1,1
	.comm	Arr_1_Glob,200,8
	.comm	Arr_2_Glob,10000,8
	.global	Reg
	.bss
	.align	2
	.type	Reg, %object
	.size	Reg, 4
Reg:
	.zero	4
	.comm	Done,4,4
	.comm	Begin_Time,8,8
	.comm	End_Time,8,8
	.comm	User_Time,8,8
	.comm	Microseconds,4,4
	.comm	Dhrystones_Per_Second,4,4
	.section	.rodata
	.align	3
.LC0:
	.string	"Usage: %s [number of loops]\n"
	.align	3
.LC1:
	.string	"DHRYSTONE PROGRAM, SOME STRING"
	.align	3
.LC2:
	.string	"DHRYSTONE PROGRAM, 1'ST STRING"
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
.LC10:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
	.align	3
.LC11:
	.string	"DHRYSTONE PROGRAM, 3'RD STRING"
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
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -144]!	//,,,
	.cfi_def_cfa_offset 144
	.cfi_offset 29, -144
	.cfi_offset 30, -136
	mov	x29, sp	//,
	str	w0, [sp, 28]	// argc, argc
	str	x1, [sp, 16]	// argv, argv
// dry.c:549: {
	adrp	x0, :got:__stack_chk_guard	// tmp236,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp235, tmp236,
	ldr	x1, [x0]	// tmp584, __stack_chk_guard
	str	x1, [sp, 136]	// tmp584, D.5185
	mov	x1,0	// tmp584
// dry.c:561:   if (argc > 2)
	ldr	w0, [sp, 28]	// tmp237, argc
	cmp	w0, 2	// tmp237,
	ble	.L2		//,
// dry.c:563:      printf ("Usage: %s [number of loops]\n", argv[0]);
	ldr	x0, [sp, 16]	// tmp238, argv
	ldr	x0, [x0]	// _1, *argv_161(D)
	mov	x1, x0	//, _1
	adrp	x0, .LC0	// tmp239,
	add	x0, x0, :lo12:.LC0	//, tmp239,
	bl	printf		//
// dry.c:564:      exit (1);
	mov	w0, 1	//,
	bl	exit		//
.L2:
// dry.c:566:   if (argc == 2)
	ldr	w0, [sp, 28]	// tmp240, argc
	cmp	w0, 2	// tmp240,
	bne	.L3		//,
// dry.c:568:      Number_Of_Runs = atoi (argv[1]);
	ldr	x0, [sp, 16]	// tmp241, argv
	add	x0, x0, 8	// _2, tmp241,
// dry.c:568:      Number_Of_Runs = atoi (argv[1]);
	ldr	x0, [x0]	// _3, *_2
	bl	atoi		//
	str	w0, [sp, 68]	//, Number_Of_Runs
	b	.L4		//
.L3:
// dry.c:571:      Number_Of_Runs = NUMBER_OF_RUNS;
	mov	w0, 50000	// tmp242,
	str	w0, [sp, 68]	// tmp242, Number_Of_Runs
.L4:
// dry.c:573:   if (Number_Of_Runs <= 0)
	ldr	w0, [sp, 68]	// tmp243, Number_Of_Runs
	cmp	w0, 0	// tmp243,
	bgt	.L5		//,
// dry.c:575:      Number_Of_Runs = NUMBER_OF_RUNS;
	mov	w0, 50000	// tmp244,
	str	w0, [sp, 68]	// tmp244, Number_Of_Runs
.L5:
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x0, 56	//,
	bl	malloc		//
	mov	x1, x0	// _4, tmp245
// dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	adrp	x0, :got:Next_Ptr_Glob	// tmp247,
	ldr	x0, [x0, #:got_lo12:Next_Ptr_Glob]	// tmp246, tmp247,
	str	x1, [x0]	// _4, Next_Ptr_Glob
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	mov	x0, 56	//,
	bl	malloc		//
	mov	x1, x0	// _5, tmp248
// dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	adrp	x0, :got:Ptr_Glob	// tmp250,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp249, tmp250,
	str	x1, [x0]	// _5, Ptr_Glob
// dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	adrp	x0, :got:Ptr_Glob	// tmp252,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp251, tmp252,
	ldr	x0, [x0]	// Ptr_Glob.0_6, Ptr_Glob
// dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	adrp	x1, :got:Next_Ptr_Glob	// tmp254,
	ldr	x1, [x1, #:got_lo12:Next_Ptr_Glob]	// tmp253, tmp254,
	ldr	x1, [x1]	// Next_Ptr_Glob.1_7, Next_Ptr_Glob
	str	x1, [x0]	// Next_Ptr_Glob.1_7, Ptr_Glob.0_6->Ptr_Comp
// dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	adrp	x0, :got:Ptr_Glob	// tmp256,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp255, tmp256,
	ldr	x0, [x0]	// Ptr_Glob.2_8, Ptr_Glob
// dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	str	wzr, [x0, 8]	//, Ptr_Glob.2_8->Discr
// dry.c:585:   Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
	adrp	x0, :got:Ptr_Glob	// tmp258,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp257, tmp258,
	ldr	x0, [x0]	// Ptr_Glob.3_9, Ptr_Glob
// dry.c:585:   Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
	mov	w1, 2	// tmp259,
	str	w1, [x0, 12]	// tmp259, Ptr_Glob.3_9->variant.var_1.Enum_Comp
// dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	adrp	x0, :got:Ptr_Glob	// tmp261,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp260, tmp261,
	ldr	x0, [x0]	// Ptr_Glob.4_10, Ptr_Glob
// dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	mov	w1, 40	// tmp262,
	str	w1, [x0, 16]	// tmp262, Ptr_Glob.4_10->variant.var_1.Int_Comp
// dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	adrp	x0, :got:Ptr_Glob	// tmp264,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp263, tmp264,
	ldr	x0, [x0]	// Ptr_Glob.5_11, Ptr_Glob
// dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	add	x2, x0, 20	// _12, Ptr_Glob.5_11,
// dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	adrp	x0, .LC1	// tmp266,
	add	x1, x0, :lo12:.LC1	// tmp265, tmp266,
	mov	x0, x2	// tmp267, _12
	ldp	x2, x3, [x1]	// tmp269, MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	stp	x2, x3, [x0]	// tmp269, MEM[(void *)_12]
	ldr	x2, [x1, 16]	// tmp270, MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x2, [x0, 16]	// tmp270, MEM[(void *)_12]
	ldr	x1, [x1, 23]	// tmp271, MEM[(void *)"DHRYSTONE PROGRAM, SOME STRING"]
	str	x1, [x0, 23]	// tmp271, MEM[(void *)_12]
// dry.c:589:   strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
	adrp	x0, .LC2	// tmp273,
	add	x1, x0, :lo12:.LC2	// tmp272, tmp273,
	add	x0, sp, 72	// tmp274,,
	ldp	x2, x3, [x1]	// tmp276, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 1\'ST STRING"]
	stp	x2, x3, [x0]	// tmp276, MEM[(char * {ref-all})&Str_1_Loc]
	ldr	x2, [x1, 16]	// tmp277, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 1\'ST STRING"]
	str	x2, [x0, 16]	// tmp277, MEM[(char * {ref-all})&Str_1_Loc]
	ldr	x1, [x1, 23]	// tmp278, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 1\'ST STRING"]
	str	x1, [x0, 23]	// tmp278, MEM[(char * {ref-all})&Str_1_Loc]
// dry.c:591:   Arr_2_Glob [8][7] = 10;
	adrp	x0, :got:Arr_2_Glob	// tmp280,
	ldr	x0, [x0, #:got_lo12:Arr_2_Glob]	// tmp279, tmp280,
	mov	w1, 10	// tmp281,
	str	w1, [x0, 1628]	// tmp281, Arr_2_Glob
// dry.c:597:   printf ("\n");
	mov	w0, 10	//,
	bl	putchar		//
// dry.c:598:   printf ("Dhrystone Benchmark, Version %s\n", Version);
	adrp	x0, .LC3	// tmp282,
	add	x1, x0, :lo12:.LC3	//, tmp282,
	adrp	x0, .LC4	// tmp283,
	add	x0, x0, :lo12:.LC4	//, tmp283,
	bl	printf		//
// dry.c:599:   if (Reg)
	adrp	x0, Reg	// tmp285,
	add	x0, x0, :lo12:Reg	// tmp284, tmp285,
	ldr	w0, [x0]	// Reg.6_13, Reg
// dry.c:599:   if (Reg)
	cmp	w0, 0	// Reg.6_13,
	beq	.L6		//,
// dry.c:601:     printf ("Program compiled with 'register' attribute\n");
	adrp	x0, .LC5	// tmp286,
	add	x0, x0, :lo12:.LC5	//, tmp286,
	bl	puts		//
	b	.L7		//
.L6:
// dry.c:605:     printf ("Program compiled without 'register' attribute\n");
	adrp	x0, .LC6	// tmp287,
	add	x0, x0, :lo12:.LC6	//, tmp287,
	bl	puts		//
.L7:
// dry.c:607:   printf ("Using %s, HZ=%d\n", CLOCK_TYPE, HZ);
	mov	w2, 100	//,
	adrp	x0, .LC7	// tmp288,
	add	x1, x0, :lo12:.LC7	//, tmp288,
	adrp	x0, .LC8	// tmp289,
	add	x0, x0, :lo12:.LC8	//, tmp289,
	bl	printf		//
// dry.c:608:   printf ("\n");
	mov	w0, 10	//,
	bl	putchar		//
// dry.c:610:   Done = false;
	adrp	x0, :got:Done	// tmp291,
	ldr	x0, [x0, #:got_lo12:Done]	// tmp290, tmp291,
	str	wzr, [x0]	//, Done
// dry.c:611:   while (!Done) {
	b	.L8		//
.L17:
// dry.c:613:     printf ("Trying %d runs: ", Number_Of_Runs);
	ldr	w1, [sp, 68]	//, Number_Of_Runs
	adrp	x0, .LC9	// tmp292,
	add	x0, x0, :lo12:.LC9	//, tmp292,
	bl	printf		//
// dry.c:619:     Start_Timer();
	adrp	x0, :got:time_info	// tmp293,
	ldr	x0, [x0, #:got_lo12:time_info]	//, tmp293,
	bl	times		//
	adrp	x0, :got:time_info	// tmp295,
	ldr	x0, [x0, #:got_lo12:time_info]	// tmp294, tmp295,
	ldr	x1, [x0]	// _14, time_info.tms_utime
	adrp	x0, :got:Begin_Time	// tmp297,
	ldr	x0, [x0, #:got_lo12:Begin_Time]	// tmp296, tmp297,
	str	x1, [x0]	// _14, Begin_Time
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	mov	w0, 1	// tmp298,
	str	w0, [sp, 64]	// tmp298, Run_Index
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	b	.L9		//
.L15:
// dry.c:624:       Proc_5();
	bl	Proc_5		//
// dry.c:625:       Proc_4();
	bl	Proc_4		//
// dry.c:627:       Int_1_Loc = 2;
	mov	w0, 2	// tmp299,
	str	w0, [sp, 48]	// tmp299, Int_1_Loc
// dry.c:628:       Int_2_Loc = 3;
	mov	w0, 3	// tmp300,
	str	w0, [sp, 60]	// tmp300, Int_2_Loc
// dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	adrp	x0, .LC10	// tmp302,
	add	x1, x0, :lo12:.LC10	// tmp301, tmp302,
	add	x0, sp, 104	// tmp303,,
	ldp	x2, x3, [x1]	// tmp305, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 2\'ND STRING"]
	stp	x2, x3, [x0]	// tmp305, MEM[(char * {ref-all})&Str_2_Loc]
	ldr	x2, [x1, 16]	// tmp306, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 2\'ND STRING"]
	str	x2, [x0, 16]	// tmp306, MEM[(char * {ref-all})&Str_2_Loc]
	ldr	x1, [x1, 23]	// tmp307, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 2\'ND STRING"]
	str	x1, [x0, 23]	// tmp307, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:630:       Enum_Loc = Ident_2;
	mov	w0, 1	// tmp308,
	str	w0, [sp, 56]	// tmp308, Enum_Loc
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	add	x1, sp, 104	// tmp309,,
	add	x0, sp, 72	// tmp310,,
	bl	Func_2		//
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	cmp	w0, 0	// _15,
	cset	w0, eq	// tmp312,
	and	w0, w0, 255	// _16, tmp311
	mov	w1, w0	// _17, _16
// dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	adrp	x0, :got:Bool_Glob	// tmp314,
	ldr	x0, [x0, #:got_lo12:Bool_Glob]	// tmp313, tmp314,
	str	w1, [x0]	// _17, Bool_Glob
// dry.c:633:       while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
	b	.L10		//
.L11:
// dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	ldr	w1, [sp, 48]	// Int_1_Loc.7_18, Int_1_Loc
	mov	w0, w1	// tmp315, Int_1_Loc.7_18
	lsl	w0, w0, 2	// tmp316, tmp315,
	add	w1, w0, w1	// _19, tmp315, Int_1_Loc.7_18
// dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	ldr	w0, [sp, 60]	// tmp317, Int_2_Loc
	sub	w0, w1, w0	// _20, _19, tmp317
// dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	str	w0, [sp, 52]	// _20, Int_3_Loc
// dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	ldr	w0, [sp, 48]	// Int_1_Loc.8_21, Int_1_Loc
	add	x1, sp, 52	// tmp318,,
	mov	x2, x1	//, tmp318
	ldr	w1, [sp, 60]	//, Int_2_Loc
	bl	Proc_7		//
// dry.c:639: 	Int_1_Loc += 1;
	ldr	w0, [sp, 48]	// Int_1_Loc.9_22, Int_1_Loc
	add	w0, w0, 1	// _23, Int_1_Loc.9_22,
	str	w0, [sp, 48]	// _23, Int_1_Loc
.L10:
// dry.c:633:       while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
	ldr	w0, [sp, 48]	// Int_1_Loc.10_24, Int_1_Loc
// dry.c:633:       while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
	ldr	w1, [sp, 60]	// tmp319, Int_2_Loc
	cmp	w1, w0	// tmp319, Int_1_Loc.10_24
	bgt	.L11		//,
// dry.c:642:       Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	ldr	w0, [sp, 48]	// Int_1_Loc.11_25, Int_1_Loc
	ldr	w1, [sp, 52]	// Int_3_Loc.12_26, Int_3_Loc
	mov	w3, w1	//, Int_3_Loc.12_26
	mov	w2, w0	//, Int_1_Loc.11_25
	adrp	x0, :got:Arr_2_Glob	// tmp320,
	ldr	x1, [x0, #:got_lo12:Arr_2_Glob]	//, tmp320,
	adrp	x0, :got:Arr_1_Glob	// tmp321,
	ldr	x0, [x0, #:got_lo12:Arr_1_Glob]	//, tmp321,
	bl	Proc_8		//
// dry.c:644:       Proc_1 (Ptr_Glob);
	adrp	x0, :got:Ptr_Glob	// tmp323,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp322, tmp323,
	ldr	x0, [x0]	// Ptr_Glob.13_27, Ptr_Glob
	bl	Proc_1		//
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	mov	w0, 65	// tmp324,
	strb	w0, [sp, 47]	// tmp324, Ch_Index
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	b	.L12		//
.L14:
// dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	mov	w1, 67	//,
	ldrb	w0, [sp, 47]	//, Ch_Index
	bl	Func_1		//
	mov	w1, w0	// _28,
// dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	ldr	w0, [sp, 56]	// Enum_Loc.14_29, Enum_Loc
// dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	cmp	w1, w0	// _28, Enum_Loc.14_29
	bne	.L13		//,
// dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	add	x0, sp, 56	// tmp325,,
	mov	x1, x0	//, tmp325
	mov	w0, 0	//,
	bl	Proc_6		//
// dry.c:652: 	  strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
	adrp	x0, .LC11	// tmp327,
	add	x1, x0, :lo12:.LC11	// tmp326, tmp327,
	add	x0, sp, 104	// tmp328,,
	ldp	x2, x3, [x1]	// tmp330, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 3\'RD STRING"]
	stp	x2, x3, [x0]	// tmp330, MEM[(char * {ref-all})&Str_2_Loc]
	ldr	x2, [x1, 16]	// tmp331, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 3\'RD STRING"]
	str	x2, [x0, 16]	// tmp331, MEM[(char * {ref-all})&Str_2_Loc]
	ldr	x1, [x1, 23]	// tmp332, MEM[(char * {ref-all})"DHRYSTONE PROGRAM, 3\'RD STRING"]
	str	x1, [x0, 23]	// tmp332, MEM[(char * {ref-all})&Str_2_Loc]
// dry.c:653: 	  Int_2_Loc = Run_Index;
	ldr	w0, [sp, 64]	// tmp333, Run_Index
	str	w0, [sp, 60]	// tmp333, Int_2_Loc
// dry.c:654: 	  Int_Glob = Run_Index;
	adrp	x0, :got:Int_Glob	// tmp335,
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp334, tmp335,
	ldr	w1, [sp, 64]	// tmp336, Run_Index
	str	w1, [x0]	// tmp336, Int_Glob
.L13:
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldrb	w0, [sp, 47]	// tmp337, Ch_Index
	add	w0, w0, 1	// tmp338, tmp337,
	strb	w0, [sp, 47]	// tmp339, Ch_Index
.L12:
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	adrp	x0, :got:Ch_2_Glob	// tmp341,
	ldr	x0, [x0, #:got_lo12:Ch_2_Glob]	// tmp340, tmp341,
	ldrb	w0, [x0]	// Ch_2_Glob.15_30, Ch_2_Glob
// dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	ldrb	w1, [sp, 47]	// tmp342, Ch_Index
	cmp	w1, w0	// tmp342, Ch_2_Glob.15_30
	bls	.L14		//,
// dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	ldr	w0, [sp, 48]	// Int_1_Loc.16_31, Int_1_Loc
// dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	ldr	w1, [sp, 60]	// tmp344, Int_2_Loc
	mul	w0, w1, w0	// tmp343, tmp344, Int_1_Loc.16_31
	str	w0, [sp, 60]	// tmp343, Int_2_Loc
// dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	ldr	w0, [sp, 52]	// Int_3_Loc.17_32, Int_3_Loc
	ldr	w1, [sp, 60]	// tmp345, Int_2_Loc
	sdiv	w0, w1, w0	// _33, tmp345, Int_3_Loc.17_32
// dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	str	w0, [sp, 48]	// _33, Int_1_Loc
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	ldr	w0, [sp, 52]	// Int_3_Loc.18_34, Int_3_Loc
	ldr	w1, [sp, 60]	// tmp346, Int_2_Loc
	sub	w1, w1, w0	// _35, tmp346, Int_3_Loc.18_34
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	mov	w0, w1	// tmp347, _35
	lsl	w0, w0, 3	// tmp348, tmp347,
	sub	w1, w0, w1	// _36, tmp347, _35
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	ldr	w0, [sp, 48]	// Int_1_Loc.19_37, Int_1_Loc
// dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	sub	w0, w1, w0	// tmp349, _36, Int_1_Loc.19_37
	str	w0, [sp, 60]	// tmp349, Int_2_Loc
// dry.c:662:       Proc_2 (&Int_1_Loc);
	add	x0, sp, 48	// tmp350,,
	bl	Proc_2		//
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	ldr	w0, [sp, 64]	// tmp352, Run_Index
	add	w0, w0, 1	// tmp351, tmp352,
	str	w0, [sp, 64]	// tmp351, Run_Index
.L9:
// dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	ldr	w1, [sp, 64]	// tmp353, Run_Index
	ldr	w0, [sp, 68]	// tmp354, Number_Of_Runs
	cmp	w1, w0	// tmp353, tmp354
	ble	.L15		//,
// dry.c:671:     Stop_Timer();
	adrp	x0, :got:time_info	// tmp355,
	ldr	x0, [x0, #:got_lo12:time_info]	//, tmp355,
	bl	times		//
	adrp	x0, :got:time_info	// tmp357,
	ldr	x0, [x0, #:got_lo12:time_info]	// tmp356, tmp357,
	ldr	x1, [x0]	// _38, time_info.tms_utime
	adrp	x0, :got:End_Time	// tmp359,
	ldr	x0, [x0, #:got_lo12:End_Time]	// tmp358, tmp359,
	str	x1, [x0]	// _38, End_Time
// dry.c:673:     User_Time = End_Time - Begin_Time;
	adrp	x0, :got:End_Time	// tmp361,
	ldr	x0, [x0, #:got_lo12:End_Time]	// tmp360, tmp361,
	ldr	x1, [x0]	// End_Time.20_39, End_Time
	adrp	x0, :got:Begin_Time	// tmp363,
	ldr	x0, [x0, #:got_lo12:Begin_Time]	// tmp362, tmp363,
	ldr	x0, [x0]	// Begin_Time.21_40, Begin_Time
	sub	x1, x1, x0	// _41, End_Time.20_39, Begin_Time.21_40
// dry.c:673:     User_Time = End_Time - Begin_Time;
	adrp	x0, :got:User_Time	// tmp365,
	ldr	x0, [x0, #:got_lo12:User_Time]	// tmp364, tmp365,
	str	x1, [x0]	// _41, User_Time
// dry.c:675:     if (User_Time < Too_Small_Time)
	adrp	x0, :got:User_Time	// tmp367,
	ldr	x0, [x0, #:got_lo12:User_Time]	// tmp366, tmp367,
	ldr	x0, [x0]	// User_Time.22_42, User_Time
// dry.c:675:     if (User_Time < Too_Small_Time)
	cmp	x0, 199	// User_Time.22_42,
	bgt	.L16		//,
// dry.c:677:       printf ("too few\n");
	adrp	x0, .LC12	// tmp368,
	add	x0, x0, :lo12:.LC12	//, tmp368,
	bl	puts		//
// dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	ldr	w1, [sp, 68]	// tmp369, Number_Of_Runs
	mov	w0, w1	// tmp370, tmp369
	lsl	w0, w0, 2	// tmp371, tmp370,
	add	w0, w0, w1	// tmp370, tmp370, tmp369
	lsl	w0, w0, 1	// tmp372, tmp370,
	str	w0, [sp, 68]	// tmp370, Number_Of_Runs
	b	.L8		//
.L16:
// dry.c:679:     } else Done = true;
	adrp	x0, :got:Done	// tmp374,
	ldr	x0, [x0, #:got_lo12:Done]	// tmp373, tmp374,
	mov	w1, 1	// tmp375,
	str	w1, [x0]	// tmp375, Done
.L8:
// dry.c:611:   while (!Done) {
	adrp	x0, :got:Done	// tmp377,
	ldr	x0, [x0, #:got_lo12:Done]	// tmp376, tmp377,
	ldr	w0, [x0]	// Done.23_43, Done
// dry.c:611:   while (!Done) {
	cmp	w0, 0	// Done.23_43,
	beq	.L17		//,
// dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	adrp	x0, :got:stderr	// tmp379,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp378, tmp379,
	ldr	x0, [x0]	// stderr.24_44, stderr
	mov	x3, x0	//, stderr.24_44
	mov	x2, 53	//,
	mov	x1, 1	//,
	adrp	x0, .LC13	// tmp380,
	add	x0, x0, :lo12:.LC13	//, tmp380,
	bl	fwrite		//
// dry.c:683:   fprintf (stderr, "\n");
	adrp	x0, :got:stderr	// tmp382,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp381, tmp382,
	ldr	x0, [x0]	// stderr.25_45, stderr
	mov	x1, x0	//, stderr.25_45
	mov	w0, 10	//,
	bl	fputc		//
// dry.c:684:   fprintf (stderr, "Int_Glob:            %d\n", Int_Glob);
	adrp	x0, :got:stderr	// tmp384,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp383, tmp384,
	ldr	x3, [x0]	// stderr.26_46, stderr
	adrp	x0, :got:Int_Glob	// tmp386,
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp385, tmp386,
	ldr	w0, [x0]	// Int_Glob.27_47, Int_Glob
	mov	w2, w0	//, Int_Glob.27_47
	adrp	x0, .LC14	// tmp387,
	add	x1, x0, :lo12:.LC14	//, tmp387,
	mov	x0, x3	//, stderr.26_46
	bl	fprintf		//
// dry.c:685:   fprintf (stderr, "        should be:   %d\n", 5);
	adrp	x0, :got:stderr	// tmp389,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp388, tmp389,
	ldr	x3, [x0]	// stderr.28_48, stderr
	mov	w2, 5	//,
	adrp	x0, .LC15	// tmp390,
	add	x1, x0, :lo12:.LC15	//, tmp390,
	mov	x0, x3	//, stderr.28_48
	bl	fprintf		//
// dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	adrp	x0, :got:stderr	// tmp392,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp391, tmp392,
	ldr	x3, [x0]	// stderr.29_49, stderr
	adrp	x0, :got:Bool_Glob	// tmp394,
	ldr	x0, [x0, #:got_lo12:Bool_Glob]	// tmp393, tmp394,
	ldr	w0, [x0]	// Bool_Glob.30_50, Bool_Glob
	mov	w2, w0	//, Bool_Glob.30_50
	adrp	x0, .LC16	// tmp395,
	add	x1, x0, :lo12:.LC16	//, tmp395,
	mov	x0, x3	//, stderr.29_49
	bl	fprintf		//
// dry.c:687:   fprintf (stderr, "        should be:   %d\n", 1);
	adrp	x0, :got:stderr	// tmp397,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp396, tmp397,
	ldr	x3, [x0]	// stderr.31_51, stderr
	mov	w2, 1	//,
	adrp	x0, .LC15	// tmp398,
	add	x1, x0, :lo12:.LC15	//, tmp398,
	mov	x0, x3	//, stderr.31_51
	bl	fprintf		//
// dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	adrp	x0, :got:stderr	// tmp400,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp399, tmp400,
	ldr	x3, [x0]	// stderr.32_52, stderr
	adrp	x0, :got:Ch_1_Glob	// tmp402,
	ldr	x0, [x0, #:got_lo12:Ch_1_Glob]	// tmp401, tmp402,
	ldrb	w0, [x0]	// Ch_1_Glob.33_53, Ch_1_Glob
	mov	w2, w0	//, _54
	adrp	x0, .LC17	// tmp403,
	add	x1, x0, :lo12:.LC17	//, tmp403,
	mov	x0, x3	//, stderr.32_52
	bl	fprintf		//
// dry.c:689:   fprintf (stderr, "        should be:   %c\n", 'A');
	adrp	x0, :got:stderr	// tmp405,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp404, tmp405,
	ldr	x3, [x0]	// stderr.34_55, stderr
	mov	w2, 65	//,
	adrp	x0, .LC18	// tmp406,
	add	x1, x0, :lo12:.LC18	//, tmp406,
	mov	x0, x3	//, stderr.34_55
	bl	fprintf		//
// dry.c:690:   fprintf (stderr, "Ch_2_Glob:           %c\n", Ch_2_Glob);
	adrp	x0, :got:stderr	// tmp408,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp407, tmp408,
	ldr	x3, [x0]	// stderr.35_56, stderr
	adrp	x0, :got:Ch_2_Glob	// tmp410,
	ldr	x0, [x0, #:got_lo12:Ch_2_Glob]	// tmp409, tmp410,
	ldrb	w0, [x0]	// Ch_2_Glob.36_57, Ch_2_Glob
	mov	w2, w0	//, _58
	adrp	x0, .LC19	// tmp411,
	add	x1, x0, :lo12:.LC19	//, tmp411,
	mov	x0, x3	//, stderr.35_56
	bl	fprintf		//
// dry.c:691:   fprintf (stderr, "        should be:   %c\n", 'B');
	adrp	x0, :got:stderr	// tmp413,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp412, tmp413,
	ldr	x3, [x0]	// stderr.37_59, stderr
	mov	w2, 66	//,
	adrp	x0, .LC18	// tmp414,
	add	x1, x0, :lo12:.LC18	//, tmp414,
	mov	x0, x3	//, stderr.37_59
	bl	fprintf		//
// dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	adrp	x0, :got:stderr	// tmp416,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp415, tmp416,
	ldr	x3, [x0]	// stderr.38_60, stderr
	adrp	x0, :got:Arr_1_Glob	// tmp418,
	ldr	x0, [x0, #:got_lo12:Arr_1_Glob]	// tmp417, tmp418,
	ldr	w0, [x0, 32]	// _61, Arr_1_Glob
	mov	w2, w0	//, _61
	adrp	x0, .LC20	// tmp419,
	add	x1, x0, :lo12:.LC20	//, tmp419,
	mov	x0, x3	//, stderr.38_60
	bl	fprintf		//
// dry.c:693:   fprintf (stderr, "        should be:   %d\n", 7);
	adrp	x0, :got:stderr	// tmp421,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp420, tmp421,
	ldr	x3, [x0]	// stderr.39_62, stderr
	mov	w2, 7	//,
	adrp	x0, .LC15	// tmp422,
	add	x1, x0, :lo12:.LC15	//, tmp422,
	mov	x0, x3	//, stderr.39_62
	bl	fprintf		//
// dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	adrp	x0, :got:stderr	// tmp424,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp423, tmp424,
	ldr	x3, [x0]	// stderr.40_63, stderr
	adrp	x0, :got:Arr_2_Glob	// tmp426,
	ldr	x0, [x0, #:got_lo12:Arr_2_Glob]	// tmp425, tmp426,
	ldr	w0, [x0, 1628]	// _64, Arr_2_Glob
	mov	w2, w0	//, _64
	adrp	x0, .LC21	// tmp427,
	add	x1, x0, :lo12:.LC21	//, tmp427,
	mov	x0, x3	//, stderr.40_63
	bl	fprintf		//
// dry.c:695:   fprintf (stderr, "        should be:   Number_Of_Runs + 10\n");
	adrp	x0, :got:stderr	// tmp429,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp428, tmp429,
	ldr	x0, [x0]	// stderr.41_65, stderr
	mov	x3, x0	//, stderr.41_65
	mov	x2, 41	//,
	mov	x1, 1	//,
	adrp	x0, .LC22	// tmp430,
	add	x0, x0, :lo12:.LC22	//, tmp430,
	bl	fwrite		//
// dry.c:696:   fprintf (stderr, "Ptr_Glob->\n");
	adrp	x0, :got:stderr	// tmp432,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp431, tmp432,
	ldr	x0, [x0]	// stderr.42_66, stderr
	mov	x3, x0	//, stderr.42_66
	mov	x2, 11	//,
	mov	x1, 1	//,
	adrp	x0, .LC23	// tmp433,
	add	x0, x0, :lo12:.LC23	//, tmp433,
	bl	fwrite		//
// dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	adrp	x0, :got:stderr	// tmp435,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp434, tmp435,
	ldr	x3, [x0]	// stderr.43_67, stderr
// dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	adrp	x0, :got:Ptr_Glob	// tmp437,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp436, tmp437,
	ldr	x0, [x0]	// Ptr_Glob.44_68, Ptr_Glob
	ldr	x0, [x0]	// _69, Ptr_Glob.44_68->Ptr_Comp
// dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	mov	x2, x0	//, _70
	adrp	x0, .LC24	// tmp438,
	add	x1, x0, :lo12:.LC24	//, tmp438,
	mov	x0, x3	//, stderr.43_67
	bl	fprintf		//
// dry.c:698:   fprintf (stderr, "        should be:   (implementation-dependent)\n");
	adrp	x0, :got:stderr	// tmp440,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp439, tmp440,
	ldr	x0, [x0]	// stderr.45_71, stderr
	mov	x3, x0	//, stderr.45_71
	mov	x2, 48	//,
	mov	x1, 1	//,
	adrp	x0, .LC25	// tmp441,
	add	x0, x0, :lo12:.LC25	//, tmp441,
	bl	fwrite		//
// dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	adrp	x0, :got:stderr	// tmp443,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp442, tmp443,
	ldr	x3, [x0]	// stderr.46_72, stderr
// dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	adrp	x0, :got:Ptr_Glob	// tmp445,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp444, tmp445,
	ldr	x0, [x0]	// Ptr_Glob.47_73, Ptr_Glob
	ldr	w0, [x0, 8]	// _74, Ptr_Glob.47_73->Discr
// dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	mov	w2, w0	//, _74
	adrp	x0, .LC26	// tmp446,
	add	x1, x0, :lo12:.LC26	//, tmp446,
	mov	x0, x3	//, stderr.46_72
	bl	fprintf		//
// dry.c:700:   fprintf (stderr, "        should be:   %d\n", 0);
	adrp	x0, :got:stderr	// tmp448,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp447, tmp448,
	ldr	x3, [x0]	// stderr.48_75, stderr
	mov	w2, 0	//,
	adrp	x0, .LC15	// tmp449,
	add	x1, x0, :lo12:.LC15	//, tmp449,
	mov	x0, x3	//, stderr.48_75
	bl	fprintf		//
// dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	adrp	x0, :got:stderr	// tmp451,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp450, tmp451,
	ldr	x3, [x0]	// stderr.49_76, stderr
// dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	adrp	x0, :got:Ptr_Glob	// tmp453,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp452, tmp453,
	ldr	x0, [x0]	// Ptr_Glob.50_77, Ptr_Glob
// dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	ldr	w0, [x0, 12]	// _78, Ptr_Glob.50_77->variant.var_1.Enum_Comp
// dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	mov	w2, w0	//, _78
	adrp	x0, .LC27	// tmp454,
	add	x1, x0, :lo12:.LC27	//, tmp454,
	mov	x0, x3	//, stderr.49_76
	bl	fprintf		//
// dry.c:702:   fprintf (stderr, "        should be:   %d\n", 2);
	adrp	x0, :got:stderr	// tmp456,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp455, tmp456,
	ldr	x3, [x0]	// stderr.51_79, stderr
	mov	w2, 2	//,
	adrp	x0, .LC15	// tmp457,
	add	x1, x0, :lo12:.LC15	//, tmp457,
	mov	x0, x3	//, stderr.51_79
	bl	fprintf		//
// dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	adrp	x0, :got:stderr	// tmp459,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp458, tmp459,
	ldr	x3, [x0]	// stderr.52_80, stderr
// dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	adrp	x0, :got:Ptr_Glob	// tmp461,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp460, tmp461,
	ldr	x0, [x0]	// Ptr_Glob.53_81, Ptr_Glob
// dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	ldr	w0, [x0, 16]	// _82, Ptr_Glob.53_81->variant.var_1.Int_Comp
	mov	w2, w0	//, _82
	adrp	x0, .LC28	// tmp462,
	add	x1, x0, :lo12:.LC28	//, tmp462,
	mov	x0, x3	//, stderr.52_80
	bl	fprintf		//
// dry.c:704:   fprintf (stderr, "        should be:   %d\n", 17);
	adrp	x0, :got:stderr	// tmp464,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp463, tmp464,
	ldr	x3, [x0]	// stderr.54_83, stderr
	mov	w2, 17	//,
	adrp	x0, .LC15	// tmp465,
	add	x1, x0, :lo12:.LC15	//, tmp465,
	mov	x0, x3	//, stderr.54_83
	bl	fprintf		//
// dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	adrp	x0, :got:stderr	// tmp467,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp466, tmp467,
	ldr	x3, [x0]	// stderr.55_84, stderr
// dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	adrp	x0, :got:Ptr_Glob	// tmp469,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp468, tmp469,
	ldr	x0, [x0]	// Ptr_Glob.56_85, Ptr_Glob
// dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	add	x0, x0, 20	// _86, Ptr_Glob.56_85,
// dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	mov	x2, x0	//, _86
	adrp	x0, .LC29	// tmp470,
	add	x1, x0, :lo12:.LC29	//, tmp470,
	mov	x0, x3	//, stderr.55_84
	bl	fprintf		//
// dry.c:706:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	adrp	x0, :got:stderr	// tmp472,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp471, tmp472,
	ldr	x0, [x0]	// stderr.57_87, stderr
	mov	x3, x0	//, stderr.57_87
	mov	x2, 52	//,
	mov	x1, 1	//,
	adrp	x0, .LC30	// tmp473,
	add	x0, x0, :lo12:.LC30	//, tmp473,
	bl	fwrite		//
// dry.c:707:   fprintf (stderr, "Next_Ptr_Glob->\n");
	adrp	x0, :got:stderr	// tmp475,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp474, tmp475,
	ldr	x0, [x0]	// stderr.58_88, stderr
	mov	x3, x0	//, stderr.58_88
	mov	x2, 16	//,
	mov	x1, 1	//,
	adrp	x0, .LC31	// tmp476,
	add	x0, x0, :lo12:.LC31	//, tmp476,
	bl	fwrite		//
// dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	adrp	x0, :got:stderr	// tmp478,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp477, tmp478,
	ldr	x3, [x0]	// stderr.59_89, stderr
// dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	adrp	x0, :got:Next_Ptr_Glob	// tmp480,
	ldr	x0, [x0, #:got_lo12:Next_Ptr_Glob]	// tmp479, tmp480,
	ldr	x0, [x0]	// Next_Ptr_Glob.60_90, Next_Ptr_Glob
	ldr	x0, [x0]	// _91, Next_Ptr_Glob.60_90->Ptr_Comp
// dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	mov	x2, x0	//, _92
	adrp	x0, .LC24	// tmp481,
	add	x1, x0, :lo12:.LC24	//, tmp481,
	mov	x0, x3	//, stderr.59_89
	bl	fprintf		//
// dry.c:709:   fprintf (stderr, "        should be:   (implementation-dependent), same as above\n");
	adrp	x0, :got:stderr	// tmp483,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp482, tmp483,
	ldr	x0, [x0]	// stderr.61_93, stderr
	mov	x3, x0	//, stderr.61_93
	mov	x2, 63	//,
	mov	x1, 1	//,
	adrp	x0, .LC32	// tmp484,
	add	x0, x0, :lo12:.LC32	//, tmp484,
	bl	fwrite		//
// dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	adrp	x0, :got:stderr	// tmp486,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp485, tmp486,
	ldr	x3, [x0]	// stderr.62_94, stderr
// dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	adrp	x0, :got:Next_Ptr_Glob	// tmp488,
	ldr	x0, [x0, #:got_lo12:Next_Ptr_Glob]	// tmp487, tmp488,
	ldr	x0, [x0]	// Next_Ptr_Glob.63_95, Next_Ptr_Glob
	ldr	w0, [x0, 8]	// _96, Next_Ptr_Glob.63_95->Discr
// dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	mov	w2, w0	//, _96
	adrp	x0, .LC26	// tmp489,
	add	x1, x0, :lo12:.LC26	//, tmp489,
	mov	x0, x3	//, stderr.62_94
	bl	fprintf		//
// dry.c:711:   fprintf (stderr, "        should be:   %d\n", 0);
	adrp	x0, :got:stderr	// tmp491,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp490, tmp491,
	ldr	x3, [x0]	// stderr.64_97, stderr
	mov	w2, 0	//,
	adrp	x0, .LC15	// tmp492,
	add	x1, x0, :lo12:.LC15	//, tmp492,
	mov	x0, x3	//, stderr.64_97
	bl	fprintf		//
// dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	adrp	x0, :got:stderr	// tmp494,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp493, tmp494,
	ldr	x3, [x0]	// stderr.65_98, stderr
// dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	adrp	x0, :got:Next_Ptr_Glob	// tmp496,
	ldr	x0, [x0, #:got_lo12:Next_Ptr_Glob]	// tmp495, tmp496,
	ldr	x0, [x0]	// Next_Ptr_Glob.66_99, Next_Ptr_Glob
// dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	ldr	w0, [x0, 12]	// _100, Next_Ptr_Glob.66_99->variant.var_1.Enum_Comp
// dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	mov	w2, w0	//, _100
	adrp	x0, .LC27	// tmp497,
	add	x1, x0, :lo12:.LC27	//, tmp497,
	mov	x0, x3	//, stderr.65_98
	bl	fprintf		//
// dry.c:713:   fprintf (stderr, "        should be:   %d\n", 1);
	adrp	x0, :got:stderr	// tmp499,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp498, tmp499,
	ldr	x3, [x0]	// stderr.67_101, stderr
	mov	w2, 1	//,
	adrp	x0, .LC15	// tmp500,
	add	x1, x0, :lo12:.LC15	//, tmp500,
	mov	x0, x3	//, stderr.67_101
	bl	fprintf		//
// dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	adrp	x0, :got:stderr	// tmp502,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp501, tmp502,
	ldr	x3, [x0]	// stderr.68_102, stderr
// dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	adrp	x0, :got:Next_Ptr_Glob	// tmp504,
	ldr	x0, [x0, #:got_lo12:Next_Ptr_Glob]	// tmp503, tmp504,
	ldr	x0, [x0]	// Next_Ptr_Glob.69_103, Next_Ptr_Glob
// dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	ldr	w0, [x0, 16]	// _104, Next_Ptr_Glob.69_103->variant.var_1.Int_Comp
	mov	w2, w0	//, _104
	adrp	x0, .LC28	// tmp505,
	add	x1, x0, :lo12:.LC28	//, tmp505,
	mov	x0, x3	//, stderr.68_102
	bl	fprintf		//
// dry.c:715:   fprintf (stderr, "        should be:   %d\n", 18);
	adrp	x0, :got:stderr	// tmp507,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp506, tmp507,
	ldr	x3, [x0]	// stderr.70_105, stderr
	mov	w2, 18	//,
	adrp	x0, .LC15	// tmp508,
	add	x1, x0, :lo12:.LC15	//, tmp508,
	mov	x0, x3	//, stderr.70_105
	bl	fprintf		//
// dry.c:716:   fprintf (stderr, "  Str_Comp:          %s\n",
	adrp	x0, :got:stderr	// tmp510,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp509, tmp510,
	ldr	x3, [x0]	// stderr.71_106, stderr
// dry.c:717:                                 Next_Ptr_Glob->variant.var_1.Str_Comp);
	adrp	x0, :got:Next_Ptr_Glob	// tmp512,
	ldr	x0, [x0, #:got_lo12:Next_Ptr_Glob]	// tmp511, tmp512,
	ldr	x0, [x0]	// Next_Ptr_Glob.72_107, Next_Ptr_Glob
// dry.c:717:                                 Next_Ptr_Glob->variant.var_1.Str_Comp);
	add	x0, x0, 20	// _108, Next_Ptr_Glob.72_107,
// dry.c:716:   fprintf (stderr, "  Str_Comp:          %s\n",
	mov	x2, x0	//, _108
	adrp	x0, .LC29	// tmp513,
	add	x1, x0, :lo12:.LC29	//, tmp513,
	mov	x0, x3	//, stderr.71_106
	bl	fprintf		//
// dry.c:718:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	adrp	x0, :got:stderr	// tmp515,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp514, tmp515,
	ldr	x0, [x0]	// stderr.73_109, stderr
	mov	x3, x0	//, stderr.73_109
	mov	x2, 52	//,
	mov	x1, 1	//,
	adrp	x0, .LC30	// tmp516,
	add	x0, x0, :lo12:.LC30	//, tmp516,
	bl	fwrite		//
// dry.c:719:   fprintf (stderr, "Int_1_Loc:           %d\n", Int_1_Loc);
	adrp	x0, :got:stderr	// tmp518,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp517, tmp518,
	ldr	x3, [x0]	// stderr.74_110, stderr
	ldr	w0, [sp, 48]	// Int_1_Loc.75_111, Int_1_Loc
	mov	w2, w0	//, Int_1_Loc.75_111
	adrp	x0, .LC33	// tmp519,
	add	x1, x0, :lo12:.LC33	//, tmp519,
	mov	x0, x3	//, stderr.74_110
	bl	fprintf		//
// dry.c:720:   fprintf (stderr, "        should be:   %d\n", 5);
	adrp	x0, :got:stderr	// tmp521,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp520, tmp521,
	ldr	x3, [x0]	// stderr.76_112, stderr
	mov	w2, 5	//,
	adrp	x0, .LC15	// tmp522,
	add	x1, x0, :lo12:.LC15	//, tmp522,
	mov	x0, x3	//, stderr.76_112
	bl	fprintf		//
// dry.c:721:   fprintf (stderr, "Int_2_Loc:           %d\n", Int_2_Loc);
	adrp	x0, :got:stderr	// tmp524,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp523, tmp524,
	ldr	x3, [x0]	// stderr.77_113, stderr
	ldr	w2, [sp, 60]	//, Int_2_Loc
	adrp	x0, .LC34	// tmp525,
	add	x1, x0, :lo12:.LC34	//, tmp525,
	mov	x0, x3	//, stderr.77_113
	bl	fprintf		//
// dry.c:722:   fprintf (stderr, "        should be:   %d\n", 13);
	adrp	x0, :got:stderr	// tmp527,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp526, tmp527,
	ldr	x3, [x0]	// stderr.78_114, stderr
	mov	w2, 13	//,
	adrp	x0, .LC15	// tmp528,
	add	x1, x0, :lo12:.LC15	//, tmp528,
	mov	x0, x3	//, stderr.78_114
	bl	fprintf		//
// dry.c:723:   fprintf (stderr, "Int_3_Loc:           %d\n", Int_3_Loc);
	adrp	x0, :got:stderr	// tmp530,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp529, tmp530,
	ldr	x3, [x0]	// stderr.79_115, stderr
	ldr	w0, [sp, 52]	// Int_3_Loc.80_116, Int_3_Loc
	mov	w2, w0	//, Int_3_Loc.80_116
	adrp	x0, .LC35	// tmp531,
	add	x1, x0, :lo12:.LC35	//, tmp531,
	mov	x0, x3	//, stderr.79_115
	bl	fprintf		//
// dry.c:724:   fprintf (stderr, "        should be:   %d\n", 7);
	adrp	x0, :got:stderr	// tmp533,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp532, tmp533,
	ldr	x3, [x0]	// stderr.81_117, stderr
	mov	w2, 7	//,
	adrp	x0, .LC15	// tmp534,
	add	x1, x0, :lo12:.LC15	//, tmp534,
	mov	x0, x3	//, stderr.81_117
	bl	fprintf		//
// dry.c:725:   fprintf (stderr, "Enum_Loc:            %d\n", Enum_Loc);
	adrp	x0, :got:stderr	// tmp536,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp535, tmp536,
	ldr	x3, [x0]	// stderr.82_118, stderr
	ldr	w0, [sp, 56]	// Enum_Loc.83_119, Enum_Loc
	mov	w2, w0	//, Enum_Loc.83_119
	adrp	x0, .LC36	// tmp537,
	add	x1, x0, :lo12:.LC36	//, tmp537,
	mov	x0, x3	//, stderr.82_118
	bl	fprintf		//
// dry.c:726:   fprintf (stderr, "        should be:   %d\n", 1);
	adrp	x0, :got:stderr	// tmp539,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp538, tmp539,
	ldr	x3, [x0]	// stderr.84_120, stderr
	mov	w2, 1	//,
	adrp	x0, .LC15	// tmp540,
	add	x1, x0, :lo12:.LC15	//, tmp540,
	mov	x0, x3	//, stderr.84_120
	bl	fprintf		//
// dry.c:727:   fprintf (stderr, "Str_1_Loc:           %s\n", Str_1_Loc);
	adrp	x0, :got:stderr	// tmp542,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp541, tmp542,
	ldr	x3, [x0]	// stderr.85_121, stderr
	add	x0, sp, 72	// tmp543,,
	mov	x2, x0	//, tmp543
	adrp	x0, .LC37	// tmp544,
	add	x1, x0, :lo12:.LC37	//, tmp544,
	mov	x0, x3	//, stderr.85_121
	bl	fprintf		//
// dry.c:728:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
	adrp	x0, :got:stderr	// tmp546,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp545, tmp546,
	ldr	x0, [x0]	// stderr.86_122, stderr
	mov	x3, x0	//, stderr.86_122
	mov	x2, 52	//,
	mov	x1, 1	//,
	adrp	x0, .LC38	// tmp547,
	add	x0, x0, :lo12:.LC38	//, tmp547,
	bl	fwrite		//
// dry.c:729:   fprintf (stderr, "Str_2_Loc:           %s\n", Str_2_Loc);
	adrp	x0, :got:stderr	// tmp549,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp548, tmp549,
	ldr	x3, [x0]	// stderr.87_123, stderr
	add	x0, sp, 104	// tmp550,,
	mov	x2, x0	//, tmp550
	adrp	x0, .LC39	// tmp551,
	add	x1, x0, :lo12:.LC39	//, tmp551,
	mov	x0, x3	//, stderr.87_123
	bl	fprintf		//
// dry.c:730:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
	adrp	x0, :got:stderr	// tmp553,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp552, tmp553,
	ldr	x0, [x0]	// stderr.88_124, stderr
	mov	x3, x0	//, stderr.88_124
	mov	x2, 52	//,
	mov	x1, 1	//,
	adrp	x0, .LC40	// tmp554,
	add	x0, x0, :lo12:.LC40	//, tmp554,
	bl	fwrite		//
// dry.c:731:   fprintf (stderr, "\n");
	adrp	x0, :got:stderr	// tmp556,
	ldr	x0, [x0, #:got_lo12:stderr]	// tmp555, tmp556,
	ldr	x0, [x0]	// stderr.89_125, stderr
	mov	x1, x0	//, stderr.89_125
	mov	w0, 10	//,
	bl	fputc		//
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	adrp	x0, :got:User_Time	// tmp558,
	ldr	x0, [x0, #:got_lo12:User_Time]	// tmp557, tmp558,
	ldr	x0, [x0]	// User_Time.90_126, User_Time
	scvtf	s0, x0	// _127, User_Time.90_126
	fcvt	d0, s0	// _128, _127
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	mov	x0, 145685290680320	// tmp581,
	movk	x0, 0x412e, lsl 48	// tmp581,,
	fmov	d1, x0	// tmp559, tmp581
	fmul	d1, d0, d1	// _129, _128, tmp559
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	ldr	s0, [sp, 68]	// tmp560, Number_Of_Runs
	scvtf	s0, s0	// _130, tmp560
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	mov	w0, 1120403456	// tmp582,
	fmov	s2, w0	// tmp561, tmp582
	fmul	s0, s0, s2	// _131, _130, tmp561
	fcvt	d0, s0	// _132, _131
// dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fdiv	d0, d1, d0	// _133, _129, _132
	fcvt	s0, d0	// _134, _133
// dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	adrp	x0, :got:Microseconds	// tmp563,
	ldr	x0, [x0, #:got_lo12:Microseconds]	// tmp562, tmp563,
	str	s0, [x0]	// _134, Microseconds
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	ldr	s0, [sp, 68]	// tmp564, Number_Of_Runs
	scvtf	s0, s0	// _135, tmp564
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	mov	w0, 1120403456	// tmp583,
	fmov	s1, w0	// tmp565, tmp583
	fmul	s1, s0, s1	// _136, _135, tmp565
// dry.c:737:                         / (float) User_Time;
	adrp	x0, :got:User_Time	// tmp567,
	ldr	x0, [x0, #:got_lo12:User_Time]	// tmp566, tmp567,
	ldr	x0, [x0]	// User_Time.91_137, User_Time
	scvtf	s0, x0	// _138, User_Time.91_137
// dry.c:737:                         / (float) User_Time;
	fdiv	s0, s1, s0	// _139, _136, _138
// dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	adrp	x0, :got:Dhrystones_Per_Second	// tmp569,
	ldr	x0, [x0, #:got_lo12:Dhrystones_Per_Second]	// tmp568, tmp569,
	str	s0, [x0]	// _139, Dhrystones_Per_Second
// dry.c:739:     printf ("\nMicroseconds for one run through Dhrystone: ");
	adrp	x0, .LC41	// tmp570,
	add	x0, x0, :lo12:.LC41	//, tmp570,
	bl	printf		//
// dry.c:740:     printf ("%10.2f \n", Microseconds);
	adrp	x0, :got:Microseconds	// tmp572,
	ldr	x0, [x0, #:got_lo12:Microseconds]	// tmp571, tmp572,
	ldr	s0, [x0]	// Microseconds.92_140, Microseconds
	fcvt	d0, s0	// _141, Microseconds.92_140
	adrp	x0, .LC42	// tmp573,
	add	x0, x0, :lo12:.LC42	//, tmp573,
	bl	printf		//
// dry.c:741:     printf ("Dhrystones per Second:                      ");
	adrp	x0, .LC43	// tmp574,
	add	x0, x0, :lo12:.LC43	//, tmp574,
	bl	printf		//
// dry.c:742:     printf ("%10.0f \n", Dhrystones_Per_Second);
	adrp	x0, :got:Dhrystones_Per_Second	// tmp576,
	ldr	x0, [x0, #:got_lo12:Dhrystones_Per_Second]	// tmp575, tmp576,
	ldr	s0, [x0]	// Dhrystones_Per_Second.93_142, Dhrystones_Per_Second
	fcvt	d0, s0	// _143, Dhrystones_Per_Second.93_142
	adrp	x0, .LC44	// tmp577,
	add	x0, x0, :lo12:.LC44	//, tmp577,
	bl	printf		//
// dry.c:743:     printf ("\n");
	mov	w0, 10	//,
	bl	putchar		//
	mov	w0, 0	// _245,
	mov	w1, w0	// <retval>, _245
// dry.c:745: }
	adrp	x0, :got:__stack_chk_guard	// tmp580,
	ldr	x0, [x0, #:got_lo12:__stack_chk_guard]	// tmp579, tmp580,
	ldr	x2, [sp, 136]	// tmp585, D.5185
	ldr	x3, [x0]	// tmp586, __stack_chk_guard
	subs	x2, x2, x3	// tmp585, tmp586
	mov	x3, 0	// tmp586
	beq	.L19		//,
	bl	__stack_chk_fail		//
.L19:
	mov	w0, w1	//, <retval>
	ldp	x29, x30, [sp], 144	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.align	2
	.global	Proc_1
	.type	Proc_1, %function
Proc_1:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!	//,,,
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	mov	x29, sp	//,
	str	x0, [sp, 24]	// Ptr_Val_Par, Ptr_Val_Par
// dry.c:753:   REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
	ldr	x0, [sp, 24]	// tmp103, Ptr_Val_Par
	ldr	x0, [x0]	// tmp104, Ptr_Val_Par_16(D)->Ptr_Comp
	str	x0, [sp, 40]	// tmp104, Next_Record
// dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	adrp	x0, :got:Ptr_Glob	// tmp106,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp105, tmp106,
	ldr	x1, [x0]	// Ptr_Glob.94_1, Ptr_Glob
	ldr	x0, [sp, 24]	// tmp107, Ptr_Val_Par
	ldr	x0, [x0]	// _2, Ptr_Val_Par_16(D)->Ptr_Comp
	ldp	x2, x3, [x1]	// tmp110, *Ptr_Glob.94_1
	stp	x2, x3, [x0]	// tmp110, *_2
	ldp	x2, x3, [x1, 16]	// tmp111, *Ptr_Glob.94_1
	stp	x2, x3, [x0, 16]	// tmp111, *_2
	ldp	x2, x3, [x1, 32]	// tmp112, *Ptr_Glob.94_1
	stp	x2, x3, [x0, 32]	// tmp112, *_2
	ldr	x1, [x1, 48]	// tmp113, *Ptr_Glob.94_1
	str	x1, [x0, 48]	// tmp113, *_2
// dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	ldr	x0, [sp, 24]	// tmp114, Ptr_Val_Par
	mov	w1, 5	// tmp115,
	str	w1, [x0, 16]	// tmp115, Ptr_Val_Par_16(D)->variant.var_1.Int_Comp
// dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	ldr	x0, [sp, 24]	// tmp116, Ptr_Val_Par
	ldr	w1, [x0, 16]	// _3, Ptr_Val_Par_16(D)->variant.var_1.Int_Comp
// dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	ldr	x0, [sp, 40]	// tmp117, Next_Record
	str	w1, [x0, 16]	// _3, Next_Record_17->variant.var_1.Int_Comp
// dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	ldr	x0, [sp, 24]	// tmp118, Ptr_Val_Par
	ldr	x1, [x0]	// _4, Ptr_Val_Par_16(D)->Ptr_Comp
// dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	ldr	x0, [sp, 40]	// tmp119, Next_Record
	str	x1, [x0]	// _4, Next_Record_17->Ptr_Comp
// dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	ldr	x0, [sp, 40]	// _5, Next_Record
// dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	bl	Proc_3		//
// dry.c:766:   if (Next_Record->Discr == Ident_1)
	ldr	x0, [sp, 40]	// tmp120, Next_Record
	ldr	w0, [x0, 8]	// _6, Next_Record_17->Discr
// dry.c:766:   if (Next_Record->Discr == Ident_1)
	cmp	w0, 0	// _6,
	bne	.L21		//,
// dry.c:769:     Next_Record->variant.var_1.Int_Comp = 6;
	ldr	x0, [sp, 40]	// tmp121, Next_Record
	mov	w1, 6	// tmp122,
	str	w1, [x0, 16]	// tmp122, Next_Record_17->variant.var_1.Int_Comp
// dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	ldr	x0, [sp, 24]	// tmp123, Ptr_Val_Par
	ldr	w2, [x0, 12]	// _7, Ptr_Val_Par_16(D)->variant.var_1.Enum_Comp
	ldr	x0, [sp, 40]	// tmp124, Next_Record
	add	x0, x0, 12	// _8, tmp124,
	mov	x1, x0	//, _8
	mov	w0, w2	//, _7
	bl	Proc_6		//
// dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	adrp	x0, :got:Ptr_Glob	// tmp126,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp125, tmp126,
	ldr	x0, [x0]	// Ptr_Glob.95_9, Ptr_Glob
	ldr	x1, [x0]	// _10, Ptr_Glob.95_9->Ptr_Comp
// dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	ldr	x0, [sp, 40]	// tmp127, Next_Record
	str	x1, [x0]	// _10, Next_Record_17->Ptr_Comp
// dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	ldr	x0, [sp, 40]	// tmp128, Next_Record
	ldr	w3, [x0, 16]	// _11, Next_Record_17->variant.var_1.Int_Comp
// dry.c:774:            &Next_Record->variant.var_1.Int_Comp);
	ldr	x0, [sp, 40]	// tmp129, Next_Record
	add	x0, x0, 16	// _12, tmp129,
// dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	mov	x2, x0	//, _12
	mov	w1, 10	//,
	mov	w0, w3	//, _11
	bl	Proc_7		//
// dry.c:778: } /* Proc_1 */
	b	.L23		//
.L21:
// dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	ldr	x0, [sp, 24]	// tmp130, Ptr_Val_Par
	ldr	x1, [x0]	// _13, Ptr_Val_Par_16(D)->Ptr_Comp
	ldr	x0, [sp, 24]	// tmp131, Ptr_Val_Par
	ldp	x2, x3, [x1]	// tmp134, *_13
	stp	x2, x3, [x0]	// tmp134, *Ptr_Val_Par_16(D)
	ldp	x2, x3, [x1, 16]	// tmp135, *_13
	stp	x2, x3, [x0, 16]	// tmp135, *Ptr_Val_Par_16(D)
	ldp	x2, x3, [x1, 32]	// tmp136, *_13
	stp	x2, x3, [x0, 32]	// tmp136, *Ptr_Val_Par_16(D)
	ldr	x1, [x1, 48]	// tmp137, *_13
	str	x1, [x0, 48]	// tmp137, *Ptr_Val_Par_16(D)
.L23:
// dry.c:778: } /* Proc_1 */
	nop	
	ldp	x29, x30, [sp], 48	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE7:
	.size	Proc_1, .-Proc_1
	.align	2
	.global	Proc_2
	.type	Proc_2, %function
Proc_2:
.LFB8:
	.cfi_startproc
	sub	sp, sp, #32	//,,
	.cfi_def_cfa_offset 32
	str	x0, [sp, 8]	// Int_Par_Ref, Int_Par_Ref
// dry.c:789:   Int_Loc = *Int_Par_Ref + 10;
	ldr	x0, [sp, 8]	// tmp94, Int_Par_Ref
	ldr	w0, [x0]	// _1, *Int_Par_Ref_12(D)
// dry.c:789:   Int_Loc = *Int_Par_Ref + 10;
	add	w0, w0, 10	// tmp95, _1,
	str	w0, [sp, 24]	// tmp95, Int_Loc
.L26:
// dry.c:791:     if (Ch_1_Glob == 'A')
	adrp	x0, :got:Ch_1_Glob	// tmp97,
	ldr	x0, [x0, #:got_lo12:Ch_1_Glob]	// tmp96, tmp97,
	ldrb	w0, [x0]	// Ch_1_Glob.96_2, Ch_1_Glob
// dry.c:791:     if (Ch_1_Glob == 'A')
	cmp	w0, 65	// Ch_1_Glob.96_2,
	bne	.L25		//,
// dry.c:794:       Int_Loc -= 1;
	ldr	w0, [sp, 24]	// tmp99, Int_Loc
	sub	w0, w0, #1	// tmp98, tmp99,
	str	w0, [sp, 24]	// tmp98, Int_Loc
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	adrp	x0, :got:Int_Glob	// tmp101,
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp100, tmp101,
	ldr	w0, [x0]	// Int_Glob.97_3, Int_Glob
	ldr	w1, [sp, 24]	// tmp102, Int_Loc
	sub	w1, w1, w0	// _4, tmp102, Int_Glob.97_3
// dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	ldr	x0, [sp, 8]	// tmp103, Int_Par_Ref
	str	w1, [x0]	// _4, *Int_Par_Ref_12(D)
// dry.c:796:       Enum_Loc = Ident_1;
	str	wzr, [sp, 28]	//, Enum_Loc
.L25:
// dry.c:798:   while (Enum_Loc != Ident_1); /* true */
	ldr	w0, [sp, 28]	// tmp104, Enum_Loc
	cmp	w0, 0	// tmp104,
	bne	.L26		//,
// dry.c:799: } /* Proc_2 */
	nop	
	nop	
	add	sp, sp, 32	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE8:
	.size	Proc_2, .-Proc_2
	.align	2
	.global	Proc_3
	.type	Proc_3, %function
Proc_3:
.LFB9:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!	//,,,
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp	//,
	str	x0, [sp, 24]	// Ptr_Ref_Par, Ptr_Ref_Par
// dry.c:807:   if (Ptr_Glob != Null)
	adrp	x0, :got:Ptr_Glob	// tmp97,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp96, tmp97,
	ldr	x0, [x0]	// Ptr_Glob.98_1, Ptr_Glob
// dry.c:807:   if (Ptr_Glob != Null)
	cmp	x0, 0	// Ptr_Glob.98_1,
	beq	.L28		//,
// dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	adrp	x0, :got:Ptr_Glob	// tmp99,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp98, tmp99,
	ldr	x0, [x0]	// Ptr_Glob.99_2, Ptr_Glob
	ldr	x1, [x0]	// _3, Ptr_Glob.99_2->Ptr_Comp
// dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	ldr	x0, [sp, 24]	// tmp100, Ptr_Ref_Par
	str	x1, [x0]	// _3, *Ptr_Ref_Par_9(D)
.L28:
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	adrp	x0, :got:Int_Glob	// tmp102,
	ldr	x0, [x0, #:got_lo12:Int_Glob]	// tmp101, tmp102,
	ldr	w1, [x0]	// Int_Glob.100_4, Int_Glob
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	adrp	x0, :got:Ptr_Glob	// tmp104,
	ldr	x0, [x0, #:got_lo12:Ptr_Glob]	// tmp103, tmp104,
	ldr	x0, [x0]	// Ptr_Glob.101_5, Ptr_Glob
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	add	x0, x0, 16	// _6, Ptr_Glob.101_5,
// dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	mov	x2, x0	//, _6
	mov	w0, 10	//,
	bl	Proc_7		//
// dry.c:811: } /* Proc_3 */
	nop	
	ldp	x29, x30, [sp], 32	//,,,
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE9:
	.size	Proc_3, .-Proc_3
	.align	2
	.global	Proc_4
	.type	Proc_4, %function
Proc_4:
.LFB10:
	.cfi_startproc
	sub	sp, sp, #16	//,,
	.cfi_def_cfa_offset 16
// dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	adrp	x0, :got:Ch_1_Glob	// tmp95,
	ldr	x0, [x0, #:got_lo12:Ch_1_Glob]	// tmp94, tmp95,
	ldrb	w0, [x0]	// Ch_1_Glob.102_1, Ch_1_Glob
	cmp	w0, 65	// Ch_1_Glob.102_1,
	cset	w0, eq	// tmp97,
	and	w0, w0, 255	// _2, tmp96
// dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	str	w0, [sp, 12]	// _2, Bool_Loc
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	adrp	x0, :got:Bool_Glob	// tmp99,
	ldr	x0, [x0, #:got_lo12:Bool_Glob]	// tmp98, tmp99,
	ldr	w1, [x0]	// Bool_Glob.103_3, Bool_Glob
	ldr	w0, [sp, 12]	// tmp100, Bool_Loc
	orr	w1, w1, w0	// _4, Bool_Glob.103_3, tmp100
// dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	adrp	x0, :got:Bool_Glob	// tmp102,
	ldr	x0, [x0, #:got_lo12:Bool_Glob]	// tmp101, tmp102,
	str	w1, [x0]	// _4, Bool_Glob
// dry.c:822:   Ch_2_Glob = 'B';
	adrp	x0, :got:Ch_2_Glob	// tmp104,
	ldr	x0, [x0, #:got_lo12:Ch_2_Glob]	// tmp103, tmp104,
	mov	w1, 66	// tmp105,
	strb	w1, [x0]	// tmp105, Ch_2_Glob
// dry.c:823: } /* Proc_4 */
	nop	
	add	sp, sp, 16	//,,
	.cfi_def_cfa_offset 0
	ret	
	.cfi_endproc
.LFE10:
	.size	Proc_4, .-Proc_4
	.align	2
	.global	Proc_5
	.type	Proc_5, %function
Proc_5:
.LFB11:
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
	nop	
	ret	
	.cfi_endproc
.LFE11:
	.size	Proc_5, .-Proc_5
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
