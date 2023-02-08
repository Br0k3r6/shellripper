	.file	"compile.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"[SHELLRIPPER][Info] Make sure that GCC is installed on your machine."
	.align 8
.LC1:
	.string	"[SHELLRIPPER][Compiler] Compiling shellripper project..."
	.align 8
.LC2:
	.string	"[SHELLRIPPER][Input] Output filename: "
.LC3:
	.string	"%s"
	.align 8
.LC4:
	.string	"[SHELLRIPPER][Compiler] Shellripper project successfully compiled!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4304, %rsp
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
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
	leaq	-4304(%rbp), %rax
	movabsq	$7810763972417905511, %rdx
	movabsq	$3346849006686401132, %rcx
	movq	%rdx, (%rax)
	movq	%rcx, 8(%rax)
	movabsq	$7955942316448686179, %rsi
	movabsq	$7507063451892802922, %rdi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	movabsq	$7953746372567067680, %rdx
	movabsq	$7596482303295120750, %rcx
	movq	%rdx, 32(%rax)
	movq	%rcx, 40(%rax)
	movabsq	$7594881432467025762, %rsi
	movabsq	$2337136348838651244, %rdi
	movq	%rsi, 48(%rax)
	movq	%rdi, 56(%rax)
	movb	$0, 64(%rax)
	leaq	-256(%rbp), %rdx
	leaq	-4304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-4304(%rbp), %rax
	movq	%rax, %rdi
	call	system@PLT
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
