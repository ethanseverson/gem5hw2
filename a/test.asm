
test:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	push   0x2f9a(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 9b 2f 00 00 	bnd jmp *0x2f9b(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	f2 ff 25 ad 2f 00 00 	bnd jmp *0x2fad(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001050 <printf@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 75 2f 00 00 	bnd jmp *0x2f75(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	45 31 c0             	xor    %r8d,%r8d
    1076:	31 c9                	xor    %ecx,%ecx
    1078:	48 8d 3d 0d 01 00 00 	lea    0x10d(%rip),%rdi        # 118c <main>
    107f:	ff 15 53 2f 00 00    	call   *0x2f53(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt    
    1086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108d:	00 00 00 

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4010 <__TMC_END__>
    1097:	48 8d 05 72 2f 00 00 	lea    0x2f72(%rip),%rax        # 4010 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 36 2f 00 00 	mov    0x2f36(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 49 2f 00 00 	lea    0x2f49(%rip),%rdi        # 4010 <__TMC_END__>
    10c7:	48 8d 35 42 2f 00 00 	lea    0x2f42(%rip),%rsi        # 4010 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    0x2f05(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 05 2f 00 00 00 	cmpb   $0x0,0x2f05(%rip)        # 4010 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   %rbp
    110e:	48 83 3d e2 2e 00 00 	cmpq   $0x0,0x2ee2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    0x2ee6(%rip),%rdi        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 dd 2e 00 00 01 	movb   $0x1,0x2edd(%rip)        # 4010 <__TMC_END__>
    1133:	5d                   	pop    %rbp
    1134:	c3                   	ret    
    1135:	0f 1f 00             	nopl   (%rax)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001149 <subtract>:
    1149:	f3 0f 1e fa          	endbr64 
    114d:	55                   	push   %rbp
    114e:	48 89 e5             	mov    %rsp,%rbp
    1151:	f3 0f 11 45 ec       	movss  %xmm0,-0x14(%rbp)
    1156:	f3 0f 11 4d e8       	movss  %xmm1,-0x18(%rbp)
    115b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    115f:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
    1164:	f3 0f 10 45 ec       	movss  -0x14(%rbp),%xmm0
    1169:	f3 0f 10 55 e8       	movss  -0x18(%rbp),%xmm2
    116e:	f3 0f 11 55 e4       	movss  %xmm2,-0x1c(%rbp)
    1173:	f3 0f 11 45 e0       	movss  %xmm0,-0x20(%rbp)
    1178:	d9 45 e4             	flds   -0x1c(%rbp)
    117b:	d9 45 e0             	flds   -0x20(%rbp)
    117e:	d8 e9                	fsubr  %st(1),%st
    1180:	dd d9                	fstp   %st(1)
    1182:	d9 5d fc             	fstps  -0x4(%rbp)
    1185:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
    118a:	5d                   	pop    %rbp
    118b:	c3                   	ret    

000000000000118c <main>:
    118c:	f3 0f 1e fa          	endbr64 
    1190:	55                   	push   %rbp
    1191:	48 89 e5             	mov    %rsp,%rbp
    1194:	48 83 ec 10          	sub    $0x10,%rsp
    1198:	f3 0f 10 05 70 0e 00 	movss  0xe70(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    119f:	00 
    11a0:	f3 0f 11 45 f8       	movss  %xmm0,-0x8(%rbp)
    11a5:	f3 0f 10 05 67 0e 00 	movss  0xe67(%rip),%xmm0        # 2014 <_IO_stdin_used+0x14>
    11ac:	00 
    11ad:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
    11b2:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
    11b7:	8b 45 f8             	mov    -0x8(%rbp),%eax
    11ba:	0f 28 c8             	movaps %xmm0,%xmm1
    11bd:	66 0f 6e c0          	movd   %eax,%xmm0
    11c1:	e8 83 ff ff ff       	call   1149 <subtract>
    11c6:	66 0f 7e c0          	movd   %xmm0,%eax
    11ca:	89 45 f8             	mov    %eax,-0x8(%rbp)
    11cd:	66 0f ef d2          	pxor   %xmm2,%xmm2
    11d1:	f3 0f 5a 55 f8       	cvtss2sd -0x8(%rbp),%xmm2
    11d6:	66 48 0f 7e d0       	movq   %xmm2,%rax
    11db:	66 48 0f 6e c0       	movq   %rax,%xmm0
    11e0:	48 8d 05 1d 0e 00 00 	lea    0xe1d(%rip),%rax        # 2004 <_IO_stdin_used+0x4>
    11e7:	48 89 c7             	mov    %rax,%rdi
    11ea:	b8 01 00 00 00       	mov    $0x1,%eax
    11ef:	e8 5c fe ff ff       	call   1050 <printf@plt>
    11f4:	b8 00 00 00 00       	mov    $0x0,%eax
    11f9:	c9                   	leave  
    11fa:	c3                   	ret    

Disassembly of section .fini:

00000000000011fc <_fini>:
    11fc:	f3 0f 1e fa          	endbr64 
    1200:	48 83 ec 08          	sub    $0x8,%rsp
    1204:	48 83 c4 08          	add    $0x8,%rsp
    1208:	c3                   	ret    
