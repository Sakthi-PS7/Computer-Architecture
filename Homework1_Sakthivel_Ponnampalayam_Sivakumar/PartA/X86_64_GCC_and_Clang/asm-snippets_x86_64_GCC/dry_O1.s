	.file	"dry.c"
# GNU C23 (GCC) version 15.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.2.1, MPFR version 4.2.2, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O1
	.text
	.globl	Proc_2
	.type	Proc_2, @function
Proc_2:
.LFB24:
	.cfi_startproc
# dry.c:791:     if (Ch_1_Glob == 'A')
	cmpb	$65, Ch_1_Glob(%rip)	#, Ch_1_Glob
	je	.L3	#,
.L1:
# dry.c:799: } /* Proc_2 */
	ret	
.L3:
# dry.c:794:       Int_Loc -= 1;
	movl	(%rdi), %eax	# *Int_Par_Ref_7(D), tmp110
	addl	$9, %eax	#, Int_Loc_8
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	subl	Int_Glob(%rip), %eax	# Int_Glob, _4
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	movl	%eax, (%rdi)	# _4, *Int_Par_Ref_7(D)
# dry.c:799: } /* Proc_2 */
	ret	
	.cfi_endproc
.LFE24:
	.size	Proc_2, .-Proc_2
	.globl	Proc_3
	.type	Proc_3, @function
Proc_3:
.LFB25:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# dry.c:807:   if (Ptr_Glob != Null)
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob.99_1
# dry.c:807:   if (Ptr_Glob != Null)
	testq	%rax, %rax	# Ptr_Glob.99_1
	je	.L5	#,
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movq	(%rax), %rax	# Ptr_Glob.99_1->Ptr_Comp, _2
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movq	%rax, (%rdi)	# _2, *Ptr_Ref_Par_8(D)
.L5:
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, tmp109
	leaq	16(%rax), %rdx	#, _4
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	Int_Glob(%rip), %esi	# Int_Glob,
	movl	$10, %edi	#,
	call	Proc_7	#
# dry.c:811: } /* Proc_3 */
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE25:
	.size	Proc_3, .-Proc_3
	.globl	Proc_1
	.type	Proc_1, @function
Proc_1:
.LFB23:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbp	# Ptr_Val_Par, Ptr_Val_Par
# dry.c:753:   REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
	movq	(%rdi), %rbx	# Ptr_Val_Par_14(D)->Ptr_Comp, Next_Record
# dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
	movdqu	(%rax), %xmm0	# *Ptr_Glob.95_1, tmp127
	movups	%xmm0, (%rbx)	# tmp127, *Next_Record_15
	movdqu	16(%rax), %xmm1	# *Ptr_Glob.95_1, tmp128
	movups	%xmm1, 16(%rbx)	# tmp128, *Next_Record_15
	movdqu	32(%rax), %xmm2	# *Ptr_Glob.95_1, tmp129
	movups	%xmm2, 32(%rbx)	# tmp129, *Next_Record_15
	movq	48(%rax), %rax	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movq	%rax, 48(%rbx)	# *Ptr_Glob.95_1, *Next_Record_15
# dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	movl	$5, 16(%rdi)	#, Ptr_Val_Par_14(D)->variant.var_1.Int_Comp
# dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	movl	$5, 16(%rbx)	#, Next_Record_15->variant.var_1.Int_Comp
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movq	(%rdi), %rax	# Ptr_Val_Par_14(D)->Ptr_Comp, _2
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movq	%rax, (%rbx)	# _2, Next_Record_15->Ptr_Comp
# dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	movq	%rbx, %rdi	# Next_Record,
	call	Proc_3	#
# dry.c:766:   if (Next_Record->Discr == Ident_1)
	cmpl	$0, 8(%rbx)	#, Next_Record_15->Discr
	je	.L11	#,
# dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	movq	0(%rbp), %rax	# Ptr_Val_Par_14(D)->Ptr_Comp, _11
	movdqu	(%rax), %xmm3	# *_11, tmp130
	movups	%xmm3, 0(%rbp)	# tmp130, *Ptr_Val_Par_14(D)
	movdqu	16(%rax), %xmm4	# *_11, tmp131
	movups	%xmm4, 16(%rbp)	# tmp131, *Ptr_Val_Par_14(D)
	movdqu	32(%rax), %xmm5	# *_11, tmp132
	movups	%xmm5, 32(%rbp)	# tmp132, *Ptr_Val_Par_14(D)
	movq	48(%rax), %rax	# *_11, *_11
	movq	%rax, 48(%rbp)	# *_11, *Ptr_Val_Par_14(D)
.L7:
# dry.c:778: } /* Proc_1 */
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L11:
	.cfi_restore_state
# dry.c:769:     Next_Record->variant.var_1.Int_Comp = 6;
	movl	$6, 16(%rbx)	#, Next_Record_15->variant.var_1.Int_Comp
# dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	leaq	12(%rbx), %rsi	#, _5
	movl	12(%rbp), %edi	# Ptr_Val_Par_14(D)->variant.var_1.Enum_Comp, Ptr_Val_Par_14(D)->variant.var_1.Enum_Comp
	call	Proc_6	#
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
	movq	(%rax), %rax	# Ptr_Glob.96_7->Ptr_Comp, _8
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movq	%rax, (%rbx)	# _8, Next_Record_15->Ptr_Comp
# dry.c:774:            &Next_Record->variant.var_1.Int_Comp);
	leaq	16(%rbx), %rdx	#, _9
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	movl	16(%rbx), %edi	# Next_Record_15->variant.var_1.Int_Comp, Next_Record_15->variant.var_1.Int_Comp
	movl	$10, %esi	#,
	call	Proc_7	#
	jmp	.L7	#
	.cfi_endproc
.LFE23:
	.size	Proc_1, .-Proc_1
	.globl	Proc_4
	.type	Proc_4, @function
Proc_4:
.LFB26:
	.cfi_startproc
# dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	cmpb	$65, Ch_1_Glob(%rip)	#, Ch_1_Glob
	sete	%al	#, _2
	movzbl	%al, %eax	# _2, _2
# dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	orl	%eax, Bool_Glob(%rip)	# _2, Bool_Glob
# dry.c:822:   Ch_2_Glob = 'B';
	movb	$66, Ch_2_Glob(%rip)	#, Ch_2_Glob
# dry.c:823: } /* Proc_4 */
	ret	
	.cfi_endproc
.LFE26:
	.size	Proc_4, .-Proc_4
	.globl	Proc_5
	.type	Proc_5, @function
Proc_5:
.LFB27:
	.cfi_startproc
# dry.c:830:   Ch_1_Glob = 'A';
	movb	$65, Ch_1_Glob(%rip)	#, Ch_1_Glob
# dry.c:831:   Bool_Glob = false;
	movl	$0, Bool_Glob(%rip)	#, Bool_Glob
# dry.c:832: } /* Proc_5 */
	ret	
	.cfi_endproc
.LFE27:
	.size	Proc_5, .-Proc_5
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Usage: %s [number of loops]\n"
.LC1:
	.string	"C, Version 2.2a"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Dhrystone Benchmark, Version %s\n"
	.align 8
.LC3:
	.string	"Program compiled with 'register' attribute"
	.align 8
.LC4:
	.string	"Program compiled without 'register' attribute"
	.section	.rodata.str1.1
.LC5:
	.string	"times()"
.LC6:
	.string	"Using %s, HZ=%d\n"
.LC7:
	.string	"Trying %d runs: "
.LC8:
	.string	"too few"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"Final values of the variables used in the benchmark:\n"
	.section	.rodata.str1.1
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
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"        should be:   Number_Of_Runs + 10\n"
	.section	.rodata.str1.1
.LC19:
	.string	"Ptr_Glob->\n"
.LC20:
	.string	"  Ptr_Comp:          %ld\n"
	.section	.rodata.str1.8
	.align 8
.LC21:
	.string	"        should be:   (implementation-dependent)\n"
	.section	.rodata.str1.1
.LC22:
	.string	"  Discr:             %d\n"
.LC23:
	.string	"  Enum_Comp:         %d\n"
.LC24:
	.string	"  Int_Comp:          %d\n"
.LC25:
	.string	"  Str_Comp:          %s\n"
	.section	.rodata.str1.8
	.align 8
.LC26:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
	.section	.rodata.str1.1
.LC27:
	.string	"Next_Ptr_Glob->\n"
	.section	.rodata.str1.8
	.align 8
.LC28:
	.string	"        should be:   (implementation-dependent), same as above\n"
	.section	.rodata.str1.1
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
	.section	.rodata.str1.8
	.align 8
.LC34:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
	.section	.rodata.str1.1
.LC35:
	.string	"Str_2_Loc:           %s\n"
	.section	.rodata.str1.8
	.align 8
.LC36:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.align 8
.LC39:
	.string	"\nMicroseconds for one run through Dhrystone: "
	.section	.rodata.str1.1
.LC40:
	.string	"%10.2f \n"
	.section	.rodata.str1.8
	.align 8
.LC41:
	.string	"Dhrystones per Second:                      "
	.section	.rodata.str1.1
.LC42:
	.string	"%10.0f \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp	#,
	.cfi_def_cfa_offset 160
# dry.c:561:   if (argc > 2)
	cmpl	$2, %edi	#, argc
	jg	.L34	#,
# dry.c:571:      Number_Of_Runs = NUMBER_OF_RUNS;
	movl	$50000, 12(%rsp)	#, %sfp
# dry.c:566:   if (argc == 2)
	je	.L35	#,
.L16:
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	$56, %edi	#,
	call	malloc	#
	movq	%rax, %rbp	# tmp371, tmp232
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movq	%rax, Next_Ptr_Glob(%rip)	# tmp232, Next_Ptr_Glob
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	$56, %edi	#,
	call	malloc	#
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movq	%rax, Ptr_Glob(%rip)	# tmp233, Ptr_Glob
# dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	movq	%rbp, (%rax)	# tmp232, MEM[(struct record *)_5].Ptr_Comp
# dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	movl	$0, 8(%rax)	#, MEM[(struct record *)_5].Discr
# dry.c:585:   Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
	movl	$2, 12(%rax)	#, MEM[(struct record *)_5].variant.var_1.Enum_Comp
# dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	movl	$40, 16(%rax)	#, MEM[(struct record *)_5].variant.var_1.Int_Comp
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movabsq	$5642821575076104260, %rdx	#, tmp378
	movabsq	$4706902966564560965, %rcx	#,
	movq	%rdx, 20(%rax)	# tmp378, MEM <char[1:31]> [(void *)_5 + 20B]
	movq	%rcx, 28(%rax)	#, MEM <char[1:31]> [(void *)_5 + 20B]
	movabsq	$4993734780264402241, %rsi	#, tmp379
	movabsq	$20070800167293728, %rdi	#,
	movq	%rsi, 35(%rax)	# tmp379, MEM <char[1:31]> [(void *)_5 + 20B]
	movq	%rdi, 43(%rax)	#, MEM <char[1:31]> [(void *)_5 + 20B]
# dry.c:589:   strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
	movq	%rdx, 48(%rsp)	# tmp380, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movq	%rcx, 56(%rsp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movabsq	$6076243414199586113, %rax	#, tmp381
	movabsq	$20070800167293728, %rdx	#,
	movq	%rax, 63(%rsp)	# tmp381, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movq	%rdx, 71(%rsp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
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
	cmpl	$0, Reg(%rip)	#, Reg
	je	.L17	#,
# dry.c:601:     printf ("Program compiled with 'register' attribute\n");
	movl	$.LC3, %edi	#,
	call	puts	#
.L18:
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
# dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	movabsq	$5642821575076104260, %r12	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movabsq	$4706902966564560965, %r13	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	jmp	.L25	#
.L34:
# dry.c:563:      printf ("Usage: %s [number of loops]\n", argv[0]);
	movq	(%rsi), %rsi	# *argv_144(D),
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# dry.c:564:      exit (1);
	movl	$1, %edi	#,
	call	exit	#
.L35:
# /usr/include/stdlib.h:363:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_144(D) + 8B], MEM[(char * *)argv_144(D) + 8B]
	movl	$10, %edx	#,
	movl	$0, %esi	#,
	call	strtol	#
# dry.c:575:      Number_Of_Runs = NUMBER_OF_RUNS;
	testl	%eax, %eax	# _260
	movl	$50000, %edx	#, tmp357
	cmovg	%eax, %edx	# _260,, tmp357
	movl	%edx, 12(%rsp)	# tmp357, %sfp
	jmp	.L16	#
.L17:
# dry.c:605:     printf ("Program compiled without 'register' attribute\n");
	movl	$.LC4, %edi	#,
	call	puts	#
	jmp	.L18	#
.L36:
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	movq	%r15, %rsi	# tmp358,
	movl	$0, %edi	#,
	call	Proc_6	#
# dry.c:652: 	  strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
	movq	%r12, 16(%rsp)	# MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc], MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movq	%r13, 24(%rsp)	# MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc], MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movabsq	$4923040443205963073, %rax	#, tmp384
	movabsq	$20070800167293728, %rdx	#,
	movq	%rax, 31(%rsp)	# tmp384, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movq	%rdx, 39(%rsp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:654: 	  Int_Glob = Run_Index;
	movl	%ebp, Int_Glob(%rip)	# Run_Index, Int_Glob
# dry.c:653: 	  Int_2_Loc = Run_Index;
	movl	%ebp, %r14d	# Run_Index, Int_2_Loc
.L21:
	leal	1(%rbx), %eax	#, _132
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movl	%eax, %ebx	# _132, Ch_Index
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	cmpb	%al, Ch_2_Glob(%rip)	# _132, Ch_2_Glob
	jl	.L20	#,
.L22:
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	movsbl	%bl, %edi	# Ch_Index, _19
	movl	$67, %esi	#,
	call	Func_1	#
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	cmpl	84(%rsp), %eax	# Enum_Loc, _20
	jne	.L21	#,
	jmp	.L36	#
.L29:
# dry.c:628:       Int_2_Loc = 3;
	movl	$3, %r14d	#, Int_2_Loc
.L20:
# dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	leal	(%r14,%r14,2), %ebx	#, Int_2_Loc_244
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	88(%rsp), %r14d	# Int_3_Loc, Int_3_Loc.18_25
	movl	%ebx, %eax	# Int_2_Loc_244, _26
	cltd
	idivl	%r14d	# Int_3_Loc.18_25
	movl	%eax, %r15d	# _26, _26
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	%eax, 92(%rsp)	# _26, Int_1_Loc
# dry.c:662:       Proc_2 (&Int_1_Loc);
	leaq	92(%rsp), %rdi	#, tmp252
	call	Proc_2	#
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	addl	$1, %ebp	#, Run_Index
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	movl	12(%rsp), %eax	# %sfp, Number_Of_Runs
	cmpl	%eax, %ebp	# Number_Of_Runs, Run_Index
	jg	.L37	#,
.L23:
# dry.c:624:       Proc_5();
	call	Proc_5	#
# dry.c:625:       Proc_4();
	call	Proc_4	#
# dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	movq	%r12, 16(%rsp)	# MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc], MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movq	%r13, 24(%rsp)	# MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc], MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movabsq	$4921914539004153153, %rax	#, tmp383
	movabsq	$20070800167293728, %rdx	#,
	movq	%rax, 31(%rsp)	# tmp383, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movq	%rdx, 39(%rsp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:630:       Enum_Loc = Ident_2;
	movl	$1, 84(%rsp)	#, Enum_Loc
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	leaq	48(%rsp), %rdi	#, tmp239
	leaq	16(%rsp), %rsi	#,
	call	Func_2	#
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	testl	%eax, %eax	# _10
	sete	%al	#, _11
	movzbl	%al, %eax	# _11, _11
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	movl	%eax, Bool_Glob(%rip)	# _11, Bool_Glob
# dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	movl	$7, 88(%rsp)	#, Int_3_Loc
# dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	leaq	88(%rsp), %rdx	#, tmp242
	movl	$3, %esi	#,
	movl	$2, %edi	#,
	call	Proc_7	#
# dry.c:642:       Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	movl	88(%rsp), %ecx	# Int_3_Loc,
	movl	$3, %edx	#,
	movl	$Arr_2_Glob, %esi	#,
	movl	$Arr_1_Glob, %edi	#,
	call	Proc_8	#
# dry.c:644:       Proc_1 (Ptr_Glob);
	movq	Ptr_Glob(%rip), %rdi	# Ptr_Glob,
	call	Proc_1	#
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	cmpb	$64, Ch_2_Glob(%rip)	#, Ch_2_Glob
	jle	.L29	#,
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movl	$65, %ebx	#, Ch_Index
# dry.c:628:       Int_2_Loc = 3;
	movl	$3, %r14d	#, Int_2_Loc
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	leaq	84(%rsp), %r15	#, tmp358
	jmp	.L22	#
.L37:
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	subl	%r14d, %ebx	# Int_3_Loc.18_25, _27
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	leal	0(,%rbx,8), %eax	#, tmp255
	subl	%ebx, %eax	# _27, _28
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	subl	%r15d, %eax	# _26, _28
	movl	%eax, %ebx	# _28, Int_2_Loc
.L19:
# dry.c:671:     Stop_Timer();
	movl	$time_info, %edi	#,
	call	times	#
# dry.c:671:     Stop_Timer();
	movq	time_info(%rip), %rax	# time_info.tms_utime, _29
	movq	%rax, End_Time(%rip)	# _29, End_Time
# dry.c:673:     User_Time = End_Time - Begin_Time;
	subq	Begin_Time(%rip), %rax	# Begin_Time, _31
# dry.c:673:     User_Time = End_Time - Begin_Time;
	movq	%rax, User_Time(%rip)	# _31, User_Time
# dry.c:675:     if (User_Time < Too_Small_Time)
	cmpq	$199, %rax	#, _31
	jle	.L38	#,
# dry.c:679:     } else Done = true;
	movl	$1, Done(%rip)	#, Done
.L26:
# dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	movq	stderr(%rip), %rcx	# stderr,
	movl	$53, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC9, %edi	#,
	call	fwrite	#
# dry.c:683:   fprintf (stderr, "\n");
	movq	stderr(%rip), %rsi	# stderr,
	movl	$10, %edi	#,
	call	fputc	#
# dry.c:684:   fprintf (stderr, "Int_Glob:            %d\n", Int_Glob);
	movl	Int_Glob(%rip), %edx	# Int_Glob,
	movl	$.LC10, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:685:   fprintf (stderr, "        should be:   %d\n", 5);
	movl	$5, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	movl	Bool_Glob(%rip), %edx	# Bool_Glob,
	movl	$.LC12, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:687:   fprintf (stderr, "        should be:   %d\n", 1);
	movl	$1, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	movsbl	Ch_1_Glob(%rip), %edx	# Ch_1_Glob, _42
	movl	$.LC13, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:689:   fprintf (stderr, "        should be:   %c\n", 'A');
	movl	$65, %edx	#,
	movl	$.LC14, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:690:   fprintf (stderr, "Ch_2_Glob:           %c\n", Ch_2_Glob);
	movsbl	Ch_2_Glob(%rip), %edx	# Ch_2_Glob, _46
	movl	$.LC15, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:691:   fprintf (stderr, "        should be:   %c\n", 'B');
	movl	$66, %edx	#,
	movl	$.LC14, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	movl	Arr_1_Glob+32(%rip), %edx	# Arr_1_Glob[8],
	movl	$.LC16, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:693:   fprintf (stderr, "        should be:   %d\n", 7);
	movl	$7, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	movl	Arr_2_Glob+1628(%rip), %edx	# Arr_2_Glob[8][7],
	movl	$.LC17, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:695:   fprintf (stderr, "        should be:   Number_Of_Runs + 10\n");
	movq	stderr(%rip), %rcx	# stderr,
	movl	$41, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC18, %edi	#,
	call	fwrite	#
# dry.c:696:   fprintf (stderr, "Ptr_Glob->\n");
	movq	stderr(%rip), %rcx	# stderr,
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC19, %edi	#,
	call	fwrite	#
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	movq	(%rax), %rdx	# Ptr_Glob.44_56->Ptr_Comp, Ptr_Glob.44_56->Ptr_Comp
	movl	$.LC20, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:698:   fprintf (stderr, "        should be:   (implementation-dependent)\n");
	movq	stderr(%rip), %rcx	# stderr,
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC21, %edi	#,
	call	fwrite	#
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	movl	8(%rax), %edx	# Ptr_Glob.47_61->Discr, Ptr_Glob.47_61->Discr
	movl	$.LC22, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:700:   fprintf (stderr, "        should be:   %d\n", 0);
	movl	$0, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movl	12(%rax), %edx	# Ptr_Glob.50_65->variant.var_1.Enum_Comp, Ptr_Glob.50_65->variant.var_1.Enum_Comp
	movl	$.LC23, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:702:   fprintf (stderr, "        should be:   %d\n", 2);
	movl	$2, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
	movl	16(%rax), %edx	# Ptr_Glob.53_69->variant.var_1.Int_Comp, Ptr_Glob.53_69->variant.var_1.Int_Comp
	movl	$.LC24, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:704:   fprintf (stderr, "        should be:   %d\n", 17);
	movl	$17, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, tmp390
	leaq	20(%rax), %rdx	#, tmp301
	movl	$.LC25, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:706:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	movq	stderr(%rip), %rcx	# stderr,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
# dry.c:707:   fprintf (stderr, "Next_Ptr_Glob->\n");
	movq	stderr(%rip), %rcx	# stderr,
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC27, %edi	#,
	call	fwrite	#
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	movq	(%rax), %rdx	# Next_Ptr_Glob.60_78->Ptr_Comp, Next_Ptr_Glob.60_78->Ptr_Comp
	movl	$.LC20, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:709:   fprintf (stderr, "        should be:   (implementation-dependent), same as above\n");
	movq	stderr(%rip), %rcx	# stderr,
	movl	$63, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC28, %edi	#,
	call	fwrite	#
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	movl	8(%rax), %edx	# Next_Ptr_Glob.63_83->Discr, Next_Ptr_Glob.63_83->Discr
	movl	$.LC22, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:711:   fprintf (stderr, "        should be:   %d\n", 0);
	movl	$0, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movl	12(%rax), %edx	# Next_Ptr_Glob.66_87->variant.var_1.Enum_Comp, Next_Ptr_Glob.66_87->variant.var_1.Enum_Comp
	movl	$.LC23, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:713:   fprintf (stderr, "        should be:   %d\n", 1);
	movl	$1, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob
	movl	16(%rax), %edx	# Next_Ptr_Glob.69_91->variant.var_1.Int_Comp, Next_Ptr_Glob.69_91->variant.var_1.Int_Comp
	movl	$.LC24, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:715:   fprintf (stderr, "        should be:   %d\n", 18);
	movl	$18, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:716:   fprintf (stderr, "  Str_Comp:          %s\n",
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, tmp391
	leaq	20(%rax), %rdx	#, tmp322
	movl	$.LC25, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:718:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	movq	stderr(%rip), %rcx	# stderr,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC26, %edi	#,
	call	fwrite	#
# dry.c:719:   fprintf (stderr, "Int_1_Loc:           %d\n", Int_1_Loc);
	movl	92(%rsp), %edx	# Int_1_Loc,
	movl	$.LC29, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:720:   fprintf (stderr, "        should be:   %d\n", 5);
	movl	$5, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:721:   fprintf (stderr, "Int_2_Loc:           %d\n", Int_2_Loc);
	movl	%ebx, %edx	# Int_2_Loc,
	movl	$.LC30, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:722:   fprintf (stderr, "        should be:   %d\n", 13);
	movl	$13, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:723:   fprintf (stderr, "Int_3_Loc:           %d\n", Int_3_Loc);
	movl	88(%rsp), %edx	# Int_3_Loc,
	movl	$.LC31, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:724:   fprintf (stderr, "        should be:   %d\n", 7);
	movl	$7, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:725:   fprintf (stderr, "Enum_Loc:            %d\n", Enum_Loc);
	movl	84(%rsp), %edx	# Enum_Loc,
	movl	$.LC32, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:726:   fprintf (stderr, "        should be:   %d\n", 1);
	movl	$1, %edx	#,
	movl	$.LC11, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:727:   fprintf (stderr, "Str_1_Loc:           %s\n", Str_1_Loc);
	leaq	48(%rsp), %rdx	#, tmp337
	movl	$.LC33, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:728:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
	movq	stderr(%rip), %rcx	# stderr,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC34, %edi	#,
	call	fwrite	#
# dry.c:729:   fprintf (stderr, "Str_2_Loc:           %s\n", Str_2_Loc);
	leaq	16(%rsp), %rdx	#, tmp340
	movl	$.LC35, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	$0, %eax	#,
	call	fprintf	#
# dry.c:730:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
	movq	stderr(%rip), %rcx	# stderr,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC36, %edi	#,
	call	fwrite	#
# dry.c:731:   fprintf (stderr, "\n");
	movq	stderr(%rip), %rsi	# stderr,
	movl	$10, %edi	#,
	call	fputc	#
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	pxor	%xmm2, %xmm2	# _116
	cvtsi2ssq	User_Time(%rip), %xmm2	# User_Time, _116
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	pxor	%xmm1, %xmm1	# _119
	cvtsi2ssl	12(%rsp), %xmm1	# %sfp, _119
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	mulss	.LC37(%rip), %xmm1	#, _120
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	pxor	%xmm0, %xmm0	# _117
	cvtss2sd	%xmm2, %xmm0	# _116, _117
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	mulsd	.LC38(%rip), %xmm0	#, _118
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	pxor	%xmm3, %xmm3	# _121
	cvtss2sd	%xmm1, %xmm3	# _120, _121
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	divsd	%xmm3, %xmm0	# _121, _122
	cvtsd2ss	%xmm0, %xmm0	# _122, tmp352
	movss	%xmm0, Microseconds(%rip)	# tmp352, Microseconds
# dry.c:737:                         / (float) User_Time;
	divss	%xmm2, %xmm1	# _116, _124
# dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	movss	%xmm1, Dhrystones_Per_Second(%rip)	# _124, Dhrystones_Per_Second
# dry.c:739:     printf ("\nMicroseconds for one run through Dhrystone: ");
	movl	$.LC39, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# dry.c:740:     printf ("%10.2f \n", Microseconds);
	pxor	%xmm0, %xmm0	# _126
	cvtss2sd	Microseconds(%rip), %xmm0	# Microseconds, _126
	movl	$.LC40, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
# dry.c:741:     printf ("Dhrystones per Second:                      ");
	movl	$.LC41, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# dry.c:742:     printf ("%10.0f \n", Dhrystones_Per_Second);
	pxor	%xmm0, %xmm0	# _128
	cvtss2sd	Dhrystones_Per_Second(%rip), %xmm0	# Dhrystones_Per_Second, _128
	movl	$.LC42, %edi	#,
	movl	$1, %eax	#,
	call	printf	#
# dry.c:743:     printf ("\n");
	movl	$10, %edi	#,
	call	putchar	#
# dry.c:745: }
	movl	$0, %eax	#,
	addq	$104, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L38:
	.cfi_restore_state
# dry.c:677:       printf ("too few\n");
	movl	$.LC8, %edi	#,
	call	puts	#
# dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	movl	12(%rsp), %eax	# %sfp, Number_Of_Runs
	leal	(%rax,%rax,4), %eax	#, Number_Of_Runs_234
	addl	%eax, %eax	# Number_Of_Runs
	movl	%eax, 12(%rsp)	# Number_Of_Runs, %sfp
# dry.c:611:   while (!Done) {
	cmpl	$0, Done(%rip)	#, Done
	jne	.L26	#,
.L25:
# dry.c:613:     printf ("Trying %d runs: ", Number_Of_Runs);
	movl	12(%rsp), %r15d	# %sfp, Number_Of_Runs
	movl	%r15d, %esi	# Number_Of_Runs,
	movl	$.LC7, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# dry.c:619:     Start_Timer();
	movl	$time_info, %edi	#,
	call	times	#
# dry.c:619:     Start_Timer();
	movq	time_info(%rip), %rax	# time_info.tms_utime, time_info.tms_utime
	movq	%rax, Begin_Time(%rip)	# time_info.tms_utime, Begin_Time
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	testl	%r15d, %r15d	# Number_Of_Runs
	jle	.L19	#,
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	movl	$1, %ebp	#, Run_Index
	jmp	.L23	#
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.globl	Dhrystones_Per_Second
	.bss
	.align 4
	.type	Dhrystones_Per_Second, @object
	.size	Dhrystones_Per_Second, 4
Dhrystones_Per_Second:
	.zero	4
	.globl	Microseconds
	.align 4
	.type	Microseconds, @object
	.size	Microseconds, 4
Microseconds:
	.zero	4
	.globl	User_Time
	.align 8
	.type	User_Time, @object
	.size	User_Time, 8
User_Time:
	.zero	8
	.globl	End_Time
	.align 8
	.type	End_Time, @object
	.size	End_Time, 8
End_Time:
	.zero	8
	.globl	Begin_Time
	.align 8
	.type	Begin_Time, @object
	.size	Begin_Time, 8
Begin_Time:
	.zero	8
	.globl	Done
	.align 4
	.type	Done, @object
	.size	Done, 4
Done:
	.zero	4
	.globl	Reg
	.align 4
	.type	Reg, @object
	.size	Reg, 4
Reg:
	.zero	4
	.globl	Arr_2_Glob
	.align 32
	.type	Arr_2_Glob, @object
	.size	Arr_2_Glob, 10000
Arr_2_Glob:
	.zero	10000
	.globl	Arr_1_Glob
	.align 32
	.type	Arr_1_Glob, @object
	.size	Arr_1_Glob, 200
Arr_1_Glob:
	.zero	200
	.globl	Ch_2_Glob
	.type	Ch_2_Glob, @object
	.size	Ch_2_Glob, 1
Ch_2_Glob:
	.zero	1
	.globl	Ch_1_Glob
	.type	Ch_1_Glob, @object
	.size	Ch_1_Glob, 1
Ch_1_Glob:
	.zero	1
	.globl	Bool_Glob
	.align 4
	.type	Bool_Glob, @object
	.size	Bool_Glob, 4
Bool_Glob:
	.zero	4
	.globl	Int_Glob
	.align 4
	.type	Int_Glob, @object
	.size	Int_Glob, 4
Int_Glob:
	.zero	4
	.globl	Next_Ptr_Glob
	.align 8
	.type	Next_Ptr_Glob, @object
	.size	Next_Ptr_Glob, 8
Next_Ptr_Glob:
	.zero	8
	.globl	Ptr_Glob
	.align 8
	.type	Ptr_Glob, @object
	.size	Ptr_Glob, 8
Ptr_Glob:
	.zero	8
	.globl	time_info
	.align 32
	.type	time_info, @object
	.size	time_info, 32
time_info:
	.zero	32
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC37:
	.long	1120403456
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC38:
	.long	0
	.long	1093567616
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
