	.file	"dry.c"
# GNU C23 (GCC) version 15.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.2.1, MPFR version 4.2.2, MPC version 1.2.1, isl version none
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O3
	.text
	.p2align 4
	.globl	Proc_1
	.type	Proc_1, @function
Proc_1:
.LFB23:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp	# Ptr_Val_Par, Ptr_Val_Par
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
# dry.c:753:   REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
	movq	(%rdi), %rbx	# Ptr_Val_Par_14(D)->Ptr_Comp, Next_Record
# dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	movdqu	(%rax), %xmm0	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movups	%xmm0, (%rbx)	# *Ptr_Glob.95_1, *Next_Record_15
	movdqu	16(%rax), %xmm0	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movups	%xmm0, 16(%rbx)	# *Ptr_Glob.95_1, *Next_Record_15
	movdqu	32(%rax), %xmm0	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movups	%xmm0, 32(%rbx)	# *Ptr_Glob.95_1, *Next_Record_15
	movq	48(%rax), %rax	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movq	%rax, 48(%rbx)	# *Ptr_Glob.95_1, *Next_Record_15
# dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	movl	$5, 16(%rdi)	#, Ptr_Val_Par_14(D)->variant.var_1.Int_Comp
# dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	movl	$5, 16(%rbx)	#, Next_Record_15->variant.var_1.Int_Comp
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movq	(%rdi), %rax	# Ptr_Val_Par_14(D)->Ptr_Comp, _4
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movq	%rax, (%rbx)	# _4, Next_Record_15->Ptr_Comp
# dry.c:807:   if (Ptr_Glob != Null)
	movq	Ptr_Glob(%rip), %rdx	# Ptr_Glob, prephitmp_3
# dry.c:807:   if (Ptr_Glob != Null)
	testq	%rdx, %rdx	# prephitmp_3
	je	.L2	#,
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movq	(%rdx), %rax	# Ptr_Glob.99_25->Ptr_Comp, _26
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movq	%rax, (%rbx)	# _26, MEM[(struct record * *)Next_Record_15]
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movq	Ptr_Glob(%rip), %rdx	# Ptr_Glob, prephitmp_3
.L2:
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	Int_Glob(%rip), %esi	# Int_Glob,
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	addq	$16, %rdx	#, _28
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	$10, %edi	#,
	call	Proc_7	#
# dry.c:766:   if (Next_Record->Discr == Ident_1)
	movl	8(%rbx), %eax	# Next_Record_15->Discr,
	testl	%eax, %eax	#
	je	.L9	#,
# dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	movq	0(%rbp), %rax	# Ptr_Val_Par_14(D)->Ptr_Comp, _30
	movdqu	(%rax), %xmm0	# *_30, *_30
	movups	%xmm0, 0(%rbp)	# *_30, *Ptr_Val_Par_14(D)
	movdqu	16(%rax), %xmm0	# *_30, *_30
	movups	%xmm0, 16(%rbp)	# *_30, *Ptr_Val_Par_14(D)
	movdqu	32(%rax), %xmm0	# *_30, *_30
	movups	%xmm0, 32(%rbp)	# *_30, *Ptr_Val_Par_14(D)
	movq	48(%rax), %rax	# *_30, *_30
	movq	%rax, 48(%rbp)	# *_30, *Ptr_Val_Par_14(D)
# dry.c:778: } /* Proc_1 */
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4,,10
	.p2align 3
.L9:
	.cfi_restore_state
# dry.c:769:     Next_Record->variant.var_1.Int_Comp = 6;
	movl	$6, 16(%rbx)	#, Next_Record_15->variant.var_1.Int_Comp
# dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	movl	12(%rbp), %edi	# Ptr_Val_Par_14(D)->variant.var_1.Enum_Comp, Ptr_Val_Par_14(D)->variant.var_1.Enum_Comp
	leaq	12(%rbx), %rsi	#, _7
	call	Proc_6	#
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	movl	16(%rbx), %edi	# Next_Record_15->variant.var_1.Int_Comp, Next_Record_15->variant.var_1.Int_Comp
# dry.c:774:            &Next_Record->variant.var_1.Int_Comp);
	leaq	16(%rbx), %rdx	#, _11
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	movl	$10, %esi	#,
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movq	(%rax), %rax	# Ptr_Glob.96_9->Ptr_Comp, _10
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movq	%rax, (%rbx)	# _10, Next_Record_15->Ptr_Comp
# dry.c:778: } /* Proc_1 */
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	jmp	Proc_7	#
	.cfi_endproc
.LFE23:
	.size	Proc_1, .-Proc_1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Usage: %s [number of loops]\n"
.LC2:
	.string	"C, Version 2.2a"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Dhrystone Benchmark, Version %s\n"
	.align 8
.LC4:
	.string	"Program compiled with 'register' attribute"
	.align 8
.LC5:
	.string	"Program compiled without 'register' attribute"
	.section	.rodata.str1.1
.LC6:
	.string	"times()"
.LC7:
	.string	"Using %s, HZ=%d\n"
.LC8:
	.string	"Trying %d runs: "
.LC9:
	.string	"too few"
	.section	.rodata.str1.8
	.align 8
.LC10:
	.string	"Final values of the variables used in the benchmark:\n"
	.section	.rodata.str1.1
.LC11:
	.string	"Int_Glob:            %d\n"
.LC12:
	.string	"        should be:   %d\n"
.LC13:
	.string	"Bool_Glob:           %d\n"
.LC14:
	.string	"Ch_1_Glob:           %c\n"
.LC15:
	.string	"        should be:   %c\n"
.LC16:
	.string	"Ch_2_Glob:           %c\n"
.LC17:
	.string	"Arr_1_Glob[8]:       %d\n"
.LC18:
	.string	"Arr_2_Glob[8][7]:    %d\n"
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"        should be:   Number_Of_Runs + 10\n"
	.section	.rodata.str1.1
.LC20:
	.string	"Ptr_Glob->\n"
.LC21:
	.string	"  Ptr_Comp:          %ld\n"
	.section	.rodata.str1.8
	.align 8
.LC22:
	.string	"        should be:   (implementation-dependent)\n"
	.section	.rodata.str1.1
.LC23:
	.string	"  Discr:             %d\n"
.LC24:
	.string	"  Enum_Comp:         %d\n"
.LC25:
	.string	"  Int_Comp:          %d\n"
.LC26:
	.string	"  Str_Comp:          %s\n"
	.section	.rodata.str1.8
	.align 8
.LC27:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
	.section	.rodata.str1.1
.LC28:
	.string	"Next_Ptr_Glob->\n"
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"        should be:   (implementation-dependent), same as above\n"
	.section	.rodata.str1.1
.LC30:
	.string	"Int_1_Loc:           %d\n"
.LC31:
	.string	"Int_2_Loc:           %d\n"
.LC32:
	.string	"Int_3_Loc:           %d\n"
.LC33:
	.string	"Enum_Loc:            %d\n"
.LC34:
	.string	"Str_1_Loc:           %s\n"
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
	.section	.rodata.str1.1
.LC36:
	.string	"Str_2_Loc:           %s\n"
	.section	.rodata.str1.8
	.align 8
.LC37:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.align 8
.LC40:
	.string	"\nMicroseconds for one run through Dhrystone: "
	.section	.rodata.str1.1
.LC41:
	.string	"%10.2f \n"
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"Dhrystones per Second:                      "
	.section	.rodata.str1.1
.LC43:
	.string	"%10.0f \n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$88, %rsp	#,
	.cfi_def_cfa_offset 128
# dry.c:561:   if (argc > 2)
	cmpl	$2, %edi	#, argc
	jg	.L34	#,
# dry.c:566:   if (argc == 2)
	je	.L12	#,
.L14:
# dry.c:575:      Number_Of_Runs = NUMBER_OF_RUNS;
	movl	$50000, %r13d	#, Number_Of_Runs
.L13:
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	$56, %edi	#,
	call	malloc	#
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	$56, %edi	#,
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movq	%rax, %r12	#, tmp390
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movq	%rax, Next_Ptr_Glob(%rip)	# tmp390, Next_Ptr_Glob
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	call	malloc	#
# dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	movq	.LC1(%rip), %rdx	#, tmp240
# dry.c:597:   printf ("\n");
	movl	$10, %edi	#,
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movdqa	.LC44(%rip), %xmm0	#, tmp383
	movdqa	.LC45(%rip), %xmm1	#, tmp384
# dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	movq	%r12, (%rax)	# tmp390, MEM[(struct record *)_5].Ptr_Comp
# dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	movq	%rdx, 8(%rax)	# tmp240, MEM <vector(2) unsigned int> [(void *)_5 + 8B]
# dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	movl	$40, 16(%rax)	#, MEM[(struct record *)_5].variant.var_1.Int_Comp
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movups	%xmm0, 20(%rax)	# tmp383, MEM <char[1:31]> [(void *)_5 + 20B]
# dry.c:589:   strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
	movaps	%xmm0, 16(%rsp)	# tmp383, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movdqa	.LC46(%rip), %xmm0	#, tmp386
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movups	%xmm1, 35(%rax)	# tmp384, MEM <char[1:31]> [(void *)_5 + 20B]
# dry.c:589:   strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
	movups	%xmm0, 31(%rsp)	# tmp386, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movq	%rax, Ptr_Glob(%rip)	# tmp391, Ptr_Glob
# dry.c:591:   Arr_2_Glob [8][7] = 10;
	movl	$10, Arr_2_Glob+1628(%rip)	#, Arr_2_Glob[8][7]
# dry.c:597:   printf ("\n");
	call	putchar	#
# dry.c:598:   printf ("Dhrystone Benchmark, Version %s\n", Version);
	movl	$.LC2, %esi	#,
	movl	$.LC3, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
# dry.c:599:   if (Reg)
	movl	Reg(%rip), %edx	# Reg,
	testl	%edx, %edx	#
	jne	.L35	#,
# dry.c:605:     printf ("Program compiled without 'register' attribute\n");
	movl	$.LC5, %edi	#,
	call	puts	#
.L16:
# dry.c:607:   printf ("Using %s, HZ=%d\n", CLOCK_TYPE, HZ);
	movl	$100, %edx	#,
	movl	$.LC6, %esi	#,
	movl	$.LC7, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
# dry.c:608:   printf ("\n");
	movl	$10, %edi	#,
	call	putchar	#
# dry.c:610:   Done = false;
	movl	$0, Done(%rip)	#, Done
	.p2align 4
	.p2align 3
.L26:
# dry.c:613:     printf ("Trying %d runs: ", Number_Of_Runs);
	movl	%r13d, %esi	# Number_Of_Runs,
	movl	$.LC8, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
# dry.c:619:     Start_Timer();
	movl	$time_info, %edi	#,
	call	times	#
# dry.c:619:     Start_Timer();
	movq	time_info(%rip), %rax	# time_info.tms_utime, time_info.tms_utime
	movq	%rax, Begin_Time(%rip)	# time_info.tms_utime, Begin_Time
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	testl	%r13d, %r13d	# Number_Of_Runs
	jle	.L17	#,
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	movl	$1, %ebp	#, Run_Index
	.p2align 4
	.p2align 3
.L24:
# dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	movdqa	.LC44(%rip), %xmm6	#, tmp400
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	leaq	48(%rsp), %rsi	#, tmp402
# dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	movdqa	.LC47(%rip), %xmm7	#, tmp401
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	leaq	16(%rsp), %rdi	#, tmp403
# dry.c:830:   Ch_1_Glob = 'A';
	movb	$65, Ch_1_Glob(%rip)	#, Ch_1_Glob
# dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	movaps	%xmm6, 48(%rsp)	# tmp400, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	movl	$1, Bool_Glob(%rip)	#, Bool_Glob
# dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	movups	%xmm7, 63(%rsp)	# tmp401, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:822:   Ch_2_Glob = 'B';
	movb	$66, Ch_2_Glob(%rip)	#, Ch_2_Glob
# dry.c:630:       Enum_Loc = Ident_2;
	movl	$1, 12(%rsp)	#, Enum_Loc
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	call	Func_2	#
# dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	leaq	8(%rsp), %rdx	#, tmp404
	movl	$3, %esi	#,
	movl	$2, %edi	#,
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	testl	%eax, %eax	# _11
# dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	movl	$7, 8(%rsp)	#, Int_3_Loc
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	sete	%al	#, _12
	movzbl	%al, %eax	# _12, _12
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	movl	%eax, Bool_Glob(%rip)	# _12, Bool_Glob
# dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	call	Proc_7	#
# dry.c:642:       Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	movl	8(%rsp), %ecx	# Int_3_Loc,
	movl	$3, %edx	#,
	movl	$Arr_2_Glob, %esi	#,
	movl	$Arr_1_Glob, %edi	#,
	call	Proc_8	#
# dry.c:644:       Proc_1 (Ptr_Glob);
	movq	Ptr_Glob(%rip), %rdi	# Ptr_Glob,
	call	Proc_1	#
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	cmpb	$64, Ch_2_Glob(%rip)	#, Ch_2_Glob
	jle	.L28	#,
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movl	$65, %ebx	#, Ch_Index
# dry.c:628:       Int_2_Loc = 3;
	movl	$3, %r12d	#, Int_2_Loc
	.p2align 4
	.p2align 3
.L22:
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	movsbl	%bl, %edi	# Ch_Index, _16
	movl	$67, %esi	#,
	call	Func_1	#
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	cmpl	12(%rsp), %eax	# Enum_Loc, _17
	je	.L36	#,
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	addl	$1, %ebx	#, Ch_Index
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	cmpb	%bl, Ch_2_Glob(%rip)	# Ch_Index, Ch_2_Glob
	jge	.L22	#,
.L21:
# dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	leal	(%r12,%r12,2), %ecx	#, _265
.L18:
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	%ecx, %eax	# _265, _23
	movl	8(%rsp), %esi	# Int_3_Loc, Int_3_Loc.18_22
	cltd
	idivl	%esi	# Int_3_Loc.18_22
# dry.c:791:     if (Ch_1_Glob == 'A')
	cmpb	$65, Ch_1_Glob(%rip)	#, Ch_1_Glob
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	%eax, %ebx	# _23, Int_1_Loc
# dry.c:791:     if (Ch_1_Glob == 'A')
	jne	.L23	#,
# dry.c:794:       Int_Loc -= 1;
	leal	9(%rax), %ebx	#, Int_Loc_251
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	subl	Int_Glob(%rip), %ebx	# Int_Glob, Int_1_Loc
.L23:
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	addl	$1, %ebp	#, Run_Index
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	cmpl	%r13d, %ebp	# Number_Of_Runs, Run_Index
	jle	.L24	#,
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	subl	%esi, %ecx	# Int_3_Loc.18_22, _24
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	leal	0(,%rcx,8), %edx	#, tmp262
	subl	%ecx, %edx	# _24, _25
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	subl	%eax, %edx	# _23, _25
	movl	%edx, %ebp	# _25, Int_2_Loc
.L17:
# dry.c:671:     Stop_Timer();
	movl	$time_info, %edi	#,
	call	times	#
# dry.c:671:     Stop_Timer();
	movq	time_info(%rip), %rax	# time_info.tms_utime, _26
	movq	%rax, End_Time(%rip)	# _26, End_Time
# dry.c:673:     User_Time = End_Time - Begin_Time;
	subq	Begin_Time(%rip), %rax	# Begin_Time, _28
# dry.c:673:     User_Time = End_Time - Begin_Time;
	movq	%rax, User_Time(%rip)	# _28, User_Time
# dry.c:675:     if (User_Time < Too_Small_Time)
	cmpq	$199, %rax	#, _28
	jle	.L37	#,
# dry.c:679:     } else Done = true;
	movl	$1, Done(%rip)	#, Done
.L27:
# dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	movl	$53, %edx	#,
	movl	$1, %esi	#,
	movl	$.LC10, %edi	#,
	movq	stderr(%rip), %rcx	# stderr,
	call	fwrite	#
# dry.c:683:   fprintf (stderr, "\n");
	movq	stderr(%rip), %rsi	# stderr,
	movl	$10, %edi	#,
	call	fputc	#
# dry.c:684:   fprintf (stderr, "Int_Glob:            %d\n", Int_Glob);
	movl	Int_Glob(%rip), %edx	# Int_Glob,
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%eax, %eax	#
	movl	$.LC11, %esi	#,
	call	fprintf	#
# dry.c:685:   fprintf (stderr, "        should be:   %d\n", 5);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$5, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	movl	Bool_Glob(%rip), %edx	# Bool_Glob,
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%eax, %eax	#
	movl	$.LC13, %esi	#,
	call	fprintf	#
# dry.c:687:   fprintf (stderr, "        should be:   %d\n", 1);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$1, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	movsbl	Ch_1_Glob(%rip), %edx	# Ch_1_Glob, _39
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%eax, %eax	#
	movl	$.LC14, %esi	#,
	call	fprintf	#
# dry.c:689:   fprintf (stderr, "        should be:   %c\n", 'A');
	movq	stderr(%rip), %rdi	# stderr,
	movl	$65, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC15, %esi	#,
	call	fprintf	#
# dry.c:690:   fprintf (stderr, "Ch_2_Glob:           %c\n", Ch_2_Glob);
	movsbl	Ch_2_Glob(%rip), %edx	# Ch_2_Glob, _43
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%eax, %eax	#
	movl	$.LC16, %esi	#,
	call	fprintf	#
# dry.c:691:   fprintf (stderr, "        should be:   %c\n", 'B');
	movq	stderr(%rip), %rdi	# stderr,
	movl	$66, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC15, %esi	#,
	call	fprintf	#
# dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	movl	Arr_1_Glob+32(%rip), %edx	# Arr_1_Glob[8],
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%eax, %eax	#
	movl	$.LC17, %esi	#,
	call	fprintf	#
# dry.c:693:   fprintf (stderr, "        should be:   %d\n", 7);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$7, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	movl	Arr_2_Glob+1628(%rip), %edx	# Arr_2_Glob[8][7],
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%eax, %eax	#
	movl	$.LC18, %esi	#,
	call	fprintf	#
# dry.c:695:   fprintf (stderr, "        should be:   Number_Of_Runs + 10\n");
	movl	$41, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC19, %edi	#,
	call	fwrite	#
# dry.c:696:   fprintf (stderr, "Ptr_Glob->\n");
	movl	$11, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC20, %edi	#,
	call	fwrite	#
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	movl	$.LC21, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movq	(%rax), %rdx	# Ptr_Glob.44_53->Ptr_Comp, Ptr_Glob.44_53->Ptr_Comp
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:698:   fprintf (stderr, "        should be:   (implementation-dependent)\n");
	movl	$48, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC22, %edi	#,
	call	fwrite	#
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	movl	$.LC23, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	8(%rax), %edx	# Ptr_Glob.47_58->Discr, Ptr_Glob.47_58->Discr
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:700:   fprintf (stderr, "        should be:   %d\n", 0);
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%edx, %edx	#
	movl	$.LC12, %esi	#,
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movl	$.LC24, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	12(%rax), %edx	# Ptr_Glob.50_62->variant.var_1.Enum_Comp, Ptr_Glob.50_62->variant.var_1.Enum_Comp
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:702:   fprintf (stderr, "        should be:   %d\n", 2);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$2, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, Ptr_Glob
	movl	$.LC25, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	16(%rax), %edx	# Ptr_Glob.53_66->variant.var_1.Int_Comp, Ptr_Glob.53_66->variant.var_1.Int_Comp
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:704:   fprintf (stderr, "        should be:   %d\n", 17);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$17, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	movq	Ptr_Glob(%rip), %rax	# Ptr_Glob, tmp410
	movl	$.LC26, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	20(%rax), %rdx	#, tmp308
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:706:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC27, %edi	#,
	call	fwrite	#
# dry.c:707:   fprintf (stderr, "Next_Ptr_Glob->\n");
	movl	$16, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC28, %edi	#,
	call	fwrite	#
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	movl	$.LC21, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movq	(%rax), %rdx	# Next_Ptr_Glob.60_75->Ptr_Comp, Next_Ptr_Glob.60_75->Ptr_Comp
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:709:   fprintf (stderr, "        should be:   (implementation-dependent), same as above\n");
	movl	$63, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC29, %edi	#,
	call	fwrite	#
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	movl	$.LC23, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	8(%rax), %edx	# Next_Ptr_Glob.63_80->Discr, Next_Ptr_Glob.63_80->Discr
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:711:   fprintf (stderr, "        should be:   %d\n", 0);
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%edx, %edx	#
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movl	$.LC24, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	12(%rax), %edx	# Next_Ptr_Glob.66_84->variant.var_1.Enum_Comp, Next_Ptr_Glob.66_84->variant.var_1.Enum_Comp
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:713:   fprintf (stderr, "        should be:   %d\n", 1);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$1, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, Next_Ptr_Glob
	movl	$.LC25, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	movl	16(%rax), %edx	# Next_Ptr_Glob.69_88->variant.var_1.Int_Comp, Next_Ptr_Glob.69_88->variant.var_1.Int_Comp
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:715:   fprintf (stderr, "        should be:   %d\n", 18);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$18, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:716:   fprintf (stderr, "  Str_Comp:          %s\n",
	movq	Next_Ptr_Glob(%rip), %rax	# Next_Ptr_Glob, tmp411
	movl	$.LC26, %esi	#,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	20(%rax), %rdx	#, tmp329
	xorl	%eax, %eax	#
	call	fprintf	#
# dry.c:718:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC27, %edi	#,
	call	fwrite	#
# dry.c:719:   fprintf (stderr, "Int_1_Loc:           %d\n", Int_1_Loc);
	movq	stderr(%rip), %rdi	# stderr,
	movl	%ebx, %edx	# Int_1_Loc,
	xorl	%eax, %eax	#
	movl	$.LC30, %esi	#,
	call	fprintf	#
# dry.c:720:   fprintf (stderr, "        should be:   %d\n", 5);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$5, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:721:   fprintf (stderr, "Int_2_Loc:           %d\n", Int_2_Loc);
	movq	stderr(%rip), %rdi	# stderr,
	movl	%ebp, %edx	# Int_2_Loc,
	xorl	%eax, %eax	#
	movl	$.LC31, %esi	#,
	call	fprintf	#
# dry.c:722:   fprintf (stderr, "        should be:   %d\n", 13);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$13, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:723:   fprintf (stderr, "Int_3_Loc:           %d\n", Int_3_Loc);
	movl	8(%rsp), %edx	# Int_3_Loc,
	movl	$.LC32, %esi	#,
	xorl	%eax, %eax	#
	movq	stderr(%rip), %rdi	# stderr,
	call	fprintf	#
# dry.c:724:   fprintf (stderr, "        should be:   %d\n", 7);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$7, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:725:   fprintf (stderr, "Enum_Loc:            %d\n", Enum_Loc);
	movl	12(%rsp), %edx	# Enum_Loc,
	movl	$.LC33, %esi	#,
	xorl	%eax, %eax	#
	movq	stderr(%rip), %rdi	# stderr,
	call	fprintf	#
# dry.c:726:   fprintf (stderr, "        should be:   %d\n", 1);
	movq	stderr(%rip), %rdi	# stderr,
	movl	$1, %edx	#,
	xorl	%eax, %eax	#
	movl	$.LC12, %esi	#,
	call	fprintf	#
# dry.c:727:   fprintf (stderr, "Str_1_Loc:           %s\n", Str_1_Loc);
	movq	stderr(%rip), %rdi	# stderr,
	leaq	16(%rsp), %rdx	#, tmp412
	xorl	%eax, %eax	#
	movl	$.LC34, %esi	#,
	call	fprintf	#
# dry.c:728:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC35, %edi	#,
	call	fwrite	#
# dry.c:729:   fprintf (stderr, "Str_2_Loc:           %s\n", Str_2_Loc);
	movq	stderr(%rip), %rdi	# stderr,
	leaq	48(%rsp), %rdx	#, tmp413
	xorl	%eax, %eax	#
	movl	$.LC36, %esi	#,
	call	fprintf	#
# dry.c:730:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$.LC37, %edi	#,
	call	fwrite	#
# dry.c:731:   fprintf (stderr, "\n");
	movq	stderr(%rip), %rsi	# stderr,
	movl	$10, %edi	#,
	call	fputc	#
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	pxor	%xmm2, %xmm2	# _112
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	pxor	%xmm1, %xmm1	# _115
# dry.c:739:     printf ("\nMicroseconds for one run through Dhrystone: ");
	xorl	%eax, %eax	#
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	pxor	%xmm0, %xmm0	# _113
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	cvtsi2ssl	%r13d, %xmm1	# Number_Of_Runs, _115
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	pxor	%xmm3, %xmm3	# _117
# dry.c:739:     printf ("\nMicroseconds for one run through Dhrystone: ");
	movl	$.LC40, %edi	#,
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	cvtsi2ssq	User_Time(%rip), %xmm2	# User_Time, _112
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	mulss	.LC38(%rip), %xmm1	#, _116
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	cvtss2sd	%xmm2, %xmm0	# _112, _113
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	mulsd	.LC39(%rip), %xmm0	#, _114
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	cvtss2sd	%xmm1, %xmm3	# _116, _117
# dry.c:737:                         / (float) User_Time;
	divss	%xmm2, %xmm1	# _112, _120
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	divsd	%xmm3, %xmm0	# _117, _118
# dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	movss	%xmm1, Dhrystones_Per_Second(%rip)	# _120, Dhrystones_Per_Second
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	cvtsd2ss	%xmm0, %xmm0	# _118, tmp358
	movss	%xmm0, Microseconds(%rip)	# tmp358, Microseconds
# dry.c:739:     printf ("\nMicroseconds for one run through Dhrystone: ");
	call	printf	#
# dry.c:740:     printf ("%10.2f \n", Microseconds);
	movl	$.LC41, %edi	#,
	pxor	%xmm0, %xmm0	# _122
	movl	$1, %eax	#,
	cvtss2sd	Microseconds(%rip), %xmm0	# Microseconds, _122
	call	printf	#
# dry.c:741:     printf ("Dhrystones per Second:                      ");
	xorl	%eax, %eax	#
	movl	$.LC42, %edi	#,
	call	printf	#
# dry.c:742:     printf ("%10.0f \n", Dhrystones_Per_Second);
	movl	$.LC43, %edi	#,
	pxor	%xmm0, %xmm0	# _124
	movl	$1, %eax	#,
	cvtss2sd	Dhrystones_Per_Second(%rip), %xmm0	# Dhrystones_Per_Second, _124
	call	printf	#
# dry.c:743:     printf ("\n");
	movl	$10, %edi	#,
	call	putchar	#
# dry.c:745: }
	xorl	%eax, %eax	#
	addq	$88, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
.L35:
	.cfi_restore_state
# dry.c:601:     printf ("Program compiled with 'register' attribute\n");
	movl	$.LC4, %edi	#,
	call	puts	#
	jmp	.L16	#
	.p2align 4,,10
	.p2align 3
.L36:
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	xorl	%edi, %edi	#
	leaq	12(%rsp), %rsi	#, tmp405
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	addl	$1, %ebx	#, Ch_Index
# dry.c:653: 	  Int_2_Loc = Run_Index;
	movl	%ebp, %r12d	# Run_Index, Int_2_Loc
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	call	Proc_6	#
# dry.c:652: 	  strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
	movdqa	.LC44(%rip), %xmm4	#, tmp406
	movdqa	.LC48(%rip), %xmm5	#, tmp407
# dry.c:654: 	  Int_Glob = Run_Index;
	movl	%ebp, Int_Glob(%rip)	# Run_Index, Int_Glob
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	cmpb	Ch_2_Glob(%rip), %bl	# Ch_2_Glob, Ch_Index
# dry.c:652: 	  strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
	movaps	%xmm4, 48(%rsp)	# tmp406, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movups	%xmm5, 63(%rsp)	# tmp407, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	jle	.L22	#,
	jmp	.L21	#
.L37:
# dry.c:677:       printf ("too few\n");
	movl	$.LC9, %edi	#,
# dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	leal	0(%r13,%r13,4), %r13d	#, Number_Of_Runs_229
# dry.c:677:       printf ("too few\n");
	call	puts	#
# dry.c:611:   while (!Done) {
	movl	Done(%rip), %eax	# Done,
# dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	addl	%r13d, %r13d	# Number_Of_Runs
# dry.c:611:   while (!Done) {
	testl	%eax, %eax	#
	je	.L26	#,
	jmp	.L27	#
	.p2align 4,,10
	.p2align 3
.L28:
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movl	$9, %ecx	#, _265
	jmp	.L18	#
.L12:
# /usr/include/stdlib.h:363:   return (int) strtol (__nptr, (char **) NULL, 10);
	movq	8(%rsi), %rdi	# MEM[(char * *)argv_140(D) + 8B], MEM[(char * *)argv_140(D) + 8B]
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	call	strtol	#
# /usr/include/stdlib.h:363:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, %r13d	# _248, Number_Of_Runs
# dry.c:573:   if (Number_Of_Runs <= 0)
	testl	%eax, %eax	# _248
	jg	.L13	#,
	jmp	.L14	#
.L34:
# dry.c:563:      printf ("Usage: %s [number of loops]\n", argv[0]);
	movq	(%rsi), %rsi	# *argv_140(D),
	movl	$.LC0, %edi	#,
	xorl	%eax, %eax	#
	call	printf	#
# dry.c:564:      exit (1);
	movl	$1, %edi	#,
	call	exit	#
	.cfi_endproc
.LFE22:
	.size	main, .-main
	.text
	.p2align 4
	.globl	Proc_2
	.type	Proc_2, @function
Proc_2:
.LFB24:
	.cfi_startproc
# dry.c:791:     if (Ch_1_Glob == 'A')
	cmpb	$65, Ch_1_Glob(%rip)	#, Ch_1_Glob
	je	.L40	#,
# dry.c:799: } /* Proc_2 */
	ret	
	.p2align 4,,10
	.p2align 3
.L40:
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
	.p2align 4
	.globl	Proc_3
	.type	Proc_3, @function
Proc_3:
.LFB25:
	.cfi_startproc
# dry.c:807:   if (Ptr_Glob != Null)
	movq	Ptr_Glob(%rip), %rdx	# Ptr_Glob, pretmp_11
# dry.c:807:   if (Ptr_Glob != Null)
	testq	%rdx, %rdx	# pretmp_11
	je	.L42	#,
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movq	(%rdx), %rax	# Ptr_Glob.99_1->Ptr_Comp, _2
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movq	%rax, (%rdi)	# _2, *Ptr_Ref_Par_8(D)
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movq	Ptr_Glob(%rip), %rdx	# Ptr_Glob, pretmp_11
.L42:
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	Int_Glob(%rip), %esi	# Int_Glob,
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	addq	$16, %rdx	#, _4
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	$10, %edi	#,
	jmp	Proc_7	#
	.cfi_endproc
.LFE25:
	.size	Proc_3, .-Proc_3
	.p2align 4
	.globl	Proc_4
	.type	Proc_4, @function
Proc_4:
.LFB26:
	.cfi_startproc
# dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	xorl	%eax, %eax	# _2
	cmpb	$65, Ch_1_Glob(%rip)	#, Ch_1_Glob
# dry.c:822:   Ch_2_Glob = 'B';
	movb	$66, Ch_2_Glob(%rip)	#, Ch_2_Glob
# dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	sete	%al	#, _2
# dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	orl	%eax, Bool_Glob(%rip)	# _2, Bool_Glob
# dry.c:823: } /* Proc_4 */
	ret	
	.cfi_endproc
.LFE26:
	.size	Proc_4, .-Proc_4
	.p2align 4
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
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	2
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC38:
	.long	1120403456
	.section	.rodata.cst8
	.align 8
.LC39:
	.long	0
	.long	1093567616
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC44:
	.quad	5642821575076104260
	.quad	4706902966564560965
	.align 16
.LC45:
	.quad	4993734780264402241
	.quad	20070800167293728
	.align 16
.LC46:
	.quad	6076243414199586113
	.quad	20070800167293728
	.align 16
.LC47:
	.quad	4921914539004153153
	.quad	20070800167293728
	.align 16
.LC48:
	.quad	4923040443205963073
	.quad	20070800167293728
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
