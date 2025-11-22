0000000000401645 <Proc_1>:
Proc_1():
  401645:	55                   	push   rbp
  401646:	48 89 e5             	mov    rbp,rsp
  401649:	53                   	push   rbx
  40164a:	48 83 ec 28          	sub    rsp,0x28
  40164e:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  401652:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401656:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401659:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  40165d:	48 8b 15 5c 1a 20 00 	mov    rdx,QWORD PTR [rip+0x201a5c]        # 6030c0 <Ptr_Glob>
  401664:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401668:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40166b:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  40166e:	48 8b 5a 08          	mov    rbx,QWORD PTR [rdx+0x8]
  401672:	48 89 08             	mov    QWORD PTR [rax],rcx
  401675:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  401679:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  40167d:	48 8b 5a 18          	mov    rbx,QWORD PTR [rdx+0x18]
  401681:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  401685:	48 89 58 18          	mov    QWORD PTR [rax+0x18],rbx
  401689:	48 8b 4a 20          	mov    rcx,QWORD PTR [rdx+0x20]
  40168d:	48 8b 5a 28          	mov    rbx,QWORD PTR [rdx+0x28]
  401691:	48 89 48 20          	mov    QWORD PTR [rax+0x20],rcx
  401695:	48 89 58 28          	mov    QWORD PTR [rax+0x28],rbx
  401699:	48 8b 52 30          	mov    rdx,QWORD PTR [rdx+0x30]
  40169d:	48 89 50 30          	mov    QWORD PTR [rax+0x30],rdx
  4016a1:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4016a5:	c7 40 10 05 00 00 00 	mov    DWORD PTR [rax+0x10],0x5
  4016ac:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4016b0:	8b 50 10             	mov    edx,DWORD PTR [rax+0x10]
  4016b3:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4016b7:	89 50 10             	mov    DWORD PTR [rax+0x10],edx
  4016ba:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4016be:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4016c1:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4016c5:	48 89 10             	mov    QWORD PTR [rax],rdx
  4016c8:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4016cc:	48 89 c7             	mov    rdi,rax
  4016cf:	e8 ea 00 00 00       	call   4017be <Proc_3>
  4016d4:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4016d8:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  4016db:	85 c0                	test   eax,eax
  4016dd:	75 52                	jne    401731 <Proc_1+0xec>
  4016df:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4016e3:	c7 40 10 06 00 00 00 	mov    DWORD PTR [rax+0x10],0x6
  4016ea:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4016ee:	48 8d 50 0c          	lea    rdx,[rax+0xc]
  4016f2:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4016f6:	8b 40 0c             	mov    eax,DWORD PTR [rax+0xc]
  4016f9:	48 89 d6             	mov    rsi,rdx
  4016fc:	89 c7                	mov    edi,eax
  4016fe:	e8 33 f1 ff ff       	call   400836 <Proc_6>
  401703:	48 8b 05 b6 19 20 00 	mov    rax,QWORD PTR [rip+0x2019b6]        # 6030c0 <Ptr_Glob>
  40170a:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  40170d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401711:	48 89 10             	mov    QWORD PTR [rax],rdx
  401714:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401718:	48 8d 50 10          	lea    rdx,[rax+0x10]
  40171c:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401720:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  401723:	be 0a 00 00 00       	mov    esi,0xa
  401728:	89 c7                	mov    edi,eax
  40172a:	e8 b4 f1 ff ff       	call   4008e3 <Proc_7>
  40172f:	eb 41                	jmp    401772 <Proc_1+0x12d>
  401731:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401735:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  401738:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  40173c:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  40173f:	48 8b 5a 08          	mov    rbx,QWORD PTR [rdx+0x8]
  401743:	48 89 08             	mov    QWORD PTR [rax],rcx
  401746:	48 89 58 08          	mov    QWORD PTR [rax+0x8],rbx
  40174a:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  40174e:	48 8b 5a 18          	mov    rbx,QWORD PTR [rdx+0x18]
  401752:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  401756:	48 89 58 18          	mov    QWORD PTR [rax+0x18],rbx
  40175a:	48 8b 4a 20          	mov    rcx,QWORD PTR [rdx+0x20]
  40175e:	48 8b 5a 28          	mov    rbx,QWORD PTR [rdx+0x28]
  401762:	48 89 48 20          	mov    QWORD PTR [rax+0x20],rcx
  401766:	48 89 58 28          	mov    QWORD PTR [rax+0x28],rbx
  40176a:	48 8b 52 30          	mov    rdx,QWORD PTR [rdx+0x30]
  40176e:	48 89 50 30          	mov    QWORD PTR [rax+0x30],rdx
  401772:	90                   	nop
  401773:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
  401777:	c9                   	leave  
  401778:	c3                   	ret    

