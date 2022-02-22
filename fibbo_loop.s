	.file	1 "fibbo_loop.cpp"
	.section .mdebug.abi32
	.previous
	.nan	legacy
	.module	fp=32
	.module	nooddspreg
	.abicalls
	.text
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
$LC0:
	.ascii	"Fabonacci series is: \000"
	.align	2
$LC1:
	.ascii	" \000"
	.align	2
$LC2:
	.ascii	"\012Total time taken to execute the program is:\000"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
$LFB1586 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$sp,72,$31		# vars= 0, regs= 8/4, args= 16, gp= 8
	.mask	0x807f0000,-20
	.fmask	0x00f00000,-8
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	addiu	$sp,$sp,-72
	.cfi_def_cfa_offset 72
	lw	$25,%call16(clock)($28)
	sw	$31,52($sp)
	sw	$22,48($sp)
	sw	$21,44($sp)
	sw	$20,40($sp)
	sw	$19,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	swc1	$f22,68($sp)
	swc1	$f23,64($sp)
	.cprestore	16
	swc1	$f20,60($sp)
	.cfi_offset 31, -20
	.cfi_offset 22, -24
	.cfi_offset 21, -28
	.cfi_offset 20, -32
	.cfi_offset 19, -36
	.cfi_offset 18, -40
	.cfi_offset 17, -44
	.cfi_offset 16, -48
	.cfi_offset 54, -4
	.cfi_offset 55, -8
	lw	$21,%got(_ZSt4cout)($28)
	.cfi_offset 52, -12
	.cfi_offset 53, -16
	.reloc	1f,R_MIPS_JALR,clock
1:	jalr	$25
	swc1	$f21,56($sp)

	lw	$28,16($sp)
	mtc1	$2,$f0
	lw	$25,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
	lui	$5,%hi($LC0)
	move	$4,$21
	addiu	$5,$5,%lo($LC0)
	cvt.d.w	$f22,$f0
	.reloc	1f,R_MIPS_JALR,_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
1:	jalr	$25
	lui	$20,%hi($LC1)

	lw	$28,16($sp)
	li	$22,10			# 0xa
	move	$18,$0
	li	$19,1			# 0x1
	move	$17,$0
	move	$16,$0
	addiu	$20,$20,%lo($LC1)
$L2:
	lw	$25,%call16(_ZNSo9_M_insertIyEERSoT_)($28)
	move	$7,$16
	move	$6,$17
	.reloc	1f,R_MIPS_JALR,_ZNSo9_M_insertIyEERSoT_
1:	jalr	$25
	move	$4,$21

	lw	$28,16($sp)
	move	$4,$2
	lw	$25,%call16(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i)($28)
	li	$6,1			# 0x1
	.reloc	1f,R_MIPS_JALR,_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_i
1:	jalr	$25
	move	$5,$20

	addu	$7,$19,$16
	move	$3,$18
	addu	$17,$3,$17
	sltu	$18,$7,$19
	addiu	$22,$22,-1
	move	$16,$19
	addu	$18,$18,$17
	lw	$28,16($sp)
	move	$19,$7
	bne	$22,$0,$L2
	move	$17,$3

	lw	$25,%call16(clock)($28)
	nop
	.reloc	1f,R_MIPS_JALR,clock
1:	jalr	$25
	nop

	lw	$28,16($sp)
	mtc1	$2,$f0
	lw	$4,%got(_ZSt4cout)($28)
	lui	$5,%hi($LC2)
	lw	$25,%call16(_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc)($28)
	addiu	$5,$5,%lo($LC2)
	.reloc	1f,R_MIPS_JALR,_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
1:	jalr	$25
	cvt.d.w	$f20,$f0

	lui	$2,%hi($LC3)
	lwc1	$f0,%lo($LC3+4)($2)
	sub.d	$f20,$f20,$f22
	lwc1	$f1,%lo($LC3)($2)
	lw	$28,16($sp)
	div.d	$f0,$f20,$f0
	lw	$4,%got(_ZSt4cout)($28)
	lw	$25,%call16(_ZNSo9_M_insertIdEERSoT_)($28)
	mfc1	$7,$f0
	mfc1	$6,$f1
	.reloc	1f,R_MIPS_JALR,_ZNSo9_M_insertIdEERSoT_
1:	jalr	$25
	nop

	lwc1	$f22,68($sp)
	lwc1	$f20,60($sp)
	lw	$31,52($sp)
	lw	$22,48($sp)
	lw	$21,44($sp)
	lw	$20,40($sp)
	lw	$19,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	lwc1	$f23,64($sp)
	lwc1	$f21,56($sp)
	move	$2,$0
	jr	$31
	addiu	$sp,$sp,72

	.cfi_def_cfa_offset 0
	.cfi_restore 52
	.cfi_restore 53
	.cfi_restore 54
	.cfi_restore 55
	.cfi_restore 16
	.cfi_restore 17
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.cfi_restore 21
	.cfi_restore 22
	.cfi_restore 31
	.set	macro
	.set	reorder
	.end	main
	.cfi_endproc
$LFE1586:
	.size	main, .-main
	.align	2
$LFB2072 = .
	.cfi_startproc
	.set	nomips16
	.set	nomicromips
	.ent	_GLOBAL__sub_I_main
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
	.frame	$sp,32,$31		# vars= 0, regs= 2/0, args= 16, gp= 8
	.mask	0x80010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-32
	.cfi_def_cfa_offset 32
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$25,%call16(_ZNSt8ios_base4InitC1Ev)($28)
	sw	$16,24($sp)
	.cfi_offset 16, -8
	lui	$16,%hi(_ZStL8__ioinit)
	sw	$31,28($sp)
	.cfi_offset 31, -4
	.cprestore	16
	.reloc	1f,R_MIPS_JALR,_ZNSt8ios_base4InitC1Ev
1:	jalr	$25
	addiu	$4,$16,%lo(_ZStL8__ioinit)

	lw	$28,16($sp)
	lw	$31,28($sp)
	lui	$6,%hi(__dso_handle)
	addiu	$5,$16,%lo(_ZStL8__ioinit)
	lw	$16,24($sp)
	lw	$4,%got(_ZNSt8ios_base4InitD1Ev)($28)
	lw	$25,%call16(__cxa_atexit)($28)
	addiu	$6,$6,%lo(__dso_handle)
	.cfi_restore 16
	.cfi_restore 31
	.reloc	1f,R_MIPS_JALR,__cxa_atexit
1:	jr	$25
	addiu	$sp,$sp,32

	.cfi_def_cfa_offset 0
	.set	macro
	.set	reorder
	.end	_GLOBAL__sub_I_main
	.cfi_endproc
$LFE2072:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.ctors,"aw",@progbits
	.align	2
	.word	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
$LC3:
	.word	1093567616
	.word	0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
