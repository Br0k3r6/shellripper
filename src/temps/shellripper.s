	.file	"shellripper.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"[SHELLRIPPER][Inject.shellcode] Injecting shellcode into file..."
	.align 8
.LC1:
	.string	"[SHELLRIPPER][Inject.shellcode] Shellcode successfully injected into file: %s\n"
	.text
	.globl	linux_inject
	.type	linux_inject, @function
linux_inject:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1005024, %rsp
	movq	%rdi, -1005016(%rbp)
	movq	%rsi, -1005024(%rbp)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-1005008(%rbp), %rax
	movabsq	$2819369009271825779, %rcx
	movq	%rcx, (%rax)
	movabsq	$13332881798342432, %rcx
	movq	%rcx, 6(%rax)
	movq	-1005016(%rbp), %rdx
	leaq	-1005008(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-1005008(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	movq	%rax, %rdx
	leaq	-1005008(%rbp), %rax
	addq	%rdx, %rax
	movl	$2107183, (%rax)
	movq	-1005024(%rbp), %rdx
	leaq	-1005008(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-1005008(%rbp), %rax
	movq	%rax, %rdi
	call	system@PLT
	movq	-1005024(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	linux_inject, .-linux_inject
	.section	.rodata
	.align 8
.LC2:
	.string	"[SHELLRIPPER][Input] Enter the file to that you want to inject the shellcode >"
.LC3:
	.string	"%s"
	.align 8
.LC4:
	.string	"[SHELLRIPPER][Input] Enter the shellcode to inject >"
	.text
	.globl	shellcode_injection
	.type	shellcode_injection, @function
shellcode_injection:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1005264, %rsp
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-256(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-1005264(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-256(%rbp), %rdx
	leaq	-1005264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	linux_inject
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	shellcode_injection, .-shellcode_injection
	.section	.rodata
	.align 8
.LC5:
	.string	"         __         ____     _ "
	.align 8
.LC6:
	.string	"   _____/ /_  ___  / / /____(_)___  ____  ___  _____ "
	.align 8
.LC7:
	.string	"  / ___/ __ \\/ _ \\/ / / ___/ / __ \\/ __ \\/ _ \\/ ___/ "
	.align 8
.LC8:
	.string	" (__  ) / / /  __/ / / /  / / /_/ / /_/ /  __/ / "
	.align 8
.LC9:
	.string	"/____/_/ /_/\\___/_/_/_/  /_/ .___/ .___/\\___/_/ "
	.align 8
.LC10:
	.string	"                          /_/   /_/ \n"
	.text
	.globl	banner
	.type	banner, @function
banner:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	banner, .-banner
	.section	.rodata
.LC11:
	.string	"Standard options:"
	.align 8
.LC12:
	.string	"     [exit] Exits shellripper."
	.align 8
.LC13:
	.string	"     [help] Displays this message and exit."
.LC14:
	.string	"Injector options:"
	.align 8
.LC15:
	.string	"     [inject.shellcode] Starts the shellcode injector."
	.text
	.globl	helpfile
	.type	helpfile, @function
helpfile:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$10, %edi
	call	putchar@PLT
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$10, %edi
	call	putchar@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	helpfile, .-helpfile
	.section	.rodata
.LC16:
	.string	"help"
.LC17:
	.string	"inject.shellcode"
.LC18:
	.string	"exit"
	.text
	.globl	cmd_check
	.type	cmd_check, @function
cmd_check:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L6
	movq	-8(%rbp), %rax
	leaq	.LC16(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L7
	call	helpfile
	jmp	.L6
.L7:
	movq	-8(%rbp), %rax
	leaq	.LC17(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L8
	call	shellcode_injection
	jmp	.L6
.L8:
	movq	-8(%rbp), %rax
	leaq	.LC18(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L9
	movl	$0, %edi
	call	exit@PLT
.L9:
	movl	$0, %eax
	jmp	.L10
.L6:
	movl	$1, %eax
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	cmd_check, .-cmd_check
	.section	.rodata
.LC19:
	.string	"[SHELLRIPPER][Input] >"
	.align 8
.LC20:
	.string	"[SHELLRIPPER][Error] Not valid command specified!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4080, %rsp
	movl	%edi, -4068(%rbp)
	movq	%rsi, -4080(%rbp)
	call	banner
.L13:
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-4064(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-4064(%rbp), %rax
	movq	%rax, %rdi
	call	cmd_check
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.L13
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L13
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
