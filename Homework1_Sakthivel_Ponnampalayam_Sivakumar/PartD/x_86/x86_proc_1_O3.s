0000000000401250 <Proc_1>:
Proc_1():
  401250:	55                   	push   rbp
  401251:	48 89 fd             	mov    rbp,rdi
  401254:	53                   	push   rbx
  401255:	48 83 ec 08          	sub    rsp,0x8
  401259:	48 8b 05 80 36 20 00 	mov    rax,QWORD PTR [rip+0x203680]        # 6048e0 <Ptr_Glob>
  401260:	48 8b 1f             	mov    rbx,QWORD PTR [rdi]
  401263:	f3 0f 6f 00          	movdqu xmm0,XMMWORD PTR [rax]
  401267:	0f 11 03             	movups XMMWORD PTR [rbx],xmm0
  40126a:	f3 0f 6f 40 10       	movdqu xmm0,XMMWORD PTR [rax+0x10]
  40126f:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  401273:	f3 0f 6f 40 20       	movdqu xmm0,XMMWORD PTR [rax+0x20]
  401278:	0f 11 43 20          	movups XMMWORD PTR [rbx+0x20],xmm0
  40127c:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
  401280:	48 89 43 30          	mov    QWORD PTR [rbx+0x30],rax
  401284:	c7 47 10 05 00 00 00 	mov    DWORD PTR [rdi+0x10],0x5
  40128b:	c7 43 10 05 00 00 00 	mov    DWORD PTR [rbx+0x10],0x5
  401292:	48 8b 07             	mov    rax,QWORD PTR [rdi]
  401295:	48 89 03             	mov    QWORD PTR [rbx],rax
  401298:	48 8b 15 41 36 20 00 	mov    rdx,QWORD PTR [rip+0x203641]        # 6048e0 <Ptr_Glob>
  40129f:	48 85 d2             	test   rdx,rdx
  4012a2:	74 0d                	je     4012b1 <Proc_1+0x61>
  4012a4:	48 8b 02             	mov    rax,QWORD PTR [rdx]
  4012a7:	48 89 03             	mov    QWORD PTR [rbx],rax
  4012aa:	48 8b 15 2f 36 20 00 	mov    rdx,QWORD PTR [rip+0x20362f]        # 6048e0 <Ptr_Glob>
  4012b1:	8b 35 19 36 20 00    	mov    esi,DWORD PTR [rip+0x203619]        # 6048d0 <Int_Glob>
  4012b7:	48 83 c2 10          	add    rdx,0x10
  4012bb:	bf 0a 00 00 00       	mov    edi,0xa
  4012c0:	e8 ab fe ff ff       	call   401170 <Proc_7>
  4012c5:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
  4012c8:	85 c0                	test   eax,eax
  4012ca:	74 34                	je     401300 <Proc_1+0xb0>
  4012cc:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
  4012d0:	f3 0f 6f 00          	movdqu xmm0,XMMWORD PTR [rax]
  4012d4:	0f 11 45 00          	movups XMMWORD PTR [rbp+0x0],xmm0
  4012d8:	f3 0f 6f 40 10       	movdqu xmm0,XMMWORD PTR [rax+0x10]
  4012dd:	0f 11 45 10          	movups XMMWORD PTR [rbp+0x10],xmm0
  4012e1:	f3 0f 6f 40 20       	movdqu xmm0,XMMWORD PTR [rax+0x20]
  4012e6:	0f 11 45 20          	movups XMMWORD PTR [rbp+0x20],xmm0
  4012ea:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
  4012ee:	48 89 45 30          	mov    QWORD PTR [rbp+0x30],rax
  4012f2:	48 83 c4 08          	add    rsp,0x8
  4012f6:	5b                   	pop    rbx
  4012f7:	5d                   	pop    rbp
  4012f8:	c3                   	ret    
  4012f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401300:	c7 43 10 06 00 00 00 	mov    DWORD PTR [rbx+0x10],0x6
  401307:	8b 7d 0c             	mov    edi,DWORD PTR [rbp+0xc]
  40130a:	48 8d 73 0c          	lea    rsi,[rbx+0xc]
  40130e:	e8 0d fe ff ff       	call   401120 <Proc_6>
  401313:	48 8b 05 c6 35 20 00 	mov    rax,QWORD PTR [rip+0x2035c6]        # 6048e0 <Ptr_Glob>
  40131a:	8b 7b 10             	mov    edi,DWORD PTR [rbx+0x10]
  40131d:	48 8d 53 10          	lea    rdx,[rbx+0x10]
  401321:	be 0a 00 00 00       	mov    esi,0xa
  401326:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401329:	48 89 03             	mov    QWORD PTR [rbx],rax
  40132c:	48 83 c4 08          	add    rsp,0x8
  401330:	5b                   	pop    rbx
  401331:	5d                   	pop    rbp
  401332:	e9 39 fe ff ff       	jmp    401170 <Proc_7>
  401337:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40133e:	00 00 

