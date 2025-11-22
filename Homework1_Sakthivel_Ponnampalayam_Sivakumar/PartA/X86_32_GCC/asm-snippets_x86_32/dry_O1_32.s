	.file	"dry.c"
# GNU C17 (Debian 12.2.0-14+deb12u1) version 12.2.0 (i686-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.2.0, MPC version 1.3.1, isl version isl-0.25-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=i686 -O1 -fasynchronous-unwind-tables
	.text
	.globl	Proc_2
	.type	Proc_2, @function
Proc_2:
.LFB24:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
	movl	4(%esp), %ecx	# Int_Par_Ref, Int_Par_Ref
# dry.c:791:     if (Ch_1_Glob == 'A')
	cmpb	$65, Ch_1_Glob@GOTOFF(%eax)	#, Ch_1_Glob
	je	.L3	#,
.L1:
# dry.c:799: } /* Proc_2 */
	ret	
.L3:
# dry.c:794:       Int_Loc -= 1;
	movl	(%ecx), %edx	# *Int_Par_Ref_7(D), tmp94
	addl	$9, %edx	#, Int_Loc
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	subl	Int_Glob@GOTOFF(%eax), %edx	# Int_Glob, Int_Loc
# dry.c:795:       *Int_Par_Ref = Int_Loc - Int_Glob;
	movl	%edx, (%ecx)	# tmp92, *Int_Par_Ref_7(D)
# dry.c:799: } /* Proc_2 */
	jmp	.L1	#
	.cfi_endproc
.LFE24:
	.size	Proc_2, .-Proc_2
	.globl	Proc_3
	.type	Proc_3, @function
Proc_3:
.LFB25:
	.cfi_startproc
	pushl	%ebx	#
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp	#,
	.cfi_def_cfa_offset 16
	call	__x86.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	# tmp82,
# dry.c:807:   if (Ptr_Glob != Null)
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob.99_1
# dry.c:807:   if (Ptr_Glob != Null)
	testl	%eax, %eax	# Ptr_Glob.99_1
	je	.L5	#,
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movl	(%eax), %edx	# Ptr_Glob.99_1->Ptr_Comp, _2
# dry.c:809:     *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
	movl	16(%esp), %eax	# Ptr_Ref_Par, Ptr_Ref_Par
	movl	%edx, (%eax)	# _2, *Ptr_Ref_Par_8(D)
.L5:
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	subl	$4, %esp	#,
	.cfi_def_cfa_offset 20
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
	addl	$12, %eax	#, tmp89
# dry.c:810:   Proc_7 (10, Int_Glob, &Ptr_Glob->variant.var_1.Int_Comp);
	pushl	%eax	# tmp89
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
	call	__x86.get_pc_thunk.di	#
	addl	$_GLOBAL_OFFSET_TABLE_, %edi	# tmp82,
	movl	16(%esp), %ebx	# Ptr_Val_Par, Ptr_Val_Par
# dry.c:753:   REG Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;  
	movl	(%ebx), %esi	# Ptr_Val_Par_14(D)->Ptr_Comp, Next_Record
# dry.c:758:   structassign (*Ptr_Val_Par->Ptr_Comp, *Ptr_Glob); 
	movl	Ptr_Glob@GOTOFF(%edi), %eax	# Ptr_Glob, Ptr_Glob
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
	movl	44(%eax), %eax	# *Ptr_Glob.95_1, *Ptr_Glob.95_1
	movl	%eax, 44(%esi)	# *Ptr_Glob.95_1, *Next_Record_15
# dry.c:759:   Ptr_Val_Par->variant.var_1.Int_Comp = 5;
	movl	$5, 12(%ebx)	#, Ptr_Val_Par_14(D)->variant.var_1.Int_Comp
# dry.c:761:         = Ptr_Val_Par->variant.var_1.Int_Comp;
	movl	$5, 12(%esi)	#, Next_Record_15->variant.var_1.Int_Comp
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movl	(%ebx), %eax	# Ptr_Val_Par_14(D)->Ptr_Comp, _2
# dry.c:762:   Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
	movl	%eax, (%esi)	# _2, Next_Record_15->Ptr_Comp
# dry.c:763:   Proc_3 (&Next_Record->Ptr_Comp);
	subl	$12, %esp	#,
	.cfi_def_cfa_offset 28
	pushl	%esi	# Next_Record
	.cfi_def_cfa_offset 32
	call	Proc_3	#
# dry.c:766:   if (Next_Record->Discr == Ident_1)
	addl	$16, %esp	#,
	.cfi_def_cfa_offset 16
	cmpl	$0, 4(%esi)	#, Next_Record_15->Discr
	je	.L11	#,
# dry.c:777:     structassign (*Ptr_Val_Par, *Ptr_Val_Par->Ptr_Comp);
	movl	(%ebx), %eax	# Ptr_Val_Par_14(D)->Ptr_Comp, _11
	movl	(%eax), %edx	# *_11, *_11
	movl	%edx, (%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	4(%eax), %edx	# *_11, *_11
	movl	%edx, 4(%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	8(%eax), %edx	# *_11, *_11
	movl	%edx, 8(%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	12(%eax), %edx	# *_11, *_11
	movl	%edx, 12(%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	16(%eax), %edx	# *_11, *_11
	movl	%edx, 16(%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	20(%eax), %edx	# *_11, *_11
	movl	%edx, 20(%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	24(%eax), %edx	# *_11, *_11
	movl	%edx, 24(%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	28(%eax), %edx	# *_11, *_11
	movl	%edx, 28(%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	32(%eax), %edx	# *_11, *_11
	movl	%edx, 32(%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	36(%eax), %edx	# *_11, *_11
	movl	%edx, 36(%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	40(%eax), %edx	# *_11, *_11
	movl	%edx, 40(%ebx)	# *_11, *Ptr_Val_Par_14(D)
	movl	44(%eax), %eax	# *_11, *_11
	movl	%eax, 44(%ebx)	# *_11, *Ptr_Val_Par_14(D)
.L7:
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
.L11:
	.cfi_restore_state
# dry.c:769:     Next_Record->variant.var_1.Int_Comp = 6;
	movl	$6, 12(%esi)	#, Next_Record_15->variant.var_1.Int_Comp
# dry.c:770:     Proc_6 (Ptr_Val_Par->variant.var_1.Enum_Comp, 
	subl	$8, %esp	#,
	.cfi_def_cfa_offset 24
	leal	8(%esi), %eax	#, tmp109
	pushl	%eax	# tmp109
	.cfi_def_cfa_offset 28
	pushl	8(%ebx)	# Ptr_Val_Par_14(D)->variant.var_1.Enum_Comp
	.cfi_def_cfa_offset 32
	movl	%edi, %ebx	# tmp82,
	call	Proc_6@PLT	#
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movl	Ptr_Glob@GOTOFF(%edi), %eax	# Ptr_Glob, Ptr_Glob
	movl	(%eax), %eax	# Ptr_Glob.96_7->Ptr_Comp, _8
# dry.c:772:     Next_Record->Ptr_Comp = Ptr_Glob->Ptr_Comp;
	movl	%eax, (%esi)	# _8, Next_Record_15->Ptr_Comp
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	addl	$12, %esp	#,
	.cfi_def_cfa_offset 20
# dry.c:774:            &Next_Record->variant.var_1.Int_Comp);
	leal	12(%esi), %eax	#, tmp111
# dry.c:773:     Proc_7 (Next_Record->variant.var_1.Int_Comp, 10, 
	pushl	%eax	# tmp111
	.cfi_def_cfa_offset 24
	pushl	$10	#
	.cfi_def_cfa_offset 28
	pushl	12(%esi)	# Next_Record_15->variant.var_1.Int_Comp
	.cfi_def_cfa_offset 32
	call	Proc_7@PLT	#
	addl	$16, %esp	#,
	.cfi_def_cfa_offset 16
	jmp	.L7	#
	.cfi_endproc
.LFE23:
	.size	Proc_1, .-Proc_1
	.globl	Proc_4
	.type	Proc_4, @function
Proc_4:
.LFB26:
	.cfi_startproc
	call	__x86.get_pc_thunk.ax	#
	addl	$_GLOBAL_OFFSET_TABLE_, %eax	# tmp82,
# dry.c:820:   Bool_Loc = Ch_1_Glob == 'A';
	cmpb	$65, Ch_1_Glob@GOTOFF(%eax)	#, Ch_1_Glob
	sete	%dl	#, Bool_Loc
	movzbl	%dl, %edx	# Bool_Loc, Bool_Loc
# dry.c:821:   Bool_Glob = Bool_Loc | Bool_Glob;
	orl	%edx, Bool_Glob@GOTOFF(%eax)	# Bool_Loc, Bool_Glob
# dry.c:822:   Ch_2_Glob = 'B';
	movb	$66, Ch_2_Glob@GOTOFF(%eax)	#, Ch_2_Glob
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
	.text
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
	pushl	%ecx	#
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$120, %esp	#,
	call	__x86.get_pc_thunk.bx	#
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx	# tmp82,
	movl	(%ecx), %edx	# argc, argc
	movl	4(%ecx), %eax	# argv, argv
# dry.c:561:   if (argc > 2)
	cmpl	$2, %edx	#, argc
	jg	.L34	#,
# dry.c:571:      Number_Of_Runs = NUMBER_OF_RUNS;
	movl	$50000, -116(%ebp)	#, %sfp
# dry.c:566:   if (argc == 2)
	je	.L35	#,
.L16:
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	subl	$12, %esp	#,
	pushl	$48	#
	call	malloc@PLT	#
	movl	%eax, %esi	# tmp397, tmp216
# dry.c:580:   Next_Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	%eax, Next_Ptr_Glob@GOTOFF(%ebx)	# tmp216, Next_Ptr_Glob
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	$48, (%esp)	#,
	call	malloc@PLT	#
# dry.c:581:   Ptr_Glob = (Rec_Pointer) malloc (sizeof (Rec_Type));
	movl	%eax, Ptr_Glob@GOTOFF(%ebx)	# tmp217, Ptr_Glob
# dry.c:583:   Ptr_Glob->Ptr_Comp                    = Next_Ptr_Glob;
	movl	%esi, (%eax)	# tmp216, MEM[(struct record *)_5].Ptr_Comp
# dry.c:584:   Ptr_Glob->Discr                       = Ident_1;
	movl	$0, 4(%eax)	#, MEM[(struct record *)_5].Discr
# dry.c:585:   Ptr_Glob->variant.var_1.Enum_Comp     = Ident_3;
	movl	$2, 8(%eax)	#, MEM[(struct record *)_5].variant.var_1.Enum_Comp
# dry.c:586:   Ptr_Glob->variant.var_1.Int_Comp      = 40;
	movl	$40, 12(%eax)	#, MEM[(struct record *)_5].variant.var_1.Int_Comp
# dry.c:587:   strcpy (Ptr_Glob->variant.var_1.Str_Comp, 
	movl	$1498564676, 16(%eax)	#, MEM <char[1:31]> [(void *)_5 + 16B]
	movl	$1313821779, 20(%eax)	#, MEM <char[1:31]> [(void *)_5 + 16B]
	movl	$1380982853, 24(%eax)	#, MEM <char[1:31]> [(void *)_5 + 16B]
	movl	$1095911247, 28(%eax)	#, MEM <char[1:31]> [(void *)_5 + 16B]
	movl	$1394617421, 32(%eax)	#, MEM <char[1:31]> [(void *)_5 + 16B]
	movl	$541412687, 36(%eax)	#, MEM <char[1:31]> [(void *)_5 + 16B]
	movl	$1230132307, 40(%eax)	#, MEM <char[1:31]> [(void *)_5 + 16B]
	movl	$4673097, 43(%eax)	#, MEM <char[1:31]> [(void *)_5 + 16B]
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
	movl	$10, (%esp)	#,
	call	putchar@PLT	#
# dry.c:598:   printf ("Dhrystone Benchmark, Version %s\n", Version);
	addl	$8, %esp	#,
	leal	.LC1@GOTOFF(%ebx), %eax	#, tmp220
	pushl	%eax	# tmp220
	leal	.LC2@GOTOFF(%ebx), %eax	#, tmp221
	pushl	%eax	# tmp221
	call	printf@PLT	#
# dry.c:599:   if (Reg)
	addl	$16, %esp	#,
	cmpl	$0, Reg@GOTOFF(%ebx)	#, Reg
	je	.L17	#,
# dry.c:601:     printf ("Program compiled with 'register' attribute\n");
	subl	$12, %esp	#,
	leal	.LC3@GOTOFF(%ebx), %eax	#, tmp222
	pushl	%eax	# tmp222
	call	puts@PLT	#
	addl	$16, %esp	#,
.L18:
# dry.c:607:   printf ("Using %s, HZ=%d\n", CLOCK_TYPE, HZ);
	subl	$4, %esp	#,
	pushl	$100	#
	leal	.LC5@GOTOFF(%ebx), %eax	#, tmp224
	pushl	%eax	# tmp224
	leal	.LC6@GOTOFF(%ebx), %eax	#, tmp225
	pushl	%eax	# tmp225
	call	printf@PLT	#
# dry.c:608:   printf ("\n");
	movl	$10, (%esp)	#,
	call	putchar@PLT	#
# dry.c:610:   Done = false;
	movl	$0, Done@GOTOFF(%ebx)	#, Done
	addl	$16, %esp	#,
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	leal	-36(%ebp), %eax	#, tmp393
	movl	%eax, -112(%ebp)	# tmp393, %sfp
	movl	-108(%ebp), %esi	# %sfp, Int_2_Loc
	jmp	.L25	#
.L34:
# dry.c:563:      printf ("Usage: %s [number of loops]\n", argv[0]);
	subl	$8, %esp	#,
	pushl	(%eax)	# *argv_145(D)
	leal	.LC0@GOTOFF(%ebx), %eax	#, tmp215
	pushl	%eax	# tmp215
	call	printf@PLT	#
# dry.c:564:      exit (1);
	movl	$1, (%esp)	#,
	call	exit@PLT	#
.L35:
# /usr/include/stdlib.h:364:   return (int) strtol (__nptr, (char **) NULL, 10);
	subl	$4, %esp	#,
	pushl	$10	#
	pushl	$0	#
	pushl	4(%eax)	# MEM[(char * *)argv_145(D) + 4B]
	call	strtol@PLT	#
	movl	%eax, -116(%ebp)	# Number_Of_Runs, %sfp
# dry.c:573:   if (Number_Of_Runs <= 0)
	addl	$16, %esp	#,
	testl	%eax, %eax	# Number_Of_Runs
	jg	.L16	#,
# dry.c:575:      Number_Of_Runs = NUMBER_OF_RUNS;
	movl	$50000, -116(%ebp)	#, %sfp
	jmp	.L16	#
.L17:
# dry.c:605:     printf ("Program compiled without 'register' attribute\n");
	subl	$12, %esp	#,
	leal	.LC4@GOTOFF(%ebx), %eax	#, tmp223
	pushl	%eax	# tmp223
	call	puts@PLT	#
	addl	$16, %esp	#,
	jmp	.L18	#
.L37:
# dry.c:651: 	  Proc_6 (Ident_1, &Enum_Loc);
	subl	$8, %esp	#,
	pushl	-112(%ebp)	# %sfp
	pushl	$0	#
	call	Proc_6@PLT	#
# dry.c:652: 	  strcpy (Str_2_Loc, "DHRYSTONE PROGRAM, 3'RD STRING");
	movl	$1498564676, -98(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1313821779, -94(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1380982853, -90(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1095911247, -86(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$857746509, -82(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$541348391, -78(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$1230132307, -74(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
	movl	$4673097, -71(%ebp)	#, MEM <unsigned char[31]> [(char * {ref-all})&Str_2_Loc]
# dry.c:654: 	  Int_Glob = Run_Index;
	movl	%esi, Int_Glob@GOTOFF(%ebx)	# Run_Index, Int_Glob
	addl	$16, %esp	#,
	movl	%esi, -108(%ebp)	# Run_Index, %sfp
.L21:
	leal	1(%edi), %eax	#, _277
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movl	%eax, %edi	# _277, Ch_Index
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	cmpb	%al, Ch_2_Glob@GOTOFF(%ebx)	# _277, Ch_2_Glob
	jl	.L36	#,
.L22:
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	subl	$8, %esp	#,
	pushl	$67	#
	movl	%edi, %eax	# Ch_Index, Ch_Index
	movsbl	%al, %eax	# Ch_Index, Ch_Index
	pushl	%eax	# Ch_Index
	call	Func_1@PLT	#
# dry.c:648: 	if (Enum_Loc == Func_1 (Ch_Index, 'C'))
	addl	$16, %esp	#,
	cmpl	-36(%ebp), %eax	# Enum_Loc, tmp400
	jne	.L21	#,
	jmp	.L37	#
.L36:
	movl	-108(%ebp), %edx	# %sfp, Int_2_Loc
.L20:
# dry.c:658:       Int_2_Loc = Int_2_Loc * Int_1_Loc;
	leal	(%edx,%edx,2), %eax	#, tmp241
	movl	%eax, -108(%ebp)	# tmp241, %sfp
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	-32(%ebp), %edi	# Int_3_Loc, Int_3_Loc.18_25
	cltd
	idivl	%edi	# Int_3_Loc.18_25
	movl	%eax, -120(%ebp)	# tmp242, %sfp
# dry.c:659:       Int_1_Loc = Int_2_Loc / Int_3_Loc;
	movl	%eax, -28(%ebp)	# tmp242, Int_1_Loc
# dry.c:662:       Proc_2 (&Int_1_Loc);
	subl	$12, %esp	#,
	leal	-28(%ebp), %eax	#, tmp244
	pushl	%eax	# tmp244
	call	Proc_2	#
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	addl	$1, %esi	#, Run_Index
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	addl	$16, %esp	#,
	movl	-116(%ebp), %eax	# %sfp, Number_Of_Runs
	cmpl	%eax, %esi	# Number_Of_Runs, Run_Index
	jg	.L38	#,
.L23:
# dry.c:624:       Proc_5();
	call	Proc_5	#
# dry.c:625:       Proc_4();
	call	Proc_4	#
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
	leal	-98(%ebp), %eax	#, tmp230
	pushl	%eax	# tmp230
	leal	-67(%ebp), %eax	#, tmp231
	pushl	%eax	# tmp231
	call	Func_2@PLT	#
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	addl	$12, %esp	#,
	testl	%eax, %eax	# tmp399
	sete	%al	#, tmp232
	movzbl	%al, %eax	# tmp232, tmp232
# dry.c:631:       Bool_Glob = ! Func_2 (Str_1_Loc, Str_2_Loc);
	movl	%eax, Bool_Glob@GOTOFF(%ebx)	# tmp232, Bool_Glob
# dry.c:635: 	Int_3_Loc = 5 * Int_1_Loc - Int_2_Loc;
	movl	$7, -32(%ebp)	#, Int_3_Loc
# dry.c:637: 	Proc_7 (Int_1_Loc, Int_2_Loc, &Int_3_Loc);
	leal	-32(%ebp), %eax	#, tmp234
	pushl	%eax	# tmp234
	pushl	$3	#
	pushl	$2	#
	call	Proc_7@PLT	#
# dry.c:639: 	Int_1_Loc += 1;
	movl	$3, -28(%ebp)	#, Int_1_Loc
# dry.c:642:       Proc_8 (Arr_1_Glob, Arr_2_Glob, Int_1_Loc, Int_3_Loc);
	pushl	-32(%ebp)	# Int_3_Loc
	pushl	$3	#
	leal	Arr_2_Glob@GOTOFF(%ebx), %eax	#, tmp235
	pushl	%eax	# tmp235
	leal	Arr_1_Glob@GOTOFF(%ebx), %eax	#, tmp236
	pushl	%eax	# tmp236
	call	Proc_8@PLT	#
# dry.c:644:       Proc_1 (Ptr_Glob);
	addl	$20, %esp	#,
	pushl	Ptr_Glob@GOTOFF(%ebx)	# Ptr_Glob
	call	Proc_1	#
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	addl	$16, %esp	#,
	cmpb	$64, Ch_2_Glob@GOTOFF(%ebx)	#, Ch_2_Glob
	jle	.L29	#,
# dry.c:645:       for (Ch_Index = 'A'; Ch_Index <= Ch_2_Glob; ++Ch_Index)
	movl	$65, %edi	#, Ch_Index
# dry.c:628:       Int_2_Loc = 3;
	movl	$3, %edx	#, Int_2_Loc
	movl	%edx, -108(%ebp)	# Int_2_Loc, %sfp
	jmp	.L22	#
.L29:
	movl	$3, %edx	#, Int_2_Loc
	jmp	.L20	#
.L38:
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	movl	-108(%ebp), %eax	# %sfp, tmp241
	subl	%edi, %eax	# Int_3_Loc.18_25, tmp241
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	leal	0(,%eax,8), %edx	#, tmp247
	subl	%eax, %edx	# tmp245, tmp248
# dry.c:660:       Int_2_Loc = 7 * (Int_2_Loc - Int_3_Loc) - Int_1_Loc;
	movl	-120(%ebp), %eax	# %sfp, tmp242
	subl	%eax, %edx	# tmp242, tmp248
	movl	%edx, %esi	# tmp248, Int_2_Loc
.L19:
# dry.c:671:     Stop_Timer();
	subl	$12, %esp	#,
	leal	time_info@GOTOFF(%ebx), %eax	#, tmp249
	pushl	%eax	# tmp249
	call	times@PLT	#
	movl	time_info@GOTOFF(%ebx), %eax	# time_info.tms_utime, _29
	movl	%eax, End_Time@GOTOFF(%ebx)	# _29, End_Time
# dry.c:673:     User_Time = End_Time - Begin_Time;
	subl	Begin_Time@GOTOFF(%ebx), %eax	# Begin_Time, _31
# dry.c:673:     User_Time = End_Time - Begin_Time;
	movl	%eax, User_Time@GOTOFF(%ebx)	# _31, User_Time
# dry.c:675:     if (User_Time < Too_Small_Time)
	addl	$16, %esp	#,
	cmpl	$199, %eax	#, _31
	jle	.L39	#,
# dry.c:679:     } else Done = true;
	movl	%esi, -108(%ebp)	# Int_2_Loc, %sfp
	movl	$1, Done@GOTOFF(%ebx)	#, Done
.L26:
# dry.c:682:   fprintf (stderr, "Final values of the variables used in the benchmark:\n");
	movl	stderr@GOT(%ebx), %edi	#, tmp256
	pushl	(%edi)	# stderr
	pushl	$53	#
	pushl	$1	#
	leal	.LC9@GOTOFF(%ebx), %eax	#, tmp257
	pushl	%eax	# tmp257
	call	fwrite@PLT	#
# dry.c:683:   fprintf (stderr, "\n");
	addl	$8, %esp	#,
	pushl	(%edi)	# stderr
	pushl	$10	#
	call	fputc@PLT	#
# dry.c:684:   fprintf (stderr, "Int_Glob:            %d\n", Int_Glob);
	addl	$12, %esp	#,
	pushl	Int_Glob@GOTOFF(%ebx)	# Int_Glob
	leal	.LC10@GOTOFF(%ebx), %eax	#, tmp259
	pushl	%eax	# tmp259
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:685:   fprintf (stderr, "        should be:   %d\n", 5);
	addl	$12, %esp	#,
	pushl	$5	#
	leal	.LC11@GOTOFF(%ebx), %esi	#, tmp261
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:686:   fprintf (stderr, "Bool_Glob:           %d\n", Bool_Glob);
	addl	$12, %esp	#,
	pushl	Bool_Glob@GOTOFF(%ebx)	# Bool_Glob
	leal	.LC12@GOTOFF(%ebx), %eax	#, tmp263
	pushl	%eax	# tmp263
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:687:   fprintf (stderr, "        should be:   %d\n", 1);
	addl	$12, %esp	#,
	pushl	$1	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:688:   fprintf (stderr, "Ch_1_Glob:           %c\n", Ch_1_Glob);
	addl	$12, %esp	#,
	movsbl	Ch_1_Glob@GOTOFF(%ebx), %eax	# Ch_1_Glob, Ch_1_Glob
	pushl	%eax	# Ch_1_Glob
	leal	.LC13@GOTOFF(%ebx), %eax	#, tmp268
	pushl	%eax	# tmp268
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:689:   fprintf (stderr, "        should be:   %c\n", 'A');
	addl	$12, %esp	#,
	pushl	$65	#
	leal	.LC14@GOTOFF(%ebx), %eax	#, tmp270
	movl	%eax, -112(%ebp)	# tmp270, %sfp
	pushl	%eax	#
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:690:   fprintf (stderr, "Ch_2_Glob:           %c\n", Ch_2_Glob);
	addl	$12, %esp	#,
	movsbl	Ch_2_Glob@GOTOFF(%ebx), %eax	# Ch_2_Glob, Ch_2_Glob
	pushl	%eax	# Ch_2_Glob
	leal	.LC15@GOTOFF(%ebx), %eax	#, tmp273
	pushl	%eax	# tmp273
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:691:   fprintf (stderr, "        should be:   %c\n", 'B');
	addl	$12, %esp	#,
	pushl	$66	#
	pushl	-112(%ebp)	# %sfp
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:692:   fprintf (stderr, "Arr_1_Glob[8]:       %d\n", Arr_1_Glob[8]);
	addl	$12, %esp	#,
	pushl	32+Arr_1_Glob@GOTOFF(%ebx)	# Arr_1_Glob[8]
	leal	.LC16@GOTOFF(%ebx), %eax	#, tmp278
	pushl	%eax	# tmp278
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:693:   fprintf (stderr, "        should be:   %d\n", 7);
	addl	$12, %esp	#,
	pushl	$7	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:694:   fprintf (stderr, "Arr_2_Glob[8][7]:    %d\n", Arr_2_Glob[8][7]);
	addl	$12, %esp	#,
	pushl	1628+Arr_2_Glob@GOTOFF(%ebx)	# Arr_2_Glob[8][7]
	leal	.LC17@GOTOFF(%ebx), %eax	#, tmp283
	pushl	%eax	# tmp283
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:695:   fprintf (stderr, "        should be:   Number_Of_Runs + 10\n");
	pushl	(%edi)	# stderr
	pushl	$41	#
	pushl	$1	#
	leal	.LC18@GOTOFF(%ebx), %eax	#, tmp286
	pushl	%eax	# tmp286
	call	fwrite@PLT	#
# dry.c:696:   fprintf (stderr, "Ptr_Glob->\n");
	addl	$32, %esp	#,
	pushl	(%edi)	# stderr
	pushl	$11	#
	pushl	$1	#
	leal	.LC19@GOTOFF(%ebx), %eax	#, tmp288
	pushl	%eax	# tmp288
	call	fwrite@PLT	#
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	addl	$12, %esp	#,
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
# dry.c:697:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Ptr_Glob->Ptr_Comp);
	pushl	(%eax)	# Ptr_Glob.44_56->Ptr_Comp
	leal	.LC20@GOTOFF(%ebx), %eax	#, tmp290
	movl	%eax, -112(%ebp)	# tmp290, %sfp
	pushl	%eax	#
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:698:   fprintf (stderr, "        should be:   (implementation-dependent)\n");
	pushl	(%edi)	# stderr
	pushl	$48	#
	pushl	$1	#
	leal	.LC21@GOTOFF(%ebx), %eax	#, tmp293
	pushl	%eax	# tmp293
	call	fwrite@PLT	#
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	addl	$28, %esp	#,
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
# dry.c:699:   fprintf (stderr, "  Discr:             %d\n", Ptr_Glob->Discr);
	pushl	4(%eax)	# Ptr_Glob.47_61->Discr
	leal	.LC22@GOTOFF(%ebx), %ecx	#, tmp295
	movl	%ecx, -120(%ebp)	# tmp295, %sfp
	pushl	%ecx	#
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:700:   fprintf (stderr, "        should be:   %d\n", 0);
	addl	$12, %esp	#,
	pushl	$0	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	addl	$12, %esp	#,
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
# dry.c:701:   fprintf (stderr, "  Enum_Comp:         %d\n", Ptr_Glob->variant.var_1.Enum_Comp);
	pushl	8(%eax)	# Ptr_Glob.50_65->variant.var_1.Enum_Comp
	leal	.LC23@GOTOFF(%ebx), %edx	#, tmp300
	movl	%edx, -124(%ebp)	# tmp300, %sfp
	pushl	%edx	#
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:702:   fprintf (stderr, "        should be:   %d\n", 2);
	addl	$12, %esp	#,
	pushl	$2	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:703:   fprintf (stderr, "  Int_Comp:          %d\n", Ptr_Glob->variant.var_1.Int_Comp);
	addl	$12, %esp	#,
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
	pushl	12(%eax)	# Ptr_Glob.53_69->variant.var_1.Int_Comp
	leal	.LC24@GOTOFF(%ebx), %eax	#, tmp305
	movl	%eax, -128(%ebp)	# tmp305, %sfp
	pushl	%eax	#
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:704:   fprintf (stderr, "        should be:   %d\n", 17);
	addl	$12, %esp	#,
	pushl	$17	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:705:   fprintf (stderr, "  Str_Comp:          %s\n", Ptr_Glob->variant.var_1.Str_Comp);
	addl	$12, %esp	#,
	movl	Ptr_Glob@GOTOFF(%ebx), %eax	# Ptr_Glob, Ptr_Glob
	addl	$16, %eax	#, tmp309
	pushl	%eax	# tmp309
	leal	.LC25@GOTOFF(%ebx), %ecx	#, tmp311
	movl	%ecx, -132(%ebp)	# tmp311, %sfp
	pushl	%ecx	#
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:706:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	pushl	(%edi)	# stderr
	pushl	$52	#
	pushl	$1	#
	leal	.LC26@GOTOFF(%ebx), %edx	#, tmp314
	movl	%edx, -136(%ebp)	# tmp314, %sfp
	pushl	%edx	#
	call	fwrite@PLT	#
# dry.c:707:   fprintf (stderr, "Next_Ptr_Glob->\n");
	addl	$32, %esp	#,
	pushl	(%edi)	# stderr
	pushl	$16	#
	pushl	$1	#
	leal	.LC27@GOTOFF(%ebx), %eax	#, tmp316
	pushl	%eax	# tmp316
	call	fwrite@PLT	#
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	addl	$12, %esp	#,
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:708:   fprintf (stderr, "  Ptr_Comp:          %ld\n", (intptr_t) Next_Ptr_Glob->Ptr_Comp);
	pushl	(%eax)	# Next_Ptr_Glob.60_78->Ptr_Comp
	pushl	-112(%ebp)	# %sfp
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:709:   fprintf (stderr, "        should be:   (implementation-dependent), same as above\n");
	pushl	(%edi)	# stderr
	pushl	$63	#
	pushl	$1	#
	leal	.LC28@GOTOFF(%ebx), %eax	#, tmp321
	pushl	%eax	# tmp321
	call	fwrite@PLT	#
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	addl	$28, %esp	#,
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:710:   fprintf (stderr, "  Discr:             %d\n", Next_Ptr_Glob->Discr);
	pushl	4(%eax)	# Next_Ptr_Glob.63_83->Discr
	pushl	-120(%ebp)	# %sfp
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:711:   fprintf (stderr, "        should be:   %d\n", 0);
	addl	$12, %esp	#,
	pushl	$0	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	addl	$12, %esp	#,
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob
# dry.c:712:   fprintf (stderr, "  Enum_Comp:         %d\n", Next_Ptr_Glob->variant.var_1.Enum_Comp);
	pushl	8(%eax)	# Next_Ptr_Glob.66_87->variant.var_1.Enum_Comp
	pushl	-124(%ebp)	# %sfp
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:713:   fprintf (stderr, "        should be:   %d\n", 1);
	addl	$12, %esp	#,
	pushl	$1	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:714:   fprintf (stderr, "  Int_Comp:          %d\n", Next_Ptr_Glob->variant.var_1.Int_Comp);
	addl	$12, %esp	#,
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob
	pushl	12(%eax)	# Next_Ptr_Glob.69_91->variant.var_1.Int_Comp
	pushl	-128(%ebp)	# %sfp
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:715:   fprintf (stderr, "        should be:   %d\n", 18);
	addl	$12, %esp	#,
	pushl	$18	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:716:   fprintf (stderr, "  Str_Comp:          %s\n",
	addl	$12, %esp	#,
	movl	Next_Ptr_Glob@GOTOFF(%ebx), %eax	# Next_Ptr_Glob, Next_Ptr_Glob
	addl	$16, %eax	#, tmp337
	pushl	%eax	# tmp337
	pushl	-132(%ebp)	# %sfp
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:718:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, SOME STRING\n");
	pushl	(%edi)	# stderr
	pushl	$52	#
	pushl	$1	#
	pushl	-136(%ebp)	# %sfp
	call	fwrite@PLT	#
# dry.c:719:   fprintf (stderr, "Int_1_Loc:           %d\n", Int_1_Loc);
	addl	$28, %esp	#,
	pushl	-28(%ebp)	# Int_1_Loc
	leal	.LC29@GOTOFF(%ebx), %eax	#, tmp343
	pushl	%eax	# tmp343
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:720:   fprintf (stderr, "        should be:   %d\n", 5);
	addl	$12, %esp	#,
	pushl	$5	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:721:   fprintf (stderr, "Int_2_Loc:           %d\n", Int_2_Loc);
	addl	$12, %esp	#,
	pushl	-108(%ebp)	# %sfp
	leal	.LC30@GOTOFF(%ebx), %eax	#, tmp347
	pushl	%eax	# tmp347
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:722:   fprintf (stderr, "        should be:   %d\n", 13);
	addl	$12, %esp	#,
	pushl	$13	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:723:   fprintf (stderr, "Int_3_Loc:           %d\n", Int_3_Loc);
	addl	$12, %esp	#,
	pushl	-32(%ebp)	# Int_3_Loc
	leal	.LC31@GOTOFF(%ebx), %eax	#, tmp351
	pushl	%eax	# tmp351
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:724:   fprintf (stderr, "        should be:   %d\n", 7);
	addl	$12, %esp	#,
	pushl	$7	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:725:   fprintf (stderr, "Enum_Loc:            %d\n", Enum_Loc);
	addl	$12, %esp	#,
	pushl	-36(%ebp)	# Enum_Loc
	leal	.LC32@GOTOFF(%ebx), %eax	#, tmp355
	pushl	%eax	# tmp355
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:726:   fprintf (stderr, "        should be:   %d\n", 1);
	addl	$12, %esp	#,
	pushl	$1	#
	pushl	%esi	# tmp261
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:727:   fprintf (stderr, "Str_1_Loc:           %s\n", Str_1_Loc);
	addl	$12, %esp	#,
	leal	-67(%ebp), %eax	#, tmp359
	pushl	%eax	# tmp359
	leal	.LC33@GOTOFF(%ebx), %eax	#, tmp360
	pushl	%eax	# tmp360
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:728:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 1'ST STRING\n");
	pushl	(%edi)	# stderr
	pushl	$52	#
	pushl	$1	#
	leal	.LC34@GOTOFF(%ebx), %eax	#, tmp363
	pushl	%eax	# tmp363
	call	fwrite@PLT	#
# dry.c:729:   fprintf (stderr, "Str_2_Loc:           %s\n", Str_2_Loc);
	addl	$28, %esp	#,
	leal	-98(%ebp), %eax	#, tmp364
	pushl	%eax	# tmp364
	leal	.LC35@GOTOFF(%ebx), %eax	#, tmp365
	pushl	%eax	# tmp365
	pushl	(%edi)	# stderr
	call	fprintf@PLT	#
# dry.c:730:   fprintf (stderr, "        should be:   DHRYSTONE PROGRAM, 2'ND STRING\n");
	pushl	(%edi)	# stderr
	pushl	$52	#
	pushl	$1	#
	leal	.LC36@GOTOFF(%ebx), %eax	#, tmp368
	pushl	%eax	# tmp368
	call	fwrite@PLT	#
# dry.c:731:   fprintf (stderr, "\n");
	addl	$24, %esp	#,
	pushl	(%edi)	# stderr
	pushl	$10	#
	call	fputc@PLT	#
# dry.c:734:     Microseconds = (float) User_Time * Mic_secs_Per_Second 
	fildl	User_Time@GOTOFF(%ebx)	# User_Time
# dry.c:735:                         / ((float) HZ * ((float) Number_Of_Runs));
	fildl	-116(%ebp)	# %sfp
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
	leal	.LC39@GOTOFF(%ebx), %eax	#, tmp379
	movl	%eax, (%esp)	# tmp379,
	call	printf@PLT	#
# dry.c:740:     printf ("%10.2f \n", Microseconds);
	flds	Microseconds@GOTOFF(%ebx)	# Microseconds
	fstpl	4(%esp)	#
	leal	.LC40@GOTOFF(%ebx), %eax	#, tmp381
	movl	%eax, (%esp)	# tmp381,
	call	printf@PLT	#
# dry.c:741:     printf ("Dhrystones per Second:                      ");
	leal	.LC41@GOTOFF(%ebx), %eax	#, tmp382
	movl	%eax, (%esp)	# tmp382,
	call	printf@PLT	#
# dry.c:742:     printf ("%10.0f \n", Dhrystones_Per_Second);
	flds	Dhrystones_Per_Second@GOTOFF(%ebx)	# Dhrystones_Per_Second
	fstpl	4(%esp)	#
	leal	.LC42@GOTOFF(%ebx), %eax	#, tmp384
	movl	%eax, (%esp)	# tmp384,
	call	printf@PLT	#
# dry.c:743:     printf ("\n");
	movl	$10, (%esp)	#,
	call	putchar@PLT	#
	addl	$16, %esp	#,
# dry.c:745: }
	movl	$0, %eax	#,
	leal	-16(%ebp), %esp	#,
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
.L39:
	.cfi_restore_state
# dry.c:677:       printf ("too few\n");
	subl	$12, %esp	#,
	leal	.LC8@GOTOFF(%ebx), %eax	#, tmp251
	pushl	%eax	# tmp251
	call	puts@PLT	#
# dry.c:678:       Number_Of_Runs = Number_Of_Runs * 10;
	movl	-116(%ebp), %eax	# %sfp, Number_Of_Runs
	leal	(%eax,%eax,4), %eax	#, tmp254
	addl	%eax, %eax	# Number_Of_Runs
	movl	%eax, -116(%ebp)	# Number_Of_Runs, %sfp
# dry.c:611:   while (!Done) {
	addl	$16, %esp	#,
	cmpl	$0, Done@GOTOFF(%ebx)	#, Done
	jne	.L40	#,
.L25:
# dry.c:613:     printf ("Trying %d runs: ", Number_Of_Runs);
	subl	$8, %esp	#,
	movl	-116(%ebp), %edi	# %sfp, Number_Of_Runs
	pushl	%edi	# Number_Of_Runs
	leal	.LC7@GOTOFF(%ebx), %eax	#, tmp226
	pushl	%eax	# tmp226
	call	printf@PLT	#
# dry.c:619:     Start_Timer();
	leal	time_info@GOTOFF(%ebx), %eax	#, tmp227
	movl	%eax, (%esp)	# tmp227,
	call	times@PLT	#
	movl	time_info@GOTOFF(%ebx), %eax	# time_info.tms_utime, time_info.tms_utime
	movl	%eax, Begin_Time@GOTOFF(%ebx)	# time_info.tms_utime, Begin_Time
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	addl	$16, %esp	#,
	testl	%edi, %edi	# Number_Of_Runs
	jle	.L19	#,
# dry.c:621:     for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index)
	movl	$1, %esi	#, Run_Index
	jmp	.L23	#
.L40:
	movl	%esi, -108(%ebp)	# Int_2_Loc, %sfp
	jmp	.L26	#
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
	.section	.text.__x86.get_pc_thunk.di,"axG",@progbits,__x86.get_pc_thunk.di,comdat
	.globl	__x86.get_pc_thunk.di
	.hidden	__x86.get_pc_thunk.di
	.type	__x86.get_pc_thunk.di, @function
__x86.get_pc_thunk.di:
.LFB30:
	.cfi_startproc
	movl	(%esp), %edi	#,
	ret
	.cfi_endproc
.LFE30:
	.ident	"GCC: (Debian 12.2.0-14+deb12u1) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
