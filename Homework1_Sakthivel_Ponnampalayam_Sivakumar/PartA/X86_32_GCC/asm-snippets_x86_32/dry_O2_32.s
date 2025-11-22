	.file	"dry.c"
# GNU C17 (Debian 12.2.0-14+deb12u1) version 12.2.0 (i686-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=i686 -O2 -fasynchronous-unwind-tables
	.text
	.p2align 4
	.globl	Proc_1
	.type	Proc_1, @function
Proc_1:
.LFB23:
	.cfi_startproc
	pushl	%edi	#
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi	#
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# dry.c:752: {
	movl	16(%esp), %edi	# Ptr_Val_Par, Ptr_Val_Par
	call	__x86.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	# tmp82,
# dry.c:753:   REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
	movl	(%edi), %esi	# Ptr_Val_Par_14(D)->Ptr_Comp, Next_Record
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	subl	$4, %esp	#,
	.cfi_def_cfa_offset 20
# dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.95_1
	movl	(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, (%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	4(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 4(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	8(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 8(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	12(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 12(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	16(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 16(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	20(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 20(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	24(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 24(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	28(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 28(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	32(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 32(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	36(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 36(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	40(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 40(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
	movl	44(%eax), %edx	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%edx, 44(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
# dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	movl	$5, 12(%edi)	#, Ptr_Val_Par_14(D)->variant.var_1.Int_Comp
# dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	movl	$5, 12(%esi)	#, Next_Record_15->variant.var_1.Int_Comp
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movl	(%edi), %edx	# Ptr_Val_Par_14(D)->Ptr_Comp, _2
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movl	%edx, (%esi)	# _2, Next_Record_15->Ptr_Comp
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movl	(%eax), %eax	# Ptr_Glob.95_1->Ptr_Comp, _27
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movl	%eax, (%esi)	# _27, MEM[(struct record * *)Next_Record_15]
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
	addl	$12, %eax	#, tmp111
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	pushl	%eax	# tmp111
	.cfi_def_cfa_offset 24
	pushl	Int_Glob@GOTOFF(%ebx)	# Int_Glob
	.cfi_def_cfa_offset 28
	pushl	$10	#
	.cfi_def_cfa_offset 32
	call	Proc_7@PLT	#
# dry.c:766:   if (Next_Record->Discr == Ident_1)
	movl	4(%esi), %eax	# Next_Record_15->Discr,
	addl	$16, %esp	#,
	.cfi_def_cfa_offset 16
	testl	%eax, %eax	#
	je	.L6	#,
# dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	movl	(%edi), %eax	# Ptr_Val_Par_14(D)->Ptr_Comp, _11
	movl	(%eax), %edx	# *_11, *_11
	movl	%edx, (%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	4(%eax), %edx	# *_11, *_11
	movl	%edx, 4(%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	8(%eax), %edx	# *_11, *_11
	movl	%edx, 8(%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	12(%eax), %edx	# *_11, *_11
	movl	%edx, 12(%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	16(%eax), %edx	# *_11, *_11
	movl	%edx, 16(%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	20(%eax), %edx	# *_11, *_11
	movl	%edx, 20(%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	24(%eax), %edx	# *_11, *_11
	movl	%edx, 24(%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	28(%eax), %edx	# *_11, *_11
	movl	%edx, 28(%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	32(%eax), %edx	# *_11, *_11
	movl	%edx, 32(%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	36(%eax), %edx	# *_11, *_11
	movl	%edx, 36(%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	40(%eax), %edx	# *_11, *_11
	movl	%edx, 40(%edi)	# *_11, *Ptr_Val_Par_14(D)
	movl	44(%eax), %eax	# *_11, *_11
	movl	%eax, 44(%edi)	# *_11, *Ptr_Val_Par_14(D)
# dry.c:778: } /* Proc_1 */
	popl	%ebx	#
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi	#
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi	#
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	
	.p2align 4,,10
	.p2align 3
.L6:
	.cfi_restore_state
# dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	subl	$8, %esp	#,
	.cfi_def_cfa_offset 24
	leal	8(%esi), %eax	#, tmp113
# dry.c:769:     Next_Record->variant.var_1.Int_Comp = 6;
	movl	$6, 12(%esi)	#, Next_Record_15->variant.var_1.Int_Comp
# dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	pushl	%eax	# tmp113
	.cfi_def_cfa_offset 28
	pushl	8(%edi)	# Ptr_Val_Par_14(D)->variant.var_1.Enum_Comp
	.cfi_def_cfa_offset 32
	call	Proc_6@PLT	#
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	addl	$12, %esp	#,
	.cfi_def_cfa_offset 20
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movl	(%eax), %eax	# Ptr_Glob.96_7->Ptr_Comp, _8
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movl	%eax, (%esi)	# _8, Next_Record_15->Ptr_Comp
# dry.c:774:            &Next_Record->variant.var_1.Int_Comp);
	leal	12(%esi), %eax	#, tmp115
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	pushl	%eax	# tmp115
	.cfi_def_cfa_offset 24
	pushl	$10	#
	.cfi_def_cfa_offset 28
	pushl	12(%esi)	# Next_Record_15->variant.var_1.Int_Comp
	.cfi_def_cfa_offset 32
	call	Proc_7@PLT	#
	addl	$16, %esp	#,
	.cfi_def_cfa_offset 16
# dry.c:778: } /* Proc_1 */
	popl	%ebx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi	#
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi	#
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret	
	.cfi_endproc
.LFE23:
	.size	Proc_1, .-Proc_1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Usage: %s [number of loops]\n"
.LC1:
	.string	"C, Version 2.2a"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC2:
	.string	"Dhrystone Benchmark, Version %s\n"
	.align 4
.LC3:
	.string	"Program compiled with 'register' attribute"
	.align 4
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
	.section	.rodata.str1.4
	.align 4
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
	.section	.rodata.str1.4
	.align 4
.LC18:
	.string	"        should be:   Number_Of_Runs + 10\n"
	.section	.rodata.str1.1
.LC19:
	.string	"Ptr_Glob->\n"
.LC20:
	.string	"  Ptr_Comp:          %ld\n"
	.section	.rodata.str1.4
	.align 4
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
	.section	.rodata.str1.4
	.align 4
.LC26:
	.string	"        should be:   DHRYSTONE PROGRAM, SOME STRING\n"
	.section	.rodata.str1.1
.LC27:
	.string	"Next_Ptr_Glob->\n"
	.section	.rodata.str1.4
	.align 4
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
	.section	.rodata.str1.4
	.align 4
.LC34:
	.string	"        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n"
	.section	.rodata.str1.1
.LC35:
	.string	"Str_2_Loc:           %s\n"
	.section	.rodata.str1.4
	.align 4
.LC36:
	.string	"        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n"
	.align 4
.LC39:
	.string	"\nMicroseconds for one run through Dhrystone: "
	.section	.rodata.str1.1
.LC40:
	.string	"%10.2f \n"
	.section	.rodata.str1.4
	.align 4
.LC41:
	.string	"Dhrystones per Second:                      "
	.section	.rodata.str1.1
.LC42:
	.string	"%10.0f \n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB22:
	.cfi_startproc
	leal	4(%esp), %ecx	#,
	.cfi_def_cfa 1, 0
	andl	$-16, %esp	#,
	pushl	-4(%ecx)	#
	pushl	%ebp	#
	movl	%esp, %ebp	#,
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%edi	#
	pushl	%esi	#
	pushl	%ebx	#
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	call	__x86.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	# tmp82,
	pushl	%ecx	#
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	subl	$152, %esp	#,
# dry.c:561:   if (argc > 2)
	cmpl	$2, (%ecx)	#, argc
# dry.c:549: {
	movl	4(%ecx), %edx	# argv, argv
# dry.c:561:   if (argc > 2)
	jg	.L27	#,
# dry.c:566:   if (argc == 2)
	je	.L28	#,
.L9:
# dry.c:575:      Number_Of_Runs = NUMBER_OF_RUNS;
	movl	$50000, -116(%ebp)	#, %sfp
.L10:
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	subl	$12, %esp	#,
	pushl	$48	#
	call	malloc@PLT	#
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	%eax, Next_Ptr_Glob@GOTOFF(%ebx)	# tmp219, Next_Ptr_Glob
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	%eax, %esi	# tmp411, tmp219
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	$48, (%esp)	#,
	call	malloc@PLT	#
# dry.c:589:   strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
	movl	$1230132307, -62(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movl	$1230132307, 40(%eax)	#, MEM <char[1:31]> [(void *)_4 + 16B]
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	%eax, Ptr_Glob@GOTOFF(%ebx)	# tmp220, Ptr_Glob
# dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	movl	%esi, (%eax)	# tmp219, MEM[(struct record *)_4].Ptr_Comp
# dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	movl	$0, 4(%eax)	#, MEM[(struct record *)_4].Discr
# dry.c:585:   Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
	movl	$2, 8(%eax)	#, MEM[(struct record *)_4].variant.var_1.Enum_Comp
# dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	movl	$40, 12(%eax)	#, MEM[(struct record *)_4].variant.var_1.Int_Comp
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movl	$1498564676, 16(%eax)	#, MEM <char[1:31]> [(void *)_4 + 16B]
	movl	$1313821779, 20(%eax)	#, MEM <char[1:31]> [(void *)_4 + 16B]
	movl	$1380982853, 24(%eax)	#, MEM <char[1:31]> [(void *)_4 + 16B]
	movl	$1095911247, 28(%eax)	#, MEM <char[1:31]> [(void *)_4 + 16B]
	movl	$1394617421, 32(%eax)	#, MEM <char[1:31]> [(void *)_4 + 16B]
	movl	$541412687, 36(%eax)	#, MEM <char[1:31]> [(void *)_4 + 16B]
	movl	$4673097, 43(%eax)	#, MEM <char[1:31]> [(void *)_4 + 16B]
# dry.c:589:   strcpy (Str_1_Loc, "DHRYSTONE PROGRAM, 1'ST STRING");
	movl	$1498564676, -86(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$1313821779, -82(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$1380982853, -78(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$1095911247, -74(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$824192077, -70(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$542397223, -66(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
	movl	$4673097, -59(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_1_Loc]
# dry.c:591:   Arr_2_Glob [8][7] = 10;
	movl	$10, 1628+Arr_2_Glob@GOTOFF(%ebx)	#, Arr_2_Glob[8][7]
# dry.c:597:   printf ("\n");
	movl	$10, (%esp)	#,
	call	putchar@PLT	#
# dry.c:598:   printf ("Dhrystone Benchmark, Version %s\n", Version);
	popl	%edi	#
	popl	%eax	#
	leal	.LC1@GOTOFF(%ebx), %eax	#, tmp223
	pushl	%eax	# tmp223
	leal	.LC2@GOTOFF(%ebx), %eax	#, tmp224
	pushl	%eax	# tmp224
	call	printf@PLT	#
# dry.c:599:   if (Reg)
	movl	Reg@GOTOFF(%ebx), %eax	# Reg,
	addl	$16, %esp	#,
	testl	%eax, %eax	#
	jne	.L29	#,
# dry.c:605:     printf ("Program compiled without 'register' attribute\n");
	subl	$12, %esp	#,
	leal	.LC4@GOTOFF(%ebx), %eax	#, tmp226
	pushl	%eax	# tmp226
	call	puts@PLT	#
	addl	$16, %esp	#,
.L12:
# dry.c:607:   printf ("Using %s, HZ=%d\n", CLOCK_TYPE, HZ);
	subl	$4, %esp	#,
	leal	.LC5@GOTOFF(%ebx), %eax	#, tmp227
	pushl	$100	#
	pushl	%eax	# tmp227
	leal	.LC6@GOTOFF(%ebx), %eax	#, tmp228
	pushl	%eax	# tmp228
	call	printf@PLT	#
# dry.c:608:   printf ("\n");
	movl	$10, (%esp)	#,
	call	putchar@PLT	#
	leal	.LC7@GOTOFF(%ebx), %eax	#, tmp395
# dry.c:610:   Done = false;
	addl	$16, %esp	#,
	movl	$0, Done@GOTOFF(%ebx)	#, Done
	movl	%eax, -152(%ebp)	# tmp395, %sfp
	leal	time_info@GOTOFF(%ebx), %eax	#, tmp393
	movl	%eax, -140(%ebp)	# tmp393, %sfp
	leal	time_info@GOTOFF, %eax	#, tmp396
	movl	%eax, -144(%ebp)	# tmp396, %sfp
	leal	-55(%ebp), %eax	#, tmp391
	movl	%eax, -120(%ebp)	# tmp391, %sfp
	leal	-86(%ebp), %eax	#, tmp398
	movl	%eax, -124(%ebp)	# tmp398, %sfp
	leal	-96(%ebp), %eax	#, tmp397
	movl	%eax, -136(%ebp)	# tmp397, %sfp
	leal	Arr_2_Glob@GOTOFF(%ebx), %eax	#, tmp394
	movl	%eax, -132(%ebp)	# tmp394, %sfp
	leal	Arr_1_Glob@GOTOFF(%ebx), %eax	#, tmp392
	movl	%eax, -128(%ebp)	# tmp392, %sfp
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	leal	-92(%ebp), %eax	#, tmp406
	movl	%eax, -112(%ebp)	# tmp406, %sfp
	.p2align 4,,10
	.p2align 3
.L19:
# dry.c:613:     printf ("Trying %d runs: ", Number_Of_Runs);
	subl	$8, %esp	#,
	pushl	-116(%ebp)	# %sfp
	pushl	-152(%ebp)	# %sfp
	call	printf@PLT	#
# dry.c:619:     Start_Timer();
	popl	%esi	#
	pushl	-140(%ebp)	# %sfp
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	movl	$1, %esi	#, Run_Index
# dry.c:619:     Start_Timer();
	call	times@PLT	#
	movl	-144(%ebp), %eax	# %sfp, tmp396
	addl	$16, %esp	#,
	movl	(%eax,%ebx), %eax	# time_info.tms_utime, time_info.tms_utime
	movl	%eax, Begin_Time@GOTOFF(%ebx)	# time_info.tms_utime, Begin_Time
	.p2align 4,,10
	.p2align 3
.L17:
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	subl	$8, %esp	#,
# dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	movl	$1230132307, -31(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:830:   Ch_1_Glob = 'A';
	movb	$65, Ch_1_Glob@GOTOFF(%ebx)	#, Ch_1_Glob
# dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	movl	$1, Bool_Glob@GOTOFF(%ebx)	#, Bool_Glob
# dry.c:822:   Ch_2_Glob = 'B';
	movb	$66, Ch_2_Glob@GOTOFF(%ebx)	#, Ch_2_Glob
# dry.c:629:       strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 2'ND STRING");
	movl	$1498564676, -55(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1313821779, -51(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1380982853, -47(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1095911247, -43(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$840969293, -39(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$541347367, -35(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$4673097, -28(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:630:       Enum_Loc = Ident_2;
	movl	$1, -92(%ebp)	#, Enum_Loc
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	pushl	-120(%ebp)	# %sfp
	pushl	-124(%ebp)	# %sfp
	call	Func_2@PLT	#
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	addl	$12, %esp	#,
# dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	movl	$7, -96(%ebp)	#, Int_3_Loc
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	testl	%eax, %eax	# tmp413
	sete	%al	#, tmp235
	movzbl	%al, %eax	# tmp235, tmp235
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	movl	%eax, Bool_Glob@GOTOFF(%ebx)	# tmp235, Bool_Glob
# dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	pushl	-136(%ebp)	# %sfp
	pushl	$3	#
	pushl	$2	#
	call	Proc_7@PLT	#
# dry.c:642:       Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	pushl	-96(%ebp)	# Int_3_Loc
	pushl	$3	#
	pushl	-132(%ebp)	# %sfp
	pushl	-128(%ebp)	# %sfp
	call	Proc_8@PLT	#
# dry.c:644:       Proc_1 (Ptr_Glob);
	addl	$20, %esp	#,
	pushl	Ptr_Glob@GOTOFF(%ebx)	# Ptr_Glob
	call	Proc_1	#
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	addl	$16, %esp	#,
	cmpb	$64, Ch_2_Glob@GOTOFF(%ebx)	#, Ch_2_Glob
	jle	.L21	#,
# dry.c:628:       Int_2_Loc = 3;
	movl	$3, %edx	#, Int_2_Loc
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movl	$65, %edi	#, Ch_Index
# dry.c:628:       Int_2_Loc = 3;
	movl	%edx, -108(%ebp)	# Int_2_Loc, %sfp
	jmp	.L15	#
	.p2align 4,,10
	.p2align 3
.L14:
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	addl	$1, %edi	#, Ch_Index
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movl	%edi, %eax	# Ch_Index, Ch_Index
	cmpb	%al, Ch_2_Glob@GOTOFF(%ebx)	# Ch_Index, Ch_2_Glob
	jl	.L30	#,
.L15:
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	movl	%edi, %eax	# Ch_Index, Ch_Index
	subl	$8, %esp	#,
	movsbl	%al, %eax	# Ch_Index, Ch_Index
	pushl	$67	#
	pushl	%eax	# Ch_Index
	call	Func_1@PLT	#
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	addl	$16, %esp	#,
	cmpl	-92(%ebp), %eax	# Enum_Loc, tmp414
	jne	.L14	#,
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	subl	$8, %esp	#,
	pushl	-112(%ebp)	# %sfp
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	addl	$1, %edi	#, Ch_Index
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	pushl	$0	#
	call	Proc_6@PLT	#
# dry.c:652: 	  strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
	movl	$1230132307, -31(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:654: 	  Int_Glob = Run_Index;
	addl	$16, %esp	#,
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movl	%edi, %eax	# Ch_Index, Ch_Index
# dry.c:652: 	  strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
	movl	$1498564676, -55(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1313821779, -51(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1380982853, -47(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1095911247, -43(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$857746509, -39(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$541348391, -35(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$4673097, -28(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:654: 	  Int_Glob = Run_Index;
	movl	%esi, Int_Glob@GOTOFF(%ebx)	# Run_Index, Int_Glob
	movl	%esi, -108(%ebp)	# Run_Index, %sfp
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	cmpb	%al, Ch_2_Glob@GOTOFF(%ebx)	# Ch_Index, Ch_2_Glob
	jge	.L15	#,
.L30:
# dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	movl	-108(%ebp), %edx	# %sfp, Int_2_Loc
	leal	(%edx,%edx,2), %ecx	#, prephitmp_134
.L13:
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	%ecx, %eax	# prephitmp_134, tmp245
	movl	-96(%ebp), %edi	# Int_3_Loc, Int_3_Loc.18_27
	cltd
	idivl	%edi	# Int_3_Loc.18_27
# dry.c:791:     if (Ch_1_Glob == 'A')
	cmpb	$65, Ch_1_Glob@GOTOFF(%ebx)	#, Ch_1_Glob
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	%eax, -108(%ebp)	# tmp245, %sfp
# dry.c:791:     if (Ch_1_Glob == 'A')
	jne	.L16	#,
# dry.c:794:       Int_Loc -= 1;
	leal	9(%eax), %edx	#, Int_Loc
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	subl	Int_Glob@GOTOFF(%ebx), %edx	# Int_Glob, Int_Loc
	movl	%edx, -108(%ebp)	# Int_Loc, %sfp
.L16:
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	movl	-116(%ebp), %edx	# %sfp, Number_Of_Runs
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	addl	$1, %esi	#, Run_Index
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	cmpl	%edx, %esi	# Number_Of_Runs, Run_Index
	jle	.L17	#,
# dry.c:671:     Stop_Timer();
	movl	-108(%ebp), %esi	# %sfp, Int_1_Loc
	subl	$12, %esp	#,
	movl	%ecx, -148(%ebp)	# prephitmp_134, %sfp
	movl	%eax, -108(%ebp)	# tmp245, %sfp
	pushl	-140(%ebp)	# %sfp
	call	times@PLT	#
	movl	-144(%ebp), %eax	# %sfp, tmp396
# dry.c:675:     if (User_Time < Too_Small_Time)
	addl	$16, %esp	#,
# dry.c:671:     Stop_Timer();
	movl	(%eax,%ebx), %eax	# time_info.tms_utime, _31
	movl	%eax, End_Time@GOTOFF(%ebx)	# _31, End_Time
# dry.c:673:     User_Time = End_Time - Begin_Time;
	subl	Begin_Time@GOTOFF(%ebx), %eax	# Begin_Time, _33
# dry.c:673:     User_Time = End_Time - Begin_Time;
	movl	%eax, User_Time@GOTOFF(%ebx)	# _33, User_Time
# dry.c:675:     if (User_Time < Too_Small_Time)
	cmpl	$199, %eax	#, _33
	jle	.L31	#,
# dry.c:679:     } else Done = true;
	movl	$1, Done@GOTOFF(%ebx)	#, Done
	movl	%edi, %ecx	# Int_3_Loc.18_27, Int_3_Loc.18_27
	movl	-108(%ebp), %edi	# %sfp, tmp245
	movl	%esi, %edx	# Int_1_Loc, Int_1_Loc
.L20:
# dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	movl	stderr@GOT(%ebx), %esi	#, tmp255
	leal	.LC9@GOTOFF(%ebx), %eax	#, tmp256
	movl	%ecx, -152(%ebp)	# Int_3_Loc.18_27, %sfp
	movl	%edx, -156(%ebp)	# Int_1_Loc, %sfp
	pushl	(%esi)	# stderr
	pushl	$53	#
	pushl	$1	#
	pushl	%eax	# tmp256
	call	fwrite@PLT	#
# dry.c:683:   fprintf (stderr, "\n");
	popl	%eax	#
	popl	%edx	#
	pushl	(%esi)	# stderr
	pushl	$10	#
	call	fputc@PLT	#
# dry.c:684:   fprintf (stderr, "Int_Glob:            %d\n", Int_Glob);
	addl	$12, %esp	#,
	leal	.LC10@GOTOFF(%ebx), %eax	#, tmp258
	pushl	Int_Glob@GOTOFF(%ebx)	# Int_Glob
	pushl	%eax	# tmp258
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:685:   fprintf (stderr, "        should be:   %d\n", 5);
	addl	$12, %esp	#,
	leal	.LC11@GOTOFF(%ebx), %eax	#, tmp260
	pushl	$5	#
	movl	%eax, -108(%ebp)	# tmp260, %sfp
	pushl	%eax	#
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	addl	$12, %esp	#,
	leal	.LC12@GOTOFF(%ebx), %eax	#, tmp262
	pushl	Bool_Glob@GOTOFF(%ebx)	# Bool_Glob
	pushl	%eax	# tmp262
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:687:   fprintf (stderr, "        should be:   %d\n", 1);
	addl	$12, %esp	#,
	pushl	$1	#
	pushl	-108(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	movsbl	Ch_1_Glob@GOTOFF(%ebx), %eax	# Ch_1_Glob, Ch_1_Glob
	addl	$12, %esp	#,
	pushl	%eax	# Ch_1_Glob
	leal	.LC13@GOTOFF(%ebx), %eax	#, tmp267
	pushl	%eax	# tmp267
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:689:   fprintf (stderr, "        should be:   %c\n", 'A');
	leal	.LC14@GOTOFF(%ebx), %ecx	#, tmp269
	addl	$12, %esp	#,
	pushl	$65	#
	movl	%ecx, -112(%ebp)	# tmp269, %sfp
	pushl	%ecx	#
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:690:   fprintf (stderr, "Ch_2_Glob:           %c\n", Ch_2_Glob);
	movsbl	Ch_2_Glob@GOTOFF(%ebx), %eax	# Ch_2_Glob, Ch_2_Glob
	addl	$12, %esp	#,
	pushl	%eax	# Ch_2_Glob
	leal	.LC15@GOTOFF(%ebx), %eax	#, tmp272
	pushl	%eax	# tmp272
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:691:   fprintf (stderr, "        should be:   %c\n", 'B');
	addl	$12, %esp	#,
	pushl	$66	#
	pushl	-112(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	addl	$12, %esp	#,
	leal	.LC16@GOTOFF(%ebx), %eax	#, tmp277
	pushl	32+Arr_1_Glob@GOTOFF(%ebx)	# Arr_1_Glob[8]
	pushl	%eax	# tmp277
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:693:   fprintf (stderr, "        should be:   %d\n", 7);
	addl	$12, %esp	#,
	pushl	$7	#
	pushl	-108(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	addl	$12, %esp	#,
	leal	.LC17@GOTOFF(%ebx), %eax	#, tmp282
	pushl	1628+Arr_2_Glob@GOTOFF(%ebx)	# Arr_2_Glob[8][7]
	pushl	%eax	# tmp282
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:695:   fprintf (stderr, "        should be:   Number_Of_Runs + 10\n");
	leal	.LC18@GOTOFF(%ebx), %eax	#, tmp285
	pushl	(%esi)	# stderr
	pushl	$41	#
	pushl	$1	#
	pushl	%eax	# tmp285
	call	fwrite@PLT	#
# dry.c:696:   fprintf (stderr, "Ptr_Glob->\n");
	addl	$32, %esp	#,
	leal	.LC19@GOTOFF(%ebx), %eax	#, tmp287
	pushl	(%esi)	# stderr
	pushl	$11	#
	pushl	$1	#
	pushl	%eax	# tmp287
	call	fwrite@PLT	#
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	addl	$12, %esp	#,
	leal	.LC20@GOTOFF(%ebx), %ecx	#, tmp289
	pushl	(%eax)	# Ptr_Glob.44_58->Ptr_Comp
	movl	%ecx, -112(%ebp)	# tmp289, %sfp
	pushl	%ecx	#
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:698:   fprintf (stderr, "        should be:   (implementation-dependent)\n");
	leal	.LC21@GOTOFF(%ebx), %eax	#, tmp292
	pushl	(%esi)	# stderr
	pushl	$48	#
	pushl	$1	#
	pushl	%eax	# tmp292
	call	fwrite@PLT	#
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	leal	.LC22@GOTOFF(%ebx), %edx	#, tmp294
	addl	$28, %esp	#,
	pushl	4(%eax)	# Ptr_Glob.47_63->Discr
	movl	%edx, -128(%ebp)	# tmp294, %sfp
	pushl	%edx	#
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:700:   fprintf (stderr, "        should be:   %d\n", 0);
	addl	$12, %esp	#,
	pushl	$0	#
	pushl	-108(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	addl	$12, %esp	#,
	pushl	8(%eax)	# Ptr_Glob.50_67->variant.var_1.Enum_Comp
	leal	.LC23@GOTOFF(%ebx), %eax	#, tmp299
	movl	%eax, -132(%ebp)	# tmp299, %sfp
	pushl	%eax	#
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:702:   fprintf (stderr, "        should be:   %d\n", 2);
	addl	$12, %esp	#,
	pushl	$2	#
	pushl	-108(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
	leal	.LC24@GOTOFF(%ebx), %ecx	#, tmp304
	addl	$12, %esp	#,
	pushl	12(%eax)	# Ptr_Glob.53_71->variant.var_1.Int_Comp
	movl	%ecx, -136(%ebp)	# tmp304, %sfp
	pushl	%ecx	#
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:704:   fprintf (stderr, "        should be:   %d\n", 17);
	addl	$12, %esp	#,
	pushl	$17	#
	pushl	-108(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
	leal	.LC25@GOTOFF(%ebx), %edx	#, tmp310
	addl	$12, %esp	#,
	addl	$16, %eax	#, tmp308
	pushl	%eax	# tmp308
	movl	%edx, -140(%ebp)	# tmp310, %sfp
	pushl	%edx	#
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:706:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	leal	.LC26@GOTOFF(%ebx), %eax	#, tmp313
	pushl	(%esi)	# stderr
	pushl	$52	#
	pushl	$1	#
	movl	%eax, -144(%ebp)	# tmp313, %sfp
	pushl	%eax	#
	call	fwrite@PLT	#
# dry.c:707:   fprintf (stderr, "Next_Ptr_Glob->\n");
	addl	$32, %esp	#,
	leal	.LC27@GOTOFF(%ebx), %eax	#, tmp315
	pushl	(%esi)	# stderr
	pushl	$16	#
	pushl	$1	#
	pushl	%eax	# tmp315
	call	fwrite@PLT	#
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	addl	$12, %esp	#,
	pushl	(%eax)	# Next_Ptr_Glob.60_80->Ptr_Comp
	pushl	-112(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:709:   fprintf (stderr, "        should be:   (implementation-dependent), same as above\n");
	leal	.LC28@GOTOFF(%ebx), %eax	#, tmp320
	pushl	(%esi)	# stderr
	pushl	$63	#
	pushl	$1	#
	pushl	%eax	# tmp320
	call	fwrite@PLT	#
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	addl	$28, %esp	#,
	pushl	4(%eax)	# Next_Ptr_Glob.63_85->Discr
	pushl	-128(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:711:   fprintf (stderr, "        should be:   %d\n", 0);
	addl	$12, %esp	#,
	pushl	$0	#
	pushl	-108(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	addl	$12, %esp	#,
	pushl	8(%eax)	# Next_Ptr_Glob.66_89->variant.var_1.Enum_Comp
	pushl	-132(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:713:   fprintf (stderr, "        should be:   %d\n", 1);
	addl	$12, %esp	#,
	pushl	$1	#
	pushl	-108(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob
	addl	$12, %esp	#,
	pushl	12(%eax)	# Next_Ptr_Glob.69_93->variant.var_1.Int_Comp
	pushl	-136(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:715:   fprintf (stderr, "        should be:   %d\n", 18);
	addl	$12, %esp	#,
	pushl	$18	#
	pushl	-108(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:716:   fprintf (stderr, "  Str_Comp:          %s\n",
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob
	addl	$12, %esp	#,
	addl	$16, %eax	#, tmp336
	pushl	%eax	# tmp336
	pushl	-140(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:718:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	pushl	(%esi)	# stderr
	pushl	$52	#
	pushl	$1	#
	pushl	-144(%ebp)	# %sfp
	call	fwrite@PLT	#
# dry.c:719:   fprintf (stderr, "Int_1_Loc:           %d\n", Int_1_Loc);
	movl	-156(%ebp), %edx	# %sfp, Int_1_Loc
	addl	$28, %esp	#,
	leal	.LC29@GOTOFF(%ebx), %eax	#, tmp342
	pushl	%edx	# Int_1_Loc
	pushl	%eax	# tmp342
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:720:   fprintf (stderr, "        should be:   %d\n", 5);
	addl	$12, %esp	#,
	pushl	$5	#
	pushl	-108(%ebp)	# %sfp
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	movl	-152(%ebp), %ecx	# %sfp, Int_3_Loc.18_27
	movl	-148(%ebp), %edx	# %sfp, prephitmp_134
# dry.c:721:   fprintf (stderr, "Int_2_Loc:           %d\n", Int_2_Loc);
	addl	$12, %esp	#,
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	subl	%ecx, %edx	# Int_3_Loc.18_27, prephitmp_134
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	leal	0(,%edx,8), %eax	#, tmp348
	subl	%edx, %eax	# tmp346, tmp349
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	subl	%edi, %eax	# tmp245, Int_2_Loc
# dry.c:721:   fprintf (stderr, "Int_2_Loc:           %d\n", Int_2_Loc);
	pushl	%eax	# Int_2_Loc
	leal	.LC30@GOTOFF(%ebx), %eax	#, tmp351
	pushl	%eax	# tmp351
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:722:   fprintf (stderr, "        should be:   %d\n", 13);
	movl	-108(%ebp), %edi	# %sfp, tmp260
	addl	$12, %esp	#,
	pushl	$13	#
	pushl	%edi	# tmp260
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:723:   fprintf (stderr, "Int_3_Loc:           %d\n", Int_3_Loc);
	addl	$12, %esp	#,
	leal	.LC31@GOTOFF(%ebx), %eax	#, tmp355
	pushl	-96(%ebp)	# Int_3_Loc
	pushl	%eax	# tmp355
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:724:   fprintf (stderr, "        should be:   %d\n", 7);
	addl	$12, %esp	#,
	pushl	$7	#
	pushl	%edi	# tmp260
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:725:   fprintf (stderr, "Enum_Loc:            %d\n", Enum_Loc);
	addl	$12, %esp	#,
	leal	.LC32@GOTOFF(%ebx), %eax	#, tmp359
	pushl	-92(%ebp)	# Enum_Loc
	pushl	%eax	# tmp359
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:726:   fprintf (stderr, "        should be:   %d\n", 1);
	addl	$12, %esp	#,
	pushl	$1	#
	pushl	%edi	# tmp260
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:727:   fprintf (stderr, "Str_1_Loc:           %s\n", Str_1_Loc);
	addl	$12, %esp	#,
	leal	.LC33@GOTOFF(%ebx), %eax	#, tmp364
	pushl	-124(%ebp)	# %sfp
	pushl	%eax	# tmp364
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:728:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
	leal	.LC34@GOTOFF(%ebx), %eax	#, tmp367
	pushl	(%esi)	# stderr
	pushl	$52	#
	pushl	$1	#
	pushl	%eax	# tmp367
	call	fwrite@PLT	#
# dry.c:729:   fprintf (stderr, "Str_2_Loc:           %s\n", Str_2_Loc);
	addl	$28, %esp	#,
	leal	.LC35@GOTOFF(%ebx), %eax	#, tmp369
	pushl	-120(%ebp)	# %sfp
	pushl	%eax	# tmp369
	pushl	(%esi)	# stderr
	call	fprintf@PLT	#
# dry.c:730:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
	leal	.LC36@GOTOFF(%ebx), %eax	#, tmp372
	pushl	(%esi)	# stderr
	pushl	$52	#
	pushl	$1	#
	pushl	%eax	# tmp372
	call	fwrite@PLT	#
# dry.c:731:   fprintf (stderr, "\n");
	addl	$24, %esp	#,
	pushl	(%esi)	# stderr
	pushl	$10	#
	call	fputc@PLT	#
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	fildl	User_Time@GOTOFF(%ebx)	# User_Time
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fildl	-116(%ebp)	# %sfp
# dry.c:739:     printf ("\nMicroseconds for one run through Dhrystone: ");
	leal	.LC39@GOTOFF(%ebx), %eax	#, tmp383
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fmuls	.LC37@GOTOFF(%ebx)	#
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	fld	%st(1)	#
	fmuls	.LC38@GOTOFF(%ebx)	#
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fdiv	%st(1), %st	#,
	fstps	Microseconds@GOTOFF(%ebx)	# Microseconds
# dry.c:737:                         / (float) User_Time;
	fdivp	%st, %st(1)	#,
# dry.c:736:     Dhrystones_Per_Second = ((float) HZ * (float) Number_Of_Runs)
	fstps	Dhrystones_Per_Second@GOTOFF(%ebx)	# Dhrystones_Per_Second
# dry.c:739:     printf ("\nMicroseconds for one run through Dhrystone: ");
	movl	%eax, (%esp)	# tmp383,
	call	printf@PLT	#
# dry.c:740:     printf ("%10.2f \n", Microseconds);
	leal	.LC40@GOTOFF(%ebx), %eax	#, tmp385
	flds	Microseconds@GOTOFF(%ebx)	# Microseconds
	movl	%eax, (%esp)	# tmp385,
	fstpl	4(%esp)	#
	call	printf@PLT	#
# dry.c:741:     printf ("Dhrystones per Second:                      ");
	leal	.LC41@GOTOFF(%ebx), %eax	#, tmp386
	movl	%eax, (%esp)	# tmp386,
	call	printf@PLT	#
# dry.c:742:     printf ("%10.0f \n", Dhrystones_Per_Second);
	leal	.LC42@GOTOFF(%ebx), %eax	#, tmp388
	flds	Dhrystones_Per_Second@GOTOFF(%ebx)	# Dhrystones_Per_Second
	movl	%eax, (%esp)	# tmp388,
	fstpl	4(%esp)	#
	call	printf@PLT	#
# dry.c:743:     printf ("\n");
	movl	$10, (%esp)	#,
	call	putchar@PLT	#
	addl	$16, %esp	#,
# dry.c:745: }
	leal	-16(%ebp), %esp	#,
	xorl	%eax, %eax	#
	popl	%ecx	#
	.cfi_remember_state
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx	#
	.cfi_restore 3
	popl	%esi	#
	.cfi_restore 6
	popl	%edi	#
	.cfi_restore 7
	popl	%ebp	#
	.cfi_restore 5
	leal	-4(%ecx), %esp	#,
	.cfi_def_cfa 4, 4
	ret	
.L29:
	.cfi_restore_state
# dry.c:601:     printf ("Program compiled with 'register' attribute\n");
	subl	$12, %esp	#,
	leal	.LC3@GOTOFF(%ebx), %eax	#, tmp225
	pushl	%eax	# tmp225
	call	puts@PLT	#
	addl	$16, %esp	#,
	jmp	.L12	#
	.p2align 4,,10
	.p2align 3
.L21:
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movl	$9, %ecx	#, prephitmp_134
	jmp	.L13	#
.L31:
# dry.c:677:       printf ("too few\n");
	subl	$12, %esp	#,
	leal	.LC8@GOTOFF(%ebx), %eax	#, tmp250
	pushl	%eax	# tmp250
	call	puts@PLT	#
# dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	movl	-116(%ebp), %eax	# %sfp, Number_Of_Runs
# dry.c:611:   while (!Done) {
	movl	Done@GOTOFF(%ebx), %ecx	# Done,
	addl	$16, %esp	#,
# dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	leal	(%eax,%eax,4), %eax	#, tmp253
	addl	%eax, %eax	# Number_Of_Runs
	movl	%eax, -116(%ebp)	# Number_Of_Runs, %sfp
# dry.c:611:   while (!Done) {
	testl	%ecx, %ecx	#
	je	.L19	#,
	movl	%edi, %ecx	# Int_3_Loc.18_27, Int_3_Loc.18_27
	movl	%esi, %edx	# Int_1_Loc, Int_1_Loc
	movl	-108(%ebp), %edi	# %sfp, tmp245
	jmp	.L20	#
.L28:
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	pushl	%eax	#
	pushl	$10	#
	pushl	$0	#
	pushl	4(%edx)	# MEM[(char * *)argv_148(D) + 4B]
	call	strtol@PLT	#
# dry.c:573:   if (Number_Of_Runs <= 0)
	addl	$16, %esp	#,
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	%eax, -116(%ebp)	# Number_Of_Runs, %sfp
# dry.c:573:   if (Number_Of_Runs <= 0)
	testl	%eax, %eax	# Number_Of_Runs
	jg	.L10	#,
	jmp	.L9	#
.L27:
# dry.c:563:      printf ("Usage: %s [number of loops]\n", argv[0]);
	pushl	%eax	#
	pushl	%eax	#
	leal	.LC0@GOTOFF(%ebx), %eax	#, tmp218
	pushl	(%edx)	# *argv_148(D)
	pushl	%eax	# tmp218
	call	printf@PLT	#
# dry.c:564:      exit (1);
	movl	$1, (%esp)	#,
	call	exit@PLT	#
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
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
# dry.c:785: {
	movl	4(%esp), %ecx	# Int_Par_Ref, Int_Par_Ref
# dry.c:791:     if (Ch_1_Glob == 'A')
	cmpb	$65, Ch_1_Glob@GOTOFF(%eax)	#, Ch_1_Glob
	je	.L34	#,
# dry.c:799: } /* Proc_2 */
	ret	
	.p2align 4,,10
	.p2align 3
.L34:
# dry.c:794:       Int_Loc -= 1;
	movl	(%ecx), %edx	# *Int_Par_Ref_7(D), tmp94
	addl	$9, %edx	#, Int_Loc
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	subl	Int_Glob@GOTOFF(%eax), %edx	# Int_Glob, Int_Loc
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	movl	%edx, (%ecx)	# tmp92, *Int_Par_Ref_7(D)
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
	pushl	%ebx	#
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	call	__x86.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	# tmp82,
	subl	$8, %esp	#,
	.cfi_def_cfa_offset 16
# dry.c:807:   if (Ptr_Glob != Null)
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, pretmp_12
# dry.c:807:   if (Ptr_Glob != Null)
	testl	%eax, %eax	# pretmp_12
	je	.L36	#,
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movl	(%eax), %edx	# Ptr_Glob.99_1->Ptr_Comp, _2
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movl	16(%esp), %eax	# Ptr_Ref_Par, Ptr_Ref_Par
	movl	%edx, (%eax)	# _2, *Ptr_Ref_Par_8(D)
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, pretmp_12
.L36:
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	subl	$4, %esp	#,
	.cfi_def_cfa_offset 20
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	addl	$12, %eax	#, tmp88
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	pushl	%eax	# tmp88
	.cfi_def_cfa_offset 24
	pushl	Int_Glob@GOTOFF(%ebx)	# Int_Glob
	.cfi_def_cfa_offset 28
	pushl	$10	#
	.cfi_def_cfa_offset 32
	call	Proc_7@PLT	#
# dry.c:811: } /* Proc_3 */
	addl	$24, %esp	#,
	.cfi_def_cfa_offset 8
	popl	%ebx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret	
	.cfi_endproc
.LFE25:
	.size	Proc_3, .-Proc_3
	.p2align 4
	.globl	Proc_4
	.type	Proc_4, @function
Proc_4:
.LFB26:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
# dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	xorl	%edx, %edx	# Bool_Loc
	cmpb	$65, Ch_1_Glob@GOTOFF(%eax)	#, Ch_1_Glob
# dry.c:822:   Ch_2_Glob = 'B';
	movb	$66, Ch_2_Glob@GOTOFF(%eax)	#, Ch_2_Glob
# dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	sete	%dl	#, Bool_Loc
# dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	orl	%edx, Bool_Glob@GOTOFF(%eax)	# Bool_Loc, Bool_Glob
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
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
# dry.c:830:   Ch_1_Glob = 'A';
	movb	$65, Ch_1_Glob@GOTOFF(%eax)	#, Ch_1_Glob
# dry.c:831:   Bool_Glob = false;
	movl	$0, Bool_Glob@GOTOFF(%eax)	#, Bool_Glob
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
	.align 4
	.type	User_Time, @object
	.size	User_Time, 4
User_Time:
	.zero	4
	.globl	End_Time
	.align 4
	.type	End_Time, @object
	.size	End_Time, 4
End_Time:
	.zero	4
	.globl	Begin_Time
	.align 4
	.type	Begin_Time, @object
	.size	Begin_Time, 4
Begin_Time:
	.zero	4
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
	.align 4
	.type	Next_Ptr_Glob, @object
	.size	Next_Ptr_Glob, 4
Next_Ptr_Glob:
	.zero	4
	.globl	Ptr_Glob
	.align 4
	.type	Ptr_Glob, @object
	.size	Ptr_Glob, 4
Ptr_Glob:
	.zero	4
	.globl	time_info
	.align 4
	.type	time_info, @object
	.size	time_info, 16
time_info:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC37:
	.long	1120403456
	.align 4
.LC38:
	.long	1232348160
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB28:
	.cfi_startproc
	movl	(%esp), %eax	#,
	ret
	.cfi_endproc
.LFE28:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB29:
	.cfi_startproc
	movl	(%esp), %ebx	#,
	ret
	.cfi_endproc
.LFE29:
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
