	.file	"lodepng.c"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.type	bpmnode_create, @function
bpmnode_create:
.LFB55:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	%edx, (%esp)
	movl	12(%eax), %edx
	cmpl	8(%eax), %edx
	movl	%ecx, 4(%esp)
	jb	.L41
	movl	(%eax), %ebx
	testl	%ebx, %ebx
	je	.L4
	movl	4(%eax), %edx
	movl	%ebx, %esi
	xorl	%ecx, %ecx
	sall	$4, %esi
	.p2align 4,,10
	.p2align 3
.L5:
	movl	$0, 12(%edx,%ecx)
	addl	$16, %ecx
	cmpl	%esi, %ecx
	jne	.L5
	movl	20(%eax), %esi
	testl	%esi, %esi
	je	.L6
.L20:
	movl	24(%eax), %ebp
	movl	28(%eax), %edi
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L12:
	movl	0(%ebp,%ecx,4), %edx
	testl	%edx, %edx
	je	.L11
	.p2align 4,,10
	.p2align 3
.L25:
	movl	$1, 12(%edx)
	movl	8(%edx), %edx
	testl	%edx, %edx
	jne	.L25
.L11:
	movl	(%edi,%ecx,4), %edx
	testl	%edx, %edx
	je	.L9
	.p2align 4,,10
	.p2align 3
.L24:
	movl	$1, 12(%edx)
	movl	8(%edx), %edx
	testl	%edx, %edx
	jne	.L24
.L9:
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jne	.L12
	testl	%ebx, %ebx
	movl	$0, 8(%eax)
	je	.L16
	movl	4(%eax), %edx
.L15:
	xorl	%ecx, %ecx
	jmp	.L18
	.p2align 4,,10
	.p2align 3
.L42:
	movl	4(%eax), %edx
.L18:
	movl	%ecx, %esi
	sall	$4, %esi
	addl	%esi, %edx
	movl	12(%edx), %esi
	testl	%esi, %esi
	jne	.L17
	movl	8(%eax), %esi
	movl	16(%eax), %edi
	leal	1(%esi), %ebp
	movl	%ebp, 8(%eax)
	movl	%edx, (%edi,%esi,4)
.L17:
	addl	$1, %ecx
	cmpl	%ebx, %ecx
	jne	.L42
.L16:
	xorl	%edx, %edx
	movl	$1, %ebx
.L3:
	movl	16(%eax), %ecx
	movl	%ebx, 12(%eax)
	movl	(%esp), %edi
	movl	4(%esp), %ebx
	movl	(%ecx,%edx), %eax
	movl	28(%esp), %edx
	movl	%edi, (%eax)
	movl	%ebx, 4(%eax)
	movl	%edx, 8(%eax)
	addl	$8, %esp
	.cfi_remember_state
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
.L41:
	.cfi_restore_state
	leal	1(%edx), %ebx
	sall	$2, %edx
	jmp	.L3
.L4:
	movl	20(%eax), %esi
	testl	%esi, %esi
	jne	.L20
	movl	$0, 8(%eax)
	jmp	.L16
	.p2align 4,,10
	.p2align 3
.L6:
	movl	$0, 8(%eax)
	jmp	.L15
	.cfi_endproc
.LFE55:
	.size	bpmnode_create, .-bpmnode_create
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.type	boundaryPM, @function
boundaryPM:
.LFB57:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	%edx, 12(%esp)
	movl	28(%eax), %edx
	movl	48(%esp), %eax
	movl	48(%esp), %edi
	movl	%ecx, 4(%esp)
	leal	0(,%eax,4), %ebx
	movl	(%edx,%eax,4), %eax
	testl	%edi, %edi
	movl	%eax, 8(%esp)
	movl	4(%eax), %ecx
	je	.L51
	movl	52(%esp), %edi
	movl	4(%esp), %ebp
	addl	$1, %edi
	leal	-2(%ebp,%ebp), %ebp
	movl	%edi, %eax
	leal	-4(%ebx), %edi
	cmpl	%ebp, %eax
	jge	.L59
	.p2align 4,,10
	.p2align 3
.L55:
	movl	24(%esi), %ebp
	movl	(%edx,%edi), %edx
	movl	0(%ebp,%edi), %eax
	movl	(%edx), %edx
	addl	(%eax), %edx
	cmpl	%ecx, 4(%esp)
	movl	8(%esp), %eax
	movl	%eax, 0(%ebp,%ebx)
	jbe	.L50
	movl	12(%esp), %ebp
	movl	%ecx, %eax
	sall	$4, %eax
	movl	0(%ebp,%eax), %eax
	cmpl	%eax, %edx
	jg	.L49
.L50:
	movl	28(%esi), %eax
	pushl	(%eax,%edi)
	.cfi_def_cfa_offset 52
	leal	(%eax,%ebx), %ebp
	movl	%esi, %eax
	subl	$4, %ebx
	subl	$4, %edi
	call	bpmnode_create
	subl	$1, 52(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 56
	movl	%eax, 0(%ebp)
	pushl	60(%esp)
	.cfi_def_cfa_offset 60
	pushl	60(%esp)
	.cfi_def_cfa_offset 64
	movl	%esi, %eax
	movl	20(%esp), %ecx
	movl	28(%esp), %edx
	call	boundaryPM
	movl	28(%esi), %edx
	movl	(%edx,%ebx), %eax
	movl	%eax, 24(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	4(%eax), %ecx
	movl	48(%esp), %eax
	testl	%eax, %eax
	jne	.L55
.L51:
	cmpl	4(%esp), %ecx
	jb	.L60
	addl	$28, %esp
	.cfi_remember_state
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
.L59:
	.cfi_restore_state
	movl	24(%esi), %ebp
	movl	-4(%edx,%ebx), %edx
	movl	-4(%ebp,%ebx), %eax
	movl	(%edx), %edx
	addl	(%eax), %edx
	cmpl	%ecx, 4(%esp)
	movl	8(%esp), %eax
	movl	%eax, 0(%ebp,%ebx)
	jbe	.L48
	movl	12(%esp), %ebp
	movl	%ecx, %eax
	sall	$4, %eax
	movl	0(%ebp,%eax), %eax
	cmpl	%eax, %edx
	jg	.L49
.L48:
	movl	28(%esi), %eax
	pushl	(%eax,%edi)
	.cfi_def_cfa_offset 52
	addl	%eax, %ebx
	movl	%esi, %eax
	call	bpmnode_create
	movl	%eax, (%ebx)
	popl	%ecx
	.cfi_def_cfa_offset 48
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L49:
	.cfi_restore_state
	addl	28(%esi), %ebx
	addl	$1, %ecx
	movl	(%ebx), %edx
	pushl	8(%edx)
	.cfi_def_cfa_offset 52
	movl	%eax, %edx
	movl	%esi, %eax
	call	bpmnode_create
	movl	%eax, (%ebx)
	popl	%edx
	.cfi_def_cfa_offset 48
	addl	$28, %esp
	.cfi_remember_state
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
.L60:
	.cfi_restore_state
	movl	8(%esp), %eax
	movl	24(%esi), %edx
	movl	%eax, (%edx,%ebx)
	pushl	$0
	.cfi_def_cfa_offset 52
	leal	1(%ecx), %edx
	movl	16(%esp), %edi
	movl	%ecx, %eax
	addl	28(%esi), %ebx
	sall	$4, %eax
	movl	%edx, %ecx
	movl	(%edi,%eax), %edx
	movl	%esi, %eax
	call	bpmnode_create
	movl	%eax, (%ebx)
	popl	%ebx
	.cfi_def_cfa_offset 48
	addl	$28, %esp
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
.LFE57:
	.size	boundaryPM, .-boundaryPM
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.type	checkColorValidity, @function
checkColorValidity:
.LFB115:
	.cfi_startproc
	cmpl	$6, %eax
	ja	.L69
	jmp	*.L64(,%eax,4)
	.section	.rodata
	.align 4
	.align 4
.L64:
	.long	.L63
	.long	.L69
	.long	.L68
	.long	.L66
	.long	.L68
	.long	.L69
	.long	.L68
	.text
	.p2align 4,,10
	.p2align 3
.L68:
	leal	-8(%edx), %eax
	andl	$-9, %eax
	je	.L62
.L94:
	movl	$37, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	leal	-4(%edx), %eax
	andl	$-5, %eax
	je	.L72
	subl	$1, %edx
	cmpl	$1, %edx
	ja	.L94
	.p2align 4,,10
	.p2align 3
.L72:
	xorl	%eax, %eax
.L62:
	rep ret
	.p2align 4,,10
	.p2align 3
.L63:
	leal	-4(%edx), %eax
	andl	$-5, %eax
	je	.L72
	leal	-1(%edx), %eax
	cmpl	$1, %eax
	jbe	.L72
	xorl	%eax, %eax
	cmpl	$16, %edx
	sete	%al
	subl	$1, %eax
	andl	$37, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L69:
	movl	$31, %eax
	ret
	.cfi_endproc
.LFE115:
	.size	checkColorValidity, .-checkColorValidity
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.type	getPixelColorsRGBA8, @function
getPixelColorsRGBA8:
.LFB160:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	cmpl	$1, %ecx
	sbbl	%eax, %eax
	movl	%edx, 12(%esp)
	movl	%ecx, 8(%esp)
	addl	$4, %eax
	movl	40(%esp), %esi
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L99
	movl	44(%esp), %eax
	movl	4(%eax), %ecx
	cmpl	$8, %ecx
	je	.L214
	cmpl	$16, %ecx
	je	.L215
	movl	$1, %eax
	sall	%cl, %eax
	subl	$1, %eax
	movl	%eax, 16(%esp)
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L97
	movl	%ecx, %edx
	xorl	%ebx, %ebx
	movl	$0, (%esp)
	testl	%edx, %edx
	je	.L159
	.p2align 4,,10
	.p2align 3
.L216:
	xorl	%ecx, %ecx
	addl	%ebx, %edx
	movl	%ecx, %ebp
	.p2align 4,,10
	.p2align 3
.L113:
	movl	%ebx, %eax
	movl	%ebx, %ecx
	addl	%ebp, %ebp
	shrl	$3, %eax
	notl	%ecx
	addl	$1, %ebx
	movzbl	(%esi,%eax), %eax
	andl	$7, %ecx
	sarl	%cl, %eax
	andl	$1, %eax
	orl	%eax, %ebp
	cmpl	%edx, %ebx
	jne	.L113
	movl	%ebp, %eax
	movl	%ebp, %ecx
	sall	$8, %eax
	subl	%ebp, %eax
.L112:
	xorl	%edx, %edx
	divl	16(%esp)
	movb	%al, 2(%edi)
	movb	%al, 1(%edi)
	movb	%al, (%edi)
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	.L114
	movl	44(%esp), %edx
	movl	$-1, %eax
	movl	16(%edx), %ebp
	testl	%ebp, %ebp
	je	.L115
	cmpl	%ecx, 20(%edx)
	setne	%al
	negl	%eax
.L115:
	movb	%al, 3(%edi)
.L114:
	addl	$1, (%esp)
	addl	4(%esp), %edi
	movl	(%esp), %eax
	cmpl	12(%esp), %eax
	je	.L97
	movl	44(%esp), %eax
	movl	4(%eax), %edx
	testl	%edx, %edx
	jne	.L216
.L159:
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L112
	.p2align 4,,10
	.p2align 3
.L99:
	cmpl	$2, %eax
	je	.L217
	cmpl	$3, %eax
	je	.L218
	cmpl	$4, %eax
	je	.L219
	cmpl	$6, %eax
	jne	.L97
	movl	44(%esp), %eax
	cmpl	$8, 4(%eax)
	je	.L148
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L97
	movl	12(%esp), %eax
	movl	4(%esp), %ecx
	leal	(%esi,%eax,8), %edx
	movl	8(%esp), %eax
	testl	%eax, %eax
	jne	.L155
.L154:
	movzbl	(%esi), %eax
	addl	$8, %esi
	movb	%al, (%edi)
	movzbl	-6(%esi), %eax
	movb	%al, 1(%edi)
	movzbl	-4(%esi), %eax
	movb	%al, 2(%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L154
	.p2align 4,,10
	.p2align 3
.L97:
	addl	$20, %esp
	.cfi_remember_state
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
.L214:
	.cfi_restore_state
	testl	%edx, %edx
	je	.L97
	movl	8(%esp), %eax
	testl	%eax, %eax
	jne	.L102
	movl	4(%esp), %ecx
	addl	%esi, %edx
	.p2align 4,,10
	.p2align 3
.L103:
	movzbl	(%esi), %eax
	addl	$1, %esi
	movb	%al, 2(%edi)
	movb	%al, 1(%edi)
	movb	%al, (%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L103
	jmp	.L97
.L217:
	movl	44(%esp), %eax
	cmpl	$8, 4(%eax)
	je	.L118
	movl	12(%esp), %ebx
	testl	%ebx, %ebx
	je	.L97
	movl	8(%esp), %ebx
	movl	12(%esp), %eax
	testl	%ebx, %ebx
	leal	(%eax,%eax,2), %eax
	je	.L220
	movl	44(%esp), %edx
	leal	(%esi,%eax,2), %ebx
	.p2align 4,,10
	.p2align 3
.L127:
	movzbl	(%esi), %eax
	movb	%al, (%edi)
	movzbl	2(%esi), %eax
	movb	%al, 1(%edi)
	movzbl	4(%esi), %eax
	movb	%al, 2(%edi)
	movl	16(%edx), %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	je	.L126
	movzbl	(%esi), %ebp
	movzbl	1(%esi), %ecx
	sall	$8, %ebp
	addl	%ebp, %ecx
	cmpl	20(%edx), %ecx
	je	.L221
.L126:
	addl	$6, %esi
	movb	%al, 3(%edi)
	addl	4(%esp), %edi
	cmpl	%ebx, %esi
	jne	.L127
	jmp	.L97
.L219:
	movl	44(%esp), %eax
	cmpl	$8, 4(%eax)
	je	.L140
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L97
	movl	12(%esp), %eax
	movl	4(%esp), %ecx
	leal	(%esi,%eax,4), %edx
	movl	8(%esp), %eax
	testl	%eax, %eax
	jne	.L147
.L146:
	movzbl	(%esi), %eax
	addl	$4, %esi
	movb	%al, 2(%edi)
	movb	%al, 1(%edi)
	movb	%al, (%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L146
	jmp	.L97
.L218:
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L97
	movl	44(%esp), %ebp
	addl	%esi, %eax
	xorl	%ebx, %ebx
	movl	%esi, (%esp)
	movl	%eax, 16(%esp)
	movl	%edi, 12(%esp)
	movl	4(%ebp), %edx
	cmpl	$8, %edx
	je	.L129
	.p2align 4,,10
	.p2align 3
.L222:
	xorl	%eax, %eax
	testl	%edx, %edx
	leal	(%ebx,%edx), %edi
	je	.L132
	.p2align 4,,10
	.p2align 3
.L183:
	movl	%ebx, %edx
	movl	%ebx, %ecx
	addl	%eax, %eax
	shrl	$3, %edx
	notl	%ecx
	addl	$1, %ebx
	movzbl	(%esi,%edx), %edx
	andl	$7, %ecx
	sarl	%cl, %edx
	andl	$1, %edx
	orl	%edx, %eax
	cmpl	%edi, %ebx
	jne	.L183
.L132:
	cmpl	12(%ebp), %eax
	jb	.L134
.L223:
	movl	8(%esp), %edx
	movl	12(%esp), %eax
	testl	%edx, %edx
	movb	$0, 2(%eax)
	movb	$0, 1(%eax)
	movb	$0, (%eax)
	je	.L136
	movb	$-1, 3(%eax)
.L136:
	addl	$1, (%esp)
	movl	4(%esp), %edi
	movl	(%esp), %eax
	addl	%edi, 12(%esp)
	cmpl	16(%esp), %eax
	je	.L97
	movl	4(%ebp), %edx
	cmpl	$8, %edx
	jne	.L222
.L129:
	movl	(%esp), %eax
	movzbl	(%eax), %eax
	cmpl	12(%ebp), %eax
	jnb	.L223
.L134:
	movl	8(%ebp), %ecx
	leal	0(,%eax,4), %edx
	movl	12(%esp), %edi
	movzbl	(%ecx,%eax,4), %eax
	movb	%al, (%edi)
	movl	8(%ebp), %eax
	movzbl	1(%eax,%edx), %eax
	movb	%al, 1(%edi)
	movl	8(%ebp), %eax
	movzbl	2(%eax,%edx), %eax
	movb	%al, 2(%edi)
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	.L136
	movl	8(%ebp), %eax
	movzbl	3(%eax,%edx), %eax
	movb	%al, 3(%edi)
	jmp	.L136
.L215:
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L97
	movl	12(%esp), %eax
	leal	(%esi,%eax,2), %edx
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	.L224
	movl	4(%esp), %ebx
	movl	44(%esp), %ecx
	.p2align 4,,10
	.p2align 3
.L111:
	movzbl	(%esi), %eax
	movb	%al, 2(%edi)
	movb	%al, 1(%edi)
	movb	%al, (%edi)
	movl	16(%ecx), %ebp
	movl	$-1, %eax
	testl	%ebp, %ebp
	je	.L110
	movzbl	(%esi), %eax
	sall	$8, %eax
	movl	%eax, %ebp
	movzbl	1(%esi), %eax
	addl	%ebp, %eax
	cmpl	20(%ecx), %eax
	setne	%al
	negl	%eax
.L110:
	addl	$2, %esi
	movb	%al, 3(%edi)
	addl	%ebx, %edi
	cmpl	%edx, %esi
	jne	.L111
	jmp	.L97
.L102:
	movl	12(%esp), %edx
	movl	4(%esp), %ebx
	movl	44(%esp), %ecx
	addl	%esi, %edx
	.p2align 4,,10
	.p2align 3
.L106:
	movzbl	(%esi), %eax
	movb	%al, 2(%edi)
	movb	%al, 1(%edi)
	movb	%al, (%edi)
	movl	16(%ecx), %ebp
	movl	$-1, %eax
	testl	%ebp, %ebp
	je	.L105
	movzbl	(%esi), %eax
	cmpl	20(%ecx), %eax
	setne	%al
	negl	%eax
.L105:
	addl	$1, %esi
	movb	%al, 3(%edi)
	addl	%ebx, %edi
	cmpl	%edx, %esi
	jne	.L106
	jmp	.L97
.L224:
	movl	4(%esp), %ecx
	.p2align 4,,10
	.p2align 3
.L109:
	movzbl	(%esi), %eax
	addl	$2, %esi
	movb	%al, 2(%edi)
	movb	%al, 1(%edi)
	movb	%al, (%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L109
	jmp	.L97
.L147:
	movzbl	(%esi), %eax
	addl	$4, %esi
	movb	%al, 2(%edi)
	movb	%al, 1(%edi)
	movb	%al, (%edi)
	movzbl	-2(%esi), %eax
	movb	%al, 3(%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L147
	jmp	.L97
.L220:
	movl	4(%esp), %ecx
	leal	(%esi,%eax,2), %edx
	.p2align 4,,10
	.p2align 3
.L125:
	movzbl	(%esi), %eax
	addl	$6, %esi
	movb	%al, (%edi)
	movzbl	-4(%esi), %eax
	movb	%al, 1(%edi)
	movzbl	-2(%esi), %eax
	movb	%al, 2(%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L125
	jmp	.L97
.L155:
	movzbl	(%esi), %eax
	addl	$8, %esi
	movb	%al, (%edi)
	movzbl	-6(%esi), %eax
	movb	%al, 1(%edi)
	movzbl	-4(%esi), %eax
	movb	%al, 2(%edi)
	movzbl	-2(%esi), %eax
	movb	%al, 3(%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L155
	jmp	.L97
.L118:
	movl	12(%esp), %ecx
	testl	%ecx, %ecx
	je	.L97
	movl	8(%esp), %edx
	movl	12(%esp), %eax
	testl	%edx, %edx
	jne	.L120
	leal	(%eax,%eax,2), %edx
	movl	4(%esp), %ecx
	addl	%esi, %edx
.L121:
	movzbl	(%esi), %eax
	addl	$3, %esi
	movb	%al, (%edi)
	movzbl	-2(%esi), %eax
	movb	%al, 1(%edi)
	movzbl	-1(%esi), %eax
	movb	%al, 2(%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L121
	jmp	.L97
.L221:
	movzbl	2(%esi), %ebp
	movzbl	3(%esi), %ecx
	sall	$8, %ebp
	addl	%ebp, %ecx
	cmpl	24(%edx), %ecx
	jne	.L126
	movzbl	4(%esi), %eax
	sall	$8, %eax
	movl	%eax, %ecx
	movzbl	5(%esi), %eax
	addl	%ecx, %eax
	cmpl	28(%edx), %eax
	setne	%al
	negl	%eax
	jmp	.L126
.L140:
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L97
	movl	12(%esp), %eax
	movl	4(%esp), %ecx
	leal	(%esi,%eax,2), %edx
	movl	8(%esp), %eax
	testl	%eax, %eax
	jne	.L144
.L143:
	movzbl	(%esi), %eax
	addl	$2, %esi
	movb	%al, 2(%edi)
	movb	%al, 1(%edi)
	movb	%al, (%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L143
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L144:
	movzbl	(%esi), %eax
	addl	$2, %esi
	movb	%al, 2(%edi)
	movb	%al, 1(%edi)
	movb	%al, (%edi)
	movzbl	-1(%esi), %eax
	movb	%al, 3(%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L144
	jmp	.L97
.L120:
	leal	(%eax,%eax,2), %ebp
	addl	%esi, %ebp
	movl	%ebp, (%esp)
	movl	44(%esp), %ebp
.L123:
	movzbl	(%esi), %ecx
	movl	$-1, %ebx
	movb	%cl, (%edi)
	movzbl	1(%esi), %edx
	movb	%dl, 1(%edi)
	movzbl	2(%esi), %eax
	movb	%al, 2(%edi)
	cmpl	$0, 16(%ebp)
	je	.L122
	cmpl	20(%ebp), %ecx
	je	.L225
.L122:
	movb	%bl, 3(%edi)
	addl	$3, %esi
	addl	4(%esp), %edi
	cmpl	(%esp), %esi
	jne	.L123
	jmp	.L97
.L148:
	movl	12(%esp), %ebp
	testl	%ebp, %ebp
	je	.L97
	movl	8(%esp), %ebx
	movl	12(%esp), %eax
	movl	4(%esp), %ecx
	testl	%ebx, %ebx
	leal	(%esi,%eax,4), %edx
	jne	.L152
.L151:
	movzbl	(%esi), %eax
	addl	$4, %esi
	movb	%al, (%edi)
	movzbl	-3(%esi), %eax
	movb	%al, 1(%edi)
	movzbl	-2(%esi), %eax
	movb	%al, 2(%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L151
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L152:
	movzbl	(%esi), %eax
	addl	$4, %esi
	movb	%al, (%edi)
	movzbl	-3(%esi), %eax
	movb	%al, 1(%edi)
	movzbl	-2(%esi), %eax
	movb	%al, 2(%edi)
	movzbl	-1(%esi), %eax
	movb	%al, 3(%edi)
	addl	%ecx, %edi
	cmpl	%edx, %esi
	jne	.L152
	jmp	.L97
.L225:
	cmpl	24(%ebp), %edx
	jne	.L122
	cmpl	28(%ebp), %eax
	setne	%bl
	negl	%ebx
	jmp	.L122
	.cfi_endproc
.LFE160:
	.size	getPixelColorsRGBA8, .-getPixelColorsRGBA8
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.type	getPixelColorRGBA16, @function
getPixelColorRGBA16:
.LFB161:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	44(%esp), %edi
	movl	36(%esp), %ebx
	movl	40(%esp), %esi
	movl	(%edi), %edi
	testl	%edi, %edi
	jne	.L227
	leal	(%esi,%esi), %edi
	leal	(%ebx,%edi), %esi
	leal	1(%ebx,%edi), %edi
	movzbl	(%esi), %ebx
	movzbl	(%edi), %ebp
	sall	$8, %ebx
	addl	%ebp, %ebx
	movw	%bx, (%ecx)
	movw	%bx, (%edx)
	movw	%bx, (%eax)
	movl	44(%esp), %eax
	movl	16(%eax), %ebx
	testl	%ebx, %ebx
	je	.L228
	movl	%eax, %ecx
	movzbl	(%esi), %eax
	movzbl	(%edi), %edx
	sall	$8, %eax
	addl	%edx, %eax
	cmpl	20(%ecx), %eax
	je	.L231
.L228:
	movl	32(%esp), %eax
	movl	$-1, %edx
	movw	%dx, (%eax)
.L226:
	addl	$12, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L227:
	.cfi_restore_state
	cmpl	$2, %edi
	je	.L234
	cmpl	$4, %edi
	je	.L235
	cmpl	$6, %edi
	jne	.L226
	leal	0(,%esi,8), %edi
	movzbl	(%ebx,%esi,8), %esi
	movzbl	1(%ebx,%edi), %ebp
	sall	$8, %esi
	addl	%ebp, %esi
	movw	%si, (%eax)
	movzbl	2(%ebx,%edi), %eax
	movzbl	3(%ebx,%edi), %esi
	sall	$8, %eax
	addl	%esi, %eax
	movw	%ax, (%edx)
	movzbl	4(%ebx,%edi), %eax
	movzbl	5(%ebx,%edi), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, (%ecx)
	movzbl	6(%ebx,%edi), %eax
	movzbl	7(%ebx,%edi), %edx
	movl	32(%esp), %ecx
	sall	$8, %eax
	addl	%edx, %eax
	movw	%ax, (%ecx)
	addl	$12, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L234:
	.cfi_restore_state
	leal	(%esi,%esi,2), %esi
	addl	%esi, %esi
	leal	(%ebx,%esi), %edi
	leal	1(%ebx,%esi), %ebp
	movl	%edi, (%esp)
	movzbl	(%edi), %edi
	movl	%ebp, 4(%esp)
	movzbl	0(%ebp), %ebp
	sall	$8, %edi
	addl	%ebp, %edi
	leal	3(%ebx,%esi), %ebp
	movw	%di, (%eax)
	leal	2(%ebx,%esi), %eax
	movzbl	(%eax), %edi
	movl	%eax, 8(%esp)
	movzbl	0(%ebp), %eax
	sall	$8, %edi
	addl	%edi, %eax
	movw	%ax, (%edx)
	leal	4(%ebx,%esi), %edx
	leal	5(%ebx,%esi), %esi
	movzbl	(%edx), %ebx
	movzbl	(%esi), %eax
	sall	$8, %ebx
	addl	%ebx, %eax
	movw	%ax, (%ecx)
	movl	44(%esp), %ecx
	movl	16(%ecx), %eax
	testl	%eax, %eax
	je	.L228
	movl	4(%esp), %eax
	movl	(%esp), %edi
	movzbl	(%eax), %ecx
	movzbl	(%edi), %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movl	44(%esp), %ecx
	cmpl	20(%ecx), %eax
	jne	.L228
	movl	8(%esp), %eax
	movzbl	0(%ebp), %ecx
	movzbl	(%eax), %eax
	sall	$8, %eax
	addl	%ecx, %eax
	movl	44(%esp), %ecx
	cmpl	24(%ecx), %eax
	jne	.L228
	movzbl	(%edx), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	(%esi), %eax
	addl	%edx, %eax
	cmpl	28(%ecx), %eax
	jne	.L228
	.p2align 4,,10
	.p2align 3
.L231:
	movl	32(%esp), %eax
	xorl	%ecx, %ecx
	movw	%cx, (%eax)
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L235:
	leal	0(,%esi,4), %edi
	movzbl	(%ebx,%esi,4), %esi
	movzbl	1(%ebx,%edi), %ebp
	sall	$8, %esi
	addl	%ebp, %esi
	movw	%si, (%ecx)
	movw	%si, (%edx)
	movw	%si, (%eax)
	movzbl	2(%ebx,%edi), %eax
	movzbl	3(%ebx,%edi), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movl	32(%esp), %edx
	movw	%ax, (%edx)
	jmp	.L226
	.cfi_endproc
.LFE161:
	.size	getPixelColorRGBA16, .-getPixelColorRGBA16
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.type	Adam7_getpassvalues, @function
Adam7_getpassvalues:
.LFB168:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	28(%esp), %ebp
	leal	7(%ebp), %ebx
	shrl	$3, %ebx
	movl	%ebx, (%eax)
	movl	32(%esp), %ebx
	addl	$7, %ebx
	shrl	$3, %ebx
	movl	%ebx, (%edx)
	movl	(%eax), %esi
	testl	%esi, %esi
	jne	.L237
	movl	$0, (%edx)
.L238:
	movl	%esi, (%eax)
	leal	3(%ebp), %esi
	movl	%esi, %edi
	shrl	$3, %edi
	movl	%edi, 4(%eax)
	movl	%ebx, 4(%edx)
	movl	4(%eax), %edi
	testl	%edi, %edi
	jne	.L239
	movl	$0, 4(%edx)
.L240:
	movl	32(%esp), %ebx
	movl	%edi, 4(%eax)
	shrl	$2, %esi
	movl	%esi, 8(%eax)
	addl	$3, %ebx
	movl	%ebx, %edi
	shrl	$3, %edi
	movl	%edi, 8(%edx)
	movl	8(%eax), %esi
	testl	%esi, %esi
	jne	.L241
	movl	$0, 8(%edx)
.L242:
	movl	%esi, 8(%eax)
	leal	1(%ebp), %esi
	shrl	$2, %ebx
	movl	%esi, %edi
	shrl	$2, %edi
	movl	%edi, 12(%eax)
	movl	%ebx, 12(%edx)
	movl	12(%eax), %edi
	testl	%edi, %edi
	jne	.L243
	movl	$0, 12(%edx)
.L244:
	movl	32(%esp), %ebx
	movl	%edi, 12(%eax)
	shrl	%esi
	movl	%esi, 16(%eax)
	addl	$1, %ebx
	movl	%ebx, %edi
	shrl	$2, %edi
	movl	%edi, 16(%edx)
	movl	16(%eax), %esi
	testl	%esi, %esi
	jne	.L245
	movl	$0, 16(%edx)
.L246:
	movl	%esi, 16(%eax)
	movl	%ebp, %esi
	shrl	%ebx
	shrl	%esi
	movl	%esi, 20(%eax)
	movl	%ebx, 20(%edx)
	movl	20(%eax), %esi
	testl	%esi, %esi
	jne	.L247
	movl	$0, 20(%edx)
.L248:
	movl	32(%esp), %ebx
	movl	%esi, 20(%eax)
	movl	%ebp, 24(%eax)
	shrl	%ebx
	movl	%ebx, 24(%edx)
	movl	24(%eax), %esi
	testl	%esi, %esi
	je	.L249
	cmpl	$1, %ebx
	sbbl	%ebx, %ebx
	notl	%ebx
	andl	%ebx, %esi
.L250:
	movl	20(%esp), %ebx
	movl	24(%esp), %edi
	movl	%esi, 24(%eax)
	movl	$0, (%edi)
	movl	$0, (%ebx)
	xorl	%ebx, %ebx
	movl	$0, (%ecx)
	.p2align 4,,10
	.p2align 3
.L253:
	addl	$1, %ebx
	xorl	%ebp, %ebp
	movl	-4(%eax,%ebx,4), %esi
	movl	-4(%ecx,%ebx,4), %edi
	testl	%esi, %esi
	je	.L252
	movl	(%edx), %ebp
	testl	%ebp, %ebp
	je	.L252
	imull	36(%esp), %esi
	addl	$7, %esi
	shrl	$3, %esi
	addl	$1, %esi
	imull	%esi, %ebp
.L252:
	addl	%ebp, %edi
	movl	36(%esp), %esi
	addl	$4, %edx
	movl	%edi, (%ecx,%ebx,4)
	movl	20(%esp), %edi
	imull	-4(%eax,%ebx,4), %esi
	addl	$7, %esi
	shrl	$3, %esi
	imull	-4(%edx), %esi
	addl	-4(%edi,%ebx,4), %esi
	movl	%esi, (%edi,%ebx,4)
	movl	36(%esp), %esi
	imull	-4(%eax,%ebx,4), %esi
	movl	24(%esp), %edi
	imull	-4(%edx), %esi
	addl	$7, %esi
	shrl	$3, %esi
	addl	-4(%edi,%ebx,4), %esi
	cmpl	$7, %ebx
	movl	%esi, (%edi,%ebx,4)
	jne	.L253
	popl	%ebx
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L249:
	.cfi_restore_state
	movl	$0, 24(%edx)
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L247:
	cmpl	$1, %ebx
	sbbl	%ebx, %ebx
	notl	%ebx
	andl	%ebx, %esi
	jmp	.L248
	.p2align 4,,10
	.p2align 3
.L245:
	cmpl	$1, %edi
	sbbl	%edi, %edi
	notl	%edi
	andl	%edi, %esi
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L243:
	cmpl	$1, %ebx
	sbbl	%ebx, %ebx
	notl	%ebx
	andl	%ebx, %edi
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L241:
	cmpl	$1, %edi
	sbbl	%edi, %edi
	notl	%edi
	andl	%edi, %esi
	jmp	.L242
	.p2align 4,,10
	.p2align 3
.L239:
	cmpl	$1, %ebx
	sbbl	%ebx, %ebx
	notl	%ebx
	andl	%ebx, %edi
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L237:
	cmpl	$1, %ebx
	sbbl	%edi, %edi
	notl	%edi
	andl	%edi, %esi
	jmp	.L238
	.cfi_endproc
.LFE168:
	.size	Adam7_getpassvalues, .-Adam7_getpassvalues
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.type	unfilter, @function
unfilter:
.LFB171:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$176, %esp
	.cfi_def_cfa_offset 196
	movl	%eax, 28(%esp)
	movl	200(%esp), %eax
	leal	7(%eax), %edx
	imull	%ecx, %eax
	movl	%edx, %edi
	shrl	$3, %edi
	movl	%edi, %esi
	movl	%edi, 60(%esp)
	movl	196(%esp), %edi
	addl	$7, %eax
	shrl	$3, %eax
	testl	%edi, %edi
	movl	%eax, %ebp
	movl	%eax, (%esp)
	je	.L263
	movl	%eax, %edi
	movl	%esi, %ecx
	negl	%esi
	addl	$1, %edi
	movl	%ebx, %edx
	movl	%esi, 160(%esp)
	movl	%edi, 68(%esp)
	movl	%ebx, %edi
	movl	%esi, %ebx
	movl	28(%esp), %esi
	movl	%ebp, %eax
	addl	$1, %edi
	subl	$4, %eax
	movl	%edx, 76(%esp)
	movl	$0, 16(%esp)
	shrl	$2, %eax
	addl	%ebx, %esi
	leal	5(%edx), %ebx
	movl	%ebp, %edx
	movl	%esi, 20(%esp)
	movl	28(%esp), %esi
	movl	%ebx, 56(%esp)
	leal	4(%esi), %ebx
	movl	%ebx, 36(%esp)
	leal	1(%eax), %ebx
	movl	%ebx, 92(%esp)
	sall	$2, %ebx
	movl	%ebx, %esi
	movl	%ebx, 152(%esp)
	leal	-1(%ebp), %ebx
	cmpl	$3, %ebx
	movl	%ebx, %ebp
	movl	%ebx, 100(%esp)
	sbbl	%eax, %eax
	notl	%eax
	andl	%esi, %eax
	movl	%edx, %esi
	movl	%eax, %ebx
	movl	%eax, 120(%esp)
	leal	1(%eax), %eax
	addl	$2, %ebx
	movl	%eax, 116(%esp)
	leal	-4(%ecx), %eax
	movl	%ebx, 84(%esp)
	shrl	$2, %eax
	leal	1(%eax), %ebx
	leal	-1(%ecx), %eax
	movl	%ebx, 88(%esp)
	sall	$2, %ebx
	cmpl	$3, %eax
	movl	%eax, 96(%esp)
	sbbl	%eax, %eax
	movl	%ebx, 148(%esp)
	notl	%eax
	andl	%ebx, %eax
	movl	%eax, %ebx
	movl	%eax, 108(%esp)
	leal	1(%eax), %eax
	addl	$2, %ebx
	cmpl	$1, %ecx
	movl	%eax, 104(%esp)
	sbbl	%eax, %eax
	movl	%ebx, 80(%esp)
	notl	%eax
	movl	%ecx, %ebx
	andl	%ecx, %eax
	subl	%eax, %esi
	movl	%eax, %ecx
	movl	%eax, 72(%esp)
	movl	%esi, %edx
	movl	%esi, 168(%esp)
	movl	%eax, %esi
	leal	-4(%edx), %eax
	subl	%ebx, %esi
	cmpl	$6, %edx
	seta	127(%esp)
	movl	%esi, %ebx
	movl	%esi, 128(%esp)
	shrl	$2, %eax
	leal	1(%eax), %edx
	movl	%ecx, %eax
	movl	%edx, 112(%esp)
	sall	$2, %edx
	movl	%edx, %esi
	movl	%edx, 164(%esp)
	movl	%ebp, %edx
	subl	%ecx, %edx
	movl	28(%esp), %ebp
	movl	%edx, 156(%esp)
	movl	%esi, %edx
	xorl	%esi, %esi
	addl	%ecx, %edx
	movl	76(%esp), %ecx
	movl	%edx, 172(%esp)
	notl	%ecx
	movl	%ecx, 64(%esp)
	leal	1(%eax), %ecx
	movl	%ecx, 132(%esp)
	leal	4(%eax), %ecx
	addl	$5, %eax
	movl	%ecx, 136(%esp)
	leal	4(%ebx), %ecx
	movl	%eax, 144(%esp)
	movl	%ebp, %eax
	movl	%esi, %ebx
	movl	%edi, %ebp
	movl	%ecx, 140(%esp)
	movl	%eax, %edi
	.p2align 4,,10
	.p2align 3
.L355:
	movl	%edi, %ecx
	subl	28(%esp), %ecx
	cmpb	$4, -1(%ebp)
	movl	64(%esp), %eax
	movl	%edi, 32(%esp)
	leal	(%eax,%ebp), %esi
	ja	.L356
	movzbl	-1(%ebp), %eax
	jmp	*.L266(,%eax,4)
	.section	.rodata
	.align 4
	.align 4
.L266:
	.long	.L265
	.long	.L267
	.long	.L268
	.long	.L269
	.long	.L270
	.text
	.p2align 4,,10
	.p2align 3
.L269:
	testl	%ebx, %ebx
	je	.L483
	movl	60(%esp), %ecx
	testl	%ecx, %ecx
	je	.L315
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L316:
	movzbl	(%ebx,%eax), %edx
	shrb	%dl
	addb	0(%ebp,%eax), %dl
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L316
.L315:
	movl	72(%esp), %eax
	cmpl	%eax, (%esp)
	jbe	.L273
	movl	20(%esp), %esi
	movl	%eax, %ecx
	.p2align 4,,10
	.p2align 3
.L317:
	movzbl	(%esi,%ecx), %edx
	movzbl	(%ebx,%ecx), %eax
	addl	%edx, %eax
	sarl	%eax
	addb	0(%ebp,%ecx), %al
	movb	%al, (%edi,%ecx)
	addl	$1, %ecx
	cmpl	(%esp), %ecx
	jne	.L317
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L268:
	testl	%ebx, %ebx
	je	.L484
	movl	(%esp), %esi
	testl	%esi, %esi
	je	.L273
	cmpl	%ebp, 36(%esp)
	setbe	%dl
	cmpl	56(%esp), %edi
	setnb	%al
	orl	%eax, %edx
	leal	4(%ebx), %eax
	cmpl	%eax, %edi
	setnb	%cl
	cmpl	36(%esp), %ebx
	setnb	%al
	orl	%ecx, %eax
	andl	%eax, %edx
	cmpl	$6, %esi
	seta	%al
	testb	%al, %dl
	je	.L360
	movl	%edi, %eax
	orl	%ebp, %eax
	orl	%ebx, %eax
	testb	$3, %al
	jne	.L360
	cmpl	$2, 100(%esp)
	jbe	.L299
	xorl	%esi, %esi
.L300:
	movl	0(%ebp,%esi,4), %edx
	movl	(%ebx,%esi,4), %ecx
	movl	%edx, %eax
	andl	$2139062143, %ecx
	andl	$2139062143, %eax
	addl	%eax, %ecx
	movl	(%ebx,%esi,4), %eax
	xorl	%edx, %eax
	andl	$-2139062144, %eax
	xorl	%ecx, %eax
	movl	%eax, (%edi,%esi,4)
	addl	$1, %esi
	cmpl	%esi, 92(%esp)
	ja	.L300
	movl	152(%esp), %esi
	cmpl	%esi, (%esp)
	je	.L273
.L299:
	movl	120(%esp), %esi
	movl	(%esp), %ecx
	movzbl	(%ebx,%esi), %eax
	addb	0(%ebp,%esi), %al
	movb	%al, (%edi,%esi)
	movl	116(%esp), %esi
	cmpl	%esi, %ecx
	je	.L273
	movzbl	(%ebx,%esi), %eax
	addb	0(%ebp,%esi), %al
	movb	%al, (%edi,%esi)
	movl	84(%esp), %eax
	cmpl	%eax, %ecx
	je	.L273
	movl	%eax, %esi
	movzbl	(%ebx,%eax), %eax
	addb	0(%ebp,%esi), %al
	movb	%al, (%edi,%esi)
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L265:
	movl	(%esp), %esi
	testl	%esi, %esi
	je	.L273
	cmpl	36(%esp), %ebp
	setnb	%dl
	cmpl	56(%esp), %edi
	setnb	%al
	orl	%edx, %eax
	cmpl	$9, %esi
	seta	%dl
	testb	%dl, %al
	je	.L357
	movl	%edi, %eax
	orl	%ebp, %eax
	testb	$3, %al
	jne	.L357
	cmpl	$2, 100(%esp)
	jbe	.L275
	xorl	%eax, %eax
.L276:
	movl	0(%ebp,%eax,4), %edx
	movl	%edx, (%edi,%eax,4)
	addl	$1, %eax
	cmpl	92(%esp), %eax
	jb	.L276
	movl	152(%esp), %esi
	cmpl	%esi, (%esp)
	je	.L273
.L275:
	movl	120(%esp), %esi
	movl	(%esp), %ecx
	movzbl	0(%ebp,%esi), %eax
	movb	%al, (%edi,%esi)
	movl	116(%esp), %esi
	cmpl	%esi, %ecx
	je	.L273
	movzbl	0(%ebp,%esi), %eax
	movb	%al, (%edi,%esi)
	movl	84(%esp), %eax
	cmpl	%eax, %ecx
	je	.L273
.L310:
	movl	%eax, %esi
	movzbl	0(%ebp,%eax), %eax
	movb	%al, (%edi,%esi)
	.p2align 4,,10
	.p2align 3
.L273:
	movl	(%esp), %esi
	movl	68(%esp), %ebx
	addl	$1, 16(%esp)
	addl	%ebx, 56(%esp)
	movl	16(%esp), %eax
	addl	%ebx, %ebp
	addl	%esi, %edi
	addl	%esi, 20(%esp)
	addl	%esi, 36(%esp)
	cmpl	196(%esp), %eax
	movl	32(%esp), %ebx
	jne	.L355
.L263:
	xorl	%eax, %eax
.L472:
	addl	$176, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L270:
	.cfi_restore_state
	testl	%ebx, %ebx
	je	.L485
	movl	60(%esp), %esi
	testl	%esi, %esi
	je	.L329
	cmpl	%ebp, 36(%esp)
	setbe	%dl
	cmpl	56(%esp), %edi
	setnb	%al
	orl	%eax, %edx
	leal	4(%ebx), %eax
	cmpl	%eax, %edi
	setnb	%cl
	cmpl	36(%esp), %ebx
	setnb	%al
	orl	%ecx, %eax
	andl	%eax, %edx
	cmpl	$6, %esi
	seta	%al
	testb	%al, %dl
	je	.L363
	movl	%edi, %eax
	orl	%ebp, %eax
	orl	%ebx, %eax
	testb	$3, %al
	jne	.L363
	cmpl	$2, 96(%esp)
	jbe	.L331
	xorl	%esi, %esi
.L332:
	movl	0(%ebp,%esi,4), %edx
	movl	(%ebx,%esi,4), %ecx
	movl	%edx, %eax
	andl	$2139062143, %ecx
	andl	$2139062143, %eax
	addl	%eax, %ecx
	movl	(%ebx,%esi,4), %eax
	xorl	%edx, %eax
	andl	$-2139062144, %eax
	xorl	%ecx, %eax
	movl	%eax, (%edi,%esi,4)
	addl	$1, %esi
	cmpl	%esi, 88(%esp)
	ja	.L332
	movl	148(%esp), %esi
	cmpl	%esi, 60(%esp)
	je	.L329
.L331:
	movl	108(%esp), %esi
	movl	60(%esp), %ecx
	movzbl	(%ebx,%esi), %eax
	addb	0(%ebp,%esi), %al
	movb	%al, (%edi,%esi)
	movl	104(%esp), %esi
	cmpl	%esi, %ecx
	je	.L329
	movzbl	(%ebx,%esi), %eax
	addb	0(%ebp,%esi), %al
	movb	%al, (%edi,%esi)
	movl	80(%esp), %eax
	cmpl	%eax, %ecx
	je	.L329
	movl	%eax, %esi
	movzbl	(%ebx,%eax), %eax
	addb	0(%ebp,%esi), %al
	movb	%al, (%edi,%esi)
.L329:
	movl	72(%esp), %eax
	cmpl	%eax, (%esp)
	jbe	.L273
	movl	160(%esp), %esi
	movl	%ebx, 52(%esp)
	movl	%ebp, 40(%esp)
	movl	%edi, 44(%esp)
	addl	%ebx, %esi
	movl	%esi, 48(%esp)
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L487:
	cmpw	%dx, 8(%esp)
	jle	.L367
.L337:
	movzbl	12(%esp), %edx
	addl	%esi, %edx
	movl	44(%esp), %esi
	movb	%dl, (%esi,%eax)
	addl	$1, %eax
	cmpl	(%esp), %eax
	je	.L486
.L339:
	movl	40(%esp), %edi
	movl	48(%esp), %esi
	movzbl	(%edi,%eax), %ebx
	movl	52(%esp), %edi
	movzbl	(%esi,%eax), %esi
	movb	%bl, 12(%esp)
	movzbl	(%edi,%eax), %ebx
	movl	20(%esp), %edi
	movb	%bl, 24(%esp)
	movzbl	(%edi,%eax), %ecx
	movzbl	%bl, %edi
	movl	%esi, %ebx
	movl	%edi, %edx
	movzbl	%bl, %ebx
	subl	%ebx, %edx
	movl	%edx, %ebp
	movb	%cl, 4(%esp)
	sarl	$31, %ebp
	xorl	%ebp, %edx
	subl	%ebp, %edx
	movl	%edx, 8(%esp)
	movzbl	4(%esp), %edx
	movl	%edx, %ecx
	addl	%edi, %edx
	subl	%ebx, %edx
	subl	%ebx, %ecx
	subl	%ebx, %edx
	movl	%ecx, %ebp
	movl	%edx, %ebx
	sarl	$31, %ebp
	sarl	$31, %ebx
	xorl	%ebp, %ecx
	xorl	%ebx, %edx
	subl	%ebp, %ecx
	subl	%ebx, %edx
	cmpw	%dx, %cx
	jg	.L487
.L367:
	cmpw	%cx, 8(%esp)
	movzbl	24(%esp), %esi
	jg	.L337
	movzbl	4(%esp), %esi
	jmp	.L337
	.p2align 4,,10
	.p2align 3
.L267:
	movl	60(%esp), %ebx
	testl	%ebx, %ebx
	je	.L272
	cmpl	36(%esp), %ebp
	setnb	%dl
	cmpl	56(%esp), %edi
	setnb	%al
	orl	%edx, %eax
	cmpl	$9, 60(%esp)
	seta	%dl
	testb	%dl, %al
	je	.L358
	movl	%edi, %eax
	orl	%ebp, %eax
	testb	$3, %al
	jne	.L358
	cmpl	$2, 96(%esp)
	jbe	.L282
	xorl	%eax, %eax
.L283:
	movl	0(%ebp,%eax,4), %edx
	movl	%edx, (%edi,%eax,4)
	addl	$1, %eax
	cmpl	%eax, 88(%esp)
	ja	.L283
	movl	148(%esp), %ebx
	cmpl	%ebx, 60(%esp)
	je	.L272
.L282:
	movl	108(%esp), %ebx
	movl	60(%esp), %edx
	movzbl	0(%ebp,%ebx), %eax
	movb	%al, (%edi,%ebx)
	movl	104(%esp), %ebx
	cmpl	%ebx, %edx
	je	.L272
	movzbl	0(%ebp,%ebx), %eax
	movb	%al, (%edi,%ebx)
	movl	80(%esp), %eax
	cmpl	%eax, %edx
	je	.L272
	movl	%eax, %ebx
	movzbl	0(%ebp,%eax), %eax
	movb	%al, (%edi,%ebx)
.L272:
	movl	72(%esp), %ebx
	cmpl	%ebx, (%esp)
	jbe	.L273
	movl	132(%esp), %eax
	movl	76(%esp), %edx
	addl	%esi, %eax
	addl	%edx, %eax
	movl	%eax, 12(%esp)
	movl	128(%esp), %eax
	leal	(%ecx,%eax), %edx
	movl	%edx, 8(%esp)
	movl	28(%esp), %edx
	movl	8(%esp), %eax
	addl	%edx, %eax
	movl	%eax, 24(%esp)
	movl	%ebx, %eax
	movl	136(%esp), %ebx
	addl	%ecx, %eax
	addl	%eax, %edx
	movl	%edx, 4(%esp)
	leal	(%ecx,%ebx), %edx
	addl	140(%esp), %ecx
	movl	%edx, %ebx
	cmpl	%ecx, %eax
	setge	%cl
	cmpl	%edx, 8(%esp)
	setge	%dl
	orl	%ecx, %edx
	movl	144(%esp), %ecx
	andb	127(%esp), %dl
	addl	%esi, %ecx
	addl	76(%esp), %ecx
	movl	4(%esp), %esi
	cmpl	%ecx, %esi
	setnb	%cl
	addl	28(%esp), %ebx
	movl	%ebx, %eax
	movl	12(%esp), %ebx
	cmpl	%eax, %ebx
	setnb	%al
	orl	%eax, %ecx
	testb	%cl, %dl
	je	.L288
	movl	24(%esp), %ecx
	movl	%esi, %eax
	orl	%ecx, %eax
	orl	%ebx, %eax
	testb	$3, %al
	jne	.L288
	cmpl	$2, 156(%esp)
	jbe	.L359
	movl	%edi, 8(%esp)
	xorl	%esi, %esi
	movl	%ecx, %edi
.L290:
	movl	(%ebx,%esi,4), %edx
	movl	(%edi,%esi,4), %ecx
	movl	%edx, %eax
	xorl	(%edi,%esi,4), %edx
	andl	$2139062143, %ecx
	andl	$2139062143, %eax
	addl	%ecx, %eax
	movl	4(%esp), %ecx
	andl	$-2139062144, %edx
	xorl	%edx, %eax
	movl	%eax, (%ecx,%esi,4)
	addl	$1, %esi
	cmpl	112(%esp), %esi
	jb	.L290
	movl	168(%esp), %esi
	cmpl	%esi, 164(%esp)
	movl	8(%esp), %edi
	je	.L273
	movl	172(%esp), %eax
.L289:
	movl	60(%esp), %esi
	movl	%eax, %edx
	movzbl	0(%ebp,%eax), %ecx
	movl	(%esp), %ebx
	subl	%esi, %edx
	addb	(%edi,%edx), %cl
	leal	1(%eax), %edx
	cmpl	%edx, %ebx
	movb	%cl, (%edi,%eax)
	jbe	.L273
	subl	%esi, %edx
	movzbl	1(%eax,%ebp), %ecx
	addb	(%edi,%edx), %cl
	leal	2(%eax), %edx
	cmpl	%edx, %ebx
	movb	%cl, 1(%eax,%edi)
	jbe	.L273
.L352:
	subl	60(%esp), %edx
	movzbl	2(%eax,%ebp), %ecx
	addb	(%edi,%edx), %cl
	movb	%cl, 2(%eax,%edi)
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L486:
	movl	40(%esp), %ebp
	movl	%esi, %edi
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L359:
	movl	72(%esp), %eax
	jmp	.L289
	.p2align 4,,10
	.p2align 3
.L288:
	movl	72(%esp), %eax
	movl	(%esp), %ecx
	movl	20(%esp), %ebx
	.p2align 4,,10
	.p2align 3
.L294:
	movzbl	0(%ebp,%eax), %edx
	addb	(%ebx,%eax), %dl
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L294
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L358:
	movl	60(%esp), %ebx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L281:
	movzbl	0(%ebp,%eax), %edx
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	.L281
	jmp	.L272
	.p2align 4,,10
	.p2align 3
.L357:
	movl	(%esp), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L274:
	movzbl	0(%ebp,%eax), %edx
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L274
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L363:
	movl	60(%esp), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L330:
	movzbl	0(%ebp,%eax), %edx
	addb	(%ebx,%eax), %dl
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L330
	jmp	.L329
	.p2align 4,,10
	.p2align 3
.L360:
	movl	(%esp), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L298:
	movzbl	0(%ebp,%eax), %edx
	addb	(%ebx,%eax), %dl
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L298
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L485:
	movl	60(%esp), %eax
	testl	%eax, %eax
	je	.L328
	cmpl	36(%esp), %ebp
	setnb	%dl
	cmpl	56(%esp), %edi
	setnb	%al
	orl	%edx, %eax
	cmpl	$9, 60(%esp)
	seta	%dl
	testb	%dl, %al
	je	.L365
	movl	%edi, %eax
	orl	%ebp, %eax
	testb	$3, %al
	jne	.L365
	cmpl	$2, 96(%esp)
	jbe	.L341
	xorl	%eax, %eax
.L342:
	movl	0(%ebp,%eax,4), %edx
	movl	%edx, (%edi,%eax,4)
	addl	$1, %eax
	cmpl	%eax, 88(%esp)
	ja	.L342
	movl	148(%esp), %ebx
	cmpl	%ebx, 60(%esp)
	je	.L328
.L341:
	movl	108(%esp), %ebx
	movl	60(%esp), %edx
	movzbl	0(%ebp,%ebx), %eax
	movb	%al, (%edi,%ebx)
	movl	104(%esp), %eax
	cmpl	%eax, %edx
	je	.L328
	movl	%eax, %ebx
	movzbl	0(%ebp,%eax), %eax
	movb	%al, (%edi,%ebx)
	movl	80(%esp), %eax
	cmpl	%eax, %edx
	je	.L328
	movl	%eax, %ebx
	movzbl	0(%ebp,%eax), %eax
	movb	%al, (%edi,%ebx)
.L328:
	movl	72(%esp), %ebx
	cmpl	%ebx, (%esp)
	jbe	.L273
	movl	132(%esp), %eax
	movl	76(%esp), %edx
	addl	%esi, %eax
	addl	%edx, %eax
	movl	%eax, 12(%esp)
	movl	128(%esp), %eax
	leal	(%ecx,%eax), %edx
	movl	%edx, 8(%esp)
	movl	28(%esp), %edx
	movl	8(%esp), %eax
	addl	%edx, %eax
	movl	%eax, 24(%esp)
	movl	%ebx, %eax
	movl	136(%esp), %ebx
	addl	%ecx, %eax
	addl	%eax, %edx
	movl	%edx, 4(%esp)
	leal	(%ecx,%ebx), %edx
	addl	140(%esp), %ecx
	movl	%edx, %ebx
	cmpl	%eax, %ecx
	setle	%al
	cmpl	8(%esp), %edx
	setle	%dl
	orl	%edx, %eax
	andb	127(%esp), %al
	movl	%eax, %ecx
	movl	144(%esp), %eax
	addl	%esi, %eax
	addl	76(%esp), %eax
	movl	4(%esp), %esi
	cmpl	%eax, %esi
	setnb	%al
	addl	28(%esp), %ebx
	movl	%ebx, %edx
	movl	12(%esp), %ebx
	cmpl	%edx, %ebx
	setnb	%dl
	orl	%edx, %eax
	testb	%al, %cl
	je	.L347
	movl	24(%esp), %ecx
	movl	%esi, %eax
	orl	%ecx, %eax
	orl	%ebx, %eax
	testb	$3, %al
	jne	.L347
	cmpl	$2, 156(%esp)
	jbe	.L366
	movl	%edi, 8(%esp)
	xorl	%esi, %esi
	movl	%ecx, %edi
.L349:
	movl	(%ebx,%esi,4), %edx
	movl	(%edi,%esi,4), %ecx
	movl	%edx, %eax
	xorl	(%edi,%esi,4), %edx
	andl	$2139062143, %ecx
	andl	$2139062143, %eax
	addl	%ecx, %eax
	movl	4(%esp), %ecx
	andl	$-2139062144, %edx
	xorl	%edx, %eax
	movl	%eax, (%ecx,%esi,4)
	addl	$1, %esi
	cmpl	%esi, 112(%esp)
	ja	.L349
	movl	168(%esp), %esi
	cmpl	%esi, 164(%esp)
	movl	8(%esp), %edi
	je	.L273
	movl	172(%esp), %eax
.L348:
	movl	60(%esp), %esi
	movl	%eax, %edx
	movzbl	0(%ebp,%eax), %ecx
	movl	(%esp), %ebx
	subl	%esi, %edx
	addb	(%edi,%edx), %cl
	leal	1(%eax), %edx
	cmpl	%edx, %ebx
	movb	%cl, (%edi,%eax)
	jbe	.L273
	subl	%esi, %edx
	movzbl	1(%eax,%ebp), %ecx
	addb	(%edi,%edx), %cl
	leal	2(%eax), %edx
	cmpl	%edx, %ebx
	movb	%cl, 1(%eax,%edi)
	ja	.L352
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L484:
	movl	(%esp), %ecx
	testl	%ecx, %ecx
	je	.L273
	cmpl	36(%esp), %ebp
	setnb	%dl
	cmpl	56(%esp), %edi
	setnb	%al
	orl	%edx, %eax
	cmpl	$9, (%esp)
	seta	%dl
	testb	%dl, %al
	je	.L361
	movl	%edi, %eax
	orl	%ebp, %eax
	testb	$3, %al
	jne	.L361
	cmpl	$2, 100(%esp)
	jbe	.L306
	xorl	%eax, %eax
.L307:
	movl	0(%ebp,%eax,4), %edx
	movl	%edx, (%edi,%eax,4)
	addl	$1, %eax
	cmpl	%eax, 92(%esp)
	ja	.L307
	movl	152(%esp), %esi
	cmpl	%esi, (%esp)
	je	.L273
.L306:
	movl	120(%esp), %esi
	movl	(%esp), %ecx
	movzbl	0(%ebp,%esi), %eax
	movb	%al, (%edi,%esi)
	movl	116(%esp), %eax
	cmpl	%eax, %ecx
	je	.L273
	movl	%eax, %esi
	movzbl	0(%ebp,%eax), %eax
	movb	%al, (%edi,%esi)
	movl	84(%esp), %eax
	cmpl	%eax, %ecx
	jne	.L310
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L483:
	movl	60(%esp), %edx
	testl	%edx, %edx
	je	.L314
	cmpl	36(%esp), %ebp
	setnb	%dl
	cmpl	56(%esp), %edi
	setnb	%al
	orl	%edx, %eax
	cmpl	$9, 60(%esp)
	seta	%dl
	testb	%dl, %al
	je	.L362
	movl	%edi, %eax
	orl	%ebp, %eax
	testb	$3, %al
	jne	.L362
	cmpl	$2, 96(%esp)
	jbe	.L319
	xorl	%eax, %eax
.L320:
	movl	0(%ebp,%eax,4), %edx
	movl	%edx, (%edi,%eax,4)
	addl	$1, %eax
	cmpl	%eax, 88(%esp)
	ja	.L320
	movl	148(%esp), %esi
	cmpl	%esi, 60(%esp)
	je	.L314
.L319:
	movl	108(%esp), %esi
	movl	60(%esp), %ecx
	movzbl	0(%ebp,%esi), %eax
	movb	%al, (%edi,%esi)
	movl	104(%esp), %eax
	cmpl	%eax, %ecx
	je	.L314
	movl	%eax, %esi
	movzbl	0(%ebp,%eax), %eax
	movb	%al, (%edi,%esi)
	movl	80(%esp), %eax
	cmpl	%eax, %ecx
	je	.L314
	movl	%eax, %esi
	movzbl	0(%ebp,%eax), %eax
	movb	%al, (%edi,%esi)
.L314:
	movl	(%esp), %esi
	movl	72(%esp), %eax
	cmpl	%eax, %esi
	jbe	.L273
	movl	20(%esp), %ebx
	movl	%esi, %ecx
	.p2align 4,,10
	.p2align 3
.L325:
	movzbl	(%ebx,%eax), %edx
	shrb	%dl
	addb	0(%ebp,%eax), %dl
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L325
	jmp	.L273
.L366:
	movl	72(%esp), %eax
	jmp	.L348
.L362:
	movl	60(%esp), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L318:
	movzbl	0(%ebp,%eax), %edx
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L318
	jmp	.L314
.L365:
	movl	60(%esp), %ebx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L340:
	movzbl	0(%ebp,%eax), %edx
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	.L340
	jmp	.L328
.L361:
	movl	(%esp), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L305:
	movzbl	0(%ebp,%eax), %edx
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L305
	jmp	.L273
.L347:
	movl	72(%esp), %eax
	movl	(%esp), %ecx
	movl	20(%esp), %ebx
	.p2align 4,,10
	.p2align 3
.L353:
	movzbl	0(%ebp,%eax), %edx
	addb	(%ebx,%eax), %dl
	movb	%dl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L353
	jmp	.L273
	.p2align 4,,10
	.p2align 3
.L356:
	movl	$36, %eax
	jmp	.L472
	.cfi_endproc
.LFE171:
	.size	unfilter, .-unfilter
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.type	filterScanline, @function
filterScanline:
.LFB208:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	64(%esp), %eax
	movl	%ecx, (%esp)
	movl	60(%esp), %esi
	cmpb	$4, %al
	ja	.L488
	movzbl	%al, %eax
	movl	%edx, %ebp
	jmp	*.L491(,%eax,4)
	.section	.rodata
	.align 4
	.align 4
.L491:
	.long	.L490
	.long	.L492
	.long	.L493
	.long	.L494
	.long	.L495
	.text
	.p2align 4,,10
	.p2align 3
.L696:
	testl	%esi, %esi
	je	.L694
	leal	4(%ebx), %eax
	cmpl	%eax, %edx
	leal	4(%ebp), %eax
	setnb	%dl
	cmpl	%eax, %ebx
	setnb	%al
	orl	%edx, %eax
	cmpl	$9, %esi
	seta	%dl
	testb	%dl, %al
	je	.L583
	movl	%ebx, %eax
	orl	%ebp, %eax
	testb	$3, %al
	jne	.L583
	leal	-4(%esi), %eax
	xorl	%edx, %edx
	shrl	$2, %eax
	addl	$1, %eax
	leal	0(,%eax,4), %ecx
.L561:
	movl	0(%ebp,%edx,4), %edi
	movl	%edi, (%ebx,%edx,4)
	addl	$1, %edx
	cmpl	%edx, %eax
	ja	.L561
	cmpl	%ecx, %esi
	je	.L565
	movzbl	0(%ebp,%eax,4), %edx
	movb	%dl, (%ebx,%eax,4)
	leal	1(%ecx), %eax
	cmpl	%eax, %esi
	je	.L565
	movzbl	1(%ebp,%ecx), %eax
	movb	%al, 1(%ebx,%ecx)
	leal	2(%ecx), %eax
	cmpl	%eax, %esi
	je	.L565
	movzbl	2(%ebp,%ecx), %eax
	movb	%al, 2(%ebx,%ecx)
.L565:
	movl	%esi, (%esp)
	movl	%esi, %edx
.L549:
	cmpl	%edx, 56(%esp)
	movl	%edx, %eax
	jbe	.L488
	movl	56(%esp), %edi
	subl	%esi, %eax
	leal	(%ebx,%edx), %ecx
	addl	%ebp, %eax
	movl	%eax, 12(%esp)
	movl	%edx, %eax
	subl	%edx, %edi
	addl	$4, %eax
	movl	%edi, 8(%esp)
	leal	0(%ebp,%edx), %edi
	movl	%ecx, %edx
	movl	%esi, %ecx
	movl	%edx, 4(%esp)
	negl	%ecx
	movl	%ecx, 20(%esp)
	leal	(%ebx,%eax), %ecx
	addl	%ebp, %eax
	cmpl	%eax, %edx
	setnb	%dl
	cmpl	%ecx, %edi
	setnb	%al
	orl	%edx, %eax
	cmpl	$6, 8(%esp)
	seta	%dl
	andl	%edx, %eax
	movl	(%esp), %edx
	movb	%al, 16(%esp)
	subl	%esi, %edx
	leal	4(%ebp,%edx), %eax
	cmpl	%eax, 4(%esp)
	setnb	%al
	cmpl	%ecx, 12(%esp)
	setnb	%dl
	orl	%edx, %eax
	testb	%al, 16(%esp)
	je	.L566
	movl	4(%esp), %ecx
	movl	12(%esp), %edx
	orl	%edi, %ecx
	movl	%ecx, %eax
	orl	%edx, %eax
	testb	$3, %al
	jne	.L566
	movl	8(%esp), %ecx
	leal	-4(%ecx), %eax
	shrl	$2, %eax
	leal	1(%eax), %ecx
	movl	%ecx, 12(%esp)
	sall	$2, %ecx
	movl	%ecx, 16(%esp)
	movl	56(%esp), %ecx
	leal	-1(%ecx), %eax
	subl	(%esp), %eax
	cmpl	$2, %eax
	jbe	.L567
	movl	%esi, 60(%esp)
	xorl	%ecx, %ecx
	movl	%ebx, 20(%esp)
	movl	%edx, %esi
.L568:
	movl	(%esi,%ecx,4), %ebx
	movl	(%edi,%ecx,4), %eax
	movl	%ebx, %edx
	andl	$2139062143, %ebx
	xorl	%eax, %edx
	orl	$-2139062144, %eax
	subl	%ebx, %eax
	notl	%edx
	movl	4(%esp), %ebx
	andl	$-2139062144, %edx
	xorl	%edx, %eax
	movl	%eax, (%ebx,%ecx,4)
	addl	$1, %ecx
	cmpl	%ecx, 12(%esp)
	ja	.L568
	movl	16(%esp), %edi
	addl	%edi, (%esp)
	cmpl	%edi, 8(%esp)
	movl	20(%esp), %ebx
	movl	60(%esp), %esi
	je	.L488
.L567:
	movl	(%esp), %edi
	movl	%edi, %edx
	movzbl	0(%ebp,%edi), %eax
	subl	%esi, %edx
	subb	0(%ebp,%edx), %al
	movb	%al, (%ebx,%edi)
	leal	1(%edi), %eax
	cmpl	%eax, 56(%esp)
	jbe	.L488
	subl	%esi, %eax
	movl	%eax, %edx
	movzbl	1(%ebp,%edi), %eax
	subb	0(%ebp,%edx), %al
	movb	%al, 1(%ebx,%edi)
	leal	2(%edi), %eax
	cmpl	%eax, 56(%esp)
	jbe	.L488
	subl	%esi, %eax
	movl	(%esp), %esi
	movzbl	2(%ebp,%esi), %edx
	subb	0(%ebp,%eax), %dl
	movb	%dl, 2(%ebx,%esi)
	.p2align 4,,10
	.p2align 3
.L488:
	addl	$36, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L494:
	.cfi_restore_state
	movl	(%esp), %edx
	testl	%edx, %edx
	je	.L695
	testl	%esi, %esi
	je	.L578
	movl	(%esp), %edi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L538:
	movzbl	(%edi,%eax), %edx
	movzbl	0(%ebp,%eax), %ecx
	shrb	%dl
	subl	%edx, %ecx
	movb	%cl, (%ebx,%eax)
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	.L538
	movl	%esi, %ecx
.L537:
	cmpl	%ecx, 56(%esp)
	jbe	.L488
	movl	%ebp, %eax
	movl	(%esp), %edi
	subl	%esi, %eax
	movl	%eax, %esi
	.p2align 4,,10
	.p2align 3
.L539:
	movzbl	(%esi,%ecx), %edx
	movzbl	(%edi,%ecx), %eax
	addl	%edx, %eax
	movzbl	0(%ebp,%ecx), %edx
	sarl	%eax
	subl	%eax, %edx
	movb	%dl, (%ebx,%ecx)
	addl	$1, %ecx
	cmpl	56(%esp), %ecx
	jne	.L539
	addl	$36, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L495:
	.cfi_restore_state
	movl	(%esp), %eax
	testl	%eax, %eax
	je	.L696
	testl	%esi, %esi
	je	.L580
	leal	4(%ebx), %ecx
	leal	4(%ebp), %eax
	movl	(%esp), %edi
	cmpl	%ecx, %edx
	setnb	%dl
	cmpl	%eax, %ebx
	setnb	%al
	orl	%eax, %edx
	cmpl	%ecx, %edi
	movl	%edi, %eax
	setnb	%cl
	addl	$4, %eax
	cmpl	%eax, %ebx
	setnb	%al
	orl	%ecx, %eax
	andl	%eax, %edx
	cmpl	$6, %esi
	seta	%al
	testb	%al, %dl
	je	.L581
	movl	%edi, %eax
	orl	%ebp, %eax
	orl	%ebx, %eax
	testb	$3, %al
	jne	.L581
	leal	-4(%esi), %edi
	xorl	%ecx, %ecx
	shrl	$2, %edi
	leal	1(%edi), %eax
	leal	0(,%eax,4), %edi
	movl	%eax, 4(%esp)
	movl	%edi, 8(%esp)
.L552:
	movl	(%esp), %edi
	movl	0(%ebp,%ecx,4), %eax
	movl	(%edi,%ecx,4), %edi
	movl	%edi, %edx
	andl	$2139062143, %edi
	xorl	%eax, %edx
	orl	$-2139062144, %eax
	notl	%edx
	subl	%edi, %eax
	andl	$-2139062144, %edx
	xorl	%edx, %eax
	movl	%eax, (%ebx,%ecx,4)
	addl	$1, %ecx
	cmpl	%ecx, 4(%esp)
	ja	.L552
	movl	8(%esp), %edi
	cmpl	%edi, %esi
	je	.L556
	movl	4(%esp), %ecx
	movl	(%esp), %edx
	movzbl	0(%ebp,%ecx,4), %eax
	subb	(%edx,%ecx,4), %al
	movb	%al, (%ebx,%ecx,4)
	leal	1(%edi), %eax
	cmpl	%eax, %esi
	je	.L556
	movzbl	1(%ebp,%edi), %eax
	subb	1(%edx,%edi), %al
	movb	%al, 1(%ebx,%edi)
	leal	2(%edi), %eax
	cmpl	%eax, %esi
	je	.L556
	movl	(%esp), %ecx
	movzbl	2(%ebp,%edi), %eax
	subb	2(%ecx,%edi), %al
	movb	%al, 2(%ebx,%edi)
.L556:
	movl	%esi, %edx
.L550:
	cmpl	%edx, 56(%esp)
	jbe	.L488
	movl	%esi, %eax
	movl	(%esp), %esi
	movl	%ebx, 28(%esp)
	negl	%eax
	movl	%ebp, 32(%esp)
	addl	%eax, %esi
	addl	%ebp, %eax
	movl	%esi, 20(%esp)
	movl	%eax, 24(%esp)
	jmp	.L559
	.p2align 4,,10
	.p2align 3
.L697:
	cmpw	%ax, 8(%esp)
	jle	.L584
.L557:
	movzbl	12(%esp), %eax
	movl	28(%esp), %edi
	movl	%esi, %ebx
	subl	%ebx, %eax
	movb	%al, (%edi,%edx)
	addl	$1, %edx
	cmpl	56(%esp), %edx
	je	.L488
.L559:
	movl	32(%esp), %eax
	movl	24(%esp), %edi
	movzbl	(%eax,%edx), %eax
	movzbl	(%edi,%edx), %ebx
	movb	%al, 12(%esp)
	movl	20(%esp), %eax
	movb	%bl, 4(%esp)
	movzbl	(%eax,%edx), %esi
	movl	(%esp), %eax
	movzbl	(%eax,%edx), %eax
	movl	%esi, %ecx
	movzbl	%cl, %ebx
	movzbl	%al, %edi
	movb	%al, 16(%esp)
	movl	%edi, %eax
	subl	%ebx, %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	xorl	%ecx, %eax
	subl	%ecx, %eax
	movl	%eax, 8(%esp)
	movzbl	4(%esp), %eax
	movl	%eax, %ecx
	addl	%edi, %eax
	subl	%ebx, %eax
	subl	%ebx, %ecx
	subl	%ebx, %eax
	movl	%ecx, %ebp
	movl	%eax, %ebx
	sarl	$31, %ebp
	sarl	$31, %ebx
	xorl	%ebp, %ecx
	xorl	%ebx, %eax
	subl	%ebp, %ecx
	subl	%ebx, %eax
	cmpw	%ax, %cx
	jg	.L697
.L584:
	cmpw	%cx, 8(%esp)
	movzbl	16(%esp), %esi
	jg	.L557
	movzbl	4(%esp), %esi
	jmp	.L557
	.p2align 4,,10
	.p2align 3
.L492:
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L497
	leal	4(%ebx), %eax
	cmpl	%eax, %edx
	leal	4(%ebp), %eax
	setnb	%dl
	cmpl	%eax, %ebx
	setnb	%al
	orl	%edx, %eax
	cmpl	$9, %esi
	seta	%dl
	testb	%dl, %al
	je	.L575
	movl	%ebx, %eax
	orl	%ebp, %eax
	testb	$3, %al
	jne	.L575
	leal	-4(%esi), %eax
	xorl	%edx, %edx
	shrl	$2, %eax
	addl	$1, %eax
	leal	0(,%eax,4), %ecx
.L507:
	movl	0(%ebp,%edx,4), %edi
	movl	%edi, (%ebx,%edx,4)
	addl	$1, %edx
	cmpl	%edx, %eax
	ja	.L507
	cmpl	%esi, %ecx
	je	.L511
	movzbl	0(%ebp,%eax,4), %edx
	movb	%dl, (%ebx,%eax,4)
	leal	1(%ecx), %eax
	cmpl	%eax, %esi
	je	.L511
	movzbl	1(%ebp,%ecx), %eax
	movb	%al, 1(%ebx,%ecx)
	leal	2(%ecx), %eax
	cmpl	%eax, %esi
	je	.L511
	movzbl	2(%ebp,%ecx), %eax
	movb	%al, 2(%ebx,%ecx)
.L511:
	movl	%esi, %eax
.L497:
	cmpl	%eax, 56(%esp)
	jbe	.L488
	leal	0(%ebp,%eax), %ecx
	movl	56(%esp), %edi
	movl	%eax, %edx
	subl	%esi, %edx
	movl	%ecx, 12(%esp)
	movl	%esi, %ecx
	addl	%ebp, %edx
	negl	%ecx
	subl	%eax, %edi
	movl	%edx, 4(%esp)
	movl	%ecx, 20(%esp)
	leal	4(%eax), %ecx
	movl	%edi, 8(%esp)
	leal	(%ebx,%eax), %edi
	leal	(%ebx,%ecx), %edx
	addl	%ebp, %ecx
	cmpl	%ecx, %edi
	movl	%edi, (%esp)
	setnb	%cl
	movl	%edx, 16(%esp)
	movl	%ecx, %edi
	movl	%edx, %ecx
	movl	12(%esp), %edx
	cmpl	%edx, %ecx
	setbe	%cl
	orl	%edi, %ecx
	cmpl	$6, 8(%esp)
	seta	%dl
	movl	%edx, %edi
	andl	%edi, %ecx
	movl	%eax, %edi
	subl	%esi, %edi
	leal	4(%ebp,%edi), %edi
	cmpl	%edi, (%esp)
	setnb	%dl
	movl	%edx, %edi
	movl	4(%esp), %edx
	cmpl	%edx, 16(%esp)
	setbe	%dl
	orl	%edi, %edx
	testb	%dl, %cl
	je	.L512
	movl	(%esp), %edx
	movl	12(%esp), %ecx
	orl	%ecx, %edx
	orl	4(%esp), %edx
	andl	$3, %edx
	jne	.L512
	movl	8(%esp), %edx
	leal	-4(%edx), %edi
	shrl	$2, %edi
	leal	1(%edi), %edx
	movl	%edx, 12(%esp)
	sall	$2, %edx
	movl	%edx, 16(%esp)
	movl	56(%esp), %edx
	subl	$1, %edx
	subl	%eax, %edx
	cmpl	$2, %edx
	jbe	.L513
	movl	%ebx, 24(%esp)
	movl	4(%esp), %ebx
	xorl	%edi, %edi
	movl	%esi, 60(%esp)
	movl	%eax, 20(%esp)
	movl	%ecx, %esi
.L514:
	movl	(%ebx,%edi,4), %ecx
	movl	(%esi,%edi,4), %eax
	movl	%ecx, %edx
	andl	$2139062143, %ecx
	xorl	%eax, %edx
	orl	$-2139062144, %eax
	subl	%ecx, %eax
	notl	%edx
	movl	(%esp), %ecx
	andl	$-2139062144, %edx
	xorl	%edx, %eax
	movl	%eax, (%ecx,%edi,4)
	addl	$1, %edi
	cmpl	12(%esp), %edi
	jb	.L514
	movl	16(%esp), %edi
	movl	20(%esp), %eax
	movl	24(%esp), %ebx
	movl	60(%esp), %esi
	addl	%edi, %eax
	cmpl	8(%esp), %edi
	je	.L488
.L513:
	movl	%eax, %ecx
	movzbl	0(%ebp,%eax), %edx
	subl	%esi, %ecx
	subb	0(%ebp,%ecx), %dl
	movb	%dl, (%ebx,%eax)
	leal	1(%eax), %edx
	cmpl	%edx, 56(%esp)
	jbe	.L488
	movl	%edx, %ecx
	movzbl	1(%ebp,%eax), %edx
	subl	%esi, %ecx
	subb	0(%ebp,%ecx), %dl
	movb	%dl, 1(%ebx,%eax)
	leal	2(%eax), %edx
	cmpl	%edx, 56(%esp)
	jbe	.L488
	movzbl	2(%ebp,%eax), %ecx
	subl	%esi, %edx
	subb	0(%ebp,%edx), %cl
	movb	%cl, 2(%ebx,%eax)
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L493:
	movl	(%esp), %edi
	testl	%edi, %edi
	je	.L698
	movl	56(%esp), %ecx
	testl	%ecx, %ecx
	je	.L488
	leal	4(%ebx), %edx
	leal	4(%ebp), %eax
	movl	(%esp), %esi
	cmpl	%edx, %ebp
	setnb	%cl
	cmpl	%eax, %ebx
	setnb	%al
	orl	%eax, %ecx
	cmpl	%edx, %esi
	leal	4(%esi), %edx
	setnb	%al
	cmpl	%edx, %ebx
	setnb	%dl
	orl	%edx, %eax
	andl	%ecx, %eax
	cmpl	$6, 56(%esp)
	seta	%dl
	testb	%dl, %al
	je	.L576
	movl	%esi, %eax
	orl	%ebp, %eax
	orl	%ebx, %eax
	testb	$3, %al
	jne	.L576
	movl	56(%esp), %eax
	xorl	%ecx, %ecx
	leal	-4(%eax), %edi
	shrl	$2, %edi
	addl	$1, %edi
	leal	0(,%edi,4), %esi
	movl	%esi, 4(%esp)
.L523:
	movl	(%esp), %esi
	movl	0(%ebp,%ecx,4), %eax
	movl	(%esi,%ecx,4), %esi
	movl	%esi, %edx
	andl	$2139062143, %esi
	xorl	%eax, %edx
	orl	$-2139062144, %eax
	notl	%edx
	subl	%esi, %eax
	andl	$-2139062144, %edx
	xorl	%edx, %eax
	movl	%eax, (%ebx,%ecx,4)
	addl	$1, %ecx
	cmpl	%ecx, %edi
	ja	.L523
	movl	4(%esp), %esi
	cmpl	%esi, 56(%esp)
	je	.L488
	movl	(%esp), %ecx
	movzbl	0(%ebp,%edi,4), %eax
	subb	(%ecx,%edi,4), %al
	movb	%al, (%ebx,%edi,4)
	leal	1(%esi), %eax
	cmpl	%eax, 56(%esp)
	je	.L488
	movzbl	1(%ebp,%esi), %eax
	subb	1(%ecx,%esi), %al
	movb	%al, 1(%ebx,%esi)
	leal	2(%esi), %eax
	cmpl	%eax, 56(%esp)
	je	.L488
	movl	(%esp), %edi
	movzbl	2(%ebp,%esi), %eax
	subb	2(%edi,%esi), %al
	movb	%al, 2(%ebx,%esi)
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L490:
	movl	56(%esp), %eax
	testl	%eax, %eax
	je	.L488
	leal	4(%ebx), %eax
	cmpl	%eax, %edx
	leal	4(%ebp), %eax
	setnb	%dl
	cmpl	%eax, %ebx
	setnb	%al
	orl	%edx, %eax
	cmpl	$9, 56(%esp)
	seta	%dl
	testb	%dl, %al
	je	.L574
	movl	%ebx, %eax
	orl	%ebp, %eax
	testb	$3, %al
	jne	.L574
	movl	56(%esp), %eax
	leal	-4(%eax), %edx
	xorl	%eax, %eax
	shrl	$2, %edx
	addl	$1, %edx
	leal	0(,%edx,4), %ecx
.L500:
	movl	0(%ebp,%eax,4), %esi
	movl	%esi, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%edx, %eax
	jb	.L500
.L671:
	cmpl	%ecx, 56(%esp)
	je	.L488
	movzbl	0(%ebp,%edx,4), %eax
	movb	%al, (%ebx,%edx,4)
	leal	1(%ecx), %eax
	cmpl	%eax, 56(%esp)
	je	.L488
	movzbl	1(%ebp,%ecx), %eax
	movb	%al, 1(%ebx,%ecx)
	leal	2(%ecx), %eax
	cmpl	%eax, 56(%esp)
	je	.L488
	movzbl	2(%ebp,%ecx), %eax
	movb	%al, 2(%ebx,%ecx)
	addl	$36, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L575:
	.cfi_restore_state
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L506:
	movzbl	0(%ebp,%edx), %eax
	movb	%al, (%ebx,%edx)
	addl	$1, %edx
	cmpl	%esi, %edx
	jne	.L506
	jmp	.L511
	.p2align 4,,10
	.p2align 3
.L512:
	movl	20(%esp), %esi
	leal	0(%ebp,%esi), %ecx
	movl	56(%esp), %esi
	.p2align 4,,10
	.p2align 3
.L518:
	movzbl	0(%ebp,%eax), %edx
	subb	(%ecx,%eax), %dl
	movb	%dl, (%ebx,%eax)
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	.L518
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L574:
	movl	56(%esp), %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L499:
	movzbl	0(%ebp,%edx), %eax
	movb	%al, (%ebx,%edx)
	addl	$1, %edx
	cmpl	%ecx, %edx
	jne	.L499
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L581:
	movl	(%esp), %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L551:
	movzbl	0(%ebp,%edx), %eax
	subb	(%ecx,%edx), %al
	movb	%al, (%ebx,%edx)
	addl	$1, %edx
	cmpl	%esi, %edx
	jne	.L551
	jmp	.L556
	.p2align 4,,10
	.p2align 3
.L576:
	movl	(%esp), %ecx
	movl	56(%esp), %esi
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L522:
	movzbl	0(%ebp,%edx), %eax
	subb	(%ecx,%edx), %al
	movb	%al, (%ebx,%edx)
	addl	$1, %edx
	cmpl	%esi, %edx
	jne	.L522
	jmp	.L488
	.p2align 4,,10
	.p2align 3
.L698:
	movl	56(%esp), %esi
	testl	%esi, %esi
	je	.L488
	leal	4(%ebx), %eax
	cmpl	%eax, %edx
	leal	4(%ebp), %eax
	setnb	%dl
	cmpl	%eax, %ebx
	setnb	%al
	orl	%edx, %eax
	cmpl	$9, 56(%esp)
	seta	%dl
	testb	%dl, %al
	je	.L577
	movl	%ebx, %eax
	orl	%ebp, %eax
	testb	$3, %al
	jne	.L577
	movl	56(%esp), %eax
	leal	-4(%eax), %edx
	xorl	%eax, %eax
	shrl	$2, %edx
	addl	$1, %edx
	leal	0(,%edx,4), %ecx
.L529:
	movl	0(%ebp,%eax,4), %esi
	movl	%esi, (%ebx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %edx
	ja	.L529
	jmp	.L671
	.p2align 4,,10
	.p2align 3
.L695:
	xorl	%eax, %eax
	testl	%esi, %esi
	je	.L536
	leal	4(%ebx), %eax
	cmpl	%eax, %ebp
	leal	4(%ebp), %eax
	setnb	%dl
	cmpl	%eax, %ebx
	setnb	%al
	orl	%edx, %eax
	cmpl	$9, %esi
	seta	%dl
	testb	%dl, %al
	je	.L579
	movl	%ebx, %eax
	orl	%ebp, %eax
	testb	$3, %al
	jne	.L579
	leal	-4(%esi), %eax
	xorl	%edx, %edx
	shrl	$2, %eax
	addl	$1, %eax
	leal	0(,%eax,4), %ecx
.L541:
	movl	0(%ebp,%edx,4), %edi
	movl	%edi, (%ebx,%edx,4)
	addl	$1, %edx
	cmpl	%edx, %eax
	ja	.L541
	cmpl	%ecx, %esi
	je	.L545
	movzbl	0(%ebp,%eax,4), %edx
	movb	%dl, (%ebx,%eax,4)
	leal	1(%ecx), %eax
	cmpl	%eax, %esi
	je	.L545
	movzbl	1(%ebp,%ecx), %eax
	movb	%al, 1(%ebx,%ecx)
	leal	2(%ecx), %eax
	cmpl	%eax, %esi
	je	.L545
	movzbl	2(%ebp,%ecx), %eax
	movb	%al, 2(%ebx,%ecx)
.L545:
	movl	%esi, %eax
.L536:
	cmpl	%eax, 56(%esp)
	jbe	.L488
	movl	%ebp, %ecx
	subl	%esi, %ecx
	movl	56(%esp), %esi
	movl	%ecx, %edi
	.p2align 4,,10
	.p2align 3
.L546:
	movzbl	(%edi,%eax), %edx
	movzbl	0(%ebp,%eax), %ecx
	shrb	%dl
	subl	%edx, %ecx
	movb	%cl, (%ebx,%eax)
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	.L546
	jmp	.L488
.L578:
	xorl	%ecx, %ecx
	jmp	.L537
.L580:
	xorl	%edx, %edx
	jmp	.L550
.L577:
	movl	56(%esp), %ecx
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L528:
	movzbl	0(%ebp,%edx), %eax
	movb	%al, (%ebx,%edx)
	addl	$1, %edx
	cmpl	%ecx, %edx
	jne	.L528
	jmp	.L488
.L583:
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L560:
	movzbl	0(%ebp,%edx), %eax
	movb	%al, (%ebx,%edx)
	addl	$1, %edx
	cmpl	%esi, %edx
	jne	.L560
	jmp	.L565
.L579:
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L540:
	movzbl	0(%ebp,%edx), %eax
	movb	%al, (%ebx,%edx)
	addl	$1, %edx
	cmpl	%esi, %edx
	jne	.L540
	jmp	.L545
.L566:
	movl	20(%esp), %eax
	movl	56(%esp), %esi
	leal	0(%ebp,%eax), %edx
	movl	(%esp), %eax
	.p2align 4,,10
	.p2align 3
.L572:
	movzbl	0(%ebp,%eax), %ecx
	subb	(%edx,%eax), %cl
	movb	%cl, (%ebx,%eax)
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	.L572
	jmp	.L488
.L694:
	movl	$0, (%esp)
	movl	(%esp), %edx
	jmp	.L549
	.cfi_endproc
.LFE208:
	.size	filterScanline, .-filterScanline
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.type	lodepng_huffman_code_lengths.part.11, @function
lodepng_huffman_code_lengths.part.11:
.LFB236:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	$1, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %ebx
	subl	$108, %esp
	.cfi_def_cfa_offset 128
	movzbl	128(%esp), %ecx
	sall	%cl, %edi
	cmpl	%ebx, %edi
	jnb	.L778
	movl	$80, %eax
.L753:
	addl	$108, %esp
	.cfi_remember_state
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
.L778:
	.cfi_restore_state
	movl	%eax, 56(%esp)
	movl	%ebx, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 140
	sall	$4, %eax
	movl	%edx, %esi
	pushl	%eax
	.cfi_def_cfa_offset 144
	call	malloc
	movl	%eax, %ebp
	movl	%eax, 60(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	testl	%ebp, %ebp
	movl	$83, %eax
	je	.L753
	testl	%ebx, %ebx
	je	.L701
	xorl	%edi, %edi
	xorb	%al, %al
	.p2align 4,,10
	.p2align 3
.L703:
	movl	(%esi,%eax,4), %ecx
	testl	%ecx, %ecx
	je	.L702
	movl	%edi, %edx
	addl	$1, %edi
	sall	$4, %edx
	addl	%ebp, %edx
	movl	%ecx, (%edx)
	movl	%eax, 4(%edx)
.L702:
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	.L703
	movl	%edi, 20(%esp)
	sall	$2, %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 132
	pushl	%eax
	.cfi_def_cfa_offset 136
	pushl	$0
	.cfi_def_cfa_offset 140
	pushl	68(%esp)
	.cfi_def_cfa_offset 144
	call	memset
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	testl	%edi, %edi
	je	.L701
	cmpl	$1, 20(%esp)
	je	.L779
	movl	20(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 140
	sall	$4, %eax
	movl	%eax, 72(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 144
	call	malloc
	movl	%eax, 68(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	movl	$0, 48(%esp)
	testb	$1, 48(%esp)
	movl	$1, 28(%esp)
	jne	.L740
.L782:
	movl	44(%esp), %eax
	movl	%eax, 16(%esp)
	movl	52(%esp), %eax
.L708:
	movl	28(%esp), %edi
	movl	%eax, 32(%esp)
	xorl	%ebp, %ebp
	leal	(%edi,%edi), %ebx
	sall	$5, %edi
	movl	%edi, 36(%esp)
	movl	%ebx, 40(%esp)
	.p2align 4,,10
	.p2align 3
.L712:
	movl	28(%esp), %eax
	addl	%ebp, %eax
	cmpl	20(%esp), %eax
	movl	%eax, 12(%esp)
	jbe	.L709
	movl	20(%esp), %edi
	movl	%edi, 12(%esp)
.L709:
	addl	28(%esp), %eax
	movl	20(%esp), %esi
	movl	%esi, %edi
	cmpl	%eax, %esi
	movl	%eax, 24(%esp)
	jbe	.L710
	movl	%eax, %edi
.L710:
	cmpl	%ebp, %edi
	movl	32(%esp), %eax
	movl	%ebp, %ebx
	movl	12(%esp), %esi
	jbe	.L719
	movl	%edi, 8(%esp)
	jmp	.L757
	.p2align 4,,10
	.p2align 3
.L780:
	movl	%ebp, %ecx
	sall	$4, %ecx
	cmpl	%esi, 8(%esp)
	ja	.L715
	addl	16(%esp), %ecx
.L716:
	movl	(%ecx), %edx
	addl	$1, %ebp
	addl	$1, %ebx
	addl	$16, %eax
	movl	%edx, -16(%eax)
	movl	4(%ecx), %edx
	movl	%edx, -12(%eax)
	movl	8(%ecx), %edx
	movl	%edx, -8(%eax)
	movl	12(%ecx), %edx
	movl	%edx, -4(%eax)
	cmpl	8(%esp), %ebx
	je	.L719
.L757:
	cmpl	%ebp, 12(%esp)
	ja	.L780
	movl	%esi, %edx
	sall	$4, %edx
	addl	16(%esp), %edx
.L717:
	movl	(%edx), %ecx
	addl	$1, %esi
	addl	$1, %ebx
	addl	$16, %eax
	movl	%ecx, -16(%eax)
	movl	4(%edx), %ecx
	movl	%ecx, -12(%eax)
	movl	8(%edx), %ecx
	movl	%ecx, -8(%eax)
	movl	12(%edx), %edx
	movl	%edx, -4(%eax)
	cmpl	8(%esp), %ebx
	jne	.L757
.L719:
	movl	36(%esp), %edi
	movl	24(%esp), %ebp
	addl	%edi, 32(%esp)
	cmpl	%ebp, 20(%esp)
	ja	.L712
	addl	$1, 48(%esp)
	movl	40(%esp), %edi
	cmpl	%edi, 20(%esp)
	jbe	.L781
	testb	$1, 48(%esp)
	movl	%edi, 28(%esp)
	je	.L782
.L740:
	movl	52(%esp), %eax
	movl	%eax, 16(%esp)
	movl	44(%esp), %eax
	jmp	.L708
.L701:
	movl	56(%esp), %eax
	xorl	%esi, %esi
	movl	$1, 4(%eax)
	movl	$1, (%eax)
.L705:
	subl	$12, %esp
	.cfi_def_cfa_offset 140
	pushl	56(%esp)
	.cfi_def_cfa_offset 144
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	movl	%esi, %eax
	addl	$108, %esp
	.cfi_remember_state
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
.L779:
	.cfi_restore_state
	movl	44(%esp), %eax
	movl	56(%esp), %edi
	movl	4(%eax), %eax
	cmpl	$1, %eax
	movl	$1, (%edi,%eax,4)
	sbbl	%eax, %eax
	xorl	%esi, %esi
	andl	$4, %eax
	movl	$1, (%edi,%eax)
	jmp	.L705
	.p2align 4,,10
	.p2align 3
.L715:
	movl	16(%esp), %edi
	movl	%esi, %edx
	sall	$4, %edx
	addl	%edi, %ecx
	addl	%edi, %edx
	movl	(%edx), %edi
	cmpl	%edi, (%ecx)
	jg	.L717
	jmp	.L716
.L781:
	testb	$1, 48(%esp)
	je	.L721
	subl	$4, %esp
	.cfi_def_cfa_offset 132
	pushl	64(%esp)
	.cfi_def_cfa_offset 136
	pushl	60(%esp)
	.cfi_def_cfa_offset 140
	pushl	56(%esp)
	.cfi_def_cfa_offset 144
	call	memcpy
	addl	$16, %esp
	.cfi_def_cfa_offset 128
.L721:
	subl	$12, %esp
	.cfi_def_cfa_offset 140
	pushl	64(%esp)
	.cfi_def_cfa_offset 144
	call	free
	movl	144(%esp), %eax
	movl	$0, 92(%esp)
	leal	(%eax,%eax), %esi
	movl	%eax, 100(%esp)
	addl	$1, %eax
	imull	%eax, %esi
	movl	%esi, %eax
	movl	%esi, 80(%esp)
	movl	%esi, 88(%esp)
	sall	$4, %eax
	movl	%eax, (%esp)
	call	malloc
	movl	%eax, 84(%esp)
	movl	%eax, %ebx
	leal	0(,%esi,4), %eax
	movl	%eax, (%esp)
	call	malloc
	movl	%eax, 96(%esp)
	movl	%eax, %edi
	movl	144(%esp), %eax
	leal	0(,%eax,4), %ebp
	movl	%ebp, (%esp)
	call	malloc
	movl	%ebp, (%esp)
	movl	%eax, 24(%esp)
	movl	%eax, 104(%esp)
	call	malloc
	movl	%eax, 108(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	testl	%ebx, %ebx
	sete	%dl
	testl	%edi, %edi
	movl	%eax, %ecx
	sete	%al
	orl	%edx, %eax
	movl	8(%esp), %edx
	testl	%edx, %edx
	sete	%dl
	orb	%dl, %al
	jne	.L743
	testl	%ecx, %ecx
	je	.L743
	testl	%esi, %esi
	je	.L735
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movl	%edi, %ebx
	jmp	.L736
	.p2align 4,,10
	.p2align 3
.L724:
	movl	80(%esp), %ebx
	movl	68(%esp), %eax
.L736:
	movl	%ecx, %edx
	sall	$4, %edx
	addl	%edx, %eax
	movl	%eax, (%ebx,%ecx,4)
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jne	.L724
.L735:
	subl	$12, %esp
	.cfi_def_cfa_offset 140
	movl	$1, %ecx
	pushl	$0
	.cfi_def_cfa_offset 144
	movl	60(%esp), %edi
	leal	80(%esp), %eax
	movl	(%edi), %edx
	call	bpmnode_create
	movl	16(%edi), %edx
	leal	80(%esp), %eax
	movl	$2, %ecx
	movl	$0, (%esp)
	call	bpmnode_create
	movl	100(%esp), %ebx
	xorl	%eax, %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	testl	%ebx, %ebx
	je	.L728
.L756:
	movl	88(%esp), %edx
	movl	68(%esp), %ecx
	movl	%ecx, (%edx,%eax,4)
	movl	68(%esp), %edi
	movl	92(%esp), %ecx
	leal	16(%edi), %edx
	movl	%edx, (%ecx,%eax,4)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	.L756
.L728:
	movl	20(%esp), %eax
	movl	$2, %esi
	leal	-2(%eax,%eax), %edi
	movl	128(%esp), %eax
	cmpl	$2, %edi
	leal	-1(%eax), %ebx
	je	.L727
.L755:
	subl	$8, %esp
	.cfi_def_cfa_offset 136
	pushl	%esi
	.cfi_def_cfa_offset 140
	pushl	%ebx
	.cfi_def_cfa_offset 144
	addl	$1, %esi
	movl	36(%esp), %ecx
	movl	60(%esp), %edx
	leal	80(%esp), %eax
	call	boundaryPM
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	cmpl	%edi, %esi
	jne	.L755
.L727:
	movl	92(%esp), %eax
	movl	-4(%eax,%ebp), %ebx
	testl	%ebx, %ebx
	je	.L730
	movl	44(%esp), %edi
	movl	56(%esp), %esi
.L754:
	movl	4(%ebx), %ebp
	testl	%ebp, %ebp
	je	.L734
	leal	4(%edi), %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L732:
	movl	(%edx), %ecx
	addl	$1, %eax
	addl	$16, %edx
	addl	$1, (%esi,%ecx,4)
	cmpl	4(%ebx), %eax
	jne	.L732
.L734:
	movl	8(%ebx), %ebx
	testl	%ebx, %ebx
	jne	.L754
.L730:
	movl	68(%esp), %eax
	xorl	%esi, %esi
.L722:
	subl	$12, %esp
	.cfi_def_cfa_offset 140
	pushl	%eax
	.cfi_def_cfa_offset 144
	call	free
	popl	%eax
	.cfi_def_cfa_offset 140
	pushl	92(%esp)
	.cfi_def_cfa_offset 144
	call	free
	popl	%edx
	.cfi_def_cfa_offset 140
	pushl	100(%esp)
	.cfi_def_cfa_offset 144
	call	free
	popl	%ecx
	.cfi_def_cfa_offset 140
	pushl	104(%esp)
	.cfi_def_cfa_offset 144
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	jmp	.L705
.L743:
	movl	%ebx, %eax
	movl	$83, %esi
	jmp	.L722
	.cfi_endproc
.LFE236:
	.size	lodepng_huffman_code_lengths.part.11, .-lodepng_huffman_code_lengths.part.11
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.type	uivector_push_back, @function
uivector_push_back:
.LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	4(%eax), %eax
	leal	1(%eax), %esi
	movl	8(%ebx), %eax
	leal	0(,%esi,4), %edi
	cmpl	%eax, %edi
	jbe	.L784
	addl	%eax, %eax
	movl	%edi, %edx
	cmpl	%eax, %edi
	jbe	.L792
.L785:
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%edx
	.cfi_def_cfa_offset 60
	movl	%edx, 24(%esp)
	pushl	(%ebx)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	12(%esp), %edx
	je	.L790
	movl	%edx, 8(%ebx)
	movl	%eax, (%ebx)
.L786:
	movl	%esi, 4(%ebx)
	movl	%ebp, -4(%eax,%edi)
	movl	$1, %eax
.L790:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L792:
	.cfi_restore_state
	leal	(%edi,%esi,8), %edx
	shrl	%edx
	jmp	.L785
	.p2align 4,,10
	.p2align 3
.L784:
	movl	(%ebx), %eax
	jmp	.L786
	.cfi_endproc
.LFE28:
	.size	uivector_push_back, .-uivector_push_back
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.type	removePaddingBits, @function
removePaddingBits:
.LFB173:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%edx, %edx
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	movl	44(%esp), %ebx
	movl	%ecx, 16(%esp)
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	subl	%ecx, %ebx
	movl	48(%esp), %ecx
	movl	%ebx, 20(%esp)
	testl	%ecx, %ecx
	je	.L793
	.p2align 4,,10
	.p2align 3
.L805:
	movl	16(%esp), %ecx
	testl	%ecx, %ecx
	je	.L799
	movl	12(%esp), %esi
	addl	%edx, %ecx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, %ebx
	subl	%edx, %esi
	notl	%ebx
	jmp	.L798
	.p2align 4,,10
	.p2align 3
.L796:
	leal	(%ebx,%esi), %ecx
	movl	$1, %eax
	shrl	$3, %ebp
	addl	$1, %edx
	subl	$1, %ebx
	andl	$7, %ecx
	sall	%cl, %eax
	movl	%eax, %ecx
	movl	(%esp), %eax
	orb	%cl, (%eax,%ebp)
	cmpl	4(%esp), %edx
	je	.L808
.L798:
	leal	(%esi,%edx), %ecx
	shrl	$3, %ecx
	movzbl	(%edi,%ecx), %ebp
	movl	%ebx, %ecx
	andl	$7, %ecx
	btl	%ecx, %ebp
	movl	%edx, %ebp
	jc	.L796
	leal	(%ebx,%esi), %ecx
	movl	$1, %eax
	shrl	$3, %ebp
	addl	$1, %edx
	subl	$1, %ebx
	andl	$7, %ecx
	sall	%cl, %eax
	movl	%eax, %ecx
	movl	(%esp), %eax
	notl	%ecx
	andb	%cl, (%eax,%ebp)
	cmpl	4(%esp), %edx
	jne	.L798
.L808:
	movl	16(%esp), %ebx
	addl	%ebx, 12(%esp)
	movl	(%esp), %eax
.L799:
	addl	$1, 8(%esp)
	movl	20(%esp), %esi
	addl	%esi, 12(%esp)
	movl	8(%esp), %esi
	cmpl	48(%esp), %esi
	jne	.L805
.L793:
	addl	$24, %esp
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
.LFE173:
	.size	removePaddingBits, .-removePaddingBits
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.type	addPaddingBits, @function
addPaddingBits:
.LFB211:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$20, %esp
	.cfi_def_cfa_offset 40
	subl	40(%esp), %ecx
	movl	44(%esp), %ebx
	movl	%edx, 4(%esp)
	xorl	%edx, %edx
	movl	$0, 8(%esp)
	movl	$0, 12(%esp)
	testl	%ebx, %ebx
	movl	%ecx, 16(%esp)
	je	.L809
	.p2align 4,,10
	.p2align 3
.L823:
	movl	40(%esp), %ecx
	testl	%ecx, %ecx
	je	.L820
	movl	12(%esp), %edi
	movl	40(%esp), %ebx
	movl	%eax, (%esp)
	movl	%edi, %esi
	addl	%edx, %ebx
	subl	%edx, %edi
	notl	%esi
	jmp	.L814
	.p2align 4,,10
	.p2align 3
.L812:
	leal	(%esi,%edi), %ecx
	movl	$1, %eax
	shrl	$3, %ebp
	addl	$1, %edx
	subl	$1, %esi
	andl	$7, %ecx
	sall	%cl, %eax
	movl	%eax, %ecx
	movl	(%esp), %eax
	orb	%cl, (%eax,%ebp)
	cmpl	%ebx, %edx
	je	.L826
.L814:
	leal	(%edi,%edx), %ecx
	movl	4(%esp), %ebp
	shrl	$3, %ecx
	movzbl	0(%ebp,%ecx), %ebp
	movl	%esi, %ecx
	andl	$7, %ecx
	btl	%ecx, %ebp
	movl	%edx, %ebp
	jc	.L812
	leal	(%esi,%edi), %ecx
	movl	$1, %eax
	shrl	$3, %ebp
	addl	$1, %edx
	subl	$1, %esi
	andl	$7, %ecx
	sall	%cl, %eax
	movl	%eax, %ecx
	movl	(%esp), %eax
	notl	%ecx
	andb	%cl, (%eax,%ebp)
	cmpl	%ebx, %edx
	jne	.L814
.L826:
	movl	40(%esp), %edi
	addl	%edi, 12(%esp)
	movl	(%esp), %eax
.L817:
	movl	16(%esp), %edi
	testl	%edi, %edi
	je	.L819
	leal	(%ebx,%edi), %edx
	.p2align 4,,10
	.p2align 3
.L816:
	movl	%ebx, %ecx
	movl	$1, %edi
	movl	%ebx, %esi
	notl	%ecx
	shrl	$3, %esi
	addl	$1, %ebx
	andl	$7, %ecx
	sall	%cl, %edi
	movl	%edi, %ecx
	notl	%ecx
	andb	%cl, (%eax,%esi)
	cmpl	%edx, %ebx
	jne	.L816
	addl	$1, 8(%esp)
	movl	8(%esp), %ebx
	cmpl	44(%esp), %ebx
	jne	.L823
.L809:
	addl	$20, %esp
	.cfi_remember_state
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
.L819:
	.cfi_restore_state
	addl	$1, 8(%esp)
	movl	%ebx, %edx
	movl	8(%esp), %ebx
	cmpl	44(%esp), %ebx
	jne	.L823
	jmp	.L809
	.p2align 4,,10
	.p2align 3
.L820:
	movl	%edx, %ebx
	jmp	.L817
	.cfi_endproc
.LFE211:
	.size	addPaddingBits, .-addPaddingBits
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.type	lodepng_zlib_decompress.part.12, @function
lodepng_zlib_decompress.part.12:
.LFB237:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$8, %esp
	.cfi_def_cfa_offset 28
	movl	32(%esp), %ebx
	movl	(%ebx), %edi
	testl	%edi, %edi
	movl	%edi, (%esp)
	je	.L838
	movl	$0, (%esp)
.L828:
	movl	(%esp), %eax
	addl	$8, %esp
	.cfi_remember_state
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
.L838:
	.cfi_restore_state
	movl	28(%esp), %ebx
	movl	(%edx), %edi
	leal	-4(%ecx,%ebx), %ebx
	movzbl	(%ebx), %ecx
	movl	%ecx, %esi
	movzbl	1(%ebx), %ecx
	sall	$24, %esi
	sall	$16, %ecx
	orl	%esi, %ecx
	movzbl	3(%ebx), %esi
	movzbl	2(%ebx), %ebx
	orl	%esi, %ecx
	sall	$8, %ebx
	orl	%ebx, %ecx
	testl	%edi, %edi
	movl	$1, %ebx
	movl	%ecx, 4(%esp)
	movl	(%eax), %ecx
	je	.L829
	xorl	%esi, %esi
	movl	$-2146992015, %ebp
	.p2align 4,,10
	.p2align 3
.L832:
	cmpl	$5550, %edi
	movl	%edi, %edx
	jbe	.L830
	movl	$5550, %edx
.L830:
	subl	%edx, %edi
	addl	%ecx, %edx
	.p2align 4,,10
	.p2align 3
.L831:
	addl	$1, %ecx
	movzbl	-1(%ecx), %eax
	addl	%eax, %ebx
	addl	%ebx, %esi
	cmpl	%edx, %ecx
	jne	.L831
	movl	%ebx, %eax
	mull	%ebp
	movl	%esi, %eax
	shrl	$15, %edx
	imull	$65521, %edx, %edx
	subl	%edx, %ebx
	mull	%ebp
	shrl	$15, %edx
	imull	$65521, %edx, %edx
	subl	%edx, %esi
	testl	%edi, %edi
	jne	.L832
	sall	$16, %esi
	orl	%esi, %ebx
.L829:
	cmpl	%ebx, 4(%esp)
	je	.L828
	movl	$58, (%esp)
	movl	(%esp), %eax
	addl	$8, %esp
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
.LFE237:
	.size	lodepng_zlib_decompress.part.12, .-lodepng_zlib_decompress.part.12
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.type	ucvector_push_back, @function
ucvector_push_back:
.LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	4(%eax), %edi
	movl	8(%eax), %eax
	leal	1(%edi), %esi
	cmpl	%eax, %esi
	jbe	.L840
	addl	%eax, %eax
	movl	%esi, %ebp
	cmpl	%eax, %esi
	jbe	.L848
.L841:
	movl	%edx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%ebp
	.cfi_def_cfa_offset 60
	pushl	(%ebx)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	12(%esp), %edx
	je	.L846
	movl	%ebp, 8(%ebx)
	movl	%eax, (%ebx)
.L842:
	movl	%esi, 4(%ebx)
	movb	%dl, (%eax,%edi)
	movl	$1, %eax
.L846:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L848:
	.cfi_restore_state
	leal	(%esi,%esi,2), %ebp
	shrl	%ebp
	jmp	.L841
	.p2align 4,,10
	.p2align 3
.L840:
	movl	(%ebx), %eax
	jmp	.L842
	.cfi_endproc
.LFE34:
	.size	ucvector_push_back, .-ucvector_push_back
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.type	lodepng_add32bitInt, @function
lodepng_add32bitInt:
.LFB41:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	%eax, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movl	4(%eax), %eax
	leal	4(%eax), %ebx
	movl	8(%esi), %eax
	cmpl	%eax, %ebx
	jbe	.L850
	addl	%eax, %eax
	movl	%ebx, %edi
	cmpl	%eax, %ebx
	jbe	.L858
.L851:
	movl	%edx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 40
	pushl	%edi
	.cfi_def_cfa_offset 44
	pushl	(%esi)
	.cfi_def_cfa_offset 48
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	movl	12(%esp), %edx
	je	.L852
	movl	%edi, 8(%esi)
	movl	%eax, (%esi)
.L853:
	movl	%ebx, 4(%esi)
.L854:
	leal	-4(%eax,%ebx), %eax
	movl	%edx, %ecx
	shrl	$24, %ecx
	movb	%cl, (%eax)
	movl	%edx, %ecx
	movb	%dl, 3(%eax)
	shrl	$16, %ecx
	movb	%cl, 1(%eax)
	movl	%edx, %ecx
	shrl	$8, %ecx
	movb	%cl, 2(%eax)
	addl	$16, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L858:
	.cfi_restore_state
	leal	(%ebx,%ebx,2), %edi
	shrl	%edi
	jmp	.L851
	.p2align 4,,10
	.p2align 3
.L850:
	movl	(%esi), %eax
	jmp	.L853
	.p2align 4,,10
	.p2align 3
.L852:
	movl	(%esi), %eax
	movl	4(%esi), %ebx
	jmp	.L854
	.cfi_endproc
.LFE41:
	.size	lodepng_add32bitInt, .-lodepng_add32bitInt
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.type	color_tree_cleanup, @function
color_tree_cleanup:
.LFB153:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$76, %esp
	.cfi_def_cfa_offset 96
	movl	%eax, 16(%esp)
	addl	$64, %eax
	movl	%eax, 56(%esp)
	movl	16(%esp), %eax
.L877:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L860
	movl	%eax, 28(%esp)
	addl	$64, %eax
	movl	%eax, 48(%esp)
	movl	28(%esp), %eax
.L876:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L861
	movl	%eax, 32(%esp)
	addl	$64, %eax
	movl	%eax, 52(%esp)
	movl	32(%esp), %eax
.L875:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L862
	movl	%eax, 36(%esp)
	addl	$64, %eax
	movl	%eax, 60(%esp)
	movl	36(%esp), %eax
.L874:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L863
	movl	%eax, 20(%esp)
	addl	$64, %eax
	movl	%eax, 40(%esp)
	movl	20(%esp), %eax
.L873:
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L864
	movl	%eax, 24(%esp)
	addl	$64, %eax
	movl	%eax, 44(%esp)
	movl	24(%esp), %eax
.L872:
	movl	(%eax), %ebp
	testl	%ebp, %ebp
	je	.L865
	movl	%ebp, %eax
	movl	%ebp, 8(%esp)
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	8(%esp), %eax
.L871:
	movl	(%eax), %esi
	testl	%esi, %esi
	je	.L866
	leal	64(%esi), %edi
	.p2align 4,,10
	.p2align 3
.L870:
	movl	(%esi), %ebx
	testl	%ebx, %ebx
	je	.L867
	leal	64(%ebx), %ebp
	.p2align 4,,10
	.p2align 3
.L869:
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L868
	call	color_tree_cleanup
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	pushl	(%ebx)
	.cfi_def_cfa_offset 112
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 96
.L868:
	addl	$4, %ebx
	cmpl	%ebp, %ebx
	jne	.L869
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	pushl	(%esi)
	.cfi_def_cfa_offset 112
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 96
.L867:
	addl	$4, %esi
	cmpl	%edi, %esi
	jne	.L870
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	movl	20(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 112
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 96
.L866:
	addl	$4, 8(%esp)
	movl	8(%esp), %eax
	cmpl	12(%esp), %eax
	jne	.L871
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	movl	36(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 112
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 96
.L865:
	addl	$4, 24(%esp)
	movl	24(%esp), %eax
	cmpl	44(%esp), %eax
	jne	.L872
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	movl	32(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 112
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 96
.L864:
	addl	$4, 20(%esp)
	movl	20(%esp), %eax
	cmpl	40(%esp), %eax
	jne	.L873
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	movl	48(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 112
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 96
.L863:
	addl	$4, 36(%esp)
	movl	36(%esp), %eax
	cmpl	60(%esp), %eax
	jne	.L874
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	movl	44(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 112
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 96
.L862:
	addl	$4, 32(%esp)
	movl	32(%esp), %eax
	cmpl	52(%esp), %eax
	jne	.L875
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	movl	40(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 112
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 96
.L861:
	addl	$4, 28(%esp)
	movl	28(%esp), %eax
	cmpl	48(%esp), %eax
	jne	.L876
	subl	$12, %esp
	.cfi_def_cfa_offset 108
	movl	28(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 112
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 96
.L860:
	addl	$4, 16(%esp)
	movl	16(%esp), %eax
	cmpl	56(%esp), %eax
	jne	.L877
	addl	$76, %esp
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
.LFE153:
	.size	color_tree_cleanup, .-color_tree_cleanup
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.type	addUnknownChunks, @function
addUnknownChunks:
.LFB215:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	testl	%ecx, %ecx
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	je	.L927
	movl	4(%edi), %ebp
	movl	%edi, %ecx
	.p2align 4,,10
	.p2align 3
.L926:
	movzbl	(%esi), %ebx
	movl	%ebx, %edx
	movzbl	1(%esi), %ebx
	sall	$24, %edx
	movl	%ebx, %eax
	sall	$16, %eax
	orl	%eax, %edx
	movzbl	3(%esi), %eax
	movl	%edx, %ebx
	orl	%eax, %ebx
	movzbl	2(%esi), %eax
	sall	$8, %eax
	orl	%eax, %ebx
	leal	12(%ebx), %edi
	movl	%edi, %edx
	addl	%ebp, %edx
	jc	.L928
	cmpl	%ebp, %edx
	jnb	.L946
.L928:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$77, %eax
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
	.p2align 4,,10
	.p2align 3
.L946:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%edx
	.cfi_def_cfa_offset 76
	movl	%edx, 36(%esp)
	pushl	(%ecx)
	.cfi_def_cfa_offset 80
	movl	%ecx, 36(%esp)
	call	realloc
	movl	%eax, 44(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	je	.L929
	movl	20(%esp), %ecx
	movl	24(%esp), %edx
	testl	%edi, %edi
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	je	.L930
	movl	%eax, %edx
	addl	%ebp, %eax
	movl	%eax, 20(%esp)
	leal	4(%esi), %eax
	cmpl	%eax, 20(%esp)
	leal	4(%edx,%ebp), %eax
	setnb	24(%esp)
	cmpl	%eax, %esi
	setnb	%al
	orb	24(%esp), %al
	cmpl	$9, %edi
	seta	24(%esp)
	movzbl	24(%esp), %edx
	testb	%al, %dl
	je	.L931
	movl	20(%esp), %edx
	movl	%esi, %eax
	orl	%edx, %eax
	testb	$3, %al
	jne	.L931
	addl	$8, %ebx
	movl	%ecx, 20(%esp)
	shrl	$2, %ebx
	leal	1(%ebx), %eax
	movl	%eax, 24(%esp)
	leal	0(,%eax,4), %ebx
	xorl	%eax, %eax
.L921:
	movl	(%esi,%eax,4), %ecx
	movl	%ecx, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, 24(%esp)
	ja	.L921
	cmpl	%ebx, %edi
	movl	20(%esp), %ecx
	movl	%edx, 20(%esp)
	je	.L925
	movl	24(%esp), %eax
	movzbl	(%esi,%eax,4), %eax
	movl	%eax, %edx
	movl	28(%esp), %eax
	addl	%ebx, %eax
	movb	%dl, (%eax,%ebp)
	leal	1(%ebx), %eax
	cmpl	%eax, %edi
	je	.L925
	addl	28(%esp), %eax
	movzbl	1(%esi,%ebx), %edx
	movb	%dl, (%eax,%ebp)
	leal	2(%ebx), %eax
	cmpl	%eax, %edi
	je	.L925
	movzbl	2(%esi,%ebx), %ebx
	movl	20(%esp), %edi
	movb	%bl, (%edi,%eax)
.L925:
	movl	4(%ecx), %ebp
.L919:
	movl	%ebp, 8(%ecx)
	movzbl	(%esi), %ebx
	movzbl	1(%esi), %eax
	sall	$24, %ebx
	sall	$16, %eax
	orl	%ebx, %eax
	movzbl	3(%esi), %ebx
	orl	%eax, %ebx
	movzbl	2(%esi), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	orl	%edx, %eax
	leal	12(%esi,%eax), %esi
	movl	%esi, %eax
	subl	12(%esp), %eax
	cmpl	16(%esp), %eax
	jb	.L926
.L927:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
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
	.p2align 4,,10
	.p2align 3
.L929:
	.cfi_restore_state
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$83, %eax
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
.L931:
	.cfi_restore_state
	movl	20(%esp), %edx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L920:
	movzbl	(%esi,%eax), %ebx
	movb	%bl, (%edx,%eax)
	addl	$1, %eax
	cmpl	%eax, %edi
	jne	.L920
	jmp	.L925
.L930:
	movl	%edx, %ebp
	jmp	.L919
	.cfi_endproc
.LFE215:
	.size	addUnknownChunks, .-addUnknownChunks
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.type	HuffmanTree_makeFromLengths2, @function
HuffmanTree_makeFromLengths2:
.LFB53:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$56, %esp
	.cfi_def_cfa_offset 76
	movl	16(%eax), %eax
	sall	$2, %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, 4(%ebp)
	cmpl	$1, %eax
	movl	12(%ebp), %eax
	sbbl	%edi, %edi
	andl	$83, %edi
	leal	1(%eax), %esi
	leal	0(,%esi,4), %edx
	testl	%edx, %edx
	je	.L1015
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%edx
	.cfi_def_cfa_offset 76
	movl	%edx, 20(%esp)
	pushl	$0
	.cfi_def_cfa_offset 80
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L949
	testl	%esi, %esi
	movl	8(%esp), %edx
	je	.L953
.L950:
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	%edx
	.cfi_def_cfa_offset 72
	pushl	$0
	.cfi_def_cfa_offset 76
	pushl	%ebx
	.cfi_def_cfa_offset 80
	call	memset
	addl	$16, %esp
	.cfi_def_cfa_offset 64
.L953:
	movl	12(%ebp), %eax
	xorl	%esi, %esi
	leal	1(%eax), %ecx
	leal	0(,%ecx,4), %edx
	testl	%edx, %edx
	je	.L952
	movl	%ecx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%edx
	.cfi_def_cfa_offset 76
	movl	%edx, 20(%esp)
	pushl	$0
	.cfi_def_cfa_offset 80
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	%eax, %esi
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	je	.L949
.L952:
	testl	%ecx, %ecx
	je	.L982
	subl	$4, %esp
	.cfi_def_cfa_offset 68
	pushl	%edx
	.cfi_def_cfa_offset 72
	pushl	$0
	.cfi_def_cfa_offset 76
	pushl	%esi
	.cfi_def_cfa_offset 80
	call	memset
	addl	$16, %esp
	.cfi_def_cfa_offset 64
.L982:
	testl	%edi, %edi
	jne	.L954
	movl	16(%ebp), %edi
	testl	%edi, %edi
	je	.L955
	movl	8(%ebp), %ecx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L956:
	movl	(%ecx,%eax,4), %edx
	addl	$1, %eax
	addl	$1, (%ebx,%edx,4)
	cmpl	%eax, 16(%ebp)
	jne	.L956
	movl	12(%ebp), %ecx
	testl	%ecx, %ecx
	je	.L957
.L984:
	movl	(%esi), %edx
	movl	$1, %eax
	.p2align 4,,10
	.p2align 3
.L958:
	addl	-4(%ebx,%eax,4), %edx
	addl	%edx, %edx
	movl	%edx, (%esi,%eax,4)
	addl	$1, %eax
	cmpl	%eax, 12(%ebp)
	jnb	.L958
	movl	16(%ebp), %eax
.L957:
	testl	%eax, %eax
	je	.L959
	movl	8(%ebp), %edi
	movl	%esi, 8(%esp)
	xorl	%edx, %edx
	movl	%ebx, 12(%esp)
	movl	%edi, %esi
	.p2align 4,,10
	.p2align 3
.L961:
	movl	(%esi,%edx,4), %ecx
	leal	0(,%edx,4), %ebx
	testl	%ecx, %ecx
	je	.L960
	movl	4(%ebp), %eax
	movl	8(%esp), %edi
	addl	%ebx, %eax
	leal	(%edi,%ecx,4), %ebx
	movl	(%ebx), %ecx
	leal	1(%ecx), %edi
	movl	%edi, (%ebx)
	movl	%ecx, (%eax)
	movl	16(%ebp), %eax
.L960:
	addl	$1, %edx
	cmpl	%eax, %edx
	jne	.L961
	movl	12(%esp), %ebx
	movl	8(%esp), %esi
.L959:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%ebx
	.cfi_def_cfa_offset 80
	call	free
	movl	%esi, (%esp)
	call	free
	movl	16(%ebp), %eax
	leal	0(,%eax,8), %ebx
	movl	%eax, %esi
	movl	%ebx, (%esp)
	call	malloc
	movl	%eax, %edi
	movl	%eax, 24(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%edi, %edi
	movl	%eax, 0(%ebp)
	movl	$83, %eax
	je	.L1002
	movl	%esi, %eax
	addl	%eax, %eax
	movl	%eax, 28(%esp)
	je	.L983
	movl	%edi, %eax
	addl	%edi, %ebx
	.p2align 4,,10
	.p2align 3
.L962:
	movl	$32767, (%eax)
	addl	$4, %eax
	cmpl	%ebx, %eax
	jne	.L962
	testl	%esi, %esi
	je	.L964
.L963:
	movl	8(%ebp), %eax
	movl	$0, 16(%esp)
	xorl	%edx, %edx
	movl	$0, 12(%esp)
	movl	%esi, %edi
	movl	%ebp, 24(%esp)
	movl	%eax, 20(%esp)
	movl	16(%esp), %eax
.L976:
	movl	20(%esp), %esi
	leal	0(,%eax,4), %ebp
	movl	(%esi,%eax,4), %esi
	testl	%esi, %esi
	je	.L977
	movl	24(%esp), %eax
	leal	-1(%esi), %ecx
	addl	4(%eax), %ebp
	movl	0(%ebp), %eax
	shrl	%cl, %eax
	andl	$1, %eax
	testl	%edx, %edx
	js	.L967
	leal	2(%edx), %ecx
	cmpl	%ecx, %edi
	jb	.L967
	movl	$1, %ebx
	jmp	.L969
	.p2align 4,,10
	.p2align 3
.L974:
	cmpl	%esi, %ebx
	je	.L977
.L975:
	leal	-1(%esi), %ecx
	movl	0(%ebp), %eax
	subl	%ebx, %ecx
	shrl	%cl, %eax
	andl	$1, %eax
	testl	%edx, %edx
	js	.L967
	leal	2(%edx), %ecx
	addl	$1, %ebx
	cmpl	%ecx, %edi
	jb	.L967
.L969:
	movzbl	%al, %eax
	movl	8(%esp), %ecx
	leal	(%eax,%edx,2), %eax
	leal	(%ecx,%eax,4), %ecx
	movl	(%ecx), %eax
	movl	%eax, %edx
	subl	%edi, %edx
	cmpl	$32767, %eax
	jne	.L974
	cmpl	%esi, %ebx
	je	.L1021
	addl	$1, 12(%esp)
	movl	16(%esp), %esi
	movl	12(%esp), %edx
	movl	%edx, %eax
	addl	%edi, %eax
	movl	%eax, (%ecx)
	movl	20(%esp), %eax
	movl	(%eax,%esi,4), %esi
	cmpl	%esi, %ebx
	jne	.L975
	.p2align 4,,10
	.p2align 3
.L977:
	addl	$1, 16(%esp)
	movl	16(%esp), %eax
	cmpl	%eax, %edi
	ja	.L976
	movl	28(%esp), %edx
	testl	%edx, %edx
	je	.L981
.L964:
	movl	8(%esp), %eax
	movl	28(%esp), %edi
	leal	(%eax,%edi,4), %edx
	jmp	.L980
	.p2align 4,,10
	.p2align 3
.L979:
	addl	$4, %eax
	cmpl	%edx, %eax
	je	.L981
.L980:
	cmpl	$32767, (%eax)
	jne	.L979
	movl	$0, (%eax)
	jmp	.L979
	.p2align 4,,10
	.p2align 3
.L949:
	xorl	%esi, %esi
	movl	$83, %edi
.L954:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	%ebx
	.cfi_def_cfa_offset 80
	call	free
	movl	%esi, (%esp)
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	%edi, %eax
.L1002:
	addl	$44, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L1015:
	.cfi_restore_state
	xorl	%ebx, %ebx
	testl	%esi, %esi
	jne	.L950
	xorl	%esi, %esi
	jmp	.L982
	.p2align 4,,10
	.p2align 3
.L1021:
	movl	16(%esp), %eax
	movl	20(%esp), %esi
	movl	%eax, (%ecx)
	movl	(%esi,%eax,4), %esi
	cmpl	%esi, %ebx
	je	.L1022
	leal	-1(%esi), %ecx
	movl	0(%ebp), %eax
	xorl	%edx, %edx
	subl	%ebx, %ecx
	addl	$1, %ebx
	shrl	%cl, %eax
	andl	$1, %eax
	jmp	.L969
	.p2align 4,,10
	.p2align 3
.L967:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$55, %eax
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
.L955:
	.cfi_restore_state
	movl	12(%ebp), %eax
	testl	%eax, %eax
	jne	.L984
	jmp	.L959
.L983:
	testl	%esi, %esi
	jne	.L963
.L981:
	xorl	%eax, %eax
	jmp	.L1002
.L1022:
	xorl	%edx, %edx
	jmp	.L977
	.cfi_endproc
.LFE53:
	.size	HuffmanTree_makeFromLengths2, .-HuffmanTree_makeFromLengths2
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.type	HuffmanTree_makeFromFrequencies, @function
HuffmanTree_makeFromFrequencies:
.LFB59:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	52(%esp), %ebp
	leal	1073741823(%ebx), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	jne	.L1024
	cmpl	%ecx, %ebx
	ja	.L1025
	jmp	.L1024
	.p2align 4,,10
	.p2align 3
.L1042:
	cmpl	%ebx, %ecx
	jnb	.L1024
.L1025:
	subl	$1, %ebx
	movl	-4(%esi,%ebx,4), %eax
	testl	%eax, %eax
	je	.L1042
.L1024:
	leal	0(,%ebx,4), %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%ebp, 12(%edi)
	movl	%ebx, 16(%edi)
	pushl	%edx
	.cfi_def_cfa_offset 60
	movl	%edx, 24(%esp)
	pushl	8(%edi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, 8(%edi)
	je	.L1028
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	movl	16(%esp), %edx
	pushl	%edx
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	memset
	movl	8(%edi), %eax
	movl	%eax, 28(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%ebx, %ebx
	movl	$80, %eax
	jne	.L1043
.L1027:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L1028:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$83, %eax
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
	.p2align 4,,10
	.p2align 3
.L1043:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	%ebx, %ecx
	movl	%esi, %edx
	pushl	%ebp
	.cfi_def_cfa_offset 64
	movl	28(%esp), %eax
	call	lodepng_huffman_code_lengths.part.11
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L1027
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
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
	jmp	HuffmanTree_makeFromLengths2
	.cfi_endproc
.LFE59:
	.size	HuffmanTree_makeFromFrequencies, .-HuffmanTree_makeFromFrequencies
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.type	generateFixedLitLenTree, @function
generateFixedLitLenTree:
.LFB62:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$83, %esi
	subl	$24, %esp
	.cfi_def_cfa_offset 44
	pushl	$1152
	.cfi_def_cfa_offset 48
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L1045
	movl	%eax, %edx
	leal	576(%eax), %eax
	.p2align 4,,10
	.p2align 3
.L1046:
	movl	$8, (%edx)
	addl	$4, %edx
	cmpl	%eax, %edx
	jne	.L1046
	leal	1024(%ebx), %edx
	.p2align 4,,10
	.p2align 3
.L1047:
	movl	$9, (%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jne	.L1047
	leal	1120(%ebx), %eax
	.p2align 4,,10
	.p2align 3
.L1048:
	movl	$7, (%edx)
	addl	$4, %edx
	cmpl	%eax, %edx
	jne	.L1048
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	movl	$8, 1120(%ebx)
	movl	$8, 1124(%ebx)
	pushl	$1152
	.cfi_def_cfa_offset 48
	movl	$8, 1128(%ebx)
	movl	$83, %esi
	movl	$8, 1132(%ebx)
	movl	$8, 1136(%ebx)
	movl	$8, 1140(%ebx)
	movl	$8, 1144(%ebx)
	movl	$8, 1148(%ebx)
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	movl	%eax, 8(%ebp)
	je	.L1049
	movl	%eax, %edi
	movl	$288, %ecx
	movl	%ebx, %esi
	rep movsl
	movl	$288, 16(%ebp)
	movl	$15, 12(%ebp)
	movl	%ebp, %eax
	call	HuffmanTree_makeFromLengths2
	movl	%eax, %esi
.L1049:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	%ebx
	.cfi_def_cfa_offset 48
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 32
.L1045:
	addl	$12, %esp
	.cfi_def_cfa_offset 20
	movl	%esi, %eax
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
.LFE62:
	.size	generateFixedLitLenTree, .-generateFixedLitLenTree
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.type	addBitsToStream, @function
addBitsToStream:
.LFB46:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	testl	%ebx, %ebx
	je	.L1057
	movl	%edx, %edi
	movl	%ecx, 4(%esp)
	movl	%eax, %ebp
	movl	(%eax), %ebx
	xorl	%edx, %edx
	jmp	.L1063
	.p2align 4,,10
	.p2align 3
.L1059:
	movl	4(%esp), %eax
	movl	%edx, %ecx
	movl	(%edi), %esi
	addl	$1, %edx
	shrl	%cl, %eax
	movl	%ebx, %ecx
	movl	4(%edi), %ebx
	andl	$1, %eax
	andl	$7, %ecx
	sall	%cl, %eax
	orb	%al, -1(%esi,%ebx)
	cmpl	48(%esp), %edx
	movl	0(%ebp), %eax
	leal	1(%eax), %ebx
	movl	%ebx, 0(%ebp)
	je	.L1057
.L1063:
	testb	$7, %bl
	jne	.L1059
	movl	4(%edi), %esi
	movl	8(%edi), %eax
	leal	1(%esi), %ebx
	cmpl	%ebx, %eax
	jnb	.L1060
	addl	%eax, %eax
	movl	%ebx, %ecx
	cmpl	%eax, %ebx
	ja	.L1061
	leal	(%ebx,%ebx,2), %eax
	shrl	%eax
	movl	%eax, %ecx
.L1061:
	movl	%edx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%ecx
	.cfi_def_cfa_offset 60
	movl	%ecx, 20(%esp)
	pushl	(%edi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	je	.L1069
	movl	%ecx, 8(%edi)
	movl	%eax, (%edi)
.L1062:
	movl	%ebx, 4(%edi)
	movb	$0, (%eax,%esi)
	movl	0(%ebp), %ebx
	jmp	.L1059
	.p2align 4,,10
	.p2align 3
.L1060:
	movl	(%edi), %eax
	jmp	.L1062
	.p2align 4,,10
	.p2align 3
.L1057:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L1069:
	.cfi_restore_state
	movl	0(%ebp), %ebx
	jmp	.L1059
	.cfi_endproc
.LFE46:
	.size	addBitsToStream, .-addBitsToStream
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.type	addBitsToStreamReversed, @function
addBitsToStreamReversed:
.LFB47:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %esi
	testl	%esi, %esi
	je	.L1070
	movl	%edx, %edi
	leal	-1(%esi), %edx
	movl	%ecx, 4(%esp)
	movl	%eax, %ebp
	movl	(%eax), %ebx
	movl	%edx, %esi
	jmp	.L1076
	.p2align 4,,10
	.p2align 3
.L1072:
	movl	4(%esp), %eax
	movl	%esi, %ecx
	movl	(%edi), %edx
	subl	$1, %esi
	shrl	%cl, %eax
	movl	%ebx, %ecx
	movl	4(%edi), %ebx
	andl	$1, %eax
	andl	$7, %ecx
	sall	%cl, %eax
	orb	%al, -1(%edx,%ebx)
	cmpl	$-1, %esi
	movl	0(%ebp), %eax
	leal	1(%eax), %ebx
	movl	%ebx, 0(%ebp)
	je	.L1070
.L1076:
	testb	$7, %bl
	jne	.L1072
	movl	4(%edi), %edx
	movl	8(%edi), %eax
	leal	1(%edx), %ebx
	cmpl	%ebx, %eax
	jnb	.L1073
	addl	%eax, %eax
	movl	%ebx, %ecx
	cmpl	%eax, %ebx
	ja	.L1074
	leal	(%ebx,%ebx,2), %ecx
	shrl	%ecx
.L1074:
	movl	%edx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%ecx
	.cfi_def_cfa_offset 60
	movl	%ecx, 20(%esp)
	pushl	(%edi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	je	.L1082
	movl	%ecx, 8(%edi)
	movl	%eax, (%edi)
.L1075:
	movl	%ebx, 4(%edi)
	movb	$0, (%eax,%edx)
	movl	0(%ebp), %ebx
	jmp	.L1072
	.p2align 4,,10
	.p2align 3
.L1073:
	movl	(%edi), %eax
	jmp	.L1075
	.p2align 4,,10
	.p2align 3
.L1070:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L1082:
	.cfi_restore_state
	movl	0(%ebp), %ebx
	jmp	.L1072
	.cfi_endproc
.LFE47:
	.size	addBitsToStreamReversed, .-addBitsToStreamReversed
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.section	.text.unlikely
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4,,15
	.type	writeLZ77data.isra.7, @function
writeLZ77data.isra.7:
.LFB232:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	movl	80(%esp), %eax
	movl	%ecx, 32(%esp)
	movl	$0, 16(%esp)
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L1083
	movl	%edx, %edi
	movl	%ebp, %esi
	.p2align 4,,10
	.p2align 3
.L1124:
	movl	16(%esp), %ebx
	movl	%ebx, %eax
	sall	$2, %eax
	movl	%eax, 36(%esp)
	movl	32(%esp), %eax
	movl	(%eax), %eax
	movl	(%eax,%ebx,4), %eax
	movl	%eax, %ecx
	movl	%eax, 28(%esp)
	movl	84(%esp), %eax
	movl	8(%eax), %eax
	movl	(%eax,%ecx,4), %ebx
	movl	84(%esp), %eax
	movl	4(%eax), %eax
	testl	%ebx, %ebx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, 12(%esp)
	je	.L1093
	subl	$1, %ebx
	movl	(%esi), %eax
	movl	%ebx, %ebp
	jmp	.L1092
	.p2align 4,,10
	.p2align 3
.L1088:
	movl	12(%esp), %edx
	movl	%ebp, %ecx
	andl	$7, %eax
	movl	4(%edi), %ebx
	subl	$1, %ebp
	shrl	%cl, %edx
	movl	%eax, %ecx
	movl	(%edi), %eax
	andl	$1, %edx
	sall	%cl, %edx
	orb	%dl, -1(%eax,%ebx)
	movl	(%esi), %eax
	addl	$1, %eax
	cmpl	$-1, %ebp
	movl	%eax, (%esi)
	je	.L1093
.L1092:
	testb	$7, %al
	jne	.L1088
	movl	4(%edi), %ecx
	movl	8(%edi), %eax
	leal	1(%ecx), %ebx
	cmpl	%eax, %ebx
	jbe	.L1089
	addl	%eax, %eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	ja	.L1090
	leal	(%ebx,%ebx,2), %edx
	shrl	%edx
.L1090:
	movl	%ecx, 24(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	%edx
	.cfi_def_cfa_offset 92
	movl	%edx, 32(%esp)
	pushl	(%edi)
	.cfi_def_cfa_offset 96
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	je	.L1132
	movl	%edx, 8(%edi)
	movl	%eax, (%edi)
.L1091:
	movl	%ebx, 4(%edi)
	movb	$0, (%eax,%ecx)
	movl	(%esi), %eax
	jmp	.L1088
	.p2align 4,,10
	.p2align 3
.L1089:
	movl	(%edi), %eax
	jmp	.L1091
	.p2align 4,,10
	.p2align 3
.L1093:
	cmpl	$256, 28(%esp)
	ja	.L1133
.L1087:
	movl	80(%esp), %ebx
	addl	$1, 16(%esp)
	movl	16(%esp), %eax
	cmpl	(%ebx), %eax
	jne	.L1124
.L1083:
	addl	$60, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L1133:
	.cfi_restore_state
	movl	28(%esp), %eax
	movl	36(%esp), %ebx
	addl	$3, 16(%esp)
	movl	LENGTHEXTRA-1028(,%eax,4), %eax
	movl	%eax, %ecx
	movl	%eax, 20(%esp)
	movl	32(%esp), %eax
	testl	%ecx, %ecx
	movl	(%eax), %eax
	movl	4(%eax,%ebx), %edx
	movl	%edx, 24(%esp)
	movl	8(%eax,%ebx), %edx
	movl	12(%eax,%ebx), %eax
	movl	%edx, 44(%esp)
	movl	DISTANCEEXTRA(,%edx,4), %edx
	movl	%eax, 28(%esp)
	movl	%edx, 12(%esp)
	je	.L1102
	movl	(%esi), %eax
	xorl	%ebp, %ebp
	jmp	.L1101
	.p2align 4,,10
	.p2align 3
.L1097:
	movl	24(%esp), %edx
	movl	%ebp, %ecx
	andl	$7, %eax
	movl	4(%edi), %ebx
	addl	$1, %ebp
	shrl	%cl, %edx
	movl	%eax, %ecx
	movl	(%edi), %eax
	andl	$1, %edx
	sall	%cl, %edx
	orb	%dl, -1(%eax,%ebx)
	movl	(%esi), %eax
	addl	$1, %eax
	cmpl	20(%esp), %ebp
	movl	%eax, (%esi)
	je	.L1102
.L1101:
	testb	$7, %al
	jne	.L1097
	movl	4(%edi), %ecx
	movl	8(%edi), %eax
	leal	1(%ecx), %ebx
	cmpl	%eax, %ebx
	jbe	.L1098
	addl	%eax, %eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	ja	.L1099
	leal	(%ebx,%ebx,2), %edx
	shrl	%edx
.L1099:
	movl	%ecx, 40(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	%edx
	.cfi_def_cfa_offset 92
	movl	%edx, 48(%esp)
	pushl	(%edi)
	.cfi_def_cfa_offset 96
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	movl	36(%esp), %edx
	movl	40(%esp), %ecx
	je	.L1134
	movl	%edx, 8(%edi)
	movl	%eax, (%edi)
.L1100:
	movl	%ebx, 4(%edi)
	movb	$0, (%eax,%ecx)
	movl	(%esi), %eax
	jmp	.L1097
	.p2align 4,,10
	.p2align 3
.L1098:
	movl	(%edi), %eax
	jmp	.L1100
	.p2align 4,,10
	.p2align 3
.L1102:
	movl	88(%esp), %eax
	movl	44(%esp), %ebx
	movl	8(%eax), %eax
	movl	(%eax,%ebx,4), %ebp
	movl	88(%esp), %eax
	movl	4(%eax), %eax
	testl	%ebp, %ebp
	movl	(%eax,%ebx,4), %eax
	movl	%eax, 20(%esp)
	je	.L1096
	movl	(%esi), %eax
	subl	$1, %ebp
	jmp	.L1108
	.p2align 4,,10
	.p2align 3
.L1104:
	movl	20(%esp), %edx
	movl	%ebp, %ecx
	andl	$7, %eax
	movl	4(%edi), %ebx
	subl	$1, %ebp
	shrl	%cl, %edx
	movl	%eax, %ecx
	movl	(%edi), %eax
	andl	$1, %edx
	sall	%cl, %edx
	orb	%dl, -1(%eax,%ebx)
	movl	(%esi), %eax
	addl	$1, %eax
	cmpl	$-1, %ebp
	movl	%eax, (%esi)
	je	.L1096
.L1108:
	testb	$7, %al
	jne	.L1104
	movl	4(%edi), %ecx
	movl	8(%edi), %eax
	leal	1(%ecx), %ebx
	cmpl	%eax, %ebx
	jbe	.L1105
	addl	%eax, %eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	ja	.L1106
	leal	(%ebx,%ebx,2), %edx
	shrl	%edx
.L1106:
	movl	%ecx, 36(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	%edx
	.cfi_def_cfa_offset 92
	movl	%edx, 36(%esp)
	pushl	(%edi)
	.cfi_def_cfa_offset 96
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	movl	24(%esp), %edx
	movl	36(%esp), %ecx
	je	.L1135
	movl	%edx, 8(%edi)
	movl	%eax, (%edi)
.L1107:
	movl	%ebx, 4(%edi)
	movb	$0, (%eax,%ecx)
	movl	(%esi), %eax
	jmp	.L1104
	.p2align 4,,10
	.p2align 3
.L1105:
	movl	(%edi), %eax
	jmp	.L1107
	.p2align 4,,10
	.p2align 3
.L1096:
	movl	12(%esp), %eax
	testl	%eax, %eax
	je	.L1087
	movl	(%esi), %eax
	xorl	%ebp, %ebp
	jmp	.L1113
	.p2align 4,,10
	.p2align 3
.L1109:
	movl	28(%esp), %edx
	movl	%ebp, %ecx
	andl	$7, %eax
	movl	4(%edi), %ebx
	addl	$1, %ebp
	shrl	%cl, %edx
	movl	%eax, %ecx
	movl	(%edi), %eax
	andl	$1, %edx
	sall	%cl, %edx
	orb	%dl, -1(%eax,%ebx)
	movl	(%esi), %eax
	addl	$1, %eax
	cmpl	12(%esp), %ebp
	movl	%eax, (%esi)
	je	.L1087
.L1113:
	testb	$7, %al
	jne	.L1109
	movl	4(%edi), %ecx
	movl	8(%edi), %eax
	leal	1(%ecx), %ebx
	cmpl	%eax, %ebx
	jbe	.L1110
	addl	%eax, %eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	ja	.L1111
	leal	(%ebx,%ebx,2), %edx
	shrl	%edx
.L1111:
	movl	%ecx, 24(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 88
	pushl	%edx
	.cfi_def_cfa_offset 92
	movl	%edx, 32(%esp)
	pushl	(%edi)
	.cfi_def_cfa_offset 96
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 80
	testl	%eax, %eax
	movl	20(%esp), %edx
	movl	24(%esp), %ecx
	je	.L1136
	movl	%edx, 8(%edi)
	movl	%eax, (%edi)
.L1112:
	movl	%ebx, 4(%edi)
	movb	$0, (%eax,%ecx)
	movl	(%esi), %eax
	jmp	.L1109
	.p2align 4,,10
	.p2align 3
.L1110:
	movl	(%edi), %eax
	jmp	.L1112
	.p2align 4,,10
	.p2align 3
.L1132:
	movl	(%esi), %eax
	jmp	.L1088
.L1134:
	movl	(%esi), %eax
	jmp	.L1097
.L1135:
	movl	(%esi), %eax
	jmp	.L1104
.L1136:
	movl	(%esi), %eax
	jmp	.L1109
	.cfi_endproc
.LFE232:
	.size	writeLZ77data.isra.7, .-writeLZ77data.isra.7
	.section	.text.unlikely
.LCOLDE22:
	.text
.LHOTE22:
	.section	.text.unlikely
.LCOLDB23:
	.text
.LHOTB23:
	.p2align 4,,15
	.type	encodeLZ77, @function
encodeLZ77:
.LFB80:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$124, %esp
	.cfi_def_cfa_offset 144
	cmpl	$8191, 152(%esp)
	movl	152(%esp), %edi
	ja	.L1220
	shrl	$3, %edi
	movl	$64, 100(%esp)
	movl	%edi, 32(%esp)
	movl	152(%esp), %edi
.L1138:
	subl	$1, %edi
	movl	$60, 84(%esp)
	cmpl	$32767, %edi
	movl	%edi, 72(%esp)
	jbe	.L1309
.L1268:
	movl	84(%esp), %eax
	addl	$124, %esp
	.cfi_remember_state
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
.L1220:
	.cfi_restore_state
	movl	%edi, 32(%esp)
	movl	$258, 100(%esp)
	jmp	.L1138
.L1309:
	andl	152(%esp), %edi
	movl	%edi, 84(%esp)
	je	.L1310
	movl	$90, 84(%esp)
	movl	84(%esp), %eax
	addl	$124, %esp
	.cfi_remember_state
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
.L1310:
	.cfi_restore_state
	movl	160(%esp), %edi
	cmpl	$258, %edi
	movl	%edi, 68(%esp)
	jbe	.L1140
	movl	$258, 68(%esp)
.L1140:
	movl	148(%esp), %edi
	cmpl	%edi, 144(%esp)
	jnb	.L1268
	movl	%eax, 76(%esp)
	movl	$2, %eax
	movl	%ecx, 48(%esp)
	subl	%ecx, %eax
	movl	%edx, 44(%esp)
	movl	$0, 108(%esp)
	movl	$0, 104(%esp)
	movl	$0, 96(%esp)
	xorl	%ebp, %ebp
	movl	%eax, 88(%esp)
	.p2align 4,,10
	.p2align 3
.L1214:
	movl	72(%esp), %eax
	andl	144(%esp), %eax
	movl	%eax, 16(%esp)
	movl	144(%esp), %eax
	addl	$2, %eax
	cmpl	%eax, 148(%esp)
	jbe	.L1142
	movl	48(%esp), %eax
	movl	144(%esp), %edi
	movl	144(%esp), %esi
	movzbl	1(%eax,%edi), %ebx
	movl	%eax, %edi
	movzbl	2(%eax,%esi), %eax
	sall	$4, %ebx
	sall	$8, %eax
	xorl	%ebx, %eax
	movzbl	(%edi,%esi), %ebx
	xorl	%eax, %ebx
.L1143:
	movzwl	%bx, %ebx
	testl	%ebx, %ebx
	je	.L1144
	movl	%ebx, %eax
	movl	%ebx, 56(%esp)
	xorl	%esi, %esi
	sall	$2, %eax
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	movl	%eax, 12(%esp)
.L1146:
	movl	44(%esp), %edi
	movl	56(%esp), %eax
	movl	16(%esp), %edx
	movl	8(%edi), %ebx
	movl	%eax, (%ebx,%edx,4)
	movl	12(%esp), %eax
	addl	(%edi), %eax
	movl	%ebx, 60(%esp)
	movl	%eax, 80(%esp)
	movl	(%eax), %eax
	cmpl	$-1, %eax
	je	.L1311
	movl	4(%edi), %edi
	addl	%edx, %edx
	leal	(%edi,%edx), %ebx
	movl	%edi, 36(%esp)
	movw	%ax, (%ebx)
.L1154:
	movl	80(%esp), %eax
	movl	16(%esp), %edi
	movl	%edi, (%eax)
	movl	44(%esp), %eax
	movl	20(%eax), %edi
	movw	%cx, (%edi,%edx)
	movl	%edi, 52(%esp)
	movl	%eax, %edi
	movl	12(%eax), %eax
	movl	%eax, 92(%esp)
	addl	%esi, %eax
	movl	(%eax), %ecx
	cmpl	$-1, %ecx
	je	.L1155
	movl	16(%edi), %esi
	movw	%cx, (%esi,%edx)
.L1155:
	movl	16(%esp), %edi
	movzwl	(%ebx), %ecx
	movl	%edi, (%eax)
	movl	144(%esp), %eax
	leal	258(%eax), %ebx
	cmpl	148(%esp), %ebx
	jbe	.L1156
	movl	148(%esp), %ebx
.L1156:
	movl	48(%esp), %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	movl	16(%esp), %edx
	addl	152(%esp), %edx
	movl	$0, 12(%esp)
	movl	$0, 64(%esp)
	addl	%esi, %ebx
	addl	144(%esp), %esi
	cmpl	32(%esp), %edi
	movl	%ebx, 20(%esp)
	movl	%edx, 28(%esp)
	movl	%esi, 24(%esp)
	je	.L1158
	.p2align 4,,10
	.p2align 3
.L1313:
	movl	28(%esp), %esi
	subl	%ecx, %esi
	cmpl	16(%esp), %ecx
	ja	.L1160
	movl	16(%esp), %esi
	subl	%ecx, %esi
.L1160:
	cmpl	%esi, %eax
	ja	.L1158
	testl	%esi, %esi
	je	.L1161
	movl	144(%esp), %edx
	movl	24(%esp), %eax
	subl	%esi, %edx
	addl	48(%esp), %edx
	cmpl	$2, %ebp
	jbe	.L1162
	movl	52(%esp), %eax
	movzwl	(%eax,%ecx,2), %eax
	cmpl	%ebp, %eax
	jbe	.L1163
	movl	%ebp, %eax
.L1163:
	addl	%eax, %edx
	addl	24(%esp), %eax
.L1162:
	cmpl	%eax, 20(%esp)
	je	.L1164
	movzbl	(%eax), %ebx
	cmpb	%bl, (%edx)
	jne	.L1164
	movl	%ecx, 40(%esp)
	movl	20(%esp), %ebx
	jmp	.L1165
	.p2align 4,,10
	.p2align 3
.L1312:
	movzbl	(%eax), %ecx
	cmpb	%cl, (%edx)
	jne	.L1296
.L1165:
	addl	$1, %eax
	addl	$1, %edx
	cmpl	%eax, %ebx
	jne	.L1312
.L1296:
	movl	40(%esp), %ecx
	movl	%ebx, 20(%esp)
.L1164:
	subl	24(%esp), %eax
	cmpl	%eax, 12(%esp)
	jnb	.L1161
	cmpl	68(%esp), %eax
	movl	%eax, 12(%esp)
	movl	%esi, 64(%esp)
	jnb	.L1158
.L1161:
	movl	36(%esp), %eax
	leal	(%ecx,%ecx), %edx
	movzwl	(%eax,%ecx,2), %eax
	cmpl	%ecx, %eax
	je	.L1158
	cmpl	%ebp, 12(%esp)
	jbe	.L1166
	cmpl	$2, %ebp
	jbe	.L1166
	movl	44(%esp), %eax
	movl	52(%esp), %ebx
	movl	16(%eax), %eax
	movzwl	(%eax,%edx), %eax
	movzwl	(%ebx,%eax,2), %edx
	cmpl	%ebp, %edx
	jne	.L1158
.L1167:
	addl	$1, %edi
	cmpl	32(%esp), %edi
	movl	%eax, %ecx
	movl	%esi, %eax
	jne	.L1313
.L1158:
	cmpl	$2, 12(%esp)
	movl	164(%esp), %eax
	seta	%bl
	testl	%eax, %eax
	je	.L1169
	movl	96(%esp), %eax
	testl	%eax, %eax
	sete	%al
	andb	%bl, %al
	je	.L1170
	movl	12(%esp), %edi
	cmpl	$257, %edi
	ja	.L1236
	movl	100(%esp), %esi
	cmpl	%esi, %edi
	ja	.L1236
	movl	64(%esp), %eax
	movl	$1, 96(%esp)
	movl	%eax, 108(%esp)
	movl	12(%esp), %eax
	movl	%eax, 104(%esp)
	.p2align 4,,10
	.p2align 3
.L1171:
	addl	$1, 144(%esp)
	movl	144(%esp), %eax
	cmpl	%eax, 148(%esp)
	ja	.L1214
	jmp	.L1268
	.p2align 4,,10
	.p2align 3
.L1166:
	movl	60(%esp), %ebx
	movl	56(%esp), %ecx
	cmpl	%ecx, (%ebx,%eax,4)
	je	.L1167
	jmp	.L1158
.L1170:
	movl	96(%esp), %edi
	testl	%edi, %edi
	je	.L1169
	movl	144(%esp), %esi
	testl	%esi, %esi
	je	.L1228
	movl	104(%esp), %eax
	addl	$1, %eax
	cmpl	%eax, 12(%esp)
	ja	.L1314
	movl	80(%esp), %eax
	subl	$1, 144(%esp)
	movl	$0, 96(%esp)
	movl	$-1, (%eax)
	movl	92(%esp), %eax
	movl	$-1, (%eax,%ebp,4)
	movl	104(%esp), %eax
	cmpl	$2, %eax
	movl	%eax, 12(%esp)
	movl	108(%esp), %eax
	seta	%bl
	movl	%eax, 64(%esp)
	.p2align 4,,10
	.p2align 3
.L1169:
	movl	64(%esp), %eax
	cmpl	152(%esp), %eax
	jbe	.L1237
	testb	%bl, %bl
	jne	.L1235
.L1237:
	cmpl	$2, 12(%esp)
	jbe	.L1180
.L1176:
	movl	12(%esp), %eax
	cmpl	156(%esp), %eax
	jb	.L1180
	cmpl	$4096, 64(%esp)
	jbe	.L1232
	cmpl	$3, %eax
	jne	.L1232
.L1180:
	movl	48(%esp), %eax
	movl	144(%esp), %edi
	movzbl	(%eax,%edi), %edx
	movl	76(%esp), %eax
	movl	4(%eax), %edi
	movl	8(%eax), %eax
	leal	1(%edi), %ebx
	movl	%edi, 12(%esp)
	leal	0(,%ebx,4), %esi
	cmpl	%esi, %eax
	jnb	.L1182
	addl	%eax, %eax
	movl	%esi, %edi
	cmpl	%eax, %esi
	ja	.L1183
	leal	(%esi,%ebx,8), %edi
	shrl	%edi
.L1183:
	movl	%edx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 152
	pushl	%edi
	.cfi_def_cfa_offset 156
	movl	88(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 160
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 144
	testl	%eax, %eax
	movl	12(%esp), %edx
	je	.L1217
	movl	76(%esp), %ecx
	movl	%edi, 8(%ecx)
	movl	%eax, (%ecx)
	movl	%ecx, %edi
.L1184:
	movl	%ebx, 4(%edi)
	movl	%edx, -4(%eax,%esi)
	jmp	.L1171
.L1144:
	testl	%ebp, %ebp
	jne	.L1147
	movl	48(%esp), %ecx
	movl	144(%esp), %edx
	addl	%ecx, %edx
	addl	148(%esp), %ecx
	leal	258(%edx), %eax
	cmpl	%ecx, %eax
	jbe	.L1148
	movl	%ecx, %eax
.L1148:
	cmpl	%eax, %edx
	je	.L1224
	cmpb	$0, (%edx)
	jne	.L1224
	movl	%edx, %ecx
	jmp	.L1151
	.p2align 4,,10
	.p2align 3
.L1315:
	cmpb	$0, (%ecx)
	jne	.L1299
.L1151:
	addl	$1, %ecx
	cmpl	%eax, %ecx
	jne	.L1315
.L1299:
	subl	%edx, %ecx
	movl	%ecx, %edx
	movzwl	%dx, %eax
	movl	%edx, %ebp
	leal	0(,%eax,4), %esi
.L1300:
	movl	$0, 12(%esp)
	movl	$0, 56(%esp)
	jmp	.L1146
.L1142:
	movl	144(%esp), %eax
	cmpl	%eax, 148(%esp)
	jbe	.L1144
	movl	148(%esp), %edi
	subl	%eax, %edi
	je	.L1144
	movl	48(%esp), %esi
	movl	144(%esp), %ecx
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	addl	%ecx, %esi
	.p2align 4,,10
	.p2align 3
.L1145:
	movzbl	(%esi,%eax), %edx
	leal	0(,%eax,8), %ecx
	addl	$1, %eax
	sall	%cl, %edx
	xorl	%edx, %ebx
	cmpl	%edi, %eax
	jne	.L1145
	jmp	.L1143
.L1182:
	movl	76(%esp), %eax
	movl	76(%esp), %edi
	movl	(%eax), %eax
	jmp	.L1184
.L1311:
	movl	4(%edi), %eax
	leal	(%edx,%edx), %edx
	movl	%eax, 36(%esp)
	leal	(%eax,%edx), %ebx
	jmp	.L1154
.L1147:
	movl	144(%esp), %eax
	addl	%ebp, %eax
	cmpl	%eax, 148(%esp)
	jb	.L1152
	movl	48(%esp), %edi
	cmpb	$0, -1(%edi,%eax)
	je	.L1301
.L1152:
	subl	$1, %ebp
.L1301:
	movzwl	%bp, %eax
	movl	%ebp, %ecx
	leal	0(,%eax,4), %esi
	jmp	.L1300
.L1236:
	movl	64(%esp), %edi
	cmpl	152(%esp), %edi
	movl	$0, 96(%esp)
	jbe	.L1176
	testb	%al, %al
	je	.L1176
.L1235:
	movl	$86, 84(%esp)
	jmp	.L1268
.L1232:
	movl	12(%esp), %esi
	movl	$28, %edx
	movl	$1, %ebx
	.p2align 4,,10
	.p2align 3
.L1181:
	leal	(%edx,%ebx), %eax
	shrl	%eax
	movl	LENGTHBASE(,%eax,4), %ecx
	leal	-1(%eax), %edi
	addl	$1, %eax
	cmpl	%ecx, %esi
	ja	.L1186
	movl	%ebx, %eax
.L1186:
	cmpl	%ecx, %esi
	movl	%eax, %ebx
	ja	.L1188
	movl	%edi, %edx
.L1188:
	cmpl	%edx, %eax
	jbe	.L1181
	cmpl	$28, %eax
	movl	%eax, %edi
	ja	.L1189
	movl	12(%esp), %esi
	cmpl	LENGTHBASE(,%eax,4), %esi
	jnb	.L1190
.L1189:
	leal	-1(%eax), %edi
.L1190:
	movl	12(%esp), %eax
	subl	LENGTHBASE(,%edi,4), %eax
	movl	$29, %edx
	movl	64(%esp), %esi
	movl	$1, %ebx
	movl	%ebp, 20(%esp)
	movl	%eax, 16(%esp)
	.p2align 4,,10
	.p2align 3
.L1195:
	leal	(%ebx,%edx), %eax
	shrl	%eax
	movl	DISTANCEBASE(,%eax,4), %ecx
	leal	-1(%eax), %ebp
	addl	$1, %eax
	cmpl	%ecx, %esi
	ja	.L1192
	movl	%ebx, %eax
.L1192:
	cmpl	%ecx, %esi
	movl	%eax, %ebx
	ja	.L1194
	movl	%ebp, %edx
.L1194:
	cmpl	%eax, %edx
	jnb	.L1195
	cmpl	$29, %eax
	movl	20(%esp), %ebp
	movl	%eax, %ebx
	ja	.L1196
	movl	64(%esp), %esi
	cmpl	DISTANCEBASE(,%eax,4), %esi
	jnb	.L1197
.L1196:
	movl	64(%esp), %esi
	leal	-1(%eax), %ebx
.L1197:
	leal	257(%edi), %edx
	movl	76(%esp), %edi
	subl	DISTANCEBASE(,%ebx,4), %esi
	movl	%edi, %eax
	call	uivector_push_back
	movl	16(%esp), %edx
	movl	%edi, %eax
	call	uivector_push_back
	movl	%ebx, %edx
	movl	%edi, %eax
	call	uivector_push_back
	movl	%esi, %edx
	movl	%edi, %eax
	call	uivector_push_back
	movl	44(%esp), %eax
	movl	12(%esp), %esi
	addl	144(%esp), %esi
	movl	%ebp, 12(%esp)
	movl	8(%eax), %edi
	movl	%esi, %edx
	movl	%esi, 64(%esp)
	movl	%edi, 28(%esp)
	movl	(%eax), %edi
	movl	%edi, 36(%esp)
	movl	20(%eax), %edi
	movl	12(%eax), %eax
	movl	%edi, 40(%esp)
	movl	144(%esp), %edi
	movl	%eax, 52(%esp)
	movl	148(%esp), %eax
	subl	144(%esp), %eax
	subl	$1, %eax
	movl	%eax, 20(%esp)
	movl	48(%esp), %eax
	movl	%eax, %esi
	leal	1(%eax,%edi), %edi
	addl	%edx, %eax
	movl	%eax, 24(%esp)
	movl	148(%esp), %eax
	addl	%esi, %eax
	movl	%eax, 60(%esp)
	jmp	.L1213
	.p2align 4,,10
	.p2align 3
.L1317:
	movzbl	1(%edi), %edx
	movzbl	2(%edi), %eax
	sall	$4, %edx
	sall	$8, %eax
	xorl	%edx, %eax
	movzbl	(%edi), %edx
	xorl	%eax, %edx
	movzwl	%dx, %edx
	testl	%edx, %edx
	je	.L1200
.L1318:
	xorl	%ebx, %ebx
	leal	0(,%edx,4), %eax
	xorl	%ebp, %ebp
	movw	%bx, 16(%esp)
	movl	$0, 12(%esp)
.L1202:
	addl	36(%esp), %eax
	movl	28(%esp), %ecx
	movl	%edx, (%ecx,%esi,4)
	leal	(%esi,%esi), %edx
	movl	(%eax), %ecx
	cmpl	$-1, %ecx
	je	.L1211
	movl	44(%esp), %ebx
	movl	4(%ebx), %ebx
	movw	%cx, (%ebx,%esi,2)
.L1211:
	addl	52(%esp), %ebp
	movzwl	16(%esp), %ecx
	movl	%esi, (%eax)
	movl	40(%esp), %eax
	movw	%cx, (%eax,%edx)
	movl	0(%ebp), %eax
	cmpl	$-1, %eax
	je	.L1212
	movl	44(%esp), %ebx
	movl	16(%ebx), %ecx
	movw	%ax, (%ecx,%edx)
.L1212:
	subl	$1, 20(%esp)
	addl	$1, %edi
	cmpl	24(%esp), %edi
	movl	%esi, 0(%ebp)
	je	.L1316
.L1213:
	movl	%edi, %eax
	subl	48(%esp), %eax
	movl	72(%esp), %esi
	movl	%eax, 16(%esp)
	andl	%eax, %esi
	movl	88(%esp), %eax
	addl	%edi, %eax
	cmpl	%eax, 148(%esp)
	ja	.L1317
	movl	16(%esp), %eax
	cmpl	%eax, 148(%esp)
	jbe	.L1200
	movl	20(%esp), %ecx
	testl	%ecx, %ecx
	je	.L1200
	leal	-1(%edi), %ebp
	movl	%esi, 56(%esp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	%ecx, %esi
	.p2align 4,,10
	.p2align 3
.L1201:
	movzbl	1(%ebp,%eax), %ebx
	leal	0(,%eax,8), %ecx
	addl	$1, %eax
	sall	%cl, %ebx
	xorl	%ebx, %edx
	cmpl	%eax, %esi
	jne	.L1201
	movzwl	%dx, %edx
	movl	56(%esp), %esi
	testl	%edx, %edx
	jne	.L1318
.L1200:
	movl	12(%esp), %ecx
	testl	%ecx, %ecx
	jne	.L1203
	movl	60(%esp), %ebx
	leal	258(%edi), %ecx
	movl	%edi, %eax
	cmpl	%ecx, %ebx
	movl	%ebx, %edx
	jbe	.L1204
	movl	%ecx, %edx
.L1204:
	cmpl	%edx, %edi
	je	.L1319
	cmpb	$0, (%edi)
	je	.L1208
	jmp	.L1234
	.p2align 4,,10
	.p2align 3
.L1320:
	cmpb	$0, (%eax)
	jne	.L1302
.L1208:
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L1320
.L1302:
	subl	%edi, %eax
	movzwl	%ax, %ebp
	movw	%ax, 16(%esp)
	movl	%eax, 12(%esp)
	sall	$2, %ebp
.L1303:
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L1202
.L1203:
	movl	16(%esp), %ebp
	addl	12(%esp), %ebp
	cmpl	%ebp, 148(%esp)
	jb	.L1209
	movl	48(%esp), %eax
	cmpb	$0, -1(%eax,%ebp)
	je	.L1304
.L1209:
	subl	$1, 12(%esp)
.L1304:
	movl	12(%esp), %eax
	movzwl	%ax, %ebp
	movw	%ax, 16(%esp)
	sall	$2, %ebp
	jmp	.L1303
.L1316:
	movl	64(%esp), %eax
	movl	12(%esp), %ebp
	subl	$1, %eax
	movl	%eax, 144(%esp)
	jmp	.L1171
.L1314:
	movl	48(%esp), %eax
	movl	144(%esp), %edi
	movzbl	-1(%eax,%edi), %edx
	movl	76(%esp), %eax
	call	uivector_push_back
	testl	%eax, %eax
	je	.L1217
	movl	$0, 96(%esp)
	jmp	.L1169
.L1217:
	movl	$83, 84(%esp)
	jmp	.L1268
.L1224:
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	jmp	.L1300
.L1319:
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	movl	$0, 12(%esp)
	movw	%dx, 16(%esp)
	jmp	.L1303
.L1234:
	xorl	%eax, %eax
	xorl	%ebp, %ebp
	movw	%ax, 16(%esp)
	jmp	.L1303
.L1228:
	movl	$81, 84(%esp)
	jmp	.L1268
	.cfi_endproc
.LFE80:
	.size	encodeLZ77, .-encodeLZ77
	.section	.text.unlikely
.LCOLDE23:
	.text
.LHOTE23:
	.section	.text.unlikely
.LCOLDB24:
	.text
.LHOTB24:
	.p2align 4,,15
	.type	lodepng_inflatev.isra.9, @function
lodepng_inflatev.isra.9:
.LFB234:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	leal	0(,%ecx,8), %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$188, %esp
	.cfi_def_cfa_offset 208
	cmpl	$2, %edi
	movl	%edi, (%esp)
	jbe	.L1451
	movl	%ecx, 32(%esp)
	movl	%edx, 24(%esp)
	xorl	%ebp, %ebp
	movl	%eax, 4(%esp)
	movl	$0, 12(%esp)
	movl	$2, %esi
	.p2align 4,,10
	.p2align 3
.L1323:
	movl	24(%esp), %edi
	movl	%ebp, %eax
	movl	%ebp, %ecx
	shrl	$3, %eax
	andl	$7, %ecx
	movl	%esi, %edx
	shrl	$3, %edx
	andl	$7, %esi
	leal	3(%ebp), %ebx
	movzbl	(%edi,%eax), %eax
	movzbl	(%edi,%edx), %edx
	sarl	%cl, %eax
	leal	1(%ebp), %ecx
	andl	$1, %eax
	movb	%al, 105(%esp)
	movl	%ecx, %eax
	andl	$7, %ecx
	shrl	$3, %eax
	movzbl	(%edi,%eax), %eax
	sarl	%cl, %eax
	movl	%esi, %ecx
	sarl	%cl, %edx
	andl	$1, %eax
	andl	$1, %edx
	leal	(%eax,%edx,2), %eax
	cmpl	$3, %eax
	je	.L1450
	testl	%eax, %eax
	je	.L1550
	cmpl	$1, %eax
	movl	$0, 116(%esp)
	movl	$0, 120(%esp)
	movl	$0, 124(%esp)
	movl	$0, 136(%esp)
	movl	$0, 140(%esp)
	movl	$0, 144(%esp)
	je	.L1561
	leal	17(%ebp), %eax
	cmpl	(%esp), %eax
	movl	$49, %esi
	movl	%eax, 20(%esp)
	jbe	.L1562
.L1338:
	movl	%ebx, %ebp
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L1398:
	subl	$12, %esp
	.cfi_def_cfa_offset 220
	pushl	%edx
	.cfi_def_cfa_offset 224
	call	free
	popl	%eax
	.cfi_def_cfa_offset 220
	pushl	132(%esp)
	.cfi_def_cfa_offset 224
	call	free
	popl	%edx
	.cfi_def_cfa_offset 220
	pushl	136(%esp)
	.cfi_def_cfa_offset 224
	call	free
	popl	%ecx
	.cfi_def_cfa_offset 220
	pushl	148(%esp)
	.cfi_def_cfa_offset 224
	call	free
	popl	%ebx
	.cfi_def_cfa_offset 220
	pushl	152(%esp)
	.cfi_def_cfa_offset 224
	call	free
	popl	%edi
	.cfi_def_cfa_offset 220
	pushl	156(%esp)
	.cfi_def_cfa_offset 224
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%esi, %esi
	jne	.L1563
.L1333:
	cmpb	$0, 105(%esp)
	jne	.L1564
	leal	2(%ebp), %esi
	cmpl	(%esp), %esi
	jb	.L1323
	jmp	.L1451
	.p2align 4,,10
	.p2align 3
.L1327:
	addl	$1, %ebx
.L1550:
	testb	$7, %bl
	jne	.L1327
	shrl	$3, %ebx
	leal	4(%ebx), %edi
	cmpl	%edi, 32(%esp)
	ja	.L1565
.L1451:
	movl	$52, %eax
.L1531:
	addl	$188, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L1565:
	.cfi_restore_state
	movl	24(%esp), %esi
	movzbl	1(%esi,%ebx), %ebp
	movzbl	3(%esi,%ebx), %edx
	movl	%ebp, %eax
	movzbl	(%esi,%ebx), %ebp
	sall	$8, %edx
	sall	$8, %eax
	addl	%eax, %ebp
	movzbl	2(%esi,%ebx), %eax
	addl	%edx, %eax
	addl	%ebp, %eax
	cmpl	$65535, %eax
	je	.L1566
	addl	$188, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$21, %eax
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
.L1561:
	.cfi_restore_state
	leal	116(%esp), %eax
	call	generateFixedLitLenTree
	subl	$12, %esp
	.cfi_def_cfa_offset 220
	pushl	$128
	.cfi_def_cfa_offset 224
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%eax, %eax
	movl	%eax, %ebp
	je	.L1335
	leal	128(%ebp), %edx
	.p2align 4,,10
	.p2align 3
.L1336:
	movl	$5, (%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jne	.L1336
	subl	$12, %esp
	.cfi_def_cfa_offset 220
	pushl	$128
	.cfi_def_cfa_offset 224
	call	malloc
	movl	%eax, 160(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%eax, %eax
	je	.L1337
	movl	%eax, %edi
	movl	$32, %ecx
	movl	%ebp, %esi
	rep movsl
	leal	136(%esp), %eax
	movl	$32, 152(%esp)
	movl	$15, 148(%esp)
	call	HuffmanTree_makeFromLengths2
.L1337:
	subl	$12, %esp
	.cfi_def_cfa_offset 220
	pushl	%ebp
	.cfi_def_cfa_offset 224
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 208
.L1335:
	movl	116(%esp), %edi
	movl	%ebx, %ebp
	movl	%edi, 8(%esp)
	movl	24(%esp), %edi
.L1449:
	cmpl	(%esp), %ebp
	jnb	.L1543
	.p2align 4,,10
	.p2align 3
.L1568:
	movl	%ebp, %eax
	movl	%ebp, %ecx
	movl	8(%esp), %esi
	shrl	$3, %eax
	andl	$7, %ecx
	movl	132(%esp), %ebx
	movzbl	(%edi,%eax), %eax
	addl	$1, %ebp
	movl	8(%esp), %edx
	sarl	%cl, %eax
	andl	$1, %eax
	movl	(%esi,%eax,4), %esi
	cmpl	%esi, %ebx
	jbe	.L1402
	jmp	.L1400
	.p2align 4,,10
	.p2align 3
.L1535:
	cmpl	(%esp), %ebp
	je	.L1545
	movl	%ebp, %eax
	movl	%ebp, %ecx
	addl	$1, %ebp
	shrl	$3, %eax
	andl	$7, %ecx
	movzbl	(%edi,%eax), %eax
	sarl	%cl, %eax
	andl	$1, %eax
	leal	(%eax,%esi,2), %eax
	movl	(%edx,%eax,4), %esi
	cmpl	%esi, %ebx
	ja	.L1400
.L1402:
	subl	%ebx, %esi
	cmpl	%esi, %ebx
	ja	.L1535
.L1545:
	movl	%edx, %edi
.L1428:
	cmpl	(%esp), %ebp
	movl	%edi, %edx
	movl	$11, %esi
	jbe	.L1398
	movl	$10, %esi
	jmp	.L1398
	.p2align 4,,10
	.p2align 3
.L1400:
	cmpl	$255, %esi
	ja	.L1567
	movl	12(%esp), %eax
	leal	1(%eax), %ebx
	movl	4(%esp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %ebx
	jbe	.L1406
	addl	%eax, %eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	ja	.L1407
	leal	(%ebx,%ebx,2), %eax
	shrl	%eax
	movl	%eax, %edx
.L1407:
	subl	$8, %esp
	.cfi_def_cfa_offset 216
	pushl	%edx
	.cfi_def_cfa_offset 220
	movl	16(%esp), %eax
	movl	%edx, 20(%esp)
	pushl	(%eax)
	.cfi_def_cfa_offset 224
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%eax, %eax
	movl	8(%esp), %edx
	je	.L1555
	movl	4(%esp), %ecx
	movl	%edx, 8(%ecx)
	movl	%eax, (%ecx)
	movl	%ecx, %edx
.L1408:
	movl	%ebx, 4(%edx)
	movl	12(%esp), %edx
	movl	%esi, %ecx
	movb	%cl, (%eax,%edx)
.L1423:
	cmpl	(%esp), %ebp
	movl	116(%esp), %eax
	movl	%ebx, 12(%esp)
	movl	%eax, 8(%esp)
	jb	.L1568
.L1543:
	movl	8(%esp), %edi
	jmp	.L1428
	.p2align 4,,10
	.p2align 3
.L1406:
	movl	4(%esp), %eax
	movl	4(%esp), %edx
	movl	(%eax), %eax
	jmp	.L1408
.L1555:
	movl	116(%esp), %edx
	movl	$83, %esi
	jmp	.L1398
.L1567:
	leal	-257(%esi), %eax
	cmpl	$28, %eax
	ja	.L1409
	movl	LENGTHEXTRA(,%eax,4), %edx
	movl	LENGTHBASE(,%eax,4), %esi
	leal	(%edx,%ebp), %eax
	cmpl	(%esp), %eax
	movl	%esi, 16(%esp)
	ja	.L1471
	testl	%edx, %edx
	je	.L1472
	movl	%ebp, %ebx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L1411:
	movl	%ebx, %edx
	movl	%ebx, %ecx
	shrl	$3, %edx
	andl	$7, %ecx
	movzbl	(%edi,%edx), %edx
	sarl	%cl, %edx
	movl	%ebx, %ecx
	addl	$1, %ebx
	andl	$1, %edx
	subl	%ebp, %ecx
	sall	%cl, %edx
	addl	%edx, %esi
	cmpl	%ebx, %eax
	jne	.L1411
.L1410:
	addl	16(%esp), %esi
	cmpl	(%esp), %eax
	movl	%esi, 16(%esp)
	jnb	.L1548
	movl	%eax, %edx
	movl	%eax, %ecx
	movl	136(%esp), %ebp
	shrl	$3, %edx
	andl	$7, %ecx
	movl	152(%esp), %esi
	movzbl	(%edi,%edx), %edx
	addl	$1, %eax
	sarl	%cl, %edx
	andl	$1, %edx
	movl	0(%ebp,%edx,4), %edx
	cmpl	%edx, %esi
	jbe	.L1415
	jmp	.L1413
	.p2align 4,,10
	.p2align 3
.L1537:
	cmpl	(%esp), %eax
	je	.L1548
	movl	%eax, %ecx
	shrl	$3, %ecx
	movzbl	(%edi,%ecx), %ebx
	movl	%eax, %ecx
	addl	$1, %eax
	andl	$7, %ecx
	sarl	%cl, %ebx
	andl	$1, %ebx
	leal	(%ebx,%edx,2), %edx
	movl	0(%ebp,%edx,4), %edx
	cmpl	%esi, %edx
	jb	.L1413
.L1415:
	subl	%esi, %edx
	cmpl	%esi, %edx
	jb	.L1537
.L1548:
	movl	8(%esp), %edi
	movl	%eax, %ebp
	movl	$18, %esi
	movl	%edi, %edx
	jmp	.L1398
	.p2align 4,,10
	.p2align 3
.L1413:
	cmpl	$29, %edx
	ja	.L1548
	movl	DISTANCEBASE(,%edx,4), %esi
	movl	DISTANCEEXTRA(,%edx,4), %edx
	leal	(%edx,%eax), %ebp
	cmpl	(%esp), %ebp
	movl	%esi, 20(%esp)
	ja	.L1474
	testl	%edx, %edx
	je	.L1475
	movl	%eax, %ebx
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L1420:
	movl	%ebx, %edx
	movl	%ebx, %ecx
	shrl	$3, %edx
	andl	$7, %ecx
	movzbl	(%edi,%edx), %edx
	sarl	%cl, %edx
	movl	%ebx, %ecx
	addl	$1, %ebx
	andl	$1, %edx
	subl	%eax, %ecx
	sall	%cl, %edx
	addl	%edx, %esi
	cmpl	%ebx, %ebp
	jne	.L1420
	addl	20(%esp), %esi
	movl	12(%esp), %eax
	cmpl	%eax, %esi
	ja	.L1476
.L1570:
	movl	%eax, %ebx
	subl	%esi, %ebx
	movl	%ebx, 8(%esp)
	movl	16(%esp), %ebx
	addl	%eax, %ebx
	movl	4(%esp), %eax
	movl	8(%eax), %eax
	cmpl	%eax, %ebx
	jbe	.L1421
	addl	%eax, %eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	ja	.L1422
	leal	(%ebx,%ebx,2), %edx
	shrl	%edx
.L1422:
	subl	$8, %esp
	.cfi_def_cfa_offset 216
	pushl	%edx
	.cfi_def_cfa_offset 220
	movl	16(%esp), %eax
	movl	%edx, 32(%esp)
	pushl	(%eax)
	.cfi_def_cfa_offset 224
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%eax, %eax
	movl	20(%esp), %edx
	je	.L1555
	movl	4(%esp), %ecx
	movl	%edx, 8(%ecx)
	movl	%eax, (%ecx)
.L1421:
	cmpl	%esi, 16(%esp)
	movl	4(%esp), %eax
	movl	%ebx, 4(%eax)
	jbe	.L1569
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	.L1478
	movl	%ebp, 8(%esp)
	movl	12(%esp), %eax
	movl	4(%esp), %ebp
	.p2align 4,,10
	.p2align 3
.L1507:
	movl	0(%ebp), %edx
	movl	%eax, %ecx
	subl	%esi, %ecx
	movzbl	(%edx,%ecx), %ecx
	movb	%cl, (%edx,%eax)
	addl	$1, %eax
	cmpl	%eax, %ebx
	jne	.L1507
	movl	8(%esp), %ebp
	jmp	.L1423
	.p2align 4,,10
	.p2align 3
.L1569:
	movl	4(%esp), %eax
	movl	12(%esp), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 212
	movl	(%eax), %eax
	addl	%eax, %edx
	addl	12(%esp), %eax
	pushl	20(%esp)
	.cfi_def_cfa_offset 216
	pushl	%eax
	.cfi_def_cfa_offset 220
	pushl	%edx
	.cfi_def_cfa_offset 224
	call	memcpy
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	jmp	.L1423
.L1472:
	movl	%ebp, %eax
	xorl	%esi, %esi
	jmp	.L1410
.L1475:
	xorl	%esi, %esi
	addl	20(%esp), %esi
	movl	%eax, %ebp
	movl	12(%esp), %eax
	cmpl	%eax, %esi
	jbe	.L1570
.L1476:
	movl	8(%esp), %edi
	movl	$52, %esi
	movl	%edi, %edx
	jmp	.L1398
.L1478:
	movl	12(%esp), %ebx
	jmp	.L1423
.L1471:
	movl	8(%esp), %edi
	movl	$51, %esi
	movl	%edi, %edx
	jmp	.L1398
.L1474:
	movl	8(%esp), %edi
	movl	%eax, %ebp
	movl	$51, %esi
	movl	%edi, %edx
	jmp	.L1398
.L1562:
	movl	24(%esp), %edi
	movl	%ebx, %eax
	leal	13(%ebp), %ecx
	shrl	$3, %eax
	leal	14(%ebp), %edx
	movl	%ecx, %esi
	andl	$7, %ecx
	movzbl	(%edi,%eax), %eax
	shrl	$3, %esi
	movb	%al, 76(%esp)
	leal	4(%ebp), %eax
	movl	%eax, 80(%esp)
	shrl	$3, %eax
	movzbl	(%edi,%eax), %eax
	movb	%al, 84(%esp)
	leal	5(%ebp), %eax
	movl	%eax, 88(%esp)
	shrl	$3, %eax
	movzbl	(%edi,%eax), %eax
	movb	%al, 92(%esp)
	leal	6(%ebp), %eax
	movl	%eax, 96(%esp)
	shrl	$3, %eax
	movzbl	(%edi,%eax), %eax
	movb	%al, 106(%esp)
	leal	7(%ebp), %eax
	movl	%eax, 100(%esp)
	shrl	$3, %eax
	movzbl	(%edi,%eax), %eax
	movb	%al, 107(%esp)
	leal	8(%ebp), %eax
	movl	%eax, 108(%esp)
	shrl	$3, %eax
	movzbl	(%edi,%eax), %eax
	movb	%al, 16(%esp)
	leal	9(%ebp), %eax
	movl	%eax, 28(%esp)
	shrl	$3, %eax
	movzbl	(%edi,%eax), %eax
	movb	%al, 44(%esp)
	leal	10(%ebp), %eax
	movl	%eax, 48(%esp)
	shrl	$3, %eax
	movzbl	(%edi,%eax), %eax
	movb	%al, 56(%esp)
	leal	11(%ebp), %eax
	movl	%eax, 60(%esp)
	shrl	$3, %eax
	movzbl	(%edi,%eax), %eax
	movb	%al, 64(%esp)
	leal	12(%ebp), %eax
	movl	%eax, 68(%esp)
	shrl	$3, %eax
	movzbl	(%edi,%eax), %eax
	leal	16(%ebp), %edi
	movb	%al, 72(%esp)
	leal	15(%ebp), %eax
	movl	24(%esp), %ebp
	movzbl	0(%ebp,%esi), %esi
	sarl	%cl, %esi
	movl	%edx, %ecx
	andl	$7, %edx
	andl	$1, %esi
	shrl	$3, %ecx
	movl	%esi, %ebp
	movl	24(%esp), %esi
	movzbl	(%esi,%ecx), %esi
	movl	%edx, %ecx
	sarl	%cl, %esi
	movl	%esi, %edx
	andl	$1, %edx
	leal	4(%ebp,%edx,2), %esi
	movl	24(%esp), %ebp
	movl	%eax, %edx
	shrl	$3, %edx
	andl	$7, %eax
	movl	%eax, %ecx
	movzbl	0(%ebp,%edx), %edx
	movl	%edx, %eax
	sarl	%cl, %eax
	andl	$1, %eax
	leal	(%esi,%eax,4), %edx
	movl	%edi, %eax
	andl	$7, %edi
	shrl	$3, %eax
	movl	%edi, %ecx
	movzbl	0(%ebp,%eax), %eax
	sarl	%cl, %eax
	andl	$1, %eax
	leal	(%edx,%eax,8), %edi
	leal	(%edi,%edi,2), %eax
	addl	20(%esp), %eax
	cmpl	%eax, (%esp)
	jnb	.L1571
	movl	20(%esp), %ebx
	movl	$50, %esi
	jmp	.L1338
.L1564:
	xorl	%eax, %eax
	jmp	.L1531
.L1450:
	movl	$20, %eax
	jmp	.L1531
.L1566:
	movl	12(%esp), %eax
	leal	0(%ebp,%eax), %esi
	movl	4(%esp), %eax
	movl	8(%eax), %eax
	cmpl	%esi, %eax
	jnb	.L1329
	addl	%eax, %eax
	movl	%esi, %edx
	cmpl	%eax, %esi
	ja	.L1330
	leal	(%esi,%esi,2), %eax
	shrl	%eax
	movl	%eax, %edx
.L1330:
	subl	$8, %esp
	.cfi_def_cfa_offset 216
	pushl	%edx
	.cfi_def_cfa_offset 220
	movl	16(%esp), %eax
	movl	%edx, 20(%esp)
	pushl	(%eax)
	.cfi_def_cfa_offset 224
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%eax, %eax
	movl	8(%esp), %edx
	je	.L1572
	movl	4(%esp), %ecx
	movl	%edx, 8(%ecx)
	movl	%eax, (%ecx)
.L1329:
	leal	0(%ebp,%edi), %ecx
	cmpl	%ecx, 32(%esp)
	movl	4(%esp), %eax
	movl	%esi, 4(%eax)
	jnb	.L1573
	movl	$23, %eax
	jmp	.L1531
.L1571:
	movl	$0, 156(%esp)
	movl	$0, 160(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 220
	movl	$0, 176(%esp)
	pushl	$76
	.cfi_def_cfa_offset 224
	call	malloc
	movl	%eax, 68(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%eax, %eax
	je	.L1458
	xorl	%ebp, %ebp
	movl	%ebx, 36(%esp)
	movl	20(%esp), %esi
	jmp	.L1342
	.p2align 4,,10
	.p2align 3
.L1575:
	leal	1(%esi), %edx
	leal	2(%esi), %eax
	movl	%edx, %ebx
	movl	%eax, 8(%esp)
	andl	$7, %edx
	shrl	$3, %ebx
	movl	%edx, %ecx
	movl	%ebx, %eax
	movl	24(%esp), %ebx
	movzbl	(%ebx,%eax), %eax
	sarl	%cl, %eax
	movl	8(%esp), %ecx
	movl	%eax, %edx
	andl	$1, %edx
	movl	%ecx, %eax
	andl	$7, %ecx
	shrl	$3, %eax
	movzbl	(%ebx,%eax), %eax
	sarl	%cl, %eax
	movl	%esi, %ecx
	andl	$1, %eax
	andl	$7, %ecx
	sall	$2, %eax
	leal	(%eax,%edx,2), %edx
	movl	%esi, %eax
	addl	$3, %esi
	shrl	$3, %eax
	movzbl	(%ebx,%eax), %eax
	movl	52(%esp), %ebx
	sarl	%cl, %eax
	andl	$1, %eax
	addl	%eax, %edx
	movl	CLCL_ORDER(,%ebp,4), %eax
	addl	$1, %ebp
	cmpl	$19, %ebp
	movl	%edx, (%ebx,%eax,4)
	je	.L1574
.L1342:
	cmpl	%ebp, %edi
	ja	.L1575
	movl	CLCL_ORDER(,%ebp,4), %eax
	movl	52(%esp), %ebx
	addl	$1, %ebp
	cmpl	$19, %ebp
	movl	$0, (%ebx,%eax,4)
	jne	.L1342
.L1574:
	movl	36(%esp), %ebx
	movl	%esi, 20(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 220
	pushl	$76
	.cfi_def_cfa_offset 224
	call	malloc
	movl	%eax, 180(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%eax, %eax
	je	.L1458
	movl	%eax, %edi
	movl	52(%esp), %esi
	movl	%ebp, %ecx
	rep movsl
	leal	156(%esp), %eax
	movl	$19, 172(%esp)
	movl	$7, 168(%esp)
	call	HuffmanTree_makeFromLengths2
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L1343
	movl	156(%esp), %eax
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	%eax, 28(%esp)
.L1339:
	subl	$12, %esp
	.cfi_def_cfa_offset 220
	pushl	64(%esp)
	.cfi_def_cfa_offset 224
	call	free
	popl	%eax
	.cfi_def_cfa_offset 220
	pushl	48(%esp)
	.cfi_def_cfa_offset 224
	call	free
	popl	%eax
	.cfi_def_cfa_offset 220
	pushl	52(%esp)
	.cfi_def_cfa_offset 224
	call	free
	popl	%eax
	.cfi_def_cfa_offset 220
	pushl	40(%esp)
	.cfi_def_cfa_offset 224
	call	free
	popl	%eax
	.cfi_def_cfa_offset 220
	pushl	172(%esp)
	.cfi_def_cfa_offset 224
	call	free
	popl	%eax
	.cfi_def_cfa_offset 220
	pushl	176(%esp)
	.cfi_def_cfa_offset 224
	call	free
	movl	132(%esp), %edi
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%esi, %esi
	jne	.L1468
	movl	%edi, 8(%esp)
	movl	20(%esp), %ebp
	movl	24(%esp), %edi
	jmp	.L1449
.L1573:
	testl	%ebp, %ebp
	je	.L1454
	movl	12(%esp), %eax
	movl	4(%esp), %ebp
	movl	%ecx, 8(%esp)
	subl	%eax, %ebx
	addl	24(%esp), %ebx
.L1332:
	movzbl	4(%eax,%ebx), %ecx
	leal	1(%eax), %edx
	movl	0(%ebp), %edi
	cmpl	%edx, %esi
	movb	%cl, (%edi,%eax)
	movl	%edx, %eax
	jne	.L1332
	movl	8(%esp), %ecx
	movl	%ecx, %edi
.L1331:
	leal	0(,%edi,8), %ebp
	movl	%esi, 12(%esp)
	jmp	.L1333
.L1458:
	movl	$0, 28(%esp)
	movl	$0, 40(%esp)
	movl	$83, %esi
	movl	$0, 36(%esp)
	jmp	.L1339
.L1572:
	movb	$83, %al
	jmp	.L1531
.L1454:
	movl	12(%esp), %esi
	jmp	.L1331
.L1563:
	movl	%esi, %eax
	jmp	.L1531
.L1409:
	cmpl	$256, %esi
	movl	8(%esp), %edi
	jne	.L1428
	movl	%edi, %edx
	xorl	%esi, %esi
	jmp	.L1398
.L1468:
	movl	%edi, %edx
	movl	20(%esp), %ebp
	jmp	.L1398
.L1343:
	subl	$12, %esp
	.cfi_def_cfa_offset 220
	pushl	$1152
	.cfi_def_cfa_offset 224
	call	malloc
	movl	$128, (%esp)
	movl	%eax, 52(%esp)
	movl	%eax, %ebp
	call	malloc
	movl	%eax, 56(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%eax, %eax
	je	.L1553
	testl	%ebp, %ebp
	je	.L1553
	movl	36(%esp), %edi
	movl	%esi, %eax
	movl	$288, %ecx
	movzbl	106(%esp), %edx
	rep stosl
	movl	40(%esp), %edi
	movb	$32, %cl
	rep stosl
	movzbl	107(%esp), %eax
	movl	100(%esp), %ecx
	movl	40(%esp), %edi
	andl	$7, %ecx
	sarl	%cl, %eax
	movl	96(%esp), %ecx
	andl	$1, %eax
	sall	$4, %eax
	andl	$7, %ecx
	sarl	%cl, %edx
	movl	%ebx, %ecx
	andl	$1, %edx
	andl	$7, %ecx
	leal	(%eax,%edx,8), %eax
	movzbl	76(%esp), %edx
	sarl	%cl, %edx
	movl	88(%esp), %ecx
	andl	$1, %edx
	addl	%edx, %eax
	movzbl	92(%esp), %edx
	andl	$7, %ecx
	sarl	%cl, %edx
	movl	80(%esp), %ecx
	andl	$1, %edx
	leal	(%eax,%edx,4), %edx
	movzbl	84(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %eax
	movl	108(%esp), %ecx
	andl	$1, %eax
	leal	(%edx,%eax,2), %edx
	movzbl	16(%esp), %eax
	andl	$7, %ecx
	leal	257(%edx), %ebp
	sarl	%cl, %eax
	movl	28(%esp), %ecx
	andl	$1, %eax
	movl	%eax, %ebx
	movzbl	44(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %eax
	movl	48(%esp), %ecx
	andl	$1, %eax
	leal	1(%ebx,%eax,2), %ebx
	movzbl	56(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %eax
	movl	60(%esp), %ecx
	andl	$1, %eax
	leal	(%ebx,%eax,4), %ebx
	movzbl	64(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %eax
	movl	68(%esp), %ecx
	andl	$1, %eax
	leal	(%ebx,%eax,8), %ebx
	movzbl	72(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %eax
	andl	$1, %eax
	sall	$4, %eax
	addl	%eax, %ebx
	leal	0(,%edx,4), %eax
	leal	(%ebx,%ebp), %ecx
	movl	%edi, %ebx
	subl	%eax, %ebx
	movl	$1073741566, %eax
	movl	%ecx, 16(%esp)
	movl	156(%esp), %ecx
	subl	%edx, %eax
	movl	%ebx, 60(%esp)
	movl	%eax, 92(%esp)
	xorl	%ebx, %ebx
	movl	%ecx, 44(%esp)
	movl	%ecx, 28(%esp)
	movl	172(%esp), %ecx
	movl	%ecx, 48(%esp)
	leal	258(%edx), %ecx
	movl	%ecx, 88(%esp)
	movl	%esi, 56(%esp)
	movl	%edi, %esi
	movl	36(%esp), %eax
	movl	%eax, 8(%esp)
.L1392:
	movl	20(%esp), %edi
	movl	(%esp), %eax
	cmpl	%eax, %edi
	jnb	.L1349
	movl	24(%esp), %eax
	movl	%edi, %edx
	movl	%edi, %ecx
	shrl	$3, %edx
	andl	$7, %ecx
	movzbl	(%eax,%edx), %edx
	sarl	%cl, %edx
	andl	$1, %edx
	jmp	.L1552
.L1350:
	movl	48(%esp), %ecx
	subl	%ecx, %edx
	cmpl	%edx, %ecx
	jbe	.L1349
	cmpl	(%esp), %edi
	je	.L1349
	movl	24(%esp), %eax
	movl	%edi, %ecx
	shrl	$3, %ecx
	movzbl	(%eax,%ecx), %ecx
	movl	%ecx, %eax
	movl	%edi, %ecx
	andl	$7, %ecx
	sarl	%cl, %eax
	movl	%eax, %ecx
	andl	$1, %ecx
	leal	(%ecx,%edx,2), %edx
.L1552:
	movl	44(%esp), %eax
	addl	$1, %edi
	movl	(%eax,%edx,4), %edx
	cmpl	%edx, 48(%esp)
	jbe	.L1350
	cmpl	$15, %edx
	ja	.L1576
	cmpl	%ebx, %ebp
	jbe	.L1354
	movl	8(%esp), %eax
	movl	%edx, (%eax,%ebx,4)
.L1355:
	addl	$1, %ebx
	movl	%edi, 20(%esp)
.L1356:
	cmpl	16(%esp), %ebx
	jb	.L1392
	movl	56(%esp), %esi
	testl	%esi, %esi
	je	.L1393
	movl	44(%esp), %eax
	movl	%eax, 28(%esp)
	jmp	.L1339
	.p2align 4,,10
	.p2align 3
.L1349:
	movl	44(%esp), %eax
	movl	%eax, 28(%esp)
.L1427:
	cmpl	%edi, (%esp)
	sbbl	%esi, %esi
	addl	$11, %esi
.L1358:
	movl	%edi, 20(%esp)
	jmp	.L1339
	.p2align 4,,10
	.p2align 3
.L1576:
	cmpl	$16, %edx
	je	.L1577
	cmpl	$17, %edx
	je	.L1578
	cmpl	$18, %edx
	jne	.L1387
	leal	7(%edi), %eax
	cmpl	(%esp), %eax
	movl	%eax, 20(%esp)
	ja	.L1464
	leal	2(%edi), %ecx
	leal	1(%edi), %edx
	movl	%edi, %eax
	shrl	$3, %eax
	movl	%ecx, 68(%esp)
	leal	4(%edi), %ecx
	movl	%edx, 64(%esp)
	leal	3(%edi), %edx
	movl	%ecx, 76(%esp)
	leal	6(%edi), %ecx
	movl	%edx, 72(%esp)
	leal	5(%edi), %edx
	andl	$7, %edi
	movl	%ecx, 84(%esp)
	movl	24(%esp), %ecx
	movl	%edx, 80(%esp)
	movzbl	(%ecx,%eax), %edx
	movl	%edi, %ecx
	movl	64(%esp), %eax
	sarl	%cl, %edx
	movl	24(%esp), %ecx
	andl	$1, %edx
	leal	11(%ebx,%edx), %edi
	movl	%eax, %edx
	shrl	$3, %edx
	movzbl	(%ecx,%edx), %edx
	movl	%eax, %ecx
	movl	68(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %edx
	movl	24(%esp), %ecx
	andl	$1, %edx
	leal	(%edi,%edx,2), %edi
	movl	%eax, %edx
	shrl	$3, %edx
	movzbl	(%ecx,%edx), %edx
	movl	%eax, %ecx
	movl	72(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %edx
	movl	24(%esp), %ecx
	andl	$1, %edx
	leal	(%edi,%edx,4), %edi
	movl	%eax, %edx
	shrl	$3, %edx
	movzbl	(%ecx,%edx), %edx
	movl	%eax, %ecx
	movl	76(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %edx
	movl	24(%esp), %ecx
	andl	$1, %edx
	leal	(%edi,%edx,8), %edi
	movl	%eax, %edx
	shrl	$3, %edx
	movzbl	(%ecx,%edx), %edx
	movl	%eax, %ecx
	movl	80(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %edx
	movl	24(%esp), %ecx
	andl	$1, %edx
	sall	$4, %edx
	addl	%edx, %edi
	movl	%eax, %edx
	shrl	$3, %edx
	movzbl	(%ecx,%edx), %edx
	movl	%eax, %ecx
	movl	84(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %edx
	movl	24(%esp), %ecx
	andl	$1, %edx
	sall	$5, %edx
	addl	%edx, %edi
	movl	%eax, %edx
	shrl	$3, %edx
	movzbl	(%ecx,%edx), %edx
	movl	%eax, %ecx
	movl	8(%esp), %eax
	andl	$7, %ecx
	sarl	%cl, %edx
	andl	$1, %edx
	sall	$6, %edx
	addl	%edx, %edi
.L1388:
	cmpl	%ebx, %ebp
	jbe	.L1389
	movl	$0, (%eax,%ebx,4)
.L1390:
	addl	$1, %ebx
	cmpl	%edi, %ebx
	je	.L1579
	cmpl	16(%esp), %ebx
	jne	.L1388
	movl	%eax, 8(%esp)
	movl	$15, 56(%esp)
	jmp	.L1356
	.p2align 4,,10
	.p2align 3
.L1389:
	movl	60(%esp), %edx
	movl	$0, -1028(%edx,%ebx,4)
	jmp	.L1390
.L1464:
	movl	$50, %esi
	jmp	.L1358
.L1387:
	cmpl	$-1, %edx
	movl	$16, %esi
	jne	.L1358
	jmp	.L1427
.L1578:
	leal	3(%edi), %eax
	cmpl	(%esp), %eax
	movl	%eax, 20(%esp)
	ja	.L1464
	leal	1(%edi), %edx
	movl	%edi, %eax
	shrl	$3, %eax
	movl	%edx, 64(%esp)
	leal	2(%edi), %edx
	andl	$7, %edi
	movl	%edi, %ecx
	movl	%edx, 68(%esp)
	movl	%eax, %edx
	movl	24(%esp), %eax
	movzbl	(%eax,%edx), %edx
	sarl	%cl, %edx
	movl	64(%esp), %ecx
	movl	%edx, %edi
	andl	$1, %edi
	movl	%ecx, %edx
	andl	$7, %ecx
	shrl	$3, %edx
	movzbl	(%eax,%edx), %edx
	sarl	%cl, %edx
	movl	68(%esp), %ecx
	andl	$1, %edx
	leal	3(%edi,%edx,2), %edi
	movl	%ecx, %edx
	andl	$7, %ecx
	shrl	$3, %edx
	movzbl	(%eax,%edx), %edx
	sarl	%cl, %edx
	andl	$1, %edx
	cmpl	%ebx, %ebp
	leal	(%edi,%edx,4), %ecx
	ja	.L1364
	movl	%ebx, %edx
	subl	%ebp, %edx
	movl	$0, (%esi,%edx,4)
.L1365:
	leal	1(%ebx), %edx
	cmpl	%edx, 16(%esp)
	jbe	.L1366
	cmpl	%edx, %ebp
	ja	.L1367
	subl	%ebp, %edx
	movl	$0, (%esi,%edx,4)
.L1368:
	leal	2(%ebx), %edx
	cmpl	%edx, 16(%esp)
	jbe	.L1366
	cmpl	%edx, %ebp
	ja	.L1369
	subl	%ebp, %edx
	movl	$0, (%esi,%edx,4)
.L1370:
	cmpl	$3, %ecx
	leal	3(%ebx), %edx
	je	.L1371
	cmpl	%edx, 16(%esp)
	jbe	.L1366
	cmpl	%edx, %ebp
	ja	.L1372
	subl	%ebp, %edx
	movl	$0, (%esi,%edx,4)
.L1373:
	cmpl	$4, %ecx
	leal	4(%ebx), %edx
	je	.L1371
	cmpl	%edx, 16(%esp)
	jbe	.L1366
	cmpl	%edx, %ebp
	ja	.L1374
	subl	%ebp, %edx
	movl	$0, (%esi,%edx,4)
.L1375:
	cmpl	$5, %ecx
	leal	5(%ebx), %edx
	je	.L1371
	cmpl	16(%esp), %edx
	jnb	.L1366
	cmpl	%edx, %ebp
	ja	.L1376
	subl	%ebp, %edx
	movl	$0, (%esi,%edx,4)
.L1377:
	cmpl	$6, %ecx
	leal	6(%ebx), %edx
	je	.L1371
	cmpl	16(%esp), %edx
	jnb	.L1366
	cmpl	%edx, %ebp
	ja	.L1378
	subl	%ebp, %edx
	movl	$0, (%esi,%edx,4)
.L1379:
	cmpl	$7, %ecx
	leal	7(%ebx), %edx
	je	.L1371
	cmpl	16(%esp), %edx
	jnb	.L1366
	cmpl	%edx, %ebp
	ja	.L1380
	subl	%ebp, %edx
	movl	$0, (%esi,%edx,4)
.L1381:
	cmpl	$8, %ecx
	leal	8(%ebx), %edx
	je	.L1371
	cmpl	16(%esp), %edx
	jnb	.L1366
	cmpl	%edx, %ebp
	ja	.L1382
	subl	%ebp, %edx
	movl	$0, (%esi,%edx,4)
.L1383:
	cmpl	$10, %ecx
	leal	9(%ebx), %edx
	jne	.L1371
	cmpl	16(%esp), %edx
	jnb	.L1366
	cmpl	%edx, %ebp
	jbe	.L1385
	movl	8(%esp), %eax
	movl	$0, (%eax,%edx,4)
.L1386:
	leal	10(%ebx), %edx
.L1371:
	movl	%edx, %ebx
	jmp	.L1356
.L1369:
	movl	8(%esp), %eax
	movl	$0, (%eax,%edx,4)
	jmp	.L1370
.L1367:
	movl	8(%esp), %eax
	movl	$0, (%eax,%edx,4)
	jmp	.L1368
.L1366:
	movl	%edx, %ebx
	movl	$14, 56(%esp)
	jmp	.L1356
.L1364:
	movl	8(%esp), %eax
	movl	$0, (%eax,%ebx,4)
	jmp	.L1365
.L1385:
	subl	%ebp, %edx
	movl	$0, (%esi,%edx,4)
	jmp	.L1386
.L1553:
	movl	156(%esp), %eax
	movl	$83, %esi
	movl	%eax, 28(%esp)
	jmp	.L1339
.L1579:
	movl	%eax, 8(%esp)
	jmp	.L1356
.L1393:
	movl	36(%esp), %eax
	movl	1024(%eax), %edx
	testl	%edx, %edx
	jne	.L1394
	movl	44(%esp), %eax
	movl	$64, %esi
	movl	%eax, 28(%esp)
	jmp	.L1339
.L1577:
	testl	%ebx, %ebx
	je	.L1461
	leal	2(%edi), %eax
	cmpl	(%esp), %eax
	movl	%eax, 20(%esp)
	ja	.L1464
	leal	1(%edi), %edx
	movl	%edi, %eax
	andl	$7, %edi
	shrl	$3, %eax
	movl	%edi, %ecx
	movl	%edx, 64(%esp)
	movl	%eax, %edx
	movl	24(%esp), %eax
	movzbl	(%eax,%edx), %edx
	sarl	%cl, %edx
	movl	64(%esp), %ecx
	movl	%edx, %edi
	andl	$1, %edi
	movl	%ecx, %edx
	andl	$7, %ecx
	shrl	$3, %edx
	movzbl	(%eax,%edx), %edx
	sarl	%cl, %edx
	andl	$1, %edx
	cmpl	88(%esp), %ebx
	leal	3(%edi,%edx,2), %edi
	jnb	.L1359
	movl	8(%esp), %eax
	leal	1073741823(%ebx), %edx
	movl	(%eax,%edx,4), %ecx
.L1360:
	cmpl	%ebx, %ebp
	ja	.L1433
	movl	%ebx, %edx
	subl	%ebp, %edx
	movl	%ecx, (%esi,%edx,4)
.L1434:
	leal	1(%ebx), %edx
	cmpl	16(%esp), %edx
	jnb	.L1435
	cmpl	%edx, %ebp
	ja	.L1436
	subl	%ebp, %edx
	movl	%ecx, (%esi,%edx,4)
.L1437:
	leal	2(%ebx), %edx
	cmpl	16(%esp), %edx
	jnb	.L1435
	cmpl	%edx, %ebp
	ja	.L1438
	subl	%ebp, %edx
	movl	%ecx, (%esi,%edx,4)
.L1439:
	cmpl	$3, %edi
	leal	3(%ebx), %edx
	je	.L1371
	cmpl	16(%esp), %edx
	jnb	.L1435
	cmpl	%edx, %ebp
	ja	.L1441
	subl	%ebp, %edx
	movl	%ecx, (%esi,%edx,4)
.L1442:
	cmpl	$4, %edi
	leal	4(%ebx), %edx
	je	.L1371
	cmpl	16(%esp), %edx
	jnb	.L1435
	cmpl	%edx, %ebp
	ja	.L1443
	subl	%ebp, %edx
	movl	%ecx, (%esi,%edx,4)
.L1444:
	cmpl	$6, %edi
	leal	5(%ebx), %edx
	jne	.L1371
	cmpl	%edx, 16(%esp)
	jbe	.L1435
	cmpl	%edx, %ebp
	jbe	.L1361
	movl	8(%esp), %eax
	movl	%ecx, (%eax,%edx,4)
.L1362:
	leal	6(%ebx), %edx
	jmp	.L1371
.L1378:
	movl	8(%esp), %eax
	movl	$0, (%eax,%edx,4)
	jmp	.L1379
.L1382:
	movl	8(%esp), %eax
	movl	$0, (%eax,%edx,4)
	jmp	.L1383
.L1380:
	movl	8(%esp), %eax
	movl	$0, (%eax,%edx,4)
	jmp	.L1381
.L1354:
	movl	%ebx, %ecx
	subl	%ebp, %ecx
	movl	%edx, (%esi,%ecx,4)
	jmp	.L1355
.L1394:
	subl	$12, %esp
	.cfi_def_cfa_offset 220
	pushl	$1152
	.cfi_def_cfa_offset 224
	call	malloc
	movl	%eax, 140(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%eax, %eax
	je	.L1553
	movl	%eax, %edi
	movl	36(%esp), %esi
	movl	$288, %ecx
	rep movsl
	leal	116(%esp), %eax
	movl	$288, 132(%esp)
	movl	$15, 128(%esp)
	call	HuffmanTree_makeFromLengths2
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L1580
.L1554:
	movl	156(%esp), %eax
	movl	%eax, 28(%esp)
	jmp	.L1339
.L1374:
	movl	8(%esp), %eax
	movl	$0, (%eax,%edx,4)
	jmp	.L1375
.L1376:
	movl	8(%esp), %eax
	movl	$0, (%eax,%edx,4)
	jmp	.L1377
.L1361:
	subl	%ebp, %edx
	movl	%ecx, (%esi,%edx,4)
	jmp	.L1362
.L1372:
	movl	8(%esp), %eax
	movl	$0, (%eax,%edx,4)
	jmp	.L1373
.L1580:
	subl	$12, %esp
	.cfi_def_cfa_offset 220
	pushl	$128
	.cfi_def_cfa_offset 224
	call	malloc
	movl	%eax, 160(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 208
	testl	%eax, %eax
	je	.L1553
	movl	%eax, %edi
	movl	40(%esp), %esi
	movl	$32, %ecx
	rep movsl
	leal	136(%esp), %eax
	movl	$32, 152(%esp)
	movl	$15, 148(%esp)
	call	HuffmanTree_makeFromLengths2
	movl	%eax, %esi
	jmp	.L1554
.L1443:
	movl	8(%esp), %eax
	movl	%ecx, (%eax,%edx,4)
	jmp	.L1444
.L1441:
	movl	8(%esp), %eax
	movl	%ecx, (%eax,%edx,4)
	jmp	.L1442
.L1438:
	movl	8(%esp), %eax
	movl	%ecx, (%eax,%edx,4)
	jmp	.L1439
.L1436:
	movl	8(%esp), %eax
	movl	%ecx, (%eax,%edx,4)
	jmp	.L1437
.L1435:
	movl	%edx, %ebx
	movl	$13, 56(%esp)
	jmp	.L1356
.L1433:
	movl	8(%esp), %eax
	movl	%ecx, (%eax,%ebx,4)
	jmp	.L1434
.L1359:
	movl	92(%esp), %eax
	leal	(%eax,%ebx), %edx
	movl	(%esi,%edx,4), %ecx
	jmp	.L1360
.L1461:
	movl	$54, %esi
	jmp	.L1358
	.cfi_endproc
.LFE234:
	.size	lodepng_inflatev.isra.9, .-lodepng_inflatev.isra.9
	.section	.text.unlikely
.LCOLDE24:
	.text
.LHOTE24:
	.section	.text.unlikely
.LCOLDB25:
	.text
.LHOTB25:
	.p2align 4,,15
	.type	inflate, @function
inflate:
.LFB71:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %edi
	movl	%ecx, %edx
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %esi
	movl	8(%esi), %ebx
	testl	%ebx, %ebx
	je	.L1582
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	pushl	64(%esp)
	.cfi_def_cfa_offset 68
	pushl	%ecx
	.cfi_def_cfa_offset 72
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	*%ebx
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L1582:
	.cfi_restore_state
	movl	0(%ebp), %ecx
	movl	(%edi), %eax
	movl	%ecx, 4(%esp)
	movl	48(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	%eax, 12(%esp)
	leal	4(%esp), %eax
	call	lodepng_inflatev.isra.9
	movl	4(%esp), %edx
	movl	%edx, 0(%ebp)
	movl	8(%esp), %edx
	movl	%edx, (%edi)
	addl	$28, %esp
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
.LFE71:
	.size	inflate, .-inflate
	.section	.text.unlikely
.LCOLDE25:
	.text
.LHOTE25:
	.section	.text.unlikely
.LCOLDB26:
	.text
.LHOTB26:
	.p2align 4,,15
	.type	zlib_decompress, @function
zlib_decompress:
.LFB91:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%edx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%ecx, %esi
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %ebx
	movl	%eax, 8(%esp)
	movl	48(%esp), %edi
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	.L1586
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	pushl	%edi
	.cfi_def_cfa_offset 68
	pushl	%ecx
	.cfi_def_cfa_offset 72
	pushl	%edx
	.cfi_def_cfa_offset 76
	pushl	36(%esp)
	.cfi_def_cfa_offset 80
	call	*%eax
	addl	$32, %esp
	.cfi_def_cfa_offset 48
.L1587:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L1586:
	.cfi_restore_state
	cmpl	$1, %edi
	jbe	.L1588
	movzbl	(%ecx), %eax
	movzbl	1(%ecx), %ecx
	movl	%ecx, %edx
	movb	%cl, 15(%esp)
	movzbl	%al, %ecx
	sall	$8, %ecx
	movb	%al, 14(%esp)
	movzbl	%dl, %eax
	addl	%eax, %ecx
	movl	$-2078209981, %edx
	movl	%ecx, %eax
	imull	%edx
	addl	%ecx, %edx
	sarl	$4, %edx
	movl	%edx, %eax
	sall	$5, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	$24, %eax
	cmpl	%edx, %ecx
	jne	.L1587
	movzbl	14(%esp), %eax
	testb	%al, %al
	js	.L1590
	andl	$15, %eax
	cmpb	$8, %al
	jne	.L1590
	testb	$32, 15(%esp)
	movl	$26, %eax
	jne	.L1587
	leal	-2(%edi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	leal	2(%esi), %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 60
	movl	%ebp, %edx
	pushl	%eax
	.cfi_def_cfa_offset 64
	movl	24(%esp), %eax
	call	inflate
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L1587
	movl	%ebx, 52(%esp)
	movl	%edi, 48(%esp)
	movl	%esi, %ecx
	movl	8(%esp), %eax
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %edx
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
	jmp	lodepng_zlib_decompress.part.12
	.p2align 4,,10
	.p2align 3
.L1588:
	.cfi_restore_state
	movl	$53, %eax
	jmp	.L1587
	.p2align 4,,10
	.p2align 3
.L1590:
	movl	$25, %eax
	jmp	.L1587
	.cfi_endproc
.LFE91:
	.size	zlib_decompress, .-zlib_decompress
	.section	.text.unlikely
.LCOLDE26:
	.text
.LHOTE26:
	.section	.text.unlikely
.LCOLDB27:
	.text
.LHOTB27:
	.p2align 4,,15
	.globl	lodepng_read32bitInt
	.type	lodepng_read32bitInt, @function
lodepng_read32bitInt:
.LFB39:
	.cfi_startproc
	movl	4(%esp), %edx
	movzbl	(%edx), %eax
	sall	$24, %eax
	movl	%eax, %ecx
	movzbl	1(%edx), %eax
	sall	$16, %eax
	orl	%ecx, %eax
	movzbl	3(%edx), %ecx
	movzbl	2(%edx), %edx
	orl	%ecx, %eax
	sall	$8, %edx
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE39:
	.size	lodepng_read32bitInt, .-lodepng_read32bitInt
	.section	.text.unlikely
.LCOLDE27:
	.text
.LHOTE27:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC28:
	.string	"rb"
	.section	.text.unlikely
.LCOLDB29:
	.text
.LHOTB29:
	.p2align 4,,15
	.globl	lodepng_load_file
	.type	lodepng_load_file, @function
lodepng_load_file:
.LFB44:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	24(%esp), %edi
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	pushl	$.LC28
	.cfi_def_cfa_offset 28
	pushl	%edi
	.cfi_def_cfa_offset 32
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L1616
	subl	$4, %esp
	.cfi_def_cfa_offset 20
	pushl	$2
	.cfi_def_cfa_offset 24
	pushl	$0
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	fseek
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	jne	.L1598
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%ebx
	.cfi_def_cfa_offset 32
	call	ftell
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	cmpl	$2147483647, %eax
	movl	%eax, %esi
	je	.L1598
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%ebx
	.cfi_def_cfa_offset 32
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	testl	%esi, %esi
	js	.L1616
	movl	20(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	movl	%esi, (%eax)
	pushl	%esi
	.cfi_def_cfa_offset 32
	call	malloc
	movl	%eax, %ebx
	movl	32(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	testl	%ebx, %ebx
	movl	%ebx, (%eax)
	jne	.L1604
	testl	%esi, %esi
	movl	$83, %eax
	jne	.L1611
.L1604:
	subl	$8, %esp
	.cfi_def_cfa_offset 24
	pushl	$.LC28
	.cfi_def_cfa_offset 28
	pushl	%edi
	.cfi_def_cfa_offset 32
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	movl	%eax, %edi
	je	.L1616
	pushl	%eax
	.cfi_def_cfa_offset 20
	pushl	%esi
	.cfi_def_cfa_offset 24
	pushl	$1
	.cfi_def_cfa_offset 28
	pushl	%ebx
	.cfi_def_cfa_offset 32
	call	fread
	movl	%eax, %ebx
	movl	%edi, (%esp)
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	cmpl	%ebx, %esi
	je	.L1611
	.p2align 4,,10
	.p2align 3
.L1616:
	movl	$78, %eax
.L1611:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1598:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%ebx
	.cfi_def_cfa_offset 32
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	jmp	.L1616
	.cfi_endproc
.LFE44:
	.size	lodepng_load_file, .-lodepng_load_file
	.section	.text.unlikely
.LCOLDE29:
	.text
.LHOTE29:
	.section	.rodata.str1.1
.LC30:
	.string	"wb"
	.section	.text.unlikely
.LCOLDB31:
	.text
.LHOTB31:
	.p2align 4,,15
	.globl	lodepng_save_file
	.type	lodepng_save_file, @function
lodepng_save_file:
.LFB45:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$16, %esp
	.cfi_def_cfa_offset 24
	pushl	$.LC30
	.cfi_def_cfa_offset 28
	pushl	36(%esp)
	.cfi_def_cfa_offset 32
	call	fopen
	movl	%eax, %ebx
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	movl	$79, %eax
	testl	%ebx, %ebx
	je	.L1618
	pushl	%ebx
	.cfi_def_cfa_offset 20
	pushl	24(%esp)
	.cfi_def_cfa_offset 24
	pushl	$1
	.cfi_def_cfa_offset 28
	pushl	28(%esp)
	.cfi_def_cfa_offset 32
	call	fwrite
	movl	%ebx, (%esp)
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
.L1618:
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE45:
	.size	lodepng_save_file, .-lodepng_save_file
	.section	.text.unlikely
.LCOLDE31:
	.text
.LHOTE31:
	.section	.text.unlikely
.LCOLDB32:
	.text
.LHOTB32:
	.p2align 4,,15
	.globl	lodepng_huffman_code_lengths
	.type	lodepng_huffman_code_lengths, @function
lodepng_huffman_code_lengths:
.LFB58:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %ecx
	movl	8(%esp), %eax
	movl	12(%esp), %edx
	movl	20(%esp), %ebx
	testl	%ecx, %ecx
	jne	.L1625
	movl	$80, %eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L1625:
	.cfi_restore_state
	movl	%ebx, 8(%esp)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	lodepng_huffman_code_lengths.part.11
	.cfi_endproc
.LFE58:
	.size	lodepng_huffman_code_lengths, .-lodepng_huffman_code_lengths
	.section	.text.unlikely
.LCOLDE32:
	.text
.LHOTE32:
	.section	.text.unlikely
.LCOLDB33:
	.text
.LHOTB33:
	.p2align 4,,15
	.globl	lodepng_inflate
	.type	lodepng_inflate, @function
lodepng_inflate:
.LFB70:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	36(%esp), %ebx
	movl	44(%esp), %ecx
	movl	(%esi), %edx
	movl	(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	40(%esp), %edx
	movl	%eax, 8(%esp)
	movl	%eax, 12(%esp)
	leal	4(%esp), %eax
	call	lodepng_inflatev.isra.9
	movl	4(%esp), %edx
	movl	%edx, (%esi)
	movl	8(%esp), %edx
	movl	%edx, (%ebx)
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE70:
	.size	lodepng_inflate, .-lodepng_inflate
	.section	.text.unlikely
.LCOLDE33:
	.text
.LHOTE33:
	.section	.text.unlikely
.LCOLDB34:
	.text
.LHOTB34:
	.p2align 4,,15
	.globl	lodepng_deflate
	.type	lodepng_deflate, @function
lodepng_deflate:
.LFB86:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$220, %esp
	.cfi_def_cfa_offset 240
	movl	244(%esp), %eax
	movl	$0, 72(%esp)
	movl	(%eax), %esi
	movl	240(%esp), %eax
	movl	(%eax), %ebx
	movl	256(%esp), %eax
	movl	%esi, 80(%esp)
	movl	%esi, 84(%esp)
	movl	(%eax), %eax
	movl	%ebx, 76(%esp)
	cmpl	$2, %eax
	movl	%eax, 20(%esp)
	jbe	.L1922
	movl	$61, 20(%esp)
.L1629:
	movl	240(%esp), %eax
	movl	%ebx, (%eax)
	movl	244(%esp), %eax
	movl	%esi, (%eax)
	movl	20(%esp), %eax
	addl	$220, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L1922:
	.cfi_restore_state
	testl	%eax, %eax
	movl	252(%esp), %eax
	je	.L1923
	cmpl	$1, 20(%esp)
	movl	%eax, 24(%esp)
	je	.L1654
	shrl	$3, %eax
	addl	$8, %eax
	cmpl	$65535, %eax
	movl	%eax, 24(%esp)
	jbe	.L1811
	cmpl	$262144, %eax
	jbe	.L1654
	movl	$262144, 24(%esp)
.L1654:
	movl	24(%esp), %edi
	movl	252(%esp), %ecx
	xorl	%edx, %edx
	leal	-1(%edi,%ecx), %eax
	divl	%edi
	testl	%eax, %eax
	movl	%eax, 28(%esp)
	jne	.L1656
	movl	$1, 28(%esp)
.L1656:
	movl	256(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	movl	8(%eax), %ebp
	pushl	$262144
	.cfi_def_cfa_offset 256
	call	malloc
	movl	%eax, 200(%esp)
	movl	%eax, 56(%esp)
	leal	0(,%ebp,4), %eax
	movl	%eax, (%esp)
	movl	%eax, 28(%esp)
	call	malloc
	leal	(%ebp,%ebp), %edx
	movl	%eax, 48(%esp)
	movl	%eax, 208(%esp)
	movl	%edx, (%esp)
	movl	%edx, 24(%esp)
	call	malloc
	movl	24(%esp), %edx
	movl	%eax, 204(%esp)
	movl	%eax, %edi
	movl	%edx, (%esp)
	movl	%edx, 32(%esp)
	call	malloc
	movl	$1036, (%esp)
	movl	%eax, 52(%esp)
	movl	%eax, 220(%esp)
	call	malloc
	movl	32(%esp), %edx
	movl	%eax, 24(%esp)
	movl	%eax, 212(%esp)
	movl	%edx, (%esp)
	call	malloc
	movl	%eax, 32(%esp)
	movl	%eax, 216(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	movl	40(%esp), %ecx
	testl	%ecx, %ecx
	sete	%dl
	testl	%edi, %edi
	sete	%al
	orl	%edx, %eax
	movl	32(%esp), %edx
	testl	%edx, %edx
	sete	%dl
	orl	%eax, %edx
	movl	8(%esp), %eax
	testl	%eax, %eax
	sete	%al
	orl	%edx, %eax
	movl	16(%esp), %edx
	testl	%edx, %edx
	sete	%dl
	orl	%eax, %edx
	movl	36(%esp), %eax
	testl	%eax, %eax
	sete	%al
	orb	%al, %dl
	jne	.L1813
	subl	$4, %esp
	.cfi_def_cfa_offset 244
	pushl	$262144
	.cfi_def_cfa_offset 248
	pushl	$255
	.cfi_def_cfa_offset 252
	pushl	%ecx
	.cfi_def_cfa_offset 256
	call	memset
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%ebp, %ebp
	je	.L1657
	subl	$4, %esp
	.cfi_def_cfa_offset 244
	pushl	16(%esp)
	.cfi_def_cfa_offset 248
	pushl	$255
	.cfi_def_cfa_offset 252
	pushl	44(%esp)
	.cfi_def_cfa_offset 256
	call	memset
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1658:
	movw	%ax, (%edi,%eax,2)
	addl	$1, %eax
	cmpl	%ebp, %eax
	jne	.L1658
	movl	8(%esp), %edi
	movl	16(%esp), %edx
	movl	$-1, %eax
	movl	$259, %ecx
	rep stosl
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L1661:
	movw	%ax, (%edx,%eax,2)
	addl	$1, %eax
	cmpl	%ebp, %eax
	jne	.L1661
.L1662:
	movl	28(%esp), %eax
	movl	$0, 16(%esp)
	subl	$1, %eax
	movl	%eax, 32(%esp)
	movl	20(%esp), %eax
	jmp	.L1660
	.p2align 4,,10
	.p2align 3
.L1664:
	cmpl	$2, %eax
	je	.L1685
	movl	16(%esp), %eax
	addl	$1, %eax
	cmpl	%eax, 28(%esp)
	movl	%eax, 16(%esp)
	setne	%bl
	xorl	%ebp, %ebp
.L1684:
	testb	%bl, %bl
	je	.L1769
.L1933:
	movl	256(%esp), %eax
	movl	(%eax), %eax
.L1660:
	movl	16(%esp), %edi
	movl	32(%esp), %esi
	xorl	%ecx, %ecx
	cmpl	%esi, %edi
	movl	24(%esp), %esi
	sete	%cl
	movl	%ecx, 12(%esp)
	imull	%esi, %edi
	movl	%edi, 8(%esp)
	addl	%esi, %edi
	cmpl	252(%esp), %edi
	movl	%edi, 20(%esp)
	jbe	.L1663
	movl	252(%esp), %edi
	movl	%edi, 20(%esp)
.L1663:
	cmpl	$1, %eax
	jne	.L1664
	leal	144(%esp), %eax
	movl	$0, 144(%esp)
	movl	$0, 148(%esp)
	movl	$0, 152(%esp)
	movl	$0, 164(%esp)
	movl	$0, 168(%esp)
	movl	$0, 172(%esp)
	call	generateFixedLitLenTree
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	pushl	$128
	.cfi_def_cfa_offset 256
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L1665
	leal	128(%ebx), %edx
	.p2align 4,,10
	.p2align 3
.L1666:
	movl	$5, (%eax)
	addl	$4, %eax
	cmpl	%edx, %eax
	jne	.L1666
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	pushl	$128
	.cfi_def_cfa_offset 256
	call	malloc
	movl	%eax, 188(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	je	.L1667
	movl	%eax, %edi
	movl	$32, %ecx
	movl	%ebx, %esi
	rep movsl
	leal	164(%esp), %eax
	movl	$32, 180(%esp)
	movl	$15, 176(%esp)
	call	HuffmanTree_makeFromLengths2
.L1667:
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	pushl	%ebx
	.cfi_def_cfa_offset 256
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 240
.L1665:
	movl	72(%esp), %ecx
	testb	$7, %cl
	je	.L1924
.L1668:
	movl	12(%esp), %edi
	movl	80(%esp), %eax
	andl	$7, %ecx
	movl	76(%esp), %edx
	sall	%cl, %edi
	movl	%edi, %ecx
	orb	%cl, -1(%edx,%eax)
	movl	72(%esp), %eax
	leal	1(%eax), %ecx
	testb	$7, %cl
	movl	%ecx, 72(%esp)
	je	.L1925
.L1669:
	movl	80(%esp), %eax
	movl	76(%esp), %edx
	andl	$7, %ecx
	movl	$1, %ebx
	sall	%cl, %ebx
	orb	%bl, -1(%edx,%eax)
	movl	72(%esp), %eax
	addl	$1, %eax
	testb	$7, %al
	movl	%eax, 72(%esp)
	je	.L1926
.L1670:
	addl	$1, %eax
	movl	%eax, 72(%esp)
	movl	256(%esp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L1671
	movl	20(%esp), %edi
	cmpl	%edi, 8(%esp)
	jnb	.L1927
	movl	152(%esp), %edx
	movl	148(%esp), %eax
	.p2align 4,,10
	.p2align 3
.L1682:
	movl	248(%esp), %edi
	movl	8(%esp), %esi
	movzbl	(%edi,%esi), %ecx
	movl	(%edx,%ecx,4), %ebx
	movl	(%eax,%ecx,4), %edi
	testl	%ebx, %ebx
	je	.L1676
	movl	72(%esp), %eax
	subl	$1, %ebx
	jmp	.L1681
	.p2align 4,,10
	.p2align 3
.L1677:
	movl	%ebx, %ecx
	movl	80(%esp), %esi
	movl	76(%esp), %ebp
	movl	%edi, %edx
	andl	$7, %eax
	subl	$1, %ebx
	shrl	%cl, %edx
	movl	%eax, %ecx
	andl	$1, %edx
	sall	%cl, %edx
	orb	%dl, -1(%ebp,%esi)
	movl	72(%esp), %eax
	addl	$1, %eax
	cmpl	$-1, %ebx
	movl	%eax, 72(%esp)
	je	.L1928
.L1681:
	testb	$7, %al
	jne	.L1677
	movl	80(%esp), %ebp
	movl	84(%esp), %eax
	leal	1(%ebp), %esi
	cmpl	%eax, %esi
	jbe	.L1678
	addl	%eax, %eax
	movl	%esi, %edx
	cmpl	%eax, %esi
	ja	.L1679
	leal	(%esi,%esi,2), %edx
	shrl	%edx
.L1679:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%edx
	.cfi_def_cfa_offset 252
	movl	%edx, 24(%esp)
	pushl	88(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	12(%esp), %edx
	je	.L1929
	movl	%edx, 84(%esp)
	movl	%eax, 76(%esp)
.L1680:
	movl	%esi, 80(%esp)
	movb	$0, (%eax,%ebp)
	movl	72(%esp), %eax
	jmp	.L1677
.L1813:
	movl	$83, 20(%esp)
	jmp	.L1629
.L1811:
	movl	$65536, 24(%esp)
	jmp	.L1654
.L1923:
	addl	$65534, %eax
	movl	$-2147450879, %edx
	mull	%edx
	shrl	$15, %edx
	testl	%edx, %edx
	movl	%edx, 32(%esp)
	je	.L1629
	leal	-1(%edx), %eax
	movl	$0, 8(%esp)
	movl	$0, 24(%esp)
	movl	%esi, %edx
	movl	%eax, 36(%esp)
	movl	%ebx, %eax
	.p2align 4,,10
	.p2align 3
.L1653:
	movl	36(%esp), %ecx
	cmpl	%ecx, 24(%esp)
	leal	1(%esi), %ebx
	sete	%cl
	cmpl	%edx, %ebx
	movl	%ecx, %edi
	jbe	.L1631
	addl	%edx, %edx
	movl	%ebx, %ebp
	cmpl	%edx, %ebx
	ja	.L1632
	leal	(%ebx,%ebx,2), %ebp
	shrl	%ebp
.L1632:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%ebp
	.cfi_def_cfa_offset 252
	pushl	%eax
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	je	.L1770
	movl	%ebp, 84(%esp)
	movl	%eax, 76(%esp)
.L1631:
	movl	%edi, %ecx
	movl	%ebx, 80(%esp)
	movb	%cl, (%eax,%esi)
.L1770:
	movl	252(%esp), %esi
	subl	8(%esp), %esi
	cmpl	$65534, %esi
	ja	.L1803
	movl	$65535, %eax
	movl	80(%esp), %ebp
	movl	%esi, %edi
	subl	%esi, %eax
	shrl	$8, %edi
	movl	%eax, 12(%esp)
	shrl	$8, %eax
	movl	%eax, 16(%esp)
	movl	84(%esp), %eax
	leal	1(%ebp), %ebx
	cmpl	%eax, %ebx
	jbe	.L1634
.L1932:
	addl	%eax, %eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	ja	.L1635
	leal	(%ebx,%ebx,2), %edx
	shrl	%edx
.L1635:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%edx
	.cfi_def_cfa_offset 252
	movl	%edx, 40(%esp)
	pushl	88(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	28(%esp), %edx
	je	.L1771
	movl	%edx, 84(%esp)
	movl	%eax, 76(%esp)
.L1636:
	movl	%esi, %ecx
	movl	%ebx, 80(%esp)
	movb	%cl, (%eax,%ebp)
.L1771:
	movl	80(%esp), %esi
	movl	84(%esp), %eax
	leal	1(%esi), %ebx
	cmpl	%eax, %ebx
	jbe	.L1637
	addl	%eax, %eax
	movl	%ebx, %ebp
	cmpl	%eax, %ebx
	ja	.L1638
	leal	(%ebx,%ebx,2), %ebp
	shrl	%ebp
.L1638:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%ebp
	.cfi_def_cfa_offset 252
	pushl	88(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	je	.L1772
	movl	%ebp, 84(%esp)
	movl	%eax, 76(%esp)
.L1639:
	movl	%edi, %ecx
	movl	%ebx, 80(%esp)
	movb	%cl, (%eax,%esi)
.L1772:
	movl	80(%esp), %esi
	movl	84(%esp), %eax
	leal	1(%esi), %ebx
	cmpl	%eax, %ebx
	jbe	.L1640
	addl	%eax, %eax
	movl	%ebx, %edi
	cmpl	%eax, %ebx
	ja	.L1641
	leal	(%ebx,%ebx,2), %edi
	shrl	%edi
.L1641:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%edi
	.cfi_def_cfa_offset 252
	pushl	88(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	je	.L1773
	movl	%edi, 84(%esp)
	movl	%eax, 76(%esp)
.L1642:
	movzbl	12(%esp), %ecx
	movl	%ebx, 80(%esp)
	movb	%cl, (%eax,%esi)
.L1773:
	movl	80(%esp), %esi
	movl	84(%esp), %eax
	leal	1(%esi), %ebx
	cmpl	%eax, %ebx
	jbe	.L1643
	addl	%eax, %eax
	movl	%ebx, %edi
	cmpl	%eax, %ebx
	ja	.L1644
	leal	(%ebx,%ebx,2), %edi
	shrl	%edi
.L1644:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%edi
	.cfi_def_cfa_offset 252
	pushl	88(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	je	.L1774
	movl	%edi, 84(%esp)
	movl	%eax, 76(%esp)
.L1645:
	movzbl	16(%esp), %ecx
	movl	%ebx, 80(%esp)
	movb	%cl, (%eax,%esi)
.L1774:
	movl	8(%esp), %eax
	cmpl	%eax, 252(%esp)
	movl	%eax, %edi
	jbe	.L1646
	movl	248(%esp), %eax
	xorl	%esi, %esi
	addl	%edi, %eax
	movl	%eax, 16(%esp)
	jmp	.L1650
	.p2align 4,,10
	.p2align 3
.L1930:
	addl	%eax, %eax
	movl	%ebx, %edx
	cmpl	%eax, %ebx
	ja	.L1648
	leal	(%ebx,%ebx,2), %edx
	shrl	%edx
.L1648:
	movb	%cl, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%edx
	.cfi_def_cfa_offset 252
	movl	%edx, 20(%esp)
	pushl	88(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	8(%esp), %edx
	movzbl	12(%esp), %ecx
	je	.L1775
	movl	%edx, 84(%esp)
	movl	%eax, 76(%esp)
.L1649:
	movl	%ebx, 80(%esp)
	movb	%cl, (%eax,%ebp)
.L1775:
	addl	$1, %esi
	cmpl	$65534, %esi
	ja	.L1646
	cmpl	%edi, 252(%esp)
	jbe	.L1646
.L1650:
	movl	16(%esp), %eax
	movl	80(%esp), %ebp
	addl	$1, %edi
	movzbl	(%eax,%esi), %ecx
	movl	84(%esp), %eax
	leal	1(%ebp), %ebx
	cmpl	%eax, %ebx
	ja	.L1930
	movl	76(%esp), %eax
	jmp	.L1649
	.p2align 4,,10
	.p2align 3
.L1646:
	addl	$1, 24(%esp)
	movl	24(%esp), %eax
	cmpl	32(%esp), %eax
	je	.L1931
	movl	76(%esp), %eax
	movl	80(%esp), %esi
	movl	84(%esp), %edx
	movl	%edi, 8(%esp)
	jmp	.L1653
	.p2align 4,,10
	.p2align 3
.L1803:
	movl	80(%esp), %ebp
	movl	84(%esp), %eax
	movl	$255, %edi
	movl	$0, 16(%esp)
	movl	$0, 12(%esp)
	movl	$65535, %esi
	leal	1(%ebp), %ebx
	cmpl	%eax, %ebx
	ja	.L1932
.L1634:
	movl	76(%esp), %eax
	jmp	.L1636
	.p2align 4,,10
	.p2align 3
.L1643:
	movl	76(%esp), %eax
	jmp	.L1645
	.p2align 4,,10
	.p2align 3
.L1640:
	movl	76(%esp), %eax
	jmp	.L1642
	.p2align 4,,10
	.p2align 3
.L1637:
	movl	76(%esp), %eax
	jmp	.L1639
.L1931:
	movl	76(%esp), %ebx
	movl	80(%esp), %esi
	jmp	.L1629
	.p2align 4,,10
	.p2align 3
.L1678:
	movl	76(%esp), %eax
	jmp	.L1680
	.p2align 4,,10
	.p2align 3
.L1928:
	movl	152(%esp), %edx
	movl	148(%esp), %eax
.L1676:
	addl	$1, 8(%esp)
	movl	8(%esp), %edi
	cmpl	%edi, 20(%esp)
	ja	.L1682
	leal	76(%esp), %edi
	leal	72(%esp), %esi
.L1675:
	movl	1024(%eax), %ecx
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	pushl	1024(%edx)
	.cfi_def_cfa_offset 256
	movl	%esi, %eax
	movl	%edi, %edx
	movl	$1, %ebx
	xorl	%ebp, %ebp
	call	addBitsToStreamReversed
	addl	$16, %esp
	.cfi_def_cfa_offset 240
.L1788:
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	pushl	156(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%esi
	.cfi_def_cfa_offset 252
	pushl	160(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%edi
	.cfi_def_cfa_offset 252
	pushl	164(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	176(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	180(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	184(%esp)
	.cfi_def_cfa_offset 256
	call	free
	movl	32(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	addl	$1, %eax
	cmpl	%eax, 28(%esp)
	movl	%eax, 16(%esp)
	setne	%dl
	andl	%edx, %ebx
	testb	%bl, %bl
	jne	.L1933
.L1769:
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	pushl	196(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%esi
	.cfi_def_cfa_offset 252
	pushl	204(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%edi
	.cfi_def_cfa_offset 252
	pushl	200(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	216(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	208(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	212(%esp)
	.cfi_def_cfa_offset 256
	call	free
	movl	92(%esp), %ebx
	movl	96(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	movl	%ebp, 20(%esp)
	jmp	.L1629
	.p2align 4,,10
	.p2align 3
.L1929:
	movl	72(%esp), %eax
	jmp	.L1677
	.p2align 4,,10
	.p2align 3
.L1685:
	movl	256(%esp), %eax
	movl	$0, 88(%esp)
	movl	$0, 96(%esp)
	movl	$0, 92(%esp)
	movl	$0, 124(%esp)
	movl	$0, 128(%esp)
	movl	4(%eax), %ecx
	movl	$0, 132(%esp)
	movl	$0, 144(%esp)
	movl	$0, 148(%esp)
	movl	$0, 152(%esp)
	movl	$0, 164(%esp)
	testl	%ecx, %ecx
	movl	$0, 168(%esp)
	movl	$0, 172(%esp)
	movl	$0, 100(%esp)
	movl	$0, 108(%esp)
	movl	$0, 104(%esp)
	movl	$0, 112(%esp)
	movl	$0, 120(%esp)
	movl	$0, 116(%esp)
	je	.L1686
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	movl	264(%esp), %eax
	pushl	20(%eax)
	.cfi_def_cfa_offset 252
	movl	268(%esp), %eax
	pushl	16(%eax)
	.cfi_def_cfa_offset 256
	movl	272(%esp), %eax
	pushl	12(%eax)
	.cfi_def_cfa_offset 260
	movl	276(%esp), %eax
	pushl	8(%eax)
	.cfi_def_cfa_offset 264
	pushl	44(%esp)
	.cfi_def_cfa_offset 268
	pushl	36(%esp)
	.cfi_def_cfa_offset 272
	movl	280(%esp), %ecx
	leal	216(%esp), %edx
	leal	120(%esp), %eax
	call	encodeLZ77
	addl	$32, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L1934
.L1687:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	$1144
	.cfi_def_cfa_offset 252
	pushl	$0
	.cfi_def_cfa_offset 256
	call	realloc
	movl	%eax, 36(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	je	.L1935
	movl	20(%esp), %edi
	xorl	%ebx, %ebx
	movl	$286, %ecx
	movl	%ebx, %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	rep stosl
	pushl	$120
	.cfi_def_cfa_offset 252
	pushl	$0
	.cfi_def_cfa_offset 256
	call	realloc
	movl	%eax, 52(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	je	.L1936
	movl	36(%esp), %edi
	movl	%ebx, %eax
	movl	$30, %ecx
	movl	20(%esp), %ebx
	rep stosl
	xorl	%eax, %eax
	movl	92(%esp), %edx
	movl	88(%esp), %ecx
	testl	%edx, %edx
	je	.L1696
.L1855:
	movl	(%ecx,%eax,4), %edx
	leal	0(,%eax,4), %esi
	addl	$1, (%ebx,%edx,4)
	cmpl	$256, %edx
	jbe	.L1694
	movl	8(%ecx,%esi), %edx
	movl	36(%esp), %edi
	addl	$3, %eax
	addl	$1, (%edi,%edx,4)
.L1694:
	addl	$1, %eax
	cmpl	92(%esp), %eax
	jne	.L1855
.L1696:
	movl	20(%esp), %eax
	movl	$285, %ebx
	movl	1140(%eax), %edx
	movl	$1, 1024(%eax)
	testl	%edx, %edx
	jne	.L1937
	movl	%eax, %edx
	jmp	.L1874
.L1938:
	cmpl	$257, %ebx
	jbe	.L1827
	movl	%eax, %ebx
.L1874:
	movl	-4(%edx,%ebx,4), %ebp
	leal	-1(%ebx), %eax
	testl	%ebp, %ebp
	je	.L1938
.L1827:
	leal	0(,%ebx,4), %esi
	movl	$15, 136(%esp)
	movl	%ebx, 140(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%esi
	.cfi_def_cfa_offset 252
	pushl	144(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	movl	%eax, 148(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	je	.L1698
	subl	$4, %esp
	.cfi_def_cfa_offset 244
	pushl	%esi
	.cfi_def_cfa_offset 248
	pushl	$0
	.cfi_def_cfa_offset 252
	pushl	%eax
	.cfi_def_cfa_offset 256
	call	memset
	movl	148(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%ebx, %ebx
	jne	.L1699
	movl	16(%esp), %esi
	movl	$80, %ebp
	addl	$1, %esi
.L1700:
	xorl	%ebx, %ebx
	movl	$0, 8(%esp)
	movl	$0, 40(%esp)
.L1688:
	movl	$0, 96(%esp)
	movl	$0, 92(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	pushl	100(%esp)
	.cfi_def_cfa_offset 256
	call	free
	movl	$0, 104(%esp)
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	136(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	140(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	144(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%edx
	.cfi_def_cfa_offset 252
	pushl	156(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%ecx
	.cfi_def_cfa_offset 252
	pushl	160(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%edi
	.cfi_def_cfa_offset 252
	pushl	164(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	176(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	180(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	184(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	32(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	48(%esp)
	.cfi_def_cfa_offset 256
	call	free
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	52(%esp)
	.cfi_def_cfa_offset 256
	call	free
	movl	$0, 136(%esp)
	movl	$0, 132(%esp)
	popl	%edx
	.cfi_def_cfa_offset 252
	pushl	124(%esp)
	.cfi_def_cfa_offset 256
	call	free
	movl	$0, 128(%esp)
	movl	$0, 124(%esp)
	movl	$0, 120(%esp)
	popl	%ecx
	.cfi_def_cfa_offset 252
	pushl	112(%esp)
	.cfi_def_cfa_offset 256
	call	free
	movl	$0, 116(%esp)
	popl	%edi
	.cfi_def_cfa_offset 252
	pushl	20(%esp)
	.cfi_def_cfa_offset 256
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	movl	%esi, 16(%esp)
	jmp	.L1684
.L1686:
	movl	20(%esp), %ebx
	subl	8(%esp), %ebx
	leal	0(,%ebx,4), %esi
	testl	%esi, %esi
	je	.L1815
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%esi
	.cfi_def_cfa_offset 252
	pushl	$0
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	je	.L1939
	movl	%esi, 96(%esp)
	movl	%eax, 88(%esp)
.L1689:
	movl	8(%esp), %edi
	movl	248(%esp), %esi
	xorl	%edx, %edx
	movl	%ebx, 92(%esp)
	addl	%edi, %esi
	cmpl	20(%esp), %edi
	jnb	.L1687
.L1856:
	movzbl	(%esi,%edx), %ecx
	movl	%ecx, (%eax,%edx,4)
	addl	$1, %edx
	cmpl	%edx, %ebx
	jne	.L1856
	jmp	.L1687
.L1671:
	movl	$0, 124(%esp)
	movl	$0, 132(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	movl	$0, 136(%esp)
	movl	264(%esp), %eax
	pushl	20(%eax)
	.cfi_def_cfa_offset 252
	movl	268(%esp), %eax
	pushl	16(%eax)
	.cfi_def_cfa_offset 256
	movl	272(%esp), %eax
	pushl	12(%eax)
	.cfi_def_cfa_offset 260
	movl	276(%esp), %eax
	pushl	8(%eax)
	.cfi_def_cfa_offset 264
	pushl	44(%esp)
	.cfi_def_cfa_offset 268
	pushl	36(%esp)
	.cfi_def_cfa_offset 272
	movl	280(%esp), %ecx
	leal	216(%esp), %edx
	leal	156(%esp), %eax
	call	encodeLZ77
	addl	$32, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	%eax, %ebp
	je	.L1940
	movl	$0, 132(%esp)
	movl	$0, 128(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	pushl	136(%esp)
	.cfi_def_cfa_offset 256
	xorl	%ebx, %ebx
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	jmp	.L1788
.L1926:
	leal	76(%esp), %edi
	xorl	%edx, %edx
	movl	%edi, %eax
	call	ucvector_push_back
	movl	72(%esp), %eax
	jmp	.L1670
.L1925:
	leal	76(%esp), %edi
	xorl	%edx, %edx
	movl	%edi, %eax
	call	ucvector_push_back
	movl	72(%esp), %ecx
	jmp	.L1669
.L1924:
	leal	76(%esp), %edi
	xorl	%edx, %edx
	movl	%edi, %eax
	call	ucvector_push_back
	movl	72(%esp), %ecx
	jmp	.L1668
.L1815:
	xorl	%eax, %eax
	jmp	.L1689
.L1934:
	movl	16(%esp), %esi
	xorl	%ebx, %ebx
	movl	$0, 8(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 20(%esp)
	addl	$1, %esi
	jmp	.L1688
.L1940:
	subl	$4, %esp
	.cfi_def_cfa_offset 244
	leal	168(%esp), %eax
	leal	80(%esp), %edi
	leal	76(%esp), %esi
	pushl	%eax
	.cfi_def_cfa_offset 248
	movl	%edi, %edx
	leal	152(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 252
	leal	140(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 256
	movl	%esi, %eax
	leal	140(%esp), %ecx
	call	writeLZ77data.isra.7
	movl	$0, 148(%esp)
	movl	$0, 144(%esp)
	popl	%eax
	.cfi_def_cfa_offset 252
	pushl	136(%esp)
	.cfi_def_cfa_offset 256
	call	free
	movl	168(%esp), %edx
	movl	164(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	jmp	.L1675
.L1657:
	movl	8(%esp), %edi
	movl	$259, %ecx
	movl	$-1, %eax
	rep stosl
	jmp	.L1662
.L1927:
	movl	152(%esp), %edx
	movl	148(%esp), %eax
	leal	76(%esp), %edi
	leal	72(%esp), %esi
	jmp	.L1675
.L1935:
	movl	16(%esp), %esi
	xorl	%ebx, %ebx
	movl	$0, 8(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$83, %ebp
	addl	$1, %esi
	jmp	.L1688
.L1939:
	movl	16(%esp), %esi
	xorl	%ebx, %ebx
	movl	$0, 8(%esp)
	movl	$0, 40(%esp)
	movl	$0, 36(%esp)
	movl	$83, %ebp
	movl	$0, 20(%esp)
	addl	$1, %esi
	jmp	.L1688
.L1936:
	movl	16(%esp), %esi
	xorl	%ebx, %ebx
	movl	$0, 8(%esp)
	movl	$0, 40(%esp)
	movl	$83, %ebp
	addl	$1, %esi
	jmp	.L1688
.L1698:
	movl	16(%esp), %esi
	movl	$83, %ebp
	addl	$1, %esi
	jmp	.L1700
.L1937:
	movl	$15, 136(%esp)
	movl	$286, 140(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	$1144
	.cfi_def_cfa_offset 252
	pushl	144(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	movl	%eax, 148(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	%eax, %edx
	je	.L1698
	xorl	%eax, %eax
	movl	$286, %ecx
	movl	%edx, %edi
	rep stosl
	movl	$286, %ebx
	movl	132(%esp), %eax
.L1699:
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	movl	%ebx, %ecx
	pushl	$15
	.cfi_def_cfa_offset 256
	movl	36(%esp), %edx
	call	lodepng_huffman_code_lengths.part.11
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L1941
	leal	124(%esp), %eax
	call	HuffmanTree_makeFromLengths2
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L1911
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	movl	$2, %ecx
	pushl	$15
	.cfi_def_cfa_offset 252
	pushl	$30
	.cfi_def_cfa_offset 256
	movl	52(%esp), %edx
	leal	160(%esp), %eax
	call	HuffmanTree_makeFromFrequencies
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	%eax, %ebp
	jne	.L1911
	movl	140(%esp), %eax
	cmpl	$286, %eax
	movl	%eax, 48(%esp)
	jbe	.L1704
	movl	$286, 48(%esp)
	movl	48(%esp), %eax
.L1704:
	xorl	%ebp, %ebp
	testl	%eax, %eax
	movl	160(%esp), %edi
	leal	0(,%eax,4), %esi
	leal	100(%esp), %ebx
	je	.L1710
.L1854:
	movl	132(%esp), %eax
	movl	(%eax,%ebp), %edx
	movl	%ebx, %eax
	addl	$4, %ebp
	call	uivector_push_back
	cmpl	%esi, %ebp
	jne	.L1854
.L1710:
	cmpl	$30, %edi
	movl	%edi, 44(%esp)
	jbe	.L1706
	movl	$30, 44(%esp)
.L1707:
	movl	44(%esp), %eax
	leal	100(%esp), %ebx
	xorl	%edi, %edi
	leal	0(,%eax,4), %esi
.L1713:
	movl	152(%esp), %edx
	movl	%ebx, %eax
	movl	(%edx,%edi), %edx
	addl	$4, %edi
	call	uivector_push_back
	cmpl	%esi, %edi
	jne	.L1713
.L1708:
	movl	104(%esp), %ecx
	xorl	%ebp, %ebp
	testl	%ecx, %ecx
	je	.L1712
.L1852:
	leal	1(%ebp), %eax
	cmpl	%eax, %ecx
	movl	%eax, %edi
	movl	%eax, 56(%esp)
	movl	100(%esp), %eax
	jbe	.L1738
	movl	(%eax,%edi,4), %esi
	leal	-4(,%edi,4), %edi
	addl	%eax, %edi
	movl	(%edi), %eax
	cmpl	%eax, %esi
	jne	.L1739
	leal	-1(%ecx), %edx
	movl	$1, %ebx
	subl	%ebp, %edx
	jmp	.L1717
.L1714:
	leal	1(%ebx), %eax
	cmpl	%esi, (%edi,%eax,4)
	jne	.L1909
	movl	%eax, %ebx
.L1717:
	cmpl	%edx, %ebx
	jne	.L1714
.L1909:
	testl	%esi, %esi
	movl	%ebx, 52(%esp)
	jne	.L1942
	cmpl	$1, %ebx
	jbe	.L1719
	leal	1(%ebx), %esi
	cmpl	$10, %esi
	jbe	.L1943
	cmpl	$138, %esi
	jbe	.L1722
	movl	$138, %esi
.L1722:
	leal	112(%esp), %eax
	movl	$18, %edx
	call	uivector_push_back
	leal	-11(%esi), %edx
	leal	112(%esp), %eax
	call	uivector_push_back
.L1721:
	addl	%esi, %ebp
.L1723:
	movl	104(%esp), %ecx
	cmpl	%ebp, %ecx
	jne	.L1852
.L1712:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	$76
	.cfi_def_cfa_offset 252
	pushl	$0
	.cfi_def_cfa_offset 256
	call	realloc
	movl	%eax, 56(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	je	.L1944
	movl	40(%esp), %edi
	xorl	%eax, %eax
	movl	$19, %ecx
	movl	40(%esp), %esi
	rep stosl
	movl	116(%esp), %ebx
	movl	112(%esp), %ecx
	testl	%ebx, %ebx
	je	.L1745
.L1851:
	leal	(%ecx,%eax,4), %edx
	movl	(%edx), %ebx
	addl	$1, (%esi,%ebx,4)
	leal	1(%eax), %ebx
	cmpl	$15, (%edx)
	jbe	.L1743
	movl	%ebx, %eax
.L1743:
	addl	$1, %eax
	cmpl	116(%esp), %eax
	jne	.L1851
.L1745:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	movl	$19, %ecx
	pushl	$7
	.cfi_def_cfa_offset 252
	pushl	$19
	.cfi_def_cfa_offset 256
	movl	56(%esp), %edx
	leal	180(%esp), %eax
	call	HuffmanTree_makeFromFrequencies
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	%eax, %ebp
	je	.L1945
	movl	16(%esp), %esi
	xorl	%ebx, %ebx
	movl	$0, 8(%esp)
	addl	$1, %esi
	jmp	.L1688
	.p2align 4,,10
	.p2align 3
.L1942:
	cmpl	$2, %ebx
	jbe	.L1719
	movl	$-1431655765, %eax
	movl	%ebx, %edi
	mull	%ebx
	shrl	$2, %edx
	leal	(%edx,%edx,2), %eax
	movl	%edx, 8(%esp)
	addl	%eax, %eax
	subl	%eax, %edi
	movl	116(%esp), %eax
	movl	%edi, 40(%esp)
	leal	1(%eax), %edx
	movl	120(%esp), %eax
	leal	0(,%edx,4), %ebp
	cmpl	%eax, %ebp
	jbe	.L1724
	addl	%eax, %eax
	movl	%ebp, %edi
	cmpl	%eax, %ebp
	ja	.L1725
	leal	0(%ebp,%edx,8), %edi
	shrl	%edi
.L1725:
	movl	%edx, 60(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%edi
	.cfi_def_cfa_offset 252
	pushl	124(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	60(%esp), %edx
	je	.L1776
	movl	%edi, 120(%esp)
	movl	%eax, 112(%esp)
.L1726:
	movl	%edx, 116(%esp)
	movl	%esi, -4(%eax,%ebp)
.L1776:
	movl	8(%esp), %esi
	xorl	%ebp, %ebp
	testl	%esi, %esi
	jne	.L1853
	jmp	.L1735
	.p2align 4,,10
	.p2align 3
.L1947:
	addl	%eax, %eax
	movl	%edi, %edx
	cmpl	%eax, %edi
	ja	.L1731
	leal	(%edi,%esi,8), %edx
	shrl	%edx
.L1731:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%edx
	.cfi_def_cfa_offset 252
	movl	%edx, 72(%esp)
	pushl	124(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	60(%esp), %edx
	je	.L1946
	movl	%edx, 120(%esp)
	movl	%eax, 112(%esp)
.L1732:
	movl	%esi, 116(%esp)
	movl	$16, -4(%eax,%edi)
.L1777:
	movl	116(%esp), %edi
	movl	120(%esp), %edx
	leal	1(%edi), %esi
	leal	0(,%esi,4), %edi
	cmpl	%edx, %edi
	jbe	.L1733
	leal	(%edx,%edx), %ecx
	movl	%edi, %edx
	cmpl	%ecx, %edi
	ja	.L1734
	leal	(%edi,%esi,8), %edx
	shrl	%edx
.L1734:
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%edx
	.cfi_def_cfa_offset 252
	movl	%edx, 72(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	60(%esp), %edx
	je	.L1778
	movl	%edx, 120(%esp)
	movl	%eax, 112(%esp)
.L1733:
	movl	%esi, 116(%esp)
	movl	$3, -4(%eax,%edi)
.L1778:
	addl	$1, %ebp
	cmpl	8(%esp), %ebp
	je	.L1735
.L1853:
	movl	116(%esp), %eax
	leal	1(%eax), %esi
	movl	120(%esp), %eax
	leal	0(,%esi,4), %edi
	cmpl	%eax, %edi
	ja	.L1947
	movl	112(%esp), %eax
	jmp	.L1732
.L1735:
	cmpl	$2, 40(%esp)
	ja	.L1948
	subl	40(%esp), %ebx
	movl	%ebx, 52(%esp)
	movl	%ebx, %ebp
.L1736:
	addl	56(%esp), %ebp
	jmp	.L1723
.L1738:
	movl	(%eax,%ebp,4), %eax
.L1739:
	movl	%eax, %esi
.L1719:
	leal	112(%esp), %eax
	movl	%esi, %edx
	call	uivector_push_back
	movl	56(%esp), %ebp
	jmp	.L1723
.L1706:
	movl	44(%esp), %edi
	testl	%edi, %edi
	jne	.L1707
	jmp	.L1708
	.p2align 4,,10
	.p2align 3
.L1946:
	movl	112(%esp), %eax
	jmp	.L1777
.L1724:
	movl	112(%esp), %eax
	jmp	.L1726
.L1943:
	leal	112(%esp), %eax
	movl	$17, %edx
	call	uivector_push_back
	leal	-2(%ebx), %edx
	leal	112(%esp), %eax
	call	uivector_push_back
	jmp	.L1721
.L1948:
	leal	112(%esp), %eax
	movl	$16, %edx
	call	uivector_push_back
	movl	40(%esp), %edx
	leal	112(%esp), %eax
	subl	$3, %edx
	call	uivector_push_back
	movl	52(%esp), %ebp
	jmp	.L1736
.L1944:
	movl	16(%esp), %esi
	xorl	%ebx, %ebx
	movl	$0, 8(%esp)
	movl	$83, %ebp
	addl	$1, %esi
	jmp	.L1688
.L1911:
	movl	16(%esp), %esi
	xorl	%ebx, %ebx
	movl	$0, 8(%esp)
	movl	$0, 40(%esp)
	addl	$1, %esi
	jmp	.L1688
.L1941:
	movl	16(%esp), %esi
	addl	$1, %esi
	jmp	.L1700
.L1945:
	movl	180(%esp), %esi
	leal	0(,%esi,4), %ebx
	testl	%ebx, %ebx
	je	.L1823
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%ebx
	.cfi_def_cfa_offset 252
	pushl	$0
	.cfi_def_cfa_offset 256
	call	realloc
	movl	%eax, %edi
	movl	%eax, 24(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%edi, %edi
	movl	180(%esp), %eax
	movl	%ebx, %ecx
	je	.L1912
.L1746:
	testl	%eax, %eax
	je	.L1779
	movl	%ecx, 52(%esp)
	movl	172(%esp), %edi
	xorl	%eax, %eax
	movl	8(%esp), %ecx
.L1748:
	movl	CLCL_ORDER(,%eax,4), %edx
	movl	(%edi,%edx,4), %edx
	movl	%edx, (%ecx,%eax,4)
	addl	$1, %eax
	cmpl	180(%esp), %eax
	jne	.L1748
	movl	52(%esp), %ecx
.L1779:
	leal	(%esi,%esi,2), %eax
	leal	-4(%ebx), %edi
	leal	-12(,%eax,4), %edx
.L1749:
	movl	8(%esp), %eax
	movl	(%eax,%edi), %ebx
	testl	%ebx, %ebx
	sete	%bl
	cmpl	$4, %esi
	seta	%al
	andb	%al, %bl
	je	.L1949
	subl	$1, %esi
	cmpl	%ecx, %edi
	movl	%edi, %ebx
	jbe	.L1750
	addl	%ecx, %ecx
	cmpl	%ecx, %edi
	ja	.L1751
	movl	%edx, %ebx
	shrl	%ebx
.L1751:
	movl	%edx, 52(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 248
	pushl	%ebx
	.cfi_def_cfa_offset 252
	pushl	20(%esp)
	.cfi_def_cfa_offset 256
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	testl	%eax, %eax
	movl	52(%esp), %edx
	je	.L1912
	movl	%ebx, %ecx
	movl	%eax, 8(%esp)
.L1750:
	subl	$12, %edx
	subl	$4, %edi
	jmp	.L1749
.L1823:
	movl	%esi, %eax
	xorl	%ecx, %ecx
	movl	$0, 8(%esp)
	jmp	.L1746
.L1949:
	movl	72(%esp), %ecx
	leal	76(%esp), %edi
	testb	$7, %cl
	jne	.L1781
	xorl	%edx, %edx
	movl	%edi, %eax
	call	ucvector_push_back
	movl	72(%esp), %ecx
.L1781:
	movl	12(%esp), %eax
	andl	$7, %ecx
	movl	76(%esp), %edx
	sall	%cl, %eax
	movl	%eax, %ecx
	movl	80(%esp), %eax
	orb	%cl, -1(%edx,%eax)
	movl	72(%esp), %eax
	addl	$1, %eax
	testb	$7, %al
	movl	%eax, 72(%esp)
	jne	.L1754
	xorl	%edx, %edx
	movl	%edi, %eax
	call	ucvector_push_back
	movl	72(%esp), %eax
.L1754:
	addl	$1, %eax
	testb	$7, %al
	movl	%eax, 72(%esp)
	jne	.L1755
	xorl	%edx, %edx
	movl	%edi, %eax
	call	ucvector_push_back
	movl	72(%esp), %eax
.L1755:
	andl	$7, %eax
	movl	76(%esp), %edx
	movl	%eax, %ecx
	movl	$1, %eax
	sall	%cl, %eax
	movl	80(%esp), %ecx
	orb	%al, -1(%edx,%ecx)
	movl	44(%esp), %eax
	movl	8(%esp), %edx
	addl	$1, 72(%esp)
	movl	48(%esp), %ecx
	subl	$1, %eax
	movl	%eax, 44(%esp)
	leal	-4(%esi), %eax
	subl	$1, %esi
	movl	(%edx,%esi,4), %edx
	subl	$257, %ecx
	movl	%eax, 12(%esp)
	testl	%edx, %edx
	jne	.L1756
.L1910:
	testl	%eax, %eax
	je	.L1757
	movl	8(%esp), %esi
	subl	$1, %eax
	movl	12(%esi,%eax,4), %esi
	testl	%esi, %esi
	je	.L1910
	movl	%eax, 12(%esp)
.L1756:
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	movl	%edi, %edx
	leal	84(%esp), %esi
	pushl	$5
	.cfi_def_cfa_offset 256
	movl	%esi, %eax
	call	addBitsToStream
	movl	60(%esp), %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	movl	$5, (%esp)
	call	addBitsToStream
	movl	28(%esp), %ecx
	movl	%esi, %eax
	movl	%edi, %edx
	movl	$4, (%esp)
	call	addBitsToStream
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	movl	12(%esp), %eax
	addl	$4, %eax
	movl	%eax, 44(%esp)
	je	.L1763
.L1759:
	movl	$0, 12(%esp)
.L1762:
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	movl	%edi, %edx
	movl	24(%esp), %eax
	movl	20(%esp), %ecx
	movl	(%ecx,%eax,4), %ecx
	pushl	$3
	.cfi_def_cfa_offset 256
	movl	%esi, %eax
	call	addBitsToStream
	addl	$1, 28(%esp)
	movl	28(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	cmpl	44(%esp), %eax
	jne	.L1762
.L1763:
	movl	116(%esp), %edx
	xorl	%eax, %eax
	testl	%edx, %edx
	je	.L1761
	movl	%ebp, 12(%esp)
	movb	%bl, 44(%esp)
	movl	%eax, %ebp
.L1850:
	movl	112(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	leal	0(,%ebp,4), %ebx
	movl	180(%esp), %edx
	movl	(%eax,%ebp,4), %eax
	movl	(%edx,%eax,4), %ecx
	movl	184(%esp), %edx
	pushl	(%edx,%eax,4)
	.cfi_def_cfa_offset 256
	movl	%edi, %edx
	movl	%esi, %eax
	call	addBitsToStreamReversed
	movl	128(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	movl	(%eax,%ebp,4), %edx
	cmpl	$16, %edx
	je	.L1950
	cmpl	$17, %edx
	je	.L1951
	cmpl	$18, %edx
	jne	.L1767
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	movl	4(%eax,%ebx), %ecx
	movl	%edi, %edx
	pushl	$7
	.cfi_def_cfa_offset 256
	movl	%esi, %eax
	addl	$1, %ebp
	call	addBitsToStream
	addl	$16, %esp
	.cfi_def_cfa_offset 240
.L1767:
	addl	$1, %ebp
	cmpl	116(%esp), %ebp
	jne	.L1850
	movzbl	44(%esp), %ebx
	movl	12(%esp), %ebp
.L1761:
	subl	$4, %esp
	.cfi_def_cfa_offset 244
	movl	%edi, %edx
	leal	148(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 248
	leal	132(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 252
	leal	104(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 256
	movl	%esi, %eax
	leal	104(%esp), %ecx
	call	writeLZ77data.isra.7
	movl	148(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	movl	1024(%eax), %eax
	testl	%eax, %eax
	jne	.L1952
	movl	16(%esp), %esi
	movl	$64, %ebp
	addl	$1, %esi
	jmp	.L1688
.L1912:
	movl	16(%esp), %esi
	xorl	%ebx, %ebx
	movl	$83, %ebp
	addl	$1, %esi
	jmp	.L1688
.L1757:
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	movl	%edi, %edx
	leal	84(%esp), %esi
	pushl	$5
	.cfi_def_cfa_offset 256
	movl	%esi, %eax
	call	addBitsToStream
	movl	60(%esp), %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	movl	$5, (%esp)
	call	addBitsToStream
	xorl	%ecx, %ecx
	movl	%edi, %edx
	movl	%esi, %eax
	movl	$4, (%esp)
	call	addBitsToStream
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	movl	$4, 44(%esp)
	jmp	.L1759
.L1951:
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	movl	4(%eax,%ebx), %ecx
	movl	%edi, %edx
	pushl	$3
	.cfi_def_cfa_offset 256
	movl	%esi, %eax
	addl	$1, %ebp
	call	addBitsToStream
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	jmp	.L1767
.L1950:
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	movl	4(%eax,%ebx), %ecx
	movl	%edi, %edx
	pushl	$2
	.cfi_def_cfa_offset 256
	movl	%esi, %eax
	addl	$1, %ebp
	call	addBitsToStream
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	jmp	.L1767
.L1952:
	subl	$12, %esp
	.cfi_def_cfa_offset 252
	movl	140(%esp), %edx
	movl	1024(%edx), %ecx
	pushl	%eax
	.cfi_def_cfa_offset 256
	movl	%edi, %edx
	movl	%esi, %eax
	call	addBitsToStreamReversed
	movl	32(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 240
	addl	$1, %esi
	cmpl	%esi, 28(%esp)
	setne	%bl
	jmp	.L1688
	.cfi_endproc
.LFE86:
	.size	lodepng_deflate, .-lodepng_deflate
	.section	.text.unlikely
.LCOLDE34:
	.text
.LHOTE34:
	.section	.text.unlikely
.LCOLDB35:
	.text
.LHOTB35:
	.p2align 4,,15
	.globl	lodepng_zlib_decompress
	.type	lodepng_zlib_decompress, @function
lodepng_zlib_decompress:
.LFB90:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movl	60(%esp), %edi
	movl	56(%esp), %esi
	movl	64(%esp), %ebp
	movl	%eax, 8(%esp)
	movl	52(%esp), %eax
	cmpl	$1, %edi
	movl	%eax, 4(%esp)
	jbe	.L1955
	movzbl	(%esi), %ebx
	movzbl	1(%esi), %eax
	movl	$-2078209981, %edx
	movl	%ebx, %ecx
	sall	$8, %ebx
	movb	%al, 15(%esp)
	addl	%eax, %ebx
	movl	%ebx, %eax
	imull	%edx
	addl	%ebx, %edx
	sarl	$4, %edx
	movl	%edx, %eax
	sall	$5, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	$24, %eax
	cmpl	%edx, %ebx
	je	.L1961
.L1954:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L1955:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$53, %eax
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
	.p2align 4,,10
	.p2align 3
.L1961:
	.cfi_restore_state
	testb	%cl, %cl
	js	.L1957
	andl	$15, %ecx
	cmpb	$8, %cl
	jne	.L1957
	testb	$32, 15(%esp)
	movb	$26, %al
	jne	.L1954
	leal	-2(%edi), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	leal	2(%esi), %ecx
	pushl	%ebp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	movl	24(%esp), %ebx
	movl	20(%esp), %edx
	movl	%ebx, %eax
	call	inflate
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L1954
	movl	%ebp, 52(%esp)
	movl	%edi, 48(%esp)
	movl	%esi, %ecx
	movl	4(%esp), %edx
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
	jmp	lodepng_zlib_decompress.part.12
	.p2align 4,,10
	.p2align 3
.L1957:
	.cfi_restore_state
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	movl	$25, %eax
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
.LFE90:
	.size	lodepng_zlib_decompress, .-lodepng_zlib_decompress
	.section	.text.unlikely
.LCOLDE35:
	.text
.LHOTE35:
	.section	.text.unlikely
.LCOLDB36:
	.text
.LHOTB36:
	.p2align 4,,15
	.globl	lodepng_zlib_compress
	.type	lodepng_zlib_compress, @function
lodepng_zlib_compress:
.LFB92:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$108, %esp
	.cfi_def_cfa_offset 128
	movl	132(%esp), %eax
	movl	136(%esp), %ebx
	movl	140(%esp), %edi
	movl	$0, 88(%esp)
	movl	$0, 92(%esp)
	movl	(%eax), %esi
	movl	128(%esp), %eax
	leal	1(%esi), %ebp
	movl	(%eax), %eax
	cmpl	%ebp, %esi
	movl	%eax, 12(%esp)
	jnb	.L1985
	leal	(%esi,%esi), %eax
	cmpl	%eax, %ebp
	jbe	.L2001
	subl	$8, %esp
	.cfi_def_cfa_offset 136
	pushl	%ebp
	.cfi_def_cfa_offset 140
	pushl	24(%esp)
	.cfi_def_cfa_offset 144
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	testl	%eax, %eax
	je	.L2002
	movl	%ebp, 68(%esp)
.L2000:
	movl	%eax, 12(%esp)
.L1963:
	movb	$120, (%eax,%esi)
	leal	2(%esi), %eax
	cmpl	68(%esp), %eax
	movl	%eax, 64(%esp)
	ja	.L1980
.L1984:
	movl	12(%esp), %eax
	movl	64(%esp), %esi
	movb	$1, -1(%eax,%esi)
.L1981:
	movl	144(%esp), %eax
	movl	28(%eax), %eax
	testl	%eax, %eax
	je	.L1967
	subl	$12, %esp
	.cfi_def_cfa_offset 140
	pushl	156(%esp)
	.cfi_def_cfa_offset 144
	pushl	%edi
	.cfi_def_cfa_offset 148
	pushl	%ebx
	.cfi_def_cfa_offset 152
	leal	116(%esp), %edx
	pushl	%edx
	.cfi_def_cfa_offset 156
	leal	116(%esp), %edx
	pushl	%edx
	.cfi_def_cfa_offset 160
	call	*%eax
	movl	%eax, 104(%esp)
	addl	$32, %esp
	.cfi_def_cfa_offset 128
.L1968:
	movl	72(%esp), %edx
	testl	%edx, %edx
	je	.L2003
.L1969:
	movl	128(%esp), %eax
	movl	12(%esp), %edi
	movl	%edi, (%eax)
	movl	132(%esp), %eax
	movl	64(%esp), %edi
	movl	%edi, (%eax)
	movl	72(%esp), %eax
	addl	$108, %esp
	.cfi_remember_state
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
.L2001:
	.cfi_restore_state
	leal	0(%ebp,%ebp,2), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 136
	shrl	%eax
	movl	%eax, 76(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 140
	pushl	24(%esp)
	.cfi_def_cfa_offset 144
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	testl	%eax, %eax
	jne	.L2000
	movl	%ebp, 64(%esp)
	movl	%esi, 68(%esp)
	movl	%esi, %ebp
.L1965:
	movl	64(%esp), %eax
	movl	12(%esp), %ecx
	movl	68(%esp), %esi
	leal	(%eax,%eax,2), %eax
	movl	%ecx, 72(%esp)
	shrl	%eax
	movl	%eax, 68(%esp)
.L1966:
	subl	$8, %esp
	.cfi_def_cfa_offset 136
	pushl	76(%esp)
	.cfi_def_cfa_offset 140
	pushl	24(%esp)
	.cfi_def_cfa_offset 144
	call	realloc
	movl	%eax, 28(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	testl	%eax, %eax
	jne	.L1984
	movl	72(%esp), %eax
	movl	%esi, 68(%esp)
	movl	%ebp, 64(%esp)
	movl	%eax, 12(%esp)
	jmp	.L1981
.L1985:
	movl	%esi, 68(%esp)
	movl	12(%esp), %eax
	jmp	.L1963
.L2003:
	testl	%edi, %edi
	je	.L1988
	movl	$1, %ecx
	xorl	%esi, %esi
	movl	$-2146992015, %ebp
	.p2align 4,,10
	.p2align 3
.L1973:
	cmpl	$5550, %edi
	movl	%edi, %edx
	jbe	.L1971
	movl	$5550, %edx
.L1971:
	subl	%edx, %edi
	addl	%ebx, %edx
	.p2align 4,,10
	.p2align 3
.L1972:
	addl	$1, %ebx
	movzbl	-1(%ebx), %eax
	addl	%eax, %ecx
	addl	%ecx, %esi
	cmpl	%edx, %ebx
	jne	.L1972
	movl	%ecx, %eax
	mull	%ebp
	movl	%esi, %eax
	shrl	$15, %edx
	imull	$65521, %edx, %edx
	subl	%edx, %ecx
	mull	%ebp
	shrl	$15, %edx
	imull	$65521, %edx, %edx
	subl	%edx, %esi
	testl	%edi, %edi
	jne	.L1973
	sall	$16, %esi
	orl	%esi, %ecx
	movl	%ecx, %eax
	movb	%cl, 79(%esp)
	shrl	$24, %eax
	movl	%eax, 16(%esp)
	movl	%ecx, %eax
	shrl	$16, %eax
	movl	%eax, 32(%esp)
	movl	%ecx, %eax
	shrl	$8, %eax
	movl	%eax, 48(%esp)
.L1970:
	movl	92(%esp), %eax
	movl	64(%esp), %ebp
	movl	12(%esp), %edx
	testl	%eax, %eax
	je	.L1974
	movl	%edx, %ecx
	xorl	%esi, %esi
	movl	%ebp, %edx
	movl	68(%esp), %ebp
	jmp	.L1977
	.p2align 4,,10
	.p2align 3
.L2005:
	leal	(%ebp,%ebp), %eax
	movl	%ebx, %edi
	cmpl	%eax, %ebx
	ja	.L1976
	leal	(%ebx,%ebx,2), %edi
	shrl	%edi
.L1976:
	movl	%edx, 68(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 136
	pushl	%edi
	.cfi_def_cfa_offset 140
	pushl	%ecx
	.cfi_def_cfa_offset 144
	movl	%ecx, 80(%esp)
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	testl	%eax, %eax
	movl	64(%esp), %ecx
	movl	68(%esp), %edx
	je	.L1982
.L1975:
	movzbl	12(%esp), %ecx
	movl	%edi, %ebp
	movb	%cl, (%eax,%edx)
	movl	%ebx, %edx
	movl	%eax, %ecx
.L1982:
	addl	$1, %esi
	cmpl	%esi, 92(%esp)
	je	.L2004
.L1977:
	movl	88(%esp), %eax
	leal	1(%edx), %ebx
	cmpl	%ebx, %ebp
	movzbl	(%eax,%esi), %eax
	movb	%al, 12(%esp)
	jb	.L2005
	movl	%ebp, %edi
	movl	%ecx, %eax
	jmp	.L1975
.L2004:
	movl	%ebp, 68(%esp)
	movl	%edx, %ebp
	movl	%ecx, %edx
.L1974:
	movl	%edx, 12(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 140
	pushl	100(%esp)
	.cfi_def_cfa_offset 144
	call	free
	leal	4(%ebp), %eax
	movl	%eax, 80(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	movl	68(%esp), %edi
	movl	12(%esp), %edx
	cmpl	%edi, %eax
	jbe	.L1983
	movl	%edi, %ecx
	addl	%ecx, %ecx
	cmpl	%ecx, %eax
	jbe	.L2006
.L1979:
	subl	$8, %esp
	.cfi_def_cfa_offset 136
	pushl	%eax
	.cfi_def_cfa_offset 140
	pushl	%edx
	.cfi_def_cfa_offset 144
	movl	%edx, 84(%esp)
	call	realloc
	movl	%eax, 28(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 128
	testl	%eax, %eax
	movl	68(%esp), %edx
	je	.L2007
.L1983:
	movl	12(%esp), %eax
	movl	64(%esp), %edi
	movzbl	16(%esp), %ecx
	leal	-4(%eax,%edi), %eax
	movb	%cl, (%eax)
	movzbl	32(%esp), %ecx
	movb	%cl, 1(%eax)
	movzbl	48(%esp), %ecx
	movb	%cl, 2(%eax)
	movzbl	79(%esp), %ecx
	movb	%cl, 3(%eax)
	jmp	.L1969
.L1980:
	movl	68(%esp), %eax
	addl	%eax, %eax
	cmpl	%eax, 64(%esp)
	jbe	.L1965
	movl	12(%esp), %eax
	movl	68(%esp), %esi
	movl	%eax, 72(%esp)
	movl	64(%esp), %eax
	movl	%eax, 68(%esp)
	jmp	.L1966
.L1967:
	subl	$12, %esp
	.cfi_def_cfa_offset 140
	pushl	156(%esp)
	.cfi_def_cfa_offset 144
	pushl	%edi
	.cfi_def_cfa_offset 148
	pushl	%ebx
	.cfi_def_cfa_offset 152
	leal	116(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 156
	leal	116(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 160
	call	lodepng_deflate
	movl	%eax, 104(%esp)
	addl	$32, %esp
	.cfi_def_cfa_offset 128
	jmp	.L1968
.L2006:
	movl	64(%esp), %eax
	leal	(%eax,%eax,2), %eax
	shrl	%eax
	jmp	.L1979
.L1988:
	movb	$1, 79(%esp)
	movb	$0, 48(%esp)
	movb	$0, 32(%esp)
	movb	$0, 16(%esp)
	jmp	.L1970
.L2002:
	movl	12(%esp), %eax
	movl	%ebp, 64(%esp)
	movl	%ebp, 68(%esp)
	movl	%esi, %ebp
	movl	%eax, 72(%esp)
	jmp	.L1966
.L2007:
	movl	%ebp, 64(%esp)
	movl	%edx, 12(%esp)
	jmp	.L1983
	.cfi_endproc
.LFE92:
	.size	lodepng_zlib_compress, .-lodepng_zlib_compress
	.section	.text.unlikely
.LCOLDE36:
	.text
.LHOTE36:
	.section	.text.unlikely
.LCOLDB49:
	.text
.LHOTB49:
	.p2align 4,,15
	.type	filter.isra.16, @function
filter.isra.16:
.LFB241:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$1180, %esp
	.cfi_def_cfa_offset 1200
	cmpl	$6, 1204(%esp)
	movl	1212(%esp), %ebx
	ja	.L2009
	movl	%eax, %edi
	movl	1204(%esp), %eax
	movl	%edx, %esi
	movl	1208(%esp), %edx
	imull	CSWTCH.141(,%eax,4), %edx
	movl	%ecx, %eax
	movl	44(%ebx), %ecx
	imull	%edx, %eax
	addl	$7, %eax
	shrl	$3, %eax
	movl	%eax, %ebp
	leal	7(%edx), %eax
	shrl	$3, %eax
	movl	%eax, 32(%esp)
	movl	40(%ebx), %eax
	testl	%eax, %eax
	jne	.L2131
.L2010:
	testl	%edx, %edx
	movl	$31, %eax
	jne	.L2132
.L2092:
	addl	$1180, %esp
	.cfi_remember_state
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
.L2131:
	.cfi_restore_state
	cmpl	$7, 1208(%esp)
	jbe	.L2011
	cmpl	$3, 1204(%esp)
	jne	.L2010
.L2011:
	testl	%edx, %edx
	movl	$31, %eax
	je	.L2092
.L2072:
	movl	1200(%esp), %eax
	testl	%eax, %eax
	je	.L2128
	leal	1(%ebp), %eax
	leal	1(%edi), %ebx
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	movl	%eax, (%esp)
.L2015:
	movl	%esi, 16(%esp)
	movb	$0, -1(%ebx)
	movl	%esi, %edx
	pushl	$0
	.cfi_def_cfa_offset 1204
	pushl	36(%esp)
	.cfi_def_cfa_offset 1208
	movl	%ebx, %eax
	pushl	%ebp
	.cfi_def_cfa_offset 1212
	addl	$1, %edi
	addl	%ebp, %esi
	call	filterScanline
	addl	12(%esp), %ebx
	movl	28(%esp), %ecx
	addl	$12, %esp
	.cfi_def_cfa_offset 1200
	cmpl	1200(%esp), %edi
	jne	.L2015
.L2128:
	xorl	%eax, %eax
.L2139:
	addl	$1180, %esp
	.cfi_remember_state
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
.L2009:
	.cfi_restore_state
	addl	$1180, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$31, %eax
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
.L2132:
	.cfi_restore_state
	testl	%ecx, %ecx
	je	.L2072
	cmpl	$1, %ecx
	je	.L2133
	cmpl	$2, %ecx
	je	.L2134
	cmpl	$4, %ecx
	je	.L2135
	cmpl	$3, %ecx
	movl	$88, %eax
	jne	.L2092
	movl	4(%ebx), %eax
	movl	$1, 144(%esp)
	movl	$0, 168(%esp)
	movl	$0, 172(%esp)
	movl	%eax, 148(%esp)
	movl	8(%ebx), %eax
	movl	%eax, 152(%esp)
	movl	12(%ebx), %eax
	movl	%eax, 156(%esp)
	movl	16(%ebx), %eax
	movl	%eax, 160(%esp)
	movl	20(%ebx), %eax
	movl	%eax, 164(%esp)
	movl	32(%ebx), %eax
	xorl	%ebx, %ebx
	movl	%eax, 176(%esp)
	leal	124(%esp), %eax
	movl	%eax, 36(%esp)
	jmp	.L2060
	.p2align 4,,10
	.p2align 3
.L2059:
	addl	$1, %ebx
	cmpl	$5, %ebx
	je	.L2136
.L2060:
	subl	$12, %esp
	.cfi_def_cfa_offset 1212
	pushl	%ebp
	.cfi_def_cfa_offset 1216
	call	malloc
	movl	52(%esp), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	testl	%eax, %eax
	movl	%eax, (%ecx,%ebx,4)
	jne	.L2059
.L2130:
	movb	$83, %al
	jmp	.L2092
	.p2align 4,,10
	.p2align 3
.L2133:
	leal	144(%esp), %eax
	movl	%eax, 28(%esp)
	movl	%eax, 60(%esp)
	movl	%eax, %ebx
.L2019:
	subl	$12, %esp
	.cfi_def_cfa_offset 1212
	pushl	%ebp
	.cfi_def_cfa_offset 1216
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	testl	%eax, %eax
	movl	%eax, (%ebx)
	je	.L2130
	leal	164(%esp), %eax
	addl	$4, %ebx
	cmpl	%eax, %ebx
	jne	.L2019
	movl	1200(%esp), %eax
	testl	%eax, %eax
	je	.L2122
	leal	1(%ebp), %eax
	movl	%esi, 36(%esp)
	movl	$0, 40(%esp)
	movl	$0, 56(%esp)
	movb	$0, 48(%esp)
	movl	$255, %esi
	movl	%eax, 80(%esp)
	leal	1(%edi), %eax
	movl	$0, 16(%esp)
	movl	%ebp, %edi
	movl	%eax, 52(%esp)
.L2021:
	movl	36(%esp), %eax
	xorl	%ebx, %ebx
	movl	%eax, 64(%esp)
.L2030:
	movl	28(%esp), %eax
	movb	%bl, 44(%esp)
	subl	$4, %esp
	.cfi_def_cfa_offset 1204
	movl	(%eax,%ebx,4), %ebp
	pushl	%ebx
	.cfi_def_cfa_offset 1208
	pushl	40(%esp)
	.cfi_def_cfa_offset 1212
	pushl	%edi
	.cfi_def_cfa_offset 1216
	movl	56(%esp), %ecx
	movl	52(%esp), %edx
	movl	%ebp, %eax
	call	filterScanline
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	testl	%ebx, %ebx
	je	.L2022
	xorl	%ecx, %ecx
	testl	%edi, %edi
	movl	%ebp, %edx
	leal	0(%ebp,%edi), %ebp
	je	.L2137
	movl	%ebx, (%esp)
	jmp	.L2093
	.p2align 4,,10
	.p2align 3
.L2028:
	addl	$1, %edx
	addl	%eax, %ecx
	cmpl	%ebp, %edx
	je	.L2138
.L2093:
	movzbl	(%edx), %eax
	testb	%al, %al
	jns	.L2028
	movl	%esi, %ebx
	addl	$1, %edx
	subl	%eax, %ebx
	movl	%ebx, %eax
	addl	%eax, %ecx
	cmpl	%ebp, %edx
	jne	.L2093
.L2138:
	movl	(%esp), %ebx
.L2024:
	cmpl	%ecx, 16(%esp)
	jbe	.L2073
	movl	%ecx, 16(%esp)
.L2025:
	movzbl	44(%esp), %eax
	movb	%al, 48(%esp)
.L2073:
	addl	$1, %ebx
	cmpl	$5, %ebx
	jne	.L2030
	movzbl	48(%esp), %eax
	movl	52(%esp), %ecx
	testl	%edi, %edi
	movb	%al, -1(%ecx)
	je	.L2032
	movzbl	48(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 1204
	pushl	%edi
	.cfi_def_cfa_offset 1208
	pushl	152(%esp,%eax,4)
	.cfi_def_cfa_offset 1212
	pushl	64(%esp)
	.cfi_def_cfa_offset 1216
	call	memcpy
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
.L2032:
	addl	$1, 56(%esp)
	addl	%edi, 36(%esp)
	movl	56(%esp), %eax
	movl	80(%esp), %ebx
	addl	%ebx, 52(%esp)
	cmpl	1200(%esp), %eax
	movl	64(%esp), %ecx
	movl	%ecx, 40(%esp)
	jne	.L2021
.L2122:
	movl	60(%esp), %ebx
.L2033:
	subl	$12, %esp
	.cfi_def_cfa_offset 1212
	pushl	(%ebx)
	.cfi_def_cfa_offset 1216
	addl	$4, %ebx
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	leal	164(%esp), %eax
	cmpl	%eax, %ebx
	jne	.L2033
	xorl	%eax, %eax
	jmp	.L2139
.L2137:
	movl	%edi, %ecx
	jmp	.L2024
.L2134:
	leal	124(%esp), %eax
	xorl	%ebx, %ebx
	movl	%eax, 36(%esp)
.L2036:
	subl	$12, %esp
	.cfi_def_cfa_offset 1212
	pushl	%ebp
	.cfi_def_cfa_offset 1216
	call	malloc
	movl	52(%esp), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	testl	%eax, %eax
	movl	%eax, (%ecx,%ebx,4)
	je	.L2130
	addl	$1, %ebx
	cmpl	$5, %ebx
	jne	.L2036
	movl	1200(%esp), %ebx
	testl	%ebx, %ebx
	je	.L2037
	fldz
	leal	1(%ebp), %eax
	movl	%esi, 48(%esp)
	leal	1168(%esp), %esi
	movl	$0, 56(%esp)
	movl	$0, 80(%esp)
	fstps	44(%esp)
	movl	%eax, 84(%esp)
	leal	1(%edi), %eax
	movl	$0, 52(%esp)
	movl	%ebp, 40(%esp)
	movl	%eax, 60(%esp)
	leal	144(%esp), %eax
	fildl	84(%esp)
	movl	%eax, 28(%esp)
	fstpt	64(%esp)
.L2038:
	movl	48(%esp), %eax
	xorl	%ebp, %ebp
	movl	%eax, 88(%esp)
.L2055:
	movl	36(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 1204
	movl	(%eax,%ebp,4), %ebx
	pushl	%ebp
	.cfi_def_cfa_offset 1208
	pushl	40(%esp)
	.cfi_def_cfa_offset 1212
	pushl	52(%esp)
	.cfi_def_cfa_offset 1216
	movl	72(%esp), %ecx
	movl	64(%esp), %edx
	movl	%ebx, %eax
	call	filterScanline
	movl	44(%esp), %edi
	xorl	%eax, %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	movl	$256, %ecx
	rep stosl
	movl	40(%esp), %eax
	testl	%eax, %eax
	leal	(%ebx,%eax), %edx
	je	.L2042
	.p2align 4,,10
	.p2align 3
.L2096:
	movzbl	(%ebx), %eax
	addl	$1, %ebx
	addl	$1, 144(%esp,%eax,4)
	cmpl	%edx, %ebx
	jne	.L2096
.L2042:
	fldt	64(%esp)
	movl	28(%esp), %eax
	addl	$1, (%eax,%ebp,4)
	movl	%eax, %edx
	fstps	92(%esp)
	flds	92(%esp)
	fstpt	(%esp)
	fldz
	fld1
	jmp	.L2040
	.p2align 4,,10
	.p2align 3
.L2076:
	fldz
.L2043:
	faddp	%st, %st(2)
	fxch	%st(1)
	addl	$4, %edx
	cmpl	%esi, %edx
	fstps	92(%esp)
	flds	92(%esp)
	je	.L2140
	fxch	%st(1)
.L2040:
	movl	(%edx), %eax
	testl	%eax, %eax
	je	.L2076
	movl	%eax, 16(%esp)
	movl	$0, 20(%esp)
	fildq	16(%esp)
	fstps	92(%esp)
	flds	92(%esp)
	fldt	(%esp)
	fdivrp	%st, %st(1)
	fstps	92(%esp)
	flds	92(%esp)
	fld	%st(0)
	fdivrs	.LC38
	fstps	92(%esp)
	flds	92(%esp)
	fldz
	flds	.LC39
	fxch	%st(2)
	fucom	%st(2)
	fnstsw	%ax
	fstp	%st(2)
	sahf
	jbe	.L2142
	flds	.LC40
	jmp	.L2095
	.p2align 4,,10
	.p2align 3
.L2143:
	fxch	%st(2)
	fxch	%st(1)
.L2095:
	fadd	%st, %st(1)
	fxch	%st(1)
	fstps	92(%esp)
	flds	92(%esp)
	fxch	%st(2)
	fmuls	.LC41
	fstps	92(%esp)
	flds	92(%esp)
	flds	.LC39
	fxch	%st(1)
	fucom	%st(1)
	fnstsw	%ax
	fstp	%st(1)
	sahf
	ja	.L2143
	fstp	%st(1)
	jmp	.L2126
	.p2align 4,,10
	.p2align 3
.L2094:
	fxch	%st(1)
	fadd	%st(3), %st
	fstps	92(%esp)
	flds	92(%esp)
	fxch	%st(1)
	fmuls	.LC44
	fstps	92(%esp)
	flds	92(%esp)
	jmp	.L2126
.L2142:
	fxch	%st(1)
	.p2align 4,,10
	.p2align 3
.L2126:
	flds	.LC42
	fxch	%st(1)
	fucom	%st(1)
	fnstsw	%ax
	fstp	%st(1)
	sahf
	ja	.L2094
	flds	.LC45
	fld	%st(1)
	fmul	%st(1), %st
	fld	%st(2)
	fmul	%st(3), %st
	fmul	%st(3), %st
	fdivp	%st, %st(2)
	fmul	%st, %st(2)
	fxch	%st(2)
	fmuls	.LC44
	fsubrp	%st, %st(1)
	faddp	%st, %st(1)
	fldt	.LC46
	fsubrp	%st, %st(1)
	fldt	.LC47
	fmulp	%st, %st(1)
	faddp	%st, %st(1)
	fstps	92(%esp)
	flds	92(%esp)
	fmulp	%st, %st(1)
	jmp	.L2043
.L2140:
	fstp	%st(1)
	testl	%ebp, %ebp
	je	.L2050
	flds	44(%esp)
	fucom	%st(1)
	fnstsw	%ax
	sahf
	ja	.L2078
	fstp	%st(1)
	addl	$1, %ebp
	cmpl	$5, %ebp
	je	.L2141
.L2052:
	fstps	44(%esp)
	jmp	.L2055
.L2078:
	fstp	%st(0)
	movl	%ebp, 52(%esp)
	addl	$1, %ebp
	cmpl	$5, %ebp
	jne	.L2052
.L2141:
	movzbl	52(%esp), %eax
	movl	40(%esp), %ecx
	fstps	44(%esp)
	movl	60(%esp), %edi
	testl	%ecx, %ecx
	movb	%al, -1(%edi)
	je	.L2054
	subl	$4, %esp
	.cfi_def_cfa_offset 1204
	pushl	44(%esp)
	.cfi_def_cfa_offset 1208
	movl	60(%esp), %eax
	pushl	132(%esp,%eax,4)
	.cfi_def_cfa_offset 1212
	pushl	72(%esp)
	.cfi_def_cfa_offset 1216
	call	memcpy
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
.L2054:
	addl	$1, 80(%esp)
	movl	40(%esp), %ecx
	movl	80(%esp), %eax
	addl	%ecx, 48(%esp)
	movl	84(%esp), %ecx
	addl	%ecx, 60(%esp)
	cmpl	1200(%esp), %eax
	movl	88(%esp), %edi
	movl	%edi, 56(%esp)
	jne	.L2038
.L2037:
	xorl	%ebx, %ebx
.L2056:
	subl	$12, %esp
	.cfi_def_cfa_offset 1212
	movl	48(%esp), %eax
	pushl	(%eax,%ebx,4)
	.cfi_def_cfa_offset 1216
	addl	$1, %ebx
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	cmpl	$5, %ebx
	jne	.L2056
	xorl	%eax, %eax
	jmp	.L2139
.L2135:
	movl	1200(%esp), %edx
	testl	%edx, %edx
	je	.L2128
	leal	1(%ebp), %eax
	movl	%esi, 16(%esp)
	xorb	%cl, %cl
	leal	1(%edi), %esi
	xorl	%edi, %edi
	movl	%eax, 28(%esp)
.L2058:
	movl	48(%ebx), %eax
	movl	16(%esp), %edx
	subl	$4, %esp
	.cfi_def_cfa_offset 1204
	movzbl	(%eax,%edi), %eax
	movl	%edx, 4(%esp)
	addl	$1, %edi
	movb	%al, -1(%esi)
	pushl	%eax
	.cfi_def_cfa_offset 1208
	movl	%esi, %eax
	pushl	40(%esp)
	.cfi_def_cfa_offset 1212
	pushl	%ebp
	.cfi_def_cfa_offset 1216
	movl	%edx, 32(%esp)
	call	filterScanline
	addl	%ebp, 32(%esp)
	addl	44(%esp), %esi
	movl	16(%esp), %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	cmpl	1200(%esp), %edi
	jne	.L2058
	xorl	%eax, %eax
	jmp	.L2139
.L2022:
	testl	%edi, %edi
	je	.L2075
	movl	%ebp, %edx
	leal	0(%ebp,%edi), %ebp
	xorl	%eax, %eax
.L2026:
	movzbl	(%edx), %ecx
	addl	$1, %edx
	addl	%ecx, %eax
	cmpl	%ebp, %edx
	jne	.L2026
	movl	%eax, 16(%esp)
	jmp	.L2025
.L2075:
	movl	$0, 16(%esp)
	jmp	.L2025
.L2050:
	movl	$0, 52(%esp)
	movl	$1, %ebp
	jmp	.L2052
.L2136:
	movl	1200(%esp), %eax
	testl	%eax, %eax
	je	.L2061
	leal	1(%ebp), %eax
	movl	%esi, 16(%esp)
	addl	$1, %edi
	movl	$0, 48(%esp)
	movl	$0, 40(%esp)
	movl	%eax, 52(%esp)
	leal	144(%esp), %eax
	movl	$0, (%esp)
	movl	$0, 44(%esp)
	movl	%eax, 28(%esp)
.L2062:
	movl	16(%esp), %eax
	leal	104(%esp), %ebx
	xorl	%esi, %esi
	movl	%edi, 60(%esp)
	movl	%eax, 56(%esp)
.L2068:
	movl	36(%esp), %eax
	subl	$4, %esp
	.cfi_def_cfa_offset 1204
	movl	(%eax,%esi,4), %edi
	pushl	%esi
	.cfi_def_cfa_offset 1208
	pushl	40(%esp)
	.cfi_def_cfa_offset 1212
	pushl	%ebp
	.cfi_def_cfa_offset 1216
	movl	64(%esp), %ecx
	movl	32(%esp), %edx
	movl	%edi, %eax
	call	filterScanline
	movl	184(%esp), %eax
	movl	$0, 116(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	movl	$0, (%ebx)
	testl	%eax, %eax
	je	.L2063
	subl	$12, %esp
	.cfi_def_cfa_offset 1212
	pushl	40(%esp)
	.cfi_def_cfa_offset 1216
	pushl	%ebp
	.cfi_def_cfa_offset 1220
	pushl	%edi
	.cfi_def_cfa_offset 1224
	pushl	%ebx
	.cfi_def_cfa_offset 1228
	leal	128(%esp), %edi
	pushl	%edi
	.cfi_def_cfa_offset 1232
	call	*%eax
	addl	$32, %esp
	.cfi_def_cfa_offset 1200
.L2064:
	subl	$12, %esp
	.cfi_def_cfa_offset 1212
	pushl	112(%esp)
	.cfi_def_cfa_offset 1216
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	testl	%esi, %esi
	movl	(%ebx), %eax
	je	.L2127
	cmpl	44(%esp), %eax
	jnb	.L2067
.L2127:
	movl	%eax, 44(%esp)
	movl	%esi, (%esp)
.L2067:
	addl	$1, %esi
	addl	$4, %ebx
	cmpl	$5, %esi
	jne	.L2068
	movzbl	(%esp), %eax
	movl	60(%esp), %edi
	testl	%ebp, %ebp
	movb	%al, -1(%edi)
	je	.L2070
	subl	$4, %esp
	.cfi_def_cfa_offset 1204
	pushl	%ebp
	.cfi_def_cfa_offset 1208
	movl	8(%esp), %eax
	pushl	132(%esp,%eax,4)
	.cfi_def_cfa_offset 1212
	pushl	%edi
	.cfi_def_cfa_offset 1216
	call	memcpy
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
.L2070:
	addl	$1, 40(%esp)
	addl	%ebp, 16(%esp)
	movl	40(%esp), %eax
	addl	52(%esp), %edi
	cmpl	1200(%esp), %eax
	movl	56(%esp), %ecx
	movl	%ecx, 48(%esp)
	jne	.L2062
.L2061:
	xorl	%ebx, %ebx
.L2071:
	subl	$12, %esp
	.cfi_def_cfa_offset 1212
	movl	48(%esp), %eax
	pushl	(%eax,%ebx,4)
	.cfi_def_cfa_offset 1216
	addl	$1, %ebx
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 1200
	cmpl	$5, %ebx
	jne	.L2071
	xorl	%eax, %eax
	jmp	.L2139
	.p2align 4,,10
	.p2align 3
.L2063:
	subl	$12, %esp
	.cfi_def_cfa_offset 1212
	pushl	40(%esp)
	.cfi_def_cfa_offset 1216
	pushl	%ebp
	.cfi_def_cfa_offset 1220
	pushl	%edi
	.cfi_def_cfa_offset 1224
	pushl	%ebx
	.cfi_def_cfa_offset 1228
	leal	128(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 1232
	call	lodepng_zlib_compress
	addl	$32, %esp
	.cfi_def_cfa_offset 1200
	jmp	.L2064
	.cfi_endproc
.LFE241:
	.size	filter.isra.16, .-filter.isra.16
	.section	.text.unlikely
.LCOLDE49:
	.text
.LHOTE49:
	.section	.text.unlikely
.LCOLDB50:
	.text
.LHOTB50:
	.p2align 4,,15
	.type	preProcessScanlines, @function
preProcessScanlines:
.LFB213:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %esi
	subl	$380, %esp
	.cfi_def_cfa_offset 400
	movl	408(%esp), %edi
	movl	%eax, 60(%esp)
	movl	408(%esp), %eax
	movl	%ecx, 24(%esp)
	movl	404(%esp), %ebx
	movl	$0, 12(%esp)
	movl	12(%edi), %edx
	movl	16(%eax), %eax
	cmpl	$6, %edx
	ja	.L2145
	imull	CSWTCH.141(,%edx,4), %eax
	movl	%eax, 12(%esp)
.L2145:
	movl	408(%esp), %eax
	movl	8(%eax), %ecx
	testl	%ecx, %ecx
	jne	.L2146
	movl	12(%esp), %eax
	movl	%edx, 8(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	imull	412(%esp), %eax
	leal	7(%eax), %ecx
	movl	%eax, 12(%esp)
	shrl	$3, %ecx
	leal	1(%ecx), %edi
	movl	%ecx, 16(%esp)
	imull	%ebx, %edi
	movl	%edi, (%esi)
	pushl	%edi
	.cfi_def_cfa_offset 416
	call	malloc
	movl	76(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	testl	%eax, %eax
	movl	4(%esp), %ecx
	movl	8(%esp), %edx
	movl	%eax, (%esi)
	jne	.L2149
	testl	%edi, %edi
	movl	$83, %ebp
	je	.L2149
	addl	$380, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
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
.L2149:
	.cfi_restore_state
	cmpl	$7, 12(%esp)
	ja	.L2150
	leal	0(,%ecx,8), %ebp
	cmpl	%ebp, (%esp)
	je	.L2150
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	subl	%ebx, %edi
	pushl	%edi
	.cfi_def_cfa_offset 416
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L2230
	subl	$8, %esp
	.cfi_def_cfa_offset 408
	movl	%ebp, %ecx
	pushl	%ebx
	.cfi_def_cfa_offset 412
	pushl	12(%esp)
	.cfi_def_cfa_offset 416
	movl	40(%esp), %edx
	call	addPaddingBits
	pushl	428(%esp)
	.cfi_def_cfa_offset 420
	movl	428(%esp), %eax
	movl	%esi, %edx
	pushl	16(%eax)
	.cfi_def_cfa_offset 424
	movl	432(%esp), %eax
	pushl	12(%eax)
	.cfi_def_cfa_offset 428
	pushl	%ebx
	.cfi_def_cfa_offset 432
	movl	92(%esp), %eax
	movl	432(%esp), %ecx
	movl	(%eax), %eax
	call	filter.isra.16
	addl	$32, %esp
	.cfi_def_cfa_offset 400
	movl	%eax, %ebp
.L2176:
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	pushl	%esi
	.cfi_def_cfa_offset 416
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	movl	%ebp, %eax
	addl	$380, %esp
	.cfi_remember_state
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
.L2146:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	pushl	24(%esp)
	.cfi_def_cfa_offset 416
	pushl	%ebx
	.cfi_def_cfa_offset 420
	pushl	420(%esp)
	.cfi_def_cfa_offset 424
	leal	264(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 428
	leal	236(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 432
	leal	208(%esp), %ecx
	leal	124(%esp), %edx
	leal	96(%esp), %eax
	call	Adam7_getpassvalues
	movl	236(%esp), %eax
	addl	$20, %esp
	.cfi_def_cfa_offset 412
	movl	%eax, (%esi)
	pushl	%eax
	.cfi_def_cfa_offset 416
	call	malloc
	movl	76(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	testl	%eax, %eax
	movl	%eax, (%esi)
	je	.L2231
	movl	268(%esp), %esi
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	pushl	%esi
	.cfi_def_cfa_offset 416
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	testl	%eax, %eax
	movl	%eax, %edi
	jne	.L2180
	testl	%esi, %esi
	je	.L2180
.L2178:
	xorl	%edi, %edi
	movl	$83, %ebp
.L2173:
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	pushl	%edi
	.cfi_def_cfa_offset 416
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 400
.L2234:
	addl	$380, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
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
.L2150:
	.cfi_restore_state
	pushl	412(%esp)
	.cfi_def_cfa_offset 404
	movl	412(%esp), %esi
	pushl	16(%esi)
	.cfi_def_cfa_offset 408
	pushl	%edx
	.cfi_def_cfa_offset 412
	pushl	%ebx
	.cfi_def_cfa_offset 416
	movl	416(%esp), %ecx
	movl	40(%esp), %edx
	call	filter.isra.16
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	movl	%eax, %ebp
	addl	$380, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	%ebp, %eax
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
.L2180:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	movl	24(%esp), %esi
	pushl	%esi
	.cfi_def_cfa_offset 416
	pushl	%ebx
	.cfi_def_cfa_offset 420
	pushl	420(%esp)
	.cfi_def_cfa_offset 424
	leal	360(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 428
	leal	332(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 432
	leal	304(%esp), %ecx
	leal	180(%esp), %edx
	leal	152(%esp), %eax
	call	Adam7_getpassvalues
	addl	$32, %esp
	.cfi_def_cfa_offset 400
	cmpl	$7, %esi
	ja	.L2177
	movl	12(%esp), %esi
	movl	400(%esp), %eax
	movl	$0, 40(%esp)
	imull	%esi, %eax
	movl	%eax, 52(%esp)
	movl	%esi, %eax
	movl	24(%esp), %esi
	negl	%eax
	movl	%eax, 56(%esp)
.L2170:
	movl	40(%esp), %ebx
	movl	$0, 36(%esp)
	movl	$0, 32(%esp)
	movl	120(%esp,%ebx,4), %eax
	movl	%eax, 24(%esp)
	imull	12(%esp), %eax
	movl	%eax, 44(%esp)
	movl	148(%esp,%ebx,4), %eax
	testl	%eax, %eax
	movl	%eax, 48(%esp)
	je	.L2163
.L2220:
	movl	24(%esp), %eax
	testl	%eax, %eax
	je	.L2166
	movl	40(%esp), %eax
	movl	32(%esp), %ecx
	movl	36(%esp), %edx
	movl	12(%esp), %ebp
	movl	$0, 8(%esp)
	imull	ADAM7_DY(,%eax,4), %ecx
	movl	%eax, %ebx
	addl	ADAM7_IY(,%eax,4), %ecx
	movl	336(%esp,%eax,4), %eax
	imull	52(%esp), %ecx
	leal	(%edx,%eax,8), %edx
	movl	%ebp, %eax
	addl	%edx, %eax
	movl	%eax, (%esp)
	movl	ADAM7_DX(,%ebx,4), %eax
	movl	%eax, 4(%esp)
	subl	$1, %eax
	imull	%ebp, %eax
	imull	ADAM7_IX(,%ebx,4), %ebp
	movl	%ecx, %ebx
	movl	%eax, 20(%esp)
	subl	%edx, %ebx
	movl	20(%esp), %edx
	subl	56(%esp), %edx
	movl	%ebp, %eax
	addl	%ebp, %ebx
	addl	%ecx, %eax
	movl	%edx, 28(%esp)
	notl	%eax
	movl	%eax, 16(%esp)
	.p2align 4,,10
	.p2align 3
.L2165:
	movl	12(%esp), %ecx
	movl	(%esp), %eax
	movl	16(%esp), %edx
	subl	%ecx, %eax
	testl	%ecx, %ecx
	je	.L2169
	movl	%edi, 4(%esp)
	jmp	.L2201
	.p2align 4,,10
	.p2align 3
.L2167:
	leal	(%edx,%ebx), %ecx
	movl	$1, %edi
	shrl	$3, %ebp
	addl	$1, %eax
	subl	$1, %edx
	andl	$7, %ecx
	sall	%cl, %edi
	movl	%edi, %ecx
	movl	4(%esp), %edi
	orb	%cl, (%edi,%ebp)
	cmpl	(%esp), %eax
	je	.L2232
.L2201:
	leal	(%eax,%ebx), %ecx
	shrl	$3, %ecx
	movzbl	(%esi,%ecx), %ebp
	movl	%edx, %ecx
	andl	$7, %ecx
	btl	%ecx, %ebp
	movl	%eax, %ebp
	jc	.L2167
	leal	(%edx,%ebx), %ecx
	movl	$1, %edi
	shrl	$3, %ebp
	addl	$1, %eax
	subl	$1, %edx
	andl	$7, %ecx
	sall	%cl, %edi
	movl	%edi, %ecx
	movl	4(%esp), %edi
	notl	%ecx
	andb	%cl, (%edi,%ebp)
	cmpl	(%esp), %eax
	jne	.L2201
.L2232:
	movl	4(%esp), %edi
	movl	12(%esp), %ecx
.L2169:
	addl	$1, 8(%esp)
	addl	%ecx, (%esp)
	movl	8(%esp), %eax
	addl	20(%esp), %ebx
	movl	28(%esp), %ecx
	subl	%ecx, 16(%esp)
	cmpl	24(%esp), %eax
	jne	.L2165
.L2166:
	addl	$1, 32(%esp)
	movl	44(%esp), %edx
	movl	32(%esp), %eax
	addl	%edx, 36(%esp)
	cmpl	48(%esp), %eax
	jne	.L2220
.L2163:
	addl	$1, 40(%esp)
	movl	40(%esp), %eax
	cmpl	$7, %eax
	jne	.L2170
.L2171:
	movl	%edi, %ebp
	xorl	%ebx, %ebx
	movl	408(%esp), %edi
	jmp	.L2161
.L2233:
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	movl	224(%esp,%ebx,4), %eax
	subl	220(%esp,%ebx,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 416
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L2186
	movl	12(%esp), %eax
	imull	64(%esp,%ebx,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 408
	movl	248(%esp,%ebx,4), %edx
	pushl	100(%esp,%ebx,4)
	.cfi_def_cfa_offset 412
	addl	%ebp, %edx
	leal	7(%eax), %ecx
	pushl	%eax
	.cfi_def_cfa_offset 416
	movl	%esi, %eax
	andl	$-8, %ecx
	call	addPaddingBits
	movl	76(%esp), %edx
	movl	192(%esp,%ebx,4), %eax
	movl	80(%esp,%ebx,4), %ecx
	addl	(%edx), %eax
	pushl	428(%esp)
	.cfi_def_cfa_offset 420
	movl	%esi, %edx
	pushl	16(%edi)
	.cfi_def_cfa_offset 424
	pushl	12(%edi)
	.cfi_def_cfa_offset 428
	pushl	120(%esp,%ebx,4)
	.cfi_def_cfa_offset 432
	call	filter.isra.16
	movl	%eax, 32(%esp)
	addl	$20, %esp
	.cfi_def_cfa_offset 412
	pushl	%esi
	.cfi_def_cfa_offset 416
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	movl	(%esp), %eax
.L2174:
	testl	%eax, %eax
	jne	.L2227
	addl	$1, %ebx
	cmpl	$7, %ebx
	je	.L2227
.L2161:
	cmpl	$7, 12(%esp)
	jbe	.L2233
	movl	60(%esp), %esi
	movl	208(%esp,%ebx,4), %edx
	movl	176(%esp,%ebx,4), %eax
	movl	64(%esp,%ebx,4), %ecx
	addl	(%esi), %eax
	pushl	412(%esp)
	.cfi_def_cfa_offset 404
	addl	%ebp, %edx
	pushl	16(%edi)
	.cfi_def_cfa_offset 408
	pushl	12(%edi)
	.cfi_def_cfa_offset 412
	pushl	104(%esp,%ebx,4)
	.cfi_def_cfa_offset 416
	call	filter.isra.16
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	jmp	.L2174
.L2227:
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	movl	%ebp, %edi
	movl	%eax, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 416
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	jmp	.L2234
.L2231:
	movl	268(%esp), %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	pushl	%ebx
	.cfi_def_cfa_offset 416
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	testl	%eax, %eax
	movl	%eax, %edi
	jne	.L2187
	testl	%ebx, %ebx
	jne	.L2178
.L2187:
	subl	$12, %esp
	.cfi_def_cfa_offset 412
	movl	$83, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 416
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	jmp	.L2234
.L2230:
	movl	$83, %ebp
	jmp	.L2176
.L2177:
	movl	12(%esp), %eax
	movl	$0, 20(%esp)
	movl	%edi, 28(%esp)
	shrl	$3, %eax
	movl	%eax, %esi
	movl	20(%esp), %eax
.L2160:
	movl	148(%esp,%eax,4), %ebx
	testl	%ebx, %ebx
	movl	%ebx, 36(%esp)
	je	.L2154
	movl	120(%esp,%eax,4), %eax
	movl	$0, 16(%esp)
	movl	$0, 8(%esp)
	movl	%eax, (%esp)
	imull	%esi, %eax
	movl	%eax, 32(%esp)
.L2155:
	movl	(%esp), %edx
	testl	%edx, %edx
	je	.L2159
	movl	20(%esp), %eax
	movl	8(%esp), %edx
	xorl	%ebp, %ebp
	movl	16(%esp), %ebx
	imull	ADAM7_DY(,%eax,4), %edx
	movl	ADAM7_DX(,%eax,4), %edi
	addl	336(%esp,%eax,4), %ebx
	addl	28(%esp), %ebx
	addl	ADAM7_IY(,%eax,4), %edx
	imull	400(%esp), %edx
	imull	%esi, %edi
	addl	ADAM7_IX(,%eax,4), %edx
	movl	24(%esp), %eax
	movl	%edi, 4(%esp)
	imull	%esi, %edx
	testl	%esi, %esi
	leal	(%eax,%edx), %edi
	je	.L2223
	movl	%ebp, %eax
	movl	%ebx, %ebp
	movl	%eax, %ebx
	.p2align 4,,10
	.p2align 3
.L2212:
	subl	$4, %esp
	.cfi_def_cfa_offset 404
	addl	$1, %ebx
	pushl	%esi
	.cfi_def_cfa_offset 408
	pushl	%edi
	.cfi_def_cfa_offset 412
	pushl	%ebp
	.cfi_def_cfa_offset 416
	addl	%esi, %ebp
	call	memcpy
	addl	20(%esp), %edi
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	cmpl	(%esp), %ebx
	jne	.L2212
.L2159:
	addl	$1, 8(%esp)
	movl	32(%esp), %edi
	movl	8(%esp), %eax
	addl	%edi, 16(%esp)
	cmpl	36(%esp), %eax
	jne	.L2155
.L2154:
	addl	$1, 20(%esp)
	movl	20(%esp), %eax
	cmpl	$7, %eax
	jne	.L2160
	movl	28(%esp), %edi
	jmp	.L2171
	.p2align 4,,10
	.p2align 3
.L2223:
	movl	%esi, 40(%esp)
	movl	%edi, %esi
	movl	%ebx, %edi
	movl	4(%esp), %ebx
	.p2align 4,,10
	.p2align 3
.L2158:
	subl	$4, %esp
	.cfi_def_cfa_offset 404
	addl	$1, %ebp
	pushl	$1
	.cfi_def_cfa_offset 408
	pushl	%esi
	.cfi_def_cfa_offset 412
	addl	%ebx, %esi
	pushl	%edi
	.cfi_def_cfa_offset 416
	call	memcpy
	addl	$16, %esp
	.cfi_def_cfa_offset 400
	cmpl	(%esp), %ebp
	jne	.L2158
	movl	40(%esp), %esi
	jmp	.L2159
.L2186:
	movl	%ebp, %edi
	movl	$83, %ebp
	jmp	.L2173
	.cfi_endproc
.LFE213:
	.size	preProcessScanlines, .-preProcessScanlines
	.section	.text.unlikely
.LCOLDE50:
	.text
.LHOTE50:
	.section	.text.unlikely
.LCOLDB51:
	.text
.LHOTB51:
	.p2align 4,,15
	.globl	lodepng_compress_settings_init
	.type	lodepng_compress_settings_init, @function
lodepng_compress_settings_init:
.LFB94:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$2, (%eax)
	movl	$1, 4(%eax)
	movl	$2048, 8(%eax)
	movl	$3, 12(%eax)
	movl	$128, 16(%eax)
	movl	$1, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	ret
	.cfi_endproc
.LFE94:
	.size	lodepng_compress_settings_init, .-lodepng_compress_settings_init
	.section	.text.unlikely
.LCOLDE51:
	.text
.LHOTE51:
	.section	.text.unlikely
.LCOLDB52:
	.text
.LHOTB52:
	.p2align 4,,15
	.globl	lodepng_decompress_settings_init
	.type	lodepng_decompress_settings_init, @function
lodepng_decompress_settings_init:
.LFB95:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	ret
	.cfi_endproc
.LFE95:
	.size	lodepng_decompress_settings_init, .-lodepng_decompress_settings_init
	.section	.text.unlikely
.LCOLDE52:
	.text
.LHOTE52:
	.section	.text.unlikely
.LCOLDB53:
	.text
.LHOTB53:
	.p2align 4,,15
	.globl	lodepng_crc32
	.type	lodepng_crc32, @function
lodepng_crc32:
.LFB96:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	12(%esp), %ebx
	testl	%ebx, %ebx
	je	.L2240
	movl	8(%esp), %edx
	movl	$-1, %eax
	addl	%edx, %ebx
	.p2align 4,,10
	.p2align 3
.L2239:
	movl	%eax, %ecx
	xorb	(%edx), %cl
	addl	$1, %edx
	shrl	$8, %eax
	movzbl	%cl, %ecx
	xorl	lodepng_crc32_table(,%ecx,4), %eax
	cmpl	%ebx, %edx
	jne	.L2239
	notl	%eax
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
.L2240:
	.cfi_restore_state
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE96:
	.size	lodepng_crc32, .-lodepng_crc32
	.section	.text.unlikely
.LCOLDE53:
	.text
.LHOTE53:
	.section	.text.unlikely
.LCOLDB54:
	.text
.LHOTB54:
	.p2align 4,,15
	.globl	lodepng_chunk_length
	.type	lodepng_chunk_length, @function
lodepng_chunk_length:
.LFB101:
	.cfi_startproc
	movl	4(%esp), %edx
	movzbl	(%edx), %eax
	sall	$24, %eax
	movl	%eax, %ecx
	movzbl	1(%edx), %eax
	sall	$16, %eax
	orl	%ecx, %eax
	movzbl	3(%edx), %ecx
	movzbl	2(%edx), %edx
	orl	%ecx, %eax
	sall	$8, %edx
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE101:
	.size	lodepng_chunk_length, .-lodepng_chunk_length
	.section	.text.unlikely
.LCOLDE54:
	.text
.LHOTE54:
	.section	.text.unlikely
.LCOLDB55:
	.text
.LHOTB55:
	.p2align 4,,15
	.globl	lodepng_chunk_type
	.type	lodepng_chunk_type, @function
lodepng_chunk_type:
.LFB102:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	%edx, %ecx
	orl	%eax, %ecx
	andl	$3, %ecx
	jne	.L2245
	leal	8(%edx), %ecx
	cmpl	%ecx, %eax
	setnb	%bl
	cmpl	%edx, %eax
	setbe	%cl
	orb	%cl, %bl
	je	.L2245
	movl	4(%edx), %edx
	movb	$0, 4(%eax)
	movl	%edx, (%eax)
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2245:
	.cfi_restore_state
	movzbl	4(%edx), %ecx
	movb	%cl, (%eax)
	movzbl	5(%edx), %ecx
	movb	%cl, 1(%eax)
	movzbl	6(%edx), %ecx
	movb	%cl, 2(%eax)
	movzbl	7(%edx), %edx
	movb	$0, 4(%eax)
	movb	%dl, 3(%eax)
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE102:
	.size	lodepng_chunk_type, .-lodepng_chunk_type
	.section	.text.unlikely
.LCOLDE55:
	.text
.LHOTE55:
	.section	.text.unlikely
.LCOLDB56:
	.text
.LHOTB56:
	.p2align 4,,15
	.globl	lodepng_chunk_type_equals
	.type	lodepng_chunk_type_equals, @function
lodepng_chunk_type_equals:
.LFB103:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$20, %esp
	.cfi_def_cfa_offset 28
	movl	32(%esp), %ebx
	pushl	%ebx
	.cfi_def_cfa_offset 32
	call	strlen
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	xorl	%edx, %edx
	cmpl	$4, %eax
	je	.L2262
.L2255:
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	movl	%edx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2262:
	.cfi_restore_state
	movl	16(%esp), %eax
	movzbl	4(%eax), %ecx
	movsbl	(%ebx), %eax
	cmpl	%eax, %ecx
	jne	.L2255
	movl	16(%esp), %eax
	movzbl	5(%eax), %ecx
	movsbl	1(%ebx), %eax
	cmpl	%eax, %ecx
	jne	.L2255
	movl	16(%esp), %eax
	movzbl	6(%eax), %ecx
	movsbl	2(%ebx), %eax
	cmpl	%eax, %ecx
	jne	.L2255
	movl	16(%esp), %eax
	movzbl	7(%eax), %edx
	movsbl	3(%ebx), %eax
	cmpl	%eax, %edx
	sete	%dl
	jmp	.L2255
	.cfi_endproc
.LFE103:
	.size	lodepng_chunk_type_equals, .-lodepng_chunk_type_equals
	.section	.text.unlikely
.LCOLDE56:
	.text
.LHOTE56:
	.section	.text.unlikely
.LCOLDB57:
	.text
.LHOTB57:
	.p2align 4,,15
	.globl	lodepng_chunk_ancillary
	.type	lodepng_chunk_ancillary, @function
lodepng_chunk_ancillary:
.LFB104:
	.cfi_startproc
	movl	4(%esp), %eax
	movzbl	4(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE104:
	.size	lodepng_chunk_ancillary, .-lodepng_chunk_ancillary
	.section	.text.unlikely
.LCOLDE57:
	.text
.LHOTE57:
	.section	.text.unlikely
.LCOLDB58:
	.text
.LHOTB58:
	.p2align 4,,15
	.globl	lodepng_chunk_private
	.type	lodepng_chunk_private, @function
lodepng_chunk_private:
.LFB105:
	.cfi_startproc
	movl	4(%esp), %eax
	movzbl	6(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE105:
	.size	lodepng_chunk_private, .-lodepng_chunk_private
	.section	.text.unlikely
.LCOLDE58:
	.text
.LHOTE58:
	.section	.text.unlikely
.LCOLDB59:
	.text
.LHOTB59:
	.p2align 4,,15
	.globl	lodepng_chunk_safetocopy
	.type	lodepng_chunk_safetocopy, @function
lodepng_chunk_safetocopy:
.LFB106:
	.cfi_startproc
	movl	4(%esp), %eax
	movzbl	7(%eax), %eax
	shrb	$5, %al
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE106:
	.size	lodepng_chunk_safetocopy, .-lodepng_chunk_safetocopy
	.section	.text.unlikely
.LCOLDE59:
	.text
.LHOTE59:
	.section	.text.unlikely
.LCOLDB60:
	.text
.LHOTB60:
	.p2align 4,,15
	.globl	lodepng_chunk_data
	.type	lodepng_chunk_data, @function
lodepng_chunk_data:
.LFB107:
	.cfi_startproc
	movl	4(%esp), %eax
	addl	$8, %eax
	ret
	.cfi_endproc
.LFE107:
	.size	lodepng_chunk_data, .-lodepng_chunk_data
	.section	.text.unlikely
.LCOLDE60:
	.text
.LHOTE60:
	.section	.text.unlikely
.LCOLDB61:
	.text
.LHOTB61:
	.p2align 4,,15
	.globl	lodepng_chunk_data_const
	.type	lodepng_chunk_data_const, @function
lodepng_chunk_data_const:
.LFB108:
	.cfi_startproc
	movl	4(%esp), %eax
	addl	$8, %eax
	ret
	.cfi_endproc
.LFE108:
	.size	lodepng_chunk_data_const, .-lodepng_chunk_data_const
	.section	.text.unlikely
.LCOLDE61:
	.text
.LHOTE61:
	.section	.text.unlikely
.LCOLDB62:
	.text
.LHOTB62:
	.p2align 4,,15
	.globl	lodepng_chunk_check_crc
	.type	lodepng_chunk_check_crc, @function
lodepng_chunk_check_crc:
.LFB109:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %esi
	movzbl	(%esi), %ebx
	movzbl	1(%esi), %eax
	sall	$24, %ebx
	sall	$16, %eax
	orl	%eax, %ebx
	movzbl	3(%esi), %eax
	orl	%eax, %ebx
	movzbl	2(%esi), %eax
	sall	$8, %eax
	orl	%eax, %ebx
	leal	8(%esi,%ebx), %edx
	movzbl	(%edx), %edi
	movzbl	1(%edx), %eax
	sall	$24, %edi
	sall	$16, %eax
	orl	%eax, %edi
	movzbl	3(%edx), %eax
	orl	%eax, %edi
	movzbl	2(%edx), %eax
	sall	$8, %eax
	orl	%eax, %edi
	addl	$4, %ebx
	je	.L2269
	movl	$-1, %eax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L2270:
	movl	%eax, %ecx
	xorb	4(%esi,%edx), %cl
	addl	$1, %edx
	shrl	$8, %eax
	movzbl	%cl, %ecx
	xorl	lodepng_crc32_table(,%ecx,4), %eax
	cmpl	%edx, %ebx
	jne	.L2270
	notl	%eax
	movl	%eax, %ebx
.L2269:
	xorl	%eax, %eax
	cmpl	%ebx, %edi
	setne	%al
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE109:
	.size	lodepng_chunk_check_crc, .-lodepng_chunk_check_crc
	.section	.text.unlikely
.LCOLDE62:
	.text
.LHOTE62:
	.section	.text.unlikely
.LCOLDB63:
	.text
.LHOTB63:
	.p2align 4,,15
	.globl	lodepng_chunk_generate_crc
	.type	lodepng_chunk_generate_crc, @function
lodepng_chunk_generate_crc:
.LFB110:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %ecx
	movzbl	(%ecx), %ebx
	movzbl	1(%ecx), %eax
	sall	$24, %ebx
	sall	$16, %eax
	orl	%eax, %ebx
	movzbl	3(%ecx), %eax
	orl	%eax, %ebx
	movzbl	2(%ecx), %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movl	%ebx, %edi
	movl	%ebx, %ebp
	addl	$4, %edi
	je	.L2279
	movl	$-1, %eax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L2278:
	movl	%eax, %ebx
	xorb	4(%ecx,%edx), %bl
	addl	$1, %edx
	shrl	$8, %eax
	movzbl	%bl, %esi
	xorl	lodepng_crc32_table(,%esi,4), %eax
	cmpl	%edx, %edi
	jne	.L2278
	notl	%eax
	movl	%eax, %edi
	movl	%eax, %esi
	movl	%eax, %edx
	shrl	$24, %edi
	shrl	$16, %esi
	shrl	$8, %edx
.L2277:
	leal	8(%ecx,%ebp), %ecx
	movl	%edi, %ebx
	movb	%bl, (%ecx)
	movl	%esi, %ebx
	movb	%dl, 2(%ecx)
	movb	%bl, 1(%ecx)
	movb	%al, 3(%ecx)
	popl	%ebx
	.cfi_remember_state
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
.L2279:
	.cfi_restore_state
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	jmp	.L2277
	.cfi_endproc
.LFE110:
	.size	lodepng_chunk_generate_crc, .-lodepng_chunk_generate_crc
	.section	.text.unlikely
.LCOLDE63:
	.text
.LHOTE63:
	.section	.text.unlikely
.LCOLDB64:
	.text
.LHOTB64:
	.p2align 4,,15
	.globl	lodepng_chunk_next
	.type	lodepng_chunk_next, @function
lodepng_chunk_next:
.LFB111:
	.cfi_startproc
	movl	4(%esp), %ecx
	movzbl	(%ecx), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movzbl	1(%ecx), %eax
	sall	$16, %eax
	orl	%edx, %eax
	movzbl	3(%ecx), %edx
	orl	%edx, %eax
	movzbl	2(%ecx), %edx
	sall	$8, %edx
	orl	%edx, %eax
	leal	12(%ecx,%eax), %eax
	ret
	.cfi_endproc
.LFE111:
	.size	lodepng_chunk_next, .-lodepng_chunk_next
	.section	.text.unlikely
.LCOLDE64:
	.text
.LHOTE64:
	.section	.text.unlikely
.LCOLDB65:
	.text
.LHOTB65:
	.p2align 4,,15
	.globl	lodepng_chunk_next_const
	.type	lodepng_chunk_next_const, @function
lodepng_chunk_next_const:
.LFB112:
	.cfi_startproc
	movl	4(%esp), %ecx
	movzbl	(%ecx), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movzbl	1(%ecx), %eax
	sall	$16, %eax
	orl	%edx, %eax
	movzbl	3(%ecx), %edx
	orl	%edx, %eax
	movzbl	2(%ecx), %edx
	sall	$8, %edx
	orl	%edx, %eax
	leal	12(%ecx,%eax), %eax
	ret
	.cfi_endproc
.LFE112:
	.size	lodepng_chunk_next_const, .-lodepng_chunk_next_const
	.section	.text.unlikely
.LCOLDE65:
	.text
.LHOTE65:
	.section	.text.unlikely
.LCOLDB66:
	.text
.LHOTB66:
	.p2align 4,,15
	.globl	lodepng_chunk_append
	.type	lodepng_chunk_append, @function
lodepng_chunk_append:
.LFB113:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	56(%esp), %esi
	movzbl	(%esi), %ebx
	movzbl	1(%esi), %eax
	sall	$24, %ebx
	sall	$16, %eax
	orl	%eax, %ebx
	movzbl	3(%esi), %eax
	orl	%eax, %ebx
	movzbl	2(%esi), %eax
	sall	$8, %eax
	orl	%eax, %ebx
	movl	52(%esp), %eax
	leal	12(%ebx), %edi
	movl	(%eax), %ebp
	movl	%edi, %edx
	addl	%ebp, %edx
	jc	.L2294
	cmpl	%edx, %ebp
	jbe	.L2310
.L2294:
	movl	$77, %eax
.L2285:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L2310:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%edx
	.cfi_def_cfa_offset 60
	movl	60(%esp), %eax
	movl	%edx, 24(%esp)
	pushl	(%eax)
	.cfi_def_cfa_offset 64
	call	realloc
	movl	%eax, %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$83, %eax
	testl	%ecx, %ecx
	je	.L2285
	movl	48(%esp), %eax
	movl	12(%esp), %edx
	testl	%edi, %edi
	movl	%ecx, (%eax)
	movl	52(%esp), %eax
	movl	%edx, (%eax)
	je	.L2292
	leal	(%ecx,%ebp), %edx
	leal	4(%esi), %eax
	leal	4(%ecx,%ebp), %ecx
	cmpl	%eax, %edx
	setnb	%al
	cmpl	%ecx, %esi
	setnb	%cl
	orl	%ecx, %eax
	cmpl	$9, %edi
	seta	%cl
	testb	%cl, %al
	je	.L2296
	movl	%esi, %eax
	orl	%edx, %eax
	testb	$3, %al
	jne	.L2296
	addl	$8, %ebx
	shrl	$2, %ebx
	leal	1(%ebx), %eax
	xorl	%ebx, %ebx
	leal	0(,%eax,4), %ecx
.L2288:
	movl	(%esi,%ebx,4), %ebp
	movl	%ebp, (%edx,%ebx,4)
	addl	$1, %ebx
	cmpl	%ebx, %eax
	ja	.L2288
	cmpl	%ecx, %edi
	je	.L2292
	movzbl	(%esi,%eax,4), %eax
	leal	1(%ecx), %ebx
	cmpl	%ebx, %edi
	movb	%al, (%edx,%ecx)
	je	.L2292
	movzbl	1(%esi,%ecx), %eax
	movb	%al, 1(%edx,%ecx)
	leal	2(%ecx), %eax
	cmpl	%eax, %edi
	je	.L2292
	movzbl	2(%esi,%ecx), %ecx
	movb	%cl, (%edx,%eax)
.L2292:
	xorl	%eax, %eax
	jmp	.L2285
.L2296:
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L2287:
	movzbl	(%esi,%ecx), %eax
	movb	%al, (%edx,%ecx)
	addl	$1, %ecx
	cmpl	%ecx, %edi
	jne	.L2287
	xorl	%eax, %eax
	jmp	.L2285
	.cfi_endproc
.LFE113:
	.size	lodepng_chunk_append, .-lodepng_chunk_append
	.section	.text.unlikely
.LCOLDE66:
	.text
.LHOTE66:
	.section	.text.unlikely
.LCOLDB67:
	.text
.LHOTB67:
	.p2align 4,,15
	.globl	lodepng_chunk_create
	.type	lodepng_chunk_create, @function
lodepng_chunk_create:
.LFB114:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	52(%esp), %eax
	movl	56(%esp), %esi
	movl	(%eax), %ebx
	leal	12(%esi), %eax
	addl	%ebx, %eax
	jc	.L2321
	cmpl	%eax, %ebx
	movl	%eax, %ebp
	jbe	.L2336
.L2321:
	movl	$77, %eax
.L2312:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L2336:
	.cfi_restore_state
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	movl	60(%esp), %eax
	pushl	(%eax)
	.cfi_def_cfa_offset 64
	call	realloc
	movl	%eax, %edi
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$83, %eax
	testl	%edi, %edi
	je	.L2312
	movl	48(%esp), %eax
	movl	%edi, (%eax)
	movl	52(%esp), %eax
	movl	%ebp, (%eax)
	movl	%ebp, %eax
	subl	%esi, %eax
	leal	-12(%edi,%eax), %edx
	movl	%esi, %eax
	shrl	$24, %eax
	movb	%al, (%edx)
	movl	%esi, %eax
	shrl	$16, %eax
	movb	%al, 1(%edx)
	movl	%esi, %eax
	shrl	$8, %eax
	testl	%esi, %esi
	movb	%al, 2(%edx)
	movl	%esi, %eax
	movb	%al, 3(%edx)
	movl	60(%esp), %eax
	movzbl	(%eax), %ecx
	movb	%cl, 4(%edx)
	movzbl	1(%eax), %ecx
	movb	%cl, 5(%edx)
	movzbl	2(%eax), %ecx
	movb	%cl, 6(%edx)
	movzbl	3(%eax), %eax
	movb	%al, 7(%edx)
	je	.L2319
	movl	64(%esp), %eax
	leal	8(%edi,%ebx), %ecx
	addl	$4, %eax
	cmpl	%eax, %ecx
	setnb	%al
	movl	%eax, %ebp
	leal	12(%edi,%ebx), %eax
	cmpl	%eax, 64(%esp)
	setnb	%al
	orl	%ebp, %eax
	cmpl	$9, %esi
	movb	%al, 15(%esp)
	seta	%al
	testb	%al, 15(%esp)
	je	.L2323
	movl	64(%esp), %eax
	orl	%ecx, %eax
	testb	$3, %al
	jne	.L2323
	leal	-4(%esi), %eax
	xorl	%ebx, %ebx
	shrl	$2, %eax
	addl	$1, %eax
	leal	0(,%eax,4), %edi
.L2315:
	movl	64(%esp), %ebp
	movl	0(%ebp,%ebx,4), %ebp
	movl	%ebp, (%ecx,%ebx,4)
	addl	$1, %ebx
	cmpl	%ebx, %eax
	ja	.L2315
	cmpl	%edi, %esi
	je	.L2319
	movl	64(%esp), %ecx
	movzbl	(%ecx,%eax,4), %eax
	movb	%al, 8(%edx,%edi)
	leal	1(%edi), %eax
	cmpl	%eax, %esi
	je	.L2319
	movzbl	1(%ecx,%edi), %eax
	movb	%al, 9(%edx,%edi)
	leal	2(%edi), %eax
	cmpl	%eax, %esi
	je	.L2319
	movl	64(%esp), %eax
	movzbl	2(%eax,%edi), %eax
	movb	%al, 10(%edx,%edi)
.L2319:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	call	lodepng_chunk_generate_crc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	xorl	%eax, %eax
	jmp	.L2312
.L2323:
	movl	64(%esp), %edi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2314:
	movzbl	(%edi,%eax), %ecx
	movb	%cl, 8(%edx,%eax)
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	.L2314
	jmp	.L2319
	.cfi_endproc
.LFE114:
	.size	lodepng_chunk_create, .-lodepng_chunk_create
	.section	.text.unlikely
.LCOLDE67:
	.text
.LHOTE67:
	.section	.rodata.str1.1
.LC68:
	.string	"PLTE"
	.section	.text.unlikely
.LCOLDB69:
.LHOTB69:
	.type	addChunk_PLTE.isra.14, @function
addChunk_PLTE.isra.14:
.LFB239:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%ecx, %ebp
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %edi
	xorl	%ebx, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movl	%eax, 12(%esp)
	movl	$0, 20(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
.L2338:
	movl	0(%ebp), %eax
	leal	0(,%eax,4), %esi
	cmpl	%esi, %ebx
	je	.L2346
	movl	%ebx, %eax
	andl	$3, %eax
	cmpl	$3, %eax
	je	.L2339
	movl	(%edi), %eax
	movzbl	(%eax,%ebx), %edx
	leal	20(%esp), %eax
	call	ucvector_push_back
.L2339:
	incl	%ebx
	jmp	.L2338
.L2346:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	32(%esp)
	.cfi_def_cfa_offset 80
	pushl	$.LC68
	.cfi_def_cfa_offset 84
	pushl	44(%esp)
	.cfi_def_cfa_offset 88
	movl	36(%esp), %eax
	addl	$4, %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	40(%esp)
	.cfi_def_cfa_offset 96
	call	lodepng_chunk_create
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L2341
	movl	12(%esp), %eax
	movl	12(%esp), %ecx
	movl	4(%eax), %eax
	movl	%eax, 8(%ecx)
.L2341:
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	32(%esp)
	.cfi_def_cfa_offset 80
	call	free
	addl	$60, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
.LFE239:
	.size	addChunk_PLTE.isra.14, .-addChunk_PLTE.isra.14
.LCOLDE69:
.LHOTE69:
	.section	.rodata.str1.1
.LC70:
	.string	"tRNS"
	.section	.text.unlikely
.LCOLDB71:
.LHOTB71:
	.type	addChunk_tRNS, @function
addChunk_tRNS:
.LFB199:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	movl	%eax, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebp
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	(%edx), %eax
	movl	$0, 4(%esp)
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	cmpl	$3, %eax
	jne	.L2348
	movl	12(%edx), %ebx
	leal	-1(,%ebx,4), %ecx
.L2349:
	testl	%ebx, %ebx
	je	.L2353
	movl	8(%ebp), %eax
	movb	(%eax,%ecx), %al
	subl	$4, %ecx
	incb	%al
	je	.L2350
.L2353:
	xorl	%esi, %esi
	jmp	.L2351
.L2350:
	decl	%ebx
	jmp	.L2349
.L2351:
	cmpl	%ebx, %esi
	je	.L2355
	movl	8(%ebp), %eax
	movzbl	3(%eax,%esi,4), %edx
	leal	4(%esp), %eax
	incl	%esi
	call	ucvector_push_back
	jmp	.L2351
.L2348:
	testl	%eax, %eax
	jne	.L2356
	cmpl	$0, 16(%edx)
	je	.L2355
	movl	20(%edx), %edx
	leal	4(%esp), %eax
	movzbl	%dh, %edx
	call	ucvector_push_back
	movzbl	20(%ebp), %edx
	leal	4(%esp), %eax
	call	ucvector_push_back
	jmp	.L2355
.L2356:
	cmpl	$2, %eax
	jne	.L2355
	cmpl	$0, 16(%edx)
	je	.L2355
	movl	20(%edx), %eax
	movzbl	%ah, %edx
	leal	4(%esp), %eax
	call	ucvector_push_back
	movzbl	20(%ebp), %edx
	leal	4(%esp), %eax
	call	ucvector_push_back
	movl	24(%ebp), %eax
	movzbl	%ah, %edx
	leal	4(%esp), %eax
	call	ucvector_push_back
	movzbl	24(%ebp), %edx
	leal	4(%esp), %eax
	call	ucvector_push_back
	movl	28(%ebp), %eax
	movzbl	%ah, %edx
	leal	4(%esp), %eax
	call	ucvector_push_back
	movzbl	28(%ebp), %edx
	leal	4(%esp), %eax
	call	ucvector_push_back
.L2355:
	leal	4(%edi), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	16(%esp)
	.cfi_def_cfa_offset 64
	pushl	$.LC70
	.cfi_def_cfa_offset 68
	pushl	28(%esp)
	.cfi_def_cfa_offset 72
	pushl	%eax
	.cfi_def_cfa_offset 76
	pushl	%edi
	.cfi_def_cfa_offset 80
	call	lodepng_chunk_create
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L2358
	movl	4(%edi), %eax
	movl	%eax, 8(%edi)
.L2358:
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	16(%esp)
	.cfi_def_cfa_offset 64
	call	free
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
.LFE199:
	.size	addChunk_tRNS, .-addChunk_tRNS
.LCOLDE71:
.LHOTE71:
	.section	.rodata.str1.1
.LC72:
	.string	"tEXt"
	.section	.text.unlikely
.LCOLDB73:
	.text
.LHOTB73:
	.p2align 4,,15
	.type	addChunk_tEXt, @function
addChunk_tEXt:
.LFB202:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	%edx, %ebx
	subl	$44, %esp
	.cfi_def_cfa_offset 64
	movzbl	(%edx), %edx
	movl	$0, 20(%esp)
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	testb	%dl, %dl
	je	.L2361
	movl	%ecx, 12(%esp)
	movl	%eax, 8(%esp)
	xorl	%edi, %edi
	movl	%ebx, 4(%esp)
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	jmp	.L2362
	.p2align 4,,10
	.p2align 3
.L2391:
	movl	28(%esp), %ecx
	movl	24(%esp), %edi
	movl	%ebx, %esi
	movl	20(%esp), %eax
.L2362:
	leal	1(%edi), %ebx
	cmpl	%ecx, %ebx
	jbe	.L2364
	addl	%ecx, %ecx
	movl	%ebx, %ebp
	cmpl	%ecx, %ebx
	ja	.L2365
	leal	(%ebx,%ebx,2), %ebp
	shrl	%ebp
.L2365:
	movb	%dl, 3(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movzbl	3(%esp), %edx
	je	.L2375
	movl	%ebp, 28(%esp)
	movl	%eax, 20(%esp)
.L2364:
	movl	%ebx, 24(%esp)
	movb	%dl, (%eax,%edi)
.L2375:
	movl	4(%esp), %eax
	leal	1(%esi), %ebx
	movzbl	1(%eax,%esi), %edx
	testb	%dl, %dl
	jne	.L2391
	cmpl	$78, %esi
	jbe	.L2392
.L2361:
	addl	$44, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$89, %eax
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
	.p2align 4,,10
	.p2align 3
.L2392:
	.cfi_restore_state
	leal	20(%esp), %eax
	xorl	%edx, %edx
	call	ucvector_push_back
	movl	12(%esp), %eax
	movzbl	(%eax), %edx
	leal	1(%eax), %esi
	testb	%dl, %dl
	jne	.L2383
	jmp	.L2374
	.p2align 4,,10
	.p2align 3
.L2393:
	addl	%eax, %eax
	movl	%ebx, %ebp
	cmpl	%eax, %ebx
	ja	.L2371
	leal	(%ebx,%ebx,2), %ebp
	shrl	%ebp
.L2371:
	movb	%dl, 3(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 72
	pushl	%ebp
	.cfi_def_cfa_offset 76
	pushl	32(%esp)
	.cfi_def_cfa_offset 80
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movzbl	3(%esp), %edx
	je	.L2376
	movl	%ebp, 28(%esp)
	movl	%eax, 20(%esp)
.L2372:
	movl	%ebx, 24(%esp)
	movb	%dl, (%eax,%edi)
.L2376:
	addl	$1, %esi
	movzbl	-1(%esi), %edx
	testb	%dl, %dl
	je	.L2374
.L2383:
	movl	24(%esp), %edi
	movl	28(%esp), %eax
	leal	1(%edi), %ebx
	cmpl	%ebx, %eax
	jb	.L2393
	movl	20(%esp), %eax
	jmp	.L2372
	.p2align 4,,10
	.p2align 3
.L2374:
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	32(%esp)
	.cfi_def_cfa_offset 80
	pushl	$.LC72
	.cfi_def_cfa_offset 84
	pushl	44(%esp)
	.cfi_def_cfa_offset 88
	movl	32(%esp), %edi
	movl	%edi, %eax
	addl	$4, %eax
	pushl	%eax
	.cfi_def_cfa_offset 92
	pushl	%edi
	.cfi_def_cfa_offset 96
	call	lodepng_chunk_create
	addl	$32, %esp
	.cfi_def_cfa_offset 64
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L2368
	movl	8(%esp), %edi
	movl	4(%edi), %eax
	movl	%eax, 8(%edi)
.L2368:
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 76
	pushl	32(%esp)
	.cfi_def_cfa_offset 80
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 64
	movl	%ebx, %eax
	addl	$44, %esp
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
.LFE202:
	.size	addChunk_tEXt, .-addChunk_tEXt
	.section	.text.unlikely
.LCOLDE73:
	.text
.LHOTE73:
	.section	.text.unlikely
.LCOLDB74:
	.text
.LHOTB74:
	.p2align 4,,15
	.globl	lodepng_color_mode_init
	.type	lodepng_color_mode_init, @function
lodepng_color_mode_init:
.LFB118:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$0, 16(%eax)
	movl	$0, 28(%eax)
	movl	$0, 24(%eax)
	movl	$0, 20(%eax)
	movl	$6, (%eax)
	movl	$8, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	ret
	.cfi_endproc
.LFE118:
	.size	lodepng_color_mode_init, .-lodepng_color_mode_init
	.section	.text.unlikely
.LCOLDE74:
	.text
.LHOTE74:
	.section	.text.unlikely
.LCOLDB75:
	.text
.LHOTB75:
	.p2align 4,,15
	.globl	lodepng_color_mode_cleanup
	.type	lodepng_color_mode_cleanup, @function
lodepng_color_mode_cleanup:
.LFB119:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	.L2396
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 16
.L2396:
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE119:
	.size	lodepng_color_mode_cleanup, .-lodepng_color_mode_cleanup
	.section	.text.unlikely
.LCOLDE75:
	.text
.LHOTE75:
	.section	.text.unlikely
.LCOLDB76:
	.text
.LHOTB76:
	.p2align 4,,15
	.globl	lodepng_color_mode_copy
	.type	lodepng_color_mode_copy, @function
lodepng_color_mode_copy:
.LFB120:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$4, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %esi
	movl	20(%esp), %ebx
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	.L2402
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 16
.L2402:
	movl	$0, 8(%esi)
	movl	$0, 12(%esi)
	movl	(%ebx), %eax
	movl	%eax, (%esi)
	movl	4(%ebx), %eax
	movl	%eax, 4(%esi)
	movl	8(%ebx), %eax
	movl	%eax, 8(%esi)
	movl	12(%ebx), %eax
	movl	%eax, 12(%esi)
	movl	16(%ebx), %eax
	movl	%eax, 16(%esi)
	movl	20(%ebx), %eax
	movl	%eax, 20(%esi)
	movl	24(%ebx), %eax
	movl	%eax, 24(%esi)
	movl	28(%ebx), %eax
	movl	%eax, 28(%esi)
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	.L2407
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	$1024
	.cfi_def_cfa_offset 32
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	movl	%eax, 8(%esi)
	je	.L2417
	movl	12(%ebx), %ecx
	leal	0(,%ecx,4), %edx
	testl	%edx, %edx
	je	.L2407
	xorl	%edx, %edx
	jmp	.L2408
	.p2align 4,,10
	.p2align 3
.L2418:
	movl	8(%esi), %eax
.L2408:
	movl	8(%ebx), %ecx
	movzbl	(%ecx,%edx), %ecx
	movb	%cl, (%eax,%edx)
	movl	12(%ebx), %eax
	addl	$1, %edx
	sall	$2, %eax
	cmpl	%edx, %eax
	jne	.L2418
.L2407:
	xorl	%eax, %eax
.L2404:
	addl	$4, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2417:
	.cfi_restore_state
	movl	12(%ebx), %eax
	testl	%eax, %eax
	je	.L2404
	movl	$83, %eax
	jmp	.L2404
	.cfi_endproc
.LFE120:
	.size	lodepng_color_mode_copy, .-lodepng_color_mode_copy
	.section	.text.unlikely
.LCOLDE76:
	.text
.LHOTE76:
	.section	.text.unlikely
.LCOLDB77:
	.text
.LHOTB77:
	.p2align 4,,15
	.globl	lodepng_palette_clear
	.type	lodepng_palette_clear, @function
lodepng_palette_clear:
.LFB122:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	.L2420
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 16
.L2420:
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE122:
	.size	lodepng_palette_clear, .-lodepng_palette_clear
	.section	.text.unlikely
.LCOLDE77:
	.text
.LHOTE77:
	.section	.text.unlikely
.LCOLDB78:
	.text
.LHOTB78:
	.p2align 4,,15
	.globl	lodepng_palette_add
	.type	lodepng_palette_add, @function
lodepng_palette_add:
.LFB123:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	64(%esp), %eax
	movl	48(%esp), %ebx
	movl	52(%esp), %edi
	movl	56(%esp), %esi
	movl	60(%esp), %ecx
	movl	%eax, 8(%esp)
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	.L2431
.L2426:
	movl	12(%ebx), %ebp
	movl	%edi, %edx
	movb	%dl, (%eax,%ebp,4)
	movl	12(%ebx), %edi
	movl	%esi, %edx
	movl	8(%ebx), %eax
	movb	%dl, 1(%eax,%edi,4)
	movl	12(%ebx), %esi
	movl	8(%ebx), %eax
	movzbl	8(%esp), %edx
	movb	%cl, 2(%eax,%esi,4)
	movl	12(%ebx), %ecx
	movl	8(%ebx), %eax
	movb	%dl, 3(%eax,%ecx,4)
	addl	$1, 12(%ebx)
	xorl	%eax, %eax
.L2427:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L2431:
	.cfi_restore_state
	movl	%ecx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	$1024
	.cfi_def_cfa_offset 60
	pushl	$0
	.cfi_def_cfa_offset 64
	call	realloc
	movl	%eax, %ebp
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$83, %eax
	testl	%ebp, %ebp
	je	.L2427
	movl	%ebp, 8(%ebx)
	movl	%ebp, %eax
	movl	12(%esp), %ecx
	jmp	.L2426
	.cfi_endproc
.LFE123:
	.size	lodepng_palette_add, .-lodepng_palette_add
	.section	.text.unlikely
.LCOLDE78:
	.text
.LHOTE78:
	.section	.text.unlikely
.LCOLDB79:
	.text
.LHOTB79:
	.p2align 4,,15
	.globl	lodepng_get_bpp
	.type	lodepng_get_bpp, @function
lodepng_get_bpp:
.LFB124:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	xorl	%eax, %eax
	cmpl	$6, %edx
	ja	.L2433
	movl	CSWTCH.141(,%edx,4), %eax
	imull	%ecx, %eax
.L2433:
	rep ret
	.cfi_endproc
.LFE124:
	.size	lodepng_get_bpp, .-lodepng_get_bpp
	.section	.text.unlikely
.LCOLDE79:
	.text
.LHOTE79:
	.section	.text.unlikely
.LCOLDB80:
	.text
.LHOTB80:
	.p2align 4,,15
	.globl	lodepng_get_channels
	.type	lodepng_get_channels, @function
lodepng_get_channels:
.LFB125:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %edx
	xorl	%eax, %eax
	cmpl	$6, %edx
	ja	.L2436
	movl	CSWTCH.141(,%edx,4), %eax
.L2436:
	rep ret
	.cfi_endproc
.LFE125:
	.size	lodepng_get_channels, .-lodepng_get_channels
	.section	.text.unlikely
.LCOLDE80:
	.text
.LHOTE80:
	.section	.text.unlikely
.LCOLDB81:
	.text
.LHOTB81:
	.p2align 4,,15
	.globl	lodepng_is_greyscale_type
	.type	lodepng_is_greyscale_type, @function
lodepng_is_greyscale_type:
.LFB126:
	.cfi_startproc
	movl	4(%esp), %eax
	testl	$-5, (%eax)
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE126:
	.size	lodepng_is_greyscale_type, .-lodepng_is_greyscale_type
	.section	.text.unlikely
.LCOLDE81:
	.text
.LHOTE81:
	.section	.text.unlikely
.LCOLDB82:
	.text
.LHOTB82:
	.p2align 4,,15
	.globl	lodepng_is_alpha_type
	.type	lodepng_is_alpha_type, @function
lodepng_is_alpha_type:
.LFB127:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	(%eax), %eax
	shrl	$2, %eax
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE127:
	.size	lodepng_is_alpha_type, .-lodepng_is_alpha_type
	.section	.text.unlikely
.LCOLDE82:
	.text
.LHOTE82:
	.section	.text.unlikely
.LCOLDB83:
	.text
.LHOTB83:
	.p2align 4,,15
	.globl	lodepng_is_palette_type
	.type	lodepng_is_palette_type, @function
lodepng_is_palette_type:
.LFB128:
	.cfi_startproc
	movl	4(%esp), %eax
	cmpl	$3, (%eax)
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE128:
	.size	lodepng_is_palette_type, .-lodepng_is_palette_type
	.section	.text.unlikely
.LCOLDE83:
	.text
.LHOTE83:
	.section	.text.unlikely
.LCOLDB84:
	.text
.LHOTB84:
	.p2align 4,,15
	.globl	lodepng_has_palette_alpha
	.type	lodepng_has_palette_alpha, @function
lodepng_has_palette_alpha:
.LFB129:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	12(%edx), %eax
	testl	%eax, %eax
	je	.L2442
	movl	8(%edx), %ecx
	cmpb	$-1, 3(%ecx)
	jne	.L2446
	xorl	%edx, %edx
	jmp	.L2443
	.p2align 4,,10
	.p2align 3
.L2444:
	cmpb	$-1, 3(%ecx,%edx,4)
	jne	.L2446
.L2443:
	addl	$1, %edx
	cmpl	%eax, %edx
	jne	.L2444
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L2446:
	movl	$1, %eax
.L2442:
	rep ret
	.cfi_endproc
.LFE129:
	.size	lodepng_has_palette_alpha, .-lodepng_has_palette_alpha
	.section	.text.unlikely
.LCOLDE84:
	.text
.LHOTE84:
	.section	.text.unlikely
.LCOLDB85:
	.text
.LHOTB85:
	.p2align 4,,15
	.globl	lodepng_can_have_alpha
	.type	lodepng_can_have_alpha, @function
lodepng_can_have_alpha:
.LFB130:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %edx
	movl	$1, %eax
	movl	16(%edx), %ecx
	testl	%ecx, %ecx
	jne	.L2451
	movl	(%edx), %eax
	andl	$4, %eax
	jne	.L2458
	movl	12(%edx), %ecx
	testl	%ecx, %ecx
	je	.L2451
	movl	8(%edx), %ebx
	cmpb	$-1, 3(%ebx)
	jne	.L2458
	xorl	%edx, %edx
	jmp	.L2452
	.p2align 4,,10
	.p2align 3
.L2453:
	cmpb	$-1, 3(%ebx,%edx,4)
	jne	.L2458
.L2452:
	addl	$1, %edx
	cmpl	%ecx, %edx
	jne	.L2453
.L2451:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.p2align 4,,10
	.p2align 3
.L2458:
	.cfi_restore_state
	movl	$1, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE130:
	.size	lodepng_can_have_alpha, .-lodepng_can_have_alpha
	.section	.text.unlikely
.LCOLDE85:
	.text
.LHOTE85:
	.section	.text.unlikely
.LCOLDB86:
	.text
.LHOTB86:
	.p2align 4,,15
	.globl	lodepng_get_raw_size
	.type	lodepng_get_raw_size, @function
lodepng_get_raw_size:
.LFB131:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %eax
	movl	(%eax), %edx
	movl	4(%eax), %ecx
	xorl	%eax, %eax
	cmpl	$6, %edx
	ja	.L2462
	movl	8(%esp), %ebx
	imull	12(%esp), %ebx
	imull	CSWTCH.141(,%edx,4), %ecx
	movl	%ebx, %edx
	shrl	$3, %ebx
	andl	$7, %edx
	imull	%ecx, %edx
	leal	7(%edx), %eax
	shrl	$3, %eax
	movl	%eax, %edx
	movl	%ebx, %eax
	imull	%ecx, %eax
	addl	%edx, %eax
.L2462:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE131:
	.size	lodepng_get_raw_size, .-lodepng_get_raw_size
	.section	.text.unlikely
.LCOLDE86:
	.text
.LHOTE86:
	.section	.text.unlikely
.LCOLDB87:
	.text
.LHOTB87:
	.p2align 4,,15
	.globl	lodepng_get_raw_size_lct
	.type	lodepng_get_raw_size_lct, @function
lodepng_get_raw_size_lct:
.LFB132:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	16(%esp), %ebx
	xorl	%eax, %eax
	cmpl	$6, %ebx
	ja	.L2466
	movl	8(%esp), %edx
	movl	20(%esp), %ecx
	imull	12(%esp), %edx
	imull	CSWTCH.141(,%ebx,4), %ecx
	movl	%edx, %eax
	shrl	$3, %edx
	andl	$7, %eax
	imull	%ecx, %eax
	imull	%ecx, %edx
	addl	$7, %eax
	shrl	$3, %eax
	addl	%edx, %eax
.L2466:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE132:
	.size	lodepng_get_raw_size_lct, .-lodepng_get_raw_size_lct
	.section	.text.unlikely
.LCOLDE87:
	.text
.LHOTE87:
	.section	.text.unlikely
.LCOLDB88:
	.text
.LHOTB88:
	.p2align 4,,15
	.globl	lodepng_clear_text
	.type	lodepng_clear_text, @function
lodepng_clear_text:
.LFB140:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	xorl	%esi, %esi
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %edi
	movl	60(%edi), %edx
	testl	%edx, %edx
	je	.L2471
	.p2align 4,,10
	.p2align 3
.L2473:
	movl	64(%edi), %ebp
	leal	0(,%esi,4), %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	addl	$1, %esi
	addl	%ebx, %ebp
	pushl	0(%ebp)
	.cfi_def_cfa_offset 48
	call	free
	movl	$0, 0(%ebp)
	addl	68(%edi), %ebx
	popl	%eax
	.cfi_def_cfa_offset 44
	pushl	(%ebx)
	.cfi_def_cfa_offset 48
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	60(%edi), %esi
	movl	$0, (%ebx)
	jne	.L2473
.L2471:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	64(%edi)
	.cfi_def_cfa_offset 48
	call	free
	movl	68(%edi), %eax
	movl	%eax, 48(%esp)
	addl	$28, %esp
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
	jmp	free
	.cfi_endproc
.LFE140:
	.size	lodepng_clear_text, .-lodepng_clear_text
	.section	.text.unlikely
.LCOLDE88:
	.text
.LHOTE88:
	.section	.text.unlikely
.LCOLDB89:
	.text
.LHOTB89:
	.p2align 4,,15
	.globl	lodepng_add_text
	.type	lodepng_add_text, @function
lodepng_add_text:
.LFB141:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	56(%esp), %ebx
	movl	60(%esp), %ebp
	movl	64(%esp), %edi
	movl	60(%ebx), %eax
	leal	4(,%eax,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	64(%ebx)
	.cfi_def_cfa_offset 64
	call	realloc
	movl	%eax, 28(%esp)
	popl	%esi
	.cfi_def_cfa_offset 60
	popl	%eax
	.cfi_def_cfa_offset 56
	movl	60(%ebx), %eax
	leal	4(,%eax,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	68(%ebx)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %esi
	movl	12(%esp), %edx
	je	.L2489
	testl	%edx, %edx
	jne	.L2477
.L2489:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	call	free
	movl	%esi, (%esp)
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$83, %eax
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L2477:
	.cfi_restore_state
	movl	60(%ebx), %eax
	movl	%esi, 68(%ebx)
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%edx, 64(%ebx)
	leal	1(%eax), %ecx
	leal	(%edx,%eax,4), %esi
	movl	%ecx, 60(%ebx)
	movl	$0, (%esi)
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	$0
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2480
	movb	$0, (%eax)
	movl	%eax, (%esi)
.L2480:
	movl	60(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	leal	-4(,%eax,4), %esi
	addl	64(%ebx), %esi
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	strlen
	popl	%edx
	.cfi_def_cfa_offset 60
	popl	%ecx
	.cfi_def_cfa_offset 56
	movl	%eax, %ecx
	leal	1(%eax), %eax
	movl	%ecx, 20(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	12(%esp), %ecx
	je	.L2484
	testl	%ecx, %ecx
	movb	$0, (%eax,%ecx)
	movl	%eax, (%esi)
	je	.L2484
	xorl	%edx, %edx
	movl	%ebx, 48(%esp)
	movzbl	0(%ebp,%edx), %ebx
	movb	%bl, (%eax,%edx)
	addl	$1, %edx
	cmpl	%ecx, %edx
	je	.L2499
	.p2align 4,,10
	.p2align 3
.L2501:
	movzbl	0(%ebp,%edx), %ebx
	movl	(%esi), %eax
	movb	%bl, (%eax,%edx)
	addl	$1, %edx
	cmpl	%ecx, %edx
	jne	.L2501
.L2499:
	movl	48(%esp), %ebx
.L2484:
	movl	60(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	leal	-4(,%eax,4), %esi
	addl	68(%ebx), %esi
	movl	$0, (%esi)
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	$0
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2483
	movb	$0, (%eax)
	movl	%eax, (%esi)
.L2483:
	movl	60(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	leal	-4(,%eax,4), %esi
	addl	68(%ebx), %esi
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	strlen
	popl	%edx
	.cfi_def_cfa_offset 60
	movl	%eax, %ebp
	leal	1(%eax), %eax
	popl	%ecx
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2487
	testl	%ebp, %ebp
	movb	$0, (%eax,%ebp)
	movl	%eax, (%esi)
	je	.L2487
	xorl	%edx, %edx
	movl	%eax, %ecx
	movzbl	(%edi,%edx), %eax
	movb	%al, (%ecx,%edx)
	addl	$1, %edx
	cmpl	%ebp, %edx
	je	.L2487
	.p2align 4,,10
	.p2align 3
.L2502:
	movzbl	(%edi,%edx), %eax
	movl	(%esi), %ecx
	movb	%al, (%ecx,%edx)
	addl	$1, %edx
	cmpl	%ebp, %edx
	jne	.L2502
.L2487:
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
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
.LFE141:
	.size	lodepng_add_text, .-lodepng_add_text
	.section	.text.unlikely
.LCOLDE89:
	.text
.LHOTE89:
	.section	.text.unlikely
.LCOLDB90:
	.text
.LHOTB90:
	.p2align 4,,15
	.globl	lodepng_clear_itext
	.type	lodepng_clear_itext, @function
lodepng_clear_itext:
.LFB145:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%edi, %edi
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %esi
	movl	72(%esi), %ebp
	testl	%ebp, %ebp
	je	.L2505
	.p2align 4,,10
	.p2align 3
.L2507:
	movl	76(%esi), %ebp
	leal	0(,%edi,4), %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	addl	$1, %edi
	addl	%ebx, %ebp
	pushl	0(%ebp)
	.cfi_def_cfa_offset 48
	call	free
	movl	$0, 0(%ebp)
	movl	80(%esi), %ebp
	popl	%eax
	.cfi_def_cfa_offset 44
	addl	%ebx, %ebp
	pushl	0(%ebp)
	.cfi_def_cfa_offset 48
	call	free
	movl	$0, 0(%ebp)
	movl	84(%esi), %ebp
	popl	%edx
	.cfi_def_cfa_offset 44
	addl	%ebx, %ebp
	pushl	0(%ebp)
	.cfi_def_cfa_offset 48
	call	free
	movl	$0, 0(%ebp)
	addl	88(%esi), %ebx
	popl	%ecx
	.cfi_def_cfa_offset 44
	pushl	(%ebx)
	.cfi_def_cfa_offset 48
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	72(%esi), %edi
	movl	$0, (%ebx)
	jne	.L2507
.L2505:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	76(%esi)
	.cfi_def_cfa_offset 48
	call	free
	popl	%ebx
	.cfi_def_cfa_offset 44
	pushl	80(%esi)
	.cfi_def_cfa_offset 48
	call	free
	popl	%edi
	.cfi_def_cfa_offset 44
	pushl	84(%esi)
	.cfi_def_cfa_offset 48
	call	free
	movl	88(%esi), %eax
	movl	%eax, 48(%esp)
	addl	$28, %esp
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
	jmp	free
	.cfi_endproc
.LFE145:
	.size	lodepng_clear_itext, .-lodepng_clear_itext
	.section	.text.unlikely
.LCOLDE90:
	.text
.LHOTE90:
	.section	.text.unlikely
.LCOLDB91:
	.text
.LHOTB91:
	.p2align 4,,15
	.globl	lodepng_add_itext
	.type	lodepng_add_itext, @function
lodepng_add_itext:
.LFB146:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	56(%esp), %ebx
	movl	72(%ebx), %eax
	leal	4(,%eax,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	76(%ebx)
	.cfi_def_cfa_offset 64
	call	realloc
	movl	%eax, %esi
	popl	%eax
	.cfi_def_cfa_offset 60
	movl	72(%ebx), %eax
	popl	%edx
	.cfi_def_cfa_offset 56
	leal	4(,%eax,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	80(%ebx)
	.cfi_def_cfa_offset 64
	call	realloc
	movl	%eax, %edi
	movl	72(%ebx), %eax
	popl	%ecx
	.cfi_def_cfa_offset 60
	popl	%ebp
	.cfi_def_cfa_offset 56
	leal	4(,%eax,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	84(%ebx)
	.cfi_def_cfa_offset 64
	call	realloc
	movl	%eax, %ebp
	popl	%eax
	.cfi_def_cfa_offset 60
	movl	72(%ebx), %eax
	popl	%edx
	.cfi_def_cfa_offset 56
	leal	4(,%eax,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	88(%ebx)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%esi, %esi
	je	.L2511
	testl	%edi, %edi
	je	.L2511
	testl	%ebp, %ebp
	je	.L2511
	testl	%eax, %eax
	jne	.L2512
.L2511:
	movl	%eax, 12(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	free
	movl	%edi, (%esp)
	call	free
	movl	%ebp, (%esp)
	call	free
	movl	28(%esp), %eax
	movl	%eax, (%esp)
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	$83, %eax
.L2514:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L2512:
	.cfi_restore_state
	movl	72(%ebx), %edx
	movl	%esi, 76(%ebx)
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%edi, 80(%ebx)
	movl	%ebp, 84(%ebx)
	movl	%eax, 88(%ebx)
	leal	1(%edx), %ecx
	leal	(%esi,%edx,4), %esi
	movl	%ecx, 72(%ebx)
	movl	$0, (%esi)
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	$0
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2515
	movb	$0, (%eax)
	movl	%eax, (%esi)
.L2515:
	movl	72(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	leal	-4(,%eax,4), %esi
	addl	76(%ebx), %esi
	pushl	64(%esp)
	.cfi_def_cfa_offset 64
	call	strlen
	popl	%edi
	.cfi_def_cfa_offset 60
	movl	%eax, %edi
	leal	1(%eax), %eax
	popl	%ebp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2519
	testl	%edi, %edi
	movb	$0, (%eax,%edi)
	movl	%eax, (%esi)
	je	.L2519
	xorl	%edx, %edx
	movl	52(%esp), %ebp
	jmp	.L2520
	.p2align 4,,10
	.p2align 3
.L2553:
	movl	(%esi), %eax
.L2520:
	movzbl	0(%ebp,%edx), %ecx
	movb	%cl, (%eax,%edx)
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	.L2553
.L2519:
	movl	72(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	leal	-4(,%eax,4), %esi
	addl	80(%ebx), %esi
	movl	$0, (%esi)
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	$0
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2518
	movb	$0, (%eax)
	movl	%eax, (%esi)
.L2518:
	movl	72(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	leal	-4(,%eax,4), %esi
	addl	80(%ebx), %esi
	pushl	68(%esp)
	.cfi_def_cfa_offset 64
	call	strlen
	popl	%edx
	.cfi_def_cfa_offset 60
	movl	%eax, %edi
	leal	1(%eax), %eax
	popl	%ecx
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2524
	testl	%edi, %edi
	movb	$0, (%eax,%edi)
	movl	%eax, (%esi)
	je	.L2524
	xorl	%edx, %edx
	movl	56(%esp), %ebp
	jmp	.L2525
	.p2align 4,,10
	.p2align 3
.L2554:
	movl	(%esi), %eax
.L2525:
	movzbl	0(%ebp,%edx), %ecx
	movb	%cl, (%eax,%edx)
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	.L2554
.L2524:
	movl	72(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	leal	-4(,%eax,4), %esi
	addl	84(%ebx), %esi
	movl	$0, (%esi)
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	$0
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2523
	movb	$0, (%eax)
	movl	%eax, (%esi)
.L2523:
	movl	72(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	leal	-4(,%eax,4), %esi
	addl	84(%ebx), %esi
	pushl	72(%esp)
	.cfi_def_cfa_offset 64
	call	strlen
	popl	%edi
	.cfi_def_cfa_offset 60
	movl	%eax, %edi
	leal	1(%eax), %eax
	popl	%ebp
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2529
	testl	%edi, %edi
	movb	$0, (%eax,%edi)
	movl	%eax, (%esi)
	je	.L2529
	xorl	%edx, %edx
	movl	60(%esp), %ebp
	jmp	.L2530
	.p2align 4,,10
	.p2align 3
.L2555:
	movl	(%esi), %eax
.L2530:
	movzbl	0(%ebp,%edx), %ecx
	movb	%cl, (%eax,%edx)
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	.L2555
.L2529:
	movl	72(%ebx), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	leal	-4(,%eax,4), %esi
	addl	88(%ebx), %esi
	movl	$0, (%esi)
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	$0
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2528
	movb	$0, (%eax)
	movl	%eax, (%esi)
.L2528:
	movl	72(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	leal	-4(,%eax,4), %esi
	addl	88(%ebx), %esi
	pushl	76(%esp)
	.cfi_def_cfa_offset 64
	call	strlen
	popl	%edx
	.cfi_def_cfa_offset 60
	movl	%eax, %edi
	leal	1(%eax), %eax
	popl	%ecx
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2532
	testl	%edi, %edi
	movb	$0, (%eax,%edi)
	movl	%eax, (%esi)
	je	.L2532
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	64(%esp), %ebx
	jmp	.L2533
	.p2align 4,,10
	.p2align 3
.L2556:
	movl	(%esi), %ecx
.L2533:
	movzbl	(%ebx,%edx), %eax
	movb	%al, (%ecx,%edx)
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	.L2556
.L2532:
	xorl	%eax, %eax
	jmp	.L2514
	.cfi_endproc
.LFE146:
	.size	lodepng_add_itext, .-lodepng_add_itext
	.section	.text.unlikely
.LCOLDE91:
	.text
.LHOTE91:
	.section	.text.unlikely
.LCOLDB92:
	.text
.LHOTB92:
	.p2align 4,,15
	.globl	lodepng_info_init
	.type	lodepng_info_init, @function
lodepng_info_init:
.LFB147:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$0, 28(%eax)
	movl	$0, 40(%eax)
	movl	$0, 36(%eax)
	movl	$0, 32(%eax)
	movl	$6, 12(%eax)
	movl	$8, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 8(%eax)
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 44(%eax)
	movl	$0, 56(%eax)
	movl	$0, 52(%eax)
	movl	$0, 48(%eax)
	movl	$0, 60(%eax)
	movl	$0, 64(%eax)
	movl	$0, 68(%eax)
	movl	$0, 72(%eax)
	movl	$0, 76(%eax)
	movl	$0, 80(%eax)
	movl	$0, 84(%eax)
	movl	$0, 88(%eax)
	movl	$0, 92(%eax)
	movl	$0, 120(%eax)
	movl	$0, 136(%eax)
	movl	$0, 140(%eax)
	movl	$0, 144(%eax)
	movl	$0, 148(%eax)
	movl	$0, 152(%eax)
	movl	$0, 156(%eax)
	ret
	.cfi_endproc
.LFE147:
	.size	lodepng_info_init, .-lodepng_info_init
	.section	.text.unlikely
.LCOLDE92:
	.text
.LHOTE92:
	.section	.text.unlikely
.LCOLDB93:
	.text
.LHOTB93:
	.p2align 4,,15
	.globl	lodepng_info_cleanup
	.type	lodepng_info_cleanup, @function
lodepng_info_cleanup:
.LFB148:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$12, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	.L2559
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	%eax
	.cfi_def_cfa_offset 48
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 32
.L2559:
	movl	60(%ebx), %eax
	xorl	%edi, %edi
	movl	$0, 20(%ebx)
	movl	$0, 24(%ebx)
	testl	%eax, %eax
	je	.L2563
	.p2align 4,,10
	.p2align 3
.L2569:
	movl	64(%ebx), %ebp
	leal	0(,%edi,4), %esi
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	addl	$1, %edi
	addl	%esi, %ebp
	pushl	0(%ebp)
	.cfi_def_cfa_offset 48
	call	free
	movl	$0, 0(%ebp)
	addl	68(%ebx), %esi
	popl	%eax
	.cfi_def_cfa_offset 44
	pushl	(%esi)
	.cfi_def_cfa_offset 48
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	60(%ebx), %edi
	movl	$0, (%esi)
	jne	.L2569
.L2563:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	64(%ebx)
	.cfi_def_cfa_offset 48
	xorl	%edi, %edi
	call	free
	popl	%eax
	.cfi_def_cfa_offset 44
	pushl	68(%ebx)
	.cfi_def_cfa_offset 48
	call	free
	movl	72(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	testl	%eax, %eax
	je	.L2562
	.p2align 4,,10
	.p2align 3
.L2568:
	movl	76(%ebx), %ebp
	leal	0(,%edi,4), %esi
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	addl	$1, %edi
	addl	%esi, %ebp
	pushl	0(%ebp)
	.cfi_def_cfa_offset 48
	call	free
	movl	$0, 0(%ebp)
	movl	80(%ebx), %ebp
	popl	%eax
	.cfi_def_cfa_offset 44
	addl	%esi, %ebp
	pushl	0(%ebp)
	.cfi_def_cfa_offset 48
	call	free
	movl	$0, 0(%ebp)
	movl	84(%ebx), %ebp
	popl	%edx
	.cfi_def_cfa_offset 44
	addl	%esi, %ebp
	pushl	0(%ebp)
	.cfi_def_cfa_offset 48
	call	free
	movl	$0, 0(%ebp)
	addl	88(%ebx), %esi
	popl	%ecx
	.cfi_def_cfa_offset 44
	pushl	(%esi)
	.cfi_def_cfa_offset 48
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 32
	cmpl	72(%ebx), %edi
	movl	$0, (%esi)
	jne	.L2568
.L2562:
	subl	$12, %esp
	.cfi_def_cfa_offset 44
	pushl	76(%ebx)
	.cfi_def_cfa_offset 48
	call	free
	popl	%esi
	.cfi_def_cfa_offset 44
	pushl	80(%ebx)
	.cfi_def_cfa_offset 48
	call	free
	popl	%edi
	.cfi_def_cfa_offset 44
	pushl	84(%ebx)
	.cfi_def_cfa_offset 48
	call	free
	popl	%ebp
	.cfi_def_cfa_offset 44
	pushl	88(%ebx)
	.cfi_def_cfa_offset 48
	call	free
	popl	%eax
	.cfi_def_cfa_offset 44
	pushl	136(%ebx)
	.cfi_def_cfa_offset 48
	call	free
	popl	%eax
	.cfi_def_cfa_offset 44
	pushl	140(%ebx)
	.cfi_def_cfa_offset 48
	call	free
	movl	144(%ebx), %eax
	movl	%eax, 48(%esp)
	addl	$28, %esp
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
	jmp	free
	.cfi_endproc
.LFE148:
	.size	lodepng_info_cleanup, .-lodepng_info_cleanup
	.section	.text.unlikely
.LCOLDE93:
	.text
.LHOTE93:
	.section	.text.unlikely
.LCOLDB94:
	.text
.LHOTB94:
	.p2align 4,,15
	.globl	lodepng_info_copy
	.type	lodepng_info_copy, @function
lodepng_info_copy:
.LFB149:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$40, %esp
	.cfi_def_cfa_offset 60
	movl	60(%esp), %ebp
	movl	64(%esp), %ebx
	pushl	%ebp
	.cfi_def_cfa_offset 64
	movl	%ebp, %edi
	movl	%ebx, %esi
	call	lodepng_info_cleanup
	movl	$40, %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	rep movsl
	movl	$0, 40(%ebp)
	movl	$0, 36(%ebp)
	movl	$0, 32(%ebp)
	movl	$0, 28(%ebp)
	movl	$0, 20(%ebp)
	movl	$0, 24(%ebp)
	movl	$8, 16(%ebp)
	movl	$6, 12(%ebp)
	movl	12(%ebx), %eax
	movl	%eax, 12(%ebp)
	movl	16(%ebx), %eax
	movl	%eax, 16(%ebp)
	movl	20(%ebx), %eax
	movl	%eax, 20(%ebp)
	movl	24(%ebx), %eax
	movl	%eax, 24(%ebp)
	movl	28(%ebx), %eax
	movl	%eax, 28(%ebp)
	movl	32(%ebx), %eax
	movl	%eax, 32(%ebp)
	movl	36(%ebx), %eax
	movl	%eax, 36(%ebp)
	movl	40(%ebx), %eax
	movl	%eax, 40(%ebp)
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	.L2575
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	$1024
	.cfi_def_cfa_offset 64
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, 20(%ebp)
	je	.L2576
	movl	24(%ebx), %edi
	leal	0(,%edi,4), %edx
	testl	%edx, %edx
	je	.L2575
	xorl	%edx, %edx
	jmp	.L2577
	.p2align 4,,10
	.p2align 3
.L2632:
	movl	20(%ebp), %eax
.L2577:
	movl	20(%ebx), %ecx
	movzbl	(%ecx,%edx), %ecx
	movb	%cl, (%eax,%edx)
	movl	24(%ebx), %eax
	addl	$1, %edx
	sall	$2, %eax
	cmpl	%eax, %edx
	jne	.L2632
.L2575:
	movl	$0, 60(%ebp)
	movl	60(%ebx), %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	movl	$0, 64(%ebp)
	movl	$0, 68(%ebp)
	movl	$0, 12(%esp)
	testl	%ecx, %ecx
	je	.L2589
	movl	%ebx, 52(%esp)
	movl	%ebx, %edi
	movl	%ebx, %esi
	.p2align 4,,10
	.p2align 3
.L2618:
	movl	68(%edi), %ecx
	movl	12(%esp), %edi
	leal	4(,%eax,4), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	(%ecx,%edi,4), %ebx
	movl	64(%esi), %ecx
	movl	(%ecx,%edi,4), %edi
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	call	realloc
	movl	%eax, 24(%esp)
	popl	%esi
	.cfi_def_cfa_offset 60
	popl	%eax
	.cfi_def_cfa_offset 56
	movl	60(%ebp), %eax
	leal	4(,%eax,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	68(%ebp)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %esi
	movl	8(%esp), %edx
	je	.L2602
	testl	%edx, %edx
	je	.L2602
	movl	60(%ebp), %eax
	movl	%esi, 68(%ebp)
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	movl	%edx, 64(%ebp)
	leal	1(%eax), %ecx
	leal	(%edx,%eax,4), %esi
	movl	%ecx, 60(%ebp)
	movl	$0, (%esi)
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	$0
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2581
	movb	$0, (%eax)
	movl	%eax, (%esi)
.L2581:
	movl	60(%ebp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	leal	-4(,%eax,4), %esi
	addl	64(%ebp), %esi
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	strlen
	popl	%edx
	.cfi_def_cfa_offset 60
	popl	%ecx
	.cfi_def_cfa_offset 56
	movl	%eax, %ecx
	leal	1(%eax), %eax
	movl	%ecx, 16(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	8(%esp), %ecx
	je	.L2585
	testl	%ecx, %ecx
	movb	$0, (%eax,%ecx)
	movl	%eax, (%esi)
	je	.L2585
	xorl	%edx, %edx
	movl	%ebx, 8(%esp)
	jmp	.L2586
	.p2align 4,,10
	.p2align 3
.L2633:
	movl	(%esi), %eax
.L2586:
	movzbl	(%edi,%edx), %ebx
	movb	%bl, (%eax,%edx)
	addl	$1, %edx
	cmpl	%ecx, %edx
	jne	.L2633
	movl	8(%esp), %ebx
.L2585:
	movl	60(%ebp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	leal	-4(,%eax,4), %esi
	addl	68(%ebp), %esi
	movl	$0, (%esi)
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	$0
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2584
	movb	$0, (%eax)
	movl	%eax, (%esi)
.L2584:
	movl	60(%ebp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	leal	-4(,%eax,4), %esi
	addl	68(%ebp), %esi
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	strlen
	popl	%edx
	.cfi_def_cfa_offset 60
	movl	%eax, %edi
	leal	1(%eax), %eax
	popl	%ecx
	.cfi_def_cfa_offset 56
	pushl	%eax
	.cfi_def_cfa_offset 60
	pushl	(%esi)
	.cfi_def_cfa_offset 64
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	je	.L2590
	testl	%edi, %edi
	movb	$0, (%eax,%edi)
	movl	%eax, (%esi)
	je	.L2590
	xorl	%edx, %edx
	jmp	.L2591
	.p2align 4,,10
	.p2align 3
.L2634:
	movl	(%esi), %eax
.L2591:
	movzbl	(%ebx,%edx), %ecx
	movb	%cl, (%eax,%edx)
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	.L2634
.L2590:
	movl	52(%esp), %ebx
	addl	$1, 12(%esp)
	movl	12(%esp), %eax
	cmpl	60(%ebx), %eax
	je	.L2589
	movl	60(%ebp), %eax
	movl	64(%ebp), %edx
	movl	52(%esp), %edi
	movl	52(%esp), %esi
	jmp	.L2618
	.p2align 4,,10
	.p2align 3
.L2602:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%edx
	.cfi_def_cfa_offset 64
	call	free
	movl	%esi, (%esp)
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L2631:
	movl	$83, %eax
.L2625:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L2589:
	.cfi_restore_state
	movl	$0, 72(%ebp)
	movl	72(%ebx), %eax
	movl	$0, 76(%ebp)
	movl	$0, 80(%ebp)
	movl	$0, 84(%ebp)
	movl	$0, 88(%ebp)
	testl	%eax, %eax
	je	.L2592
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L2593:
	movl	88(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 64
	movl	84(%ebx), %eax
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 68
	movl	80(%ebx), %eax
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 72
	movl	76(%ebx), %eax
	pushl	(%eax,%esi,4)
	.cfi_def_cfa_offset 76
	pushl	%ebp
	.cfi_def_cfa_offset 80
	call	lodepng_add_itext
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L2625
	addl	$1, %esi
	cmpl	72(%ebx), %esi
	jne	.L2593
.L2592:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	$0, 136(%ebp)
	movl	$0, 140(%ebp)
	movl	$0, 144(%ebp)
	movl	$0, 148(%ebp)
	movl	$0, 152(%ebp)
	movl	$0, 156(%ebp)
	pushl	$0
	.cfi_def_cfa_offset 64
	call	free
	popl	%esi
	.cfi_def_cfa_offset 60
	pushl	140(%ebp)
	.cfi_def_cfa_offset 64
	leal	148(%ebx), %esi
	call	free
	popl	%edi
	.cfi_def_cfa_offset 60
	pushl	144(%ebp)
	.cfi_def_cfa_offset 64
	leal	136(%ebp), %edi
	call	free
	leal	160(%ebx), %eax
	movl	%eax, 24(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L2598:
	movl	(%esi), %ebx
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	%ebx, 12(%edi)
	movl	(%esi), %ebp
	pushl	%ebp
	.cfi_def_cfa_offset 64
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%ebx, %ebx
	movl	%eax, (%edi)
	je	.L2603
	testl	%eax, %eax
	je	.L2631
.L2603:
	testl	%ebp, %ebp
	je	.L2596
	xorl	%edx, %edx
	jmp	.L2597
	.p2align 4,,10
	.p2align 3
.L2635:
	movl	(%edi), %eax
.L2597:
	movl	-12(%esi), %ecx
	movzbl	(%ecx,%edx), %ecx
	movb	%cl, (%eax,%edx)
	addl	$1, %edx
	cmpl	(%esi), %edx
	jb	.L2635
.L2596:
	addl	$4, %esi
	addl	$4, %edi
	cmpl	8(%esp), %esi
	jne	.L2598
	xorl	%eax, %eax
	jmp	.L2625
	.p2align 4,,10
	.p2align 3
.L2576:
	movl	24(%ebx), %eax
	testl	%eax, %eax
	jne	.L2631
	jmp	.L2575
	.cfi_endproc
.LFE149:
	.size	lodepng_info_copy, .-lodepng_info_copy
	.section	.text.unlikely
.LCOLDE94:
	.text
.LHOTE94:
	.section	.text.unlikely
.LCOLDB95:
	.text
.LHOTB95:
	.p2align 4,,15
	.globl	lodepng_info_swap
	.type	lodepng_info_swap, @function
lodepng_info_swap:
.LFB150:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	$40, %ecx
	subl	$160, %esp
	.cfi_def_cfa_offset 172
	movl	172(%esp), %edx
	movl	%esp, %edi
	movl	176(%esp), %eax
	movl	%edx, %esi
	rep movsl
	movl	%edx, %edi
	movl	%eax, %esi
	movb	$40, %cl
	rep movsl
	movl	%esp, %esi
	movl	%eax, %edi
	movb	$40, %cl
	rep movsl
	addl	$160, %esp
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE150:
	.size	lodepng_info_swap, .-lodepng_info_swap
	.section	.text.unlikely
.LCOLDE95:
	.text
.LHOTE95:
	.section	.text.unlikely
.LCOLDB96:
	.text
.LHOTB96:
	.p2align 4,,15
	.globl	lodepng_convert
	.type	lodepng_convert, @function
lodepng_convert:
.LFB162:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$140, %esp
	.cfi_def_cfa_offset 160
	movl	180(%esp), %eax
	movl	172(%esp), %edi
	imull	176(%esp), %eax
	movl	(%edi), %edi
	movl	%edi, 44(%esp)
	movl	%eax, 16(%esp)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 12(%esp)
	cmpl	%edi, %eax
	movl	168(%esp), %eax
	movl	4(%eax), %eax
	je	.L2775
	movl	%eax, 28(%esp)
	movl	172(%esp), %eax
	movl	4(%eax), %eax
	movl	%eax, 24(%esp)
.L2640:
	cmpl	$3, 12(%esp)
	je	.L2776
.L2661:
	cmpl	$16, 24(%esp)
	je	.L2777
.L2658:
	cmpl	$8, 28(%esp)
	je	.L2668
.L2671:
	movl	16(%esp), %ecx
	movl	12(%esp), %eax
	testl	%ecx, %ecx
	movl	%eax, 8(%esp)
	je	.L2662
	movl	44(%esp), %eax
	xorl	%edi, %edi
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movl	%edi, %ebx
	movl	$0, 20(%esp)
	movb	$0, 24(%esp)
	movb	$0, 28(%esp)
	testl	%eax, %eax
	movb	%bl, 12(%esp)
	jne	.L2672
	.p2align 4,,10
	.p2align 3
.L2781:
	movl	172(%esp), %eax
	movl	4(%eax), %eax
	cmpl	$8, %eax
	je	.L2778
	cmpl	$16, %eax
	je	.L2779
	movl	$1, %edx
	movl	%eax, %ecx
	movl	%esi, %ebp
	sall	%cl, %edx
	imull	%eax, %ebp
	testl	%eax, %eax
	leal	-1(%edx), %edi
	je	.L2720
	movl	%edi, %edx
	movl	164(%esp), %edi
	addl	%ebp, %eax
	xorl	%ebx, %ebx
	movl	%esi, 12(%esp)
	.p2align 4,,10
	.p2align 3
.L2677:
	movl	%ebp, %ecx
	addl	%ebx, %ebx
	shrl	$3, %ecx
	movzbl	(%edi,%ecx), %esi
	movl	%ebp, %ecx
	addl	$1, %ebp
	notl	%ecx
	andl	$7, %ecx
	sarl	%cl, %esi
	andl	$1, %esi
	orl	%esi, %ebx
	cmpl	%eax, %ebp
	jne	.L2677
	movl	%ebx, %eax
	movl	12(%esp), %esi
	movl	%edx, %edi
	sall	$8, %eax
	subl	%ebx, %eax
.L2676:
	xorl	%edx, %edx
	divl	%edi
	movl	172(%esp), %edi
	movl	16(%edi), %ebp
	movb	%al, 12(%esp)
	testl	%ebp, %ebp
	je	.L2721
	cmpl	%ebx, 20(%edi)
	movb	%al, 24(%esp)
	movl	%eax, %ebp
	setne	%dl
	negl	%edx
	movb	%dl, 28(%esp)
	.p2align 4,,10
	.p2align 3
.L2674:
	movl	8(%esp), %eax
	testl	%eax, %eax
	jne	.L2688
.L2786:
	movl	168(%esp), %eax
	movl	4(%eax), %eax
	cmpl	$8, %eax
	je	.L2780
	cmpl	$16, %eax
	jne	.L2691
	movl	160(%esp), %edi
	movl	%ebp, %eax
	movb	%al, 1(%edi,%esi,2)
	movb	%al, (%edi,%esi,2)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
.L2690:
	addl	$1, %esi
	addl	$3, 20(%esp)
	cmpl	16(%esp), %esi
	je	.L2662
.L2791:
	movl	172(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L2781
.L2672:
	cmpl	$2, %eax
	je	.L2782
	cmpl	$3, %eax
	je	.L2783
	cmpl	$4, %eax
	je	.L2784
	cmpl	$6, %eax
	jne	.L2674
	movl	172(%esp), %eax
	cmpl	$8, 4(%eax)
	movl	164(%esp), %eax
	je	.L2785
	movzbl	(%eax,%esi,8), %ebp
	movzbl	2(%eax,%esi,8), %eax
	movb	%al, 24(%esp)
	movl	164(%esp), %eax
	movzbl	4(%eax,%esi,8), %eax
	movb	%al, 12(%esp)
	movl	164(%esp), %eax
	movzbl	6(%eax,%esi,8), %eax
	movb	%al, 28(%esp)
	movl	8(%esp), %eax
	testl	%eax, %eax
	je	.L2786
	.p2align 4,,10
	.p2align 3
.L2688:
	cmpl	$2, 8(%esp)
	je	.L2787
	cmpl	$3, 8(%esp)
	je	.L2788
	cmpl	$4, 8(%esp)
	je	.L2789
	cmpl	$6, 8(%esp)
	jne	.L2690
	movl	168(%esp), %eax
	movl	160(%esp), %edi
	cmpl	$8, 4(%eax)
	movl	%ebp, %eax
	je	.L2790
	movb	%al, 1(%edi,%esi,8)
	movb	%al, (%edi,%esi,8)
	movzbl	24(%esp), %eax
	addl	$3, 20(%esp)
	movb	%al, 3(%edi,%esi,8)
	movb	%al, 2(%edi,%esi,8)
	movzbl	12(%esp), %eax
	movb	%al, 5(%edi,%esi,8)
	movb	%al, 4(%edi,%esi,8)
	movzbl	28(%esp), %eax
	movb	%al, 7(%edi,%esi,8)
	movb	%al, 6(%edi,%esi,8)
	addl	$1, %esi
	movl	168(%esp), %eax
	cmpl	16(%esp), %esi
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jne	.L2791
	.p2align 4,,10
	.p2align 3
.L2662:
	cmpl	$3, 8(%esp)
	je	.L2792
.L2771:
	addl	$140, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
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
	.p2align 4,,10
	.p2align 3
.L2691:
	.cfi_restore_state
	movl	%ebp, %ebx
	movl	$8, %ecx
	subl	%eax, %ecx
	movzbl	%bl, %edx
	movl	$1, %ebx
	sarl	%cl, %edx
	movl	%eax, %ecx
	sall	%cl, %ebx
	movl	%ebx, %ecx
	movl	$7, %ebx
	subl	$1, %ecx
	andl	%ecx, %edx
	cmpl	$1, %eax
	movzbl	%dl, %edx
	je	.L2692
	xorl	%ebx, %ebx
	cmpl	$2, %eax
	sete	%bl
	leal	1(%ebx,%ebx), %ebx
.L2692:
	movl	%ebx, %ecx
	movl	$1, %edi
	andl	%esi, %ecx
	movl	%ecx, 8(%esp)
	movl	%eax, %ecx
	sall	%cl, %edi
	movl	%edi, %ecx
	movl	8(%esp), %edi
	subl	$1, %ecx
	andl	%ecx, %edx
	subl	%edi, %ebx
	imull	%eax, %ebx
	imull	%esi, %eax
	movl	%ebx, %ecx
	sall	%cl, %edx
	movl	%edi, %ecx
	shrl	$3, %eax
	testl	%ecx, %ecx
	movl	160(%esp), %edi
	je	.L2793
	orb	%dl, (%edi,%eax)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
	.p2align 4,,10
	.p2align 3
.L2787:
	movl	168(%esp), %eax
	cmpl	$8, 4(%eax)
	je	.L2794
	movl	160(%esp), %edi
	movl	20(%esp), %ebx
	movl	%ebp, %eax
	movb	%al, 1(%edi,%ebx,2)
	movb	%al, (%edi,%ebx,2)
	movzbl	24(%esp), %eax
	movb	%al, 3(%edi,%ebx,2)
	movb	%al, 2(%edi,%ebx,2)
	movzbl	12(%esp), %eax
	movb	%al, 5(%edi,%ebx,2)
	movb	%al, 4(%edi,%ebx,2)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
	.p2align 4,,10
	.p2align 3
.L2778:
	movl	164(%esp), %eax
	movzbl	(%eax,%esi), %eax
	movl	%eax, %ebx
	movb	%al, 12(%esp)
	movl	172(%esp), %eax
	movl	16(%eax), %edx
	testl	%edx, %edx
	je	.L2719
	movl	%eax, %edi
	movzbl	%bl, %eax
.L2769:
	cmpl	20(%edi), %eax
	movb	%bl, 24(%esp)
	movl	%ebx, %ebp
	setne	%al
	negl	%eax
	movb	%al, 28(%esp)
	jmp	.L2674
	.p2align 4,,10
	.p2align 3
.L2782:
	movl	172(%esp), %eax
	movl	164(%esp), %edi
	cmpl	$8, 4(%eax)
	movl	20(%esp), %eax
	je	.L2795
	movl	%edi, %ebx
	movzbl	(%edi,%eax,2), %ebp
	movl	%eax, %edi
	movzbl	2(%ebx,%eax,2), %eax
	movb	$-1, 28(%esp)
	movb	%al, 24(%esp)
	movzbl	4(%ebx,%edi,2), %eax
	movb	%al, 12(%esp)
	movl	172(%esp), %eax
	movl	16(%eax), %edx
	testl	%edx, %edx
	je	.L2674
	movl	%ebp, %eax
	movzbl	%al, %edx
	movzbl	1(%ebx,%edi,2), %eax
	movl	172(%esp), %edi
	sall	$8, %edx
	addl	%edx, %eax
	cmpl	20(%edi), %eax
	jne	.L2674
	movl	20(%esp), %edi
	movzbl	24(%esp), %edx
	movzbl	3(%ebx,%edi,2), %eax
	movl	172(%esp), %edi
	sall	$8, %edx
	addl	%edx, %eax
	cmpl	24(%edi), %eax
	jne	.L2674
	movl	20(%esp), %edi
	movzbl	12(%esp), %edx
	movzbl	5(%ebx,%edi,2), %eax
	movl	172(%esp), %edi
	sall	$8, %edx
	addl	%edx, %eax
	cmpl	28(%edi), %eax
	setne	%al
	negl	%eax
	movb	%al, 28(%esp)
	jmp	.L2674
	.p2align 4,,10
	.p2align 3
.L2721:
	movb	%al, 24(%esp)
	movl	%eax, %ebp
	movb	$-1, 28(%esp)
	jmp	.L2674
	.p2align 4,,10
	.p2align 3
.L2788:
	movzbl	12(%esp), %ecx
	movzbl	24(%esp), %edx
	movl	%ebp, %eax
	movl	%ebp, %edi
	movzbl	%al, %ebx
	andl	$1, %edi
	movl	%ecx, 32(%esp)
	movzbl	28(%esp), %ecx
	movl	%edx, %eax
	movl	%edx, 8(%esp)
	movzbl	%cl, %edx
	movl	%edx, 36(%esp)
	movl	%edi, %edx
	movl	%eax, %edi
	andl	$1, %edi
	leal	(%edi,%edx,2), %edx
	movl	12(%esp), %edi
	andl	$1, %edi
	leal	(%edi,%edx,2), %edx
	movl	%ecx, %edi
	andl	$1, %edi
	leal	(%edi,%edx,2), %eax
	movl	60(%esp,%eax,4), %edx
	testl	%edx, %edx
	je	.L2740
	movl	8(%esp), %eax
	movl	32(%esp), %ecx
	movl	%ebx, %edi
	andl	$2, %edi
	sarl	%eax
	sarl	%ecx
	andl	$1, %eax
	andl	$1, %ecx
	addl	%edi, %eax
	leal	(%ecx,%eax,2), %ecx
	movl	36(%esp), %eax
	sarl	%eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2740
	movl	8(%esp), %ecx
	movl	%ebx, %edi
	shrl	%edi
	movl	%edi, %eax
	sarl	$2, %ecx
	andl	$2, %eax
	andl	$1, %ecx
	addl	%ecx, %eax
	movl	32(%esp), %ecx
	sarl	$2, %ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	36(%esp), %eax
	sarl	$2, %eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2740
	movl	8(%esp), %ecx
	movl	%ebx, %edi
	shrl	$2, %edi
	movl	%edi, %eax
	sarl	$3, %ecx
	andl	$2, %eax
	andl	$1, %ecx
	addl	%ecx, %eax
	movl	32(%esp), %ecx
	sarl	$3, %ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	36(%esp), %eax
	sarl	$3, %eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2740
	movl	8(%esp), %ecx
	movl	%ebx, %edi
	shrl	$3, %edi
	movl	%edi, %eax
	sarl	$4, %ecx
	andl	$2, %eax
	andl	$1, %ecx
	addl	%ecx, %eax
	movl	32(%esp), %ecx
	sarl	$4, %ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	36(%esp), %eax
	sarl	$4, %eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2740
	movl	8(%esp), %ecx
	movl	%ebx, %edi
	shrl	$4, %edi
	movl	%edi, %eax
	sarl	$5, %ecx
	andl	$2, %eax
	andl	$1, %ecx
	addl	%ecx, %eax
	movl	32(%esp), %ecx
	sarl	$5, %ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	36(%esp), %eax
	sarl	$5, %eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2740
	movl	8(%esp), %ecx
	movl	%ebx, %edi
	shrl	$5, %edi
	movl	%edi, %eax
	movl	36(%esp), %edi
	sarl	$6, %ecx
	andl	$2, %eax
	andl	$1, %ecx
	addl	%ecx, %eax
	movl	32(%esp), %ecx
	sarl	$6, %ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	%edi, %eax
	sarl	$6, %eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2740
	movl	8(%esp), %eax
	sarl	$7, %ebx
	sarl	$7, %eax
	leal	(%eax,%ebx,2), %ecx
	movl	32(%esp), %eax
	sarl	$7, %eax
	leal	(%eax,%ecx,2), %ecx
	movl	%edi, %eax
	sarl	$7, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L2740
	movl	64(%eax), %ebx
	testl	%ebx, %ebx
	js	.L2740
	movl	168(%esp), %eax
	movl	4(%eax), %eax
	cmpl	$8, %eax
	je	.L2796
	cmpl	$1, %eax
	movl	$7, 8(%esp)
	je	.L2698
	xorl	%edx, %edx
	cmpl	$2, %eax
	sete	%dl
	leal	1(%edx,%edx), %edi
	movl	%edi, 8(%esp)
.L2698:
	movl	%eax, %ecx
	movl	$1, %edx
	movl	8(%esp), %edi
	sall	%cl, %edx
	movl	%edx, %ecx
	movl	8(%esp), %edx
	andl	%esi, %edi
	subl	$1, %ecx
	andl	%ecx, %ebx
	subl	%edi, %edx
	imull	%eax, %edx
	imull	%esi, %eax
	movl	%edx, %ecx
	sall	%cl, %ebx
	shrl	$3, %eax
	testl	%edi, %edi
	movl	160(%esp), %edi
	je	.L2797
	orb	%bl, (%edi,%eax)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
	.p2align 4,,10
	.p2align 3
.L2779:
	movl	164(%esp), %eax
	movzbl	(%eax,%esi,2), %eax
	movl	%eax, %ebx
	movb	%al, 12(%esp)
	movl	172(%esp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2719
	movl	164(%esp), %edi
	movzbl	%bl, %eax
	sall	$8, %eax
	movzbl	1(%edi,%esi,2), %edx
	movl	172(%esp), %edi
	addl	%edx, %eax
	jmp	.L2769
	.p2align 4,,10
	.p2align 3
.L2783:
	movl	172(%esp), %eax
	movl	4(%eax), %edi
	cmpl	$8, %edi
	je	.L2798
	movl	%esi, %ebx
	imull	%edi, %ebx
	testl	%edi, %edi
	je	.L2728
	movl	164(%esp), %ebp
	addl	%ebx, %edi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2684:
	movl	%ebx, %edx
	movl	%ebx, %ecx
	addl	%eax, %eax
	shrl	$3, %edx
	notl	%ecx
	addl	$1, %ebx
	movzbl	0(%ebp,%edx), %edx
	andl	$7, %ecx
	sarl	%cl, %edx
	andl	$1, %edx
	orl	%edx, %eax
	cmpl	%edi, %ebx
	jne	.L2684
.L2682:
	movl	172(%esp), %edi
	cmpl	%eax, 12(%edi)
	jbe	.L2729
	movl	8(%edi), %edx
	leal	0(,%eax,4), %ecx
	movzbl	(%edx,%eax,4), %ebp
	movzbl	1(%edx,%ecx), %eax
	movb	%al, 24(%esp)
	movzbl	2(%edx,%ecx), %eax
	movb	%al, 12(%esp)
	movzbl	3(%edx,%ecx), %eax
	movb	%al, 28(%esp)
	jmp	.L2674
	.p2align 4,,10
	.p2align 3
.L2780:
	movl	160(%esp), %edi
	movl	%ebp, %eax
	movb	%al, (%edi,%esi)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
	.p2align 4,,10
	.p2align 3
.L2719:
	movb	%bl, 24(%esp)
	movl	%ebx, %ebp
	movb	$-1, 28(%esp)
	jmp	.L2674
	.p2align 4,,10
	.p2align 3
.L2775:
	movl	172(%esp), %edi
	movl	%eax, 28(%esp)
	movl	4(%edi), %edi
	cmpl	%edi, %eax
	movl	%edi, 24(%esp)
	jne	.L2640
	movl	168(%esp), %edi
	movl	%eax, 24(%esp)
	movl	16(%edi), %edx
	movl	172(%esp), %edi
	cmpl	16(%edi), %edx
	jne	.L2640
	testl	%edx, %edx
	jne	.L2799
.L2641:
	movl	168(%esp), %edi
	movl	%eax, 24(%esp)
	movl	%eax, 28(%esp)
	movl	12(%edi), %esi
	movl	172(%esp), %edi
	cmpl	12(%edi), %esi
	jne	.L2640
	sall	$2, %esi
	testl	%esi, %esi
	je	.L2642
	movl	168(%esp), %edi
	movl	8(%edi), %ebx
	movl	172(%esp), %edi
	movl	8(%edi), %ecx
	movzbl	(%ecx), %edx
	cmpb	%dl, (%ebx)
	jne	.L2711
	xorl	%edx, %edx
	movl	%eax, %edi
	jmp	.L2643
.L2644:
	movzbl	(%ecx,%edx), %eax
	cmpb	%al, (%ebx,%edx)
	jne	.L2712
.L2643:
	addl	$1, %edx
	cmpl	%esi, %edx
	jne	.L2644
	movl	%edi, %eax
.L2642:
	cmpl	$6, 12(%esp)
	ja	.L2771
	movl	12(%esp), %edi
	imull	CSWTCH.141(,%edi,4), %eax
	movl	16(%esp), %edi
	movl	%edi, %edx
	andl	$7, %edx
	imull	%eax, %edx
	addl	$7, %edx
	shrl	$3, %edx
	movl	%edx, %ecx
	movl	%edi, %edx
	shrl	$3, %edx
	imull	%edx, %eax
	movl	%ecx, %edx
	addl	%eax, %edx
	je	.L2771
	movl	160(%esp), %eax
	orl	164(%esp), %eax
	testb	$3, %al
	movl	160(%esp), %eax
	sete	%cl
	addl	$4, %eax
	cmpl	%eax, 164(%esp)
	movl	164(%esp), %eax
	setnb	%bl
	addl	$4, %eax
	cmpl	%eax, 160(%esp)
	setnb	%al
	orl	%ebx, %eax
	testb	%al, %cl
	je	.L2713
	cmpl	$9, %edx
	jbe	.L2713
	leal	-4(%edx), %ecx
	movl	160(%esp), %edi
	movl	164(%esp), %ebp
	xorl	%eax, %eax
	shrl	$2, %ecx
	addl	$1, %ecx
	leal	0(,%ecx,4), %ebx
.L2648:
	movl	0(%ebp,%eax,4), %esi
	movl	%esi, (%edi,%eax,4)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jb	.L2648
	cmpl	%ebx, %edx
	je	.L2771
	movl	164(%esp), %eax
	movl	160(%esp), %edi
	movzbl	(%eax,%ecx,4), %eax
	movb	%al, (%edi,%ecx,4)
	leal	1(%ebx), %eax
	cmpl	%edx, %eax
	je	.L2771
	movl	164(%esp), %eax
	movzbl	1(%eax,%ebx), %eax
	movb	%al, 1(%edi,%ebx)
	leal	2(%ebx), %eax
	cmpl	%edx, %eax
	je	.L2771
	movl	164(%esp), %eax
	movl	160(%esp), %edi
	movzbl	2(%eax,%ebx), %eax
	movb	%al, 2(%edi,%ebx)
	jmp	.L2771
	.p2align 4,,10
	.p2align 3
.L2793:
	movb	%dl, (%edi,%eax)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
	.p2align 4,,10
	.p2align 3
.L2784:
	movl	172(%esp), %eax
	cmpl	$8, 4(%eax)
	movl	164(%esp), %eax
	je	.L2800
	movzbl	(%eax,%esi,4), %eax
	movl	%eax, %ebx
	movb	%al, 12(%esp)
	movl	164(%esp), %eax
	movb	%bl, 24(%esp)
	movl	%ebx, %ebp
	movzbl	2(%eax,%esi,4), %eax
	movb	%al, 28(%esp)
	jmp	.L2674
	.p2align 4,,10
	.p2align 3
.L2789:
	movl	168(%esp), %eax
	movl	4(%eax), %eax
	cmpl	$8, %eax
	je	.L2801
	cmpl	$16, %eax
	jne	.L2690
	movl	160(%esp), %edi
	movl	%ebp, %eax
	movb	%al, 1(%edi,%esi,4)
	movb	%al, (%edi,%esi,4)
	movzbl	28(%esp), %eax
	movb	%al, 3(%edi,%esi,4)
	movb	%al, 2(%edi,%esi,4)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
	.p2align 4,,10
	.p2align 3
.L2729:
	movb	$-1, 28(%esp)
	movb	$0, 12(%esp)
	xorl	%ebp, %ebp
	movb	$0, 24(%esp)
	jmp	.L2674
	.p2align 4,,10
	.p2align 3
.L2796:
	movl	160(%esp), %eax
	movb	%bl, (%eax,%esi)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
	.p2align 4,,10
	.p2align 3
.L2668:
	cmpl	$6, 12(%esp)
	je	.L2802
	cmpl	$2, 12(%esp)
	jne	.L2671
	subl	$8, %esp
	.cfi_def_cfa_offset 168
	xorl	%ecx, %ecx
	pushl	180(%esp)
	.cfi_def_cfa_offset 172
	pushl	176(%esp)
	.cfi_def_cfa_offset 176
.L2770:
	movl	176(%esp), %eax
	movl	32(%esp), %edx
	call	getPixelColorsRGBA8
	movl	184(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 24(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 160
	jmp	.L2662
.L2792:
	leal	60(%esp), %eax
	call	color_tree_cleanup
	jmp	.L2771
	.p2align 4,,10
	.p2align 3
.L2795:
	movl	%edi, %ebx
	movzbl	(%edi,%eax), %ebp
	movl	%eax, %edi
	movzbl	1(%ebx,%eax), %eax
	movb	$-1, 28(%esp)
	movb	%al, 24(%esp)
	movzbl	2(%ebx,%edi), %eax
	movb	%al, 12(%esp)
	movl	172(%esp), %eax
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	je	.L2674
	movl	%eax, %edi
	movl	%ebp, %eax
	movzbl	%al, %eax
	cmpl	20(%edi), %eax
	jne	.L2674
	movzbl	24(%esp), %eax
	cmpl	24(%edi), %eax
	jne	.L2674
	movzbl	12(%esp), %eax
	cmpl	28(%edi), %eax
	setne	%al
	negl	%eax
	movb	%al, 28(%esp)
	jmp	.L2674
	.p2align 4,,10
	.p2align 3
.L2794:
	movl	160(%esp), %ebx
	movl	20(%esp), %edi
	movl	%ebp, %eax
	movb	%al, (%ebx,%edi)
	movzbl	24(%esp), %eax
	movb	%al, 1(%ebx,%edi)
	movzbl	12(%esp), %eax
	movb	%al, 2(%ebx,%edi)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
	.p2align 4,,10
	.p2align 3
.L2740:
	addl	$140, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$82, %eax
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
	.p2align 4,,10
	.p2align 3
.L2776:
	.cfi_restore_state
	movl	168(%esp), %eax
	movzbl	28(%esp), %ecx
	movl	12(%eax), %edx
	movl	8(%eax), %eax
	movl	%eax, 36(%esp)
	movl	$1, %eax
	sall	%cl, %eax
	testl	%edx, %edx
	jne	.L2654
	movl	172(%esp), %edi
	movl	12(%edi), %edx
	movl	8(%edi), %edi
	movl	%edi, 36(%esp)
.L2654:
	cmpl	%eax, %edx
	movl	%edx, 32(%esp)
	jbe	.L2655
	movl	%eax, 32(%esp)
.L2655:
	leal	60(%esp), %edi
	xorl	%eax, %eax
	movl	$16, %ecx
	xorl	%ebx, %ebx
	movl	$-1, 124(%esp)
	rep stosl
	movl	32(%esp), %eax
	testl	%eax, %eax
	je	.L2661
	.p2align 4,,10
	.p2align 3
.L2751:
	movl	36(%esp), %eax
	movl	%ebx, 20(%esp)
	xorl	%ecx, %ecx
	movzbl	1(%eax,%ebx,4), %esi
	movzbl	(%eax,%ebx,4), %edi
	movl	%esi, %edx
	movzbl	2(%eax,%ebx,4), %esi
	movzbl	3(%eax,%ebx,4), %eax
	movl	%edx, %ebx
	movl	%eax, 8(%esp)
	leal	60(%esp), %eax
	.p2align 4,,10
	.p2align 3
.L2660:
	movl	%edi, %edx
	movl	%ebx, %ebp
	sarl	%cl, %edx
	sarl	%cl, %ebp
	andl	$1, %ebp
	andl	$1, %edx
	leal	0(%ebp,%edx,2), %edx
	movl	%esi, %ebp
	sarl	%cl, %ebp
	andl	$1, %ebp
	leal	0(%ebp,%edx,2), %edx
	movl	8(%esp), %ebp
	sarl	%cl, %ebp
	andl	$1, %ebp
	leal	0(%ebp,%edx,2), %edx
	leal	(%eax,%edx,4), %ebp
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	.L2803
.L2659:
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	.L2660
	movl	20(%esp), %ebx
	movl	%ebx, 64(%eax)
	addl	$1, %ebx
	cmpl	32(%esp), %ebx
	jne	.L2751
	cmpl	$16, 24(%esp)
	jne	.L2658
	.p2align 4,,10
	.p2align 3
.L2777:
	cmpl	$16, 28(%esp)
	jne	.L2658
	movl	16(%esp), %eax
	testl	%eax, %eax
	je	.L2716
	movl	160(%esp), %ebp
	xorl	%ebx, %ebx
	movl	%ebp, %edi
	jmp	.L2667
	.p2align 4,,10
	.p2align 3
.L2663:
	cmpl	$2, %eax
	je	.L2804
	cmpl	$4, %eax
	je	.L2805
	cmpl	$6, %eax
	jne	.L2664
	movl	%edx, %eax
	movb	%dl, 1(%edi,%ebx,8)
	movb	%cl, 5(%edi,%ebx,8)
	shrw	$8, %ax
	movb	%al, (%edi,%ebx,8)
	movl	%esi, %eax
	shrw	$8, %ax
	movb	%al, 2(%edi,%ebx,8)
	movl	%esi, %eax
	movzwl	8(%esp), %esi
	movb	%al, 3(%edi,%ebx,8)
	movl	%ecx, %eax
	shrw	$8, %ax
	movb	%al, 4(%edi,%ebx,8)
	movl	%esi, %eax
	shrw	$8, %ax
	movb	%al, 6(%edi,%ebx,8)
	movl	%esi, %eax
	movb	%al, 7(%edi,%ebx,8)
	.p2align 4,,10
	.p2align 3
.L2664:
	addl	$1, %ebx
	addl	$6, %ebp
	cmpl	16(%esp), %ebx
	je	.L2806
.L2667:
	xorl	%eax, %eax
	xorl	%esi, %esi
	movw	%ax, 54(%esp)
	xorl	%eax, %eax
	movw	%si, 52(%esp)
	movw	%ax, 56(%esp)
	xorl	%eax, %eax
	movw	%ax, 58(%esp)
	pushl	172(%esp)
	.cfi_def_cfa_offset 164
	pushl	%ebx
	.cfi_def_cfa_offset 168
	pushl	172(%esp)
	.cfi_def_cfa_offset 172
	leal	70(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 176
	leal	72(%esp), %ecx
	leal	70(%esp), %edx
	leal	68(%esp), %eax
	call	getPixelColorRGBA16
	movzwl	74(%esp), %eax
	movzwl	72(%esp), %ecx
	movzwl	70(%esp), %esi
	movzwl	68(%esp), %edx
	movw	%ax, 24(%esp)
	movl	184(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 160
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2663
	movl	%edx, %eax
	movb	%dl, 1(%edi,%ebx,2)
	shrw	$8, %ax
	movb	%al, (%edi,%ebx,2)
	jmp	.L2664
	.p2align 4,,10
	.p2align 3
.L2803:
	movl	%ecx, 40(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 172
	pushl	$68
	.cfi_def_cfa_offset 176
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 160
	movl	%eax, 0(%ebp)
	movl	40(%esp), %ecx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	movl	$0, 44(%eax)
	movl	$0, 48(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$-1, 64(%eax)
	movl	0(%ebp), %eax
	jmp	.L2659
	.p2align 4,,10
	.p2align 3
.L2798:
	movl	164(%esp), %eax
	movzbl	(%eax,%esi), %eax
	jmp	.L2682
.L2720:
	xorl	%ebx, %ebx
	jmp	.L2676
.L2800:
	movzbl	(%eax,%esi,2), %eax
	movl	%eax, %ebx
	movb	%al, 12(%esp)
	movl	164(%esp), %eax
	movb	%bl, 24(%esp)
	movl	%ebx, %ebp
	movzbl	1(%eax,%esi,2), %eax
	movb	%al, 28(%esp)
	jmp	.L2674
.L2801:
	movl	160(%esp), %edi
	movl	%ebp, %eax
	movb	%al, (%edi,%esi,2)
	movzbl	28(%esp), %eax
	movb	%al, 1(%edi,%esi,2)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
.L2790:
	movb	%al, (%edi,%esi,4)
	movzbl	24(%esp), %eax
	movb	%al, 1(%edi,%esi,4)
	movzbl	12(%esp), %eax
	movb	%al, 2(%edi,%esi,4)
	movzbl	28(%esp), %eax
	movb	%al, 3(%edi,%esi,4)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
.L2785:
	movzbl	(%eax,%esi,4), %ebp
	movzbl	1(%eax,%esi,4), %eax
	movb	%al, 24(%esp)
	movl	164(%esp), %eax
	movzbl	2(%eax,%esi,4), %eax
	movb	%al, 12(%esp)
	movl	164(%esp), %eax
	movzbl	3(%eax,%esi,4), %eax
	movb	%al, 28(%esp)
	jmp	.L2674
.L2797:
	movb	%bl, (%edi,%eax)
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2690
.L2799:
	movl	168(%esp), %edi
	movl	172(%esp), %esi
	movl	20(%esi), %esi
	cmpl	%esi, 20(%edi)
	jne	.L2640
	movl	172(%esp), %esi
	movl	24(%esi), %esi
	cmpl	%esi, 24(%edi)
	jne	.L2640
	movl	172(%esp), %esi
	movl	28(%esi), %esi
	cmpl	%esi, 28(%edi)
	jne	.L2640
	jmp	.L2641
	.p2align 4,,10
	.p2align 3
.L2804:
	movl	%edx, %eax
	movb	%dl, 1(%ebp)
	movb	%cl, 5(%ebp)
	shrw	$8, %ax
	movb	%al, 0(%ebp)
	movl	%esi, %eax
	shrw	$8, %ax
	movb	%al, 2(%ebp)
	movl	%esi, %eax
	movb	%al, 3(%ebp)
	movl	%ecx, %eax
	shrw	$8, %ax
	movb	%al, 4(%ebp)
	jmp	.L2664
.L2713:
	movl	160(%esp), %ebx
	movl	164(%esp), %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2647:
	movzbl	(%esi,%eax), %ecx
	movb	%cl, (%ebx,%eax)
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L2647
	jmp	.L2771
.L2805:
	movzwl	8(%esp), %esi
	movl	%edx, %eax
	movb	%dl, 1(%edi,%ebx,4)
	shrw	$8, %ax
	movb	%al, (%edi,%ebx,4)
	movl	%esi, %eax
	shrw	$8, %ax
	movb	%al, 2(%edi,%ebx,4)
	movl	%esi, %eax
	movb	%al, 3(%edi,%ebx,4)
	jmp	.L2664
.L2806:
	movl	168(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	jmp	.L2662
.L2728:
	xorl	%eax, %eax
	jmp	.L2682
.L2802:
	subl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 168
	movl	$1, %ecx
	pushl	180(%esp)
	.cfi_def_cfa_offset 172
	pushl	176(%esp)
	.cfi_def_cfa_offset 176
	jmp	.L2770
.L2712:
	.cfi_restore_state
	movl	%edi, 24(%esp)
	movl	%edi, 28(%esp)
	jmp	.L2640
.L2716:
	movl	12(%esp), %eax
	movl	%eax, 8(%esp)
	jmp	.L2662
.L2711:
	movl	24(%esp), %eax
	movl	%eax, 28(%esp)
	jmp	.L2640
	.cfi_endproc
.LFE162:
	.size	lodepng_convert, .-lodepng_convert
	.section	.text.unlikely
.LCOLDE96:
	.text
.LHOTE96:
	.section	.text.unlikely
.LCOLDB97:
	.text
.LHOTB97:
	.p2align 4,,15
	.globl	lodepng_color_profile_init
	.type	lodepng_color_profile_init, @function
lodepng_color_profile_init:
.LFB163:
	.cfi_startproc
	movl	4(%esp), %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movw	%dx, 12(%eax)
	xorl	%edx, %edx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movw	%cx, 10(%eax)
	movw	%dx, 8(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$1, 1048(%eax)
	ret
	.cfi_endproc
.LFE163:
	.size	lodepng_color_profile_init, .-lodepng_color_profile_init
	.section	.text.unlikely
.LCOLDE97:
	.text
.LHOTE97:
	.section	.text.unlikely
.LCOLDB98:
	.text
.LHOTB98:
	.p2align 4,,15
	.globl	lodepng_get_color_profile
	.type	lodepng_get_color_profile, @function
lodepng_get_color_profile:
.LFB165:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$172, %esp
	.cfi_def_cfa_offset 192
	movl	204(%esp), %eax
	movl	$0, 24(%esp)
	imull	200(%esp), %eax
	movl	%eax, 48(%esp)
	movl	208(%esp), %eax
	movl	(%eax), %ecx
	xorl	%eax, %eax
	testl	$-5, %ecx
	sete	%al
	movl	%eax, 12(%esp)
	movl	208(%esp), %eax
	movl	16(%eax), %edi
	testl	%edi, %edi
	jne	.L2809
	testb	$4, %cl
	jne	.L2809
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	.L2923
	movl	8(%eax), %ebx
	cmpb	$-1, 3(%ebx)
	jne	.L2809
	xorl	%eax, %eax
	jmp	.L2810
	.p2align 4,,10
	.p2align 3
.L2811:
	cmpb	$-1, 3(%ebx,%eax,4)
	jne	.L2925
.L2810:
	addl	$1, %eax
	cmpl	%edx, %eax
	jne	.L2811
.L2923:
	movl	$1, 24(%esp)
	.p2align 4,,10
	.p2align 3
.L2809:
	movl	208(%esp), %eax
	cmpl	$6, %ecx
	movl	4(%eax), %edx
	ja	.L2926
	movl	CSWTCH.141(,%ecx,4), %eax
	imull	%edx, %eax
	cmpl	$1, %eax
	movl	%eax, %esi
	movl	%eax, 56(%esp)
	sete	%al
	cmpl	$8, %esi
	movzbl	%al, %eax
	movl	%eax, 52(%esp)
	jbe	.L3047
	movl	$257, 68(%esp)
.L2812:
	leal	92(%esp), %edi
	xorl	%eax, %eax
	movl	$16, %ecx
	cmpl	$16, %edx
	movl	$-1, 156(%esp)
	rep stosl
	je	.L3048
.L2813:
	movl	48(%esp), %esi
	testl	%esi, %esi
	je	.L2963
	xorl	%ebx, %ebx
	movl	$0, 60(%esp)
	movb	$0, 20(%esp)
	movb	$0, 32(%esp)
	movb	$0, 66(%esp)
	xorl	%ebp, %ebp
	movl	$0, 16(%esp)
	movb	%bl, 65(%esp)
	.p2align 4,,10
	.p2align 3
.L2881:
	movl	208(%esp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	.L2843
	movl	208(%esp), %eax
	movl	4(%eax), %eax
	cmpl	$8, %eax
	je	.L3049
	cmpl	$16, %eax
	je	.L3050
	movl	$1, %edx
	movl	%eax, %ecx
	movl	16(%esp), %edi
	sall	%cl, %edx
	leal	-1(%edx), %esi
	imull	%eax, %edi
	testl	%eax, %eax
	movl	%esi, 8(%esp)
	je	.L2938
	movl	196(%esp), %esi
	addl	%edi, %eax
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L2848:
	movl	%edi, %edx
	movl	%edi, %ecx
	addl	%ebx, %ebx
	shrl	$3, %edx
	notl	%ecx
	addl	$1, %edi
	movzbl	(%esi,%edx), %edx
	andl	$7, %ecx
	sarl	%cl, %edx
	andl	$1, %edx
	orl	%edx, %ebx
	cmpl	%eax, %edi
	jne	.L2848
	movl	%ebx, %eax
	sall	$8, %eax
	subl	%ebx, %eax
.L2847:
	xorl	%edx, %edx
	movl	208(%esp), %esi
	divl	8(%esp)
	movl	16(%esi), %edi
	testl	%edi, %edi
	movb	%al, 65(%esp)
	je	.L2939
	cmpl	20(%esi), %ebx
	movb	%al, 32(%esp)
	movb	%al, 66(%esp)
	setne	%dl
	negl	%edx
	movb	%dl, 20(%esp)
	.p2align 4,,10
	.p2align 3
.L2845:
	movl	192(%esp), %eax
	movl	1048(%eax), %edx
	movl	52(%esp), %eax
	testl	%eax, %eax
	jne	.L2860
	cmpl	$7, %edx
	ja	.L2860
	movzbl	65(%esp), %eax
	subl	$1, %eax
	cmpb	$-3, %al
	ja	.L2948
	movzbl	65(%esp), %ecx
	movl	%ecx, %esi
	movl	%ecx, %eax
	sall	$4, %esi
	sall	$8, %eax
	movl	%esi, %ebx
	subl	%ebx, %eax
	addl	%ecx, %eax
	shrw	$12, %ax
	movl	%eax, %ebx
	sall	$4, %ebx
	addl	%ebx, %eax
	cmpb	%al, 65(%esp)
	jne	.L2949
	leal	(%ecx,%ecx,2), %eax
	movl	$85, %ebx
	sall	$6, %eax
	addl	%ecx, %eax
	shrw	$14, %ax
	imull	%ebx, %eax
	movzbl	65(%esp), %ebx
	subl	%eax, %ebx
	cmpb	$1, %bl
	sbbl	%eax, %eax
	andl	$-2, %eax
	addl	$4, %eax
.L2861:
	cmpl	%eax, %edx
	jb	.L2862
	.p2align 4,,10
	.p2align 3
.L2860:
	cmpl	%edx, 56(%esp)
	movl	12(%esp), %edi
	setbe	30(%esp)
	movzbl	30(%esp), %eax
	testl	%edi, %edi
	movl	%eax, 52(%esp)
	jne	.L2865
	movzbl	65(%esp), %eax
	movzbl	66(%esp), %ebx
	cmpb	%bl, %al
	setne	%cl
	cmpb	32(%esp), %al
	setne	%al
	orb	%al, %cl
	movb	%cl, 67(%esp)
	je	.L2864
	movl	192(%esp), %eax
	cmpl	$7, %edx
	movl	$1, (%eax)
	ja	.L2865
	movl	$8, 1048(%eax)
	movl	$1, 12(%esp)
.L2864:
	movl	24(%esp), %esi
	testl	%esi, %esi
	jne	.L3035
	movl	192(%esp), %eax
	movzbl	65(%esp), %edx
	cmpw	8(%eax), %dx
	je	.L3051
.L2868:
	cmpb	$-1, 20(%esp)
	je	.L3036
	cmpb	$0, 20(%esp)
	jne	.L2871
	movl	192(%esp), %eax
	movl	4(%eax), %ecx
	testl	%ecx, %ecx
	je	.L2872
.L2871:
	movl	192(%esp), %eax
	cmpl	$7, 1048(%eax)
	movl	$1, 16(%eax)
	movl	$0, 4(%eax)
	jbe	.L3052
.L3035:
	movl	$1, %eax
	movl	$1, 24(%esp)
.L2867:
	testl	%ebp, %ebp
	jne	.L2953
	movzbl	65(%esp), %esi
	movzbl	66(%esp), %ecx
	movzbl	20(%esp), %edi
	movl	%esi, %eax
	movl	%esi, 8(%esp)
	movzbl	%cl, %ebx
	andl	$1, %eax
	movzbl	32(%esp), %esi
	movl	%eax, %edx
	movl	%ecx, %eax
	andl	$1, %eax
	leal	(%eax,%edx,2), %edx
	movl	32(%esp), %eax
	andl	$1, %eax
	leal	(%eax,%edx,2), %edx
	movl	20(%esp), %eax
	andl	$1, %eax
	leal	(%eax,%edx,2), %eax
	movl	92(%esp,%eax,4), %edx
	testl	%edx, %edx
	je	.L2875
	movl	8(%esp), %ecx
	movl	%ebx, %eax
	sarl	%eax
	andl	$1, %eax
	andl	$2, %ecx
	addl	%ecx, %eax
	movl	%esi, %ecx
	sarl	%ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	%edi, %eax
	sarl	%eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2875
	movl	8(%esp), %eax
	movl	%ebx, %ecx
	sarl	$2, %ecx
	andl	$1, %ecx
	shrl	%eax
	andl	$2, %eax
	addl	%ecx, %eax
	movl	%esi, %ecx
	sarl	$2, %ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	%edi, %eax
	sarl	$2, %eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2875
	movl	8(%esp), %eax
	movl	%ebx, %ecx
	sarl	$3, %ecx
	andl	$1, %ecx
	shrl	$2, %eax
	andl	$2, %eax
	addl	%ecx, %eax
	movl	%esi, %ecx
	sarl	$3, %ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	%edi, %eax
	sarl	$3, %eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2875
	movl	8(%esp), %eax
	movl	%ebx, %ecx
	sarl	$4, %ecx
	andl	$1, %ecx
	shrl	$3, %eax
	andl	$2, %eax
	addl	%ecx, %eax
	movl	%esi, %ecx
	sarl	$4, %ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	%edi, %eax
	sarl	$4, %eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2875
	movl	8(%esp), %eax
	movl	%ebx, %ecx
	sarl	$5, %ecx
	andl	$1, %ecx
	shrl	$4, %eax
	andl	$2, %eax
	addl	%ecx, %eax
	movl	%esi, %ecx
	sarl	$5, %ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	%edi, %eax
	sarl	$5, %eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %edx
	testl	%edx, %edx
	je	.L2875
	movl	8(%esp), %eax
	movl	%ebx, %ecx
	sarl	$6, %ecx
	andl	$1, %ecx
	shrl	$5, %eax
	andl	$2, %eax
	addl	%ecx, %eax
	movl	%esi, %ecx
	sarl	$6, %ecx
	andl	$1, %ecx
	leal	(%ecx,%eax,2), %ecx
	movl	%edi, %eax
	sarl	$6, %eax
	andl	$1, %eax
	leal	(%eax,%ecx,2), %eax
	movl	(%edx,%eax,4), %eax
	testl	%eax, %eax
	je	.L2875
	movl	8(%esp), %ecx
	movl	%ebx, %edx
	sarl	$7, %edx
	sarl	$7, %ecx
	leal	(%edx,%ecx,2), %ecx
	movl	%esi, %edx
	sarl	$7, %edx
	leal	(%edx,%ecx,2), %ecx
	movl	%edi, %edx
	sarl	$7, %edx
	leal	(%edx,%ecx,2), %edx
	movl	(%eax,%edx,4), %eax
	testl	%eax, %eax
	je	.L2875
	movl	64(%eax), %eax
	testl	%eax, %eax
	js	.L2875
.L2876:
	addl	$1, 16(%esp)
	addl	$3, 60(%esp)
	movl	16(%esp), %eax
	cmpl	48(%esp), %eax
	jne	.L2881
.L3030:
	movzbl	65(%esp), %ebx
.L2818:
	movl	192(%esp), %eax
	movl	4(%eax), %edi
	testl	%edi, %edi
	je	.L2884
	movl	16(%eax), %esi
	testl	%esi, %esi
	jne	.L2884
	movl	48(%esp), %ecx
	testl	%ecx, %ecx
	je	.L2884
	movl	208(%esp), %eax
	xorl	%esi, %esi
	movl	$0, 12(%esp)
	movzbl	20(%esp), %ecx
	movzbl	66(%esp), %ebp
	movl	196(%esp), %edi
	movl	(%eax), %eax
	movl	%eax, 8(%esp)
	movl	192(%esp), %eax
	movl	8(%esp), %edx
	movzwl	8(%eax), %eax
	testl	%edx, %edx
	movw	%ax, 16(%esp)
	movl	192(%esp), %eax
	movzwl	10(%eax), %eax
	movw	%ax, 24(%esp)
	movl	192(%esp), %eax
	movzwl	12(%eax), %eax
	movw	%ax, 30(%esp)
	movl	%ebx, %eax
	movzbl	32(%esp), %ebx
	jne	.L2885
	.p2align 4,,10
	.p2align 3
.L3056:
	movl	208(%esp), %eax
	movl	4(%eax), %eax
	cmpl	$8, %eax
	je	.L3053
	cmpl	$16, %eax
	je	.L3054
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	leal	-1(%edx), %ebx
	movl	%ebx, 20(%esp)
	movl	%esi, %ebx
	imull	%eax, %ebx
	testl	%eax, %eax
	je	.L2957
	xorl	%ecx, %ecx
	leal	(%ebx,%eax), %ebp
	movl	%ecx, %edx
	.p2align 4,,10
	.p2align 3
.L2893:
	movl	%ebx, %eax
	movl	%ebx, %ecx
	addl	%edx, %edx
	shrl	$3, %eax
	notl	%ecx
	addl	$1, %ebx
	movzbl	(%edi,%eax), %eax
	andl	$7, %ecx
	sarl	%cl, %eax
	andl	$1, %eax
	orl	%eax, %edx
	cmpl	%ebp, %ebx
	jne	.L2893
	movl	%edx, %eax
	movl	%edx, %ecx
	sall	$8, %eax
	subl	%edx, %eax
.L2892:
	xorl	%edx, %edx
	divl	20(%esp)
	movl	208(%esp), %edx
	movl	16(%edx), %ebp
	movl	%eax, %ebx
	testl	%ebp, %ebp
	je	.L3038
	cmpl	20(%edx), %ecx
	je	.L2958
.L3038:
	movzbl	%al, %edx
	movl	%eax, %ebp
.L2889:
	movl	$-1, %ecx
.L2915:
	cmpw	16(%esp), %dx
	je	.L3055
.L2912:
	addl	$1, %esi
	addl	$3, 12(%esp)
	cmpl	48(%esp), %esi
	je	.L2883
	movl	8(%esp), %edx
	testl	%edx, %edx
	je	.L3056
.L2885:
	cmpl	$2, 8(%esp)
	je	.L3057
	cmpl	$3, 8(%esp)
	je	.L3058
	cmpl	$4, 8(%esp)
	je	.L3059
	cmpl	$6, 8(%esp)
	je	.L3060
.L2908:
	testb	%cl, %cl
	je	.L2912
	movzbl	%al, %edx
	jmp	.L2915
	.p2align 4,,10
	.p2align 3
.L2926:
	movl	$0, 56(%esp)
	movl	$0, 52(%esp)
	movl	$256, 68(%esp)
	jmp	.L2812
.L3047:
	cmpl	$1, %esi
	movl	$2, 68(%esp)
	je	.L2812
	cmpl	$2, %esi
	movl	$4, 68(%esp)
	je	.L2812
	cmpl	$4, %esi
	setne	%al
	movzbl	%al, %eax
	subl	$1, %eax
	andb	$16, %al
	addl	$256, %eax
	movl	%eax, 68(%esp)
	jmp	.L2812
	.p2align 4,,10
	.p2align 3
.L2884:
	movl	192(%esp), %eax
	movzwl	8(%eax), %eax
	movw	%ax, 16(%esp)
	movl	192(%esp), %eax
	movzwl	10(%eax), %eax
	movw	%ax, 24(%esp)
	movl	192(%esp), %eax
	movzwl	12(%eax), %eax
	movw	%ax, 30(%esp)
.L2883:
	movzwl	16(%esp), %esi
	movzwl	24(%esp), %edi
	movl	%esi, %eax
	sall	$8, %eax
	addl	%esi, %eax
	movl	192(%esp), %esi
	movw	%ax, 8(%esi)
	movl	%edi, %eax
	sall	$8, %eax
	addl	%edi, %eax
	movl	192(%esp), %edi
	movw	%ax, 10(%esi)
	movzwl	30(%esp), %esi
	movl	%esi, %eax
	sall	$8, %eax
	addl	%esi, %eax
	movw	%ax, 12(%edi)
.L2839:
	leal	92(%esp), %eax
	call	color_tree_cleanup
	addl	$172, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	xorl	%eax, %eax
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
	.p2align 4,,10
	.p2align 3
.L2865:
	.cfi_restore_state
	movb	$1, 67(%esp)
	movl	$1, 12(%esp)
	jmp	.L2864
	.p2align 4,,10
	.p2align 3
.L2953:
	movl	$1, %ebp
.L2874:
	testb	%al, %al
	je	.L2876
	cmpb	$0, 30(%esp)
	je	.L2876
	cmpb	$0, 67(%esp)
	je	.L2876
	jmp	.L3030
	.p2align 4,,10
	.p2align 3
.L2843:
	cmpl	$2, %eax
	je	.L3061
	cmpl	$3, %eax
	je	.L3062
	cmpl	$4, %eax
	je	.L3063
	cmpl	$6, %eax
	jne	.L2845
	movl	208(%esp), %eax
	movl	196(%esp), %edi
	movl	16(%esp), %esi
	cmpl	$8, 4(%eax)
	je	.L3064
	movzbl	(%edi,%esi,8), %eax
	movb	%al, 65(%esp)
	movzbl	2(%edi,%esi,8), %eax
	movb	%al, 66(%esp)
	movzbl	4(%edi,%esi,8), %eax
	movb	%al, 32(%esp)
	movzbl	6(%edi,%esi,8), %eax
	movb	%al, 20(%esp)
	jmp	.L2845
	.p2align 4,,10
	.p2align 3
.L3065:
	movl	192(%esp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	.L2871
	.p2align 4,,10
	.p2align 3
.L3036:
	xorl	%eax, %eax
	jmp	.L2867
	.p2align 4,,10
	.p2align 3
.L3049:
	movl	196(%esp), %eax
	movl	16(%esp), %edi
	movl	208(%esp), %esi
	movzbl	(%eax,%edi), %eax
	movl	16(%esi), %ecx
	testl	%ecx, %ecx
	movl	%eax, %ebx
	movb	%al, 65(%esp)
	je	.L2937
.L3034:
	cmpl	20(%esi), %eax
	movb	%bl, 32(%esp)
	movb	%bl, 66(%esp)
	setne	%al
	negl	%eax
	movb	%al, 20(%esp)
	jmp	.L2845
	.p2align 4,,10
	.p2align 3
.L3051:
	movl	%eax, %edi
	movzbl	66(%esp), %eax
	cmpw	10(%edi), %ax
	jne	.L2868
	movzbl	32(%esp), %eax
	cmpw	12(%edi), %ax
	jne	.L2868
	cmpb	$-1, 20(%esp)
	je	.L3065
	cmpb	$0, 20(%esp)
	jne	.L2871
	movl	192(%esp), %eax
	movl	4(%eax), %ecx
	.p2align 4,,10
	.p2align 3
.L2872:
	movl	192(%esp), %edi
	xorl	%eax, %eax
	movl	16(%edi), %ebx
	testl	%ebx, %ebx
	jne	.L2867
	testl	%ecx, %ecx
	jne	.L2867
	movw	%dx, 8(%edi)
	movzbl	66(%esp), %edx
	movl	$1, 4(%edi)
	movw	%dx, 10(%edi)
	movzbl	32(%esp), %edx
	movw	%dx, 12(%edi)
	jmp	.L2867
	.p2align 4,,10
	.p2align 3
.L3061:
	movl	208(%esp), %eax
	movl	196(%esp), %esi
	movl	60(%esp), %edi
	cmpl	$8, 4(%eax)
	je	.L3066
	movzbl	2(%esi,%edi,2), %ebx
	movzbl	(%esi,%edi,2), %eax
	movb	$-1, 20(%esp)
	movb	%bl, 66(%esp)
	movzbl	4(%esi,%edi,2), %ebx
	movl	208(%esp), %esi
	movb	%al, 65(%esp)
	movl	16(%esi), %edx
	movb	%bl, 32(%esp)
	testl	%edx, %edx
	je	.L2845
	movl	196(%esp), %esi
	sall	$8, %eax
	movzbl	1(%esi,%edi,2), %edx
	movl	208(%esp), %edi
	addl	%edx, %eax
	cmpl	20(%edi), %eax
	jne	.L2845
	movzbl	66(%esp), %eax
	movl	60(%esp), %edi
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	3(%esi,%edi,2), %eax
	movl	208(%esp), %esi
	addl	%edx, %eax
	cmpl	24(%esi), %eax
	jne	.L2845
	movzbl	%bl, %eax
	movl	208(%esp), %esi
	sall	$8, %eax
	movl	%eax, %edx
	movl	196(%esp), %eax
	movzbl	5(%eax,%edi,2), %eax
	addl	%edx, %eax
	cmpl	28(%esi), %eax
	setne	%al
	negl	%eax
	movb	%al, 20(%esp)
	jmp	.L2845
	.p2align 4,,10
	.p2align 3
.L2949:
	movl	$8, %eax
.L2862:
	movl	192(%esp), %edi
	movl	%eax, %edx
	movl	%eax, 1048(%edi)
	jmp	.L2860
	.p2align 4,,10
	.p2align 3
.L2948:
	movl	$1, %eax
	jmp	.L2861
.L3052:
	movl	$8, 1048(%eax)
	jmp	.L3035
	.p2align 4,,10
	.p2align 3
.L3050:
	movl	196(%esp), %edi
	movl	16(%esp), %esi
	movzbl	(%edi,%esi,2), %eax
	movl	208(%esp), %edi
	movl	16(%edi), %edx
	movl	%eax, %ebx
	movb	%al, 65(%esp)
	testl	%edx, %edx
	je	.L2937
	movl	196(%esp), %edi
	sall	$8, %eax
	movzbl	1(%edi,%esi,2), %edx
	movl	208(%esp), %esi
	addl	%edx, %eax
	jmp	.L3034
	.p2align 4,,10
	.p2align 3
.L2939:
	movb	%al, 32(%esp)
	movb	%al, 66(%esp)
	movb	$-1, 20(%esp)
	jmp	.L2845
	.p2align 4,,10
	.p2align 3
.L3062:
	movl	208(%esp), %eax
	movl	4(%eax), %esi
	cmpl	$8, %esi
	je	.L3067
	movl	16(%esp), %ebx
	imull	%esi, %ebx
	testl	%esi, %esi
	je	.L2946
	movl	196(%esp), %edi
	addl	%ebx, %esi
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2855:
	movl	%ebx, %edx
	movl	%ebx, %ecx
	addl	%eax, %eax
	shrl	$3, %edx
	notl	%ecx
	addl	$1, %ebx
	movzbl	(%edi,%edx), %edx
	andl	$7, %ecx
	sarl	%cl, %edx
	andl	$1, %edx
	orl	%edx, %eax
	cmpl	%esi, %ebx
	jne	.L2855
.L2853:
	movl	208(%esp), %edi
	cmpl	%eax, 12(%edi)
	jbe	.L2947
	movl	8(%edi), %edx
	leal	0(,%eax,4), %ecx
	movzbl	(%edx,%eax,4), %eax
	movb	%al, 65(%esp)
	movzbl	1(%edx,%ecx), %eax
	movb	%al, 66(%esp)
	movzbl	2(%edx,%ecx), %eax
	movb	%al, 32(%esp)
	movzbl	3(%edx,%ecx), %eax
	movb	%al, 20(%esp)
	jmp	.L2845
	.p2align 4,,10
	.p2align 3
.L2937:
	movb	%bl, 32(%esp)
	movb	%bl, 66(%esp)
	movb	$-1, 20(%esp)
	jmp	.L2845
	.p2align 4,,10
	.p2align 3
.L3063:
	movl	208(%esp), %eax
	movl	196(%esp), %edi
	movl	16(%esp), %esi
	cmpl	$8, 4(%eax)
	je	.L3068
	movzbl	(%edi,%esi,4), %eax
	movzbl	2(%edi,%esi,4), %ebx
	movb	%al, 65(%esp)
	movb	%bl, 20(%esp)
	movb	%al, 32(%esp)
	movb	%al, 66(%esp)
	jmp	.L2845
	.p2align 4,,10
	.p2align 3
.L2875:
	movl	192(%esp), %eax
	xorl	%ecx, %ecx
	movl	20(%eax), %eax
	movl	%eax, 72(%esp)
	leal	92(%esp), %eax
	.p2align 4,,10
	.p2align 3
.L2878:
	movl	8(%esp), %edx
	movl	%ebx, %ebp
	sarl	%cl, %ebp
	andl	$1, %ebp
	sarl	%cl, %edx
	andl	$1, %edx
	leal	0(%ebp,%edx,2), %edx
	movl	%esi, %ebp
	sarl	%cl, %ebp
	andl	$1, %ebp
	leal	0(%ebp,%edx,2), %edx
	movl	%edi, %ebp
	sarl	%cl, %ebp
	andl	$1, %ebp
	leal	0(%ebp,%edx,2), %edx
	leal	(%eax,%edx,4), %ebp
	movl	0(%ebp), %eax
	testl	%eax, %eax
	je	.L3069
.L2877:
	addl	$1, %ecx
	cmpl	$8, %ecx
	jne	.L2878
	movl	72(%esp), %edi
	cmpl	$255, %edi
	movl	%edi, 64(%eax)
	ja	.L2879
	movl	192(%esp), %eax
	movzbl	65(%esp), %ebx
	leal	24(%eax), %edx
	movl	%edi, %eax
	movl	192(%esp), %edi
	sall	$2, %eax
	movb	%bl, 24(%edi,%eax)
	movzbl	66(%esp), %ebx
	movb	%bl, 1(%edx,%eax)
	movzbl	32(%esp), %ebx
	movb	%bl, 2(%edx,%eax)
	movzbl	20(%esp), %ebx
	movb	%bl, 3(%edx,%eax)
.L2879:
	movl	192(%esp), %eax
	movl	192(%esp), %esi
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	addl	$1, %eax
	cmpl	%eax, 68(%esp)
	movl	%eax, 20(%esi)
	setbe	%al
	movzbl	%al, %eax
	movl	%eax, %ebp
	movzbl	24(%esp), %eax
	andl	%ebp, %eax
	jmp	.L2874
	.p2align 4,,10
	.p2align 3
.L2947:
	movb	$-1, 20(%esp)
	movb	$0, 32(%esp)
	movb	$0, 66(%esp)
	movb	$0, 65(%esp)
	jmp	.L2845
	.p2align 4,,10
	.p2align 3
.L3066:
	movzbl	1(%esi,%edi), %ebx
	movzbl	(%esi,%edi), %eax
	movb	$-1, 20(%esp)
	movb	%bl, 66(%esp)
	movzbl	2(%esi,%edi), %ebx
	movl	208(%esp), %esi
	movb	%al, 65(%esp)
	movl	16(%esi), %ecx
	movb	%bl, 32(%esp)
	testl	%ecx, %ecx
	je	.L2845
	cmpl	20(%esi), %eax
	jne	.L2845
	movzbl	66(%esp), %eax
	cmpl	24(%esi), %eax
	jne	.L2845
	movzbl	%bl, %eax
	cmpl	28(%esi), %eax
	setne	%al
	negl	%eax
	movb	%al, 20(%esp)
	jmp	.L2845
	.p2align 4,,10
	.p2align 3
.L3048:
	movl	48(%esp), %eax
	testl	%eax, %eax
	je	.L2963
	xorl	%ebx, %ebx
	movl	%eax, %ebp
	movl	196(%esp), %esi
	movl	208(%esp), %edi
	jmp	.L2816
	.p2align 4,,10
	.p2align 3
.L3070:
	movzwl	86(%esp), %eax
	movl	%eax, %edx
	shrw	$8, %dx
	xorl	%edx, %eax
	testb	%al, %al
	jne	.L2815
	movzwl	88(%esp), %eax
	movl	%eax, %edx
	shrw	$8, %dx
	xorl	%edx, %eax
	testb	%al, %al
	jne	.L2815
	movzwl	90(%esp), %eax
	movl	%eax, %edx
	shrw	$8, %dx
	xorl	%edx, %eax
	testb	%al, %al
	jne	.L2815
	addl	$1, %ebx
	cmpl	%ebp, %ebx
	je	.L2813
.L2816:
	pushl	%edi
	.cfi_def_cfa_offset 196
	pushl	%ebx
	.cfi_def_cfa_offset 200
	pushl	%esi
	.cfi_def_cfa_offset 204
	leal	102(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 208
	leal	102(%esp), %edx
	leal	100(%esp), %eax
	leal	104(%esp), %ecx
	call	getPixelColorRGBA16
	movzwl	100(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 192
	movl	%eax, %edx
	shrw	$8, %dx
	xorl	%edx, %eax
	testb	%al, %al
	je	.L3070
.L2815:
	xorl	%eax, %eax
	movl	196(%esp), %edi
	xorl	%ecx, %ecx
	movw	%ax, 84(%esp)
	movl	192(%esp), %eax
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edx, %edx
	movw	%cx, 88(%esp)
	movw	%bx, 90(%esp)
	movw	%si, 16(%esp)
	xorl	%ecx, %ecx
	movl	$16, 1048(%eax)
	movl	208(%esp), %eax
	xorl	%ebx, %ebx
	movl	%edi, 8(%esp)
	movw	%dx, 86(%esp)
	xorl	%esi, %esi
	movl	(%eax), %ebp
	xorl	%eax, %eax
	movl	%ebp, %edi
	.p2align 4,,10
	.p2align 3
.L2837:
	testl	%edi, %edi
	jne	.L2819
	movl	196(%esp), %eax
	movzbl	(%eax,%esi,2), %edx
	movzbl	1(%eax,%esi,2), %ecx
	movl	%edx, %ebx
	movl	%ecx, %eax
	sall	$8, %ebx
	addl	%ebx, %ecx
	movl	208(%esp), %ebx
	movl	16(%ebx), %ebx
	testl	%ebx, %ebx
	je	.L2931
	sall	$8, %edx
	movw	%cx, 16(%esp)
	movl	%ecx, %ebx
	addl	%edx, %eax
	movl	208(%esp), %edx
	cmpl	20(%edx), %eax
	je	.L2823
.L2820:
	movl	$-1, %eax
.L2821:
	movl	12(%esp), %ebp
	testl	%ebp, %ebp
	jne	.L2826
	cmpw	%cx, %bx
	je	.L2825
.L2827:
	movl	192(%esp), %edx
	movl	$1, (%edx)
.L2826:
	movl	24(%esp), %edx
	testl	%edx, %edx
	je	.L2961
.L3033:
	movw	%ax, 90(%esp)
	movzwl	16(%esp), %eax
	movw	%cx, 84(%esp)
	movw	%bx, 86(%esp)
	movw	%ax, 88(%esp)
	movl	192(%esp), %eax
	movl	4(%eax), %esi
	testl	%esi, %esi
	je	.L2839
	movl	16(%eax), %ebx
	testl	%ebx, %ebx
	jne	.L2839
	xorl	%ebx, %ebx
	movl	48(%esp), %ebp
	movl	196(%esp), %esi
	movl	208(%esp), %edi
	jmp	.L2842
	.p2align 4,,10
	.p2align 3
.L2841:
	addl	$1, %ebx
	cmpl	%ebp, %ebx
	je	.L2839
.L2842:
	pushl	%edi
	.cfi_def_cfa_offset 196
	pushl	%ebx
	.cfi_def_cfa_offset 200
	pushl	%esi
	.cfi_def_cfa_offset 204
	leal	102(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 208
	leal	104(%esp), %ecx
	leal	102(%esp), %edx
	leal	100(%esp), %eax
	call	getPixelColorRGBA16
	addl	$16, %esp
	.cfi_def_cfa_offset 192
	cmpw	$0, 90(%esp)
	je	.L2841
	movl	192(%esp), %eax
	movzwl	84(%esp), %ecx
	cmpw	%cx, 8(%eax)
	jne	.L2841
	movzwl	86(%esp), %ecx
	cmpw	%cx, 10(%eax)
	jne	.L2841
	movzwl	88(%esp), %ecx
	cmpw	%cx, 12(%eax)
	jne	.L2841
	movl	$1, 16(%eax)
	movl	$0, 4(%eax)
	jmp	.L2841
	.p2align 4,,10
	.p2align 3
.L2819:
	cmpl	$2, %edi
	je	.L3071
	cmpl	$4, %edi
	je	.L3072
	cmpl	$6, %edi
	jne	.L2821
	movl	196(%esp), %eax
	movl	196(%esp), %edx
	movzbl	(%eax,%esi,8), %ecx
	movzbl	1(%eax,%esi,8), %eax
	movzbl	5(%edx,%esi,8), %edx
	sall	$8, %ecx
	addl	%eax, %ecx
	movl	196(%esp), %eax
	movzbl	2(%eax,%esi,8), %ebx
	movzbl	3(%eax,%esi,8), %eax
	sall	$8, %ebx
	addl	%eax, %ebx
	movl	196(%esp), %eax
	movzbl	4(%eax,%esi,8), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movl	196(%esp), %edx
	movw	%ax, 16(%esp)
	movl	196(%esp), %eax
	movzbl	7(%edx,%esi,8), %edx
	movzbl	6(%eax,%esi,8), %eax
	sall	$8, %eax
	addl	%edx, %eax
	jmp	.L2821
	.p2align 4,,10
	.p2align 3
.L2961:
	movl	$1, 12(%esp)
.L2916:
	movl	192(%esp), %edx
	cmpw	%cx, 8(%edx)
	je	.L3073
.L2829:
	cmpw	$-1, %ax
	je	.L2836
	testw	%ax, %ax
	jne	.L2832
	movl	192(%esp), %edx
	movl	4(%edx), %ebp
	testl	%ebp, %ebp
	je	.L2833
.L2832:
	movl	192(%esp), %edx
	movl	$1, 16(%edx)
	movl	$0, 4(%edx)
	movl	12(%esp), %edx
	testl	%edx, %edx
	jne	.L3033
.L3032:
	movl	$1, 24(%esp)
.L2835:
	addl	$1, %esi
	addl	$6, 8(%esp)
	cmpl	48(%esp), %esi
	jne	.L2837
	jmp	.L3033
	.p2align 4,,10
	.p2align 3
.L2931:
	movw	%cx, 16(%esp)
	movl	%ecx, %ebx
	jmp	.L2820
	.p2align 4,,10
	.p2align 3
.L3073:
	cmpw	%bx, 10(%edx)
	jne	.L2829
	movzwl	16(%esp), %ebp
	cmpw	%bp, 12(%edx)
	jne	.L2829
	cmpw	$-1, %ax
	je	.L3074
	testw	%ax, %ax
	jne	.L2832
	movl	192(%esp), %edx
	movl	4(%edx), %ebp
	.p2align 4,,10
	.p2align 3
.L2833:
	cmpl	$0, 16(%edx)
	movl	$0, 24(%esp)
	jne	.L2835
	testl	%ebp, %ebp
	jne	.L2835
	movzwl	16(%esp), %ebp
	movl	$1, 4(%edx)
	movw	%cx, 8(%edx)
	movw	%bx, 10(%edx)
	movw	%bp, 12(%edx)
.L2836:
	movl	$0, 24(%esp)
	jmp	.L2835
	.p2align 4,,10
	.p2align 3
.L3072:
	movl	196(%esp), %eax
	movl	196(%esp), %ecx
	movzbl	(%eax,%esi,4), %ebx
	movzbl	1(%eax,%esi,4), %eax
	movzbl	3(%ecx,%esi,4), %edx
	sall	$8, %ebx
	addl	%eax, %ebx
	movl	196(%esp), %eax
	movw	%bx, 16(%esp)
	movl	%ebx, %ecx
	movzbl	2(%eax,%esi,4), %eax
	sall	$8, %eax
	addl	%edx, %eax
	movl	12(%esp), %edx
	testl	%edx, %edx
	jne	.L2826
.L2825:
	cmpw	16(%esp), %bx
	jne	.L2827
	movl	24(%esp), %ebp
	movl	$0, 12(%esp)
	testl	%ebp, %ebp
	je	.L2916
	jmp	.L3032
	.p2align 4,,10
	.p2align 3
.L3071:
	movl	8(%esp), %edx
	movzbl	(%edx), %ebp
	movzbl	1(%edx), %ecx
	movzbl	3(%edx), %eax
	movl	%ebp, %ebx
	movb	%cl, 20(%esp)
	sall	$8, %ebx
	movb	%al, 65(%esp)
	addl	%ebx, %ecx
	movzbl	2(%edx), %ebx
	movb	%bl, 30(%esp)
	sall	$8, %ebx
	movl	%ebx, %edx
	movzbl	%al, %ebx
	movl	%edx, %eax
	movl	8(%esp), %edx
	addl	%eax, %ebx
	movzbl	4(%edx), %eax
	movzbl	5(%edx), %edx
	movb	%al, 32(%esp)
	sall	$8, %eax
	movb	%dl, 52(%esp)
	addl	%edx, %eax
	movw	%ax, 16(%esp)
	movl	208(%esp), %eax
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L2820
	movzbl	20(%esp), %eax
	movl	%ebp, %edx
	movzbl	%dl, %edx
	sall	$8, %edx
	addl	%edx, %eax
	movl	208(%esp), %edx
	cmpl	20(%edx), %eax
	jne	.L2820
	movzbl	30(%esp), %eax
	movzbl	65(%esp), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movl	208(%esp), %edx
	cmpl	24(%edx), %eax
	jne	.L2820
	movzbl	32(%esp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	52(%esp), %eax
	addl	%edx, %eax
	movl	208(%esp), %edx
	cmpl	28(%edx), %eax
	jne	.L2820
	.p2align 4,,10
	.p2align 3
.L2823:
	xorl	%eax, %eax
	jmp	.L2821
	.p2align 4,,10
	.p2align 3
.L3074:
	movl	192(%esp), %edx
	movl	4(%edx), %ebp
	testl	%ebp, %ebp
	jne	.L2832
	movl	$0, 24(%esp)
	jmp	.L2835
	.p2align 4,,10
	.p2align 3
.L3069:
	movl	%ecx, 76(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 204
	pushl	$68
	.cfi_def_cfa_offset 208
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 192
	movl	%eax, 0(%ebp)
	movl	76(%esp), %ecx
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$0, 36(%eax)
	movl	$0, 40(%eax)
	movl	$0, 44(%eax)
	movl	$0, 48(%eax)
	movl	$0, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$-1, 64(%eax)
	movl	0(%ebp), %eax
	jmp	.L2877
	.p2align 4,,10
	.p2align 3
.L3067:
	movl	196(%esp), %eax
	movl	16(%esp), %edi
	movzbl	(%eax,%edi), %eax
	jmp	.L2853
.L3053:
	movl	208(%esp), %eax
	movzbl	(%edi,%esi), %ebx
	movl	16(%eax), %ecx
	testl	%ecx, %ecx
	je	.L2887
	movl	%eax, %ecx
	movzbl	%bl, %eax
	cmpl	20(%ecx), %eax
	je	.L2956
.L2887:
	movzbl	%bl, %edx
	movl	%ebx, %ebp
	movl	%ebx, %eax
	jmp	.L2889
.L3055:
	movl	%ebp, %edx
	movzbl	%dl, %edx
	cmpw	24(%esp), %dx
	jne	.L2912
	movzbl	%bl, %edx
	cmpw	30(%esp), %dx
	jne	.L2912
	movl	192(%esp), %edx
	cmpl	$7, 1048(%edx)
	movl	$1, 16(%edx)
	movl	$0, 4(%edx)
	ja	.L2912
	movl	$8, 1048(%edx)
	jmp	.L2912
	.p2align 4,,10
	.p2align 3
.L3057:
	movl	208(%esp), %eax
	movl	12(%esp), %ebx
	cmpl	$8, 4(%eax)
	movl	%eax, %ecx
	je	.L3075
	movl	16(%ecx), %ecx
	movzbl	(%edi,%ebx,2), %eax
	movzbl	2(%edi,%ebx,2), %ebp
	movzbl	4(%edi,%ebx,2), %ebx
	testl	%ecx, %ecx
	je	.L3039
	movl	12(%esp), %edx
	movzbl	%al, %ecx
	sall	$8, %ecx
	movzbl	1(%edi,%edx,2), %edx
	addl	%ecx, %edx
	movl	208(%esp), %ecx
	cmpl	20(%ecx), %edx
	je	.L3076
.L3039:
	movzbl	%al, %edx
	jmp	.L2889
.L2925:
	movl	$0, 24(%esp)
	jmp	.L2809
.L2938:
	xorl	%ebx, %ebx
	jmp	.L2847
.L3068:
	movzbl	(%edi,%esi,2), %eax
	movzbl	1(%edi,%esi,2), %ebx
	movb	%al, 65(%esp)
	movb	%bl, 20(%esp)
	movb	%al, 32(%esp)
	movb	%al, 66(%esp)
	jmp	.L2845
.L3054:
	movl	208(%esp), %eax
	movzbl	(%edi,%esi,2), %ebx
	movl	16(%eax), %edx
	testl	%edx, %edx
	je	.L2887
	movl	%eax, %ecx
	movzbl	%bl, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	1(%edi,%esi,2), %eax
	addl	%edx, %eax
	cmpl	20(%ecx), %eax
	jne	.L2887
.L2956:
	movl	%ebx, %ebp
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	jmp	.L2912
.L3058:
	movl	208(%esp), %eax
	movl	4(%eax), %ebp
	cmpl	$8, %ebp
	je	.L3077
	movl	%esi, %ebx
	imull	%ebp, %ebx
	testl	%ebp, %ebp
	je	.L2959
	addl	%ebx, %ebp
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2907:
	movl	%ebx, %edx
	movl	%ebx, %ecx
	addl	%eax, %eax
	shrl	$3, %edx
	notl	%ecx
	addl	$1, %ebx
	movzbl	(%edi,%edx), %edx
	andl	$7, %ecx
	sarl	%cl, %edx
	andl	$1, %edx
	orl	%edx, %eax
	cmpl	%ebp, %ebx
	jne	.L2907
.L2905:
	movl	208(%esp), %ebx
	cmpl	%eax, 12(%ebx)
	jbe	.L2960
	movl	8(%ebx), %edx
	leal	0(,%eax,4), %ecx
	movzbl	(%edx,%eax,4), %eax
	movzbl	1(%edx,%ecx), %ebp
	movzbl	2(%edx,%ecx), %ebx
	movzbl	3(%edx,%ecx), %ecx
	jmp	.L2908
.L3064:
	movzbl	(%edi,%esi,4), %eax
	movb	%al, 65(%esp)
	movzbl	1(%edi,%esi,4), %eax
	movb	%al, 66(%esp)
	movzbl	2(%edi,%esi,4), %eax
	movb	%al, 32(%esp)
	movzbl	3(%edi,%esi,4), %eax
	movb	%al, 20(%esp)
	jmp	.L2845
.L3059:
	movl	208(%esp), %eax
	cmpl	$8, 4(%eax)
	je	.L3078
	movzbl	(%edi,%esi,4), %eax
	movzbl	2(%edi,%esi,4), %ecx
	movl	%eax, %ebx
	movl	%eax, %ebp
	jmp	.L2908
.L3060:
	movl	208(%esp), %eax
	cmpl	$8, 4(%eax)
	je	.L3079
	movzbl	(%edi,%esi,8), %eax
	movzbl	2(%edi,%esi,8), %ebp
	movzbl	4(%edi,%esi,8), %ebx
	movzbl	6(%edi,%esi,8), %ecx
	jmp	.L2908
.L2960:
	xorl	%edx, %edx
	xorl	%ebx, %ebx
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	jmp	.L2889
.L2958:
	movl	%eax, %ebp
	xorl	%ecx, %ecx
	jmp	.L2912
.L3075:
	movl	16(%ecx), %edx
	movzbl	(%edi,%ebx), %eax
	movzbl	1(%edi,%ebx), %ebp
	movzbl	2(%edi,%ebx), %ebx
	testl	%edx, %edx
	je	.L3039
	movzbl	%al, %edx
	cmpl	20(%ecx), %edx
	jne	.L3039
	movl	%ebp, %ecx
	movzbl	%cl, %edx
	movl	208(%esp), %ecx
	cmpl	24(%ecx), %edx
	jne	.L3039
	movzbl	%bl, %edx
	cmpl	28(%ecx), %edx
	jne	.L3039
	xorl	%ecx, %ecx
	jmp	.L2912
.L2963:
	movb	$0, 20(%esp)
	movb	$0, 32(%esp)
	xorl	%ebx, %ebx
	movb	$0, 66(%esp)
	jmp	.L2818
.L2946:
	xorl	%eax, %eax
	jmp	.L2853
.L3077:
	movzbl	(%edi,%esi), %eax
	jmp	.L2905
.L3076:
	movl	12(%esp), %edx
	movl	%ebp, %ecx
	movzbl	%cl, %ecx
	sall	$8, %ecx
	movzbl	3(%edi,%edx,2), %edx
	addl	%ecx, %edx
	movl	208(%esp), %ecx
	cmpl	24(%ecx), %edx
	jne	.L3039
	movl	12(%esp), %edx
	movzbl	%bl, %ecx
	sall	$8, %ecx
	movzbl	5(%edi,%edx,2), %edx
	addl	%ecx, %edx
	movl	208(%esp), %ecx
	cmpl	28(%ecx), %edx
	jne	.L3039
	xorl	%ecx, %ecx
	jmp	.L2912
	.p2align 4,,10
	.p2align 3
.L2957:
	xorl	%ecx, %ecx
	jmp	.L2892
.L3078:
	movzbl	(%edi,%esi,2), %eax
	movzbl	1(%edi,%esi,2), %ecx
	movl	%eax, %ebx
	movl	%eax, %ebp
	jmp	.L2908
.L3079:
	movzbl	(%edi,%esi,4), %eax
	movzbl	1(%edi,%esi,4), %ebp
	movzbl	2(%edi,%esi,4), %ebx
	movzbl	3(%edi,%esi,4), %ecx
	jmp	.L2908
.L2959:
	xorl	%eax, %eax
	jmp	.L2905
	.cfi_endproc
.LFE165:
	.size	lodepng_get_color_profile, .-lodepng_get_color_profile
	.section	.text.unlikely
.LCOLDE98:
	.text
.LHOTE98:
	.section	.text.unlikely
.LCOLDB99:
	.text
.LHOTB99:
	.p2align 4,,15
	.globl	lodepng_auto_choose_color
	.type	lodepng_auto_choose_color, @function
lodepng_auto_choose_color:
.LFB166:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	xorl	%eax, %eax
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$1096, %esp
	.cfi_def_cfa_offset 1116
	movl	1124(%esp), %edi
	movl	1128(%esp), %esi
	movw	%ax, 44(%esp)
	xorl	%eax, %eax
	movl	1116(%esp), %ebx
	movw	%ax, 42(%esp)
	xorl	%eax, %eax
	movl	$0, 32(%esp)
	movw	%ax, 40(%esp)
	movl	$0, 36(%esp)
	movl	$0, 48(%esp)
	movl	$0, 52(%esp)
	movl	$1, 1080(%esp)
	pushl	1132(%esp)
	.cfi_def_cfa_offset 1120
	pushl	%esi
	.cfi_def_cfa_offset 1124
	pushl	%edi
	.cfi_def_cfa_offset 1128
	pushl	1132(%esp)
	.cfi_def_cfa_offset 1132
	leal	48(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 1136
	call	lodepng_get_color_profile
	movl	%eax, 40(%esp)
	addl	$32, %esp
	.cfi_def_cfa_offset 1104
	testl	%eax, %eax
	jne	.L3121
	movl	24(%esp), %edx
	movl	$0, 16(%ebx)
	imull	%edi, %esi
	testl	%edx, %edx
	je	.L3083
	cmpl	$16, %esi
	ja	.L3083
	cmpl	$7, 1068(%esp)
	movl	$1, 36(%esp)
	movl	$0, 24(%esp)
	ja	.L3107
	movl	40(%esp), %eax
	xorl	%edx, %edx
	movl	$8, 1068(%esp)
	cmpl	$2, %eax
	jbe	.L3135
	.p2align 4,,10
	.p2align 3
.L3084:
	cmpl	$4, %eax
	jbe	.L3087
	cmpl	$17, %eax
	sbbl	%edi, %edi
	andl	$-4, %edi
	addl	$8, %edi
	cmpl	$256, %eax
	movl	%edi, 12(%esp)
	jbe	.L3086
.L3089:
	xorl	%edi, %edi
.L3085:
	leal	(%eax,%eax), %ecx
	cmpl	%esi, %ecx
	jbe	.L3136
.L3090:
	movl	20(%esp), %edi
	testl	%edi, %edi
	jne	.L3137
	movl	1068(%esp), %ecx
	cmpl	12(%esp), %ecx
	jbe	.L3092
	movl	36(%esp), %esi
	movl	%ecx, 4(%ebx)
	movl	$4, %eax
	testl	%esi, %esi
	jne	.L3102
.L3129:
	xorl	%eax, %eax
	jmp	.L3102
	.p2align 4,,10
	.p2align 3
.L3107:
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L3083:
	movl	40(%esp), %eax
	cmpl	$2, %eax
	ja	.L3084
	movl	$1, 12(%esp)
.L3086:
	cmpl	$8, 1068(%esp)
	movl	$1, %edi
	ja	.L3089
	leal	(%eax,%eax), %ecx
	cmpl	%esi, %ecx
	ja	.L3090
.L3136:
	movl	20(%esp), %esi
	testl	%esi, %esi
	jne	.L3091
	movl	1068(%esp), %ecx
	cmpl	12(%esp), %ecx
	jbe	.L3092
.L3091:
	testl	%edi, %edi
	je	.L3093
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	.L3094
	subl	$12, %esp
	.cfi_def_cfa_offset 1116
	pushl	%edx
	.cfi_def_cfa_offset 1120
	call	free
	movl	56(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 1104
.L3094:
	testl	%eax, %eax
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	je	.L3096
	leal	47(%esp), %edi
	xorl	%edx, %edx
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.L3099
	.p2align 4,,10
	.p2align 3
.L3097:
	movl	%ebp, %ecx
	addl	$1, %esi
	addl	$4, %edi
	movb	%cl, (%eax,%edx,4)
	movzbl	7(%esp), %ecx
	movl	12(%ebx), %edx
	movl	8(%ebx), %eax
	movb	%cl, 1(%eax,%edx,4)
	movzbl	6(%esp), %ecx
	movl	12(%ebx), %edx
	movl	8(%ebx), %eax
	movb	%cl, 2(%eax,%edx,4)
	movzbl	5(%esp), %ecx
	movl	12(%ebx), %edx
	movl	8(%ebx), %eax
	movb	%cl, 3(%eax,%edx,4)
	movl	12(%ebx), %eax
	cmpl	%esi, 40(%esp)
	leal	1(%eax), %edx
	movl	%edx, 12(%ebx)
	je	.L3096
	movl	8(%ebx), %eax
.L3099:
	movzbl	(%edi), %ecx
	testl	%eax, %eax
	movzbl	-3(%edi), %ebp
	movb	%cl, 5(%esp)
	movzbl	-1(%edi), %ecx
	movb	%cl, 6(%esp)
	movzbl	-2(%edi), %ecx
	movb	%cl, 7(%esp)
	jne	.L3097
	subl	$8, %esp
	.cfi_def_cfa_offset 1112
	pushl	$1024
	.cfi_def_cfa_offset 1116
	pushl	$0
	.cfi_def_cfa_offset 1120
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 1104
	testl	%eax, %eax
	je	.L3113
	movl	%eax, 8(%ebx)
	movl	12(%ebx), %edx
	jmp	.L3097
	.p2align 4,,10
	.p2align 3
.L3113:
	movl	$83, 8(%esp)
.L3096:
	movl	12(%esp), %eax
	movl	$3, (%ebx)
	movl	%eax, 4(%ebx)
	movl	1120(%esp), %eax
	cmpl	$3, (%eax)
	jne	.L3121
	movl	12(%ebx), %esi
	cmpl	%esi, 12(%eax)
	jb	.L3121
	movl	12(%esp), %esi
	cmpl	4(%eax), %esi
	jne	.L3121
	movl	8(%ebx), %eax
	testl	%eax, %eax
	je	.L3100
	subl	$12, %esp
	.cfi_def_cfa_offset 1116
	pushl	%eax
	.cfi_def_cfa_offset 1120
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 1104
.L3100:
	subl	$8, %esp
	.cfi_def_cfa_offset 1112
	movl	$0, 8(%ebx)
	movl	$0, 12(%ebx)
	pushl	1128(%esp)
	.cfi_def_cfa_offset 1116
	pushl	%ebx
	.cfi_def_cfa_offset 1120
	call	lodepng_color_mode_copy
	addl	$16, %esp
	.cfi_def_cfa_offset 1104
	.p2align 4,,10
	.p2align 3
.L3121:
	movl	8(%esp), %eax
	addl	$1084, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L3093:
	.cfi_restore_state
	movl	36(%esp), %ebp
	movl	1068(%esp), %ecx
	testl	%ebp, %ebp
	movl	%ecx, 4(%ebx)
	jne	.L3138
	testl	%esi, %esi
	je	.L3129
	movl	$2, %eax
	jmp	.L3102
	.p2align 4,,10
	.p2align 3
.L3092:
	cmpl	$1, 36(%esp)
	movl	%ecx, 4(%ebx)
	sbbl	%eax, %eax
	notl	%eax
	andl	$4, %eax
.L3102:
	testl	%edx, %edx
	movl	%eax, (%ebx)
	je	.L3121
	movzwl	28(%esp), %edx
	movl	$1, %eax
	movl	$1, 16(%ebx)
	sall	%cl, %eax
	subl	$1, %eax
	andl	%eax, %edx
	movl	%edx, 20(%ebx)
	movzwl	30(%esp), %edx
	andl	%eax, %edx
	movl	%edx, 24(%ebx)
	movzwl	32(%esp), %edx
	andl	%edx, %eax
	movl	%eax, 28(%ebx)
	movl	8(%esp), %eax
	addl	$1084, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L3137:
	.cfi_restore_state
	cmpl	$1, 36(%esp)
	movl	1068(%esp), %ecx
	movl	%ecx, 4(%ebx)
	sbbl	%eax, %eax
	andl	$-4, %eax
	addl	$6, %eax
	jmp	.L3102
	.p2align 4,,10
	.p2align 3
.L3087:
	movl	$2, 12(%esp)
	jmp	.L3086
	.p2align 4,,10
	.p2align 3
.L3138:
	cmpl	$1, %esi
	sbbl	%eax, %eax
	andl	$-2, %eax
	addl	$6, %eax
	jmp	.L3102
	.p2align 4,,10
	.p2align 3
.L3135:
	movl	$1, %edi
	movl	$1, 12(%esp)
	jmp	.L3085
	.cfi_endproc
.LFE166:
	.size	lodepng_auto_choose_color, .-lodepng_auto_choose_color
	.section	.text.unlikely
.LCOLDE99:
	.text
.LHOTE99:
	.section	.rodata.str1.1
.LC100:
	.string	"IHDR"
	.section	.text.unlikely
.LCOLDB101:
	.text
.LHOTB101:
	.p2align 4,,15
	.globl	lodepng_inspect
	.type	lodepng_inspect, @function
lodepng_inspect:
.LFB169:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	64(%esp), %eax
	movl	56(%esp), %ebx
	testl	%eax, %eax
	je	.L3155
	movl	60(%esp), %edx
	testl	%edx, %edx
	jne	.L3140
.L3155:
	movl	$48, 288(%ebx)
	movl	$48, %eax
.L3142:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L3140:
	.cfi_restore_state
	cmpl	$32, %eax
	ja	.L3143
	movl	$27, 288(%ebx)
	addl	$28, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movl	$27, %eax
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
	.p2align 4,,10
	.p2align 3
.L3143:
	.cfi_restore_state
	leal	128(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	lodepng_info_cleanup
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	60(%esp), %eax
	movl	$0, 156(%ebx)
	movl	$0, 168(%ebx)
	movl	$0, 164(%ebx)
	movl	$0, 160(%ebx)
	movl	$6, 140(%ebx)
	movl	$8, 144(%ebx)
	movl	$0, 148(%ebx)
	movl	$0, 152(%ebx)
	movl	$0, 136(%ebx)
	movl	$0, 128(%ebx)
	movl	$0, 132(%ebx)
	movl	$0, 172(%ebx)
	movl	$0, 184(%ebx)
	movl	$0, 180(%ebx)
	movl	$0, 176(%ebx)
	movl	$0, 188(%ebx)
	movl	$0, 192(%ebx)
	movl	$0, 196(%ebx)
	movl	$0, 200(%ebx)
	movl	$0, 204(%ebx)
	movl	$0, 208(%ebx)
	movl	$0, 212(%ebx)
	movl	$0, 216(%ebx)
	movl	$0, 220(%ebx)
	movl	$0, 248(%ebx)
	movl	$0, 264(%ebx)
	movl	$0, 268(%ebx)
	movl	$0, 272(%ebx)
	movl	$0, 276(%ebx)
	movl	$0, 280(%ebx)
	movl	$0, 284(%ebx)
	cmpb	$-119, (%eax)
	je	.L3158
.L3144:
	movl	$28, 288(%ebx)
	movl	$28, %eax
	jmp	.L3142
.L3158:
	cmpb	$80, 1(%eax)
	jne	.L3144
	cmpb	$78, 2(%eax)
	jne	.L3144
	cmpb	$71, 3(%eax)
	jne	.L3144
	cmpb	$13, 4(%eax)
	jne	.L3144
	cmpb	$10, 5(%eax)
	jne	.L3144
	cmpb	$26, 6(%eax)
	jne	.L3144
	cmpb	$10, 7(%eax)
	jne	.L3144
	movl	60(%esp), %eax
	movl	60(%esp), %esi
	movzbl	8(%eax), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	60(%esp), %eax
	movzbl	9(%eax), %eax
	sall	$16, %eax
	orl	%edx, %eax
	movzbl	11(%esi), %edx
	orl	%eax, %edx
	movzbl	10(%esi), %eax
	sall	$8, %eax
	orl	%edx, %eax
	cmpl	$13, %eax
	je	.L3146
	movl	$94, 288(%ebx)
	movl	$94, %eax
	jmp	.L3142
.L3146:
	pushl	%eax
	.cfi_def_cfa_offset 52
	pushl	%eax
	.cfi_def_cfa_offset 56
	pushl	$.LC100
	.cfi_def_cfa_offset 60
	movl	72(%esp), %eax
	addl	$8, %eax
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	lodepng_chunk_type_equals
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testb	%al, %al
	jne	.L3147
	movl	$29, 288(%ebx)
	movl	$29, %eax
	jmp	.L3142
.L3147:
	movl	60(%esp), %eax
	movl	60(%esp), %edi
	movl	48(%esp), %esi
	movzbl	16(%eax), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	60(%esp), %eax
	movzbl	17(%eax), %eax
	sall	$16, %eax
	orl	%edx, %eax
	movzbl	19(%edi), %edx
	orl	%eax, %edx
	movzbl	18(%edi), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, (%esi)
	movzbl	20(%edi), %eax
	movl	52(%esp), %esi
	sall	$24, %eax
	movl	%eax, %edx
	movzbl	21(%edi), %eax
	sall	$16, %eax
	orl	%edx, %eax
	movzbl	23(%edi), %edx
	orl	%eax, %edx
	movzbl	22(%edi), %eax
	sall	$8, %eax
	orl	%edx, %eax
	movl	%eax, (%esi)
	movl	%edi, %eax
	movzbl	24(%edi), %edi
	movl	%edi, 144(%ebx)
	movzbl	25(%eax), %eax
	movl	%eax, 140(%ebx)
	movl	%eax, 4(%esp)
	movl	60(%esp), %eax
	movzbl	26(%eax), %ebp
	movl	%ebp, 128(%ebx)
	movzbl	27(%eax), %esi
	movl	%esi, 132(%ebx)
	movzbl	28(%eax), %eax
	movl	%eax, 136(%ebx)
	movl	%eax, 8(%esp)
	movl	48(%esp), %eax
	cmpl	$0, (%eax)
	jne	.L3159
.L3148:
	movl	$93, 288(%ebx)
	movl	$93, %eax
	jmp	.L3142
.L3159:
	movl	52(%esp), %eax
	cmpl	$0, (%eax)
	je	.L3148
	cmpl	$0, 16(%ebx)
	jne	.L3150
	movl	60(%esp), %eax
	movl	60(%esp), %ecx
	movl	%ebx, 56(%esp)
	movzbl	29(%eax), %eax
	sall	$24, %eax
	movl	%eax, %edx
	movl	60(%esp), %eax
	movzbl	30(%eax), %eax
	sall	$16, %eax
	orl	%edx, %eax
	movzbl	32(%ecx), %edx
	orl	%edx, %eax
	movzbl	31(%ecx), %edx
	orl	$-1, %ecx
	sall	$8, %edx
	orl	%edx, %eax
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
.L3151:
	movl	60(%esp), %ebx
	movl	%ecx, %edx
	shrl	$8, %ecx
	xorb	12(%ebx,%eax), %dl
	addl	$1, %eax
	movzbl	%dl, %edx
	xorl	lodepng_crc32_table(,%edx,4), %ecx
	cmpl	$17, %eax
	jne	.L3151
	notl	%ecx
	cmpl	%ecx, 12(%esp)
	movl	56(%esp), %ebx
	je	.L3150
	movl	$57, 288(%ebx)
	movb	$57, %al
	jmp	.L3142
.L3150:
	testl	%ebp, %ebp
	je	.L3152
	movl	$32, 288(%ebx)
	movl	$32, %eax
	jmp	.L3142
.L3152:
	testl	%esi, %esi
	je	.L3153
	movl	$33, 288(%ebx)
	movl	$33, %eax
	jmp	.L3142
.L3153:
	cmpl	$1, 8(%esp)
	jbe	.L3154
	movl	$34, 288(%ebx)
	movl	$34, %eax
	jmp	.L3142
.L3154:
	movl	4(%esp), %eax
	movl	%edi, %edx
	call	checkColorValidity
	movl	%eax, 288(%ebx)
	jmp	.L3142
	.cfi_endproc
.LFE169:
	.size	lodepng_inspect, .-lodepng_inspect
	.section	.text.unlikely
.LCOLDE101:
	.text
.LHOTE101:
	.section	.rodata.str1.1
.LC102:
	.string	"pHYs"
.LC103:
	.string	"tIME"
	.section	.text.unlikely
.LCOLDB104:
	.text
.LHOTB104:
	.p2align 4,,15
	.type	decodeGeneric, @function
decodeGeneric:
.LFB183:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$440, %esp
	.cfi_def_cfa_offset 460
	movl	$0, (%eax)
	movl	%eax, 36(%esp)
	movl	%edx, 24(%esp)
	movl	%ecx, 28(%esp)
	pushl	468(%esp)
	.cfi_def_cfa_offset 464
	pushl	468(%esp)
	.cfi_def_cfa_offset 468
	pushl	468(%esp)
	.cfi_def_cfa_offset 472
	pushl	%ecx
	.cfi_def_cfa_offset 476
	pushl	%edx
	.cfi_def_cfa_offset 480
	call	lodepng_inspect
	movl	480(%esp), %esi
	movl	%eax, 60(%esp)
	addl	$32, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	movl	%eax, 288(%esi)
	jne	.L3160
	movl	12(%esp), %eax
	movl	(%eax), %esi
	movl	16(%esp), %eax
	movl	(%eax), %ecx
	movl	%esi, %ebx
	imull	%ecx, %ebx
	testl	%ecx, %ecx
	je	.L3162
	xorl	%edx, %edx
	movl	%ebx, %eax
	divl	%ecx
	cmpl	%eax, %esi
	je	.L3162
.L3163:
	movl	448(%esp), %eax
	movl	$92, 288(%eax)
.L3160:
	addl	$428, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L3162:
	.cfi_restore_state
	cmpl	$268435455, %ebx
	ja	.L3163
	movl	452(%esp), %eax
	movl	$0, 32(%esp)
	movl	$1, 52(%esp)
	movl	$0, 20(%esp)
	movl	$0, 36(%esp)
	movl	$0, 44(%esp)
	leal	33(%eax), %ebp
	movl	448(%esp), %eax
	subl	$-128, %eax
	movl	%eax, 68(%esp)
.L3297:
	movl	%ebp, %eax
	subl	452(%esp), %eax
	addl	$12, %eax
	cmpl	%eax, 456(%esp)
	jb	.L3457
	cmpl	%ebp, 452(%esp)
	ja	.L3457
	movzbl	0(%ebp), %edx
	sall	$24, %edx
	movl	%edx, %edi
	movzbl	1(%ebp), %edx
	sall	$16, %edx
	orl	%edi, %edx
	movzbl	3(%ebp), %edi
	orl	%edi, %edx
	movzbl	2(%ebp), %edi
	sall	$8, %edi
	orl	%edi, %edx
	testl	%edx, %edx
	movl	%edx, %edi
	movl	%edx, %ebx
	js	.L3687
	addl	%edx, %eax
	cmpl	%eax, 456(%esp)
	jb	.L3169
	leal	12(%ebp,%edx), %eax
	cmpl	%eax, 452(%esp)
	ja	.L3169
	movzbl	4(%ebp), %edx
	leal	8(%ebp), %esi
	cmpb	$73, %dl
	je	.L3688
	cmpb	$80, %dl
	je	.L3362
	cmpb	$116, %dl
	je	.L3689
	cmpb	$98, %dl
	je	.L3690
	cmpb	$122, %dl
	je	.L3691
	cmpb	$105, %dl
	je	.L3692
	.p2align 4,,10
	.p2align 3
.L3172:
	movb	%dl, 40(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	pushl	$.LC103
	.cfi_def_cfa_offset 460
	pushl	%ebp
	.cfi_def_cfa_offset 464
	call	lodepng_chunk_type_equals
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testb	%al, %al
	movzbl	40(%esp), %edx
	je	.L3693
	cmpl	$7, %edi
	movl	448(%esp), %eax
	je	.L3694
	movl	448(%esp), %edx
	movl	$73, 288(%eax)
	movl	140(%eax), %esi
	movl	$73, %eax
	.p2align 4,,10
	.p2align 3
.L3166:
	movl	136(%edx), %ebx
	movl	$0, 100(%esp)
	movl	$0, 108(%esp)
	movl	$0, 104(%esp)
	movl	16(%esp), %edx
	testl	%ebx, %ebx
	jne	.L3298
	movl	(%edx), %ecx
	movl	12(%esp), %edx
	cmpl	$6, %esi
	movl	(%edx), %edi
	movl	448(%esp), %edx
	movl	144(%edx), %edx
	ja	.L3648
	imull	CSWTCH.141(,%esi,4), %edx
	movl	%edx, %ebx
	movl	%edi, %edx
	shrl	$3, %edi
	andl	$7, %edx
	imull	%ebx, %edx
	imull	%ebx, %edi
	addl	$7, %edx
	shrl	$3, %edx
	leal	(%edx,%edi), %ebx
	imull	%ecx, %ebx
.L3648:
	addl	%ecx, %ebx
	testl	%eax, %eax
	je	.L3695
.L3314:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	pushl	48(%esp)
	.cfi_def_cfa_offset 464
	call	free
	movl	464(%esp), %eax
	movl	288(%eax), %eax
	movl	%eax, 108(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	jne	.L3315
	movl	16(%esp), %eax
	movl	(%eax), %edi
	movl	12(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 88(%esp)
	movl	448(%esp), %eax
	movl	140(%eax), %esi
	movl	144(%eax), %ebp
	cmpl	$6, %esi
	ja	.L3316
	movl	88(%esp), %edx
	movl	CSWTCH.141(,%esi,4), %ecx
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	imull	%edi, %edx
	imull	%ebp, %ecx
	movl	%edx, %eax
	shrl	$3, %edx
	andl	$7, %eax
	imull	%ecx, %eax
	imull	%ecx, %edx
	addl	$7, %eax
	shrl	$3, %eax
	leal	(%eax,%edx), %ebx
	pushl	%ebx
	.cfi_def_cfa_offset 464
	call	malloc
	movl	40(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	movl	%eax, (%edx)
	je	.L3402
	testl	%ebx, %ebx
	je	.L3318
	xorl	%edx, %edx
	movl	24(%esp), %ecx
	jmp	.L3320
	.p2align 4,,10
	.p2align 3
.L3696:
	movl	(%ecx), %eax
.L3320:
	movb	$0, (%eax,%edx)
	addl	$1, %edx
	cmpl	%ebx, %edx
	jne	.L3696
	movl	448(%esp), %eax
	movl	100(%esp), %esi
	movl	144(%eax), %ebp
	movl	16(%esp), %eax
	movl	(%eax), %edi
	movl	12(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 88(%esp)
	movl	24(%esp), %eax
	movl	(%eax), %ebx
	movl	448(%esp), %eax
	movl	140(%eax), %edx
	cmpl	$6, %edx
	ja	.L3449
.L3408:
	imull	CSWTCH.141(,%edx,4), %ebp
	testl	%ebp, %ebp
	movl	%ebp, %edx
	movl	%ebp, 12(%esp)
	je	.L3449
	movl	448(%esp), %eax
	movl	136(%eax), %eax
	testl	%eax, %eax
	jne	.L3322
	cmpl	$7, %ebp
	ja	.L3323
	movl	88(%esp), %ecx
	imull	%ecx, %ebp
	leal	7(%ebp), %eax
	andl	$-8, %eax
	cmpl	%eax, %ebp
	movl	%eax, 16(%esp)
	je	.L3323
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	movl	%esi, %eax
	pushl	%edx
	.cfi_def_cfa_offset 460
	pushl	%edi
	.cfi_def_cfa_offset 464
	movl	%esi, %edx
	call	unfilter
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3697
.L3326:
	movl	100(%esp), %esi
	movl	%eax, 92(%esp)
	movl	%eax, %edx
	.p2align 4,,10
	.p2align 3
.L3321:
	movl	448(%esp), %eax
	movl	%edx, 288(%eax)
.L3391:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	pushl	%esi
	.cfi_def_cfa_offset 464
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	addl	$428, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L3688:
	.cfi_restore_state
	movzbl	5(%ebp), %eax
	cmpb	$68, %al
	je	.L3698
	cmpb	$69, %al
	jne	.L3172
	cmpb	$78, 6(%ebp)
	jne	.L3172
	cmpb	$68, 7(%ebp)
	jne	.L3172
	movl	448(%esp), %eax
	movl	$1, %edi
	.p2align 4,,10
	.p2align 3
.L3181:
	movl	20(%esp), %esi
	orl	16(%eax), %esi
	jne	.L3447
	movzbl	0(%ebp), %eax
	sall	$24, %eax
	movl	%eax, %ebx
	movzbl	1(%ebp), %eax
	sall	$16, %eax
	orl	%ebx, %eax
	movzbl	3(%ebp), %ebx
	orl	%ebx, %eax
	movzbl	2(%ebp), %ebx
	movl	%ebx, %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	%eax, %ebx
.L3381:
	leal	8(%ebp,%ebx), %edx
	movzbl	(%edx), %eax
	sall	$24, %eax
	movl	%eax, %esi
	movzbl	1(%edx), %eax
	sall	$16, %eax
	orl	%esi, %eax
	movzbl	3(%edx), %esi
	orl	%esi, %eax
	movzbl	2(%edx), %esi
	sall	$8, %esi
	orl	%eax, %esi
	addl	$4, %ebx
	je	.L3293
	movl	$-1, %eax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L3294:
	movl	%eax, %ecx
	xorb	4(%ebp,%edx), %cl
	addl	$1, %edx
	shrl	$8, %eax
	movzbl	%cl, %ecx
	xorl	lodepng_crc32_table(,%ecx,4), %eax
	cmpl	%edx, %ebx
	jne	.L3294
	notl	%eax
	movl	%eax, %ebx
.L3293:
	cmpl	%ebx, %esi
	movl	448(%esp), %eax
	je	.L3699
	movl	$57, 288(%eax)
	movl	140(%eax), %esi
	movl	$57, %eax
	movl	448(%esp), %edx
	jmp	.L3166
.L3691:
	cmpb	$84, 5(%ebp)
	jne	.L3172
	cmpb	$88, 6(%ebp)
	jne	.L3172
	cmpb	$116, 7(%ebp)
	jne	.L3172
	movl	448(%esp), %eax
	movl	24(%eax), %edx
	testl	%edx, %edx
	jne	.L3700
	.p2align 4,,10
	.p2align 3
.L3222:
	movl	20(%esp), %esi
	orl	16(%eax), %esi
	je	.L3454
	movl	288(%eax), %eax
.L3382:
	testl	%eax, %eax
	leal	12(%ebp,%ebx), %ebp
	je	.L3297
	.p2align 4,,10
	.p2align 3
.L3645:
	movl	448(%esp), %esi
	movl	448(%esp), %edx
	movl	140(%esi), %esi
	jmp	.L3166
	.p2align 4,,10
	.p2align 3
.L3447:
	xorl	%eax, %eax
.L3292:
	movl	%edi, %edx
	testb	%dl, %dl
	jne	.L3645
	movzbl	0(%ebp), %edx
	sall	$24, %edx
	movl	%edx, %ebx
	movzbl	1(%ebp), %edx
	sall	$16, %edx
	orl	%ebx, %edx
	movzbl	3(%ebp), %ebx
	orl	%ebx, %edx
	movzbl	2(%ebp), %ebx
	sall	$8, %ebx
	orl	%ebx, %edx
	movl	%edx, %ebx
	jmp	.L3382
	.p2align 4,,10
	.p2align 3
.L3454:
	xorl	%edi, %edi
	jmp	.L3381
	.p2align 4,,10
	.p2align 3
.L3699:
	movl	288(%eax), %eax
	movl	$0, 20(%esp)
	jmp	.L3292
.L3402:
	movl	448(%esp), %eax
	movl	$83, 288(%eax)
	.p2align 4,,10
	.p2align 3
.L3315:
	movl	100(%esp), %esi
	jmp	.L3391
	.p2align 4,,10
	.p2align 3
.L3298:
	movl	(%edx), %edx
	movl	%edx, 20(%esp)
	addl	$7, %edx
	shrl	$3, %edx
	cmpl	$6, %esi
	movl	%edx, %ecx
	movl	12(%esp), %edx
	movl	(%edx), %ebx
	movl	448(%esp), %edx
	movl	144(%edx), %edx
	movl	%edx, 40(%esp)
	ja	.L3301
	movl	%edx, %ebp
	leal	7(%ebx), %edx
	imull	CSWTCH.141(,%esi,4), %ebp
	movl	%edx, 44(%esp)
	shrl	$3, %edx
	andl	$7, %edx
	imull	%ebp, %edx
	addl	$7, %edx
	movl	%edx, %edi
	movl	44(%esp), %edx
	shrl	$3, %edi
	shrl	$6, %edx
	imull	%ebp, %edx
	addl	%edi, %edx
	imull	%ecx, %edx
	addl	%ecx, %edx
	cmpl	$4, %ebx
	movl	%edx, 52(%esp)
	jbe	.L3701
	leal	3(%ebx), %edx
	movl	%edx, 44(%esp)
	shrl	$3, %edx
	andl	$7, %edx
	imull	%ebp, %edx
	addl	$7, %edx
	movl	%edx, %edi
	movl	44(%esp), %edx
	shrl	$3, %edi
	shrl	$6, %edx
	imull	%ebp, %edx
	addl	%edi, %edx
	imull	%ecx, %edx
	addl	52(%esp), %edx
	leal	(%edx,%ecx), %edi
	movl	20(%esp), %edx
	movl	%edi, 52(%esp)
	leal	3(%edx), %ebp
	movl	44(%esp), %edx
	movl	%ebp, %ecx
	shrl	$2, %edx
	shrl	$3, %ecx
	movl	%edx, 48(%esp)
.L3387:
	movl	40(%esp), %edx
	addl	%ecx, %edi
	imull	CSWTCH.141(,%esi,4), %edx
	movl	%edx, 44(%esp)
	movl	48(%esp), %edx
	andl	$7, %edx
	imull	44(%esp), %edx
	addl	$7, %edx
	shrl	$3, %edx
	movl	%edx, 52(%esp)
	movl	48(%esp), %edx
	shrl	$3, %edx
	imull	44(%esp), %edx
	addl	52(%esp), %edx
	imull	%ecx, %edx
	cmpl	$2, %ebx
	leal	(%edi,%edx), %ecx
	jbe	.L3390
	shrl	$2, %ebp
	movl	%ebp, %edi
	leal	1(%ebx), %ebp
	movl	%ebp, %edx
	shrl	$2, %edx
	andl	$7, %edx
	imull	44(%esp), %edx
	addl	$7, %edx
	shrl	$3, %edx
	movl	%edx, 48(%esp)
	movl	%ebp, %edx
	shrl	$5, %edx
	imull	44(%esp), %edx
	addl	48(%esp), %edx
	imull	%edi, %edx
.L3398:
	addl	%edi, %ecx
	addl	%edx, %ecx
.L3304:
	movl	20(%esp), %edx
	addl	$1, %edx
	movl	%edx, 48(%esp)
	shrl	$2, %edx
	movl	%edx, 44(%esp)
	movl	%ebp, %edx
	shrl	%edx
	cmpl	$6, %esi
	ja	.L3305
	movl	40(%esp), %edi
	andl	$7, %edx
	addl	44(%esp), %ecx
	imull	CSWTCH.141(,%esi,4), %edi
	movl	%ecx, 52(%esp)
	imull	%edi, %edx
	addl	$7, %edx
	shrl	$3, %edx
	movl	%edx, %ecx
	movl	%ebp, %edx
	shrl	$4, %edx
	imull	%edi, %edx
	addl	%ecx, %edx
	movl	52(%esp), %ecx
	imull	44(%esp), %edx
	addl	%edx, %ecx
	cmpl	$1, %ebx
	jbe	.L3702
	movl	%ebx, %edx
	movl	48(%esp), %ebp
	shrl	%edx
	andl	$7, %edx
	imull	%edi, %edx
	shrl	%ebp
	addl	$7, %edx
	shrl	$3, %edx
	movl	%edx, 44(%esp)
	movl	%ebx, %edx
	shrl	$4, %edx
	imull	%edi, %edx
	addl	44(%esp), %edx
	imull	%ebp, %edx
.L3399:
	movl	20(%esp), %edi
	addl	%ebp, %ecx
	addl	%edx, %ecx
	shrl	%edi
	cmpl	$6, %esi
	ja	.L3308
.L3407:
	movl	40(%esp), %edx
	imull	CSWTCH.141(,%esi,4), %edx
	movl	%edx, %esi
	movl	%ebx, %edx
	andl	$7, %edx
	imull	%esi, %edx
	addl	$7, %edx
	shrl	$3, %edx
	movl	%edx, %ebp
	movl	%ebx, %edx
	shrl	$3, %edx
	imull	%esi, %edx
	addl	%ebp, %edx
	imull	%edi, %edx
	movl	%edx, 28(%esp)
.L3308:
	addl	%edi, %ecx
	movl	28(%esp), %ebx
	jmp	.L3648
.L3695:
	testl	%ebx, %ebx
	je	.L3310
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	pushl	%ebx
	.cfi_def_cfa_offset 460
	pushl	$0
	.cfi_def_cfa_offset 464
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3311
	movl	%eax, 100(%esp)
	movl	448(%esp), %eax
	movl	%ebx, 108(%esp)
	movl	288(%eax), %eax
	testl	%eax, %eax
	jne	.L3314
.L3310:
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	pushl	456(%esp)
	.cfi_def_cfa_offset 460
	pushl	44(%esp)
	.cfi_def_cfa_offset 464
	movl	52(%esp), %ecx
	leal	120(%esp), %edx
	leal	116(%esp), %eax
	call	zlib_decompress
	movl	464(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	movl	%eax, 288(%esi)
	jne	.L3314
	cmpl	%ebx, 104(%esp)
	je	.L3314
	movl	448(%esp), %eax
	movl	$91, 288(%eax)
	jmp	.L3314
.L3305:
	movl	48(%esp), %ebp
	addl	44(%esp), %ecx
	xorl	%edx, %edx
	shrl	%ebp
	cmpl	$1, %ebx
	ja	.L3399
	movl	20(%esp), %edi
	shrl	%edi
	jmp	.L3308
.L3703:
	addl	%ebp, %ecx
	cmpl	$2, %ebx
	ja	.L3389
.L3390:
	leal	1(%ebx), %ebp
	jmp	.L3304
.L3316:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	pushl	$0
	.cfi_def_cfa_offset 464
	call	malloc
	movl	40(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	movl	%eax, (%esi)
	je	.L3402
	movl	$31, 92(%esp)
	movl	100(%esp), %esi
	movl	92(%esp), %edx
	jmp	.L3321
.L3301:
	movl	20(%esp), %edx
	addl	$3, %edx
	movl	%edx, %ebp
	shrl	$3, %ebp
	cmpl	$4, %ebx
	jbe	.L3703
	cmpl	$2, %ebx
	leal	0(%ebp,%ecx,2), %ecx
	jbe	.L3390
.L3389:
	shrl	$2, %edx
	leal	1(%ebx), %ebp
	movl	%edx, %edi
	xorl	%edx, %edx
	jmp	.L3398
.L3169:
	movl	448(%esp), %eax
	movl	448(%esp), %edx
	movl	$64, 288(%eax)
	movl	140(%eax), %esi
	movl	$64, %eax
	jmp	.L3166
.L3449:
	movl	$31, 92(%esp)
	movl	92(%esp), %edx
	jmp	.L3321
.L3457:
	movl	448(%esp), %eax
	movl	448(%esp), %edx
	movl	$30, 288(%eax)
	movl	140(%eax), %esi
	movl	$30, %eax
	jmp	.L3166
	.p2align 4,,10
	.p2align 3
.L3362:
	cmpb	$76, 5(%ebp)
	jne	.L3172
	cmpb	$84, 6(%ebp)
	jne	.L3172
	cmpb	$69, 7(%ebp)
	jne	.L3172
	movl	448(%esp), %eax
	movl	148(%eax), %eax
	testl	%eax, %eax
	je	.L3366
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	pushl	%eax
	.cfi_def_cfa_offset 464
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 448
.L3366:
	movl	%edi, %eax
	movl	$-1431655765, %edx
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	mull	%edx
	movl	460(%esp), %eax
	shrl	%edx
	movl	%edx, 152(%eax)
	leal	0(,%edx,4), %eax
	movl	%edx, %edi
	pushl	%eax
	.cfi_def_cfa_offset 464
	call	malloc
	movl	464(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	movl	%eax, 148(%edx)
	je	.L3704
	cmpl	$256, %edi
	jbe	.L3705
	movl	$38, %eax
.L3187:
	movl	448(%esp), %esi
	movl	448(%esp), %edx
	movl	%eax, 288(%esi)
	movl	140(%esi), %esi
	jmp	.L3166
.L3698:
	cmpb	$65, 6(%ebp)
	jne	.L3172
	cmpb	$84, 7(%ebp)
	jne	.L3172
	movl	32(%esp), %eax
	addl	%edi, %eax
	cmpl	%eax, 44(%esp)
	movl	%eax, 48(%esp)
	jnb	.L3706
	movl	%eax, %edx
	movl	44(%esp), %eax
	movl	%edx, 44(%esp)
	addl	%eax, %eax
	cmpl	%eax, %edx
	ja	.L3174
	leal	(%edx,%edx,2), %eax
	shrl	%eax
	movl	%eax, 44(%esp)
.L3174:
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	pushl	52(%esp)
	.cfi_def_cfa_offset 460
	pushl	48(%esp)
	.cfi_def_cfa_offset 464
	call	realloc
	movl	%eax, 56(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3707
.L3383:
	testl	%edi, %edi
	je	.L3708
	movl	40(%esp), %ebx
	movl	32(%esp), %eax
	leal	12(%ebp), %edx
	addl	%ebx, %eax
	cmpl	%edx, %eax
	movl	%ebx, %edx
	movl	32(%esp), %ebx
	setnb	%cl
	movl	%eax, 36(%esp)
	leal	4(%edx,%ebx), %edx
	cmpl	%edx, %esi
	setnb	%dl
	orl	%ecx, %edx
	cmpl	$9, %edi
	seta	%cl
	testb	%cl, %dl
	je	.L3458
	movl	%esi, %edx
	orl	%eax, %edx
	andl	$3, %edx
	jne	.L3458
	leal	-4(%edi), %edx
	movl	36(%esp), %eax
	xorl	%ecx, %ecx
	shrl	$2, %edx
	addl	$1, %edx
	leal	0(,%edx,4), %ebx
	movl	%ebx, 52(%esp)
.L3177:
	movl	8(%ebp,%ecx,4), %ebx
	movl	%ebx, (%eax,%ecx,4)
	addl	$1, %ecx
	cmpl	%ecx, %edx
	ja	.L3177
	movl	52(%esp), %ebx
	movl	%eax, 36(%esp)
	cmpl	%ebx, %edi
	je	.L3176
	movzbl	(%esi,%edx,4), %ecx
	movl	40(%esp), %edx
	movl	32(%esp), %eax
	addl	%ebx, %edx
	movb	%cl, (%edx,%eax)
	leal	1(%ebx), %edx
	cmpl	%edi, %edx
	je	.L3176
	movzbl	1(%esi,%ebx), %ecx
	movl	36(%esp), %eax
	leal	2(%ebx), %edx
	cmpl	%edi, %edx
	movb	%cl, 1(%eax,%ebx)
	je	.L3176
	movzbl	2(%esi,%ebx), %ecx
	movb	%cl, (%eax,%edx)
.L3176:
	movzbl	0(%ebp), %eax
	sall	$24, %eax
	movl	%eax, %ebx
	movzbl	1(%ebp), %eax
	sall	$16, %eax
	orl	%ebx, %eax
	movzbl	3(%ebp), %ebx
	orl	%ebx, %eax
	movzbl	2(%ebp), %ebx
	movl	%ebx, %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	%eax, %ebx
.L3650:
	movl	48(%esp), %eax
	movl	$3, 52(%esp)
	movl	%eax, 32(%esp)
	movl	40(%esp), %eax
	movl	%eax, 36(%esp)
	movl	448(%esp), %eax
	jmp	.L3222
.L3458:
	movl	36(%esp), %eax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L3175:
	movzbl	8(%ebp,%edx), %ecx
	movb	%cl, (%eax,%edx)
	addl	$1, %edx
	cmpl	%edi, %edx
	jne	.L3175
	jmp	.L3176
.L3689:
	movzbl	5(%ebp), %eax
	cmpb	$82, %al
	je	.L3709
	cmpb	$69, %al
	jne	.L3172
	cmpb	$88, 6(%ebp)
	jne	.L3172
	cmpb	$116, 7(%ebp)
	jne	.L3172
	movl	448(%esp), %eax
	movl	24(%eax), %ecx
	testl	%ecx, %ecx
	je	.L3222
	testl	%edi, %edi
	je	.L3421
	cmpb	$0, 8(%ebp)
	je	.L3421
	xorl	%eax, %eax
	jmp	.L3205
	.p2align 4,,10
	.p2align 3
.L3203:
	cmpb	$0, 8(%ebp,%ebx)
	je	.L3206
	movl	%ebx, %eax
.L3205:
	leal	1(%eax), %ebx
	cmpl	%ebx, %edi
	jne	.L3203
.L3206:
	cmpl	$78, %eax
	jbe	.L3710
.L3421:
	movl	$0, 40(%esp)
	movl	$89, %ebx
.L3202:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	pushl	52(%esp)
	.cfi_def_cfa_offset 464
.L3646:
	call	free
	movl	464(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	movl	448(%esp), %edx
	movl	%ebx, 288(%eax)
	movl	140(%eax), %esi
	movl	%ebx, %eax
	jmp	.L3166
.L3708:
	movzbl	0(%ebp), %eax
	movzbl	2(%ebp), %ebx
	sall	$24, %eax
	sall	$8, %ebx
	movl	%eax, %edx
	movzbl	1(%ebp), %eax
	sall	$16, %eax
	orl	%edx, %eax
	movzbl	3(%ebp), %edx
	orl	%edx, %eax
	orl	%eax, %ebx
	jmp	.L3650
.L3705:
	testl	%edi, %edi
	je	.L3185
	movl	%eax, %ecx
	movl	$1, %eax
	xorl	%edx, %edx
	movl	%eax, 40(%esp)
	movl	448(%esp), %ebx
	jmp	.L3189
	.p2align 4,,10
	.p2align 3
.L3711:
	movl	148(%ebx), %ecx
.L3189:
	movzbl	(%esi), %eax
	addl	$3, %esi
	movb	%al, (%ecx,%edx,4)
	movzbl	-2(%esi), %ecx
	addl	$1, %edx
	movl	40(%esp), %eax
	movl	148(%ebx), %edi
	movb	%cl, (%edi,%eax)
	movzbl	-1(%esi), %ecx
	movl	148(%ebx), %edi
	movb	%cl, 1(%edi,%eax)
	movl	148(%ebx), %ecx
	movb	$-1, 2(%ecx,%eax)
	addl	$4, %eax
	cmpl	152(%ebx), %edx
	movl	%eax, 40(%esp)
	jne	.L3711
.L3185:
	movl	448(%esp), %eax
	movl	$2, 52(%esp)
	xorl	%edi, %edi
	movl	$0, 288(%eax)
	jmp	.L3181
.L3687:
	movl	448(%esp), %eax
	movl	448(%esp), %edx
	movl	$63, 288(%eax)
	movl	140(%eax), %esi
	movl	$63, %eax
	jmp	.L3166
.L3701:
	movl	20(%esp), %edx
	movl	52(%esp), %edi
	leal	3(%edx), %ebp
	leal	3(%ebx), %edx
	movl	%ebp, %ecx
	shrl	$2, %edx
	shrl	$3, %ecx
	movl	%edx, 48(%esp)
	jmp	.L3387
.L3690:
	cmpb	$75, 5(%ebp)
	jne	.L3172
	cmpb	$71, 6(%ebp)
	jne	.L3172
	cmpb	$68, 7(%ebp)
	jne	.L3172
	movl	448(%esp), %eax
	movl	140(%eax), %esi
	cmpl	$3, %esi
	je	.L3712
	movl	%esi, %eax
	andl	$-5, %eax
	jne	.L3200
	cmpl	$2, %edi
	je	.L3713
	movl	$44, %eax
	.p2align 4,,10
	.p2align 3
.L3198:
	movl	448(%esp), %edx
	movl	%eax, 288(%edx)
	jmp	.L3166
.L3200:
	cmpl	$2, %eax
	jne	.L3199
	cmpl	$6, %edi
	je	.L3714
	movl	$45, %eax
	jmp	.L3198
.L3715:
	movl	448(%esp), %eax
	movl	448(%esp), %esi
	movl	$1, 172(%eax)
	movzbl	8(%ebp), %eax
	movl	%eax, 184(%esi)
	movl	%eax, 180(%esi)
	movl	%eax, 176(%esi)
.L3199:
	movl	448(%esp), %eax
	xorl	%edi, %edi
	movl	$0, 288(%eax)
	jmp	.L3181
.L3712:
	cmpl	$1, %edi
	je	.L3715
	movl	$43, %eax
	jmp	.L3198
.L3704:
	testl	%edi, %edi
	je	.L3185
	movl	448(%esp), %eax
	movl	$0, 152(%eax)
	movl	$83, %eax
	jmp	.L3187
.L3323:
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	movl	%esi, %edx
	movl	%ebx, %eax
	pushl	20(%esp)
	.cfi_def_cfa_offset 460
	pushl	%edi
	.cfi_def_cfa_offset 464
	movl	104(%esp), %ecx
	call	unfilter
	movl	116(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	movl	%eax, %edx
	movl	%eax, 92(%esp)
	jmp	.L3321
.L3702:
	movl	20(%esp), %edi
	shrl	%edi
	jmp	.L3407
.L3693:
	movb	%dl, 40(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	pushl	$.LC102
	.cfi_def_cfa_offset 460
	pushl	%ebp
	.cfi_def_cfa_offset 464
	call	lodepng_chunk_type_equals
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testb	%al, %al
	movzbl	40(%esp), %edx
	jne	.L3716
	andl	$32, %edx
	je	.L3717
	movl	448(%esp), %eax
	movl	$1, 20(%esp)
	movl	28(%eax), %edx
	testl	%edx, %edx
	je	.L3222
	subl	$4, %esp
	.cfi_def_cfa_offset 452
	pushl	%ebp
	.cfi_def_cfa_offset 456
	movl	60(%esp), %esi
	movl	456(%esp), %edx
	leal	272(%edx,%esi,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 460
	movl	460(%esp), %edx
	leal	260(%edx,%esi,4), %eax
	pushl	%eax
	.cfi_def_cfa_offset 464
	call	lodepng_chunk_append
	movl	464(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	movl	%eax, 288(%esi)
	jne	.L3645
.L3649:
	movzbl	0(%ebp), %eax
	movzbl	3(%ebp), %ebx
	sall	$24, %eax
	movl	%eax, %edx
	movzbl	1(%ebp), %eax
	sall	$16, %eax
	orl	%edx, %eax
	movzbl	2(%ebp), %edx
	orl	%eax, %ebx
	movl	448(%esp), %eax
	sall	$8, %edx
	orl	%edx, %ebx
	jmp	.L3222
.L3322:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	movl	24(%esp), %ebp
	pushl	%ebp
	.cfi_def_cfa_offset 464
	pushl	%edi
	.cfi_def_cfa_offset 468
	pushl	108(%esp)
	.cfi_def_cfa_offset 472
	leal	312(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 476
	leal	284(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 480
	leal	144(%esp), %eax
	leal	256(%esp), %ecx
	leal	172(%esp), %edx
	call	Adam7_getpassvalues
	movl	%ebp, %eax
	addl	$32, %esp
	.cfi_def_cfa_offset 448
	xorl	%ebp, %ebp
	cmpl	$7, %eax
	jbe	.L3325
.L3327:
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	movl	232(%esp,%ebp,4), %edx
	movl	264(%esp,%ebp,4), %eax
	movl	120(%esp,%ebp,4), %ecx
	pushl	20(%esp)
	.cfi_def_cfa_offset 460
	pushl	152(%esp,%ebp,4)
	.cfi_def_cfa_offset 464
	addl	%esi, %edx
	addl	%esi, %eax
	call	unfilter
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	jne	.L3326
	addl	$1, %ebp
	cmpl	$7, %ebp
	jne	.L3327
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	leal	208(%esp), %eax
	movl	24(%esp), %ebp
	movl	%eax, 96(%esp)
	movl	%eax, %edx
	leal	180(%esp), %eax
	movl	%eax, 64(%esp)
	pushl	%ebp
	.cfi_def_cfa_offset 464
	pushl	%edi
	.cfi_def_cfa_offset 468
	pushl	108(%esp)
	.cfi_def_cfa_offset 472
	leal	408(%esp), %edi
	movl	%edi, 56(%esp)
	pushl	%edi
	.cfi_def_cfa_offset 476
	movl	%ebp, %edi
	shrl	$3, %edi
	leal	380(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 480
	movl	84(%esp), %eax
	leal	352(%esp), %ecx
	call	Adam7_getpassvalues
	addl	$32, %esp
	.cfi_def_cfa_offset 448
	testl	%edi, %edi
	movl	$1, 76(%esp)
	je	.L3405
	movl	%edi, 76(%esp)
.L3405:
	movl	76(%esp), %eax
	movl	%ebx, 24(%esp)
	movl	%esi, 44(%esp)
	subl	$4, %eax
	shrl	$2, %eax
	addl	$1, %eax
	movl	%eax, 40(%esp)
	sall	$2, %eax
	cmpl	$4, %edi
	movl	%eax, %edx
	movl	%eax, 80(%esp)
	sbbl	%eax, %eax
	notl	%eax
	xorl	%ebp, %ebp
	andl	%edx, %eax
	leal	1(%eax), %edx
	leal	(%esi,%eax), %ecx
	movl	%edx, 56(%esp)
	leal	2(%eax), %edx
	addl	%ebx, %eax
	movl	%eax, 64(%esp)
	movl	%ecx, 60(%esp)
	leal	(%esi,%edx), %eax
	movl	%edx, 48(%esp)
	movl	%eax, 68(%esp)
	leal	(%ebx,%edx), %eax
	movl	%eax, 72(%esp)
.L3341:
	movl	84(%esp), %eax
	movl	(%eax,%ebp,4), %edx
	testl	%edx, %edx
	je	.L3331
	movl	52(%esp), %eax
	movl	$0, 28(%esp)
	movl	(%eax,%ebp,4), %eax
	.p2align 4,,10
	.p2align 3
.L3332:
	testl	%eax, %eax
	je	.L3340
	movl	28(%esp), %edx
	movl	ADAM7_DX(,%ebp,4), %esi
	imull	ADAM7_DY(,%ebp,4), %edx
	movl	%ebp, 12(%esp)
	imull	%edi, %esi
	addl	ADAM7_IY(,%ebp,4), %edx
	imull	88(%esp), %edx
	movl	%esi, 36(%esp)
	xorl	%esi, %esi
	addl	ADAM7_IX(,%ebp,4), %edx
	imull	%edi, %edx
	addl	24(%esp), %edx
	jmp	.L3339
	.p2align 4,,10
	.p2align 3
.L3719:
	movl	%ecx, %eax
	orl	%edx, %eax
	testb	$3, %al
	jne	.L3451
	movl	12(%esp), %ebp
	xorl	%eax, %eax
.L3334:
	movl	(%ecx,%eax,4), %ebx
	movl	%ebx, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, 40(%esp)
	ja	.L3334
	movl	76(%esp), %ebx
	cmpl	%ebx, 80(%esp)
	movl	%ebp, 12(%esp)
	je	.L3338
	movl	16(%esp), %ebx
	movl	60(%esp), %eax
	movl	64(%esp), %ebp
	movzbl	(%eax,%ebx), %eax
	movl	20(%esp), %ebx
	movb	%al, 0(%ebp,%ebx)
	movl	56(%esp), %ebx
	cmpl	%edi, %ebx
	jnb	.L3338
	movzbl	(%ecx,%ebx), %ecx
	movl	24(%esp), %ebp
	addl	20(%esp), %ebp
	cmpl	%edi, 48(%esp)
	movb	%cl, 0(%ebp,%ebx)
	jnb	.L3338
	movl	16(%esp), %ecx
	movl	68(%esp), %eax
	movl	20(%esp), %ebx
	movzbl	(%eax,%ecx), %eax
	movl	72(%esp), %ecx
	movb	%al, (%ecx,%ebx)
.L3338:
	movl	52(%esp), %eax
	movl	12(%esp), %ebx
	addl	$1, %esi
	addl	36(%esp), %edx
	movl	(%eax,%ebx,4), %eax
	cmpl	%esi, %eax
	jbe	.L3718
.L3339:
	imull	28(%esp), %eax
	movl	12(%esp), %ecx
	movl	32(%esp), %ebx
	movl	44(%esp), %ebp
	movl	(%ebx,%ecx,4), %ebx
	addl	%esi, %eax
	imull	%edi, %eax
	leal	(%eax,%ebx), %ecx
	leal	4(%ebx,%eax), %eax
	movl	%ecx, 16(%esp)
	movl	%edx, %ecx
	subl	24(%esp), %ecx
	addl	%ebp, %eax
	movl	%ecx, 20(%esp)
	movl	16(%esp), %ecx
	addl	%ebp, %ecx
	cmpl	%eax, %edx
	setnb	%al
	movl	%eax, %ebx
	leal	4(%edx), %eax
	cmpl	%eax, %ecx
	setnb	%al
	orl	%ebx, %eax
	cmpl	$9, %edi
	seta	%bl
	testb	%al, %bl
	jne	.L3719
.L3451:
	movl	12(%esp), %ebp
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3333:
	movzbl	(%ecx,%eax), %ebx
	movb	%bl, (%edx,%eax)
	addl	$1, %eax
	cmpl	%eax, %edi
	ja	.L3333
	movl	%ebp, 12(%esp)
	jmp	.L3338
.L3325:
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	movl	232(%esp,%ebp,4), %edx
	movl	264(%esp,%ebp,4), %eax
	movl	120(%esp,%ebp,4), %ecx
	pushl	20(%esp)
	.cfi_def_cfa_offset 460
	pushl	152(%esp,%ebp,4)
	.cfi_def_cfa_offset 464
	addl	%esi, %edx
	addl	%esi, %eax
	call	unfilter
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	jne	.L3326
	movl	12(%esp), %ecx
	imull	112(%esp,%ebp,4), %ecx
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	movl	296(%esp,%ebp,4), %eax
	movl	264(%esp,%ebp,4), %edx
	addl	%esi, %eax
	addl	%esi, %edx
	movl	%eax, 24(%esp)
	leal	7(%ecx), %eax
	pushl	148(%esp,%ebp,4)
	.cfi_def_cfa_offset 460
	addl	$1, %ebp
	andl	$-8, %eax
	pushl	%eax
	.cfi_def_cfa_offset 464
	movl	32(%esp), %eax
	call	removePaddingBits
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	cmpl	$7, %ebp
	jne	.L3325
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	leal	208(%esp), %eax
	movl	%eax, 96(%esp)
	movl	%eax, %edx
	leal	180(%esp), %eax
	movl	%eax, 64(%esp)
	pushl	24(%esp)
	.cfi_def_cfa_offset 464
	movl	%eax, %ebp
	pushl	%edi
	.cfi_def_cfa_offset 468
	movl	108(%esp), %edi
	pushl	%edi
	.cfi_def_cfa_offset 472
	leal	408(%esp), %eax
	movl	%eax, 56(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 476
	leal	380(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 480
	movl	%ebp, %eax
	leal	352(%esp), %ecx
	call	Adam7_getpassvalues
	movl	44(%esp), %eax
	imull	%edi, %eax
	movl	%eax, 96(%esp)
	addl	$32, %esp
	.cfi_def_cfa_offset 448
	movl	$0, 36(%esp)
.L3355:
	movl	52(%esp), %edi
	movl	36(%esp), %edx
	movl	$0, 44(%esp)
	movl	$0, 56(%esp)
	movl	(%edi,%edx,4), %eax
	movl	84(%esp), %edi
	movl	%eax, 40(%esp)
	imull	12(%esp), %eax
	movl	%eax, 60(%esp)
	movl	(%edi,%edx,4), %eax
	testl	%eax, %eax
	je	.L3343
	movl	%ebx, 20(%esp)
	.p2align 4,,10
	.p2align 3
.L3536:
	movl	40(%esp), %ebx
	testl	%ebx, %ebx
	je	.L3354
	movl	36(%esp), %edi
	movl	12(%esp), %ebx
	movl	56(%esp), %eax
	movl	$0, 28(%esp)
	movl	$0, 24(%esp)
	movl	ADAM7_DX(,%edi,4), %edx
	imull	ADAM7_DY(,%edi,4), %eax
	imull	%ebx, %edx
	addl	ADAM7_IY(,%edi,4), %eax
	imull	64(%esp), %eax
	movl	%edx, 48(%esp)
	movl	ADAM7_IX(,%edi,4), %edx
	imull	%ebx, %edx
	leal	5(%edx,%eax), %edx
	movl	%edx, %eax
	notl	%eax
	movl	%eax, 16(%esp)
	.p2align 4,,10
	.p2align 3
.L3352:
	movl	36(%esp), %edi
	movl	32(%esp), %eax
	movl	(%eax,%edi,4), %eax
	movl	44(%esp), %edi
	leal	(%edi,%eax,8), %eax
	addl	28(%esp), %eax
	leal	-5(%edx), %edi
	movl	%eax, %ecx
	leal	1(%eax), %ebx
	shrl	$3, %ecx
	movzbl	(%esi,%ecx), %ebp
	movl	%eax, %ecx
	notl	%ecx
	andl	$7, %ecx
	btl	%ecx, %ebp
	jnc	.L3344
	movl	16(%esp), %ecx
	movl	$1, %ebp
	shrl	$3, %edi
	addl	$5, %ecx
	andl	$7, %ecx
	sall	%cl, %ebp
	movl	%ebp, %ecx
	movl	20(%esp), %ebp
	orb	%cl, 0(%ebp,%edi)
.L3344:
	cmpl	$1, 12(%esp)
	leal	-4(%edx), %ecx
	je	.L3345
	movl	%ebx, %ebp
	notl	%ebx
	leal	2(%eax), %edi
	shrl	$3, %ebp
	andl	$7, %ebx
	movzbl	(%esi,%ebp), %ebp
	btl	%ebx, %ebp
	jnc	.L3346
	movl	%ecx, %ebx
	movl	16(%esp), %ecx
	movl	$1, %ebp
	shrl	$3, %ebx
	addl	$4, %ecx
	andl	$7, %ecx
	sall	%cl, %ebp
	movl	%ebp, %ecx
	movl	20(%esp), %ebp
	orb	%cl, 0(%ebp,%ebx)
.L3346:
	cmpl	$2, 12(%esp)
	leal	-3(%edx), %ecx
	je	.L3345
	movl	%edi, %ebp
	notl	%edi
	leal	3(%eax), %ebx
	shrl	$3, %ebp
	andl	$7, %edi
	movzbl	(%esi,%ebp), %ebp
	btl	%edi, %ebp
	jnc	.L3347
	movl	%ecx, %edi
	movl	16(%esp), %ecx
	movl	$1, %ebp
	shrl	$3, %edi
	addl	$3, %ecx
	andl	$7, %ecx
	sall	%cl, %ebp
	movl	%ebp, %ecx
	movl	20(%esp), %ebp
	orb	%cl, 0(%ebp,%edi)
.L3347:
	cmpl	$3, 12(%esp)
	leal	-2(%edx), %ecx
	je	.L3345
	movl	%ebx, %ebp
	notl	%ebx
	leal	4(%eax), %edi
	shrl	$3, %ebp
	andl	$7, %ebx
	movzbl	(%esi,%ebp), %ebp
	btl	%ebx, %ebp
	jnc	.L3348
	movl	%ecx, %ebx
	movl	16(%esp), %ecx
	movl	$1, %ebp
	shrl	$3, %ebx
	addl	$2, %ecx
	andl	$7, %ecx
	sall	%cl, %ebp
	movl	%ebp, %ecx
	movl	20(%esp), %ebp
	orb	%cl, 0(%ebp,%ebx)
.L3348:
	cmpl	$4, 12(%esp)
	leal	-1(%edx), %ecx
	je	.L3345
	movl	%edi, %ebp
	notl	%edi
	leal	5(%eax), %ebx
	shrl	$3, %ebp
	andl	$7, %edi
	movzbl	(%esi,%ebp), %ebp
	btl	%edi, %ebp
	jnc	.L3349
	movl	%ecx, %edi
	movl	16(%esp), %ecx
	movl	$1, %ebp
	shrl	$3, %edi
	addl	$1, %ecx
	andl	$7, %ecx
	sall	%cl, %ebp
	movl	%ebp, %ecx
	movl	20(%esp), %ebp
	orb	%cl, 0(%ebp,%edi)
.L3349:
	cmpl	$5, 12(%esp)
	je	.L3345
	movl	%ebx, %ecx
	notl	%ebx
	addl	$6, %eax
	shrl	$3, %ecx
	andl	$7, %ebx
	movzbl	(%esi,%ecx), %ecx
	btl	%ebx, %ecx
	jnc	.L3350
	movl	16(%esp), %ecx
	movl	$1, %edi
	movl	%edx, %ebx
	shrl	$3, %ebx
	andl	$7, %ecx
	sall	%cl, %edi
	movl	%edi, %ecx
	movl	20(%esp), %edi
	orb	%cl, (%edi,%ebx)
.L3350:
	cmpl	$7, 12(%esp)
	leal	1(%edx), %ecx
	jne	.L3345
	movl	%eax, %ebx
	notl	%eax
	shrl	$3, %ebx
	andl	$7, %eax
	movzbl	(%esi,%ebx), %ebx
	btl	%eax, %ebx
	jnc	.L3345
	movl	16(%esp), %edi
	movl	%ecx, %eax
	shrl	$3, %eax
	leal	-1(%edi), %ecx
	movl	$1, %edi
	andl	$7, %ecx
	sall	%cl, %edi
	movl	%edi, %ecx
	movl	20(%esp), %edi
	orb	%cl, (%edi,%eax)
.L3345:
	movl	48(%esp), %edi
	addl	$1, 24(%esp)
	movl	24(%esp), %eax
	movl	12(%esp), %ebx
	subl	%edi, 16(%esp)
	addl	%edi, %edx
	addl	%ebx, 28(%esp)
	cmpl	40(%esp), %eax
	jne	.L3352
	movl	84(%esp), %eax
	movl	36(%esp), %edx
	movl	(%eax,%edx,4), %eax
.L3354:
	addl	$1, 56(%esp)
	movl	60(%esp), %ebx
	movl	56(%esp), %edx
	addl	%ebx, 44(%esp)
	cmpl	%eax, %edx
	jb	.L3536
	movl	20(%esp), %ebx
.L3343:
	addl	$1, 36(%esp)
	movl	36(%esp), %eax
	cmpl	$7, %eax
	jne	.L3355
	jmp	.L3356
	.p2align 4,,10
	.p2align 3
.L3718:
	movl	84(%esp), %esi
	movl	%ebx, %ebp
	movl	(%esi,%ebx,4), %edx
.L3340:
	addl	$1, 28(%esp)
	movl	28(%esp), %esi
	cmpl	%edx, %esi
	jb	.L3332
.L3331:
	addl	$1, %ebp
	cmpl	$7, %ebp
	jne	.L3341
.L3356:
	movl	100(%esp), %esi
	movl	92(%esp), %edx
	jmp	.L3321
.L3318:
	movl	%esi, %edx
	movl	%eax, %ebx
	movl	100(%esp), %esi
	jmp	.L3408
.L3700:
	testl	%edi, %edi
	movl	$0, 384(%esp)
	movl	$0, 392(%esp)
	movl	$0, 388(%esp)
	je	.L3428
	cmpb	$0, 8(%ebp)
	je	.L3225
	xorl	%ebx, %ebx
	jmp	.L3228
	.p2align 4,,10
	.p2align 3
.L3226:
	cmpb	$0, 8(%ebp,%ebx)
	je	.L3720
.L3228:
	addl	$1, %ebx
	cmpl	%ebx, %edi
	jne	.L3226
	leal	2(%edi), %eax
	movl	%eax, 48(%esp)
.L3227:
	cmpl	48(%esp), %edi
	ja	.L3721
.L3428:
	xorl	%esi, %esi
	movl	$0, 40(%esp)
	movl	$75, %ebx
.L3224:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
.L3647:
	pushl	52(%esp)
	.cfi_def_cfa_offset 464
	call	free
	movl	$0, 408(%esp)
	movl	$0, 404(%esp)
	movl	%esi, (%esp)
	jmp	.L3646
.L3709:
	.cfi_def_cfa_offset 448
	cmpb	$78, 6(%ebp)
	jne	.L3172
	cmpb	$83, 7(%ebp)
	jne	.L3172
	movl	448(%esp), %eax
	movl	140(%eax), %esi
	cmpl	$3, %esi
	je	.L3722
	testl	%esi, %esi
	jne	.L3195
	cmpl	$2, %edi
	je	.L3723
	movl	$30, %eax
	jmp	.L3198
.L3195:
	cmpl	$2, %esi
	je	.L3724
	movl	$42, %eax
	jmp	.L3198
.L3722:
	movl	448(%esp), %eax
	cmpl	152(%eax), %edi
	jbe	.L3725
	movl	$38, %eax
	jmp	.L3198
.L3725:
	testl	%edi, %edi
	je	.L3199
	movl	448(%esp), %esi
	movl	%ebp, %eax
	addl	%ebp, %edi
	movl	$3, %edx
	.p2align 4,,10
	.p2align 3
.L3194:
	movzbl	8(%eax), %ebx
	movl	148(%esi), %ecx
	addl	$1, %eax
	movb	%bl, (%ecx,%edx)
	addl	$4, %edx
	cmpl	%edi, %eax
	jne	.L3194
	jmp	.L3199
.L3723:
	movl	448(%esp), %eax
	movl	448(%esp), %esi
	movl	$1, 156(%eax)
	movzbl	8(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	9(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 168(%esi)
	movl	%eax, 164(%esi)
	movl	%eax, 160(%esi)
	jmp	.L3199
.L3724:
	cmpl	$6, %edi
	je	.L3726
	movl	$41, %eax
	jmp	.L3198
.L3710:
	leal	1(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	movl	%eax, 60(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 464
	call	malloc
	movl	%eax, 56(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3455
	cmpl	$6, %ebx
	movb	$0, (%eax,%ebx)
	jbe	.L3424
	testl	$3, %esi
	jne	.L3424
	leal	-4(%ebx), %ecx
	movl	40(%esp), %edx
	movl	%ebx, 60(%esp)
	shrl	$2, %ecx
	addl	$1, %ecx
	leal	0(,%ecx,4), %eax
	movl	%eax, 56(%esp)
	xorl	%eax, %eax
.L3208:
	movl	8(%ebp,%eax,4), %ebx
	movl	%ebx, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	%eax, %ecx
	ja	.L3208
	movl	60(%esp), %ebx
	cmpl	%ebx, 56(%esp)
	je	.L3212
	movzbl	(%esi,%ecx,4), %eax
	movl	40(%esp), %edx
	movb	%al, (%edx,%ecx,4)
	movl	56(%esp), %ecx
	movl	%ecx, %eax
	addl	$1, %eax
	cmpl	%ebx, %eax
	je	.L3212
	movzbl	1(%esi,%ecx), %eax
	movb	%al, 1(%edx,%ecx)
	movl	%ecx, %eax
	addl	$2, %eax
	cmpl	%ebx, %eax
	je	.L3212
	movl	56(%esp), %ecx
	movl	40(%esp), %edx
	movzbl	2(%esi,%ecx), %eax
	movb	%al, 2(%edx,%ecx)
.L3212:
	cmpl	48(%esp), %edi
	jb	.L3213
	subl	48(%esp), %edi
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	leal	1(%edi), %eax
	movl	%edi, 68(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 464
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	movl	%eax, %edi
	je	.L3455
	movl	56(%esp), %ecx
	testl	%ecx, %ecx
	movb	$0, (%eax,%ecx)
	je	.L3214
	leal	9(%ebp,%ebx), %eax
	testb	$3, %al
	movl	%eax, 56(%esp)
	jne	.L3426
	cmpl	$6, %ecx
	jbe	.L3426
	leal	-4(%ecx), %eax
	shrl	$2, %eax
	addl	$1, %eax
	leal	0(,%eax,4), %edx
	movl	%eax, %ebx
	xorl	%eax, %eax
	movl	%edx, 60(%esp)
.L3216:
	movl	56(%esp), %edx
	movl	(%edx,%eax,4), %edx
	movl	%edx, (%edi,%eax,4)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jb	.L3216
	movl	60(%esp), %edx
	movl	%ebx, 56(%esp)
	cmpl	%edx, %ecx
	je	.L3214
	movl	48(%esp), %ebx
	leal	(%esi,%edx), %eax
	movzbl	(%eax,%ebx), %eax
	movl	56(%esp), %ebx
	movb	%al, (%edi,%ebx,4)
	leal	1(%edx), %eax
	cmpl	%eax, %ecx
	je	.L3214
	movl	48(%esp), %ebx
	addl	%ebx, %esi
	movzbl	1(%edx,%esi), %eax
	movb	%al, 1(%edi,%edx)
	leal	2(%edx), %eax
	cmpl	%eax, %ecx
	je	.L3214
	movzbl	(%esi,%eax), %eax
	movb	%al, 2(%edi,%edx)
	jmp	.L3214
.L3697:
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	movl	%esi, %edx
	movl	%ebp, %ecx
	pushl	%edi
	.cfi_def_cfa_offset 460
	pushl	28(%esp)
	.cfi_def_cfa_offset 464
	movl	%ebx, %eax
	call	removePaddingBits
	movl	116(%esp), %esi
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	movl	$0, 92(%esp)
	movl	92(%esp), %edx
	jmp	.L3321
.L3311:
	movl	448(%esp), %eax
	movl	$83, 288(%eax)
	jmp	.L3314
.L3694:
	movl	$1, 220(%eax)
	movzbl	8(%ebp), %eax
	xorl	%edi, %edi
	movl	448(%esp), %esi
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	9(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 224(%esi)
	movzbl	10(%ebp), %eax
	movl	%eax, 228(%esi)
	movzbl	11(%ebp), %eax
	movl	%eax, 232(%esi)
	movzbl	12(%ebp), %eax
	movl	%eax, 236(%esi)
	movzbl	13(%ebp), %eax
	movl	%eax, 240(%esi)
	movzbl	14(%ebp), %eax
	movl	$0, 288(%esi)
	movl	%eax, 244(%esi)
	movl	%esi, %eax
	jmp	.L3181
.L3716:
	cmpl	$9, %edi
	movl	448(%esp), %eax
	je	.L3727
	movl	$74, 288(%eax)
	movl	140(%eax), %esi
	movl	$74, %eax
	movl	448(%esp), %edx
	jmp	.L3166
.L3714:
	movl	448(%esp), %eax
	movl	448(%esp), %esi
	movl	$1, 172(%eax)
	movzbl	8(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	9(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 176(%esi)
	movzbl	10(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	11(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 180(%esi)
	movzbl	12(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	13(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 184(%esi)
	jmp	.L3199
.L3692:
	cmpb	$84, 5(%ebp)
	jne	.L3172
	cmpb	$88, 6(%ebp)
	jne	.L3172
	cmpb	$116, 7(%ebp)
	jne	.L3172
	movl	448(%esp), %eax
	movl	24(%eax), %ecx
	testl	%ecx, %ecx
	je	.L3222
	cmpl	$4, %edi
	movl	$0, 384(%esp)
	movl	$0, 392(%esp)
	movl	$0, 388(%esp)
	ja	.L3728
	xorl	%esi, %esi
	movl	$0, 40(%esp)
	movl	$0, 48(%esp)
	movl	$0, 64(%esp)
	movl	$30, %ebx
.L3239:
	subl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 460
	pushl	76(%esp)
	.cfi_def_cfa_offset 464
	call	free
	popl	%eax
	.cfi_def_cfa_offset 460
	pushl	60(%esp)
	.cfi_def_cfa_offset 464
	call	free
	popl	%edx
	.cfi_def_cfa_offset 460
	jmp	.L3647
.L3720:
	.cfi_restore_state
	leal	2(%ebx), %eax
	movl	%eax, 48(%esp)
	jmp	.L3227
.L3713:
	movl	448(%esp), %eax
	movl	448(%esp), %esi
	movl	$1, 172(%eax)
	movzbl	8(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	9(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 184(%esi)
	movl	%eax, 180(%esi)
	movl	%eax, 176(%esi)
	jmp	.L3199
.L3721:
	leal	-1(%ebx), %edx
	cmpl	$78, %edx
	jbe	.L3729
	xorl	%esi, %esi
	movl	$0, 40(%esp)
	movl	$89, %ebx
	jmp	.L3224
.L3728:
	xorl	%ebx, %ebx
	jmp	.L3240
.L3242:
	addl	$1, %ebx
	cmpl	%ebx, %edi
	je	.L3241
.L3240:
	cmpb	$0, 8(%ebp,%ebx)
	jne	.L3242
.L3241:
	leal	3(%ebx), %eax
	cmpl	%eax, %edi
	movl	%eax, 60(%esp)
	ja	.L3730
	xorl	%esi, %esi
	movl	$0, 40(%esp)
	movl	$0, 48(%esp)
	movl	$0, 64(%esp)
	movl	$75, %ebx
	jmp	.L3239
.L3729:
	leal	1(%ebx), %eax
	movl	%edx, 64(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	movl	%eax, 72(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 464
	call	malloc
	movl	%eax, 56(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3430
	cmpl	$6, %ebx
	movb	$0, (%eax,%ebx)
	jbe	.L3431
	testl	$3, %esi
	jne	.L3431
	leal	-4(%ebx), %eax
	movl	64(%esp), %edx
	shrl	$2, %eax
	addl	$1, %eax
	movl	%eax, 56(%esp)
	sall	$2, %eax
	cmpl	$2, %edx
	jbe	.L3432
	movl	%eax, 64(%esp)
	movl	40(%esp), %eax
	xorl	%edx, %edx
.L3231:
	movl	8(%ebp,%edx,4), %ecx
	movl	%ecx, (%eax,%edx,4)
	addl	$1, %edx
	cmpl	%edx, 56(%esp)
	ja	.L3231
	movl	64(%esp), %eax
	cmpl	%eax, %ebx
	je	.L3235
.L3230:
	movzbl	(%esi,%eax), %edx
	movl	40(%esp), %ecx
	movb	%dl, (%ecx,%eax)
	leal	1(%eax), %edx
	cmpl	%edx, %ebx
	je	.L3235
	movzbl	1(%esi,%eax), %edx
	movb	%dl, 1(%ecx,%eax)
	leal	2(%eax), %edx
	cmpl	%edx, %ebx
	je	.L3235
	movzbl	2(%esi,%eax), %edx
	movl	40(%esp), %ebx
	movb	%dl, 2(%ebx,%eax)
.L3235:
	movl	60(%esp), %eax
	cmpb	$0, (%esi,%eax)
	je	.L3731
	xorl	%esi, %esi
	movl	$72, %ebx
	jmp	.L3224
.L3432:
	xorl	%eax, %eax
	jmp	.L3230
.L3730:
	leal	-1(%ebx), %edx
	cmpl	$78, %edx
	jbe	.L3732
	xorl	%esi, %esi
	movl	$0, 40(%esp)
	movl	$0, 48(%esp)
	movl	$0, 64(%esp)
	movl	$89, %ebx
	jmp	.L3239
.L3731:
	cmpl	48(%esp), %edi
	jnb	.L3733
	xorl	%esi, %esi
	movl	$75, %ebx
	jmp	.L3224
.L3732:
	leal	1(%ebx), %eax
	movl	%edx, 48(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	movl	%eax, 52(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 464
	call	malloc
	movl	%eax, 80(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3438
	cmpl	$6, %ebx
	movb	$0, (%eax,%ebx)
	jbe	.L3439
	testl	$3, %esi
	jne	.L3439
	leal	-4(%ebx), %eax
	movl	48(%esp), %edx
	shrl	$2, %eax
	leal	1(%eax), %ecx
	cmpl	$2, %edx
	leal	0(,%ecx,4), %eax
	jbe	.L3440
	movl	%eax, 48(%esp)
	movl	64(%esp), %eax
	xorl	%edx, %edx
	movl	%ecx, 56(%esp)
.L3245:
	movl	8(%ebp,%edx,4), %ecx
	movl	%ecx, (%eax,%edx,4)
	addl	$1, %edx
	cmpl	56(%esp), %edx
	jb	.L3245
	movl	48(%esp), %eax
	cmpl	%eax, %ebx
	je	.L3249
.L3244:
	movzbl	(%esi,%eax), %edx
	movl	64(%esp), %ecx
	movb	%dl, (%ecx,%eax)
	leal	1(%eax), %edx
	cmpl	%ebx, %edx
	je	.L3249
	movzbl	1(%esi,%eax), %edx
	movb	%dl, 1(%ecx,%eax)
	leal	2(%eax), %edx
	cmpl	%ebx, %edx
	je	.L3249
	movzbl	2(%esi,%eax), %edx
	movl	64(%esp), %ecx
	movb	%dl, 2(%ecx,%eax)
.L3249:
	movl	40(%esp), %eax
	cmpb	$0, 2(%esi,%ebx)
	movzbl	(%esi,%eax), %eax
	movb	%al, 80(%esp)
	je	.L3734
	xorl	%esi, %esi
	movl	$0, 40(%esp)
	movl	$0, 48(%esp)
	movl	$72, %ebx
	jmp	.L3239
.L3733:
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	movl	56(%esp), %eax
	pushl	456(%esp)
	.cfi_def_cfa_offset 460
	subl	%eax, %edi
	addl	%eax, %esi
	pushl	%edi
	.cfi_def_cfa_offset 464
	movl	%esi, %ecx
	leal	404(%esp), %edx
	leal	400(%esp), %eax
	call	zlib_decompress
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3236
	movl	%eax, %ebx
	movl	384(%esp), %esi
	jmp	.L3224
.L3431:
	movl	40(%esp), %ecx
	xorl	%eax, %eax
.L3229:
	movzbl	8(%ebp,%eax), %edx
	movb	%dl, (%ecx,%eax)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	.L3229
	jmp	.L3235
.L3430:
	xorl	%esi, %esi
	movl	$83, %ebx
	jmp	.L3224
	.p2align 4,,10
	.p2align 3
.L3213:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	pushl	$1
	.cfi_def_cfa_offset 464
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	movl	%eax, %edi
	je	.L3455
	movb	$0, (%edi)
.L3214:
	subl	$4, %esp
	.cfi_def_cfa_offset 452
	pushl	%edi
	.cfi_def_cfa_offset 456
	movl	48(%esp), %esi
	pushl	%esi
	.cfi_def_cfa_offset 460
	pushl	80(%esp)
	.cfi_def_cfa_offset 464
	call	lodepng_add_text
	movl	%esi, (%esp)
	movl	%eax, %ebx
	call	free
	movl	%edi, (%esp)
.L3652:
	call	free
	movl	464(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%ebx, %ebx
	movl	%ebx, 288(%eax)
	je	.L3649
	movl	448(%esp), %eax
	movl	448(%esp), %edx
	movl	140(%eax), %esi
	movl	%ebx, %eax
	jmp	.L3166
.L3426:
	leal	0(%ebp,%ebx), %edx
	xorl	%eax, %eax
.L3215:
	movzbl	9(%edx,%eax), %ebx
	movb	%bl, (%edi,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L3215
	jmp	.L3214
.L3727:
	movl	$1, 248(%eax)
	movzbl	8(%ebp), %eax
	xorl	%edi, %edi
	movl	448(%esp), %esi
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	9(%ebp), %eax
	addl	%edx, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	10(%ebp), %eax
	addl	%edx, %eax
	movzbl	11(%ebp), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movl	%eax, 252(%esi)
	movzbl	12(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	13(%ebp), %eax
	addl	%edx, %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	14(%ebp), %eax
	addl	%edx, %eax
	movzbl	15(%ebp), %edx
	sall	$8, %eax
	addl	%edx, %eax
	movl	%eax, 256(%esi)
	movzbl	16(%ebp), %eax
	movl	$0, 288(%esi)
	movl	%eax, 260(%esi)
	movl	%esi, %eax
	jmp	.L3181
.L3439:
	movl	64(%esp), %ecx
	xorl	%eax, %eax
.L3243:
	movzbl	8(%ebp,%eax), %edx
	movb	%dl, (%ecx,%eax)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	.L3243
	jmp	.L3249
.L3438:
	xorl	%esi, %esi
	movl	$0, 40(%esp)
	movl	$0, 48(%esp)
	movl	$83, %ebx
	jmp	.L3239
.L3440:
	xorl	%eax, %eax
	jmp	.L3244
.L3236:
	leal	384(%esp), %eax
	xorl	%edx, %edx
	call	ucvector_push_back
	subl	$4, %esp
	.cfi_def_cfa_offset 452
	pushl	388(%esp)
	.cfi_def_cfa_offset 456
	movl	48(%esp), %esi
	pushl	%esi
	.cfi_def_cfa_offset 460
	pushl	80(%esp)
	.cfi_def_cfa_offset 464
	call	lodepng_add_text
	movl	%esi, (%esp)
	movl	%eax, %ebx
.L3651:
	call	free
	movl	$0, 408(%esp)
	movl	$0, 404(%esp)
	popl	%ecx
	.cfi_def_cfa_offset 460
	pushl	396(%esp)
	.cfi_def_cfa_offset 464
	jmp	.L3652
.L3707:
	.cfi_def_cfa_offset 448
	movl	448(%esp), %eax
	movl	448(%esp), %edx
	movl	$83, 288(%eax)
	movl	140(%eax), %esi
	movl	$83, %eax
	jmp	.L3166
.L3706:
	movl	36(%esp), %eax
	movl	%eax, 40(%esp)
	jmp	.L3383
.L3424:
	movl	40(%esp), %ecx
	xorl	%eax, %eax
.L3207:
	movzbl	8(%ebp,%eax), %edx
	movb	%dl, (%ecx,%eax)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jne	.L3207
	jmp	.L3212
.L3455:
	movl	$83, %ebx
	jmp	.L3202
.L3225:
	xorl	%esi, %esi
	cmpl	$3, %edi
	movl	$0, 40(%esp)
	sbbl	%ebx, %ebx
	andl	$-14, %ebx
	addl	$89, %ebx
	jmp	.L3224
.L3726:
	movl	448(%esp), %eax
	movl	448(%esp), %esi
	movl	$1, 156(%eax)
	movzbl	8(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	9(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 160(%esi)
	movzbl	10(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	11(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 164(%esi)
	movzbl	12(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzbl	13(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, 168(%esi)
	jmp	.L3199
.L3717:
	movl	448(%esp), %eax
	movl	448(%esp), %edx
	movl	$69, 288(%eax)
	movl	140(%eax), %esi
	movl	$69, %eax
	jmp	.L3166
.L3734:
	movl	60(%esp), %eax
	cmpb	$0, (%esi,%eax)
	je	.L3250
	leal	-3(%edi), %eax
	leal	0(%ebp,%ebx), %edx
	movl	$1, %ecx
	subl	%ebx, %eax
	movl	%eax, 40(%esp)
.L3253:
	cmpl	40(%esp), %ecx
	je	.L3735
	leal	1(%ecx), %eax
	cmpb	$0, 10(%edx,%eax)
	je	.L3736
	movl	%eax, %ecx
	jmp	.L3253
.L3250:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	pushl	$1
	.cfi_def_cfa_offset 464
	call	malloc
	movl	%eax, 64(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3438
	movl	48(%esp), %eax
	movl	$0, 56(%esp)
	movb	$0, (%eax)
.L3263:
	movl	56(%esp), %eax
	leal	4(%ebx,%eax), %eax
	cmpl	%eax, %edi
	movl	%eax, 72(%esp)
	jbe	.L3257
	cmpb	$0, (%esi,%eax)
	je	.L3257
	movl	%edi, %edx
	movl	56(%esp), %ecx
	movl	$1, 60(%esp)
	subl	%eax, %edx
	movl	%edx, 40(%esp)
	leal	0(%ebp,%eax), %edx
	movl	%edx, 56(%esp)
.L3267:
	movl	40(%esp), %edx
	cmpl	%edx, 60(%esp)
	je	.L3737
	movl	60(%esp), %eax
	movl	56(%esp), %edx
	addl	$1, %eax
	cmpb	$0, 7(%edx,%eax)
	je	.L3738
	movl	%eax, 60(%esp)
	jmp	.L3267
.L3736:
	movl	%ecx, 56(%esp)
.L3252:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	pushl	%eax
	.cfi_def_cfa_offset 464
	call	malloc
	movl	%eax, 64(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3438
	movl	56(%esp), %edx
	movl	48(%esp), %eax
	testl	%edx, %edx
	movb	$0, (%eax,%edx)
	je	.L3263
	movl	%edx, %eax
	leal	11(%ebp,%ebx), %edx
	cmpl	$6, %eax
	jbe	.L3443
	testb	$3, %dl
	jne	.L3443
	subl	$4, %eax
	movl	%edx, 76(%esp)
	movl	48(%esp), %edx
	shrl	$2, %eax
	addl	$1, %eax
	movl	%eax, 72(%esp)
	sall	$2, %eax
	movl	%eax, 40(%esp)
	xorl	%eax, %eax
.L3259:
	movl	76(%esp), %ecx
	movl	(%ecx,%eax,4), %ecx
	movl	%ecx, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	72(%esp), %eax
	jb	.L3259
	movl	40(%esp), %eax
	cmpl	%eax, 56(%esp)
	je	.L3263
	movl	60(%esp), %edx
	addl	%esi, %edx
	movl	%edx, %ecx
	movl	%edx, 60(%esp)
	movzbl	(%ecx,%eax), %edx
	movl	48(%esp), %eax
	movl	72(%esp), %ecx
	movb	%dl, (%eax,%ecx,4)
	movl	40(%esp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	cmpl	56(%esp), %edx
	je	.L3263
	movl	60(%esp), %ecx
	movzbl	(%ecx,%edx), %edx
	movl	48(%esp), %ecx
	movb	%dl, 1(%ecx,%eax)
	leal	2(%eax), %edx
	cmpl	56(%esp), %edx
	je	.L3263
	movl	60(%esp), %eax
	movl	40(%esp), %ecx
	movzbl	(%eax,%edx), %eax
	movl	48(%esp), %edx
	movb	%al, 2(%edx,%ecx)
	jmp	.L3263
.L3735:
	movl	%ecx, %eax
	movl	%ecx, 56(%esp)
	addl	$1, %eax
	jmp	.L3252
.L3738:
	movl	60(%esp), %edx
	movl	%ecx, 56(%esp)
	movl	%edx, 76(%esp)
.L3266:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	pushl	%eax
	.cfi_def_cfa_offset 464
	call	malloc
	movl	%eax, 56(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3396
	movl	60(%esp), %eax
	movl	40(%esp), %edx
	testl	%eax, %eax
	movb	$0, (%edx,%eax)
	je	.L3277
	movl	56(%esp), %eax
	leal	12(%ebx,%eax), %edx
	movl	60(%esp), %eax
	addl	%ebp, %edx
	cmpl	$6, %eax
	jbe	.L3445
	testb	$3, %dl
	jne	.L3445
	subl	$4, %eax
	movl	%edx, 56(%esp)
	movl	40(%esp), %edx
	shrl	$2, %eax
	leal	1(%eax), %ebx
	xorl	%eax, %eax
	leal	0(,%ebx,4), %ecx
	movl	%ecx, 84(%esp)
.L3273:
	movl	56(%esp), %ecx
	movl	(%ecx,%eax,4), %ecx
	movl	%ecx, (%edx,%eax,4)
	addl	$1, %eax
	cmpl	%ebx, %eax
	jb	.L3273
	movl	84(%esp), %ecx
	cmpl	%ecx, 60(%esp)
	je	.L3277
	movl	72(%esp), %edx
	leal	(%esi,%edx), %eax
	movzbl	(%eax,%ecx), %edx
	movl	%eax, 56(%esp)
	movl	40(%esp), %eax
	movb	%dl, (%eax,%ebx,4)
	movl	60(%esp), %ebx
	leal	1(%ecx), %edx
	movl	%eax, 84(%esp)
	cmpl	%edx, %ebx
	je	.L3277
	movl	56(%esp), %eax
	movzbl	1(%eax,%ecx), %edx
	movl	84(%esp), %eax
	movb	%dl, 1(%eax,%ecx)
	leal	2(%ecx), %edx
	cmpl	%edx, %ebx
	je	.L3277
	movl	56(%esp), %eax
	movzbl	(%eax,%edx), %eax
	movl	40(%esp), %edx
	movb	%al, 2(%edx,%ecx)
	jmp	.L3277
.L3737:
	movl	60(%esp), %eax
	movl	%ecx, 56(%esp)
	movl	%eax, 76(%esp)
	addl	$1, %eax
	jmp	.L3266
.L3257:
	subl	$12, %esp
	.cfi_def_cfa_offset 460
	pushl	$1
	.cfi_def_cfa_offset 464
	call	malloc
	movl	%eax, 56(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	je	.L3396
	movl	40(%esp), %eax
	movl	$0, 76(%esp)
	movb	$0, (%eax)
.L3277:
	movl	76(%esp), %eax
	movl	72(%esp), %edx
	leal	1(%eax,%edx), %edx
	cmpl	%edx, %edi
	jb	.L3739
	subl	%edx, %edi
	cmpb	$0, 80(%esp)
	je	.L3279
.L3379:
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	leal	(%esi,%edx), %ecx
	pushl	456(%esp)
	.cfi_def_cfa_offset 460
	pushl	%edi
	.cfi_def_cfa_offset 464
	leal	404(%esp), %edx
	leal	400(%esp), %eax
	call	zlib_decompress
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	jne	.L3740
	movl	388(%esp), %eax
	cmpl	%eax, 392(%esp)
	jnb	.L3281
	movl	%eax, 392(%esp)
.L3281:
	leal	384(%esp), %eax
	xorl	%edx, %edx
	call	ucvector_push_back
.L3282:
	subl	$12, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 460
	pushl	396(%esp)
	.cfi_def_cfa_offset 464
	pushl	56(%esp)
	.cfi_def_cfa_offset 468
	movl	68(%esp), %edi
	pushl	%edi
	.cfi_def_cfa_offset 472
	movl	88(%esp), %esi
	pushl	%esi
	.cfi_def_cfa_offset 476
	pushl	96(%esp)
	.cfi_def_cfa_offset 480
	call	lodepng_add_itext
	addl	$20, %esp
	.cfi_def_cfa_offset 460
	movl	%eax, %ebx
	pushl	%esi
	.cfi_def_cfa_offset 464
	call	free
	movl	%edi, (%esp)
	call	free
	popl	%esi
	.cfi_def_cfa_offset 460
	pushl	52(%esp)
	.cfi_def_cfa_offset 464
	jmp	.L3651
.L3740:
	.cfi_restore_state
	movl	%eax, %ebx
	movl	384(%esp), %esi
	jmp	.L3239
.L3279:
	movl	%edi, %ebx
	addl	$1, %ebx
	je	.L3741
.L3283:
	movl	%edx, 56(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 456
	pushl	%ebx
	.cfi_def_cfa_offset 460
	pushl	$0
	.cfi_def_cfa_offset 464
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 448
	testl	%eax, %eax
	movl	56(%esp), %edx
	je	.L3742
	movl	%ebx, 392(%esp)
	movl	%eax, 384(%esp)
.L3284:
	xorl	%ecx, %ecx
	testl	%edi, %edi
	movl	%ebx, 388(%esp)
	movb	$0, (%eax,%edi)
	leal	0(%ebp,%edx), %eax
	je	.L3282
.L3537:
	movzbl	8(%eax,%ecx), %ebx
	movl	384(%esp), %edx
	movb	%bl, (%edx,%ecx)
	addl	$1, %ecx
	cmpl	%edi, %ecx
	jne	.L3537
	jmp	.L3282
.L3739:
	xorl	%edi, %edi
	cmpb	$0, 80(%esp)
	movl	$1, %ebx
	je	.L3283
	jmp	.L3379
.L3396:
	xorl	%esi, %esi
	movl	$0, 40(%esp)
	movl	$83, %ebx
	jmp	.L3239
.L3742:
	movl	384(%esp), %esi
	movl	$83, %ebx
	jmp	.L3239
.L3741:
	xorl	%eax, %eax
	jmp	.L3284
.L3445:
	movl	72(%esp), %edx
	movl	40(%esp), %ebx
	xorl	%eax, %eax
	addl	%ebp, %edx
.L3272:
	movzbl	8(%edx,%eax), %ecx
	movb	%cl, (%ebx,%eax)
	addl	$1, %eax
	cmpl	60(%esp), %eax
	jne	.L3272
	jmp	.L3277
.L3443:
	leal	0(%ebp,%ebx), %edx
	movl	56(%esp), %ecx
	xorl	%eax, %eax
	movl	%ebx, 40(%esp)
	movl	%edx, 56(%esp)
	movl	48(%esp), %edx
.L3258:
	movl	56(%esp), %ebx
	movzbl	11(%ebx,%eax), %ebx
	movb	%bl, (%edx,%eax)
	addl	$1, %eax
	cmpl	%ecx, %eax
	jne	.L3258
	movl	40(%esp), %ebx
	movl	%ecx, 56(%esp)
	jmp	.L3263
	.cfi_endproc
.LFE183:
	.size	decodeGeneric, .-decodeGeneric
	.section	.text.unlikely
.LCOLDE104:
	.text
.LHOTE104:
	.section	.text.unlikely
.LCOLDB105:
	.text
.LHOTB105:
	.p2align 4,,15
	.globl	lodepng_decode
	.type	lodepng_decode, @function
lodepng_decode:
.LFB184:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	movl	52(%esp), %esi
	movl	64(%esp), %ebx
	movl	$0, (%esi)
	pushl	72(%esp)
	.cfi_def_cfa_offset 56
	movl	%esi, %eax
	pushl	72(%esp)
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	movl	72(%esp), %ecx
	movl	68(%esp), %edx
	call	decodeGeneric
	movl	288(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L3777
	movl	20(%ebx), %edx
	testl	%edx, %edx
	jne	.L3791
	movl	104(%ebx), %eax
	testl	%eax, %eax
	je	.L3752
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L3752:
	movl	140(%ebx), %eax
	movl	148(%ebx), %esi
	movl	%eax, 96(%ebx)
	movl	144(%ebx), %eax
	testl	%esi, %esi
	movl	%esi, 104(%ebx)
	movl	%eax, 100(%ebx)
	movl	152(%ebx), %eax
	movl	%eax, 108(%ebx)
	movl	156(%ebx), %eax
	movl	%eax, 112(%ebx)
	movl	160(%ebx), %eax
	movl	%eax, 116(%ebx)
	movl	164(%ebx), %eax
	movl	%eax, 120(%ebx)
	movl	168(%ebx), %eax
	movl	%eax, 124(%ebx)
	je	.L3753
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	$1024
	.cfi_def_cfa_offset 64
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, 104(%ebx)
	je	.L3754
	movl	152(%ebx), %edi
	leal	0(,%edi,4), %edx
	testl	%edx, %edx
	je	.L3753
	movl	%esi, %ecx
	xorl	%edx, %edx
	jmp	.L3755
	.p2align 4,,10
	.p2align 3
.L3792:
	movl	104(%ebx), %eax
	movl	148(%ebx), %ecx
.L3755:
	movzbl	(%ecx,%edx), %ecx
	movb	%cl, (%eax,%edx)
	movl	152(%ebx), %eax
	addl	$1, %edx
	sall	$2, %eax
	cmpl	%eax, %edx
	jne	.L3792
.L3753:
	movl	$0, 288(%ebx)
.L3789:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3777:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L3791:
	.cfi_restore_state
	movl	96(%ebx), %edx
	cmpl	140(%ebx), %edx
	movl	100(%ebx), %edi
	movl	%edi, (%esp)
	je	.L3793
.L3747:
	movl	%edx, %ebp
	movl	(%esi), %edi
	andl	$-5, %ebp
	cmpl	$2, %ebp
	je	.L3794
	cmpl	$8, (%esp)
	je	.L3795
	movl	$56, %eax
	jmp	.L3777
	.p2align 4,,10
	.p2align 3
.L3794:
	movl	56(%esp), %eax
	movl	(%eax), %ebp
	movl	52(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
.L3762:
	movl	(%esp), %ecx
	imull	CSWTCH.141(,%edx,4), %ecx
	movl	%ecx, %edx
	movl	4(%esp), %ecx
	imull	%ebp, %ecx
	movl	%ecx, %eax
	shrl	$3, %ecx
	andl	$7, %eax
	imull	%edx, %eax
	imull	%edx, %ecx
	addl	$7, %eax
	shrl	$3, %eax
	addl	%ecx, %eax
.L3757:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, (%esi)
	je	.L3796
	leal	140(%ebx), %edx
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%ebp
	.cfi_def_cfa_offset 60
	pushl	16(%esp)
	.cfi_def_cfa_offset 64
	pushl	%edx
	.cfi_def_cfa_offset 68
	leal	96(%ebx), %edx
	pushl	%edx
	.cfi_def_cfa_offset 72
	pushl	%edi
	.cfi_def_cfa_offset 76
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	lodepng_convert
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 288(%ebx)
.L3759:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	free
	movl	288(%ebx), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L3777
	.p2align 4,,10
	.p2align 3
.L3793:
	cmpl	144(%ebx), %edi
	jne	.L3747
	movl	112(%ebx), %ebp
	cmpl	156(%ebx), %ebp
	jne	.L3747
	testl	%ebp, %ebp
	je	.L3748
	movl	160(%ebx), %ecx
	cmpl	%ecx, 116(%ebx)
	jne	.L3747
	movl	164(%ebx), %ecx
	cmpl	%ecx, 120(%ebx)
	jne	.L3747
	movl	168(%ebx), %ecx
	cmpl	%ecx, 124(%ebx)
	jne	.L3747
.L3748:
	movl	108(%ebx), %ebp
	cmpl	152(%ebx), %ebp
	movl	%edi, (%esp)
	jne	.L3747
	leal	0(,%ebp,4), %ecx
	testl	%ecx, %ecx
	movl	%ecx, 12(%esp)
	je	.L3789
	movl	148(%ebx), %ecx
	movl	104(%ebx), %ebp
	movl	%ecx, 4(%esp)
	movzbl	(%ecx), %ecx
	cmpb	%cl, 0(%ebp)
	movl	%ebp, 8(%esp)
	jne	.L3747
	movl	4(%esp), %ebp
	movl	%edx, (%esp)
	xorl	%ecx, %ecx
	movl	%edi, 4(%esp)
	movl	12(%esp), %edx
	movl	8(%esp), %edi
	movl	%ebx, 60(%esp)
	jmp	.L3750
	.p2align 4,,10
	.p2align 3
.L3751:
	movzbl	0(%ebp,%ecx), %ebx
	cmpb	%bl, (%edi,%ecx)
	jne	.L3771
.L3750:
	addl	$1, %ecx
	cmpl	%edx, %ecx
	jne	.L3751
	jmp	.L3777
	.p2align 4,,10
	.p2align 3
.L3796:
	movl	$83, 288(%ebx)
	jmp	.L3759
	.p2align 4,,10
	.p2align 3
.L3754:
	movl	152(%ebx), %eax
	testl	%eax, %eax
	je	.L3753
	movl	$83, 288(%ebx)
	movl	$83, %eax
	jmp	.L3777
.L3771:
	movl	4(%esp), %edi
	movl	(%esp), %edx
	movl	60(%esp), %ebx
	movl	%edi, (%esp)
	jmp	.L3747
.L3795:
	movl	56(%esp), %ecx
	cmpl	$6, %edx
	movl	(%ecx), %ebp
	movl	52(%esp), %ecx
	movl	(%ecx), %ecx
	movl	%ecx, 4(%esp)
	ja	.L3757
	jmp	.L3762
	.cfi_endproc
.LFE184:
	.size	lodepng_decode, .-lodepng_decode
	.section	.text.unlikely
.LCOLDE105:
	.text
.LHOTE105:
	.section	.text.unlikely
.LCOLDB106:
	.text
.LHOTB106:
	.p2align 4,,15
	.globl	lodepng_decode_memory
	.type	lodepng_decode_memory, @function
lodepng_decode_memory:
.LFB185:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$336, %esp
	.cfi_def_cfa_offset 356
	movl	356(%esp), %esi
	movl	$1, 52(%esp)
	movl	$1, 56(%esp)
	movl	$0, 60(%esp)
	movl	$0, 48(%esp)
	movl	$0, 32(%esp)
	movl	$0, 36(%esp)
	movl	$0, 40(%esp)
	movl	$0, 44(%esp)
	movl	$2, 64(%esp)
	movl	$1, 68(%esp)
	movl	$2048, 72(%esp)
	movl	$3, 76(%esp)
	movl	$128, 80(%esp)
	movl	$1, 84(%esp)
	movl	$0, 88(%esp)
	movl	$0, 92(%esp)
	movl	$0, 96(%esp)
	movl	$1, 104(%esp)
	movl	$1, 108(%esp)
	movl	$1, 100(%esp)
	movl	$0, 116(%esp)
	movl	$0, 112(%esp)
	movl	$0, 120(%esp)
	movl	$1, 124(%esp)
	movl	$0, 144(%esp)
	movl	$0, 156(%esp)
	movl	$0, 152(%esp)
	movl	$0, 148(%esp)
	movl	$0, 136(%esp)
	movl	$0, 140(%esp)
	movl	$0, 188(%esp)
	movl	$0, 200(%esp)
	movl	$0, 196(%esp)
	movl	$0, 192(%esp)
	movl	$6, 172(%esp)
	movl	$8, 176(%esp)
	movl	$0, 180(%esp)
	movl	$0, 184(%esp)
	movl	$0, 168(%esp)
	movl	$0, 160(%esp)
	movl	$0, 164(%esp)
	movl	$0, 204(%esp)
	movl	$0, 216(%esp)
	movl	$0, 212(%esp)
	movl	$0, 208(%esp)
	movl	$0, 220(%esp)
	movl	$0, 224(%esp)
	movl	$0, 228(%esp)
	movl	$0, 232(%esp)
	movl	$0, 236(%esp)
	movl	$0, 240(%esp)
	movl	$0, 244(%esp)
	movl	$0, 248(%esp)
	movl	$0, 252(%esp)
	movl	$0, 280(%esp)
	movl	$0, 296(%esp)
	movl	$0, 300(%esp)
	movl	$0, 304(%esp)
	movl	$0, 308(%esp)
	movl	$0, 312(%esp)
	movl	$0, 316(%esp)
	movl	$1, 320(%esp)
	movl	376(%esp), %eax
	movl	$0, (%esi)
	movl	%eax, 128(%esp)
	movl	380(%esp), %eax
	movl	%eax, 132(%esp)
	pushl	372(%esp)
	.cfi_def_cfa_offset 360
	pushl	372(%esp)
	.cfi_def_cfa_offset 364
	leal	40(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 368
	movl	376(%esp), %ecx
	movl	%esi, %eax
	movl	372(%esp), %edx
	call	decodeGeneric
	movl	332(%esp), %ebx
	addl	$16, %esp
	.cfi_def_cfa_offset 352
	movl	132(%esp), %edx
	testl	%ebx, %ebx
	jne	.L3799
	movl	48(%esp), %edx
	testl	%edx, %edx
	jne	.L3846
	movl	132(%esp), %eax
	testl	%eax, %eax
	je	.L3808
	subl	$12, %esp
	.cfi_def_cfa_offset 364
	pushl	%eax
	.cfi_def_cfa_offset 368
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 352
.L3808:
	movl	168(%esp), %eax
	movl	176(%esp), %ebx
	movl	%eax, 124(%esp)
	movl	172(%esp), %eax
	testl	%ebx, %ebx
	movl	%ebx, 132(%esp)
	movl	%eax, 128(%esp)
	movl	180(%esp), %eax
	movl	%eax, 136(%esp)
	movl	184(%esp), %eax
	movl	%eax, 140(%esp)
	movl	188(%esp), %eax
	movl	%eax, 144(%esp)
	movl	192(%esp), %eax
	movl	%eax, 148(%esp)
	movl	196(%esp), %eax
	movl	%eax, 152(%esp)
	je	.L3809
	subl	$12, %esp
	.cfi_def_cfa_offset 364
	pushl	$1024
	.cfi_def_cfa_offset 368
	call	malloc
	movl	%eax, 148(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 352
	testl	%eax, %eax
	je	.L3810
	movl	180(%esp), %edi
	leal	0(,%edi,4), %edx
	testl	%edx, %edx
	je	.L3831
	xorl	%ecx, %ecx
	jmp	.L3812
	.p2align 4,,10
	.p2align 3
.L3814:
	movl	132(%esp), %eax
	movl	176(%esp), %ebx
.L3812:
	movzbl	(%ebx,%ecx), %edx
	movb	%dl, (%eax,%ecx)
	movl	180(%esp), %eax
	addl	$1, %ecx
	sall	$2, %eax
	cmpl	%eax, %ecx
	jne	.L3814
	movl	132(%esp), %edx
.L3811:
	movl	$0, 316(%esp)
.L3844:
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L3799:
	testl	%edx, %edx
	je	.L3819
	subl	$12, %esp
	.cfi_def_cfa_offset 364
	pushl	%edx
	.cfi_def_cfa_offset 368
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 352
.L3819:
	movl	$0, 132(%esp)
	movl	$0, 136(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 364
	leal	168(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 368
	call	lodepng_info_cleanup
	addl	$348, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
	.p2align 4,,10
	.p2align 3
.L3846:
	.cfi_def_cfa_offset 352
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	124(%esp), %eax
	cmpl	168(%esp), %eax
	movl	128(%esp), %edi
	movl	%edi, 4(%esp)
	je	.L3847
.L3802:
	movl	%eax, %edx
	movl	(%esi), %edi
	andl	$-5, %edx
	cmpl	$2, %edx
	je	.L3848
	cmpl	$8, 4(%esp)
	je	.L3815
	movl	132(%esp), %edx
	movl	$56, %ebx
	jmp	.L3799
	.p2align 4,,10
	.p2align 3
.L3848:
	movl	360(%esp), %ecx
	movl	(%ecx), %edx
	movl	356(%esp), %ecx
	movl	(%ecx), %ebp
.L3822:
	movl	4(%esp), %ecx
	imull	CSWTCH.141(,%eax,4), %ecx
	movl	%ecx, %ebx
	movl	%ebp, %ecx
	imull	%edx, %ecx
	movl	%ecx, %eax
	shrl	$3, %ecx
	andl	$7, %eax
	imull	%ebx, %eax
	imull	%ecx, %ebx
	addl	$7, %eax
	shrl	$3, %eax
	addl	%eax, %ebx
.L3816:
	movl	%edx, 4(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 364
	pushl	%ebx
	.cfi_def_cfa_offset 368
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 352
	testl	%eax, %eax
	movl	%eax, (%esi)
	movl	4(%esp), %edx
	je	.L3849
	subl	$8, %esp
	.cfi_def_cfa_offset 360
	pushl	%edx
	.cfi_def_cfa_offset 364
	pushl	%ebp
	.cfi_def_cfa_offset 368
	leal	184(%esp), %edx
	pushl	%edx
	.cfi_def_cfa_offset 372
	leal	144(%esp), %edx
	pushl	%edx
	.cfi_def_cfa_offset 376
	pushl	%edi
	.cfi_def_cfa_offset 380
	pushl	%eax
	.cfi_def_cfa_offset 384
	call	lodepng_convert
	movl	%eax, 348(%esp)
	addl	$32, %esp
	.cfi_def_cfa_offset 352
.L3818:
	subl	$12, %esp
	.cfi_def_cfa_offset 364
	pushl	%edi
	.cfi_def_cfa_offset 368
	call	free
	movl	332(%esp), %ebx
	movl	148(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 352
	jmp	.L3799
	.p2align 4,,10
	.p2align 3
.L3847:
	cmpl	172(%esp), %edi
	jne	.L3802
	movl	140(%esp), %edx
	cmpl	184(%esp), %edx
	jne	.L3802
	testl	%edx, %edx
	je	.L3803
	movl	188(%esp), %ecx
	cmpl	%ecx, 144(%esp)
	jne	.L3802
	movl	192(%esp), %ecx
	cmpl	%ecx, 148(%esp)
	jne	.L3802
	movl	196(%esp), %ecx
	cmpl	%ecx, 152(%esp)
	jne	.L3802
.L3803:
	movl	136(%esp), %edx
	cmpl	180(%esp), %edx
	movl	%edi, 4(%esp)
	jne	.L3802
	leal	0(,%edx,4), %ecx
	movl	132(%esp), %edx
	testl	%ecx, %ecx
	movl	%ecx, 8(%esp)
	je	.L3844
	movl	176(%esp), %ebp
	movzbl	0(%ebp), %ecx
	cmpb	%cl, (%edx)
	jne	.L3802
	movl	%eax, 12(%esp)
	xorl	%ecx, %ecx
	movl	%ebx, 4(%esp)
	movl	8(%esp), %eax
	jmp	.L3806
	.p2align 4,,10
	.p2align 3
.L3807:
	movzbl	0(%ebp,%ecx), %ebx
	cmpb	%bl, (%edx,%ecx)
	jne	.L3830
.L3806:
	addl	$1, %ecx
	cmpl	%eax, %ecx
	jne	.L3807
	movl	4(%esp), %ebx
	jmp	.L3799
	.p2align 4,,10
	.p2align 3
.L3809:
	xorl	%edx, %edx
	jmp	.L3811
	.p2align 4,,10
	.p2align 3
.L3849:
	movl	$83, 316(%esp)
	jmp	.L3818
	.p2align 4,,10
	.p2align 3
.L3810:
	movl	180(%esp), %eax
	testl	%eax, %eax
	je	.L3809
	movl	$83, 316(%esp)
	movl	$83, %ebx
	jmp	.L3819
.L3831:
	movl	%eax, %edx
	jmp	.L3811
.L3830:
	movl	4(%esp), %ebx
	movl	12(%esp), %eax
	movl	%edi, 4(%esp)
	jmp	.L3802
.L3815:
	movl	360(%esp), %ecx
	cmpl	$6, %eax
	movl	(%ecx), %edx
	movl	356(%esp), %ecx
	movl	(%ecx), %ebp
	ja	.L3816
	jmp	.L3822
	.cfi_endproc
.LFE185:
	.size	lodepng_decode_memory, .-lodepng_decode_memory
	.section	.text.unlikely
.LCOLDE106:
	.text
.LHOTE106:
	.section	.text.unlikely
.LCOLDB107:
	.text
.LHOTB107:
	.p2align 4,,15
	.globl	lodepng_decode32
	.type	lodepng_decode32, @function
lodepng_decode32:
.LFB186:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	pushl	$8
	.cfi_def_cfa_offset 24
	pushl	$6
	.cfi_def_cfa_offset 28
	pushl	44(%esp)
	.cfi_def_cfa_offset 32
	pushl	44(%esp)
	.cfi_def_cfa_offset 36
	pushl	44(%esp)
	.cfi_def_cfa_offset 40
	pushl	44(%esp)
	.cfi_def_cfa_offset 44
	pushl	44(%esp)
	.cfi_def_cfa_offset 48
	call	lodepng_decode_memory
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE186:
	.size	lodepng_decode32, .-lodepng_decode32
	.section	.text.unlikely
.LCOLDE107:
	.text
.LHOTE107:
	.section	.text.unlikely
.LCOLDB108:
	.text
.LHOTB108:
	.p2align 4,,15
	.globl	lodepng_decode24
	.type	lodepng_decode24, @function
lodepng_decode24:
.LFB187:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	pushl	$8
	.cfi_def_cfa_offset 24
	pushl	$2
	.cfi_def_cfa_offset 28
	pushl	44(%esp)
	.cfi_def_cfa_offset 32
	pushl	44(%esp)
	.cfi_def_cfa_offset 36
	pushl	44(%esp)
	.cfi_def_cfa_offset 40
	pushl	44(%esp)
	.cfi_def_cfa_offset 44
	pushl	44(%esp)
	.cfi_def_cfa_offset 48
	call	lodepng_decode_memory
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE187:
	.size	lodepng_decode24, .-lodepng_decode24
	.section	.text.unlikely
.LCOLDE108:
	.text
.LHOTE108:
	.section	.text.unlikely
.LCOLDB109:
	.text
.LHOTB109:
	.p2align 4,,15
	.globl	lodepng_decode_file
	.type	lodepng_decode_file, @function
lodepng_decode_file:
.LFB188:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	68(%esp), %edi
	pushl	$.LC28
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L3877
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$2
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	fseek
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L3857
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	ftell
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	$2147483647, %eax
	movl	%eax, %esi
	je	.L3857
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%esi, %esi
	js	.L3877
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L3866
	testl	%esi, %esi
	je	.L3866
	xorl	%ebx, %ebx
	movl	$83, %edi
	jmp	.L3861
	.p2align 4,,10
	.p2align 3
.L3857:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L3877:
	xorl	%ebx, %ebx
	movl	$78, %edi
.L3861:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	free
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
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
	.p2align 4,,10
	.p2align 3
.L3866:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	$.LC28
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	movl	$78, %edi
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebp
	je	.L3861
	pushl	%eax
	.cfi_def_cfa_offset 52
	pushl	%esi
	.cfi_def_cfa_offset 56
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	fread
	movl	%ebp, (%esp)
	movl	%eax, 28(%esp)
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	12(%esp), %esi
	jne	.L3861
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	72(%esp)
	.cfi_def_cfa_offset 56
	pushl	72(%esp)
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	pushl	%ebx
	.cfi_def_cfa_offset 68
	pushl	76(%esp)
	.cfi_def_cfa_offset 72
	pushl	76(%esp)
	.cfi_def_cfa_offset 76
	pushl	76(%esp)
	.cfi_def_cfa_offset 80
	call	lodepng_decode_memory
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %edi
	jmp	.L3861
	.cfi_endproc
.LFE188:
	.size	lodepng_decode_file, .-lodepng_decode_file
	.section	.text.unlikely
.LCOLDE109:
	.text
.LHOTE109:
	.section	.text.unlikely
.LCOLDB110:
	.text
.LHOTB110:
	.p2align 4,,15
	.globl	lodepng_decode32_file
	.type	lodepng_decode32_file, @function
lodepng_decode32_file:
.LFB189:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	68(%esp), %edi
	pushl	$.LC28
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L3901
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$2
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	fseek
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L3881
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	ftell
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	$2147483647, %eax
	movl	%eax, %esi
	je	.L3881
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%esi, %esi
	js	.L3901
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L3890
	testl	%esi, %esi
	je	.L3890
	xorl	%ebx, %ebx
	movl	$83, %edi
	jmp	.L3885
	.p2align 4,,10
	.p2align 3
.L3881:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L3901:
	xorl	%ebx, %ebx
	movl	$78, %edi
.L3885:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	free
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
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
	.p2align 4,,10
	.p2align 3
.L3890:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	$.LC28
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	movl	$78, %edi
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebp
	je	.L3885
	pushl	%eax
	.cfi_def_cfa_offset 52
	pushl	%esi
	.cfi_def_cfa_offset 56
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	fread
	movl	%ebp, (%esp)
	movl	%eax, 28(%esp)
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	12(%esp), %esi
	jne	.L3885
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$8
	.cfi_def_cfa_offset 56
	pushl	$6
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	pushl	%ebx
	.cfi_def_cfa_offset 68
	pushl	76(%esp)
	.cfi_def_cfa_offset 72
	pushl	76(%esp)
	.cfi_def_cfa_offset 76
	pushl	76(%esp)
	.cfi_def_cfa_offset 80
	call	lodepng_decode_memory
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %edi
	jmp	.L3885
	.cfi_endproc
.LFE189:
	.size	lodepng_decode32_file, .-lodepng_decode32_file
	.section	.text.unlikely
.LCOLDE110:
	.text
.LHOTE110:
	.section	.text.unlikely
.LCOLDB111:
	.text
.LHOTB111:
	.p2align 4,,15
	.globl	lodepng_decode24_file
	.type	lodepng_decode24_file, @function
lodepng_decode24_file:
.LFB190:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$36, %esp
	.cfi_def_cfa_offset 56
	movl	68(%esp), %edi
	pushl	$.LC28
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L3925
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$2
	.cfi_def_cfa_offset 56
	pushl	$0
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	fseek
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jne	.L3905
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	ftell
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	$2147483647, %eax
	movl	%eax, %esi
	je	.L3905
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%esi, %esi
	js	.L3925
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L3914
	testl	%esi, %esi
	je	.L3914
	xorl	%ebx, %ebx
	movl	$83, %edi
	jmp	.L3909
	.p2align 4,,10
	.p2align 3
.L3905:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L3925:
	xorl	%ebx, %ebx
	movl	$78, %edi
.L3909:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	free
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	movl	%edi, %eax
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
	.p2align 4,,10
	.p2align 3
.L3914:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	$.LC28
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	movl	$78, %edi
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebp
	je	.L3909
	pushl	%eax
	.cfi_def_cfa_offset 52
	pushl	%esi
	.cfi_def_cfa_offset 56
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	%ebx
	.cfi_def_cfa_offset 64
	call	fread
	movl	%ebp, (%esp)
	movl	%eax, 28(%esp)
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	cmpl	12(%esp), %esi
	jne	.L3909
	subl	$4, %esp
	.cfi_def_cfa_offset 52
	pushl	$8
	.cfi_def_cfa_offset 56
	pushl	$2
	.cfi_def_cfa_offset 60
	pushl	%esi
	.cfi_def_cfa_offset 64
	pushl	%ebx
	.cfi_def_cfa_offset 68
	pushl	76(%esp)
	.cfi_def_cfa_offset 72
	pushl	76(%esp)
	.cfi_def_cfa_offset 76
	pushl	76(%esp)
	.cfi_def_cfa_offset 80
	call	lodepng_decode_memory
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, %edi
	jmp	.L3909
	.cfi_endproc
.LFE190:
	.size	lodepng_decode24_file, .-lodepng_decode24_file
	.section	.text.unlikely
.LCOLDE111:
	.text
.LHOTE111:
	.section	.text.unlikely
.LCOLDB112:
	.text
.LHOTB112:
	.p2align 4,,15
	.globl	lodepng_decoder_settings_init
	.type	lodepng_decoder_settings_init, @function
lodepng_decoder_settings_init:
.LFB191:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$1, 20(%eax)
	movl	$1, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 16(%eax)
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	ret
	.cfi_endproc
.LFE191:
	.size	lodepng_decoder_settings_init, .-lodepng_decoder_settings_init
	.section	.text.unlikely
.LCOLDE112:
	.text
.LHOTE112:
	.section	.text.unlikely
.LCOLDB113:
	.text
.LHOTB113:
	.p2align 4,,15
	.globl	lodepng_state_init
	.type	lodepng_state_init, @function
lodepng_state_init:
.LFB192:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$1, 20(%eax)
	movl	$1, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 16(%eax)
	movl	$0, (%eax)
	movl	$0, 4(%eax)
	movl	$0, 8(%eax)
	movl	$0, 12(%eax)
	movl	$2, 32(%eax)
	movl	$1, 36(%eax)
	movl	$2048, 40(%eax)
	movl	$3, 44(%eax)
	movl	$128, 48(%eax)
	movl	$1, 52(%eax)
	movl	$0, 56(%eax)
	movl	$0, 60(%eax)
	movl	$0, 64(%eax)
	movl	$1, 72(%eax)
	movl	$1, 76(%eax)
	movl	$1, 68(%eax)
	movl	$0, 84(%eax)
	movl	$0, 80(%eax)
	movl	$0, 88(%eax)
	movl	$1, 92(%eax)
	movl	$0, 112(%eax)
	movl	$0, 124(%eax)
	movl	$0, 120(%eax)
	movl	$0, 116(%eax)
	movl	$6, 96(%eax)
	movl	$8, 100(%eax)
	movl	$0, 104(%eax)
	movl	$0, 108(%eax)
	movl	$0, 156(%eax)
	movl	$0, 168(%eax)
	movl	$0, 164(%eax)
	movl	$0, 160(%eax)
	movl	$6, 140(%eax)
	movl	$8, 144(%eax)
	movl	$0, 148(%eax)
	movl	$0, 152(%eax)
	movl	$0, 136(%eax)
	movl	$0, 128(%eax)
	movl	$0, 132(%eax)
	movl	$0, 172(%eax)
	movl	$0, 184(%eax)
	movl	$0, 180(%eax)
	movl	$0, 176(%eax)
	movl	$0, 188(%eax)
	movl	$0, 192(%eax)
	movl	$0, 196(%eax)
	movl	$0, 200(%eax)
	movl	$0, 204(%eax)
	movl	$0, 208(%eax)
	movl	$0, 212(%eax)
	movl	$0, 216(%eax)
	movl	$0, 220(%eax)
	movl	$0, 248(%eax)
	movl	$0, 264(%eax)
	movl	$0, 268(%eax)
	movl	$0, 272(%eax)
	movl	$0, 276(%eax)
	movl	$0, 280(%eax)
	movl	$0, 284(%eax)
	movl	$1, 288(%eax)
	ret
	.cfi_endproc
.LFE192:
	.size	lodepng_state_init, .-lodepng_state_init
	.section	.text.unlikely
.LCOLDE113:
	.text
.LHOTE113:
	.section	.text.unlikely
.LCOLDB114:
	.text
.LHOTB114:
	.p2align 4,,15
	.globl	lodepng_state_cleanup
	.type	lodepng_state_cleanup, @function
lodepng_state_cleanup:
.LFB193:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movl	16(%esp), %ebx
	movl	104(%ebx), %eax
	testl	%eax, %eax
	je	.L3929
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	%eax
	.cfi_def_cfa_offset 32
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 16
.L3929:
	movl	$0, 104(%ebx)
	movl	$0, 108(%ebx)
	subl	$-128, %ebx
	movl	%ebx, 16(%esp)
	addl	$8, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	lodepng_info_cleanup
	.cfi_endproc
.LFE193:
	.size	lodepng_state_cleanup, .-lodepng_state_cleanup
	.section	.text.unlikely
.LCOLDE114:
	.text
.LHOTE114:
	.section	.text.unlikely
.LCOLDB115:
	.text
.LHOTB115:
	.p2align 4,,15
	.globl	lodepng_state_copy
	.type	lodepng_state_copy, @function
lodepng_state_copy:
.LFB194:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ebx
	movl	52(%esp), %ebp
	movl	104(%ebx), %eax
	testl	%eax, %eax
	je	.L3935
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 48
.L3935:
	leal	128(%ebx), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	movl	$0, 104(%ebx)
	movl	$0, 108(%ebx)
	movl	%ebx, %edi
	movl	%ebp, %esi
	movl	%eax, 24(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 64
	call	lodepng_info_cleanup
	movl	$73, %ecx
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	rep movsl
	movl	$0, 112(%ebx)
	movl	$0, 124(%ebx)
	movl	$0, 120(%ebx)
	movl	$0, 116(%ebx)
	movl	$6, 96(%ebx)
	movl	$8, 100(%ebx)
	movl	$0, 156(%ebx)
	movl	$0, 168(%ebx)
	movl	$0, 164(%ebx)
	movl	$0, 160(%ebx)
	movl	$6, 140(%ebx)
	movl	$8, 144(%ebx)
	movl	$0, 148(%ebx)
	movl	$0, 152(%ebx)
	movl	$0, 136(%ebx)
	movl	$0, 128(%ebx)
	movl	$0, 132(%ebx)
	movl	$0, 172(%ebx)
	movl	$0, 184(%ebx)
	movl	$0, 180(%ebx)
	movl	$0, 176(%ebx)
	movl	$0, 188(%ebx)
	movl	$0, 192(%ebx)
	movl	$0, 196(%ebx)
	movl	$0, 200(%ebx)
	movl	$0, 204(%ebx)
	movl	$0, 208(%ebx)
	movl	$0, 212(%ebx)
	movl	$0, 216(%ebx)
	movl	$0, 220(%ebx)
	movl	$0, 248(%ebx)
	movl	$0, 264(%ebx)
	movl	$0, 104(%ebx)
	movl	$0, 108(%ebx)
	movl	96(%ebp), %eax
	movl	$0, 268(%ebx)
	movl	$0, 272(%ebx)
	movl	$0, 276(%ebx)
	movl	$0, 280(%ebx)
	movl	$0, 284(%ebx)
	movl	%eax, 96(%ebx)
	movl	100(%ebp), %eax
	movl	%eax, 100(%ebx)
	movl	104(%ebp), %eax
	movl	%eax, 104(%ebx)
	movl	108(%ebp), %eax
	movl	104(%ebp), %edx
	movl	%eax, 108(%ebx)
	movl	112(%ebp), %eax
	testl	%edx, %edx
	movl	%eax, 112(%ebx)
	movl	116(%ebp), %eax
	movl	%eax, 116(%ebx)
	movl	120(%ebp), %eax
	movl	%eax, 120(%ebx)
	movl	124(%ebp), %eax
	movl	%eax, 124(%ebx)
	je	.L3936
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	$1024
	.cfi_def_cfa_offset 64
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, 104(%ebx)
	je	.L3937
	movl	108(%ebp), %esi
	leal	0(,%esi,4), %edx
	testl	%edx, %edx
	je	.L3936
	xorl	%edx, %edx
	jmp	.L3938
	.p2align 4,,10
	.p2align 3
.L3948:
	movl	104(%ebx), %eax
.L3938:
	movl	104(%ebp), %ecx
	movzbl	(%ecx,%edx), %ecx
	movb	%cl, (%eax,%edx)
	movl	108(%ebp), %eax
	addl	$1, %edx
	sall	$2, %eax
	cmpl	%eax, %edx
	jne	.L3948
.L3936:
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	subl	$-128, %ebp
	movl	$0, 288(%ebx)
	pushl	%ebp
	.cfi_def_cfa_offset 60
	pushl	24(%esp)
	.cfi_def_cfa_offset 64
	call	lodepng_info_copy
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	movl	%eax, 288(%ebx)
.L3934:
	addl	$28, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L3937:
	.cfi_restore_state
	movl	108(%ebp), %eax
	testl	%eax, %eax
	je	.L3936
	movl	$83, 288(%ebx)
	jmp	.L3934
	.cfi_endproc
.LFE194:
	.size	lodepng_state_copy, .-lodepng_state_copy
	.section	.text.unlikely
.LCOLDE115:
	.text
.LHOTE115:
	.section	.rodata.str1.1
.LC116:
	.string	"bKGD"
.LC117:
	.string	"IDAT"
.LC118:
	.string	"zTXt"
.LC119:
	.string	"LodePNG"
.LC120:
	.string	"iTXt"
.LC121:
	.string	"IEND"
	.section	.text.unlikely
.LCOLDB122:
	.text
.LHOTB122:
	.p2align 4,,15
	.globl	lodepng_encode
	.type	lodepng_encode, @function
lodepng_encode:
.LFB216:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$276, %esp
	.cfi_def_cfa_offset 296
	movl	296(%esp), %eax
	movl	316(%esp), %ebp
	movl	$0, 60(%esp)
	movl	$0, 64(%esp)
	movl	$0, 132(%esp)
	movl	$0, 144(%esp)
	movl	$0, (%eax)
	movl	300(%esp), %eax
	movl	$0, 140(%esp)
	movl	$0, 136(%esp)
	movl	$6, 116(%esp)
	movl	$8, 120(%esp)
	movl	$0, (%eax)
	leal	128(%ebp), %eax
	movl	$0, 124(%esp)
	movl	$0, 128(%esp)
	movl	$0, 112(%esp)
	movl	$0, 104(%esp)
	movl	$0, 108(%esp)
	movl	$0, 148(%esp)
	movl	$0, 160(%esp)
	movl	$0, 156(%esp)
	movl	$0, 152(%esp)
	movl	$0, 164(%esp)
	movl	$0, 168(%esp)
	movl	$0, 172(%esp)
	movl	$0, 176(%esp)
	movl	$0, 180(%esp)
	movl	$0, 288(%ebp)
	movl	$0, 184(%esp)
	movl	$0, 188(%esp)
	movl	$0, 192(%esp)
	movl	$0, 196(%esp)
	movl	$0, 224(%esp)
	movl	$0, 240(%esp)
	movl	$0, 244(%esp)
	movl	$0, 248(%esp)
	movl	$0, 252(%esp)
	movl	$0, 256(%esp)
	movl	$0, 260(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 300
	leal	108(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 304
	call	lodepng_info_copy
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	cmpl	$3, 108(%esp)
	je	.L3950
	movl	84(%ebp), %ebx
	testl	%ebx, %ebx
	je	.L3951
.L3950:
	movl	120(%esp), %eax
	subl	$1, %eax
	cmpl	$255, %eax
	jbe	.L3951
	movl	$68, 288(%ebp)
	movl	$68, %eax
.L4198:
	addl	$268, %esp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L3951:
	.cfi_restore_state
	movl	68(%ebp), %ecx
	testl	%ecx, %ecx
	jne	.L3953
	movl	288(%ebp), %eax
.L3954:
	testl	%eax, %eax
	jne	.L4198
	cmpl	$2, 32(%ebp)
	jbe	.L3955
	movl	$61, 288(%ebp)
	addl	$268, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	movb	$61, %al
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
	.p2align 4,,10
	.p2align 3
.L3953:
	.cfi_restore_state
	leal	96(%ebp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	%eax
	.cfi_def_cfa_offset 304
	pushl	320(%esp)
	.cfi_def_cfa_offset 308
	pushl	320(%esp)
	.cfi_def_cfa_offset 312
	pushl	320(%esp)
	.cfi_def_cfa_offset 316
	leal	136(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 320
	call	lodepng_auto_choose_color
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	movl	%eax, 288(%ebp)
	jmp	.L3954
	.p2align 4,,10
	.p2align 3
.L3955:
	cmpl	$1, 136(%ebp)
	jbe	.L3956
	movl	$71, 288(%ebp)
	movl	$71, %eax
	jmp	.L4198
	.p2align 4,,10
	.p2align 3
.L3956:
	movl	112(%esp), %eax
	movl	108(%esp), %esi
	movl	%eax, 4(%esp)
	movl	%eax, %edx
	movl	%eax, %ebx
	movl	%esi, %eax
	call	checkColorValidity
	testl	%eax, %eax
	movl	%eax, 288(%ebp)
	jne	.L4198
	movl	100(%ebp), %ecx
	movl	96(%ebp), %edi
	movl	%ecx, %edx
	movl	%edi, %eax
	movl	%ecx, 8(%esp)
	call	checkColorValidity
	testl	%eax, %eax
	movl	%eax, 288(%ebp)
	jne	.L4198
	cmpl	%edi, %esi
	jne	.L3957
	movl	8(%esp), %ecx
	cmpl	%ecx, %ebx
	jne	.L3957
	movl	112(%ebp), %eax
	cmpl	124(%esp), %eax
	je	.L4267
.L3957:
	cmpl	$6, %esi
	jbe	.L4116
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	$0
	.cfi_def_cfa_offset 304
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	movl	%eax, %esi
.L3962:
	leal	96(%ebp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	312(%esp)
	.cfi_def_cfa_offset 300
	pushl	312(%esp)
	.cfi_def_cfa_offset 304
	pushl	%eax
	.cfi_def_cfa_offset 308
	leal	128(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 312
	pushl	320(%esp)
	.cfi_def_cfa_offset 316
	pushl	%esi
	.cfi_def_cfa_offset 320
	call	lodepng_convert
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	%eax, %edi
	movl	%eax, 288(%ebp)
	jne	.L3963
	leal	32(%ebp), %eax
	movl	%esi, %ecx
	pushl	%eax
	.cfi_def_cfa_offset 292
	leal	100(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 296
	pushl	312(%esp)
	.cfi_def_cfa_offset 300
	pushl	312(%esp)
	.cfi_def_cfa_offset 304
	leal	72(%esp), %edx
	leal	68(%esp), %eax
	call	preProcessScanlines
	movl	288(%ebp), %edi
	addl	$16, %esp
	.cfi_def_cfa_offset 288
.L3963:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	%esi
	.cfi_def_cfa_offset 304
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 288
.L4118:
	testl	%edi, %edi
	movl	$0, 60(%esp)
	movl	$0, 68(%esp)
	movl	$0, 64(%esp)
	je	.L4268
.L3965:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	leal	108(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 304
	call	lodepng_info_cleanup
	popl	%ebx
	.cfi_def_cfa_offset 300
	pushl	64(%esp)
	.cfi_def_cfa_offset 304
	call	free
	movl	76(%esp), %eax
	movl	304(%esp), %ebx
	movl	%eax, (%ebx)
	movl	80(%esp), %eax
	movl	308(%esp), %ebx
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	movl	%eax, (%ebx)
	movl	288(%ebp), %eax
	jmp	.L4198
.L4116:
	movl	4(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	imull	CSWTCH.141(,%esi,4), %eax
	imull	316(%esp), %eax
	imull	312(%esp), %eax
	addl	$7, %eax
	shrl	$3, %eax
	pushl	%eax
	.cfi_def_cfa_offset 304
	movl	%eax, %edi
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L3962
	testl	%edi, %edi
	je	.L3962
	movl	$83, 288(%ebp)
	movl	$83, %edi
	jmp	.L3963
.L4268:
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	$1
	.cfi_def_cfa_offset 300
	pushl	$0
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	je	.L3966
	movl	$1, 68(%esp)
	movl	%eax, 60(%esp)
	movl	$1, 64(%esp)
	movb	$-119, (%eax)
.L3966:
	movl	64(%esp), %esi
	movl	68(%esp), %eax
	leal	1(%esi), %edx
	cmpl	%eax, %edx
	jbe	.L3967
	addl	%eax, %eax
	movl	%edx, %edi
	cmpl	%eax, %edx
	ja	.L3968
	leal	(%edx,%edx,2), %edi
	shrl	%edi
.L3968:
	movl	%edx, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	72(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	4(%esp), %edx
	je	.L4119
	movl	%edi, 68(%esp)
	movl	%eax, 60(%esp)
.L3969:
	movl	%edx, 64(%esp)
	movb	$80, (%eax,%esi)
.L4119:
	movl	64(%esp), %esi
	movl	68(%esp), %eax
	leal	1(%esi), %edx
	cmpl	%eax, %edx
	jbe	.L3970
	addl	%eax, %eax
	movl	%edx, %edi
	cmpl	%eax, %edx
	ja	.L3971
	leal	(%edx,%edx,2), %edi
	shrl	%edi
.L3971:
	movl	%edx, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	72(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	4(%esp), %edx
	je	.L4120
	movl	%edi, 68(%esp)
	movl	%eax, 60(%esp)
.L3972:
	movl	%edx, 64(%esp)
	movb	$78, (%eax,%esi)
.L4120:
	movl	64(%esp), %esi
	movl	68(%esp), %eax
	leal	1(%esi), %edx
	cmpl	%eax, %edx
	jbe	.L3973
	addl	%eax, %eax
	movl	%edx, %edi
	cmpl	%eax, %edx
	ja	.L3974
	leal	(%edx,%edx,2), %edi
	shrl	%edi
.L3974:
	movl	%edx, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	72(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	4(%esp), %edx
	je	.L4121
	movl	%edi, 68(%esp)
	movl	%eax, 60(%esp)
.L3975:
	movl	%edx, 64(%esp)
	movb	$71, (%eax,%esi)
.L4121:
	movl	64(%esp), %esi
	movl	68(%esp), %eax
	leal	1(%esi), %edx
	cmpl	%eax, %edx
	jbe	.L3976
	addl	%eax, %eax
	movl	%edx, %edi
	cmpl	%eax, %edx
	ja	.L3977
	leal	(%edx,%edx,2), %edi
	shrl	%edi
.L3977:
	movl	%edx, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	72(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	4(%esp), %edx
	je	.L4122
	movl	%edi, 68(%esp)
	movl	%eax, 60(%esp)
.L3978:
	movl	%edx, 64(%esp)
	movb	$13, (%eax,%esi)
.L4122:
	movl	64(%esp), %esi
	movl	68(%esp), %eax
	leal	1(%esi), %edx
	cmpl	%eax, %edx
	jbe	.L3979
	addl	%eax, %eax
	movl	%edx, %edi
	cmpl	%eax, %edx
	ja	.L3980
	leal	(%edx,%edx,2), %edi
	shrl	%edi
.L3980:
	movl	%edx, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	72(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	4(%esp), %edx
	je	.L4123
	movl	%edi, 68(%esp)
	movl	%eax, 60(%esp)
.L3981:
	movl	%edx, 64(%esp)
	movb	$10, (%eax,%esi)
.L4123:
	movl	64(%esp), %esi
	movl	68(%esp), %eax
	leal	1(%esi), %edx
	cmpl	%eax, %edx
	jbe	.L3982
	addl	%eax, %eax
	movl	%edx, %edi
	cmpl	%eax, %edx
	ja	.L3983
	leal	(%edx,%edx,2), %edi
	shrl	%edi
.L3983:
	movl	%edx, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	72(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	4(%esp), %edx
	je	.L4124
	movl	%edi, 68(%esp)
	movl	%eax, 60(%esp)
.L3984:
	movl	%edx, 64(%esp)
	movb	$26, (%eax,%esi)
.L4124:
	movl	64(%esp), %esi
	movl	68(%esp), %eax
	leal	1(%esi), %edx
	cmpl	%eax, %edx
	jbe	.L3985
	addl	%eax, %eax
	movl	%edx, %edi
	cmpl	%eax, %edx
	ja	.L3986
	leal	(%edx,%edx,2), %edi
	shrl	%edi
.L3986:
	movl	%edx, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	72(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	4(%esp), %edx
	je	.L4125
	movl	%edi, 68(%esp)
	movl	%eax, 60(%esp)
.L3987:
	movl	%edx, 64(%esp)
	movb	$10, (%eax,%esi)
.L4125:
	movl	104(%esp), %eax
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	movl	%eax, 28(%esp)
	movl	120(%esp), %eax
	movl	%eax, 32(%esp)
	movl	116(%esp), %eax
	movl	%eax, 36(%esp)
	pushl	$4
	.cfi_def_cfa_offset 300
	pushl	$0
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	cmpl	$1, %eax
	movl	%eax, %edx
	sbbl	%esi, %esi
	notl	%esi
	andl	$8, %esi
	cmpl	$1, %eax
	sbbl	%edi, %edi
	andl	$-4, %edi
	addl	$5, %edi
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-4, %eax
	addl	$9, %eax
	cmpl	$1, %edx
	movl	%eax, 32(%esp)
	sbbl	%eax, %eax
	andl	$-6, %eax
	addl	$12, %eax
	cmpl	$1, %edx
	movl	%eax, 4(%esp)
	sbbl	%eax, %eax
	andl	$-4, %eax
	addl	$8, %eax
	cmpl	$1, %edx
	sbbl	%ebx, %ebx
	movl	%eax, 12(%esp)
	andl	$-4, %ebx
	cmpl	$1, %edx
	movl	%ebx, %ecx
	movl	%ebx, 16(%esp)
	sbbl	%ebx, %ebx
	leal	(%edx,%ecx), %eax
	movl	300(%esp), %ecx
	notl	%ebx
	andl	$4, %ebx
	movl	%ebx, 8(%esp)
	movzbl	300(%esp), %ebx
	shrl	$24, %ecx
	movb	%cl, (%eax)
	movl	300(%esp), %ecx
	movb	%bl, 3(%eax)
	movl	8(%esp), %ebx
	shrl	$16, %ecx
	movb	%cl, 1(%eax)
	movl	300(%esp), %ecx
	shrl	$8, %ecx
	movb	%cl, 2(%eax)
	movl	12(%esp), %eax
	cmpl	%ebx, %eax
	jbe	.L4165
	cmpl	%eax, %esi
	jnb	.L3990
	movl	%eax, 4(%esp)
.L3990:
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	12(%esp)
	.cfi_def_cfa_offset 300
	pushl	%edx
	.cfi_def_cfa_offset 304
	movl	%edx, 52(%esp)
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	%eax, %esi
	movl	36(%esp), %edx
	je	.L4269
.L3989:
	movl	8(%esp), %eax
	movl	32(%esp), %edi
	movl	%eax, 16(%esp)
.L4126:
	movl	304(%esp), %edx
	addl	%esi, %eax
	movzbl	304(%esp), %ebx
	shrl	$24, %edx
	movb	%dl, (%eax)
	movl	304(%esp), %edx
	movb	%bl, 3(%eax)
	shrl	$16, %edx
	movb	%dl, 1(%eax)
	movl	304(%esp), %edx
	shrl	$8, %edx
	movb	%dl, 2(%eax)
	movl	4(%esp), %eax
	cmpl	%eax, %edi
	jbe	.L3991
	addl	%eax, %eax
	cmpl	%eax, %edi
	movl	%eax, %ebx
	ja	.L3992
	leal	(%edi,%edi,2), %eax
	shrl	%eax
	movl	%eax, 4(%esp)
	pushl	%edx
	.cfi_def_cfa_offset 292
	pushl	%edx
	.cfi_def_cfa_offset 296
	pushl	%eax
	.cfi_def_cfa_offset 300
	pushl	%esi
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	je	.L4270
.L4259:
	movl	%eax, %esi
.L3991:
	movl	12(%esp), %ebx
	movzbl	24(%esp), %eax
	leal	2(%ebx), %edx
	cmpl	4(%esp), %edx
	movb	%al, (%esi,%ebx)
	ja	.L4127
.L3995:
	movzbl	28(%esp), %eax
	movb	%al, -1(%esi,%edx)
	leal	1(%edx), %eax
	cmpl	%eax, 4(%esp)
	movl	%eax, 12(%esp)
	jb	.L4128
.L3998:
	movl	12(%esp), %eax
	leal	1(%eax), %ecx
	cmpl	%ecx, 4(%esp)
	movb	$0, -1(%esi,%eax)
	jb	.L4129
.L4001:
	leal	1(%ecx), %edi
	cmpl	4(%esp), %edi
	movb	$0, -1(%esi,%ecx)
	ja	.L4130
.L4147:
	movzbl	20(%esp), %eax
	movb	%al, -1(%esi,%edi)
.L4131:
	movl	64(%esp), %ecx
	leal	12(%ecx), %eax
	leal	(%eax,%edi), %edx
	movl	%eax, 4(%esp)
	leal	12(%edi), %eax
	cmpl	%eax, %edx
	jb	.L4006
	cmpl	%edx, %ecx
	jbe	.L4271
.L4006:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	%esi
	.cfi_def_cfa_offset 304
	call	free
	movl	248(%esp), %edx
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%edx, %edx
	je	.L4018
	movl	244(%esp), %ecx
	leal	60(%esp), %eax
	call	addUnknownChunks
	testl	%eax, %eax
	movl	%eax, 288(%ebp)
	jne	.L3965
.L4018:
	movl	108(%esp), %eax
	cmpl	$3, %eax
	movl	%eax, %edx
	je	.L4272
	movl	84(%ebp), %ecx
	testl	%ecx, %ecx
	je	.L4022
.L4148:
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	je	.L4273
.L4020:
	cmpl	$3, %eax
	movl	%eax, %edx
	je	.L4274
.L4022:
	andl	$-3, %edx
	jne	.L4030
	movl	124(%esp), %eax
	testl	%eax, %eax
	jne	.L4275
.L4030:
	movl	140(%esp), %eax
	testl	%eax, %eax
	jne	.L4276
.L4031:
	movl	216(%esp), %eax
	testl	%eax, %eax
	jne	.L4277
.L4036:
	movl	236(%esp), %edx
	testl	%edx, %edx
	je	.L4041
	movl	248(%esp), %ecx
	leal	60(%esp), %eax
	call	addUnknownChunks
	testl	%eax, %eax
	movl	%eax, 288(%ebp)
	jne	.L3965
.L4041:
	movl	56(%ebp), %ecx
	leal	32(%ebp), %eax
	movl	56(%esp), %edx
	movl	$0, 84(%esp)
	movl	$0, 92(%esp)
	movl	%eax, 12(%esp)
	movl	$0, 88(%esp)
	testl	%ecx, %ecx
	movl	52(%esp), %eax
	je	.L4278
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	24(%esp)
	.cfi_def_cfa_offset 304
	pushl	%edx
	.cfi_def_cfa_offset 308
	pushl	%eax
	.cfi_def_cfa_offset 312
	leal	108(%esp), %eax
	leal	112(%esp), %ebx
	movl	%eax, 40(%esp)
	movl	%ebx, 44(%esp)
	pushl	%ebx
	.cfi_def_cfa_offset 316
	pushl	%eax
	.cfi_def_cfa_offset 320
	call	*%ecx
	addl	$32, %esp
	.cfi_def_cfa_offset 288
.L4042:
	testl	%eax, %eax
	je	.L4279
.L4043:
	movl	%eax, 4(%esp)
	movl	$0, 92(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	movl	$0, 100(%esp)
	pushl	96(%esp)
	.cfi_def_cfa_offset 304
	call	free
	movl	20(%esp), %eax
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	movl	%eax, 288(%ebp)
	jmp	.L3965
.L4130:
	movl	4(%esp), %eax
	movl	%esi, 8(%esp)
	movl	%ecx, 12(%esp)
	addl	%eax, %eax
	movl	%eax, %ebx
.L4002:
	cmpl	%ebx, %edi
	movl	%edi, %eax
	ja	.L4003
	leal	(%edi,%edi,2), %eax
	shrl	%eax
.L4003:
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%eax
	.cfi_def_cfa_offset 300
	pushl	20(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L4147
	movl	12(%esp), %edi
	movl	8(%esp), %esi
	jmp	.L4131
	.p2align 4,,10
	.p2align 3
.L4129:
	movl	4(%esp), %eax
	movl	%esi, 8(%esp)
	addl	%eax, %eax
	movl	%eax, %ebx
.L3999:
	cmpl	%ebx, %ecx
	movl	%ecx, 4(%esp)
	ja	.L4000
	leal	(%ecx,%ecx,2), %eax
	shrl	%eax
	movl	%eax, 4(%esp)
.L4000:
	movl	%ecx, 16(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	12(%esp)
	.cfi_def_cfa_offset 300
	pushl	20(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	%eax, %esi
	movl	16(%esp), %ecx
	jne	.L4001
	movl	%ecx, %edi
	jmp	.L4002
	.p2align 4,,10
	.p2align 3
.L4128:
	movl	4(%esp), %eax
	movl	%esi, 8(%esp)
	addl	%eax, %eax
	movl	%eax, %ebx
	movl	12(%esp), %eax
.L4146:
	cmpl	%ebx, %eax
	movl	%eax, 4(%esp)
	ja	.L3997
	leal	(%eax,%eax,2), %eax
	shrl	%eax
	movl	%eax, 4(%esp)
.L3997:
	movl	%edx, 16(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	12(%esp)
	.cfi_def_cfa_offset 300
	pushl	20(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	%eax, %esi
	movl	16(%esp), %edx
	jne	.L3998
	movl	12(%esp), %ecx
	movl	%edx, 12(%esp)
	jmp	.L3999
	.p2align 4,,10
	.p2align 3
.L4127:
	movl	4(%esp), %eax
	addl	%eax, %eax
	cmpl	%eax, %edx
	movl	%eax, %ebx
	ja	.L4168
.L3993:
	leal	(%edx,%edx,2), %eax
	movl	%esi, 8(%esp)
	shrl	%eax
	movl	%eax, 4(%esp)
.L3994:
	movl	%edx, 12(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	12(%esp)
	.cfi_def_cfa_offset 300
	pushl	%esi
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	%eax, %esi
	movl	12(%esp), %edx
	jne	.L3995
	leal	1(%edi), %eax
	movl	%edi, %edx
	movl	%eax, 12(%esp)
	jmp	.L4146
.L3992:
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	%esi
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	je	.L4280
	movl	%edi, 4(%esp)
	jmp	.L4259
.L4165:
	movl	%edx, %esi
	movl	$4, 4(%esp)
	jmp	.L3989
.L3985:
	movl	60(%esp), %eax
	jmp	.L3987
.L3982:
	movl	60(%esp), %eax
	jmp	.L3984
.L3979:
	movl	60(%esp), %eax
	jmp	.L3981
.L3976:
	movl	60(%esp), %eax
	jmp	.L3978
.L3973:
	movl	60(%esp), %eax
	jmp	.L3975
.L3970:
	movl	60(%esp), %eax
	jmp	.L3972
.L3967:
	movl	60(%esp), %eax
	jmp	.L3969
.L4267:
	testl	%eax, %eax
	je	.L3958
	movl	128(%esp), %eax
	cmpl	%eax, 116(%ebp)
	jne	.L3957
	movl	132(%esp), %eax
	cmpl	%eax, 120(%ebp)
	jne	.L3957
	movl	136(%esp), %eax
	cmpl	%eax, 124(%ebp)
	jne	.L3957
.L3958:
	movl	108(%ebp), %edi
	cmpl	120(%esp), %edi
	jne	.L3957
	sall	$2, %edi
	testl	%edi, %edi
	je	.L3959
	movl	116(%esp), %edx
	movl	104(%ebp), %ecx
	movzbl	(%edx), %eax
	cmpb	%al, (%ecx)
	jne	.L3957
	xorl	%eax, %eax
	jmp	.L3960
	.p2align 4,,10
	.p2align 3
.L3961:
	movzbl	(%edx,%eax), %ebx
	cmpb	%bl, (%ecx,%eax)
	jne	.L3957
.L3960:
	addl	$1, %eax
	cmpl	%edi, %eax
	jne	.L3961
.L3959:
	leal	32(%ebp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 292
	leal	100(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 296
	pushl	312(%esp)
	.cfi_def_cfa_offset 300
	pushl	312(%esp)
	.cfi_def_cfa_offset 304
	movl	312(%esp), %ecx
	leal	72(%esp), %edx
	leal	68(%esp), %eax
	call	preProcessScanlines
	movl	288(%ebp), %edi
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	jmp	.L4118
.L4168:
	movl	%esi, 8(%esp)
	movl	%edx, 4(%esp)
	jmp	.L3994
.L4276:
	movl	108(%esp), %eax
	movl	$0, 84(%esp)
	movl	$0, 92(%esp)
	movl	$0, 88(%esp)
	movl	%eax, %edx
	andl	$-5, %edx
	je	.L4281
	cmpl	$2, %edx
	je	.L4282
	cmpl	$3, %eax
	jne	.L4033
	movzbl	144(%esp), %edx
	leal	84(%esp), %eax
	call	ucvector_push_back
.L4033:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	96(%esp)
	.cfi_def_cfa_offset 304
	pushl	$.LC116
	.cfi_def_cfa_offset 308
	pushl	108(%esp)
	.cfi_def_cfa_offset 312
	leal	84(%esp), %eax
	leal	88(%esp), %edx
	pushl	%edx
	.cfi_def_cfa_offset 316
	pushl	%eax
	.cfi_def_cfa_offset 320
	call	lodepng_chunk_create
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	jne	.L4035
	movl	64(%esp), %eax
	movl	%eax, 68(%esp)
.L4035:
	movl	$0, 92(%esp)
	movl	$0, 88(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	96(%esp)
	.cfi_def_cfa_offset 304
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	jmp	.L4031
.L4277:
	movl	220(%esp), %edx
	leal	84(%esp), %eax
	movl	$0, 84(%esp)
	movl	$0, 92(%esp)
	movl	$0, 88(%esp)
	call	lodepng_add32bitInt
	movl	224(%esp), %edx
	leal	84(%esp), %eax
	call	lodepng_add32bitInt
	movzbl	228(%esp), %edx
	leal	84(%esp), %eax
	call	ucvector_push_back
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	96(%esp)
	.cfi_def_cfa_offset 304
	pushl	$.LC102
	.cfi_def_cfa_offset 308
	pushl	108(%esp)
	.cfi_def_cfa_offset 312
	leal	84(%esp), %eax
	leal	88(%esp), %edx
	pushl	%edx
	.cfi_def_cfa_offset 316
	pushl	%eax
	.cfi_def_cfa_offset 320
	call	lodepng_chunk_create
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	jne	.L4037
	movl	64(%esp), %eax
	movl	%eax, 68(%esp)
.L4037:
	movl	$0, 92(%esp)
	movl	$0, 88(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	96(%esp)
	.cfi_def_cfa_offset 304
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	jmp	.L4036
.L4279:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	96(%esp)
	.cfi_def_cfa_offset 304
	pushl	$.LC117
	.cfi_def_cfa_offset 308
	pushl	108(%esp)
	.cfi_def_cfa_offset 312
	leal	88(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 316
	leal	88(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 320
	call	lodepng_chunk_create
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	jne	.L4043
	movl	64(%esp), %eax
	movl	$0, 92(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	movl	$0, 100(%esp)
	movl	%eax, 80(%esp)
	pushl	96(%esp)
	.cfi_def_cfa_offset 304
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	movl	$0, 288(%ebp)
	cmpl	$0, 188(%esp)
	jne	.L4283
.L4045:
	movl	156(%esp), %edx
	testl	%edx, %edx
	je	.L4048
	movl	$0, 8(%esp)
	movl	%ebp, 308(%esp)
	movl	%edx, %esi
.L4071:
	movl	8(%esp), %ebx
	movl	160(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	movl	(%eax,%ebx,4), %eax
	leal	0(,%ebx,4), %edi
	movl	%eax, 16(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 304
	call	strlen
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	cmpl	$79, %eax
	ja	.L4284
	movl	4(%esp), %eax
	cmpb	$0, (%eax)
	je	.L4285
	movl	308(%esp), %eax
	movl	92(%eax), %ebp
	movl	164(%esp), %eax
	testl	%ebp, %ebp
	je	.L4052
	movl	(%eax,%edi), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	movl	%eax, 40(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 304
	call	strlen
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	movl	%eax, 32(%esp)
	movl	$0, 72(%esp)
	movl	4(%esp), %eax
	movl	$0, 80(%esp)
	movl	$0, 76(%esp)
	movl	$0, 84(%esp)
	movl	$0, 92(%esp)
	movl	$0, 88(%esp)
	movzbl	(%eax), %ecx
	testb	%cl, %cl
	je	.L4070
	xorl	%edx, %edx
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	xorl	%edi, %edi
	jmp	.L4054
	.p2align 4,,10
	.p2align 3
.L4286:
	movl	72(%esp), %eax
	movl	76(%esp), %ebp
	movl	%esi, %edi
	movl	80(%esp), %edx
.L4054:
	leal	1(%ebp), %esi
	cmpl	%edx, %esi
	jbe	.L4056
	addl	%edx, %edx
	movl	%esi, %ebx
	cmpl	%edx, %esi
	ja	.L4057
	leal	(%esi,%esi,2), %edx
	shrl	%edx
	movl	%edx, %ebx
.L4057:
	movb	%cl, 24(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%ebx
	.cfi_def_cfa_offset 300
	pushl	%eax
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movzbl	24(%esp), %ecx
	je	.L4132
	movl	%ebx, 80(%esp)
	movl	%eax, 72(%esp)
.L4056:
	movl	%esi, 76(%esp)
	movb	%cl, (%eax,%ebp)
.L4132:
	movl	4(%esp), %eax
	leal	1(%edi), %esi
	movzbl	1(%eax,%edi), %ecx
	testb	%cl, %cl
	jne	.L4286
	cmpl	$78, %edi
	movl	156(%esp), %esi
	jbe	.L4287
.L4070:
	addl	$1, 8(%esp)
	movl	8(%esp), %eax
	cmpl	%eax, %esi
	jne	.L4071
	movl	308(%esp), %ebp
	movl	%esi, %edx
.L4050:
	cmpl	$0, 88(%ebp)
	je	.L4134
	testl	%edx, %edx
	je	.L4073
	movl	160(%esp), %eax
	movl	%eax, 4(%esp)
	xorl	%eax, %eax
	jmp	.L4074
	.p2align 4,,10
	.p2align 3
.L4288:
	addl	$1, %eax
	cmpl	%edx, %eax
	je	.L4073
.L4074:
	movl	4(%esp), %ebx
	movl	$.LC119, %edi
	movl	$8, %ecx
	movl	(%ebx,%eax,4), %esi
	repz cmpsb
	jne	.L4288
.L4134:
	cmpl	$0, 168(%esp)
	movl	$0, 24(%esp)
	je	.L4076
	movl	%ebp, 308(%esp)
.L4213:
	movl	24(%esp), %ebx
	movl	172(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	movl	(%eax,%ebx,4), %eax
	leal	0(,%ebx,4), %esi
	movl	%eax, 16(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 304
	call	strlen
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	cmpl	$79, %eax
	ja	.L4289
	movl	4(%esp), %eax
	cmpb	$0, (%eax)
	je	.L4290
	movl	184(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	movl	(%eax,%esi), %eax
	movl	%eax, 40(%esp)
	movl	%eax, %ebx
	movl	192(%esp), %eax
	movl	(%eax,%esi), %eax
	movl	%eax, 48(%esp)
	movl	188(%esp), %eax
	movl	(%eax,%esi), %eax
	movl	%eax, 52(%esp)
	movl	320(%esp), %eax
	movl	92(%eax), %eax
	movl	%eax, 56(%esp)
	pushl	%ebx
	.cfi_def_cfa_offset 304
	call	strlen
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	movl	%eax, 32(%esp)
	movl	$0, 72(%esp)
	movl	4(%esp), %eax
	movl	$0, 80(%esp)
	movl	$0, 76(%esp)
	movzbl	(%eax), %edx
	testb	%dl, %dl
	je	.L4081
	xorl	%ecx, %ecx
	xorl	%ebp, %ebp
	xorl	%eax, %eax
	xorl	%edi, %edi
	jmp	.L4080
	.p2align 4,,10
	.p2align 3
.L4291:
	movl	72(%esp), %eax
	movl	76(%esp), %ebp
	movl	%esi, %edi
	movl	80(%esp), %ecx
.L4080:
	leal	1(%ebp), %esi
	cmpl	%ecx, %esi
	jbe	.L4082
	addl	%ecx, %ecx
	movl	%esi, %ebx
	cmpl	%ecx, %esi
	ja	.L4083
	leal	(%esi,%esi,2), %ecx
	shrl	%ecx
	movl	%ecx, %ebx
.L4083:
	movb	%dl, 8(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%ebx
	.cfi_def_cfa_offset 300
	pushl	%eax
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movzbl	8(%esp), %edx
	je	.L4135
	movl	%ebx, 80(%esp)
	movl	%eax, 72(%esp)
.L4082:
	movl	%esi, 76(%esp)
	movb	%dl, (%eax,%ebp)
.L4135:
	movl	4(%esp), %eax
	leal	1(%edi), %esi
	movzbl	1(%eax,%edi), %edx
	testb	%dl, %dl
	jne	.L4291
	cmpl	$78, %edi
	jbe	.L4292
.L4081:
	addl	$1, 24(%esp)
	movl	24(%esp), %eax
	cmpl	%eax, 168(%esp)
	jne	.L4213
	movl	308(%esp), %ebp
.L4076:
	movl	240(%esp), %edx
	testl	%edx, %edx
	je	.L4115
	movl	252(%esp), %ecx
	leal	60(%esp), %eax
	call	addUnknownChunks
	testl	%eax, %eax
	movl	%eax, 288(%ebp)
	jne	.L3965
.L4115:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	$0
	.cfi_def_cfa_offset 304
	pushl	$.LC121
	.cfi_def_cfa_offset 308
	pushl	$0
	.cfi_def_cfa_offset 312
	leal	88(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 316
	leal	88(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 320
	call	lodepng_chunk_create
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	jne	.L3965
	movl	64(%esp), %eax
	movl	%eax, 68(%esp)
	jmp	.L3965
	.p2align 4,,10
	.p2align 3
.L4052:
	movl	(%eax,%edi), %ecx
	movl	4(%esp), %edx
	leal	60(%esp), %eax
	call	addChunk_tEXt
	movl	156(%esp), %esi
	jmp	.L4070
.L4287:
	leal	72(%esp), %eax
	xorl	%edx, %edx
	call	ucvector_push_back
	leal	72(%esp), %eax
	xorl	%edx, %edx
	call	ucvector_push_back
	movl	308(%esp), %eax
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L4059
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	24(%esp)
	.cfi_def_cfa_offset 304
	pushl	48(%esp)
	.cfi_def_cfa_offset 308
	pushl	48(%esp)
	.cfi_def_cfa_offset 312
	pushl	44(%esp)
	.cfi_def_cfa_offset 316
	pushl	44(%esp)
	.cfi_def_cfa_offset 320
	call	*%eax
	addl	$32, %esp
	.cfi_def_cfa_offset 288
.L4060:
	testl	%eax, %eax
	jne	.L4062
	xorl	%ecx, %ecx
	cmpl	$0, 88(%esp)
	movl	%ecx, %ebp
	jne	.L4217
	jmp	.L4069
	.p2align 4,,10
	.p2align 3
.L4293:
	addl	%eax, %eax
	movl	%edi, %esi
	cmpl	%eax, %edi
	ja	.L4067
	leal	(%edi,%edi,2), %esi
	shrl	%esi
.L4067:
	movl	%edx, 24(%esp)
	movb	%cl, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%esi
	.cfi_def_cfa_offset 300
	pushl	84(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movzbl	4(%esp), %ecx
	movl	24(%esp), %edx
	je	.L4133
	movl	%esi, 80(%esp)
	movl	%eax, 72(%esp)
.L4068:
	movl	%edi, 76(%esp)
	movb	%cl, (%eax,%edx)
.L4133:
	addl	$1, %ebp
	cmpl	88(%esp), %ebp
	je	.L4069
.L4217:
	movl	84(%esp), %eax
	movl	76(%esp), %edx
	movzbl	(%eax,%ebp), %ecx
	movl	80(%esp), %eax
	leal	1(%edx), %edi
	cmpl	%eax, %edi
	ja	.L4293
	movl	72(%esp), %eax
	jmp	.L4068
.L4069:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	84(%esp)
	.cfi_def_cfa_offset 304
	pushl	$.LC118
	.cfi_def_cfa_offset 308
	pushl	96(%esp)
	.cfi_def_cfa_offset 312
	leal	88(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 316
	leal	88(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 320
	call	lodepng_chunk_create
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	jne	.L4062
	movl	64(%esp), %eax
	movl	%eax, 68(%esp)
.L4062:
	movl	$0, 92(%esp)
	movl	$0, 88(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	96(%esp)
	.cfi_def_cfa_offset 304
	call	free
	movl	$0, 100(%esp)
	movl	$0, 96(%esp)
	movl	$0, 92(%esp)
	popl	%edi
	.cfi_def_cfa_offset 300
	pushl	84(%esp)
	.cfi_def_cfa_offset 304
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	movl	156(%esp), %esi
	jmp	.L4070
.L4292:
	leal	72(%esp), %eax
	xorl	%edx, %edx
	call	ucvector_push_back
	movl	44(%esp), %esi
	testl	%esi, %esi
	setne	%al
	movzbl	%al, %edx
	movl	%eax, %ebx
	leal	72(%esp), %eax
	call	ucvector_push_back
	leal	72(%esp), %eax
	xorl	%edx, %edx
	call	ucvector_push_back
	movl	40(%esp), %eax
	movzbl	(%eax), %edx
	leal	1(%eax), %ecx
	movl	%ecx, %ebp
	testb	%dl, %dl
	jne	.L4216
	jmp	.L4092
	.p2align 4,,10
	.p2align 3
.L4294:
	addl	%eax, %eax
	movl	%esi, %edi
	cmpl	%eax, %esi
	ja	.L4089
	leal	(%esi,%esi,2), %edi
	shrl	%edi
.L4089:
	movb	%dl, 8(%esp)
	movl	%ecx, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	84(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	4(%esp), %ecx
	movzbl	8(%esp), %edx
	je	.L4136
	movl	%edi, 80(%esp)
	movl	%eax, 72(%esp)
.L4090:
	movl	%esi, 76(%esp)
	movb	%dl, (%eax,%ecx)
.L4136:
	addl	$1, %ebp
	movzbl	-1(%ebp), %edx
	testb	%dl, %dl
	je	.L4092
.L4216:
	movl	76(%esp), %ecx
	movl	80(%esp), %eax
	leal	1(%ecx), %esi
	cmpl	%eax, %esi
	ja	.L4294
	movl	72(%esp), %eax
	jmp	.L4090
.L4092:
	leal	72(%esp), %eax
	xorl	%edx, %edx
	call	ucvector_push_back
	movl	36(%esp), %eax
	movzbl	(%eax), %edx
	leal	1(%eax), %ecx
	movl	%ecx, %ebp
	testb	%dl, %dl
	jne	.L4215
	jmp	.L4087
	.p2align 4,,10
	.p2align 3
.L4295:
	addl	%eax, %eax
	movl	%esi, %edi
	cmpl	%eax, %esi
	ja	.L4096
	leal	(%esi,%esi,2), %edi
	shrl	%edi
.L4096:
	movb	%dl, 8(%esp)
	movl	%ecx, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	84(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	4(%esp), %ecx
	movzbl	8(%esp), %edx
	je	.L4137
	movl	%edi, 80(%esp)
	movl	%eax, 72(%esp)
.L4097:
	movl	%esi, 76(%esp)
	movb	%dl, (%eax,%ecx)
.L4137:
	addl	$1, %ebp
	movzbl	-1(%ebp), %edx
	testb	%dl, %dl
	je	.L4087
.L4215:
	movl	76(%esp), %ecx
	movl	80(%esp), %eax
	leal	1(%ecx), %esi
	cmpl	%eax, %esi
	ja	.L4295
	movl	72(%esp), %eax
	jmp	.L4097
.L4087:
	leal	72(%esp), %eax
	xorl	%edx, %edx
	call	ucvector_push_back
	testb	%bl, %bl
	jne	.L4296
	movl	28(%esp), %eax
	movzbl	(%eax), %edx
	leal	1(%eax), %ecx
	movl	%ecx, %ebp
	testb	%dl, %dl
	jne	.L4214
	jmp	.L4100
	.p2align 4,,10
	.p2align 3
.L4297:
	addl	%eax, %eax
	movl	%esi, %edi
	cmpl	%eax, %esi
	ja	.L4107
	leal	(%esi,%esi,2), %edi
	shrl	%edi
.L4107:
	movb	%dl, 8(%esp)
	movl	%ecx, 4(%esp)
	subl	$8, %esp
	.cfi_def_cfa_offset 296
	pushl	%edi
	.cfi_def_cfa_offset 300
	pushl	84(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	4(%esp), %ecx
	movzbl	8(%esp), %edx
	je	.L4138
	movl	%edi, 80(%esp)
	movl	%eax, 72(%esp)
.L4108:
	movl	%esi, 76(%esp)
	movb	%dl, (%eax,%ecx)
.L4138:
	addl	$1, %ebp
	movzbl	-1(%ebp), %edx
	testb	%dl, %dl
	je	.L4100
.L4214:
	movl	76(%esp), %ecx
	movl	80(%esp), %eax
	leal	1(%ecx), %esi
	cmpl	%eax, %esi
	ja	.L4297
	movl	72(%esp), %eax
	jmp	.L4108
.L4298:
	cmpl	$0, 88(%esp)
	je	.L4104
	xorl	%esi, %esi
.L4105:
	movl	84(%esp), %eax
	movzbl	(%eax,%esi), %edx
	leal	72(%esp), %eax
	addl	$1, %esi
	call	ucvector_push_back
	cmpl	88(%esp), %esi
	jne	.L4105
.L4104:
	movl	$0, 92(%esp)
	movl	$0, 88(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	96(%esp)
	.cfi_def_cfa_offset 304
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 288
.L4100:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	84(%esp)
	.cfi_def_cfa_offset 304
	pushl	$.LC120
	.cfi_def_cfa_offset 308
	pushl	96(%esp)
	.cfi_def_cfa_offset 312
	leal	88(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 316
	leal	88(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 320
	call	lodepng_chunk_create
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	jne	.L4111
	movl	64(%esp), %eax
	movl	%eax, 68(%esp)
.L4111:
	movl	$0, 80(%esp)
	movl	$0, 76(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	84(%esp)
	.cfi_def_cfa_offset 304
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	jmp	.L4081
.L4296:
	movl	308(%esp), %eax
	movl	$0, 84(%esp)
	movl	$0, 92(%esp)
	movl	$0, 88(%esp)
	movl	56(%eax), %eax
	testl	%eax, %eax
	je	.L4101
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	24(%esp)
	.cfi_def_cfa_offset 304
	pushl	48(%esp)
	.cfi_def_cfa_offset 308
	pushl	48(%esp)
	.cfi_def_cfa_offset 312
	pushl	44(%esp)
	.cfi_def_cfa_offset 316
	pushl	44(%esp)
	.cfi_def_cfa_offset 320
	call	*%eax
	addl	$32, %esp
	.cfi_def_cfa_offset 288
.L4102:
	testl	%eax, %eax
	je	.L4298
	movl	$0, 92(%esp)
	movl	$0, 88(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	96(%esp)
	.cfi_def_cfa_offset 304
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	jmp	.L4111
.L4101:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	24(%esp)
	.cfi_def_cfa_offset 304
	pushl	48(%esp)
	.cfi_def_cfa_offset 308
	pushl	48(%esp)
	.cfi_def_cfa_offset 312
	pushl	44(%esp)
	.cfi_def_cfa_offset 316
	pushl	44(%esp)
	.cfi_def_cfa_offset 320
	call	lodepng_zlib_compress
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	jmp	.L4102
.L4048:
	cmpl	$0, 88(%ebp)
	je	.L4134
.L4073:
	movl	LODEPNG_VERSION_STRING, %ecx
	leal	60(%esp), %eax
	movl	$.LC119, %edx
	call	addChunk_tEXt
	jmp	.L4134
.L4290:
	movl	308(%esp), %ebp
	movl	$67, 288(%ebp)
	jmp	.L4076
.L4289:
	movl	308(%esp), %ebp
	movl	$66, 288(%ebp)
	jmp	.L4076
.L4059:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	24(%esp)
	.cfi_def_cfa_offset 304
	pushl	48(%esp)
	.cfi_def_cfa_offset 308
	pushl	48(%esp)
	.cfi_def_cfa_offset 312
	pushl	44(%esp)
	.cfi_def_cfa_offset 316
	pushl	44(%esp)
	.cfi_def_cfa_offset 320
	call	lodepng_zlib_compress
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	jmp	.L4060
.L4285:
	movl	308(%esp), %ebp
	movl	%esi, %edx
	movl	$67, 288(%ebp)
	jmp	.L4050
.L4284:
	movl	308(%esp), %ebp
	movl	%esi, %edx
	movl	$66, 288(%ebp)
	jmp	.L4050
.L4283:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	$7
	.cfi_def_cfa_offset 304
	call	malloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L4045
	movl	192(%esp), %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	movb	%al, 1(%esi)
	movl	%eax, %edx
	movl	208(%esp), %eax
	shrl	$8, %edx
	movb	%dl, (%esi)
	movb	%al, 2(%esi)
	movl	212(%esp), %eax
	movb	%al, 3(%esi)
	movl	216(%esp), %eax
	movb	%al, 4(%esi)
	movl	220(%esp), %eax
	movb	%al, 5(%esi)
	movl	224(%esp), %eax
	movb	%al, 6(%esi)
	pushl	%esi
	.cfi_def_cfa_offset 304
	pushl	$.LC103
	.cfi_def_cfa_offset 308
	pushl	$7
	.cfi_def_cfa_offset 312
	leal	88(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 316
	leal	88(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 320
	call	lodepng_chunk_create
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	jne	.L4047
	movl	64(%esp), %eax
	movl	%eax, 68(%esp)
.L4047:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	%esi
	.cfi_def_cfa_offset 304
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	jmp	.L4045
.L4270:
	movl	%edi, %edx
	movl	12(%esp), %edi
	jmp	.L3993
.L4280:
	movl	%edi, %edx
	movl	%edi, 4(%esp)
	movl	%esi, 8(%esp)
	movl	12(%esp), %edi
	jmp	.L3994
.L4269:
	movl	8(%esp), %eax
	movl	%edx, %esi
	movl	%eax, 4(%esp)
	movl	%eax, 12(%esp)
	movl	16(%esp), %eax
	jmp	.L4126
.L4272:
	leal	120(%esp), %ecx
	leal	116(%esp), %edx
	leal	60(%esp), %eax
	call	addChunk_PLTE.isra.14
	cmpl	$0, 84(%ebp)
	movl	108(%esp), %eax
	je	.L4020
	jmp	.L4148
.L4278:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	24(%esp)
	.cfi_def_cfa_offset 304
	pushl	%edx
	.cfi_def_cfa_offset 308
	pushl	%eax
	.cfi_def_cfa_offset 312
	leal	108(%esp), %eax
	leal	112(%esp), %ebx
	movl	%eax, 40(%esp)
	movl	%ebx, 44(%esp)
	pushl	%ebx
	.cfi_def_cfa_offset 316
	pushl	%eax
	.cfi_def_cfa_offset 320
	call	lodepng_zlib_compress
	addl	$32, %esp
	.cfi_def_cfa_offset 288
	jmp	.L4042
.L4274:
	movl	120(%esp), %eax
	movl	116(%esp), %edx
	testl	%eax, %eax
	movl	%eax, 16(%esp)
	je	.L4030
	movl	$0, 12(%esp)
	movl	$0, 8(%esp)
	xorl	%eax, %eax
	movl	$0, 4(%esp)
	xorl	%ecx, %ecx
	jmp	.L4023
	.p2align 4,,10
	.p2align 3
.L4301:
	movzbl	(%edx,%eax,4), %eax
	movl	%eax, 4(%esp)
	movzbl	1(%edx,%esi), %eax
	movl	%eax, 8(%esp)
	movzbl	2(%edx,%esi), %eax
	movl	%eax, 12(%esp)
	xorl	%eax, %eax
.L4025:
	leal	0(,%eax,4), %esi
	cmpb	$-1, 3(%edx,%esi)
	jne	.L4029
	movzbl	(%edx,%eax,4), %edi
	movl	$1, %ecx
	cmpl	4(%esp), %edi
	je	.L4299
.L4028:
	addl	$1, %eax
	cmpl	%eax, 16(%esp)
	je	.L4300
.L4023:
	testl	%ecx, %ecx
	jne	.L4025
	leal	0(,%eax,4), %esi
	movzbl	3(%edx,%esi), %edi
	movl	%edi, %ebx
	testb	%bl, %bl
	je	.L4301
	movl	%edi, %ebx
	cmpb	$-1, %bl
	je	.L4028
.L4029:
	leal	108(%esp), %edx
	leal	60(%esp), %eax
	call	addChunk_tRNS
	movl	108(%esp), %edx
	jmp	.L4022
.L4299:
	movzbl	1(%edx,%esi), %edi
	cmpl	8(%esp), %edi
	jne	.L4028
	movzbl	2(%edx,%esi), %esi
	cmpl	12(%esp), %esi
	jne	.L4028
	jmp	.L4029
.L4273:
	leal	120(%esp), %ecx
	leal	116(%esp), %edx
	leal	60(%esp), %eax
	call	addChunk_PLTE.isra.14
	movl	108(%esp), %eax
	jmp	.L4020
.L4300:
	testl	%ecx, %ecx
	je	.L4030
	jmp	.L4029
.L4282:
	movl	144(%esp), %eax
	movzbl	%ah, %edx
	leal	84(%esp), %eax
	call	ucvector_push_back
	movzbl	144(%esp), %edx
	leal	84(%esp), %eax
	call	ucvector_push_back
	movl	148(%esp), %eax
	movzbl	%ah, %edx
	leal	84(%esp), %eax
	call	ucvector_push_back
	movzbl	148(%esp), %edx
	leal	84(%esp), %eax
	call	ucvector_push_back
	movl	152(%esp), %eax
	movzbl	%ah, %edx
	leal	84(%esp), %eax
	call	ucvector_push_back
	movzbl	152(%esp), %edx
	leal	84(%esp), %eax
	call	ucvector_push_back
	jmp	.L4033
.L4281:
	movl	144(%esp), %eax
	movzbl	%ah, %edx
	leal	84(%esp), %eax
	call	ucvector_push_back
	movzbl	144(%esp), %edx
	leal	84(%esp), %eax
	call	ucvector_push_back
	jmp	.L4033
.L4271:
	movl	%ecx, 12(%esp)
	pushl	%eax
	.cfi_def_cfa_offset 292
	pushl	%eax
	.cfi_def_cfa_offset 296
	pushl	%edx
	.cfi_def_cfa_offset 300
	movl	%edx, 20(%esp)
	pushl	72(%esp)
	.cfi_def_cfa_offset 304
	call	realloc
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	testl	%eax, %eax
	je	.L4006
	movl	8(%esp), %edx
	movl	12(%esp), %ecx
	movl	%edi, %ebx
	testl	%edi, %edi
	movl	%eax, 60(%esp)
	movl	%edx, 64(%esp)
	leal	(%eax,%ecx), %edx
	movb	$0, (%edx)
	movb	$0, 1(%edx)
	movb	$0, 2(%edx)
	movb	%bl, 3(%edx)
	movb	$73, 4(%edx)
	movb	$72, 5(%edx)
	movb	$68, 6(%edx)
	movb	$82, 7(%edx)
	je	.L4012
	leal	8(%eax,%ecx), %ebx
	leal	4(%esi), %ecx
	cmpl	%ecx, %ebx
	setnb	%cl
	addl	4(%esp), %eax
	cmpl	%eax, %esi
	setnb	%al
	orl	%ecx, %eax
	cmpl	$8, %edi
	seta	%cl
	testb	%cl, %al
	je	.L4172
	testb	$3, %bl
	jne	.L4172
	leal	-4(%edi), %eax
	xorl	%ecx, %ecx
	shrl	$2, %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	sall	$2, %eax
	movl	%eax, 8(%esp)
.L4008:
	movl	(%esi,%ecx,4), %eax
	movl	%eax, (%ebx,%ecx,4)
	addl	$1, %ecx
	cmpl	%ecx, 4(%esp)
	ja	.L4008
	movl	8(%esp), %eax
	cmpl	%eax, %edi
	je	.L4012
	movl	4(%esp), %ebx
	movzbl	(%esi,%ebx,4), %ecx
	movb	%cl, 8(%edx,%eax)
	leal	1(%eax), %ecx
	cmpl	%edi, %ecx
	je	.L4012
	movzbl	1(%esi,%eax), %ecx
	movb	%cl, 9(%edx,%eax)
	leal	2(%eax), %ecx
	cmpl	%edi, %ecx
	je	.L4012
	movzbl	2(%esi,%eax), %ecx
	movb	%cl, 10(%edx,%eax)
.L4012:
	subl	$12, %esp
	.cfi_def_cfa_offset 300
	pushl	%edx
	.cfi_def_cfa_offset 304
	call	lodepng_chunk_generate_crc
	movl	80(%esp), %eax
	movl	%eax, 84(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 288
	jmp	.L4006
.L4275:
	leal	108(%esp), %edx
	leal	60(%esp), %eax
	call	addChunk_tRNS
	jmp	.L4030
.L4172:
	xorl	%ecx, %ecx
.L4007:
	movzbl	(%esi,%ecx), %eax
	movb	%al, 8(%edx,%ecx)
	addl	$1, %ecx
	cmpl	%edi, %ecx
	jne	.L4007
	jmp	.L4012
	.cfi_endproc
.LFE216:
	.size	lodepng_encode, .-lodepng_encode
	.section	.text.unlikely
.LCOLDE122:
	.text
.LHOTE122:
	.section	.text.unlikely
.LCOLDB123:
	.text
.LHOTB123:
	.p2align 4,,15
	.globl	lodepng_encode_memory
	.type	lodepng_encode_memory, @function
lodepng_encode_memory:
.LFB217:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$320, %esp
	.cfi_def_cfa_offset 328
	movl	348(%esp), %edx
	movl	352(%esp), %eax
	movl	$1, 40(%esp)
	movl	$1, 44(%esp)
	movl	$0, 48(%esp)
	movl	$0, 36(%esp)
	movl	$0, 20(%esp)
	movl	$0, 24(%esp)
	movl	$0, 28(%esp)
	movl	$0, 32(%esp)
	movl	$2, 52(%esp)
	movl	$1, 56(%esp)
	movl	$2048, 60(%esp)
	movl	$3, 64(%esp)
	movl	$128, 68(%esp)
	movl	$1, 72(%esp)
	movl	$0, 76(%esp)
	movl	$0, 80(%esp)
	movl	$0, 84(%esp)
	movl	$1, 92(%esp)
	movl	$1, 96(%esp)
	movl	$1, 88(%esp)
	movl	$0, 104(%esp)
	movl	$0, 100(%esp)
	movl	$0, 108(%esp)
	movl	$1, 112(%esp)
	movl	$0, 132(%esp)
	movl	$0, 144(%esp)
	movl	$0, 140(%esp)
	movl	$0, 136(%esp)
	movl	$0, 124(%esp)
	movl	$0, 128(%esp)
	movl	%edx, 116(%esp)
	movl	%edx, 160(%esp)
	movl	%eax, 120(%esp)
	movl	$0, 176(%esp)
	movl	$0, 188(%esp)
	movl	$0, 184(%esp)
	movl	$0, 180(%esp)
	movl	$0, 168(%esp)
	movl	$0, 172(%esp)
	movl	$0, 156(%esp)
	movl	$0, 148(%esp)
	movl	$0, 152(%esp)
	movl	$0, 192(%esp)
	movl	$0, 204(%esp)
	movl	$0, 200(%esp)
	movl	$0, 196(%esp)
	movl	$0, 208(%esp)
	movl	$0, 212(%esp)
	movl	$0, 216(%esp)
	movl	$0, 220(%esp)
	movl	$0, 224(%esp)
	movl	$0, 228(%esp)
	movl	$0, 232(%esp)
	movl	$0, 236(%esp)
	movl	$0, 240(%esp)
	movl	$0, 268(%esp)
	movl	$0, 284(%esp)
	movl	$0, 288(%esp)
	movl	$0, 292(%esp)
	movl	$0, 296(%esp)
	movl	$0, 300(%esp)
	movl	$0, 304(%esp)
	movl	$1, 308(%esp)
	movl	%eax, 164(%esp)
	leal	20(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 332
	pushl	348(%esp)
	.cfi_def_cfa_offset 336
	pushl	348(%esp)
	.cfi_def_cfa_offset 340
	pushl	348(%esp)
	.cfi_def_cfa_offset 344
	pushl	348(%esp)
	.cfi_def_cfa_offset 348
	pushl	348(%esp)
	.cfi_def_cfa_offset 352
	call	lodepng_encode
	movl	148(%esp), %edx
	movl	332(%esp), %ebx
	addl	$32, %esp
	.cfi_def_cfa_offset 320
	testl	%edx, %edx
	je	.L4303
	subl	$12, %esp
	.cfi_def_cfa_offset 332
	pushl	%edx
	.cfi_def_cfa_offset 336
	call	free
	addl	$16, %esp
	.cfi_def_cfa_offset 320
.L4303:
	movl	$0, 116(%esp)
	movl	$0, 120(%esp)
	subl	$12, %esp
	.cfi_def_cfa_offset 332
	leal	152(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 336
	call	lodepng_info_cleanup
	addl	$328, %esp
	.cfi_def_cfa_offset 8
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE217:
	.size	lodepng_encode_memory, .-lodepng_encode_memory
	.section	.text.unlikely
.LCOLDE123:
	.text
.LHOTE123:
	.section	.text.unlikely
.LCOLDB124:
	.text
.LHOTB124:
	.p2align 4,,15
	.globl	lodepng_encode32
	.type	lodepng_encode32, @function
lodepng_encode32:
.LFB218:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	pushl	$8
	.cfi_def_cfa_offset 24
	pushl	$6
	.cfi_def_cfa_offset 28
	pushl	44(%esp)
	.cfi_def_cfa_offset 32
	pushl	44(%esp)
	.cfi_def_cfa_offset 36
	pushl	44(%esp)
	.cfi_def_cfa_offset 40
	pushl	44(%esp)
	.cfi_def_cfa_offset 44
	pushl	44(%esp)
	.cfi_def_cfa_offset 48
	call	lodepng_encode_memory
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE218:
	.size	lodepng_encode32, .-lodepng_encode32
	.section	.text.unlikely
.LCOLDE124:
	.text
.LHOTE124:
	.section	.text.unlikely
.LCOLDB125:
	.text
.LHOTB125:
	.p2align 4,,15
	.globl	lodepng_encode24
	.type	lodepng_encode24, @function
lodepng_encode24:
.LFB219:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	pushl	$8
	.cfi_def_cfa_offset 24
	pushl	$2
	.cfi_def_cfa_offset 28
	pushl	44(%esp)
	.cfi_def_cfa_offset 32
	pushl	44(%esp)
	.cfi_def_cfa_offset 36
	pushl	44(%esp)
	.cfi_def_cfa_offset 40
	pushl	44(%esp)
	.cfi_def_cfa_offset 44
	pushl	44(%esp)
	.cfi_def_cfa_offset 48
	call	lodepng_encode_memory
	addl	$44, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE219:
	.size	lodepng_encode24, .-lodepng_encode24
	.section	.text.unlikely
.LCOLDE125:
	.text
.LHOTE125:
	.section	.text.unlikely
.LCOLDB126:
	.text
.LHOTB126:
	.p2align 4,,15
	.globl	lodepng_encode_file
	.type	lodepng_encode_file, @function
lodepng_encode_file:
.LFB220:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	pushl	72(%esp)
	.cfi_def_cfa_offset 56
	pushl	72(%esp)
	.cfi_def_cfa_offset 60
	pushl	72(%esp)
	.cfi_def_cfa_offset 64
	pushl	72(%esp)
	.cfi_def_cfa_offset 68
	pushl	72(%esp)
	.cfi_def_cfa_offset 72
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	lodepng_encode_memory
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L4316
.L4313:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	20(%esp)
	.cfi_def_cfa_offset 64
	call	free
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
	.p2align 4,,10
	.p2align 3
.L4316:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %ebp
	movl	8(%esp), %edi
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	$.LC30
	.cfi_def_cfa_offset 60
	pushl	60(%esp)
	.cfi_def_cfa_offset 64
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L4314
	pushl	%eax
	.cfi_def_cfa_offset 52
	pushl	%ebp
	.cfi_def_cfa_offset 56
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	fwrite
	movl	%esi, (%esp)
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L4313
	.p2align 4,,10
	.p2align 3
.L4314:
	movl	$79, %ebx
	jmp	.L4313
	.cfi_endproc
.LFE220:
	.size	lodepng_encode_file, .-lodepng_encode_file
	.section	.text.unlikely
.LCOLDE126:
	.text
.LHOTE126:
	.section	.text.unlikely
.LCOLDB127:
	.text
.LHOTB127:
	.p2align 4,,15
	.globl	lodepng_encode32_file
	.type	lodepng_encode32_file, @function
lodepng_encode32_file:
.LFB221:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	pushl	$8
	.cfi_def_cfa_offset 56
	pushl	$6
	.cfi_def_cfa_offset 60
	pushl	72(%esp)
	.cfi_def_cfa_offset 64
	pushl	72(%esp)
	.cfi_def_cfa_offset 68
	pushl	72(%esp)
	.cfi_def_cfa_offset 72
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	lodepng_encode_memory
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L4321
.L4318:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	20(%esp)
	.cfi_def_cfa_offset 64
	call	free
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
	.p2align 4,,10
	.p2align 3
.L4321:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %ebp
	movl	8(%esp), %edi
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	$.LC30
	.cfi_def_cfa_offset 60
	pushl	60(%esp)
	.cfi_def_cfa_offset 64
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L4319
	pushl	%eax
	.cfi_def_cfa_offset 52
	pushl	%ebp
	.cfi_def_cfa_offset 56
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	fwrite
	movl	%esi, (%esp)
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L4318
	.p2align 4,,10
	.p2align 3
.L4319:
	movl	$79, %ebx
	jmp	.L4318
	.cfi_endproc
.LFE221:
	.size	lodepng_encode32_file, .-lodepng_encode32_file
	.section	.text.unlikely
.LCOLDE127:
	.text
.LHOTE127:
	.section	.text.unlikely
.LCOLDB128:
	.text
.LHOTB128:
	.p2align 4,,15
	.globl	lodepng_encode24_file
	.type	lodepng_encode24_file, @function
lodepng_encode24_file:
.LFB222:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$32, %esp
	.cfi_def_cfa_offset 52
	pushl	$8
	.cfi_def_cfa_offset 56
	pushl	$2
	.cfi_def_cfa_offset 60
	pushl	72(%esp)
	.cfi_def_cfa_offset 64
	pushl	72(%esp)
	.cfi_def_cfa_offset 68
	pushl	72(%esp)
	.cfi_def_cfa_offset 72
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 76
	leal	36(%esp), %eax
	pushl	%eax
	.cfi_def_cfa_offset 80
	call	lodepng_encode_memory
	addl	$32, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L4326
.L4323:
	subl	$12, %esp
	.cfi_def_cfa_offset 60
	pushl	20(%esp)
	.cfi_def_cfa_offset 64
	call	free
	addl	$44, %esp
	.cfi_def_cfa_offset 20
	movl	%ebx, %eax
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
	.p2align 4,,10
	.p2align 3
.L4326:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -20
	.cfi_offset 5, -8
	.cfi_offset 6, -16
	.cfi_offset 7, -12
	movl	12(%esp), %ebp
	movl	8(%esp), %edi
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	$.LC30
	.cfi_def_cfa_offset 60
	pushl	60(%esp)
	.cfi_def_cfa_offset 64
	call	fopen
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	movl	%eax, %esi
	je	.L4324
	pushl	%eax
	.cfi_def_cfa_offset 52
	pushl	%ebp
	.cfi_def_cfa_offset 56
	pushl	$1
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	fwrite
	movl	%esi, (%esp)
	call	fclose
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	jmp	.L4323
	.p2align 4,,10
	.p2align 3
.L4324:
	movl	$79, %ebx
	jmp	.L4323
	.cfi_endproc
.LFE222:
	.size	lodepng_encode24_file, .-lodepng_encode24_file
	.section	.text.unlikely
.LCOLDE128:
	.text
.LHOTE128:
	.section	.text.unlikely
.LCOLDB129:
	.text
.LHOTB129:
	.p2align 4,,15
	.globl	lodepng_encoder_settings_init
	.type	lodepng_encoder_settings_init, @function
lodepng_encoder_settings_init:
.LFB223:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$2, (%eax)
	movl	$1, 4(%eax)
	movl	$2048, 8(%eax)
	movl	$3, 12(%eax)
	movl	$128, 16(%eax)
	movl	$1, 20(%eax)
	movl	$0, 24(%eax)
	movl	$0, 28(%eax)
	movl	$0, 32(%eax)
	movl	$1, 40(%eax)
	movl	$1, 44(%eax)
	movl	$1, 36(%eax)
	movl	$0, 52(%eax)
	movl	$0, 48(%eax)
	movl	$0, 56(%eax)
	movl	$1, 60(%eax)
	ret
	.cfi_endproc
.LFE223:
	.size	lodepng_encoder_settings_init, .-lodepng_encoder_settings_init
	.section	.text.unlikely
.LCOLDE129:
	.text
.LHOTE129:
	.section	.rodata.str1.1
.LC130:
	.string	"unknown error code"
	.section	.text.unlikely
.LCOLDB131:
	.text
.LHOTB131:
	.p2align 4,,15
	.globl	lodepng_error_text
	.type	lodepng_error_text, @function
lodepng_error_text:
.LFB224:
	.cfi_startproc
	movl	4(%esp), %edx
	movl	$.LC130, %eax
	cmpl	$94, %edx
	ja	.L4329
	movl	CSWTCH.337(,%edx,4), %eax
.L4329:
	rep ret
	.cfi_endproc
.LFE224:
	.size	lodepng_error_text, .-lodepng_error_text
	.section	.text.unlikely
.LCOLDE131:
	.text
.LHOTE131:
	.section	.rodata.str1.1
.LC132:
	.string	"no error, everything went ok"
.LC133:
	.string	"nothing done yet"
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align 4
.LC134:
	.string	"end of input memory reached without huffman end code"
	.align 4
.LC135:
	.string	"error in code tree made it jump outside of huffman tree"
	.align 4
.LC136:
	.string	"problem while processing dynamic deflate block"
	.align 4
.LC137:
	.string	"unexisting code while processing dynamic deflate block"
	.align 4
.LC138:
	.string	"end of out buffer memory reached while inflating"
	.align 4
.LC139:
	.string	"invalid distance code while inflating"
	.align 4
.LC140:
	.string	"invalid deflate block BTYPE encountered while decoding"
	.align 4
.LC141:
	.string	"NLEN is not ones complement of LEN in a deflate block"
	.align 4
.LC142:
	.string	"end of in buffer memory reached while inflating"
	.section	.rodata.str1.1
.LC143:
	.string	"invalid FCHECK in zlib header"
	.section	.rodata.str1.4
	.align 4
.LC144:
	.string	"invalid compression method in zlib header"
	.align 4
.LC145:
	.string	"FDICT encountered in zlib header while it's not used for PNG"
	.align 4
.LC146:
	.string	"PNG file is smaller than a PNG header"
	.align 4
.LC147:
	.string	"incorrect PNG signature, it's no PNG or corrupted"
	.align 4
.LC148:
	.string	"first chunk is not the header chunk"
	.align 4
.LC149:
	.string	"chunk length too large, chunk broken off at end of file"
	.section	.rodata.str1.1
.LC150:
	.string	"illegal PNG color type or bpp"
	.section	.rodata.str1.4
	.align 4
.LC151:
	.string	"illegal PNG compression method"
	.section	.rodata.str1.1
.LC152:
	.string	"illegal PNG filter method"
.LC153:
	.string	"illegal PNG interlace method"
	.section	.rodata.str1.4
	.align 4
.LC154:
	.string	"chunk length of a chunk is too large or the chunk too small"
	.align 4
.LC155:
	.string	"illegal PNG filter type encountered"
	.align 4
.LC156:
	.string	"illegal bit depth for this color type given"
	.section	.rodata.str1.1
.LC157:
	.string	"the palette is too big"
	.section	.rodata.str1.4
	.align 4
.LC158:
	.string	"more palette alpha values given in tRNS chunk than there are colors in the palette"
	.align 4
.LC159:
	.string	"tRNS chunk has wrong size for greyscale image"
	.align 4
.LC160:
	.string	"tRNS chunk has wrong size for RGB image"
	.align 4
.LC161:
	.string	"tRNS chunk appeared while it was not allowed for this color type"
	.align 4
.LC162:
	.string	"bKGD chunk has wrong size for palette image"
	.align 4
.LC163:
	.string	"bKGD chunk has wrong size for greyscale image"
	.align 4
.LC164:
	.string	"bKGD chunk has wrong size for RGB image"
	.align 4
.LC165:
	.string	"empty input buffer given to decoder. Maybe caused by non-existing file?"
	.align 4
.LC166:
	.string	"jumped past memory while generating dynamic huffman tree"
	.align 4
.LC167:
	.string	"jumped past memory while inflating huffman block"
	.align 4
.LC168:
	.string	"jumped past memory while inflating"
	.section	.rodata.str1.1
.LC169:
	.string	"size of zlib data too small"
	.section	.rodata.str1.4
	.align 4
.LC170:
	.string	"repeat symbol in tree while there was no value symbol yet"
	.align 4
.LC171:
	.string	"jumped past tree while generating huffman tree"
	.align 4
.LC172:
	.string	"given output image colortype or bitdepth not supported for color conversion"
	.align 4
.LC173:
	.string	"invalid CRC encountered (checking CRC can be disabled)"
	.align 4
.LC174:
	.string	"invalid ADLER32 encountered (checking ADLER32 can be disabled)"
	.align 4
.LC175:
	.string	"requested color conversion not supported"
	.align 4
.LC176:
	.string	"invalid window size given in the settings of the encoder (must be 0-32768)"
	.align 4
.LC177:
	.string	"invalid BTYPE given in the settings of the encoder (only 0, 1 and 2 are allowed)"
	.align 4
.LC178:
	.string	"conversion from color to greyscale not supported"
	.align 4
.LC179:
	.string	"length of a chunk too long, max allowed for PNG is 2147483647 bytes per chunk"
	.align 4
.LC180:
	.string	"the length of the END symbol 256 in the Huffman tree is 0"
	.align 4
.LC181:
	.string	"the length of a text chunk keyword given to the encoder is longer than the maximum of 79 bytes"
	.align 4
.LC182:
	.string	"the length of a text chunk keyword given to the encoder is smaller than the minimum of 1 byte"
	.align 4
.LC183:
	.string	"tried to encode a PLTE chunk with a palette that has less than 1 or more than 256 colors"
	.align 4
.LC184:
	.string	"unknown chunk type with 'critical' flag encountered by the decoder"
	.align 4
.LC185:
	.string	"unexisting interlace mode given to encoder (must be 0 or 1)"
	.align 4
.LC186:
	.string	"while decoding, unexisting compression method encountering in zTXt or iTXt chunk (it must be 0)"
	.section	.rodata.str1.1
.LC187:
	.string	"invalid tIME chunk size"
.LC188:
	.string	"invalid pHYs chunk size"
	.section	.rodata.str1.4
	.align 4
.LC189:
	.string	"no null termination char found while decoding text chunk"
	.align 4
.LC190:
	.string	"iTXt chunk too short to contain required bytes"
	.align 4
.LC191:
	.string	"integer overflow in buffer size"
	.align 4
.LC192:
	.string	"failed to open file for reading"
	.align 4
.LC193:
	.string	"failed to open file for writing"
	.align 4
.LC194:
	.string	"tried creating a tree of 0 symbols"
	.align 4
.LC195:
	.string	"lazy matching at pos 0 is impossible"
	.align 4
.LC196:
	.string	"color conversion to palette requested while a color isn't in palette"
	.section	.rodata.str1.1
.LC197:
	.string	"memory allocation failed"
	.section	.rodata.str1.4
	.align 4
.LC198:
	.string	"given image too small to contain all pixels to be encoded"
	.align 4
.LC199:
	.string	"impossible offset in lz77 encoding (internal bug)"
	.align 4
.LC200:
	.string	"must provide custom zlib function pointer if LODEPNG_COMPILE_ZLIB is not defined"
	.align 4
.LC201:
	.string	"invalid filter strategy given for LodePNGEncoderSettings.filter_strategy"
	.align 4
.LC202:
	.string	"text chunk keyword too short or long: must have size 1-79"
	.align 4
.LC203:
	.string	"windowsize must be a power of two"
	.align 4
.LC204:
	.string	"invalid decompressed idat size"
	.align 4
.LC205:
	.string	"too many pixels, not supported"
	.align 4
.LC206:
	.string	"zero width or height is invalid"
	.align 4
.LC207:
	.string	"header chunk must have a size of 13 bytes"
	.section	.rodata
	.align 64
	.type	CSWTCH.337, @object
	.size	CSWTCH.337, 380
CSWTCH.337:
	.long	.LC132
	.long	.LC133
	.long	.LC130
	.long	.LC130
	.long	.LC130
	.long	.LC130
	.long	.LC130
	.long	.LC130
	.long	.LC130
	.long	.LC130
	.long	.LC134
	.long	.LC135
	.long	.LC130
	.long	.LC136
	.long	.LC136
	.long	.LC136
	.long	.LC137
	.long	.LC138
	.long	.LC139
	.long	.LC138
	.long	.LC140
	.long	.LC141
	.long	.LC138
	.long	.LC142
	.long	.LC143
	.long	.LC144
	.long	.LC145
	.long	.LC146
	.long	.LC147
	.long	.LC148
	.long	.LC149
	.long	.LC150
	.long	.LC151
	.long	.LC152
	.long	.LC153
	.long	.LC154
	.long	.LC155
	.long	.LC156
	.long	.LC157
	.long	.LC158
	.long	.LC159
	.long	.LC160
	.long	.LC161
	.long	.LC162
	.long	.LC163
	.long	.LC164
	.long	.LC130
	.long	.LC130
	.long	.LC165
	.long	.LC166
	.long	.LC166
	.long	.LC167
	.long	.LC168
	.long	.LC169
	.long	.LC170
	.long	.LC171
	.long	.LC172
	.long	.LC173
	.long	.LC174
	.long	.LC175
	.long	.LC176
	.long	.LC177
	.long	.LC178
	.long	.LC179
	.long	.LC180
	.long	.LC130
	.long	.LC181
	.long	.LC182
	.long	.LC183
	.long	.LC184
	.long	.LC130
	.long	.LC185
	.long	.LC186
	.long	.LC187
	.long	.LC188
	.long	.LC189
	.long	.LC190
	.long	.LC191
	.long	.LC192
	.long	.LC193
	.long	.LC194
	.long	.LC195
	.long	.LC196
	.long	.LC197
	.long	.LC198
	.long	.LC130
	.long	.LC199
	.long	.LC200
	.long	.LC201
	.long	.LC202
	.long	.LC203
	.long	.LC204
	.long	.LC205
	.long	.LC206
	.long	.LC207
	.align 4
	.type	CSWTCH.141, @object
	.size	CSWTCH.141, 28
CSWTCH.141:
	.long	1
	.long	0
	.long	3
	.long	1
	.long	2
	.long	0
	.long	4
	.align 4
	.type	ADAM7_DY, @object
	.size	ADAM7_DY, 28
ADAM7_DY:
	.long	8
	.long	8
	.long	8
	.long	4
	.long	4
	.long	2
	.long	2
	.align 4
	.type	ADAM7_DX, @object
	.size	ADAM7_DX, 28
ADAM7_DX:
	.long	8
	.long	8
	.long	4
	.long	4
	.long	2
	.long	2
	.long	1
	.align 4
	.type	ADAM7_IY, @object
	.size	ADAM7_IY, 28
ADAM7_IY:
	.long	0
	.long	0
	.long	4
	.long	0
	.long	2
	.long	0
	.long	1
	.align 4
	.type	ADAM7_IX, @object
	.size	ADAM7_IX, 28
ADAM7_IX:
	.long	0
	.long	4
	.long	0
	.long	2
	.long	0
	.long	1
	.long	0
	.align 64
	.type	lodepng_crc32_table, @object
	.size	lodepng_crc32_table, 1024
lodepng_crc32_table:
	.long	0
	.long	1996959894
	.long	-301047508
	.long	-1727442502
	.long	124634137
	.long	1886057615
	.long	-379345611
	.long	-1637575261
	.long	249268274
	.long	2044508324
	.long	-522852066
	.long	-1747789432
	.long	162941995
	.long	2125561021
	.long	-407360249
	.long	-1866523247
	.long	498536548
	.long	1789927666
	.long	-205950648
	.long	-2067906082
	.long	450548861
	.long	1843258603
	.long	-187386543
	.long	-2083289657
	.long	325883990
	.long	1684777152
	.long	-43845254
	.long	-1973040660
	.long	335633487
	.long	1661365465
	.long	-99664541
	.long	-1928851979
	.long	997073096
	.long	1281953886
	.long	-715111964
	.long	-1570279054
	.long	1006888145
	.long	1258607687
	.long	-770865667
	.long	-1526024853
	.long	901097722
	.long	1119000684
	.long	-608450090
	.long	-1396901568
	.long	853044451
	.long	1172266101
	.long	-589951537
	.long	-1412350631
	.long	651767980
	.long	1373503546
	.long	-925412992
	.long	-1076862698
	.long	565507253
	.long	1454621731
	.long	-809855591
	.long	-1195530993
	.long	671266974
	.long	1594198024
	.long	-972236366
	.long	-1324619484
	.long	795835527
	.long	1483230225
	.long	-1050600021
	.long	-1234817731
	.long	1994146192
	.long	31158534
	.long	-1731059524
	.long	-271249366
	.long	1907459465
	.long	112637215
	.long	-1614814043
	.long	-390540237
	.long	2013776290
	.long	251722036
	.long	-1777751922
	.long	-519137256
	.long	2137656763
	.long	141376813
	.long	-1855689577
	.long	-429695999
	.long	1802195444
	.long	476864866
	.long	-2056965928
	.long	-228458418
	.long	1812370925
	.long	453092731
	.long	-2113342271
	.long	-183516073
	.long	1706088902
	.long	314042704
	.long	-1950435094
	.long	-54949764
	.long	1658658271
	.long	366619977
	.long	-1932296973
	.long	-69972891
	.long	1303535960
	.long	984961486
	.long	-1547960204
	.long	-725929758
	.long	1256170817
	.long	1037604311
	.long	-1529756563
	.long	-740887301
	.long	1131014506
	.long	879679996
	.long	-1385723834
	.long	-631195440
	.long	1141124467
	.long	855842277
	.long	-1442165665
	.long	-586318647
	.long	1342533948
	.long	654459306
	.long	-1106571248
	.long	-921952122
	.long	1466479909
	.long	544179635
	.long	-1184443383
	.long	-832445281
	.long	1591671054
	.long	702138776
	.long	-1328506846
	.long	-942167884
	.long	1504918807
	.long	783551873
	.long	-1212326853
	.long	-1061524307
	.long	-306674912
	.long	-1698712650
	.long	62317068
	.long	1957810842
	.long	-355121351
	.long	-1647151185
	.long	81470997
	.long	1943803523
	.long	-480048366
	.long	-1805370492
	.long	225274430
	.long	2053790376
	.long	-468791541
	.long	-1828061283
	.long	167816743
	.long	2097651377
	.long	-267414716
	.long	-2029476910
	.long	503444072
	.long	1762050814
	.long	-144550051
	.long	-2140837941
	.long	426522225
	.long	1852507879
	.long	-19653770
	.long	-1982649376
	.long	282753626
	.long	1742555852
	.long	-105259153
	.long	-1900089351
	.long	397917763
	.long	1622183637
	.long	-690576408
	.long	-1580100738
	.long	953729732
	.long	1340076626
	.long	-776247311
	.long	-1497606297
	.long	1068828381
	.long	1219638859
	.long	-670225446
	.long	-1358292148
	.long	906185462
	.long	1090812512
	.long	-547295293
	.long	-1469587627
	.long	829329135
	.long	1181335161
	.long	-882789492
	.long	-1134132454
	.long	628085408
	.long	1382605366
	.long	-871598187
	.long	-1156888829
	.long	570562233
	.long	1426400815
	.long	-977650754
	.long	-1296233688
	.long	733239954
	.long	1555261956
	.long	-1026031705
	.long	-1244606671
	.long	752459403
	.long	1541320221
	.long	-1687895376
	.long	-328994266
	.long	1969922972
	.long	40735498
	.long	-1677130071
	.long	-351390145
	.long	1913087877
	.long	83908371
	.long	-1782625662
	.long	-491226604
	.long	2075208622
	.long	213261112
	.long	-1831694693
	.long	-438977011
	.long	2094854071
	.long	198958881
	.long	-2032938284
	.long	-237706686
	.long	1759359992
	.long	534414190
	.long	-2118248755
	.long	-155638181
	.long	1873836001
	.long	414664567
	.long	-2012718362
	.long	-15766928
	.long	1711684554
	.long	285281116
	.long	-1889165569
	.long	-127750551
	.long	1634467795
	.long	376229701
	.long	-1609899400
	.long	-686959890
	.long	1308918612
	.long	956543938
	.long	-1486412191
	.long	-799009033
	.long	1231636301
	.long	1047427035
	.long	-1362007478
	.long	-640263460
	.long	1088359270
	.long	936918000
	.long	-1447252397
	.long	-558129467
	.long	1202900863
	.long	817233897
	.long	-1111625188
	.long	-893730166
	.long	1404277552
	.long	615818150
	.long	-1160759803
	.long	-841546093
	.long	1423857449
	.long	601450431
	.long	-1285129682
	.long	-1000256840
	.long	1567103746
	.long	711928724
	.long	-1274298825
	.long	-1022587231
	.long	1510334235
	.long	755167117
	.globl	lodepng_default_decompress_settings
	.align 4
	.type	lodepng_default_decompress_settings, @object
	.size	lodepng_default_decompress_settings, 16
lodepng_default_decompress_settings:
	.zero	16
	.globl	lodepng_default_compress_settings
	.align 32
	.type	lodepng_default_compress_settings, @object
	.size	lodepng_default_compress_settings, 36
lodepng_default_compress_settings:
	.long	2
	.long	1
	.long	2048
	.long	3
	.long	128
	.long	1
	.long	0
	.long	0
	.long	0
	.align 64
	.type	CLCL_ORDER, @object
	.size	CLCL_ORDER, 76
CLCL_ORDER:
	.long	16
	.long	17
	.long	18
	.long	0
	.long	8
	.long	7
	.long	9
	.long	6
	.long	10
	.long	5
	.long	11
	.long	4
	.long	12
	.long	3
	.long	13
	.long	2
	.long	14
	.long	1
	.long	15
	.align 64
	.type	DISTANCEEXTRA, @object
	.size	DISTANCEEXTRA, 120
DISTANCEEXTRA:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	2
	.long	2
	.long	3
	.long	3
	.long	4
	.long	4
	.long	5
	.long	5
	.long	6
	.long	6
	.long	7
	.long	7
	.long	8
	.long	8
	.long	9
	.long	9
	.long	10
	.long	10
	.long	11
	.long	11
	.long	12
	.long	12
	.long	13
	.long	13
	.align 64
	.type	DISTANCEBASE, @object
	.size	DISTANCEBASE, 120
DISTANCEBASE:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	7
	.long	9
	.long	13
	.long	17
	.long	25
	.long	33
	.long	49
	.long	65
	.long	97
	.long	129
	.long	193
	.long	257
	.long	385
	.long	513
	.long	769
	.long	1025
	.long	1537
	.long	2049
	.long	3073
	.long	4097
	.long	6145
	.long	8193
	.long	12289
	.long	16385
	.long	24577
	.align 64
	.type	LENGTHEXTRA, @object
	.size	LENGTHEXTRA, 116
LENGTHEXTRA:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	1
	.long	1
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.long	3
	.long	3
	.long	3
	.long	3
	.long	4
	.long	4
	.long	4
	.long	4
	.long	5
	.long	5
	.long	5
	.long	5
	.long	0
	.align 64
	.type	LENGTHBASE, @object
	.size	LENGTHBASE, 116
LENGTHBASE:
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	10
	.long	11
	.long	13
	.long	15
	.long	17
	.long	19
	.long	23
	.long	27
	.long	31
	.long	35
	.long	43
	.long	51
	.long	59
	.long	67
	.long	83
	.long	99
	.long	115
	.long	131
	.long	163
	.long	195
	.long	227
	.long	258
	.globl	LODEPNG_VERSION_STRING
	.section	.rodata.str1.1
.LC208:
	.string	"20161127"
	.data
	.align 4
	.type	LODEPNG_VERSION_STRING, @object
	.size	LODEPNG_VERSION_STRING, 4
LODEPNG_VERSION_STRING:
	.long	.LC208
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC38:
	.long	1065353216
	.align 4
.LC39:
	.long	1107296256
	.align 4
.LC40:
	.long	1082130432
	.align 4
.LC41:
	.long	1031798784
	.align 4
.LC42:
	.long	1073741824
	.align 4
.LC44:
	.long	1056964608
	.align 4
.LC45:
	.long	1077936128
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC46:
	.long	1665760116
	.long	-357921100
	.long	16383
	.align 16
	.align 16
.LC47:
	.long	-1926894128
	.long	-1196803375
	.long	16383
	.align 16
	.ident	"GCC: (Debian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
