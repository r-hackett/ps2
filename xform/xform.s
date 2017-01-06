	.file	"xform.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	transform
	.type	transform, @function
transform:
.LFB36:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$516, %esp
	.cfi_def_cfa_offset 528
	movl	536(%esp), %edx
	movl	532(%esp), %eax
	movl	528(%esp), %esi
	movl	540(%esp), %ebx
	movl	544(%esp), %ecx
	flds	(%edx)
	flds	(%eax)
	flds	16(%edx)
	fstpt	(%esp)
	flds	4(%eax)
	fstpt	16(%esp)
	flds	32(%edx)
	fstpt	32(%esp)
	flds	8(%eax)
	fstpt	48(%esp)
	flds	48(%edx)
	fstpt	64(%esp)
	flds	12(%eax)
	fstpt	80(%esp)
	flds	4(%edx)
	fstpt	384(%esp)
	flds	20(%edx)
	fstpt	96(%esp)
	flds	36(%edx)
	fstpt	112(%esp)
	flds	52(%edx)
	fstpt	400(%esp)
	flds	8(%edx)
	fstpt	464(%esp)
	flds	24(%edx)
	fstpt	480(%esp)
	flds	40(%edx)
	fstpt	496(%esp)
	flds	56(%edx)
	fstpt	416(%esp)
	flds	12(%edx)
	flds	28(%edx)
	flds	44(%edx)
	flds	60(%edx)
	flds	16(%eax)
	fstpt	128(%esp)
	flds	20(%eax)
	fstpt	144(%esp)
	flds	24(%eax)
	fstpt	160(%esp)
	flds	28(%eax)
	fstpt	176(%esp)
	flds	32(%eax)
	fstpt	192(%esp)
	flds	36(%eax)
	fstpt	208(%esp)
	flds	40(%eax)
	fstpt	224(%esp)
	flds	44(%eax)
	fstpt	240(%esp)
	flds	48(%eax)
	fstpt	256(%esp)
	flds	52(%eax)
	fstpt	272(%esp)
	flds	56(%eax)
	fstpt	432(%esp)
	flds	60(%eax)
	fstpt	448(%esp)
	flds	(%esi)
	fstpt	288(%esp)
	flds	4(%esi)
	fstpt	304(%esp)
	flds	8(%esi)
	fstpt	320(%esp)
	flds	12(%esi)
	fstpt	336(%esp)
	fxch	%st(4)
	fld	%st(0)
	fstpt	368(%esp)
	fmul	%st(3), %st
	fldt	16(%esp)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	fldt	48(%esp)
	fmul	%st(2), %st
	faddp	%st, %st(1)
	fldt	80(%esp)
	fmul	%st(5), %st
	faddp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	288(%esp)
	fmulp	%st, %st(1)
	fldt	128(%esp)
	fmul	%st(4), %st
	fldt	144(%esp)
	fmul	%st(4), %st
	faddp	%st, %st(1)
	fldt	160(%esp)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	fldt	176(%esp)
	fmul	%st(6), %st
	faddp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	304(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	192(%esp)
	fmul	%st(4), %st
	fldt	208(%esp)
	fmul	%st(4), %st
	faddp	%st, %st(1)
	fldt	224(%esp)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	fldt	240(%esp)
	fmul	%st(6), %st
	faddp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	320(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	256(%esp)
	fmulp	%st, %st(4)
	fldt	272(%esp)
	fmulp	%st, %st(3)
	fxch	%st(3)
	faddp	%st, %st(2)
	fldt	432(%esp)
	fmul	%st, %st(1)
	fxch	%st(2)
	faddp	%st, %st(1)
	fldt	448(%esp)
	fmulp	%st, %st(4)
	faddp	%st, %st(3)
	fxch	%st(2)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	336(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fstpt	352(%esp)
	fldt	.LC2
	fmuls	12(%ebx)
	fstps	432(%esp)
	fldt	.LC2
	fmuls	8(%ebx)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	368(%esp)
	fmul	%st(3), %st
	fldt	(%esp)
	fld	%st(0)
	fldt	16(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fldt	32(%esp)
	fldt	48(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fldt	64(%esp)
	fldt	80(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	288(%esp)
	fmulp	%st, %st(1)
	fldt	128(%esp)
	fmul	%st(5), %st
	fldt	144(%esp)
	fmulp	%st, %st(3)
	faddp	%st, %st(2)
	fldt	32(%esp)
	fldt	160(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fldt	64(%esp)
	fldt	176(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	304(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	192(%esp)
	fmul	%st(4), %st
	fldt	(%esp)
	fldt	208(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	32(%esp)
	fldt	224(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	64(%esp)
	fldt	240(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	320(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	256(%esp)
	fmulp	%st, %st(4)
	fldt	(%esp)
	fldt	272(%esp)
	fmul	%st, %st(1)
	fxch	%st(5)
	faddp	%st, %st(1)
	fldt	32(%esp)
	fmul	%st(4), %st
	faddp	%st, %st(1)
	fldt	64(%esp)
	fldt	448(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	336(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	352(%esp)
	fdivrp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fmul	%st(1), %st
	fxch	%st(1)
	fadds	(%ebx)
	faddp	%st, %st(1)
	fstps	(%ecx)
	flds	432(%esp)
	fldt	368(%esp)
	fldt	384(%esp)
	fmul	%st, %st(1)
	fldt	96(%esp)
	fld	%st(0)
	fldt	16(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(3)
	fldt	112(%esp)
	fldt	48(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(3)
	fldt	400(%esp)
	fldt	80(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(3)
	fxch	%st(2)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	288(%esp)
	fmulp	%st, %st(1)
	fldt	128(%esp)
	fmul	%st(2), %st
	fldt	144(%esp)
	fmulp	%st, %st(4)
	faddp	%st, %st(3)
	fldt	112(%esp)
	fldt	160(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(3)
	fldt	400(%esp)
	fldt	176(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(3)
	fxch	%st(2)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	304(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fldt	192(%esp)
	fmulp	%st, %st(1)
	fldt	96(%esp)
	fldt	208(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	112(%esp)
	fldt	224(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	400(%esp)
	fld	%st(0)
	fldt	240(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	320(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fldt	384(%esp)
	fldt	256(%esp)
	fmulp	%st, %st(1)
	fldt	96(%esp)
	fmulp	%st, %st(6)
	faddp	%st, %st(5)
	fldt	112(%esp)
	fxch	%st(4)
	fld	%st(0)
	fstpt	432(%esp)
	fmulp	%st, %st(4)
	fxch	%st(4)
	faddp	%st, %st(3)
	fldt	448(%esp)
	fmul	%st, %st(4)
	fxch	%st(3)
	faddp	%st, %st(4)
	fxch	%st(3)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	336(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(3)
	fxch	%st(2)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	352(%esp)
	fdivrp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fmul	%st(2), %st
	fxch	%st(2)
	fadds	4(%ebx)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstps	4(%ecx)
	fldt	368(%esp)
	fldt	464(%esp)
	fmul	%st, %st(1)
	fldt	16(%esp)
	fldt	480(%esp)
	fmul	%st, %st(1)
	fxch	%st(3)
	faddp	%st, %st(1)
	fldt	48(%esp)
	fldt	496(%esp)
	fmul	%st, %st(1)
	fxch	%st(2)
	faddp	%st, %st(1)
	fldt	80(%esp)
	fldt	416(%esp)
	fmul	%st, %st(1)
	fxch	%st(1)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	288(%esp)
	fmulp	%st, %st(1)
	fldt	128(%esp)
	fmul	%st(4), %st
	fldt	144(%esp)
	fmul	%st(6), %st
	faddp	%st, %st(1)
	fldt	160(%esp)
	fmul	%st(4), %st
	faddp	%st, %st(1)
	fldt	176(%esp)
	fmul	%st(3), %st
	faddp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	304(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	192(%esp)
	fmul	%st(4), %st
	fldt	208(%esp)
	fmul	%st(6), %st
	faddp	%st, %st(1)
	fldt	224(%esp)
	fmul	%st(4), %st
	faddp	%st, %st(1)
	fldt	240(%esp)
	fmulp	%st, %st(3)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	320(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	256(%esp)
	fmulp	%st, %st(3)
	fldt	272(%esp)
	fmulp	%st, %st(4)
	fxch	%st(2)
	faddp	%st, %st(3)
	fldt	432(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(2)
	fldt	416(%esp)
	fmulp	%st, %st(3)
	fxch	%st(1)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	336(%esp)
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	fldt	352(%esp)
	fdivrp	%st, %st(1)
	fstps	512(%esp)
	flds	512(%esp)
	movl	$0x3f800000, 12(%ecx)
	fldt	.LC2
	fmul	%st, %st(1)
	faddp	%st, %st(1)
	fstps	8(%ecx)
	addl	$516, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE36:
	.size	transform, .-transform
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	fb32_tri
	.type	fb32_tri, @function
fb32_tri:
.LFB43:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%edx, %edx
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$48, %esp
	.cfi_def_cfa_offset 68
	movl	72(%esp), %ecx
	movl	$8, 8(%esp)
	movl	4(%ecx), %ebx
	movl	20(%ecx), %eax
	movl	12(%ecx), %esi
	cmpl	%eax, %ebx
	setle	%dl
	subl	$1, %edx
	andl	$16, %edx
	movl	%edx, 12(%esp)
	xorl	%edx, %edx
	cmpl	%eax, %ebx
	setg	%dl
	movl	%edx, %ebp
	subl	$1, %ebp
	andl	$16, %ebp
	cmpl	%esi, %ebx
	jle	.L5
	movl	12(%esp), %edx
	movl	$8, 12(%esp)
	movl	%edx, 8(%esp)
.L5:
	cmpl	%esi, %eax
	jge	.L6
	movl	8(%esp), %edx
	movl	%ebp, 8(%esp)
	movl	%edx, %ebp
.L6:
	movl	16(%ecx), %edx
	movl	(%ecx), %edi
	movl	%edx, 4(%esp)
	movl	8(%ecx), %edx
	cmpl	4(%esp), %edx
	movl	%edi, (%esp)
	movl	%edx, %edi
	jle	.L7
	movl	4(%esp), %edi
.L7:
	cmpl	%ebx, %eax
	movl	%eax, 16(%esp)
	jle	.L8
	movl	%ebx, 16(%esp)
.L8:
	cmpl	4(%esp), %edx
	jge	.L9
	movl	4(%esp), %edx
.L9:
	cmpl	(%esp), %edx
	jge	.L10
	movl	(%esp), %edx
.L10:
	cmpl	%ebx, %eax
	jge	.L11
	movl	%ebx, %eax
.L11:
	cmpl	%esi, %eax
	movl	%eax, %ebx
	jge	.L12
	movl	%esi, %ebx
.L12:
	movl	%edi, %eax
	movl	%edi, 36(%esp)
	movl	(%esp), %edi
	cmpl	%edi, %eax
	jle	.L13
	movl	%edi, 36(%esp)
.L13:
	movl	36(%esp), %edi
	movl	%edi, %eax
	sarl	$31, %eax
	notl	%eax
	andl	%eax, %edi
	movl	16(%esp), %eax
	movl	%edi, 36(%esp)
	cmpl	%esi, %eax
	movl	%eax, 4(%esp)
	jle	.L14
	movl	%esi, 4(%esp)
.L14:
	movl	4(%esp), %esi
	movl	%edx, 40(%esp)
	movl	%esi, %eax
	sarl	$31, %eax
	notl	%eax
	andl	%eax, %esi
	movl	68(%esp), %eax
	movl	%esi, 4(%esp)
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	subl	$1, %eax
	cmpl	%eax, %edx
	jle	.L15
	movl	%eax, 40(%esp)
.L15:
	movl	68(%esp), %eax
	movl	8(%eax), %eax
	leal	-1(%eax), %edx
	movl	%eax, (%esp)
	movl	%ebx, %eax
	cmpl	%edx, %ebx
	jle	.L16
	movl	%edx, %eax
.L16:
	cmpl	%eax, 4(%esp)
	jg	.L3
	addl	$1, %eax
	movl	%eax, 44(%esp)
	movl	8(%esp), %eax
	addl	%ecx, %eax
	movl	%eax, 20(%esp)
	movl	12(%esp), %eax
	addl	%ecx, %eax
	movl	%eax, 24(%esp)
	leal	(%ecx,%ebp), %eax
	movl	%eax, 28(%esp)
	movl	40(%esp), %eax
	addl	$1, %eax
	movl	%eax, 32(%esp)
	.p2align 4,,10
	.p2align 3
.L18:
	movl	36(%esp), %eax
	movl	40(%esp), %esi
	cmpl	%esi, %eax
	jg	.L23
	movl	%eax, (%esp)
	jmp	.L22
	.p2align 4,,10
	.p2align 3
.L40:
	testl	%esi, %esi
	js	.L26
.L19:
	movl	68(%esp), %esi
	movl	4(%esp), %eax
	imull	4(%esi), %eax
	movl	(%esi), %edx
	movl	76(%esp), %esi
	addl	(%esp), %eax
	movl	%esi, (%edx,%eax,4)
.L21:
	addl	$1, (%esp)
	movl	32(%esp), %edx
	movl	(%esp), %eax
	cmpl	%edx, %eax
	je	.L23
.L22:
	movl	20(%esp), %edi
	movl	24(%esp), %ebx
	movl	(%edi), %eax
	movl	(%ebx), %esi
	movl	4(%ebx), %edx
	movl	4(%esp), %ebx
	movl	%esi, %ecx
	movl	4(%edi), %esi
	movl	%eax, %edi
	movl	%edx, %ebp
	movl	%eax, %edx
	movl	%ebx, %eax
	subl	%ebp, %eax
	subl	%ecx, %edx
	movl	%ecx, 8(%esp)
	imull	%eax, %edx
	movl	%esi, %eax
	movl	%ebp, 16(%esp)
	subl	%ebp, %eax
	movl	%edi, 12(%esp)
	subl	%esi, %ebx
	movl	%edx, %ecx
	movl	%eax, %edx
	movl	8(%esp), %eax
	subl	(%esp), %eax
	imull	%eax, %edx
	addl	%ecx, %edx
	movl	28(%esp), %ecx
	movl	(%ecx), %eax
	movl	4(%ecx), %ecx
	movl	%eax, %ebp
	subl	%edi, %ebp
	movl	%ebp, %edi
	movl	%ecx, %ebp
	subl	%esi, %ebp
	imull	%ebx, %edi
	movl	%ebp, %esi
	movl	12(%esp), %ebx
	movl	(%esp), %ebp
	subl	%ebp, %ebx
	imull	%esi, %ebx
	movl	8(%esp), %esi
	addl	%edi, %ebx
	movl	4(%esp), %edi
	subl	%eax, %esi
	subl	%ebp, %eax
	subl	%ecx, %edi
	imull	%esi, %edi
	movl	16(%esp), %esi
	subl	%ecx, %esi
	movl	%esi, %ecx
	imull	%ecx, %eax
	movl	%ebx, %ecx
	notl	%ecx
	shrl	$31, %ecx
	leal	(%edi,%eax), %esi
	movl	%edx, %eax
	notl	%eax
	shrl	$31, %eax
	testb	%al, %cl
	jne	.L40
.L26:
	testl	%ebx, %ebx
	setle	%al
	testl	%edx, %edx
	setle	%dl
	testb	%dl, %al
	je	.L21
	testl	%esi, %esi
	jle	.L19
	addl	$1, (%esp)
	movl	32(%esp), %edx
	movl	(%esp), %eax
	cmpl	%edx, %eax
	jne	.L22
.L23:
	addl	$1, 4(%esp)
	movl	4(%esp), %eax
	cmpl	44(%esp), %eax
	jne	.L18
.L3:
	addl	$48, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE43:
	.size	fb32_tri, .-fb32_tri
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC19:
	.string	"framebuf32.png"
.LC20:
	.string	"error %u: %s\n"
	.section	.text.unlikely
.LCOLDB21:
	.section	.text.startup,"ax",@progbits
.LHOTB21:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB44:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x70,0x6
	.cfi_escape 0x10,0x7,0x2,0x75,0x7c
	.cfi_escape 0x10,0x6,0x2,0x75,0x78
	.cfi_escape 0x10,0x3,0x2,0x75,0x74
	subl	$548, %esp
	pushl	$0
	call	time
	movl	%eax, (%esp)
	call	srand
	movl	$8294400, (%esp)
	movl	$0x00000000, -288(%ebp)
	movl	$0x00000000, -284(%ebp)
	movl	$0x44f00000, -280(%ebp)
	movl	$0x44870000, -276(%ebp)
	movl	$0x401a8279, -152(%ebp)
	movl	$0x00000000, -136(%ebp)
	movl	$0x00000000, -120(%ebp)
	movl	$0x00000000, -104(%ebp)
	movl	$0x00000000, -148(%ebp)
	movl	$0x401a8279, -132(%ebp)
	movl	$0x00000000, -116(%ebp)
	movl	$0x00000000, -100(%ebp)
	movl	$0x00000000, -144(%ebp)
	movl	$0x00000000, -128(%ebp)
	movl	$0xbf80419a, -112(%ebp)
	movl	$0xbe4d0148, -96(%ebp)
	movl	$0x00000000, -140(%ebp)
	movl	$0x00000000, -124(%ebp)
	movl	$0xbf800000, -108(%ebp)
	movl	$0x00000000, -92(%ebp)
	movl	$0x00000000, -248(%ebp)
	movl	$0x3f800000, -244(%ebp)
	movl	$0x00000000, -240(%ebp)
	movl	$0x3f800000, -236(%ebp)
	movl	$0xbf800000, -232(%ebp)
	movl	$0xbf800000, -228(%ebp)
	movl	$0x00000000, -224(%ebp)
	movl	$0x3f800000, -220(%ebp)
	movl	$0x3f800000, -216(%ebp)
	movl	$0xbf800000, -212(%ebp)
	movl	$0x00000000, -208(%ebp)
	movl	$0x3f800000, -204(%ebp)
	call	malloc
	leal	8294400(%eax), %ecx
	movl	%eax, -300(%ebp)
	movl	$1920, -296(%ebp)
	movl	$1080, -292(%ebp)
	addl	$16, %esp
	.p2align 4,,10
	.p2align 3
.L42:
	leal	7680(%eax), %edx
	.p2align 4,,10
	.p2align 3
.L43:
	movl	$-8355712, (%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jne	.L43
	cmpl	%eax, %ecx
	jne	.L42
	fld1
	movl	$0, -332(%ebp)
	fldz
	flds	.LC7
	fstpt	-424(%ebp)
	jmp	.L44
	.p2align 4,,10
	.p2align 3
.L58:
	fildl	-332(%ebp)
	leal	-324(%ebp), %eax
	subl	$4, %esp
	pushl	%eax
	leal	-320(%ebp), %eax
	pushl	%eax
	subl	$4, %esp
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fmuls	.LC17
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fmuls	.LC18
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fstps	(%esp)
	call	sincosf
	flds	-324(%ebp)
	addl	$16, %esp
	flds	-320(%ebp)
.L44:
	fldz
	leal	-200(%ebp), %eax
	subl	$12, %esp
	fsts	-76(%ebp)
	fsts	-60(%ebp)
	fsts	-44(%ebp)
	fld1
	fsts	-28(%ebp)
	fld	%st(0)
	fstpt	-552(%ebp)
	fsub	%st(3), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	flds	.LC0
	fld	%st(1)
	fmul	%st(1), %st
	fld	%st(4)
	fmul	%st(4), %st
	fld	%st(3)
	fmul	%st(5), %st
	fxch	%st(3)
	fmul	%st(6), %st
	fstpt	-360(%ebp)
	fld	%st(3)
	fmuls	.LC14
	fadd	%st(7), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fstpt	-376(%ebp)
	fld	%st(1)
	fsub	%st(1), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fstpt	-440(%ebp)
	fldt	-440(%ebp)
	fmul	%st(5), %st
	fstpt	-392(%ebp)
	fld	%st(5)
	fadd	%st(3), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fstpt	-456(%ebp)
	fldt	-456(%ebp)
	fmul	%st(5), %st
	fstpt	-408(%ebp)
	faddp	%st, %st(1)
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fxch	%st(2)
	fadd	%st(5), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fld	%st(0)
	fstpt	-472(%ebp)
	fmul	%st(3), %st
	fldt	-360(%ebp)
	fsubr	%st(2), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fld	%st(0)
	fstpt	-504(%ebp)
	fmul	%st(4), %st
	fxch	%st(1)
	fld	%st(0)
	fstpt	-488(%ebp)
	fadd	%st(3), %st
	fadd	%st(1), %st
	fadd	%st(4), %st
	fstps	-84(%ebp)
	fxch	%st(4)
	fsubr	%st(1), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fldt	-360(%ebp)
	fadd	%st(2), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fld	%st(0)
	fmul	%st(5), %st
	fxch	%st(3)
	faddp	%st, %st(7)
	fxch	%st(6)
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fld	%st(0)
	fstpt	-536(%ebp)
	fmul	%st(4), %st
	fxch	%st(2)
	fld	%st(0)
	fstpt	-520(%ebp)
	fadd	%st(1), %st
	fxch	%st(2)
	fld	%st(0)
	fstpt	-360(%ebp)
	faddp	%st, %st(2)
	fxch	%st(1)
	fadd	%st(3), %st
	fstps	-80(%ebp)
	fldt	-376(%ebp)
	fmul	%st(3), %st
	fldt	-440(%ebp)
	fadd	%st(1), %st
	fldt	-408(%ebp)
	faddp	%st, %st(1)
	fadd	%st(4), %st
	fstps	-72(%ebp)
	fxch	%st(2)
	fmul	%st(3), %st
	fxch	%st(1)
	fmul	%st(3), %st
	fadd	%st, %st(5)
	fldt	-360(%ebp)
	faddp	%st, %st(6)
	fxch	%st(5)
	fadd	%st(3), %st
	fstps	-64(%ebp)
	fldt	-392(%ebp)
	faddp	%st, %st(2)
	fldt	-456(%ebp)
	fadd	%st(2), %st
	fadd	%st(3), %st
	fstps	-56(%ebp)
	fldt	-488(%ebp)
	fadd	%st(1), %st
	fldt	-504(%ebp)
	fxch	%st(1)
	fld	%st(0)
	fstpt	-440(%ebp)
	faddp	%st, %st(1)
	fadd	%st(3), %st
	fstps	-52(%ebp)
	fldt	-520(%ebp)
	faddp	%st, %st(5)
	fldt	-376(%ebp)
	fldt	-392(%ebp)
	faddp	%st, %st(1)
	fldt	-408(%ebp)
	fadd	%st, %st(1)
	fxch	%st(1)
	fadd	%st(4), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fldt	-552(%ebp)
	fadd	%st, %st(1)
	fxch	%st(1)
	fstps	-88(%ebp)
	fldt	-472(%ebp)
	faddp	%st, %st(3)
	fxch	%st(2)
	fadd	%st(5), %st
	fadd	%st(4), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	pushl	%eax
	leal	-288(%ebp), %eax
	fadd	%st(2), %st
	pushl	%eax
	leal	-152(%ebp), %eax
	pushl	%eax
	leal	-88(%ebp), %eax
	fstps	-68(%ebp)
	pushl	%eax
	leal	-248(%ebp), %eax
	fldt	-536(%ebp)
	pushl	%eax
	fadd	%st(6), %st
	fadd	%st(4), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	faddp	%st, %st(2)
	fxch	%st(1)
	fstps	-48(%ebp)
	fldt	.LC15
	fldt	-424(%ebp)
	faddp	%st, %st(1)
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fxch	%st(2)
	faddp	%st, %st(1)
	fadd	%st(2), %st
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fxch	%st(1)
	fld	%st(0)
	fstpt	-424(%ebp)
	faddp	%st, %st(1)
	fstps	-40(%ebp)
	fldt	-440(%ebp)
	faddp	%st, %st(2)
	fadd	%st, %st(1)
	fxch	%st(1)
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fadd	%st(1), %st
	fstps	-36(%ebp)
	fldt	-360(%ebp)
	faddp	%st, %st(2)
	faddp	%st, %st(1)
	fstps	-316(%ebp)
	flds	-316(%ebp)
	fsubs	.LC16
	fstps	-32(%ebp)
	call	transform
	leal	-184(%ebp), %eax
	addl	$20, %esp
	pushl	%eax
	leal	-288(%ebp), %eax
	pushl	%eax
	leal	-152(%ebp), %eax
	pushl	%eax
	leal	-88(%ebp), %eax
	pushl	%eax
	leal	-232(%ebp), %eax
	pushl	%eax
	call	transform
	leal	-168(%ebp), %eax
	addl	$20, %esp
	pushl	%eax
	leal	-288(%ebp), %eax
	pushl	%eax
	leal	-152(%ebp), %eax
	pushl	%eax
	leal	-88(%ebp), %eax
	pushl	%eax
	leal	-216(%ebp), %eax
	pushl	%eax
	call	transform
	fnstcw	-326(%ebp)
	movzwl	-326(%ebp), %eax
	flds	-200(%ebp)
	addl	$32, %esp
	movb	$12, %ah
	movw	%ax, -328(%ebp)
	fldcw	-328(%ebp)
	fistpl	-272(%ebp)
	fldcw	-326(%ebp)
	flds	-196(%ebp)
	fldcw	-328(%ebp)
	fistpl	-268(%ebp)
	fldcw	-326(%ebp)
	flds	-184(%ebp)
	fldcw	-328(%ebp)
	fistpl	-264(%ebp)
	fldcw	-326(%ebp)
	flds	-180(%ebp)
	fldcw	-328(%ebp)
	fistpl	-260(%ebp)
	fldcw	-326(%ebp)
	flds	-168(%ebp)
	fldcw	-328(%ebp)
	fistpl	-256(%ebp)
	fldcw	-326(%ebp)
	flds	-164(%ebp)
	fldcw	-328(%ebp)
	fistpl	-252(%ebp)
	fldcw	-326(%ebp)
	call	rand
	movl	%eax, %esi
	call	rand
	movl	%eax, %ebx
	call	rand
	movl	$-2139062143, %ecx
	movl	%eax, %edi
	subl	$4, %esp
	imull	%ecx
	movl	%edi, %eax
	sarl	$31, %eax
	addl	%edi, %edx
	sarl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %edi
	movl	%esi, %eax
	imull	%ecx
	movl	%esi, %eax
	orl	$-16777216, %edi
	sarl	$31, %eax
	addl	%esi, %edx
	sarl	$7, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %esi
	movl	%ebx, %eax
	imull	%ecx
	sall	$16, %esi
	movl	%ebx, %eax
	orl	%esi, %edi
	addl	%ebx, %edx
	sarl	$7, %edx
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$8, %eax
	subl	%edx, %eax
	subl	%eax, %ebx
	leal	-272(%ebp), %eax
	sall	$8, %ebx
	orl	%ebx, %edi
	pushl	%edi
	pushl	%eax
	leal	-300(%ebp), %eax
	pushl	%eax
	call	fb32_tri
	addl	$1, -332(%ebp)
	addl	$16, %esp
	movl	-332(%ebp), %eax
	cmpl	$8, %eax
	jne	.L58
	pushl	-292(%ebp)
	pushl	-296(%ebp)
	pushl	-300(%ebp)
	pushl	$.LC19
	call	lodepng_encode32_file
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L46
	subl	$12, %esp
	pushl	%eax
	call	lodepng_error_text
	addl	$12, %esp
	pushl	%eax
	pushl	%ebx
	pushl	$.LC20
	call	printf
	addl	$16, %esp
.L46:
	movl	-300(%ebp), %eax
	testl	%eax, %eax
	je	.L56
	subl	$12, %esp
	pushl	%eax
	call	free
	addl	$16, %esp
.L56:
	leal	-16(%ebp), %esp
	xorl	%eax, %eax
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE44:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE21:
	.section	.text.startup
.LHOTE21:
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC0:
	.long	1056964608
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	16382
	.align 16
	.section	.rodata.cst4
	.align 4
.LC7:
	.long	-1060110336
	.align 4
.LC14:
	.long	1048576000
	.section	.rodata.cst16
	.align 16
.LC15:
	.long	858993459
	.long	-1288490189
	.long	16383
	.align 16
	.section	.rodata.cst4
	.align 4
.LC16:
	.long	1099431936
	.align 4
.LC17:
	.long	1101004800
	.align 4
.LC18:
	.long	1016003126
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
