	.file	"dry.c"
# GNU C23 (GCC) version 15.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.2.1, MPFR version 4.2.2, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0
	.text
	.globl	time_info
	.bss
	.align 32
	.type	time_info, @object
	.size	time_info, 32
time_info:
	.zero	32
	.globl	Ptr_Glob
	.align 8
	.type	Ptr_Glob, @object
	.size	Ptr_Glob, 8
Ptr_Glob:
	.zero	8
	.globl	Next_Ptr_Glob
	.align 8
	.type	Next_Ptr_Glob, @object
	.size	Next_Ptr_Glob, 8
Next_Ptr_Glob:
	.zero	8
	.globl	Int_Glob
	.align 4
	.type	Int_Glob, @object
	.size	Int_Glob, 4
Int_Glob:
	.zero	4
	.globl	Bool_Glob
	.align 4
	.type	Bool_Glob, @object
	.size	Bool_Glob, 4
Bool_Glob:
	.zero	4
	.globl	Ch_1_Glob
	.type	Ch_1_Glob, @object
	.size	Ch_1_Glob, 1
Ch_1_Glob:
	.zero	1
	.globl	Ch_2_Glob
	.type	Ch_2_Glob, @object
	.size	Ch_2_Glob, 1
Ch_2_Glob:
	.zero	1
	.globl	Arr_1_Glob
	.align 32
	.type	Arr_1_Glob, @object
	.size	Arr_1_Glob, 200
Arr_1_Glob:
	.zero	200
	.globl	Arr_2_Glob
	.align 32
	.type	Arr_2_Glob, @object
	.size	Arr_2_Glob, 10000
Arr_2_Glob:
	.zero	10000
	.globl	Reg
	.align 4
	.type	Reg, @object
	.size	Reg, 4
Reg:
	.zero	4
	.globl	Done
	.align 4
	.type	Done, @object
	.size	Done, 4
Done:
	.zero	4
	.globl	Begin_Time
	.align 8
	.type	Begin_Time, @object
	.size	Begin_Time, 8
Begin_Time:
	.zero	8
	.globl	End_Time
	.align 8
	.type	End_Time, @object
	.size	End_Time, 8
End_Time:
	.zero	8
	.globl	User_Time
	.align 8
	.type	User_Time, @object
	.size	User_Time, 8
User_Time:
	.zero	8
	.globl	Microseconds
	.align 4
	.type	Microseconds, @object
	.size	Microseconds, 4
Microseconds:
	.zero	4
	.globl	Dhrystones_Per_Second
	.align 4
	.type	Dhrystones_Per_Second, @object
	.size	Dhrystones_Per_Second, 4
Dhrystones_Per_Second:
	.zero	4
	.section	.rodata
.LC0:
	.string	"Usage: %s [number of loops]\n"
.LC1:
	.string	"C, Version 2.2a"
	.align 8
.LC2:
	.string	"Dhrystone Benchmark, Version %s\n"
	.align 8
.LC3:
	.string	"Program compiled with 'register' attribute"
	.align 8
.LC4:
	.string	"Program compiled without 'register' attribute"
.LC5:
	.string	"times()"
.LC6:
	.string	"Using %s, HZ=%d\n"
.LC7:
	.string	"Trying %d runs: "
.LC8:
	.string	"too few"
	.align 8
.LC9:
	.string	"Final values of the variables used in the benchmark:\n"
.LC10:
	.string	"Int_Glob:            %d\n"
.LC11:
	.string	"        should be:   %d\n"
.LC12:
	.string	"Bool_Glob:           %d\n"
.LC13:
	.string	"Ch_1_Glob:           %c\n"
.LC14:
	.string	"        should be:   %c\n"
.LC15:
	.string	"Ch_2_Glob:           %c\n"
.LC16:
	.string	"Arr_1_Glob[8]:       %d\n"
.LC17:
	.string	"Arr_2_Glob[8][7]:    %d\n"
	.align 8
.LC18:
	.string	"        should be:   Number_Of_Runs + 10\n"
.LC19:
	.string	"Ptr_Glob->\n"
.LC20:
	.string	"  Ptr_Comp:          %ld\n"
	.align 8
.LC21:
	.string	"        should be:   (implementation-dependent)\n"
.LC22:
	.string	"  Discr:             %d\n"
.LC23:
	.string	"  Enum_Comp:         %d\n"
.LC24:
	.string	"  Int_Comp:          %d\n"
.LC25:
	.string	"  Str_Comp:          %s\n"
	.align 8
.LC26:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
.LC27:
	.string	"Next_Ptr_Glob->\n"
	.align 8
.LC28:
	.string	"        should be:   (implementation-dependent), same as above\n"
.LC29:
	.string	"Int_1_Loc:           %d\n"
.LC30:
	.string	"Int_2_Loc:           %d\n"
.LC31:
	.string	"Int_3_Loc:           %d\n"
.LC32:
	.string	"Enum_Loc:            %d\n"
.LC33:
	.string	"Str_1_Loc:           %s\n"
	.align 8
.LC34:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
.LC35:
	.string	"Str_2_Loc:           %s\n"
	.align 8
.LC36:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.align 8
.LC39:
	.string	"\nMicroseconds for one run through Dhrystone: "
.LC40:
	.string	"%10.2f \n"
	.align 8
.LC41:
	.string	"Dhrystones per Second:                      "
.LC42:
	.string	"%10.0f \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$112, %rsp	#,
	movl	%edi, -100(%rbp)	# argc, argc
	movq	%rsi, -112(%rbp)	# argv, argv
# dry.c:561:   if (argc > 2)
	cmpl	$2, -100(%rbp)	#, argc
	jle	.L2	#,
# dry.c:563:      printf ("Usage: %s [number of loops]\n", argv[0]);
	movq	-112(%rbp), %rax	# argv, tmp246
	movq	(%rax), %rax	# *argv_164(D), _1
	movq	%rax, %rsi	# _1,
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# dry.c:564:      exit (1);
	movl	$1, %edi	#,
	call	exit	#
.L2:
# dry.c:566:   if (argc == 2)
	cmpl	$2, -100(%rbp)	#, argc
	jne	.L3	#,
# dry.c:568:      Number_Of_Runs = atoi (argv[1]);
	movq	-112(%rbp), %rax	# argv, tmp247
	addq	$8, %rax	#, _2
# dry.c:568:      Number_Of_Runs = atoi (argv[1]);
	movq	(%rax), %rax	# *_2, _3
	movq	%rax, %rdi	# _3,
	call	atoi	#
	movl	%eax, -16(%rbp)	# tmp248, Number_Of_Runs
	jmp	.L4	#
.L3:
# dry.c:571:      Number_Of_Runs = NUMBER_OF_RUNS;
	movl	$50000, -16(%rbp)	#, Number_Of_Runs
.L4:
# dry.c:573:   if (Number_Of_Runs <= 0)
	cmpl	$0, -16(%rbp)	#, Number_Of_Runs
	jg	.L5	#,
# dry.c:575:      Number_Of_Runs = NUMBER_OF_RUNS;
	movl	$50000, -16(%rbp)	#, Number_Of_Runs
.L5:
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	$56, %edi	#,
	call	malloc	#
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movq	%rax, Next_Ptr_Glob(%rip)	# _4, Next_Ptr_Glob
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	$56, %edi	#,
	call	malloc	#
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movq	%rax, Ptr_Glob(%rip)	# _5, Ptr_Glob
# dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.0_6
# dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	movq	Next_Ptr_Glob(%rip), %rdx	# Next_Ptr_Glob, Next_Ptr_Glob.1_7
	movq	%rdx, (%rax)	# Next_Ptr_Glob.1_7, Ptr_Glob.0_6->Ptr_Comp
# dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.2_8
# dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	movl	$0, 8(%rax)	#, Ptr_Glob.2_8->Discr
# dry.c:585:   Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.3_9
# dry.c:585:   Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
	movl	$2, 12(%rax)	#, Ptr_Glob.3_9->variant.var_1.Enum_Comp
# dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.4_10
# dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	movl	$40, 16(%rax)	#, Ptr_Glob.4_10->variant.var_1.Int_Comp
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.5_11
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	addq	$20, %rax	#, _12
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movabsq	$5642821575076104260, %rsi	#, tmp282
	movabsq	$4706902966564560965, %rdi	#,
	movq	%rsi, (%rax)	# tmp282, MEM <char[1:31]> [(void *)_12]
	movq	%rdi, 8(%rax)	#, MEM <char[1:31]> [(void *)_12]
	movabsq	$4993734780264402241, %rdx	#, tmp283
	movabsq	$20070800167293728, %rcx	#,
	movq	%rdx, 15(%rax)	# tmp283, MEM <char[1:31]> [(void *)_12]
	movq	%rcx, 23(%rax)	#, MEM <char[1:31]> [(void *)_12]
# dry.c:589:   strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
	movq	%rsi, -64(%rbp)	# tmp284, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movq	%rdi, -56(%rbp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movabsq	$6076243414199586113, %rax	#, tmp285
	movabsq	$20070800167293728, %rdx	#,
	movq	%rax, -49(%rbp)	# tmp285, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movq	%rdx, -41(%rbp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
# dry.c:591:   Arr_2_Glob [8][7] = 10;
	movl	$10, Arr_2_Glob+1628(%rip)	#, Arr_2_Glob[8][7]
# dry.c:597:   printf ("\n");
	movl	$10, %edi	#,
	call	putchar	#
# dry.c:598:   printf ("Dhrystone Benchmark, Version %s\n", Version);
	movl	$.LC1, %esi	#,
	movl	$.LC2, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# dry.c:599:   if (Reg)
	movl	Reg(%rip), %eax	# Reg, Reg.6_13
# dry.c:599:   if (Reg)
	testl	%eax, %eax	# Reg.6_13
	je	.L6	#,
# dry.c:601:     printf ("Program compiled with 'register' attribute\n");
	movl	$.LC3, %edi	#,
	call	puts	#
	jmp	.L7	#
.L6:
# dry.c:605:     printf ("Program compiled without 'register' attribute\n");
	movl	$.LC4, %edi	#,
	call	puts	#
.L7:
# dry.c:607:   printf ("Using %s, HZ=%d\n", CLOCK_TYPE, HZ);
	movl	$100, %edx	#,
	movl	$.LC5, %esi	#,
	movl	$.LC6, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# dry.c:608:   printf ("\n");
	movl	$10, %edi	#,
	call	putchar	#
# dry.c:610:   Done = false;
	movl	$0, Done(%rip)	#, Done
# dry.c:611:   while (!Done) {
	jmp	.L8	#
.L17:
# dry.c:613:     printf ("Trying %d runs: ", Number_Of_Runs);
	movl	-16(%rbp), %eax	# Number_Of_Runs, tmp251
	movl	%eax, %esi	# tmp251,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# dry.c:619:     Start_Timer();
	movl	$time_info, %edi	#,
	call	times	#
# dry.c:619:     Start_Timer();
	movq	time_info(%rip), %rax	# time_info.tms_utime, _14
	movq	%rax, Begin_Time(%rip)	# _14, Begin_Time
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	movl	$1, -12(%rbp)	#, Run_Index
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	jmp	.L9	#
.L15:
# dry.c:624:       Proc_5();
	call	Proc_5	#
# dry.c:625:       Proc_4();
	call	Proc_4	#
# dry.c:627:       Int_1_Loc = 2;
	movl	$2, -20(%rbp)	#, Int_1_Loc
# dry.c:628:       Int_2_Loc = 3;
	movl	$3, -4(%rbp)	#, Int_2_Loc
# dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	movabsq	$5642821575076104260, %rax	#, tmp286
	movabsq	$4706902966564560965, %rdx	#,
	movq	%rax, -96(%rbp)	# tmp286, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movq	%rdx, -88(%rbp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movabsq	$4921914539004153153, %rax	#, tmp287
	movabsq	$20070800167293728, %rdx	#,
	movq	%rax, -81(%rbp)	# tmp287, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movq	%rdx, -73(%rbp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:630:       Enum_Loc = Ident_2;
	movl	$1, -28(%rbp)	#, Enum_Loc
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	leaq	-96(%rbp), %rdx	#, tmp252
	leaq	-64(%rbp), %rax	#, tmp253
	movq	%rdx, %rsi	# tmp252,
	movq	%rax, %rdi	# tmp253,
	call	Func_2	#
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	testl	%eax, %eax	# _15
	sete	%al	#, _16
	movzbl	%al, %eax	# _16, _17
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	movl	%eax, Bool_Glob(%rip)	# _17, Bool_Glob
# dry.c:633:       while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
	jmp	.L10	#
.L11:
# dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	movl	-20(%rbp), %edx	# Int_1_Loc, Int_1_Loc.7_18
	movl	%edx, %eax	# Int_1_Loc.7_18, tmp254
	sall	$2, %eax	#, tmp254
	addl	%edx, %eax	# Int_1_Loc.7_18, _19
# dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	subl	-4(%rbp), %eax	# Int_2_Loc, _20
# dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	movl	%eax, -24(%rbp)	# _20, Int_3_Loc
# dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	movl	-20(%rbp), %eax	# Int_1_Loc, Int_1_Loc.8_21
	leaq	-24(%rbp), %rdx	#, tmp255
	movl	-4(%rbp), %ecx	# Int_2_Loc, tmp256
	movl	%ecx, %esi	# tmp256,
	movl	%eax, %edi	# Int_1_Loc.8_21,
	call	Proc_7	#
# dry.c:639: 	Int_1_Loc += 1;
	movl	-20(%rbp), %eax	# Int_1_Loc, Int_1_Loc.9_22
	addl	$1, %eax	#, _23
	movl	%eax, -20(%rbp)	# _23, Int_1_Loc
.L10:
# dry.c:633:       while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
	movl	-20(%rbp), %eax	# Int_1_Loc, Int_1_Loc.10_24
	cmpl	%eax, -4(%rbp)	# Int_1_Loc.10_24, Int_2_Loc
	jg	.L11	#,
# dry.c:642:       Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	movl	-24(%rbp), %edx	# Int_3_Loc, Int_3_Loc.11_25
	movl	-20(%rbp), %eax	# Int_1_Loc, Int_1_Loc.12_26
	movl	%edx, %ecx	# Int_3_Loc.11_25,
	movl	%eax, %edx	# Int_1_Loc.12_26,
	movl	$Arr_2_Glob, %esi	#,
	movl	$Arr_1_Glob, %edi	#,
	call	Proc_8	#
# dry.c:644:       Proc_1 (Ptr_Glob);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.13_27
	movq	%rax, %rdi	# Ptr_Glob.13_27,
	call	Proc_1	#
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movb	$65, -5(%rbp)	#, Ch_Index
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	jmp	.L12	#
.L14:
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	movsbl	-5(%rbp), %eax	# Ch_Index, _28
	movl	$67, %esi	#,
	movl	%eax, %edi	# _28,
	call	Func_1	#
	movl	%eax, %edx	#, _29
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	movl	-28(%rbp), %eax	# Enum_Loc, Enum_Loc.14_30
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	cmpl	%eax, %edx	# Enum_Loc.14_30, _29
	jne	.L13	#,
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	leaq	-28(%rbp), %rax	#, tmp257
	movq	%rax, %rsi	# tmp257,
	movl	$0, %edi	#,
	call	Proc_6	#
# dry.c:652: 	  strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
	movabsq	$5642821575076104260, %rax	#, tmp288
	movabsq	$4706902966564560965, %rdx	#,
	movq	%rax, -96(%rbp)	# tmp288, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movq	%rdx, -88(%rbp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movabsq	$4923040443205963073, %rax	#, tmp289
	movabsq	$20070800167293728, %rdx	#,
	movq	%rax, -81(%rbp)	# tmp289, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movq	%rdx, -73(%rbp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:653: 	  Int_2_Loc = Run_Index;
	movl	-12(%rbp), %eax	# Run_Index, tmp258
	movl	%eax, -4(%rbp)	# tmp258, Int_2_Loc
# dry.c:654: 	  Int_Glob = Run_Index;
	movl	-12(%rbp), %eax	# Run_Index, tmp259
	movl	%eax, Int_Glob(%rip)	# tmp259, Int_Glob
.L13:
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movzbl	-5(%rbp), %eax	# Ch_Index, Ch_Index.15_31
	addl	$1, %eax	#, _32
	movb	%al, -5(%rbp)	# _32, Ch_Index
.L12:
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movzbl	Ch_2_Glob(%rip), %eax	# Ch_2_Glob, Ch_2_Glob.16_33
	cmpb	%al, -5(%rbp)	# Ch_2_Glob.16_33, Ch_Index
	jle	.L14	#,
# dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	movl	-20(%rbp), %eax	# Int_1_Loc, Int_1_Loc.17_34
# dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	movl	-4(%rbp), %edx	# Int_2_Loc, tmp261
	imull	%edx, %eax	# tmp261, Int_2_Loc_270
	movl	%eax, -4(%rbp)	# Int_2_Loc_270, Int_2_Loc
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	-24(%rbp), %ecx	# Int_3_Loc, Int_3_Loc.18_35
	movl	-4(%rbp), %eax	# Int_2_Loc, tmp264
	cltd
	idivl	%ecx	# Int_3_Loc.18_35
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	%eax, -20(%rbp)	# _36, Int_1_Loc
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	movl	-24(%rbp), %eax	# Int_3_Loc, Int_3_Loc.19_37
	movl	-4(%rbp), %edx	# Int_2_Loc, tmp265
	subl	%eax, %edx	# Int_3_Loc.19_37, _38
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	movl	%edx, %eax	# _38, tmp266
	sall	$3, %eax	#, tmp267
	subl	%edx, %eax	# _38, tmp266
	movl	%eax, %ecx	# tmp266, _39
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	movl	-20(%rbp), %eax	# Int_1_Loc, Int_1_Loc.20_40
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	subl	%eax, %ecx	# Int_1_Loc.20_40, _39
	movl	%ecx, %edx	# _39, tmp268
	movl	%edx, -4(%rbp)	# tmp268, Int_2_Loc
# dry.c:662:       Proc_2 (&Int_1_Loc);
	leaq	-20(%rbp), %rax	#, tmp269
	movq	%rax, %rdi	# tmp269,
	call	Proc_2	#
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	addl	$1, -12(%rbp)	#, Run_Index
.L9:
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	movl	-12(%rbp), %eax	# Run_Index, tmp270
	cmpl	-16(%rbp), %eax	# Number_Of_Runs, tmp270
	jle	.L15	#,
# dry.c:671:     Stop_Timer();
	movl	$time_info, %edi	#,
	call	times	#
# dry.c:671:     Stop_Timer();
	movq	time_info(%rip), %rax	# time_info.tms_utime, _41
	movq	%rax, End_Time(%rip)	# _41, End_Time
# dry.c:673:     User_Time = End_Time - Begin_Time;
	movq	End_Time(%rip), %rdx	# End_Time, End_Time.21_42
	movq	Begin_Time(%rip), %rax	# Begin_Time, Begin_Time.22_43
	subq	%rax, %rdx	# Begin_Time.22_43, _44
# dry.c:673:     User_Time = End_Time - Begin_Time;
	movq	%rdx, User_Time(%rip)	# _44, User_Time
# dry.c:675:     if (User_Time < Too_Small_Time)
	movq	User_Time(%rip), %rax	# User_Time, User_Time.23_45
# dry.c:675:     if (User_Time < Too_Small_Time)
	cmpq	$199, %rax	#, User_Time.23_45
	jg	.L16	#,
# dry.c:677:       printf ("too few\n");
	movl	$.LC8, %edi	#,
	call	puts	#
# dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	movl	-16(%rbp), %edx	# Number_Of_Runs, tmp271
	movl	%edx, %eax	# tmp271, Number_Of_Runs_258
	sall	$2, %eax	#, Number_Of_Runs_258
	addl	%edx, %eax	# tmp271, Number_Of_Runs_258
	addl	%eax, %eax	# tmp273
	movl	%eax, -16(%rbp)	# Number_Of_Runs_258, Number_Of_Runs
	jmp	.L8	#
.L16:
# dry.c:679:     } else Done = true;
	movl	$1, Done(%rip)	#, Done
.L8:
# dry.c:611:   while (!Done) {
	movl	Done(%rip), %eax	# Done, Done.24_46
	testl	%eax, %eax	# Done.24_46
	je	.L17	#,
# dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	movq	stderr(%rip), %rax	# stderr, stderr.25_47
	movq	%rax, %rcx	# stderr.25_47,
	movl	$53, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
# dry.c:683:   fprintf (stderr, "\n");
	movq	stderr(%rip), %rax	# stderr, stderr.26_48
	movq	%rax, %rsi	# stderr.26_48,
	movl	$10, %edi	#,
	call	fputc	#
# dry.c:684:   fprintf (stderr, "Int_Glob:            %d\n", Int_Glob);
	movl	Int_Glob(%rip), %edx	# Int_Glob, Int_Glob.27_49
	movq	stderr(%rip), %rax	# stderr, stderr.28_50
	movl	$.LC10, %esi	#,
	movq	%rax, %rdi	# stderr.28_50,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:685:   fprintf (stderr, "        should be:   %d\n", 5);
	movq	stderr(%rip), %rax	# stderr, stderr.29_51
	movl	$5, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.29_51,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	movl	Bool_Glob(%rip), %edx	# Bool_Glob, Bool_Glob.30_52
	movq	stderr(%rip), %rax	# stderr, stderr.31_53
	movl	$.LC12, %esi	#,
	movq	%rax, %rdi	# stderr.31_53,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:687:   fprintf (stderr, "        should be:   %d\n", 1);
	movq	stderr(%rip), %rax	# stderr, stderr.32_54
	movl	$1, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.32_54,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	movzbl	Ch_1_Glob(%rip), %eax	# Ch_1_Glob, Ch_1_Glob.33_55
	movsbl	%al, %edx	# Ch_1_Glob.33_55, _56
	movq	stderr(%rip), %rax	# stderr, stderr.34_57
	movl	$.LC13, %esi	#,
	movq	%rax, %rdi	# stderr.34_57,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:689:   fprintf (stderr, "        should be:   %c\n", 'A');
	movq	stderr(%rip), %rax	# stderr, stderr.35_58
	movl	$65, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# stderr.35_58,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:690:   fprintf (stderr, "Ch_2_Glob:           %c\n", Ch_2_Glob);
	movzbl	Ch_2_Glob(%rip), %eax	# Ch_2_Glob, Ch_2_Glob.36_59
	movsbl	%al, %edx	# Ch_2_Glob.36_59, _60
	movq	stderr(%rip), %rax	# stderr, stderr.37_61
	movl	$.LC15, %esi	#,
	movq	%rax, %rdi	# stderr.37_61,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:691:   fprintf (stderr, "        should be:   %c\n", 'B');
	movq	stderr(%rip), %rax	# stderr, stderr.38_62
	movl	$66, %edx	#,
	movl	$.LC14, %esi	#,
	movq	%rax, %rdi	# stderr.38_62,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	movl	Arr_1_Glob+32(%rip), %edx	# Arr_1_Glob[8], _63
	movq	stderr(%rip), %rax	# stderr, stderr.39_64
	movl	$.LC16, %esi	#,
	movq	%rax, %rdi	# stderr.39_64,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:693:   fprintf (stderr, "        should be:   %d\n", 7);
	movq	stderr(%rip), %rax	# stderr, stderr.40_65
	movl	$7, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.40_65,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	movl	Arr_2_Glob+1628(%rip), %edx	# Arr_2_Glob[8][7], _66
	movq	stderr(%rip), %rax	# stderr, stderr.41_67
	movl	$.LC17, %esi	#,
	movq	%rax, %rdi	# stderr.41_67,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:695:   fprintf (stderr, "        should be:   Number_Of_Runs + 10\n");
	movq	stderr(%rip), %rax	# stderr, stderr.42_68
	movq	%rax, %rcx	# stderr.42_68,
	movl	$41, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC18, %edi	#,
	call	fwrite	#
# dry.c:696:   fprintf (stderr, "Ptr_Glob->\n");
	movq	stderr(%rip), %rax	# stderr, stderr.43_69
	movq	%rax, %rcx	# stderr.43_69,
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC19, %edi	#,
	call	fwrite	#
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.44_70
	movq	(%rax), %rax	# Ptr_Glob.44_70->Ptr_Comp, _71
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	movq	%rax, %rdx	# _71, _72
	movq	stderr(%rip), %rax	# stderr, stderr.45_73
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# stderr.45_73,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:698:   fprintf (stderr, "        should be:   (implementation-dependent)\n");
	movq	stderr(%rip), %rax	# stderr, stderr.46_74
	movq	%rax, %rcx	# stderr.46_74,
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC21, %edi	#,
	call	fwrite	#
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.47_75
	movl	8(%rax), %edx	# Ptr_Glob.47_75->Discr, _76
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	movq	stderr(%rip), %rax	# stderr, stderr.48_77
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# stderr.48_77,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:700:   fprintf (stderr, "        should be:   %d\n", 0);
	movq	stderr(%rip), %rax	# stderr, stderr.49_78
	movl	$0, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.49_78,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.50_79
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movl	12(%rax), %edx	# Ptr_Glob.50_79->variant.var_1.Enum_Comp, _80
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movq	stderr(%rip), %rax	# stderr, stderr.51_81
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# stderr.51_81,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:702:   fprintf (stderr, "        should be:   %d\n", 2);
	movq	stderr(%rip), %rax	# stderr, stderr.52_82
	movl	$2, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.52_82,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.53_83
# dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	movl	16(%rax), %edx	# Ptr_Glob.53_83->variant.var_1.Int_Comp, _84
	movq	stderr(%rip), %rax	# stderr, stderr.54_85
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# stderr.54_85,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:704:   fprintf (stderr, "        should be:   %d\n", 17);
	movq	stderr(%rip), %rax	# stderr, stderr.55_86
	movl	$17, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.55_86,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.56_87
# dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	leaq	20(%rax), %rdx	#, _88
# dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	movq	stderr(%rip), %rax	# stderr, stderr.57_89
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# stderr.57_89,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:706:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	movq	stderr(%rip), %rax	# stderr, stderr.58_90
	movq	%rax, %rcx	# stderr.58_90,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
# dry.c:707:   fprintf (stderr, "Next_Ptr_Glob->\n");
	movq	stderr(%rip), %rax	# stderr, stderr.59_91
	movq	%rax, %rcx	# stderr.59_91,
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC27, %edi	#,
	call	fwrite	#
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob.60_92
	movq	(%rax), %rax	# Next_Ptr_Glob.60_92->Ptr_Comp, _93
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	movq	%rax, %rdx	# _93, _94
	movq	stderr(%rip), %rax	# stderr, stderr.61_95
	movl	$.LC20, %esi	#,
	movq	%rax, %rdi	# stderr.61_95,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:709:   fprintf (stderr, "        should be:   (implementation-dependent), same as above\n");
	movq	stderr(%rip), %rax	# stderr, stderr.62_96
	movq	%rax, %rcx	# stderr.62_96,
	movl	$63, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC28, %edi	#,
	call	fwrite	#
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob.63_97
	movl	8(%rax), %edx	# Next_Ptr_Glob.63_97->Discr, _98
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	movq	stderr(%rip), %rax	# stderr, stderr.64_99
	movl	$.LC22, %esi	#,
	movq	%rax, %rdi	# stderr.64_99,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:711:   fprintf (stderr, "        should be:   %d\n", 0);
	movq	stderr(%rip), %rax	# stderr, stderr.65_100
	movl	$0, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.65_100,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob.66_101
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movl	12(%rax), %edx	# Next_Ptr_Glob.66_101->variant.var_1.Enum_Comp, _102
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movq	stderr(%rip), %rax	# stderr, stderr.67_103
	movl	$.LC23, %esi	#,
	movq	%rax, %rdi	# stderr.67_103,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:713:   fprintf (stderr, "        should be:   %d\n", 1);
	movq	stderr(%rip), %rax	# stderr, stderr.68_104
	movl	$1, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.68_104,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob.69_105
# dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	movl	16(%rax), %edx	# Next_Ptr_Glob.69_105->variant.var_1.Int_Comp, _106
	movq	stderr(%rip), %rax	# stderr, stderr.70_107
	movl	$.LC24, %esi	#,
	movq	%rax, %rdi	# stderr.70_107,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:715:   fprintf (stderr, "        should be:   %d\n", 18);
	movq	stderr(%rip), %rax	# stderr, stderr.71_108
	movl	$18, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.71_108,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:717:                                 Next_Ptr_Glob->variant.var_1.Str_Comp);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob.72_109
# dry.c:717:                                 Next_Ptr_Glob->variant.var_1.Str_Comp);
	leaq	20(%rax), %rdx	#, _110
# dry.c:716:   fprintf (stderr, "  Str_Comp:          %s\n",
	movq	stderr(%rip), %rax	# stderr, stderr.73_111
	movl	$.LC25, %esi	#,
	movq	%rax, %rdi	# stderr.73_111,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:718:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	movq	stderr(%rip), %rax	# stderr, stderr.74_112
	movq	%rax, %rcx	# stderr.74_112,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
# dry.c:719:   fprintf (stderr, "Int_1_Loc:           %d\n", Int_1_Loc);
	movl	-20(%rbp), %edx	# Int_1_Loc, Int_1_Loc.75_113
	movq	stderr(%rip), %rax	# stderr, stderr.76_114
	movl	$.LC29, %esi	#,
	movq	%rax, %rdi	# stderr.76_114,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:720:   fprintf (stderr, "        should be:   %d\n", 5);
	movq	stderr(%rip), %rax	# stderr, stderr.77_115
	movl	$5, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.77_115,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:721:   fprintf (stderr, "Int_2_Loc:           %d\n", Int_2_Loc);
	movq	stderr(%rip), %rax	# stderr, stderr.78_116
	movl	-4(%rbp), %edx	# Int_2_Loc, tmp274
	movl	$.LC30, %esi	#,
	movq	%rax, %rdi	# stderr.78_116,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:722:   fprintf (stderr, "        should be:   %d\n", 13);
	movq	stderr(%rip), %rax	# stderr, stderr.79_117
	movl	$13, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.79_117,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:723:   fprintf (stderr, "Int_3_Loc:           %d\n", Int_3_Loc);
	movl	-24(%rbp), %edx	# Int_3_Loc, Int_3_Loc.80_118
	movq	stderr(%rip), %rax	# stderr, stderr.81_119
	movl	$.LC31, %esi	#,
	movq	%rax, %rdi	# stderr.81_119,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:724:   fprintf (stderr, "        should be:   %d\n", 7);
	movq	stderr(%rip), %rax	# stderr, stderr.82_120
	movl	$7, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.82_120,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:725:   fprintf (stderr, "Enum_Loc:            %d\n", Enum_Loc);
	movl	-28(%rbp), %edx	# Enum_Loc, Enum_Loc.83_121
	movq	stderr(%rip), %rax	# stderr, stderr.84_122
	movl	$.LC32, %esi	#,
	movq	%rax, %rdi	# stderr.84_122,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:726:   fprintf (stderr, "        should be:   %d\n", 1);
	movq	stderr(%rip), %rax	# stderr, stderr.85_123
	movl	$1, %edx	#,
	movl	$.LC11, %esi	#,
	movq	%rax, %rdi	# stderr.85_123,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:727:   fprintf (stderr, "Str_1_Loc:           %s\n", Str_1_Loc);
	movq	stderr(%rip), %rax	# stderr, stderr.86_124
	leaq	-64(%rbp), %rdx	#, tmp275
	movl	$.LC33, %esi	#,
	movq	%rax, %rdi	# stderr.86_124,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:728:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
	movq	stderr(%rip), %rax	# stderr, stderr.87_125
	movq	%rax, %rcx	# stderr.87_125,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC34, %edi	#,
	call	fwrite	#
# dry.c:729:   fprintf (stderr, "Str_2_Loc:           %s\n", Str_2_Loc);
	movq	stderr(%rip), %rax	# stderr, stderr.88_126
	leaq	-96(%rbp), %rdx	#, tmp276
	movl	$.LC35, %esi	#,
	movq	%rax, %rdi	# stderr.88_126,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:730:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
	movq	stderr(%rip), %rax	# stderr, stderr.89_127
	movq	%rax, %rcx	# stderr.89_127,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC36, %edi	#,
	call	fwrite	#
# dry.c:731:   fprintf (stderr, "\n");
	movq	stderr(%rip), %rax	# stderr, stderr.90_128
	movq	%rax, %rsi	# stderr.90_128,
	movl	$10, %edi	#,
	call	fputc	#
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	movq	User_Time(%rip), %rax	# User_Time, User_Time.91_129
	pxor	%xmm0, %xmm0	# _130
	cvtsi2ssq	%rax, %xmm0	# User_Time.91_129, _130
	pxor	%xmm1, %xmm1	# _131
	cvtss2sd	%xmm0, %xmm1	# _130, _131
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	movsd	.LC37(%rip), %xmm0	#, tmp277
	mulsd	%xmm1, %xmm0	# _131, _132
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	pxor	%xmm2, %xmm2	# _133
	cvtsi2ssl	-16(%rbp), %xmm2	# Number_Of_Runs, _133
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	movss	.LC38(%rip), %xmm1	#, tmp278
	mulss	%xmm2, %xmm1	# _133, _134
	cvtss2sd	%xmm1, %xmm1	# _134, _135
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	divsd	%xmm1, %xmm0	# _135, _136
	cvtsd2ss	%xmm0, %xmm0	# _136, _137
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	movss	%xmm0, Microseconds(%rip)	# _137, Microseconds
# dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	pxor	%xmm1, %xmm1	# _138
	cvtsi2ssl	-16(%rbp), %xmm1	# Number_Of_Runs, _138
# dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	movss	.LC38(%rip), %xmm0	#, tmp279
	mulss	%xmm1, %xmm0	# _138, _139
# dry.c:737:                         / (float) User_Time;
	movq	User_Time(%rip), %rax	# User_Time, User_Time.92_140
	pxor	%xmm1, %xmm1	# _141
	cvtsi2ssq	%rax, %xmm1	# User_Time.92_140, _141
# dry.c:737:                         / (float) User_Time;
	divss	%xmm1, %xmm0	# _141, _142
# dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	movss	%xmm0, Dhrystones_Per_Second(%rip)	# _142, Dhrystones_Per_Second
# dry.c:739:     printf ("\nMicroseconds for one run through Dhrystone: ");
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# dry.c:740:     printf ("%10.2f \n", Microseconds);
	movss	Microseconds(%rip), %xmm0	# Microseconds, Microseconds.93_143
	pxor	%xmm3, %xmm3	# _144
	cvtss2sd	%xmm0, %xmm3	# Microseconds.93_143, _144
	movq	%xmm3, %rax	# _144, _144
	movq	%rax, %xmm0	# _144,
	movl	$.LC40, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
# dry.c:741:     printf ("Dhrystones per Second:                      ");
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# dry.c:742:     printf ("%10.0f \n", Dhrystones_Per_Second);
	movss	Dhrystones_Per_Second(%rip), %xmm0	# Dhrystones_Per_Second, Dhrystones_Per_Second.94_145
	pxor	%xmm4, %xmm4	# _146
	cvtss2sd	%xmm0, %xmm4	# Dhrystones_Per_Second.94_145, _146
	movq	%xmm4, %rax	# _146, _146
	movq	%rax, %xmm0	# _146,
	movl	$.LC42, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
# dry.c:743:     printf ("\n");
	movl	$10, %edi	#,
	call	putchar	#
	movl	$0, %eax	#, _248
# dry.c:745: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.globl	Proc_1
	.type	Proc_1, @function
Proc_1:
.LFB7:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# Ptr_Val_Par, Ptr_Val_Par
# dry.c:753:   REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
	movq	-40(%rbp), %rax	# Ptr_Val_Par, tmp111
	movq	(%rax), %rax	# Ptr_Val_Par_16(D)->Ptr_Comp, tmp112
	movq	%rax, -24(%rbp)	# tmp112, Next_Record
# dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	movq	Ptr_Glob(%rip), %rdx	# Ptr_Glob, Ptr_Glob.95_1
	movq	-40(%rbp), %rax	# Ptr_Val_Par, tmp113
	movq	(%rax), %rax	# Ptr_Val_Par_16(D)->Ptr_Comp, _2
	movq	(%rdx), %rcx	# *Ptr_Glob.95_1, tmp114
	movq	8(%rdx), %rbx	# *Ptr_Glob.95_1,
	movq	%rcx, (%rax)	# tmp114, *_2
	movq	%rbx, 8(%rax)	#, *_2
	movq	16(%rdx), %rcx	# *Ptr_Glob.95_1, tmp115
	movq	24(%rdx), %rbx	# *Ptr_Glob.95_1,
	movq	%rcx, 16(%rax)	# tmp115, *_2
	movq	%rbx, 24(%rax)	#, *_2
	movq	32(%rdx), %rcx	# *Ptr_Glob.95_1, tmp116
	movq	40(%rdx), %rbx	# *Ptr_Glob.95_1,
	movq	%rcx, 32(%rax)	# tmp116, *_2
	movq	%rbx, 40(%rax)	#, *_2
	movq	48(%rdx), %rdx	# *Ptr_Glob.95_1, tmp117
	movq	%rdx, 48(%rax)	# tmp117, *_2
# dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	movq	-40(%rbp), %rax	# Ptr_Val_Par, tmp118
	movl	$5, 16(%rax)	#, Ptr_Val_Par_16(D)->variant.var_1.Int_Comp
# dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	movq	-40(%rbp), %rax	# Ptr_Val_Par, tmp119
	movl	16(%rax), %edx	# Ptr_Val_Par_16(D)->variant.var_1.Int_Comp, _3
# dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	movq	-24(%rbp), %rax	# Next_Record, tmp120
	movl	%edx, 16(%rax)	# _3, Next_Record_17->variant.var_1.Int_Comp
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movq	-40(%rbp), %rax	# Ptr_Val_Par, tmp121
	movq	(%rax), %rdx	# Ptr_Val_Par_16(D)->Ptr_Comp, _4
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movq	-24(%rbp), %rax	# Next_Record, tmp122
	movq	%rdx, (%rax)	# _4, Next_Record_17->Ptr_Comp
# dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	movq	-24(%rbp), %rax	# Next_Record, _5
# dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	movq	%rax, %rdi	# _5,
	call	Proc_3	#
# dry.c:766:   if (Next_Record->Discr == Ident_1)
	movq	-24(%rbp), %rax	# Next_Record, tmp123
	movl	8(%rax), %eax	# Next_Record_17->Discr, _6
# dry.c:766:   if (Next_Record->Discr == Ident_1)
	testl	%eax, %eax	# _6
	jne	.L20	#,
# dry.c:769:     Next_Record->variant.var_1.Int_Comp = 6;
	movq	-24(%rbp), %rax	# Next_Record, tmp124
	movl	$6, 16(%rax)	#, Next_Record_17->variant.var_1.Int_Comp
# dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	movq	-24(%rbp), %rax	# Next_Record, tmp125
	leaq	12(%rax), %rdx	#, _7
	movq	-40(%rbp), %rax	# Ptr_Val_Par, tmp126
	movl	12(%rax), %eax	# Ptr_Val_Par_16(D)->variant.var_1.Enum_Comp, _8
	movq	%rdx, %rsi	# _7,
	movl	%eax, %edi	# _8,
	call	Proc_6	#
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.96_9
	movq	(%rax), %rdx	# Ptr_Glob.96_9->Ptr_Comp, _10
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movq	-24(%rbp), %rax	# Next_Record, tmp127
	movq	%rdx, (%rax)	# _10, Next_Record_17->Ptr_Comp
# dry.c:774:            &Next_Record->variant.var_1.Int_Comp);
	movq	-24(%rbp), %rax	# Next_Record, tmp128
	leaq	16(%rax), %rdx	#, _11
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	movq	-24(%rbp), %rax	# Next_Record, tmp129
	movl	16(%rax), %eax	# Next_Record_17->variant.var_1.Int_Comp, _12
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	movl	$10, %esi	#,
	movl	%eax, %edi	# _12,
	call	Proc_7	#
# dry.c:778: } /* Proc_1 */
	jmp	.L22	#
.L20:
# dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	movq	-40(%rbp), %rax	# Ptr_Val_Par, tmp130
	movq	(%rax), %rdx	# Ptr_Val_Par_16(D)->Ptr_Comp, _13
	movq	-40(%rbp), %rax	# Ptr_Val_Par, tmp131
	movq	(%rdx), %rcx	# *_13, tmp132
	movq	8(%rdx), %rbx	# *_13,
	movq	%rcx, (%rax)	# tmp132, *Ptr_Val_Par_16(D)
	movq	%rbx, 8(%rax)	#, *Ptr_Val_Par_16(D)
	movq	16(%rdx), %rcx	# *_13, tmp133
	movq	24(%rdx), %rbx	# *_13,
	movq	%rcx, 16(%rax)	# tmp133, *Ptr_Val_Par_16(D)
	movq	%rbx, 24(%rax)	#, *Ptr_Val_Par_16(D)
	movq	32(%rdx), %rcx	# *_13, tmp134
	movq	40(%rdx), %rbx	# *_13,
	movq	%rcx, 32(%rax)	# tmp134, *Ptr_Val_Par_16(D)
	movq	%rbx, 40(%rax)	#, *Ptr_Val_Par_16(D)
	movq	48(%rdx), %rdx	# *_13, tmp135
	movq	%rdx, 48(%rax)	# tmp135, *Ptr_Val_Par_16(D)
.L22:
# dry.c:778: } /* Proc_1 */
	nop	
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	Proc_1, .-Proc_1
	.globl	Proc_2
	.type	Proc_2, @function
Proc_2:
.LFB8:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# Int_Par_Ref, Int_Par_Ref
# dry.c:789:   Int_Loc = *Int_Par_Ref + 10;
	movq	-24(%rbp), %rax	# Int_Par_Ref, tmp102
	movl	(%rax), %eax	# *Int_Par_Ref_12(D), _1
# dry.c:789:   Int_Loc = *Int_Par_Ref + 10;
	addl	$10, %eax	#, tmp103
	movl	%eax, -4(%rbp)	# tmp103, Int_Loc
.L25:
# dry.c:791:     if (Ch_1_Glob == 'A')
	movzbl	Ch_1_Glob(%rip), %eax	# Ch_1_Glob, Ch_1_Glob.97_2
# dry.c:791:     if (Ch_1_Glob == 'A')
	cmpb	$65, %al	#, Ch_1_Glob.97_2
	jne	.L24	#,
# dry.c:794:       Int_Loc -= 1;
	subl	$1, -4(%rbp)	#, Int_Loc
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	movl	Int_Glob(%rip), %eax	# Int_Glob, Int_Glob.98_3
	movl	-4(%rbp), %edx	# Int_Loc, tmp104
	subl	%eax, %edx	# Int_Glob.98_3, _4
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	movq	-24(%rbp), %rax	# Int_Par_Ref, tmp105
	movl	%edx, (%rax)	# _4, *Int_Par_Ref_12(D)
# dry.c:796:       Enum_Loc = Ident_1;
	movl	$0, -8(%rbp)	#, Enum_Loc
.L24:
# dry.c:798:   while (Enum_Loc != Ident_1); /* true */
	cmpl	$0, -8(%rbp)	#, Enum_Loc
	jne	.L25	#,
# dry.c:799: } /* Proc_2 */
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	Proc_2, .-Proc_2
	.globl	Proc_3
	.type	Proc_3, @function
Proc_3:
.LFB9:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# Ptr_Ref_Par, Ptr_Ref_Par
# dry.c:807:   if (Ptr_Glob != Null)
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.99_1
# dry.c:807:   if (Ptr_Glob != Null)
	testq	%rax, %rax	# Ptr_Glob.99_1
	je	.L27	#,
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.100_2
	movq	(%rax), %rdx	# Ptr_Glob.100_2->Ptr_Comp, _3
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movq	-8(%rbp), %rax	# Ptr_Ref_Par, tmp104
	movq	%rdx, (%rax)	# _3, *Ptr_Ref_Par_9(D)
.L27:
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.101_4
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	leaq	16(%rax), %rdx	#, _5
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	Int_Glob(%rip), %eax	# Int_Glob, Int_Glob.102_6
	movl	%eax, %esi	# Int_Glob.102_6,
	movl	$10, %edi	#,
	call	Proc_7	#
# dry.c:811: } /* Proc_3 */
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	Proc_3, .-Proc_3
	.globl	Proc_4
	.type	Proc_4, @function
Proc_4:
.LFB10:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	movzbl	Ch_1_Glob(%rip), %eax	# Ch_1_Glob, Ch_1_Glob.103_1
	cmpb	$65, %al	#, Ch_1_Glob.103_1
	sete	%al	#, _2
# dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	movzbl	%al, %eax	# _2, tmp102
	movl	%eax, -4(%rbp)	# tmp102, Bool_Loc
# dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	movl	Bool_Glob(%rip), %eax	# Bool_Glob, Bool_Glob.104_3
	orl	-4(%rbp), %eax	# Bool_Loc, _4
# dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	movl	%eax, Bool_Glob(%rip)	# _4, Bool_Glob
# dry.c:822:   Ch_2_Glob = 'B';
	movb	$66, Ch_2_Glob(%rip)	#, Ch_2_Glob
# dry.c:823: } /* Proc_4 */
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	Proc_4, .-Proc_4
	.globl	Proc_5
	.type	Proc_5, @function
Proc_5:
.LFB11:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# dry.c:830:   Ch_1_Glob = 'A';
	movb	$65, Ch_1_Glob(%rip)	#, Ch_1_Glob
# dry.c:831:   Bool_Glob = false;
	movl	$0, Bool_Glob(%rip)	#, Bool_Glob
# dry.c:832: } /* Proc_5 */
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	Proc_5, .-Proc_5
	.section	.rodata
	.align 8
.LC37:
	.long	0
	.long	1093567616
	.align 4
.LC38:
	.long	1120403456
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
