	.file	"dry.c"
# GNU C17 (Debian 12.2.0-14+deb12u1) version 12.2.0 (i686-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=i686 -O0 -fasynchronous-unwind-tables
	.text
	.globl	time_info
	.bss
	.align 4
	.type	time_info, @object
	.size	time_info, 16
time_info:
	.zero	16
	.globl	Ptr_Glob
	.align 4
	.type	Ptr_Glob, @object
	.size	Ptr_Glob, 4
Ptr_Glob:
	.zero	4
	.globl	Next_Ptr_Glob
	.align 4
	.type	Next_Ptr_Glob, @object
	.size	Next_Ptr_Glob, 4
Next_Ptr_Glob:
	.zero	4
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
	.align 4
	.type	Begin_Time, @object
	.size	Begin_Time, 4
Begin_Time:
	.zero	4
	.globl	End_Time
	.align 4
	.type	End_Time, @object
	.size	End_Time, 4
End_Time:
	.zero	4
	.globl	User_Time
	.align 4
	.type	User_Time, @object
	.size	User_Time, 4
User_Time:
	.zero	4
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
	.align 4
.LC2:
	.string	"Dhrystone Benchmark, Version %s\n"
	.align 4
.LC3:
	.string	"Program compiled with 'register' attribute"
	.align 4
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
	.align 4
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
	.align 4
.LC18:
	.string	"        should be:   Number_Of_Runs + 10\n"
.LC19:
	.string	"Ptr_Glob->\n"
.LC20:
	.string	"  Ptr_Comp:          %ld\n"
	.align 4
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
	.align 4
.LC26:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
.LC27:
	.string	"Next_Ptr_Glob->\n"
	.align 4
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
	.align 4
.LC34:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
.LC35:
	.string	"Str_2_Loc:           %s\n"
	.align 4
.LC36:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.align 4
.LC39:
	.string	"\nMicroseconds for one run through Dhrystone: "
.LC40:
	.string	"%10.2f \n"
	.align 4
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
	leal	4(%esp), %ecx	#,
	.cfi_def_cfa 1, 0
	andl	$-16, %esp	#,
	pushl	-4(%ecx)	#
	pushl	%ebp	#
	movl	%esp, %ebp	#,
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx	#
	pushl	%ecx	#
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$112, %esp	#,
	call	__x86.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	# tmp82,
	movl	%ecx, %eax	#, tmp376
# dry.c:561:   if (argc > 2)
	cmpl	$2, (%eax)	#, argc
	jle	.L2	#,
# dry.c:563:      printf ("Usage: %s [number of loops]\n", argv[0]);
	movl	4(%eax), %eax	# argv, tmp231
	movl	(%eax), %eax	# *argv_164(D), _1
	subl	$8, %esp	#,
	pushl	%eax	# _1
	leal	.LC0@GOTOFF(%ebx), %eax	#, tmp232
	pushl	%eax	# tmp232
	call	printf@PLT	#
	addl	$16, %esp	#,
# dry.c:564:      exit (1);
	subl	$12, %esp	#,
	pushl	$1	#
	call	exit@PLT	#
.L2:
# dry.c:566:   if (argc == 2)
	cmpl	$2, (%eax)	#, argc
	jne	.L3	#,
# dry.c:568:      Number_Of_Runs = atoi (argv[1]);
	movl	4(%eax), %eax	# argv, tmp233
	addl	$4, %eax	#, _2
# dry.c:568:      Number_Of_Runs = atoi (argv[1]);
	movl	(%eax), %eax	# *_2, _3
	subl	$12, %esp	#,
	pushl	%eax	# _3
	call	atoi@PLT	#
	addl	$16, %esp	#,
	movl	%eax, -24(%ebp)	# tmp234, Number_Of_Runs
	jmp	.L4	#
.L3:
# dry.c:571:      Number_Of_Runs = NUMBER_OF_RUNS;
	movl	$50000, -24(%ebp)	#, Number_Of_Runs
.L4:
# dry.c:573:   if (Number_Of_Runs <= 0)
	cmpl	$0, -24(%ebp)	#, Number_Of_Runs
	jg	.L5	#,
# dry.c:575:      Number_Of_Runs = NUMBER_OF_RUNS;
	movl	$50000, -24(%ebp)	#, Number_Of_Runs
.L5:
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	subl	$12, %esp	#,
	pushl	$48	#
	call	malloc@PLT	#
	addl	$16, %esp	#,
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	%eax, Next_Ptr_Glob@GOTOFF(%ebx)	# _4, Next_Ptr_Glob
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	subl	$12, %esp	#,
	pushl	$48	#
	call	malloc@PLT	#
	addl	$16, %esp	#,
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	%eax, Ptr_Glob@GOTOFF(%ebx)	# _5, Ptr_Glob
# dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.0_6
# dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %edx	# Next_Ptr_Glob, Next_Ptr_Glob.1_7
	movl	%edx, (%eax)	# Next_Ptr_Glob.1_7, Ptr_Glob.0_6->Ptr_Comp
# dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.2_8
# dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	movl	$0, 4(%eax)	#, Ptr_Glob.2_8->Discr
# dry.c:585:   Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.3_9
# dry.c:585:   Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
	movl	$2, 8(%eax)	#, Ptr_Glob.3_9->variant.var_1.Enum_Comp
# dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.4_10
# dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	movl	$40, 12(%eax)	#, Ptr_Glob.4_10->variant.var_1.Int_Comp
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.5_11
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	addl	$16, %eax	#, _12
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movl	$1498564676, (%eax)	#, MEM <char[1:31]> [(void *)_12]
	movl	$1313821779, 4(%eax)	#, MEM <char[1:31]> [(void *)_12]
	movl	$1380982853, 8(%eax)	#, MEM <char[1:31]> [(void *)_12]
	movl	$1095911247, 12(%eax)	#, MEM <char[1:31]> [(void *)_12]
	movl	$1394617421, 16(%eax)	#, MEM <char[1:31]> [(void *)_12]
	movl	$541412687, 20(%eax)	#, MEM <char[1:31]> [(void *)_12]
	movl	$1230132307, 24(%eax)	#, MEM <char[1:31]> [(void *)_12]
	movl	$4673097, 27(%eax)	#, MEM <char[1:31]> [(void *)_12]
# dry.c:589:   strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
	movl	$1498564676, -67(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$1313821779, -63(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$1380982853, -59(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$1095911247, -55(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$824192077, -51(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$542397223, -47(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$1230132307, -43(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$4673097, -40(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
# dry.c:591:   Arr_2_Glob [8][7] = 10;
	movl	$10, 1628+Arr_2_Glob@GOTOFF(%ebx)	#, Arr_2_Glob[8][7]
# dry.c:597:   printf ("\n");
	subl	$12, %esp	#,
	pushl	$10	#
	call	putchar@PLT	#
	addl	$16, %esp	#,
# dry.c:598:   printf ("Dhrystone Benchmark, Version %s\n", Version);
	subl	$8, %esp	#,
	leal	.LC1@GOTOFF(%ebx), %eax	#, tmp237
	pushl	%eax	# tmp237
	leal	.LC2@GOTOFF(%ebx), %eax	#, tmp238
	pushl	%eax	# tmp238
	call	printf@PLT	#
	addl	$16, %esp	#,
# dry.c:599:   if (Reg)
	movl	Reg@GOTOFF(%ebx), %eax	# Reg, Reg.6_13
# dry.c:599:   if (Reg)
	testl	%eax, %eax	# Reg.6_13
	je	.L6	#,
# dry.c:601:     printf ("Program compiled with 'register' attribute\n");
	subl	$12, %esp	#,
	leal	.LC3@GOTOFF(%ebx), %eax	#, tmp239
	pushl	%eax	# tmp239
	call	puts@PLT	#
	addl	$16, %esp	#,
	jmp	.L7	#
.L6:
# dry.c:605:     printf ("Program compiled without 'register' attribute\n");
	subl	$12, %esp	#,
	leal	.LC4@GOTOFF(%ebx), %eax	#, tmp240
	pushl	%eax	# tmp240
	call	puts@PLT	#
	addl	$16, %esp	#,
.L7:
# dry.c:607:   printf ("Using %s, HZ=%d\n", CLOCK_TYPE, HZ);
	subl	$4, %esp	#,
	pushl	$100	#
	leal	.LC5@GOTOFF(%ebx), %eax	#, tmp241
	pushl	%eax	# tmp241
	leal	.LC6@GOTOFF(%ebx), %eax	#, tmp242
	pushl	%eax	# tmp242
	call	printf@PLT	#
	addl	$16, %esp	#,
# dry.c:608:   printf ("\n");
	subl	$12, %esp	#,
	pushl	$10	#
	call	putchar@PLT	#
	addl	$16, %esp	#,
# dry.c:610:   Done = false;
	movl	$0, Done@GOTOFF(%ebx)	#, Done
# dry.c:611:   while (!Done) {
	jmp	.L8	#
.L17:
# dry.c:613:     printf ("Trying %d runs: ", Number_Of_Runs);
	subl	$8, %esp	#,
	pushl	-24(%ebp)	# Number_Of_Runs
	leal	.LC7@GOTOFF(%ebx), %eax	#, tmp243
	pushl	%eax	# tmp243
	call	printf@PLT	#
	addl	$16, %esp	#,
# dry.c:619:     Start_Timer();
	subl	$12, %esp	#,
	leal	time_info@GOTOFF(%ebx), %eax	#, tmp244
	pushl	%eax	# tmp244
	call	times@PLT	#
	addl	$16, %esp	#,
	movl	time_info@GOTOFF(%ebx), %eax	# time_info.tms_utime, _14
	movl	%eax, Begin_Time@GOTOFF(%ebx)	# _14, Begin_Time
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	movl	$1, -20(%ebp)	#, Run_Index
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	jmp	.L9	#
.L15:
# dry.c:624:       Proc_5();
	call	Proc_5	#
# dry.c:625:       Proc_4();
	call	Proc_4	#
# dry.c:627:       Int_1_Loc = 2;
	movl	$2, -28(%ebp)	#, Int_1_Loc
# dry.c:628:       Int_2_Loc = 3;
	movl	$3, -12(%ebp)	#, Int_2_Loc
# dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	movl	$1498564676, -98(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1313821779, -94(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1380982853, -90(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1095911247, -86(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$840969293, -82(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$541347367, -78(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1230132307, -74(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$4673097, -71(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:630:       Enum_Loc = Ident_2;
	movl	$1, -36(%ebp)	#, Enum_Loc
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	subl	$8, %esp	#,
	leal	-98(%ebp), %eax	#, tmp245
	pushl	%eax	# tmp245
	leal	-67(%ebp), %eax	#, tmp246
	pushl	%eax	# tmp246
	call	Func_2@PLT	#
	addl	$16, %esp	#,
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	testl	%eax, %eax	# _15
	sete	%al	#, _16
	movzbl	%al, %eax	# _16, _17
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	movl	%eax, Bool_Glob@GOTOFF(%ebx)	# _17, Bool_Glob
# dry.c:633:       while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
	jmp	.L10	#
.L11:
# dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	movl	-28(%ebp), %edx	# Int_1_Loc, Int_1_Loc.7_18
	movl	%edx, %eax	# Int_1_Loc.7_18, tmp247
	sall	$2, %eax	#, tmp247
	addl	%edx, %eax	# Int_1_Loc.7_18, _19
# dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	subl	-12(%ebp), %eax	# Int_2_Loc, _20
# dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	movl	%eax, -32(%ebp)	# _20, Int_3_Loc
# dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	movl	-28(%ebp), %eax	# Int_1_Loc, Int_1_Loc.8_21
	subl	$4, %esp	#,
	leal	-32(%ebp), %edx	#, tmp248
	pushl	%edx	# tmp248
	pushl	-12(%ebp)	# Int_2_Loc
	pushl	%eax	# Int_1_Loc.8_21
	call	Proc_7@PLT	#
	addl	$16, %esp	#,
# dry.c:639: 	Int_1_Loc += 1;
	movl	-28(%ebp), %eax	# Int_1_Loc, Int_1_Loc.9_22
	addl	$1, %eax	#, _23
	movl	%eax, -28(%ebp)	# _23, Int_1_Loc
.L10:
# dry.c:633:       while (Int_1_Loc < Int_2_Loc)  /* loop body executed once */
	movl	-28(%ebp), %eax	# Int_1_Loc, Int_1_Loc.10_24
	cmpl	%eax, -12(%ebp)	# Int_1_Loc.10_24, Int_2_Loc
	jg	.L11	#,
# dry.c:642:       Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	movl	-32(%ebp), %edx	# Int_3_Loc, Int_3_Loc.11_25
	movl	-28(%ebp), %eax	# Int_1_Loc, Int_1_Loc.12_26
	pushl	%edx	# Int_3_Loc.11_25
	pushl	%eax	# Int_1_Loc.12_26
	leal	Arr_2_Glob@GOTOFF(%ebx), %eax	#, tmp249
	pushl	%eax	# tmp249
	leal	Arr_1_Glob@GOTOFF(%ebx), %eax	#, tmp250
	pushl	%eax	# tmp250
	call	Proc_8@PLT	#
	addl	$16, %esp	#,
# dry.c:644:       Proc_1 (Ptr_Glob);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.13_27
	subl	$12, %esp	#,
	pushl	%eax	# Ptr_Glob.13_27
	call	Proc_1	#
	addl	$16, %esp	#,
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movb	$65, -13(%ebp)	#, Ch_Index
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	jmp	.L12	#
.L14:
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	movsbl	-13(%ebp), %eax	# Ch_Index, _28
	subl	$8, %esp	#,
	pushl	$67	#
	pushl	%eax	# _28
	call	Func_1@PLT	#
	addl	$16, %esp	#,
	movl	%eax, %edx	#, _29
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	movl	-36(%ebp), %eax	# Enum_Loc, Enum_Loc.14_30
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	cmpl	%eax, %edx	# Enum_Loc.14_30, _29
	jne	.L13	#,
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	subl	$8, %esp	#,
	leal	-36(%ebp), %eax	#, tmp251
	pushl	%eax	# tmp251
	pushl	$0	#
	call	Proc_6@PLT	#
	addl	$16, %esp	#,
# dry.c:652: 	  strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
	movl	$1498564676, -98(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1313821779, -94(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1380982853, -90(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1095911247, -86(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$857746509, -82(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$541348391, -78(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1230132307, -74(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$4673097, -71(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:653: 	  Int_2_Loc = Run_Index;
	movl	-20(%ebp), %eax	# Run_Index, tmp252
	movl	%eax, -12(%ebp)	# tmp252, Int_2_Loc
# dry.c:654: 	  Int_Glob = Run_Index;
	movl	-20(%ebp), %eax	# Run_Index, tmp253
	movl	%eax, Int_Glob@GOTOFF(%ebx)	# tmp253, Int_Glob
.L13:
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movzbl	-13(%ebp), %eax	# Ch_Index, Ch_Index.15_31
	addl	$1, %eax	#, _32
	movb	%al, -13(%ebp)	# _32, Ch_Index
.L12:
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movzbl	Ch_2_Glob@GOTOFF(%ebx), %eax	# Ch_2_Glob, Ch_2_Glob.16_33
	cmpb	%al, -13(%ebp)	# Ch_2_Glob.16_33, Ch_Index
	jle	.L14	#,
# dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	movl	-28(%ebp), %eax	# Int_1_Loc, Int_1_Loc.17_34
# dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	movl	-12(%ebp), %edx	# Int_2_Loc, tmp255
	imull	%edx, %eax	# tmp255, tmp254
	movl	%eax, -12(%ebp)	# tmp254, Int_2_Loc
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	-32(%ebp), %ecx	# Int_3_Loc, Int_3_Loc.18_35
	movl	-12(%ebp), %eax	# Int_2_Loc, tmp258
	cltd
	idivl	%ecx	# Int_3_Loc.18_35
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	%eax, -28(%ebp)	# _36, Int_1_Loc
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	movl	-32(%ebp), %eax	# Int_3_Loc, Int_3_Loc.19_37
	movl	-12(%ebp), %edx	# Int_2_Loc, tmp259
	subl	%eax, %edx	# Int_3_Loc.19_37, _38
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	movl	%edx, %eax	# _38, tmp260
	sall	$3, %eax	#, tmp261
	subl	%edx, %eax	# _38, tmp260
	movl	%eax, %ecx	# tmp260, _39
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	movl	-28(%ebp), %eax	# Int_1_Loc, Int_1_Loc.20_40
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	subl	%eax, %ecx	# Int_1_Loc.20_40, _39
	movl	%ecx, %edx	# _39, tmp262
	movl	%edx, -12(%ebp)	# tmp262, Int_2_Loc
# dry.c:662:       Proc_2 (&Int_1_Loc);
	subl	$12, %esp	#,
	leal	-28(%ebp), %eax	#, tmp263
	pushl	%eax	# tmp263
	call	Proc_2	#
	addl	$16, %esp	#,
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	addl	$1, -20(%ebp)	#, Run_Index
.L9:
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	movl	-20(%ebp), %eax	# Run_Index, tmp264
	cmpl	-24(%ebp), %eax	# Number_Of_Runs, tmp264
	jle	.L15	#,
# dry.c:671:     Stop_Timer();
	subl	$12, %esp	#,
	leal	time_info@GOTOFF(%ebx), %eax	#, tmp265
	pushl	%eax	# tmp265
	call	times@PLT	#
	addl	$16, %esp	#,
	movl	time_info@GOTOFF(%ebx), %eax	# time_info.tms_utime, _41
	movl	%eax, End_Time@GOTOFF(%ebx)	# _41, End_Time
# dry.c:673:     User_Time = End_Time - Begin_Time;
	movl	End_Time@GOTOFF(%ebx), %edx	# End_Time, End_Time.21_42
	movl	Begin_Time@GOTOFF(%ebx), %eax	# Begin_Time, Begin_Time.22_43
	subl	%eax, %edx	# Begin_Time.22_43, _44
# dry.c:673:     User_Time = End_Time - Begin_Time;
	movl	%edx, User_Time@GOTOFF(%ebx)	# _44, User_Time
# dry.c:675:     if (User_Time < Too_Small_Time)
	movl	User_Time@GOTOFF(%ebx), %eax	# User_Time, User_Time.23_45
# dry.c:675:     if (User_Time < Too_Small_Time)
	cmpl	$199, %eax	#, User_Time.23_45
	jg	.L16	#,
# dry.c:677:       printf ("too few\n");
	subl	$12, %esp	#,
	leal	.LC8@GOTOFF(%ebx), %eax	#, tmp266
	pushl	%eax	# tmp266
	call	puts@PLT	#
	addl	$16, %esp	#,
# dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	movl	-24(%ebp), %edx	# Number_Of_Runs, tmp267
	movl	%edx, %eax	# tmp267, tmp268
	sall	$2, %eax	#, tmp268
	addl	%edx, %eax	# tmp267, tmp268
	addl	%eax, %eax	# tmp269
	movl	%eax, -24(%ebp)	# tmp268, Number_Of_Runs
	jmp	.L8	#
.L16:
# dry.c:679:     } else Done = true;
	movl	$1, Done@GOTOFF(%ebx)	#, Done
.L8:
# dry.c:611:   while (!Done) {
	movl	Done@GOTOFF(%ebx), %eax	# Done, Done.24_46
	testl	%eax, %eax	# Done.24_46
	je	.L17	#,
# dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp270
	movl	(%eax), %eax	# stderr, stderr.25_47
	pushl	%eax	# stderr.25_47
	pushl	$53	#
	pushl	$1	#
	leal	.LC9@GOTOFF(%ebx), %eax	#, tmp271
	pushl	%eax	# tmp271
	call	fwrite@PLT	#
	addl	$16, %esp	#,
# dry.c:683:   fprintf (stderr, "\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp272
	movl	(%eax), %eax	# stderr, stderr.26_48
	subl	$8, %esp	#,
	pushl	%eax	# stderr.26_48
	pushl	$10	#
	call	fputc@PLT	#
	addl	$16, %esp	#,
# dry.c:684:   fprintf (stderr, "Int_Glob:            %d\n", Int_Glob);
	movl	Int_Glob@GOTOFF(%ebx), %edx	# Int_Glob, Int_Glob.27_49
	movl	stderr@GOT(%ebx), %eax	#, tmp273
	movl	(%eax), %eax	# stderr, stderr.28_50
	subl	$4, %esp	#,
	pushl	%edx	# Int_Glob.27_49
	leal	.LC10@GOTOFF(%ebx), %edx	#, tmp274
	pushl	%edx	# tmp274
	pushl	%eax	# stderr.28_50
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:685:   fprintf (stderr, "        should be:   %d\n", 5);
	movl	stderr@GOT(%ebx), %eax	#, tmp275
	movl	(%eax), %eax	# stderr, stderr.29_51
	subl	$4, %esp	#,
	pushl	$5	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp276
	pushl	%edx	# tmp276
	pushl	%eax	# stderr.29_51
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	movl	Bool_Glob@GOTOFF(%ebx), %edx	# Bool_Glob, Bool_Glob.30_52
	movl	stderr@GOT(%ebx), %eax	#, tmp277
	movl	(%eax), %eax	# stderr, stderr.31_53
	subl	$4, %esp	#,
	pushl	%edx	# Bool_Glob.30_52
	leal	.LC12@GOTOFF(%ebx), %edx	#, tmp278
	pushl	%edx	# tmp278
	pushl	%eax	# stderr.31_53
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:687:   fprintf (stderr, "        should be:   %d\n", 1);
	movl	stderr@GOT(%ebx), %eax	#, tmp279
	movl	(%eax), %eax	# stderr, stderr.32_54
	subl	$4, %esp	#,
	pushl	$1	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp280
	pushl	%edx	# tmp280
	pushl	%eax	# stderr.32_54
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	movzbl	Ch_1_Glob@GOTOFF(%ebx), %eax	# Ch_1_Glob, Ch_1_Glob.33_55
	movsbl	%al, %edx	# Ch_1_Glob.33_55, _56
	movl	stderr@GOT(%ebx), %eax	#, tmp281
	movl	(%eax), %eax	# stderr, stderr.34_57
	subl	$4, %esp	#,
	pushl	%edx	# _56
	leal	.LC13@GOTOFF(%ebx), %edx	#, tmp282
	pushl	%edx	# tmp282
	pushl	%eax	# stderr.34_57
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:689:   fprintf (stderr, "        should be:   %c\n", 'A');
	movl	stderr@GOT(%ebx), %eax	#, tmp283
	movl	(%eax), %eax	# stderr, stderr.35_58
	subl	$4, %esp	#,
	pushl	$65	#
	leal	.LC14@GOTOFF(%ebx), %edx	#, tmp284
	pushl	%edx	# tmp284
	pushl	%eax	# stderr.35_58
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:690:   fprintf (stderr, "Ch_2_Glob:           %c\n", Ch_2_Glob);
	movzbl	Ch_2_Glob@GOTOFF(%ebx), %eax	# Ch_2_Glob, Ch_2_Glob.36_59
	movsbl	%al, %edx	# Ch_2_Glob.36_59, _60
	movl	stderr@GOT(%ebx), %eax	#, tmp285
	movl	(%eax), %eax	# stderr, stderr.37_61
	subl	$4, %esp	#,
	pushl	%edx	# _60
	leal	.LC15@GOTOFF(%ebx), %edx	#, tmp286
	pushl	%edx	# tmp286
	pushl	%eax	# stderr.37_61
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:691:   fprintf (stderr, "        should be:   %c\n", 'B');
	movl	stderr@GOT(%ebx), %eax	#, tmp287
	movl	(%eax), %eax	# stderr, stderr.38_62
	subl	$4, %esp	#,
	pushl	$66	#
	leal	.LC14@GOTOFF(%ebx), %edx	#, tmp288
	pushl	%edx	# tmp288
	pushl	%eax	# stderr.38_62
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	movl	32+Arr_1_Glob@GOTOFF(%ebx), %edx	# Arr_1_Glob[8], _63
	movl	stderr@GOT(%ebx), %eax	#, tmp289
	movl	(%eax), %eax	# stderr, stderr.39_64
	subl	$4, %esp	#,
	pushl	%edx	# _63
	leal	.LC16@GOTOFF(%ebx), %edx	#, tmp290
	pushl	%edx	# tmp290
	pushl	%eax	# stderr.39_64
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:693:   fprintf (stderr, "        should be:   %d\n", 7);
	movl	stderr@GOT(%ebx), %eax	#, tmp291
	movl	(%eax), %eax	# stderr, stderr.40_65
	subl	$4, %esp	#,
	pushl	$7	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp292
	pushl	%edx	# tmp292
	pushl	%eax	# stderr.40_65
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	movl	1628+Arr_2_Glob@GOTOFF(%ebx), %edx	# Arr_2_Glob[8][7], _66
	movl	stderr@GOT(%ebx), %eax	#, tmp293
	movl	(%eax), %eax	# stderr, stderr.41_67
	subl	$4, %esp	#,
	pushl	%edx	# _66
	leal	.LC17@GOTOFF(%ebx), %edx	#, tmp294
	pushl	%edx	# tmp294
	pushl	%eax	# stderr.41_67
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:695:   fprintf (stderr, "        should be:   Number_Of_Runs + 10\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp295
	movl	(%eax), %eax	# stderr, stderr.42_68
	pushl	%eax	# stderr.42_68
	pushl	$41	#
	pushl	$1	#
	leal	.LC18@GOTOFF(%ebx), %eax	#, tmp296
	pushl	%eax	# tmp296
	call	fwrite@PLT	#
	addl	$16, %esp	#,
# dry.c:696:   fprintf (stderr, "Ptr_Glob->\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp297
	movl	(%eax), %eax	# stderr, stderr.43_69
	pushl	%eax	# stderr.43_69
	pushl	$11	#
	pushl	$1	#
	leal	.LC19@GOTOFF(%ebx), %eax	#, tmp298
	pushl	%eax	# tmp298
	call	fwrite@PLT	#
	addl	$16, %esp	#,
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.44_70
	movl	(%eax), %eax	# Ptr_Glob.44_70->Ptr_Comp, _71
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	movl	%eax, %edx	# _71, _72
	movl	stderr@GOT(%ebx), %eax	#, tmp299
	movl	(%eax), %eax	# stderr, stderr.45_73
	subl	$4, %esp	#,
	pushl	%edx	# _72
	leal	.LC20@GOTOFF(%ebx), %edx	#, tmp300
	pushl	%edx	# tmp300
	pushl	%eax	# stderr.45_73
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:698:   fprintf (stderr, "        should be:   (implementation-dependent)\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp301
	movl	(%eax), %eax	# stderr, stderr.46_74
	pushl	%eax	# stderr.46_74
	pushl	$48	#
	pushl	$1	#
	leal	.LC21@GOTOFF(%ebx), %eax	#, tmp302
	pushl	%eax	# tmp302
	call	fwrite@PLT	#
	addl	$16, %esp	#,
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.47_75
	movl	4(%eax), %edx	# Ptr_Glob.47_75->Discr, _76
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	movl	stderr@GOT(%ebx), %eax	#, tmp303
	movl	(%eax), %eax	# stderr, stderr.48_77
	subl	$4, %esp	#,
	pushl	%edx	# _76
	leal	.LC22@GOTOFF(%ebx), %edx	#, tmp304
	pushl	%edx	# tmp304
	pushl	%eax	# stderr.48_77
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:700:   fprintf (stderr, "        should be:   %d\n", 0);
	movl	stderr@GOT(%ebx), %eax	#, tmp305
	movl	(%eax), %eax	# stderr, stderr.49_78
	subl	$4, %esp	#,
	pushl	$0	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp306
	pushl	%edx	# tmp306
	pushl	%eax	# stderr.49_78
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.50_79
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movl	8(%eax), %edx	# Ptr_Glob.50_79->variant.var_1.Enum_Comp, _80
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movl	stderr@GOT(%ebx), %eax	#, tmp307
	movl	(%eax), %eax	# stderr, stderr.51_81
	subl	$4, %esp	#,
	pushl	%edx	# _80
	leal	.LC23@GOTOFF(%ebx), %edx	#, tmp308
	pushl	%edx	# tmp308
	pushl	%eax	# stderr.51_81
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:702:   fprintf (stderr, "        should be:   %d\n", 2);
	movl	stderr@GOT(%ebx), %eax	#, tmp309
	movl	(%eax), %eax	# stderr, stderr.52_82
	subl	$4, %esp	#,
	pushl	$2	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp310
	pushl	%edx	# tmp310
	pushl	%eax	# stderr.52_82
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.53_83
# dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	movl	12(%eax), %edx	# Ptr_Glob.53_83->variant.var_1.Int_Comp, _84
	movl	stderr@GOT(%ebx), %eax	#, tmp311
	movl	(%eax), %eax	# stderr, stderr.54_85
	subl	$4, %esp	#,
	pushl	%edx	# _84
	leal	.LC24@GOTOFF(%ebx), %edx	#, tmp312
	pushl	%edx	# tmp312
	pushl	%eax	# stderr.54_85
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:704:   fprintf (stderr, "        should be:   %d\n", 17);
	movl	stderr@GOT(%ebx), %eax	#, tmp313
	movl	(%eax), %eax	# stderr, stderr.55_86
	subl	$4, %esp	#,
	pushl	$17	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp314
	pushl	%edx	# tmp314
	pushl	%eax	# stderr.55_86
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.56_87
# dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	leal	16(%eax), %edx	#, _88
# dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	movl	stderr@GOT(%ebx), %eax	#, tmp315
	movl	(%eax), %eax	# stderr, stderr.57_89
	subl	$4, %esp	#,
	pushl	%edx	# _88
	leal	.LC25@GOTOFF(%ebx), %edx	#, tmp316
	pushl	%edx	# tmp316
	pushl	%eax	# stderr.57_89
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:706:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp317
	movl	(%eax), %eax	# stderr, stderr.58_90
	pushl	%eax	# stderr.58_90
	pushl	$52	#
	pushl	$1	#
	leal	.LC26@GOTOFF(%ebx), %eax	#, tmp318
	pushl	%eax	# tmp318
	call	fwrite@PLT	#
	addl	$16, %esp	#,
# dry.c:707:   fprintf (stderr, "Next_Ptr_Glob->\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp319
	movl	(%eax), %eax	# stderr, stderr.59_91
	pushl	%eax	# stderr.59_91
	pushl	$16	#
	pushl	$1	#
	leal	.LC27@GOTOFF(%ebx), %eax	#, tmp320
	pushl	%eax	# tmp320
	call	fwrite@PLT	#
	addl	$16, %esp	#,
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob.60_92
	movl	(%eax), %eax	# Next_Ptr_Glob.60_92->Ptr_Comp, _93
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	movl	%eax, %edx	# _93, _94
	movl	stderr@GOT(%ebx), %eax	#, tmp321
	movl	(%eax), %eax	# stderr, stderr.61_95
	subl	$4, %esp	#,
	pushl	%edx	# _94
	leal	.LC20@GOTOFF(%ebx), %edx	#, tmp322
	pushl	%edx	# tmp322
	pushl	%eax	# stderr.61_95
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:709:   fprintf (stderr, "        should be:   (implementation-dependent), same as above\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp323
	movl	(%eax), %eax	# stderr, stderr.62_96
	pushl	%eax	# stderr.62_96
	pushl	$63	#
	pushl	$1	#
	leal	.LC28@GOTOFF(%ebx), %eax	#, tmp324
	pushl	%eax	# tmp324
	call	fwrite@PLT	#
	addl	$16, %esp	#,
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob.63_97
	movl	4(%eax), %edx	# Next_Ptr_Glob.63_97->Discr, _98
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	movl	stderr@GOT(%ebx), %eax	#, tmp325
	movl	(%eax), %eax	# stderr, stderr.64_99
	subl	$4, %esp	#,
	pushl	%edx	# _98
	leal	.LC22@GOTOFF(%ebx), %edx	#, tmp326
	pushl	%edx	# tmp326
	pushl	%eax	# stderr.64_99
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:711:   fprintf (stderr, "        should be:   %d\n", 0);
	movl	stderr@GOT(%ebx), %eax	#, tmp327
	movl	(%eax), %eax	# stderr, stderr.65_100
	subl	$4, %esp	#,
	pushl	$0	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp328
	pushl	%edx	# tmp328
	pushl	%eax	# stderr.65_100
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob.66_101
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movl	8(%eax), %edx	# Next_Ptr_Glob.66_101->variant.var_1.Enum_Comp, _102
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movl	stderr@GOT(%ebx), %eax	#, tmp329
	movl	(%eax), %eax	# stderr, stderr.67_103
	subl	$4, %esp	#,
	pushl	%edx	# _102
	leal	.LC23@GOTOFF(%ebx), %edx	#, tmp330
	pushl	%edx	# tmp330
	pushl	%eax	# stderr.67_103
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:713:   fprintf (stderr, "        should be:   %d\n", 1);
	movl	stderr@GOT(%ebx), %eax	#, tmp331
	movl	(%eax), %eax	# stderr, stderr.68_104
	subl	$4, %esp	#,
	pushl	$1	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp332
	pushl	%edx	# tmp332
	pushl	%eax	# stderr.68_104
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob.69_105
# dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	movl	12(%eax), %edx	# Next_Ptr_Glob.69_105->variant.var_1.Int_Comp, _106
	movl	stderr@GOT(%ebx), %eax	#, tmp333
	movl	(%eax), %eax	# stderr, stderr.70_107
	subl	$4, %esp	#,
	pushl	%edx	# _106
	leal	.LC24@GOTOFF(%ebx), %edx	#, tmp334
	pushl	%edx	# tmp334
	pushl	%eax	# stderr.70_107
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:715:   fprintf (stderr, "        should be:   %d\n", 18);
	movl	stderr@GOT(%ebx), %eax	#, tmp335
	movl	(%eax), %eax	# stderr, stderr.71_108
	subl	$4, %esp	#,
	pushl	$18	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp336
	pushl	%edx	# tmp336
	pushl	%eax	# stderr.71_108
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:717:                                 Next_Ptr_Glob->variant.var_1.Str_Comp);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob.72_109
# dry.c:717:                                 Next_Ptr_Glob->variant.var_1.Str_Comp);
	leal	16(%eax), %edx	#, _110
# dry.c:716:   fprintf (stderr, "  Str_Comp:          %s\n",
	movl	stderr@GOT(%ebx), %eax	#, tmp337
	movl	(%eax), %eax	# stderr, stderr.73_111
	subl	$4, %esp	#,
	pushl	%edx	# _110
	leal	.LC25@GOTOFF(%ebx), %edx	#, tmp338
	pushl	%edx	# tmp338
	pushl	%eax	# stderr.73_111
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:718:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp339
	movl	(%eax), %eax	# stderr, stderr.74_112
	pushl	%eax	# stderr.74_112
	pushl	$52	#
	pushl	$1	#
	leal	.LC26@GOTOFF(%ebx), %eax	#, tmp340
	pushl	%eax	# tmp340
	call	fwrite@PLT	#
	addl	$16, %esp	#,
# dry.c:719:   fprintf (stderr, "Int_1_Loc:           %d\n", Int_1_Loc);
	movl	-28(%ebp), %edx	# Int_1_Loc, Int_1_Loc.75_113
	movl	stderr@GOT(%ebx), %eax	#, tmp341
	movl	(%eax), %eax	# stderr, stderr.76_114
	subl	$4, %esp	#,
	pushl	%edx	# Int_1_Loc.75_113
	leal	.LC29@GOTOFF(%ebx), %edx	#, tmp342
	pushl	%edx	# tmp342
	pushl	%eax	# stderr.76_114
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:720:   fprintf (stderr, "        should be:   %d\n", 5);
	movl	stderr@GOT(%ebx), %eax	#, tmp343
	movl	(%eax), %eax	# stderr, stderr.77_115
	subl	$4, %esp	#,
	pushl	$5	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp344
	pushl	%edx	# tmp344
	pushl	%eax	# stderr.77_115
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:721:   fprintf (stderr, "Int_2_Loc:           %d\n", Int_2_Loc);
	movl	stderr@GOT(%ebx), %eax	#, tmp345
	movl	(%eax), %eax	# stderr, stderr.78_116
	subl	$4, %esp	#,
	pushl	-12(%ebp)	# Int_2_Loc
	leal	.LC30@GOTOFF(%ebx), %edx	#, tmp346
	pushl	%edx	# tmp346
	pushl	%eax	# stderr.78_116
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:722:   fprintf (stderr, "        should be:   %d\n", 13);
	movl	stderr@GOT(%ebx), %eax	#, tmp347
	movl	(%eax), %eax	# stderr, stderr.79_117
	subl	$4, %esp	#,
	pushl	$13	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp348
	pushl	%edx	# tmp348
	pushl	%eax	# stderr.79_117
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:723:   fprintf (stderr, "Int_3_Loc:           %d\n", Int_3_Loc);
	movl	-32(%ebp), %edx	# Int_3_Loc, Int_3_Loc.80_118
	movl	stderr@GOT(%ebx), %eax	#, tmp349
	movl	(%eax), %eax	# stderr, stderr.81_119
	subl	$4, %esp	#,
	pushl	%edx	# Int_3_Loc.80_118
	leal	.LC31@GOTOFF(%ebx), %edx	#, tmp350
	pushl	%edx	# tmp350
	pushl	%eax	# stderr.81_119
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:724:   fprintf (stderr, "        should be:   %d\n", 7);
	movl	stderr@GOT(%ebx), %eax	#, tmp351
	movl	(%eax), %eax	# stderr, stderr.82_120
	subl	$4, %esp	#,
	pushl	$7	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp352
	pushl	%edx	# tmp352
	pushl	%eax	# stderr.82_120
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:725:   fprintf (stderr, "Enum_Loc:            %d\n", Enum_Loc);
	movl	-36(%ebp), %edx	# Enum_Loc, Enum_Loc.83_121
	movl	stderr@GOT(%ebx), %eax	#, tmp353
	movl	(%eax), %eax	# stderr, stderr.84_122
	subl	$4, %esp	#,
	pushl	%edx	# Enum_Loc.83_121
	leal	.LC32@GOTOFF(%ebx), %edx	#, tmp354
	pushl	%edx	# tmp354
	pushl	%eax	# stderr.84_122
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:726:   fprintf (stderr, "        should be:   %d\n", 1);
	movl	stderr@GOT(%ebx), %eax	#, tmp355
	movl	(%eax), %eax	# stderr, stderr.85_123
	subl	$4, %esp	#,
	pushl	$1	#
	leal	.LC11@GOTOFF(%ebx), %edx	#, tmp356
	pushl	%edx	# tmp356
	pushl	%eax	# stderr.85_123
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:727:   fprintf (stderr, "Str_1_Loc:           %s\n", Str_1_Loc);
	movl	stderr@GOT(%ebx), %eax	#, tmp357
	movl	(%eax), %eax	# stderr, stderr.86_124
	subl	$4, %esp	#,
	leal	-67(%ebp), %edx	#, tmp358
	pushl	%edx	# tmp358
	leal	.LC33@GOTOFF(%ebx), %edx	#, tmp359
	pushl	%edx	# tmp359
	pushl	%eax	# stderr.86_124
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:728:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp360
	movl	(%eax), %eax	# stderr, stderr.87_125
	pushl	%eax	# stderr.87_125
	pushl	$52	#
	pushl	$1	#
	leal	.LC34@GOTOFF(%ebx), %eax	#, tmp361
	pushl	%eax	# tmp361
	call	fwrite@PLT	#
	addl	$16, %esp	#,
# dry.c:729:   fprintf (stderr, "Str_2_Loc:           %s\n", Str_2_Loc);
	movl	stderr@GOT(%ebx), %eax	#, tmp362
	movl	(%eax), %eax	# stderr, stderr.88_126
	subl	$4, %esp	#,
	leal	-98(%ebp), %edx	#, tmp363
	pushl	%edx	# tmp363
	leal	.LC35@GOTOFF(%ebx), %edx	#, tmp364
	pushl	%edx	# tmp364
	pushl	%eax	# stderr.88_126
	call	fprintf@PLT	#
	addl	$16, %esp	#,
# dry.c:730:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp365
	movl	(%eax), %eax	# stderr, stderr.89_127
	pushl	%eax	# stderr.89_127
	pushl	$52	#
	pushl	$1	#
	leal	.LC36@GOTOFF(%ebx), %eax	#, tmp366
	pushl	%eax	# tmp366
	call	fwrite@PLT	#
	addl	$16, %esp	#,
# dry.c:731:   fprintf (stderr, "\n");
	movl	stderr@GOT(%ebx), %eax	#, tmp367
	movl	(%eax), %eax	# stderr, stderr.90_128
	subl	$8, %esp	#,
	pushl	%eax	# stderr.90_128
	pushl	$10	#
	call	fputc@PLT	#
	addl	$16, %esp	#,
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	movl	User_Time@GOTOFF(%ebx), %eax	# User_Time, User_Time.91_129
	movl	%eax, -108(%ebp)	# User_Time.91_129, %sfp
	fildl	-108(%ebp)	# %sfp
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	fldl	.LC37@GOTOFF(%ebx)	#
	fmulp	%st, %st(1)	#,
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fildl	-24(%ebp)	# Number_Of_Runs
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	flds	.LC38@GOTOFF(%ebx)	#
	fmulp	%st, %st(1)	#,
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fdivrp	%st, %st(1)	#,
	fstps	-108(%ebp)	# %sfp
	flds	-108(%ebp)	# %sfp
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	fstps	Microseconds@GOTOFF(%ebx)	# Microseconds
# dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	fildl	-24(%ebp)	# Number_Of_Runs
# dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	flds	.LC38@GOTOFF(%ebx)	#
	fmulp	%st, %st(1)	#,
# dry.c:737:                         / (float) User_Time;
	movl	User_Time@GOTOFF(%ebx), %eax	# User_Time, User_Time.92_140
	movl	%eax, -108(%ebp)	# User_Time.92_140, %sfp
	fildl	-108(%ebp)	# %sfp
# dry.c:737:                         / (float) User_Time;
	fdivrp	%st, %st(1)	#,
# dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	fstps	Dhrystones_Per_Second@GOTOFF(%ebx)	# Dhrystones_Per_Second
# dry.c:739:     printf ("\nMicroseconds for one run through Dhrystone: ");
	subl	$12, %esp	#,
	leal	.LC39@GOTOFF(%ebx), %eax	#, tmp371
	pushl	%eax	# tmp371
	call	printf@PLT	#
	addl	$16, %esp	#,
# dry.c:740:     printf ("%10.2f \n", Microseconds);
	flds	Microseconds@GOTOFF(%ebx)	# Microseconds
	subl	$4, %esp	#,
	leal	-8(%esp), %esp	#,
	fstpl	(%esp)	#
	leal	.LC40@GOTOFF(%ebx), %eax	#, tmp372
	pushl	%eax	# tmp372
	call	printf@PLT	#
	addl	$16, %esp	#,
# dry.c:741:     printf ("Dhrystones per Second:                      ");
	subl	$12, %esp	#,
	leal	.LC41@GOTOFF(%ebx), %eax	#, tmp373
	pushl	%eax	# tmp373
	call	printf@PLT	#
	addl	$16, %esp	#,
# dry.c:742:     printf ("%10.0f \n", Dhrystones_Per_Second);
	flds	Dhrystones_Per_Second@GOTOFF(%ebx)	# Dhrystones_Per_Second
	subl	$4, %esp	#,
	leal	-8(%esp), %esp	#,
	fstpl	(%esp)	#
	leal	.LC42@GOTOFF(%ebx), %eax	#, tmp374
	pushl	%eax	# tmp374
	call	printf@PLT	#
	addl	$16, %esp	#,
# dry.c:743:     printf ("\n");
	subl	$12, %esp	#,
	pushl	$10	#
	call	putchar@PLT	#
	addl	$16, %esp	#,
	movl	$0, %eax	#, _248
# dry.c:745: }
	leal	-8(%ebp), %esp	#,
	popl	%ecx	#
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx	#
	.cfi_restore 3
	popl	%ebp	#
	.cfi_restore 5
	leal	-4(%ecx), %esp	#,
	.cfi_def_cfa 4, 4
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.globl	Proc_1
	.type	Proc_1, @function
Proc_1:
.LFB7:
	.cfi_startproc
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$20, %esp	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	# tmp82,
# dry.c:753:   REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
	movl	8(%ebp), %eax	# Ptr_Val_Par, tmp96
	movl	(%eax), %eax	# Ptr_Val_Par_16(D)->Ptr_Comp, tmp97
	movl	%eax, -12(%ebp)	# tmp97, Next_Record
# dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	movl	Ptr_Glob@GOTOFF(%ebx), %edx	# Ptr_Glob, Ptr_Glob.95_1
	movl	8(%ebp), %eax	# Ptr_Val_Par, tmp98
	movl	(%eax), %eax	# Ptr_Val_Par_16(D)->Ptr_Comp, _2
	movl	(%edx), %ecx	# *Ptr_Glob.95_1, tmp99
	movl	%ecx, (%eax)	# tmp99, *_2
	movl	4(%edx), %ecx	# *Ptr_Glob.95_1, tmp100
	movl	%ecx, 4(%eax)	# tmp100, *_2
	movl	8(%edx), %ecx	# *Ptr_Glob.95_1, tmp101
	movl	%ecx, 8(%eax)	# tmp101, *_2
	movl	12(%edx), %ecx	# *Ptr_Glob.95_1, tmp102
	movl	%ecx, 12(%eax)	# tmp102, *_2
	movl	16(%edx), %ecx	# *Ptr_Glob.95_1, tmp103
	movl	%ecx, 16(%eax)	# tmp103, *_2
	movl	20(%edx), %ecx	# *Ptr_Glob.95_1, tmp104
	movl	%ecx, 20(%eax)	# tmp104, *_2
	movl	24(%edx), %ecx	# *Ptr_Glob.95_1, tmp105
	movl	%ecx, 24(%eax)	# tmp105, *_2
	movl	28(%edx), %ecx	# *Ptr_Glob.95_1, tmp106
	movl	%ecx, 28(%eax)	# tmp106, *_2
	movl	32(%edx), %ecx	# *Ptr_Glob.95_1, tmp107
	movl	%ecx, 32(%eax)	# tmp107, *_2
	movl	36(%edx), %ecx	# *Ptr_Glob.95_1, tmp108
	movl	%ecx, 36(%eax)	# tmp108, *_2
	movl	40(%edx), %ecx	# *Ptr_Glob.95_1, tmp109
	movl	%ecx, 40(%eax)	# tmp109, *_2
	movl	44(%edx), %edx	# *Ptr_Glob.95_1, tmp110
	movl	%edx, 44(%eax)	# tmp110, *_2
# dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	movl	8(%ebp), %eax	# Ptr_Val_Par, tmp111
	movl	$5, 12(%eax)	#, Ptr_Val_Par_16(D)->variant.var_1.Int_Comp
# dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	movl	8(%ebp), %eax	# Ptr_Val_Par, tmp112
	movl	12(%eax), %edx	# Ptr_Val_Par_16(D)->variant.var_1.Int_Comp, _3
# dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	movl	-12(%ebp), %eax	# Next_Record, tmp113
	movl	%edx, 12(%eax)	# _3, Next_Record_17->variant.var_1.Int_Comp
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movl	8(%ebp), %eax	# Ptr_Val_Par, tmp114
	movl	(%eax), %edx	# Ptr_Val_Par_16(D)->Ptr_Comp, _4
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movl	-12(%ebp), %eax	# Next_Record, tmp115
	movl	%edx, (%eax)	# _4, Next_Record_17->Ptr_Comp
# dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	movl	-12(%ebp), %eax	# Next_Record, _5
# dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	subl	$12, %esp	#,
	pushl	%eax	# _5
	call	Proc_3	#
	addl	$16, %esp	#,
# dry.c:766:   if (Next_Record->Discr == Ident_1)
	movl	-12(%ebp), %eax	# Next_Record, tmp116
	movl	4(%eax), %eax	# Next_Record_17->Discr, _6
# dry.c:766:   if (Next_Record->Discr == Ident_1)
	testl	%eax, %eax	# _6
	jne	.L20	#,
# dry.c:769:     Next_Record->variant.var_1.Int_Comp = 6;
	movl	-12(%ebp), %eax	# Next_Record, tmp117
	movl	$6, 12(%eax)	#, Next_Record_17->variant.var_1.Int_Comp
# dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	movl	-12(%ebp), %eax	# Next_Record, tmp118
	leal	8(%eax), %edx	#, _7
	movl	8(%ebp), %eax	# Ptr_Val_Par, tmp119
	movl	8(%eax), %eax	# Ptr_Val_Par_16(D)->variant.var_1.Enum_Comp, _8
	subl	$8, %esp	#,
	pushl	%edx	# _7
	pushl	%eax	# _8
	call	Proc_6@PLT	#
	addl	$16, %esp	#,
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.96_9
	movl	(%eax), %edx	# Ptr_Glob.96_9->Ptr_Comp, _10
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movl	-12(%ebp), %eax	# Next_Record, tmp120
	movl	%edx, (%eax)	# _10, Next_Record_17->Ptr_Comp
# dry.c:774:            &Next_Record->variant.var_1.Int_Comp);
	movl	-12(%ebp), %eax	# Next_Record, tmp121
	leal	12(%eax), %edx	#, _11
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	movl	-12(%ebp), %eax	# Next_Record, tmp122
	movl	12(%eax), %eax	# Next_Record_17->variant.var_1.Int_Comp, _12
	subl	$4, %esp	#,
	pushl	%edx	# _11
	pushl	$10	#
	pushl	%eax	# _12
	call	Proc_7@PLT	#
	addl	$16, %esp	#,
# dry.c:778: } /* Proc_1 */
	jmp	.L22	#
.L20:
# dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	movl	8(%ebp), %eax	# Ptr_Val_Par, tmp123
	movl	(%eax), %edx	# Ptr_Val_Par_16(D)->Ptr_Comp, _13
	movl	8(%ebp), %eax	# Ptr_Val_Par, tmp124
	movl	(%edx), %ecx	# *_13, tmp125
	movl	%ecx, (%eax)	# tmp125, *Ptr_Val_Par_16(D)
	movl	4(%edx), %ecx	# *_13, tmp126
	movl	%ecx, 4(%eax)	# tmp126, *Ptr_Val_Par_16(D)
	movl	8(%edx), %ecx	# *_13, tmp127
	movl	%ecx, 8(%eax)	# tmp127, *Ptr_Val_Par_16(D)
	movl	12(%edx), %ecx	# *_13, tmp128
	movl	%ecx, 12(%eax)	# tmp128, *Ptr_Val_Par_16(D)
	movl	16(%edx), %ecx	# *_13, tmp129
	movl	%ecx, 16(%eax)	# tmp129, *Ptr_Val_Par_16(D)
	movl	20(%edx), %ecx	# *_13, tmp130
	movl	%ecx, 20(%eax)	# tmp130, *Ptr_Val_Par_16(D)
	movl	24(%edx), %ecx	# *_13, tmp131
	movl	%ecx, 24(%eax)	# tmp131, *Ptr_Val_Par_16(D)
	movl	28(%edx), %ecx	# *_13, tmp132
	movl	%ecx, 28(%eax)	# tmp132, *Ptr_Val_Par_16(D)
	movl	32(%edx), %ecx	# *_13, tmp133
	movl	%ecx, 32(%eax)	# tmp133, *Ptr_Val_Par_16(D)
	movl	36(%edx), %ecx	# *_13, tmp134
	movl	%ecx, 36(%eax)	# tmp134, *Ptr_Val_Par_16(D)
	movl	40(%edx), %ecx	# *_13, tmp135
	movl	%ecx, 40(%eax)	# tmp135, *Ptr_Val_Par_16(D)
	movl	44(%edx), %edx	# *_13, tmp136
	movl	%edx, 44(%eax)	# tmp136, *Ptr_Val_Par_16(D)
.L22:
# dry.c:778: } /* Proc_1 */
	nop	
	movl	-4(%ebp), %ebx	#,
	leave	
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	
	.cfi_endproc
.LFE7:
	.size	Proc_1, .-Proc_1
	.globl	Proc_2
	.type	Proc_2, @function
Proc_2:
.LFB8:
	.cfi_startproc
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$16, %esp	#,
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
# dry.c:789:   Int_Loc = *Int_Par_Ref + 10;
	movl	8(%ebp), %edx	# Int_Par_Ref, tmp87
	movl	(%edx), %edx	# *Int_Par_Ref_12(D), _1
# dry.c:789:   Int_Loc = *Int_Par_Ref + 10;
	addl	$10, %edx	#, tmp88
	movl	%edx, -4(%ebp)	# tmp88, Int_Loc
.L25:
# dry.c:791:     if (Ch_1_Glob == 'A')
	movzbl	Ch_1_Glob@GOTOFF(%eax), %edx	# Ch_1_Glob, Ch_1_Glob.97_2
# dry.c:791:     if (Ch_1_Glob == 'A')
	cmpb	$65, %dl	#, Ch_1_Glob.97_2
	jne	.L24	#,
# dry.c:794:       Int_Loc -= 1;
	subl	$1, -4(%ebp)	#, Int_Loc
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	movl	Int_Glob@GOTOFF(%eax), %edx	# Int_Glob, Int_Glob.98_3
	movl	-4(%ebp), %ecx	# Int_Loc, tmp89
	subl	%edx, %ecx	# Int_Glob.98_3, _4
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	movl	8(%ebp), %edx	# Int_Par_Ref, tmp90
	movl	%ecx, (%edx)	# _4, *Int_Par_Ref_12(D)
# dry.c:796:       Enum_Loc = Ident_1;
	movl	$0, -8(%ebp)	#, Enum_Loc
.L24:
# dry.c:798:   while (Enum_Loc != Ident_1); /* true */
	cmpl	$0, -8(%ebp)	#, Enum_Loc
	jne	.L25	#,
# dry.c:799: } /* Proc_2 */
	nop	
	nop	
	leave	
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	
	.cfi_endproc
.LFE8:
	.size	Proc_2, .-Proc_2
	.globl	Proc_3
	.type	Proc_3, @function
Proc_3:
.LFB9:
	.cfi_startproc
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	pushl	%ebx	#
	subl	$4, %esp	#,
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
# dry.c:807:   if (Ptr_Glob != Null)
	movl	Ptr_Glob@GOTOFF(%eax), %edx	# Ptr_Glob, Ptr_Glob.99_1
# dry.c:807:   if (Ptr_Glob != Null)
	testl	%edx, %edx	# Ptr_Glob.99_1
	je	.L27	#,
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movl	Ptr_Glob@GOTOFF(%eax), %edx	# Ptr_Glob, Ptr_Glob.100_2
	movl	(%edx), %ecx	# Ptr_Glob.100_2->Ptr_Comp, _3
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movl	8(%ebp), %edx	# Ptr_Ref_Par, tmp89
	movl	%ecx, (%edx)	# _3, *Ptr_Ref_Par_9(D)
.L27:
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	Ptr_Glob@GOTOFF(%eax), %edx	# Ptr_Glob, Ptr_Glob.101_4
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	leal	12(%edx), %ecx	#, _5
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	Int_Glob@GOTOFF(%eax), %edx	# Int_Glob, Int_Glob.102_6
	subl	$4, %esp	#,
	pushl	%ecx	# _5
	pushl	%edx	# Int_Glob.102_6
	pushl	$10	#
	movl	%eax, %ebx	# tmp82,
	call	Proc_7@PLT	#
	addl	$16, %esp	#,
# dry.c:811: } /* Proc_3 */
	nop	
	movl	-4(%ebp), %ebx	#,
	leave	
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	
	.cfi_endproc
.LFE9:
	.size	Proc_3, .-Proc_3
	.globl	Proc_4
	.type	Proc_4, @function
Proc_4:
.LFB10:
	.cfi_startproc
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	subl	$16, %esp	#,
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
# dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	movzbl	Ch_1_Glob@GOTOFF(%eax), %edx	# Ch_1_Glob, Ch_1_Glob.103_1
	cmpb	$65, %dl	#, Ch_1_Glob.103_1
	sete	%dl	#, _2
# dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	movzbl	%dl, %edx	# _2, tmp87
	movl	%edx, -4(%ebp)	# tmp87, Bool_Loc
# dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	movl	Bool_Glob@GOTOFF(%eax), %edx	# Bool_Glob, Bool_Glob.104_3
	orl	-4(%ebp), %edx	# Bool_Loc, _4
# dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	movl	%edx, Bool_Glob@GOTOFF(%eax)	# _4, Bool_Glob
# dry.c:822:   Ch_2_Glob = 'B';
	movb	$66, Ch_2_Glob@GOTOFF(%eax)	#, Ch_2_Glob
# dry.c:823: } /* Proc_4 */
	nop	
	leave	
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret	
	.cfi_endproc
.LFE10:
	.size	Proc_4, .-Proc_4
	.globl	Proc_5
	.type	Proc_5, @function
Proc_5:
.LFB11:
	.cfi_startproc
	pushl	%ebp	#
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp	#,
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
# dry.c:830:   Ch_1_Glob = 'A';
	movb	$65, Ch_1_Glob@GOTOFF(%eax)	#, Ch_1_Glob
# dry.c:831:   Bool_Glob = false;
	movl	$0, Bool_Glob@GOTOFF(%eax)	#, Bool_Glob
# dry.c:832: } /* Proc_5 */
	nop	
	popl	%ebp	#
	.cfi_restore 5
	.cfi_def_cfa 4, 4
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
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB12:
	.cfi_startproc
	movl	(%esp), %eax	#,
	ret
	.cfi_endproc
.LFE12:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB13:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE13:
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
