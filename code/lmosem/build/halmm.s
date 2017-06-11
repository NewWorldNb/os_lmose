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
	.file	"halmm.c"
	.text
	.align	2
	.global	cheksum_phyadrspce
	.type	cheksum_phyadrspce, %function
cheksum_phyadrspce:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r0, #28
	ldmia	r1, {r1, r3}	@ phole ldm
	rsbs	r2, r3, #1
	movcc	r2, #0
	cmp	r1, #29
	orrne	r2, r2, #1
	cmp	r2, #0
	stmfd	sp!, {r4, r5, r6}
	bne	.L2
	ldr	r2, [r3, #448]
	cmp	r2, #0
	add	r2, r3, #448
	bne	.L2
	ldr	r1, [r2, #4]
	cmn	r1, #1
	beq	.L10
.L2:
	mov	r0, #0
.L6:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L10:
	ldr	r1, [r2, #8]
	cmp	r1, #0
	bne	.L2
	ldr	r5, [r2, #12]
	cmp	r5, #0
	bne	.L2
	mov	r6, r5
	add	r4, r3, #464
	b	.L5
.L3:
	add	r3, r3, #16
	cmp	r3, r4
	beq	.L11
.L5:
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #8]
	cmp	r1, r2
	bcc	.L2
	ldr	ip, [r3, #0]
	cmp	ip, #2
	bne	.L3
	ldr	ip, [r0, #12]
	cmp	r2, ip
	bhi	.L4
	ldr	r2, [r0, #16]
	cmp	r1, r2
	movhi	r6, #1
	movhi	r5, r6
	bhi	.L3
.L4:
	mov	r5, #1
	b	.L3
.L11:
	and	r5, r6, r5
	and	r0, r5, #255
	b	.L6
	.size	cheksum_phyadrspce, .-cheksum_phyadrspce
	.align	2
	.global	mapdsc_addto_memlst
	.type	mapdsc_addto_memlst, %function
mapdsc_addto_memlst:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #2
	beq	.L15
	cmp	r2, #3
	beq	.L16
	cmp	r2, #1
	bxne	lr
	mov	r3, r0
	ldr	r2, [r0, #16]
	str	r1, [r3, #16]!
	stmia	r1, {r2, r3}	@ phole stm
	str	r1, [r2, #4]
	bx	lr
.L16:
	mov	r3, r0
	ldr	r2, [r0, #8]
	str	r1, [r3, #8]!
	stmia	r1, {r2, r3}	@ phole stm
	str	r1, [r2, #4]
	bx	lr
.L15:
	mov	r3, r0
	ldr	r2, [r0, #24]
	str	r1, [r3, #24]!
	stmia	r1, {r2, r3}	@ phole stm
	str	r1, [r2, #4]
	bx	lr
	.size	mapdsc_addto_memlst, .-mapdsc_addto_memlst
	.align	2
	.global	pmmlist_init
	.type	pmmlist_init, %function
pmmlist_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r6, [r0, #24]
	cmp	r6, #1
	ldr	r5, [r0, #20]
	bls	.L21
	add	r7, r1, #180
	add	r5, r5, #28
	mov	r4, #1
.L20:
	mov	r1, r5
	add	r4, r4, #1
	mov	r0, r7
	mov	r2, #1
	bl	mapdsc_addto_memlst
	cmp	r6, r4
	add	r5, r5, #28
	bhi	.L20
.L21:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	pmmlist_init, .-pmmlist_init
	.align	2
	.global	hal_onblksz_findalcfrelst
	.type	hal_onblksz_findalcfrelst, %function
hal_onblksz_findalcfrelst:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L34
	stmfd	sp!, {r4, r5}
	mov	ip, r0
	mov	r4, #0
	mov	r0, r3
.L26:
	ldr	r5, [r0, #24]
	cmp	r5, r2
	beq	.L32
	add	r4, r4, #1
	cmp	r4, #6
	add	r0, r0, #32
	bne	.L26
	mov	r0, #0
	str	r0, [ip, #0]
	str	r0, [r1, #0]
.L27:
	ldmfd	sp!, {r4, r5}
	bx	lr
.L32:
.L25:
	ldr	r5, .L34+4
	add	r0, r5, r4, asl #5
	cmp	r0, #0
	str	r2, [r1, #0]
	str	r0, [ip, #0]
	beq	.L27
	ldr	r1, [r0, #20]
	add	r2, r0, #16
	cmp	r2, r1
	bne	.L27
	ldr	r1, [r0, #16]
	cmp	r2, r1
	bne	.L27
	ldr	r2, [r0, #28]
	add	r1, r0, #24
	cmp	r1, r2
	bne	.L27
	ldr	r2, [r0, #24]
	cmp	r1, r2
	bne	.L27
	ldr	r2, [r3, #200]
	sub	r5, r5, #20
	add	r3, r5, #196
	cmp	r2, r3
	beq	.L33
.L28:
	ldr	r0, .L34+8
	b	.L27
.L33:
	ldr	r3, [r5, #196]
	cmp	r3, r2
	moveq	r0, #0
	bne	.L28
	b	.L27
.L35:
	.align	2
.L34:
	.word	osphymem
	.word	osphymem+20
	.word	osphymem+180
	.size	hal_onblksz_findalcfrelst, .-hal_onblksz_findalcfrelst
	.align	2
	.global	hal_onalfl_findmapdsc
	.type	hal_onalfl_findmapdsc, %function
hal_onalfl_findmapdsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #28]
	add	r2, r0, #24
	cmp	r2, r3
	beq	.L41
.L38:
	mov	r0, r3
	bx	lr
.L41:
	ldr	r1, [r0, #24]
	cmp	r2, r1
	bne	.L38
	ldr	r3, [r0, #20]
	add	r2, r0, #16
	cmp	r2, r3
	bne	.L38
	ldr	r1, [r0, #16]
	cmp	r2, r1
	bne	.L38
	mov	r0, #0
	bx	lr
	.size	hal_onalfl_findmapdsc, .-hal_onalfl_findmapdsc
	.align	2
	.global	hal_onmapdsc_allcblks
	.type	hal_onmapdsc_allcblks, %function
hal_onmapdsc_allcblks:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7}
	cmp	r2, #32
	ldr	r6, [sp, #16]
	bhi	.L43
	ldr	r5, [r3, #28]
	add	ip, r3, #24
	cmp	ip, r5
	beq	.L56
.L53:
	cmp	r5, #0
	beq	.L43
	cmp	r2, #0
	beq	.L43
	ldr	r4, [r5, #20]
	ands	r3, r4, #1
	movne	r3, #0
	bne	.L47
	b	.L59
.L49:
	mov	ip, r4, lsr r3
	tst	ip, #1
	beq	.L48
.L47:
	add	r3, r3, #1
	cmp	r2, r3
	bhi	.L49
.L43:
	mov	r2, #0
.L52:
	mov	r0, r2
	ldmfd	sp!, {r4, r5, r6, r7}
	bx	lr
.L48:
.L50:
	ldr	ip, [r5, #12]
	ldr	r7, [r6, #4]
	mla	r2, r7, r3, ip
	cmp	ip, r2
	bhi	.L43
.L54:
	ldr	ip, [r5, #16]
	cmp	ip, r2
	bls	.L43
	mov	ip, #1
	orr	r3, r4, ip, asl r3
	ldr	ip, [r5, #24]
	and	r4, r3, r1
	bic	ip, ip, #240
	orr	r0, r0, ip
	cmp	r4, r1
	str	r0, [r5, #24]
	str	r3, [r5, #20]
	beq	.L58
	ldmia	r5, {r0, ip}	@ phole ldm
	str	r0, [ip, #0]
	mov	r3, r6
	ldr	r1, [r6, #24]
	str	r5, [r3, #24]!
	str	ip, [r0, #4]
	stmia	r5, {r1, r3}	@ phole stm
	str	r5, [r1, #4]
	b	.L52
.L56:
	ldr	r4, [r3, #24]
	cmp	ip, r4
	bne	.L53
	ldr	r5, [r3, #20]
	add	ip, r3, #16
	cmp	ip, r5
	bne	.L53
	ldr	r3, [r3, #16]
	cmp	r5, r3
	bne	.L53
	b	.L43
.L58:
	ldmia	r5, {r0, ip}	@ phole ldm
	str	r0, [ip, #0]
	mov	r3, r6
	ldr	r1, [r6, #8]
	str	r5, [r3, #8]!
	str	ip, [r0, #4]
	stmia	r5, {r1, r3}	@ phole stm
	str	r5, [r1, #4]
	b	.L52
.L59:
	ldr	r2, [r5, #12]
	b	.L54
	.size	hal_onmapdsc_allcblks, .-hal_onmapdsc_allcblks
	.align	2
	.global	hal_onalcfrel_allocblks
	.type	hal_onalcfrel_allocblks, %function
hal_onalcfrel_allocblks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	cmp	r2, #524288
	sub	sp, sp, #12
	mov	ip, r1
	beq	.L64
	bls	.L71
	cmp	r2, #2097152
	beq	.L66
	cmp	r2, #4194304
	beq	.L67
	cmp	r2, #1048576
	beq	.L65
.L61:
	mov	r0, #0
.L69:
	add	sp, sp, #12
	ldr	lr, [sp], #4
	bx	lr
.L71:
	cmp	r2, #131072
	beq	.L62
	cmp	r2, #262144
	bne	.L61
	mov	r1, #65536
	mov	r3, r0
	sub	r1, r1, #1
	mov	r2, #16
	mov	r0, #32
	str	ip, [sp, #0]
	bl	hal_onmapdsc_allcblks
	b	.L69
.L67:
	mov	r1, #1
	mov	r3, r0
	mov	r2, r1
	mov	r0, #96
	str	ip, [sp, #0]
	bl	hal_onmapdsc_allcblks
	b	.L69
.L65:
	mov	r3, r0
	mov	r1, #15
	mov	r2, #4
	mov	r0, #64
	str	ip, [sp, #0]
	bl	hal_onmapdsc_allcblks
	b	.L69
.L66:
	mov	r3, r0
	mov	r1, #3
	mov	r2, #2
	mov	r0, #80
	str	ip, [sp, #0]
	bl	hal_onmapdsc_allcblks
	b	.L69
.L62:
	mov	r3, r0
	mvn	r1, #0
	mov	r2, #32
	mov	r0, #16
	str	ip, [sp, #0]
	bl	hal_onmapdsc_allcblks
	b	.L69
.L64:
	mov	r3, r0
	mov	r1, #255
	mov	r2, #8
	mov	r0, #48
	str	ip, [sp, #0]
	bl	hal_onmapdsc_allcblks
	b	.L69
	.size	hal_onalcfrel_allocblks, .-hal_onalcfrel_allocblks
	.align	2
	.global	hal_free_findmapdsc
	.type	hal_free_findmapdsc, %function
hal_free_findmapdsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #28]
	add	r2, r1, #24
	cmp	r2, r3
	str	r4, [sp, #-4]!
	beq	.L73
.L82:
	ldr	ip, [r3, #16]
	cmp	ip, r0
	mov	ip, r3
	bls	.L74
	ldr	r4, [r3, #12]
	cmp	r0, r4
	bcs	.L75
.L74:
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L82
.L73:
	ldr	r3, [r1, #12]
	add	r1, r1, #8
	cmp	r1, r3
	beq	.L77
.L81:
	ldr	r2, [r3, #16]
	cmp	r0, r2
	mov	ip, r3
	bcs	.L78
	ldr	r2, [r3, #12]
	cmp	r0, r2
	bcs	.L75
.L78:
	ldr	r3, [r3, #4]
	cmp	r1, r3
	bne	.L81
.L77:
	mov	ip, #0
.L75:
	mov	r0, ip
	ldmfd	sp!, {r4}
	bx	lr
	.size	hal_free_findmapdsc, .-hal_free_findmapdsc
	.global	__aeabi_uidiv
	.align	2
	.global	hal_onmapdsc_freeblks
	.type	hal_onmapdsc_freeblks, %function
hal_onmapdsc_freeblks:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r5, r1
	mov	r1, r3
	mov	r4, r3
	mov	sl, r2
	mov	r7, r0
	ldr	r8, [sp, #32]
	bl	hal_free_findmapdsc
	subs	r6, r0, #0
	beq	.L86
	ldr	r0, [r6, #12]
	ldr	r1, [r4, #4]
	rsb	r0, r0, r7
	bl	__aeabi_uidiv
	cmp	r0, #31
	bhi	.L86
	ldr	r3, [r6, #20]
	mov	r2, r3, lsr r0
	tst	r2, #1
	beq	.L86
	mov	r2, #1
	bic	r0, r3, r2, asl r0
	tst	r0, sl
	str	r0, [r6, #20]
	movne	r0, r2
	bne	.L88
	ldmia	r6, {r0, r1}	@ phole ldm
	ldr	ip, [r6, #24]
	str	r1, [r0, #4]
	str	r6, [r6, #4]
	bic	ip, ip, #240
	ldr	r3, [r8, #20]
	orr	r5, r5, ip
	add	ip, r8, #16
	str	r0, [r1, #0]
	str	r3, [r6, #4]
	str	r6, [r3, #0]
	str	r6, [r8, #20]
	str	r5, [r6, #24]
	mov	r0, r2
	str	ip, [r6, #0]
	b	.L88
.L86:
	mov	r0, #0
.L88:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
	.size	hal_onmapdsc_freeblks, .-hal_onmapdsc_freeblks
	.align	2
	.global	hal_onalcfrel_freeblks
	.type	hal_onalcfrel_freeblks, %function
hal_onalcfrel_freeblks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	cmp	r3, #524288
	sub	sp, sp, #12
	mov	ip, r2
	beq	.L94
	bls	.L101
	cmp	r3, #2097152
	beq	.L96
	cmp	r3, #4194304
	beq	.L97
	cmp	r3, #1048576
	beq	.L95
.L91:
	mov	r0, #0
.L99:
	add	sp, sp, #12
	ldr	lr, [sp], #4
	bx	lr
.L101:
	cmp	r3, #131072
	beq	.L92
	cmp	r3, #262144
	bne	.L91
	mov	r2, #65536
	mov	r3, r1
	sub	r2, r2, #1
	mov	r1, #96
	str	ip, [sp, #0]
	bl	hal_onmapdsc_freeblks
	b	.L99
.L97:
	mov	r3, r1
	mov	r2, #1
	mov	r1, #96
	str	ip, [sp, #0]
	bl	hal_onmapdsc_freeblks
	b	.L99
.L95:
	mov	r3, r1
	mov	r2, #15
	mov	r1, #96
	str	ip, [sp, #0]
	bl	hal_onmapdsc_freeblks
	b	.L99
.L96:
	mov	r3, r1
	mov	r2, #3
	mov	r1, #96
	str	ip, [sp, #0]
	bl	hal_onmapdsc_freeblks
	b	.L99
.L92:
	mov	r3, r1
	mvn	r2, #0
	mov	r1, #96
	str	ip, [sp, #0]
	bl	hal_onmapdsc_freeblks
	b	.L99
.L94:
	mov	r3, r1
	mov	r2, #255
	mov	r1, #96
	str	ip, [sp, #0]
	bl	hal_onmapdsc_freeblks
	b	.L99
	.size	hal_onalcfrel_freeblks, .-hal_onalcfrel_freeblks
	.align	2
	.global	onmmapdsc_inkrlram
	.type	onmmapdsc_inkrlram, %function
onmmapdsc_inkrlram:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #16]
	ldr	r3, [r0, #12]
	rsb	r2, r3, r2
	cmp	r2, #131072
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r5, r1
	ldr	r4, [r0, #20]
	bhi	.L103
	ldr	r2, [r4, #12]
	cmp	r3, r2
	bcs	.L104
.L103:
	ldr	r0, .L106
	bl	hal_sysdie
.L104:
	mov	r3, #1
	str	r3, [r4, #20]
	add	r0, r5, #20
	mov	r3, #24
	mov	r1, r4
	mov	r2, #2
	str	r3, [r4, #24]
	ldmfd	sp!, {r4, r5, r6, lr}
	b	mapdsc_addto_memlst
.L107:
	.align	2
.L106:
	.word	.LC0
	.size	onmmapdsc_inkrlram, .-onmmapdsc_inkrlram
	.align	2
	.global	print_mmapdsc
	.type	print_mmapdsc, %function
print_mmapdsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r6, [r0, #24]
	cmp	r6, #0
	ldr	r5, [r0, #20]
	beq	.L111
	mov	r4, #0
.L110:
	mov	r1, r4
	add	r2, r5, #12
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r4, r4, #1
	ldr	r0, .L113
	bl	printfk
	cmp	r6, r4
	add	r5, r5, #28
	bhi	.L110
.L111:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L114:
	.align	2
.L113:
	.word	.LC1
	.size	print_mmapdsc, .-print_mmapdsc
	.align	2
	.global	hal_memfreeblks_core
	.type	hal_memfreeblks_core, %function
hal_memfreeblks_core:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #8
	add	r4, sp, #4
	mov	r6, r0
	mov	r5, r1
	ldr	r0, .L125
	mov	r1, r4
	bl	hal_spinlock_saveflg_cli
	ldr	r3, .L125+4
	mov	r1, #0
.L118:
	ldr	r2, [r3, #24]
	cmp	r2, r5
	beq	.L124
	add	r1, r1, #1
	cmp	r1, #6
	add	r3, r3, #32
	bne	.L118
.L119:
	mov	r5, #0
.L120:
	mov	r1, r4
	ldr	r0, .L125
	bl	hal_spinunlock_restflg_sti
	mov	r0, r5
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L124:
.L117:
	ldr	r2, .L125+8
	adds	r1, r2, r1, asl #5
	beq	.L119
	mov	r3, r5
	mov	r0, r6
	add	r2, r2, #160
	bl	hal_onalcfrel_freeblks
	mov	r5, r0
	b	.L120
.L126:
	.align	2
.L125:
	.word	osphymem+8
	.word	osphymem
	.word	osphymem+20
	.size	hal_memfreeblks_core, .-hal_memfreeblks_core
	.align	2
	.global	hal_memfreeblks
	.type	hal_memfreeblks, %function
hal_memfreeblks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsbs	r2, r0, #1
	movcc	r2, #0
	cmp	r1, #131072
	orrcc	r2, r2, #1
	cmp	r2, #0
	bne	.L128
	cmp	r1, #4194304
	bls	.L130
.L128:
	mov	r0, #0
	bx	lr
.L130:
	b	hal_memfreeblks_core
	.size	hal_memfreeblks, .-hal_memfreeblks
	.align	2
	.global	hal_memallocblks_core
	.type	hal_memallocblks_core, %function
hal_memallocblks_core:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #20
	add	r4, sp, #8
	mov	r3, #0
	mov	r5, r0
	mov	r1, r4
	ldr	r0, .L136
	str	r3, [sp, #4]
	str	r3, [sp, #12]
	bl	hal_spinlock_saveflg_cli
	mov	r2, r5
	add	r0, sp, #4
	add	r1, sp, #12
	bl	hal_onblksz_findalcfrelst
	cmp	r0, #0
	beq	.L132
	ldr	r1, [sp, #4]
	cmp	r1, #0
	beq	.L132
	ldr	r2, [sp, #12]
	cmp	r2, #0
	beq	.L132
	ldr	r3, [r0, #4]
	cmp	r2, r3
	beq	.L133
	cmp	r3, #4194304
	beq	.L133
.L132:
	mov	r5, #0
.L134:
	mov	r1, r4
	ldr	r0, .L136
	bl	hal_spinunlock_restflg_sti
	mov	r0, r5
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L133:
	bl	hal_onalcfrel_allocblks
	mov	r5, r0
	b	.L134
.L137:
	.align	2
.L136:
	.word	osphymem+8
	.size	hal_memallocblks_core, .-hal_memallocblks_core
	.align	2
	.global	hal_memallocblks
	.type	hal_memallocblks, %function
hal_memallocblks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #131072
	cmp	r3, #4063232
	bls	.L139
	mov	r0, #0
	bx	lr
.L139:
	b	hal_memallocblks_core
	.size	hal_memallocblks, .-hal_memallocblks
	.align	2
	.global	test_blkmm
	.type	test_blkmm, %function
test_blkmm:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r0, #131072
	sub	sp, sp, #56
	bl	hal_memallocblks
	subs	r9, r0, #0
	beq	.L157
.L143:
	mov	r0, r9
	mov	r1, #131072
	bl	hal_memfreeblks
	subs	r8, r0, #0
	movne	r8, #0
	movne	r7, sp
	beq	.L158
.L145:
	mov	sl, #131072
.L153:
	mov	r4, sl, asl r8
	mov	r5, #0
	b	.L147
.L146:
	ldr	r0, .L163
	mov	r1, r4
	mov	r2, r6
	bl	printfk
	str	r6, [r7, r5]
	add	r5, r5, #4
	cmp	r5, #56
	beq	.L159
.L147:
	mov	r0, r4
	bl	hal_memallocblks
	subs	r6, r0, #0
	bne	.L146
	ldr	r0, .L163+4
	bl	hal_sysdie
	ldr	r0, .L163
	mov	r1, r4
	mov	r2, r6
	bl	printfk
	str	r6, [r7, r5]
	add	r5, r5, #4
	cmp	r5, #56
	bne	.L147
.L159:
	mov	r5, #0
	b	.L149
.L148:
	mov	r2, r6
	ldr	r0, .L163+8
	mov	r1, r4
	bl	printfk
	cmp	r5, #56
	beq	.L160
.L149:
	ldr	r6, [r7, r5]
	mov	r1, r4
	mov	r0, r6
	bl	hal_memfreeblks
	cmp	r0, #0
	add	r5, r5, #4
	bne	.L148
	ldr	r0, .L163+12
	bl	hal_sysdie
	mov	r2, r6
	ldr	r0, .L163+8
	mov	r1, r4
	bl	printfk
	cmp	r5, #56
	bne	.L149
.L160:
	add	r8, r8, #1
	cmp	r8, #6
	bne	.L153
	mov	r0, #131072
	bl	hal_memallocblks
	subs	r4, r0, #0
	beq	.L161
	cmp	r9, r4
	beq	.L162
.L152:
	add	sp, sp, #56
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L158:
	ldr	r0, .L163+16
	bl	hal_sysdie
	mov	r7, sp
	b	.L145
.L157:
	ldr	r0, .L163+20
	bl	hal_sysdie
	b	.L143
.L161:
	ldr	r0, .L163+24
	bl	hal_sysdie
	cmp	r9, r4
	bne	.L152
.L162:
	ldr	r0, .L163+28
	bl	printfk
	b	.L152
.L164:
	.align	2
.L163:
	.word	.LC5
	.word	.LC4
	.word	.LC7
	.word	.LC6
	.word	.LC3
	.word	.LC2
	.word	.LC8
	.word	.LC9
	.size	test_blkmm, .-test_blkmm
	.align	2
	.global	testblkalloc
	.type	testblkalloc, %function
testblkalloc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r5, #0
	mov	r6, #131072
	b	.L168
.L166:
	mov	r2, r7
	mov	r1, r4
	ldr	r0, .L173
	bl	printfk
	mov	r0, r4
	bl	hal_memallocblks
	subs	r7, r0, #0
	beq	.L171
.L167:
	mov	r1, r4
	mov	r2, r7
	ldr	r0, .L173
	bl	printfk
	cmp	r5, #6
	beq	.L172
.L168:
	mov	r4, r6, asl r5
	mov	r0, r4
	bl	hal_memallocblks
	subs	r7, r0, #0
	add	r5, r5, #1
	bne	.L166
	ldr	r0, .L173+4
	bl	hal_sysdie
	mov	r2, r7
	mov	r1, r4
	ldr	r0, .L173
	bl	printfk
	mov	r0, r4
	bl	hal_memallocblks
	subs	r7, r0, #0
	bne	.L167
.L171:
	ldr	r0, .L173+4
	bl	hal_sysdie
	mov	r1, r4
	mov	r2, r7
	ldr	r0, .L173
	bl	printfk
	cmp	r5, #6
	bne	.L168
.L172:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L174:
	.align	2
.L173:
	.word	.LC5
	.word	.LC10
	.size	testblkalloc, .-testblkalloc
	.align	2
	.global	alcfrelst_t_init
	.type	alcfrelst_t_init, %function
alcfrelst_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	bl	hal_spinlock_init
	add	r1, r4, #8
	add	r2, r4, #16
	add	r3, r4, #24
	str	r3, [r4, #28]
	str	r5, [r4, #4]
	str	r1, [r4, #12]
	str	r2, [r4, #20]
	str	r1, [r4, #8]
	str	r2, [r4, #16]
	str	r3, [r4, #24]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	alcfrelst_t_init, .-alcfrelst_t_init
	.align	2
	.global	phymem_t_init
	.type	phymem_t_init, %function
phymem_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	str	r0, [r4, #0]
	str	r0, [r4, #4]
	add	r0, r0, #8
	bl	hal_spinlock_init
	add	r0, r4, #20
	mov	r1, #131072
	bl	alcfrelst_t_init
	add	r0, r4, #52
	mov	r1, #262144
	bl	alcfrelst_t_init
	add	r0, r4, #84
	mov	r1, #524288
	bl	alcfrelst_t_init
	add	r0, r4, #116
	mov	r1, #1048576
	bl	alcfrelst_t_init
	add	r0, r4, #148
	mov	r1, #2097152
	bl	alcfrelst_t_init
	add	r0, r4, #180
	mov	r1, #4194304
	ldmfd	sp!, {r4, lr}
	b	alcfrelst_t_init
	.size	phymem_t_init, .-phymem_t_init
	.align	2
	.global	init_phymem
	.type	init_phymem, %function
init_phymem:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r4, .L181
	mov	r0, r4
	bl	phymem_t_init
	ldr	r0, .L181+4
	mov	r1, r4
	ldmfd	sp!, {r4, lr}
	b	pmmlist_init
.L182:
	.align	2
.L181:
	.word	osphymem
	.word	osmach
	.size	init_phymem, .-init_phymem
	.align	2
	.global	mmapdsc_t_init
	.type	mmapdsc_t_init, %function
mmapdsc_t_init:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	str	r0, [r4, #0]
	str	r0, [r4, #4]
	add	r0, r0, #8
	mov	r7, r3
	mov	r5, r1
	mov	r6, r2
	bl	hal_spinlock_init
	ldr	r3, [sp, #24]
	str	r5, [r4, #12]
	str	r3, [r4, #24]
	str	r6, [r4, #16]
	str	r7, [r4, #20]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	mmapdsc_t_init, .-mmapdsc_t_init
	.align	2
	.global	init_core_mmapdsc
	.type	init_core_mmapdsc, %function
init_core_mmapdsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	cmp	r1, r0
	mov	ip, r0
	sub	sp, sp, #12
	mov	r6, r1
	mov	r8, r2
	movls	r0, r3
	bls	.L189
	mov	r7, r3, asl #5
	add	r4, ip, #4194304
	sub	r7, r7, r3, asl #2
	cmp	r6, r4
	add	r7, r2, r7
	mov	r5, r3
	mov	sl, #104
	bls	.L187
.L191:
	mov	r1, ip
	mov	r0, r7
	sub	r2, r4, #1
	mov	r3, #0
	str	sl, [sp, #0]
	bl	mmapdsc_t_init
	mov	ip, r4
	add	r4, ip, #4194304
	cmp	r6, r4
	add	r5, r5, #1
	add	r7, r7, #28
	bhi	.L191
.L187:
	mov	r0, r5, asl #5
	sub	r0, r0, r5, asl #2
	add	r0, r8, r0
	mov	r1, ip
	mov	r2, r6
	mov	ip, #104
	mov	r3, #0
	str	ip, [sp, #0]
	bl	mmapdsc_t_init
	add	r0, r5, #1
.L189:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
	.size	init_core_mmapdsc, .-init_core_mmapdsc
	.align	2
	.global	init_mmapdsc
	.type	init_mmapdsc, %function
init_mmapdsc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r6, [r0, #28]
	cmp	r6, #0
	mov	r7, r0
	ldr	r4, [r0, #32]
	moveq	r3, r6
	beq	.L194
	mov	r5, #0
	mov	r3, r5
	b	.L196
.L195:
	cmp	r6, r5
	add	r4, r4, #16
	bls	.L199
.L196:
	ldr	r2, [r4, #0]
	cmp	r2, #2
	add	r5, r5, #1
	bne	.L195
	add	r0, r4, #8
	ldmia	r0, {r0, r1}	@ phole ldm
	ldr	r2, [r7, #20]
	bl	init_core_mmapdsc
	cmp	r6, r5
	mov	r3, r0
	add	r4, r4, #16
	bhi	.L196
.L199:
	mov	r6, r3, asl #5
	sub	r6, r6, r3, asl #2
.L194:
	ldr	r2, [r7, #20]
	add	r6, r2, r6
	str	r6, [r7, #16]
	str	r3, [r7, #24]
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	init_mmapdsc, .-init_mmapdsc
	.align	2
	.global	init_halmm
	.type	init_halmm, %function
init_halmm:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L203
	bl	cheksum_phyadrspce
	cmp	r0, #0
	ldreq	r0, .L203+4
	bleq	hal_sysdie
.L201:
	ldr	r0, .L203
	bl	init_mmapdsc
	bl	init_phymem
	ldr	r0, .L203
	ldr	r1, .L203+8
	ldmfd	sp!, {r4, lr}
	b	onmmapdsc_inkrlram
.L204:
	.align	2
.L203:
	.word	osmach
	.word	.LC11
	.word	osphymem
	.size	init_halmm, .-init_halmm
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"onmmapdsc_inkrlram err\000"
	.space	1
.LC1:
	.ascii	"mmapdsc[%x].map_phyadr:%x,map_phyadrend:%x\012\015\000"
	.space	3
.LC2:
	.ascii	"NOT MEMALLOCBLKold;return NULL\000"
	.space	1
.LC3:
	.ascii	"NOT MEMFREEBLKold;return FALSE\000"
	.space	1
.LC4:
	.ascii	"NOT MEMALLOCBLK;return NULL\000"
.LC5:
	.ascii	"allocblksz:%x return adrr:%x \012\015\000"
.LC6:
	.ascii	"NOT MEMFREEBLK;return FALSE\000"
.LC7:
	.ascii	"freeblksz:%x free adrr:%x \012\015\000"
	.space	3
.LC8:
	.ascii	"NOT MEMALLOCBLKend;return NULL\000"
	.space	1
.LC9:
	.ascii	"TEST BLKMM OK!!\012\015\000"
	.space	2
.LC10:
	.ascii	"NOT MEMBLK;return NULL\000"
	.space	1
.LC11:
	.ascii	"cheksum_phyadrspce ret FALSE\000"
	.section	.note.GNU-stack,"",%progbits
