	.arch armv4
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"intabtdistr.c"
	.text
	.align	2
	.global	hal_run_intflthandle
	.type	hal_run_intflthandle, %function
hal_run_intflthandle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r7, r1
	mov	r6, r0
	bl	hal_retn_intfltdsc
	cmp	r0, #0
	beq	.L9
	ldr	r4, [r0, #8]
	add	r5, r0, #4
	cmp	r4, r5
	beq	.L5
.L6:
	ldr	r1, [r4, #24]
	mov	r0, r6
	mov	r2, r7
	ldr	ip, [r4, #32]
	mov	lr, pc
	bx	ip
	ldr	r4, [r4, #4]
	cmp	r4, r5
	bne	.L6
.L5:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L9:
	ldr	r0, .L10
	bl	hal_sysdie
	b	.L5
.L11:
	.align	2
.L10:
	.word	.LC0
	.size	hal_run_intflthandle, .-hal_run_intflthandle
	.align	2
	.global	hal_frq_distr
	.type	hal_frq_distr, %function
hal_frq_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L14
	bl	hal_sysdie
	ldmfd	sp!, {r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
	.word	.LC1
	.size	hal_frq_distr, .-hal_frq_distr
	.align	2
	.global	hal_bugdie_distr
	.type	hal_bugdie_distr, %function
hal_bugdie_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L18
	bl	hal_sysdie
	ldmfd	sp!, {r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LC2
	.size	hal_bugdie_distr, .-hal_bugdie_distr
	.align	2
	.global	hal_undefins_distr
	.type	hal_undefins_distr, %function
hal_undefins_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L22
	bl	hal_sysdie
	ldmfd	sp!, {r4, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LC3
	.size	hal_undefins_distr, .-hal_undefins_distr
	.align	2
	.global	hal_int_distr
	.type	hal_int_distr, %function
hal_int_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r1
	mov	r1, r0
	mov	r0, r4
	bl	hal_run_intflthandle
	mov	r0, r4
	bl	hal_clear_srcpnd
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	hal_int_distr, .-hal_int_distr
	.align	2
	.global	hal_lcdint_distr
	.type	hal_lcdint_distr, %function
hal_lcdint_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r0, #1291845632
	add	r0, r0, #84
	mov	r5, r2
	mov	r6, r3
	bl	hal_io32_read
	cmp	r5, r6
	and	r7, r0, #3
	bcc	.L29
	b	.L30
.L28:
	add	r5, r5, #1
	cmp	r6, r5
	bls	.L30
.L29:
	mov	r3, r7, lsr r5
	tst	r3, #1
	beq	.L28
	add	r0, r5, #32
	mov	r1, r4
	add	r5, r5, #1
	bl	hal_run_intflthandle
	cmp	r6, r5
	bhi	.L29
.L30:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	hal_lcdint_distr, .-hal_lcdint_distr
	.align	2
	.global	hal_sint_distr
	.type	hal_sint_distr, %function
hal_sint_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r0, #1241513984
	add	r0, r0, #24
	mov	r5, r2
	mov	r7, r3
	bl	hal_io32_read
	cmp	r5, r7
	mov	r6, r0, asl #17
	mov	r6, r6, lsr #17
	bcc	.L35
	b	.L36
.L34:
	add	r5, r5, #1
	cmp	r7, r5
	bls	.L36
.L35:
	mov	r3, r6, lsr r5
	tst	r3, #1
	beq	.L34
	add	r8, r5, #32
	mov	r0, r8
	mov	r1, r4
	bl	hal_run_intflthandle
	add	r5, r5, #1
	mov	r0, r8
	bl	hal_clear_srcpnd
	cmp	r7, r5
	bhi	.L35
.L36:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	hal_sint_distr, .-hal_sint_distr
	.align	2
	.global	hal_eint_distr
	.type	hal_eint_distr, %function
hal_eint_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r0, #1442840576
	add	r0, r0, #168
	mov	r5, r2
	mov	r6, r3
	bl	hal_io32_read
	cmp	r5, r6
	bic	r7, r0, #-16777216
	bcc	.L41
	b	.L42
.L40:
	add	r5, r5, #1
	cmp	r6, r5
	bls	.L42
.L41:
	mov	r3, r7, lsr r5
	tst	r3, #1
	beq	.L40
	add	r8, r5, #47
	mov	r0, r8
	mov	r1, r4
	bl	hal_run_intflthandle
	add	r5, r5, #1
	mov	r0, r8
	bl	hal_clear_srcpnd
	cmp	r6, r5
	bhi	.L41
.L42:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	hal_eint_distr, .-hal_eint_distr
	.align	2
	.global	hal_irq_distr
	.type	hal_irq_distr, %function
hal_irq_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r0
	bl	hal_retn_intnr
	sub	r3, r0, #4
	mov	r4, r0
	cmp	r3, #27
	ldrls	pc, [pc, r3, asl #2]
	b	.L45
.L54:
	.word	.L46
	.word	.L47
	.word	.L48
	.word	.L45
	.word	.L45
	.word	.L49
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L50
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L51
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L45
	.word	.L52
	.word	.L45
	.word	.L45
	.word	.L53
.L53:
	mov	r0, r5
	mov	r1, #31
	mov	r2, #9
	mov	r3, #11
	bl	hal_sint_distr
.L55:
	mov	r0, r4
	bl	hal_clear_intpnd
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L45:
	mov	r0, r5
	mov	r1, r4
	bl	hal_int_distr
	b	.L55
.L46:
	mov	r1, #4
	mov	r0, r5
	mov	r2, r1
	mov	r3, #8
	bl	hal_eint_distr
	b	.L55
.L47:
	mov	r0, r5
	mov	r1, #5
	mov	r2, #8
	mov	r3, #24
	bl	hal_eint_distr
	b	.L55
.L48:
	mov	r0, r5
	mov	r1, #6
	mov	r2, #11
	mov	r3, #13
	bl	hal_sint_distr
	b	.L55
.L49:
	mov	r0, r5
	mov	r1, #9
	mov	r2, #13
	mov	r3, #15
	bl	hal_sint_distr
	b	.L55
.L50:
	mov	r0, r5
	mov	r1, #15
	mov	r2, #6
	mov	r3, #9
	bl	hal_sint_distr
	b	.L55
.L51:
	mov	r0, r5
	mov	r1, #23
	mov	r2, #3
	mov	r3, #6
	bl	hal_sint_distr
	b	.L55
.L52:
	mov	r0, r5
	mov	r1, #28
	mov	r2, #0
	mov	r3, #3
	bl	hal_sint_distr
	b	.L55
	.size	hal_irq_distr, .-hal_irq_distr
	.align	2
	.global	hal_dbugint2
	.type	hal_dbugint2, %function
hal_dbugint2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L59
	mov	r4, r0
	mov	r1, r0
	mov	r0, r5
	bl	printfk
	mov	r0, r5
	mov	r1, r4
	bl	printfk
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	.LC4
	.size	hal_dbugint2, .-hal_dbugint2
	.align	2
	.global	hal_dbugint
	.type	hal_dbugint, %function
hal_dbugint:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r5, .L63
	mov	r4, r0
	mov	r1, r0
	mov	r0, r5
	bl	printfk
	mov	r0, r5
	mov	r1, r4
	bl	printfk
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L64:
	.align	2
.L63:
	.word	.LC5
	.size	hal_dbugint, .-hal_dbugint
	.align	2
	.global	hal_swi_distr
	.type	hal_swi_distr, %function
hal_swi_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	krlservice
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	hal_swi_distr, .-hal_swi_distr
	.align	2
	.global	hal_dbug_print_reg
	.type	hal_dbug_print_reg, %function
hal_dbug_print_reg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r1, [r0, #8]
	mov	r4, r0
	ldr	r0, .L69
	bl	printfk
	ldr	r1, [r4, #12]
	ldr	r0, .L69+4
	bl	printfk
	ldr	r1, [r4, #16]
	ldr	r0, .L69+8
	bl	printfk
	ldr	r1, [r4, #20]
	ldr	r0, .L69+12
	bl	printfk
	ldr	r1, [r4, #24]
	ldr	r0, .L69+16
	bl	printfk
	ldr	r1, [r4, #28]
	ldr	r0, .L69+20
	bl	printfk
	ldr	r1, [r4, #32]
	ldr	r0, .L69+24
	bl	printfk
	ldr	r1, [r4, #36]
	ldr	r0, .L69+28
	bl	printfk
	ldr	r1, [r4, #40]
	ldr	r0, .L69+32
	bl	printfk
	ldr	r1, [r4, #44]
	ldr	r0, .L69+36
	bl	printfk
	ldr	r1, [r4, #48]
	ldr	r0, .L69+40
	bl	printfk
	ldr	r1, [r4, #52]
	ldr	r0, .L69+44
	bl	printfk
	ldr	r1, [r4, #56]
	ldr	r0, .L69+48
	bl	printfk
	ldr	r1, [r4, #60]
	ldr	r0, .L69+52
	bl	printfk
	ldr	r1, [r4, #64]
	ldr	r0, .L69+56
	bl	printfk
	ldr	r1, [r4, #68]
	ldr	r0, .L69+60
	bl	printfk
	ldr	r1, [r4, #0]
	ldr	r0, .L69+64
	bl	printfk
	bl	hal_read_currmodesp
	mov	r4, r0
	mov	r0, #1241513984
	add	r0, r0, #16
	bl	hal_io32_read
	mov	r1, r4
	mov	r2, r0
	ldr	r0, .L69+68
	bl	printfk
	bl	hal_read_cpuflg
	mov	r4, r0
	bl	hal_retn_intnr
	mov	r1, r4
	mov	r2, r0
	ldr	r0, .L69+72
	bl	printfk
	bl	krlsched_retn_currthread
	mov	r1, r0
	ldr	r2, [r1, #44]
	ldr	r0, .L69+76
	bl	printfk
	ldmfd	sp!, {r4, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.size	hal_dbug_print_reg, .-hal_dbug_print_reg
	.align	2
	.global	hal_dataabt_distr
	.type	hal_dataabt_distr, %function
hal_dataabt_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r0, #5
	bl	hal_read_cp15regs
	mov	r5, r0
	mov	r0, #6
	bl	hal_read_cp15regs
	mov	r1, r5
	mov	r2, r0
	ldr	r0, .L73
	bl	printfk
	mov	r0, r4
	bl	hal_dbug_print_reg
	ldr	r0, .L73+4
	bl	hal_sysdie
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L74:
	.align	2
.L73:
	.word	.LC26
	.word	.LC27
	.size	hal_dataabt_distr, .-hal_dataabt_distr
	.align	2
	.global	hal_prefabt_distr
	.type	hal_prefabt_distr, %function
hal_prefabt_distr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r0, #5
	bl	hal_read_cp15regs
	mov	r5, r0
	mov	r0, #6
	bl	hal_read_cp15regs
	mov	r1, r5
	mov	r2, r0
	ldr	r0, .L77
	bl	printfk
	mov	r0, r4
	bl	hal_dbug_print_reg
	ldr	r0, .L77+4
	bl	hal_sysdie
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	.LC26
	.word	.LC28
	.size	hal_prefabt_distr, .-hal_prefabt_distr
	.global	gint_indx
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"hal_run_intfdsc err\000"
.LC1:
	.ascii	"frq runing!! \000"
	.space	2
.LC2:
	.ascii	"bug die runing!! \000"
	.space	2
.LC3:
	.ascii	"undefins runing!! \000"
	.space	1
.LC4:
	.ascii	"idbug exit..%x \012\015\000"
	.space	2
.LC5:
	.ascii	"idbug enter..%x \012\015\000"
	.space	1
.LC6:
	.ascii	"USR_REG r0:%x\012\015\000"
.LC7:
	.ascii	"USR_REG r1:%x\012\015\000"
.LC8:
	.ascii	"USR_REG r2:%x\012\015\000"
.LC9:
	.ascii	"USR_REG r3:%x\012\015\000"
.LC10:
	.ascii	"USR_REG r4:%x\012\015\000"
.LC11:
	.ascii	"USR_REG r5:%x\012\015\000"
.LC12:
	.ascii	"USR_REG r6:%x\012\015\000"
.LC13:
	.ascii	"USR_REG r7:%x\012\015\000"
.LC14:
	.ascii	"USR_REG r8:%x\012\015\000"
.LC15:
	.ascii	"USR_REG r9:%x\012\015\000"
.LC16:
	.ascii	"USR_REG r10:%x\012\015\000"
	.space	3
.LC17:
	.ascii	"USR_REG r11:%x\012\015\000"
	.space	3
.LC18:
	.ascii	"USR_REG r12:%x\012\015\000"
	.space	3
.LC19:
	.ascii	"USR_REG r13:%x\012\015\000"
	.space	3
.LC20:
	.ascii	"USR_REG r14:%x\012\015\000"
	.space	3
.LC21:
	.ascii	"SVE_REG lr:%x\012\015\000"
.LC22:
	.ascii	"SVE_REG spsr:%x\012\015\000"
	.space	2
.LC23:
	.ascii	"CSP_REG sp:%x INTPND:%x\012\015\000"
	.space	2
.LC24:
	.ascii	"CCR_REG cpsr:%x INTOFST:%x\012\015\000"
	.space	3
.LC25:
	.ascii	"CURR_THREAD:%x CURR_THREAD_KSTKTOP:%x\012\015\000"
.LC26:
	.ascii	"CP15 c5:%x c6:%x\012\015\000"
	.space	1
.LC27:
	.ascii	"data abt runing!! \000"
	.space	1
.LC28:
	.ascii	"pref abt runing!! \000"
	.section	.data,"aw",%progbits
	.align	2
	.type	gint_indx, %object
	.size	gint_indx, 4
gint_indx:
	.space	4
	.section	.note.GNU-stack,"",%progbits
