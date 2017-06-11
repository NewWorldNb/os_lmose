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
	.file	"krlpagempol.c"
	.text
	.align	2
	.global	objs_delete_on_mplhead
	.type	objs_delete_on_mplhead, %function
objs_delete_on_mplhead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r0, #16]
	add	r3, r3, #60
	cmp	r3, r1
	bhi	.L2
	ldr	r3, [r0, #36]
	ldr	r2, [r0, #20]
	add	ip, r1, r3
	cmp	ip, r2
	bcs	.L2
	ldr	r2, [r1, r3]
	cmp	r2, #0
	bne	.L2
	ldr	r2, [r0, #24]
	str	r1, [r0, #24]
	str	r2, [r1, r3]
	ldr	r3, [r0, #48]
	sub	r3, r3, #1
	str	r3, [r0, #48]
	mov	r0, #1
	bx	lr
.L2:
	mov	r0, #0
	bx	lr
	.size	objs_delete_on_mplhead, .-objs_delete_on_mplhead
	.align	2
	.global	objs_new_on_mplhead
	.type	objs_new_on_mplhead, %function
objs_new_on_mplhead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #48]
	ldr	r2, [r0, #32]
	cmp	r1, r2
	mov	r3, r0
	movcs	r0, #0
	bxcs	lr
	ldr	r0, [r3, #24]
	cmp	r0, #0
	bxeq	lr
	ldr	r2, [r3, #36]
	ldr	r1, [r0, r2]
	str	r1, [r3, #24]
	mov	r1, #0
	str	r1, [r0, r2]
	ldr	r2, [r3, #48]
	add	r2, r2, #1
	str	r2, [r3, #48]
	bx	lr
	.size	objs_new_on_mplhead, .-objs_new_on_mplhead
	.align	2
	.global	page_delete_on_mplhead
	.type	page_delete_on_mplhead, %function
page_delete_on_mplhead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #48]
	cmp	r3, #0
	stmfd	sp!, {r4, r5, r6}
	beq	.L11
	ldr	r6, [r0, #52]
	cmp	r6, #0
	beq	.L11
	ldr	r5, [r0, #56]
	ldr	r2, [r5, #0]
	cmp	r2, r1
	addne	ip, r5, #8
	movne	r2, #0
	bne	.L14
	b	.L12
.L16:
	ldr	r4, [ip], #8
	cmp	r4, r1
	beq	.L12
.L14:
	add	r2, r2, #1
	cmp	r6, r2
	mov	r5, ip
	bhi	.L16
.L11:
	mov	r0, #0
.L17:
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
.L12:
	ldr	r2, [r5, #4]
	cmp	r2, #0
	bne	.L11
.L15:
	ldr	r2, [r0, #28]
	sub	r3, r3, #1
	str	r3, [r0, #48]
	str	r2, [r5, #4]
	str	r5, [r0, #28]
	mov	r0, #1
	b	.L17
	.size	page_delete_on_mplhead, .-page_delete_on_mplhead
	.align	2
	.global	page_new_on_mplhead
	.type	page_new_on_mplhead, %function
page_new_on_mplhead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #48]
	ldr	r3, [r0, #32]
	cmp	r2, r3
	bcs	.L23
	ldr	r3, [r0, #28]
	cmp	r3, #0
	beq	.L23
	add	r2, r2, #1
	str	r2, [r0, #48]
	ldr	r2, [r3, #4]
	str	r2, [r0, #28]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r0, [r3, #0]
	bx	lr
.L23:
	mov	r0, #0
	bx	lr
	.size	page_new_on_mplhead, .-page_new_on_mplhead
	.align	2
	.global	objsdel_mplhead_isok
	.type	objsdel_mplhead_isok, %function
objsdel_mplhead_isok:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	cmp	r3, #2
	beq	.L30
.L27:
	mov	r0, #0
	bx	lr
.L30:
	ldr	r3, [r0, #36]
	cmp	r3, r2
	bne	.L27
	ldr	r2, [r0, #48]
	cmp	r2, #0
	beq	.L27
	ldr	r2, [r0, #16]
	add	r2, r2, #60
	cmp	r2, r1
	bhi	.L27
	sub	r3, r3, #1
	ldr	r2, [r0, #20]
	add	r1, r3, r1
	cmp	r1, r2
	bxls	lr
	b	.L27
	.size	objsdel_mplhead_isok, .-objsdel_mplhead_isok
	.align	2
	.global	pagedel_mplhead_isok
	.type	pagedel_mplhead_isok, %function
pagedel_mplhead_isok:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #12]
	cmp	r3, #1
	beq	.L35
.L32:
	mov	r0, #0
	bx	lr
.L35:
	ldr	r3, [r0, #36]
	cmp	r3, r2
	bne	.L32
	ldr	r2, [r0, #48]
	cmp	r2, #0
	beq	.L32
	ldr	r2, [r0, #16]
	add	r2, r2, #4096
	cmp	r2, r1
	bhi	.L32
	sub	r3, r3, #1
	ldr	r2, [r0, #20]
	add	r1, r3, r1
	cmp	r1, r2
	bxls	lr
	b	.L32
	.size	pagedel_mplhead_isok, .-pagedel_mplhead_isok
	.align	2
	.global	objsnew_mplhead_isok
	.type	objsnew_mplhead_isok, %function
objsnew_mplhead_isok:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bne	.L40
.L37:
	mov	r0, #0
	bx	lr
.L40:
	ldr	r3, [r0, #12]
	cmp	r3, #2
	bne	.L37
	ldr	r3, [r0, #36]
	cmp	r3, r1
	bne	.L37
	ldr	r2, [r0, #48]
	ldr	r3, [r0, #32]
	cmp	r2, r3
	bxcc	lr
	b	.L37
	.size	objsnew_mplhead_isok, .-objsnew_mplhead_isok
	.align	2
	.global	pagenew_mplhead_isok
	.type	pagenew_mplhead_isok, %function
pagenew_mplhead_isok:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #28]
	cmp	r3, #0
	bne	.L45
.L42:
	mov	r0, #0
	bx	lr
.L45:
	ldr	r3, [r0, #12]
	cmp	r3, #1
	bne	.L42
	ldr	r3, [r0, #36]
	cmp	r3, r1
	bne	.L42
	ldr	r2, [r0, #48]
	ldr	r3, [r0, #32]
	cmp	r2, r3
	bxcc	lr
	b	.L42
	.size	pagenew_mplhead_isok, .-pagenew_mplhead_isok
	.align	2
	.global	kmemplob_retn_mplhead
	.type	kmemplob_retn_mplhead, %function
kmemplob_retn_mplhead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	cmp	r3, #0
	stmfd	sp!, {r4, r5}
	beq	.L47
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L47
	ldr	r2, [r3, #12]
	cmp	r2, #2
	beq	.L55
.L47:
	ldr	r2, [r0, #48]
	add	r4, r0, #44
	cmp	r2, r4
	beq	.L49
.L53:
	sub	r3, r2, #4
	ldr	ip, [r3, #24]
	cmp	ip, #0
	beq	.L50
	ldr	ip, [r3, #12]
	cmp	ip, #2
	beq	.L56
.L50:
	ldr	r2, [r2, #4]
	cmp	r2, r4
	bne	.L53
.L49:
	mov	r3, #0
.L48:
	mov	r0, r3
	ldmfd	sp!, {r4, r5}
	bx	lr
.L56:
	ldr	ip, [r3, #36]
	cmp	r1, ip
	bne	.L50
	ldr	r5, [r3, #48]
	ldr	ip, [r3, #32]
	cmp	r5, ip
	bcs	.L50
	str	r3, [r0, #56]
	b	.L48
.L55:
	ldr	r2, [r3, #36]
	cmp	r1, r2
	bne	.L47
	ldr	ip, [r3, #48]
	ldr	r2, [r3, #32]
	cmp	ip, r2
	bcc	.L48
	b	.L47
	.size	kmemplob_retn_mplhead, .-kmemplob_retn_mplhead
	.align	2
	.global	kmempldelob_retn_mplhead
	.type	kmempldelob_retn_mplhead, %function
kmempldelob_retn_mplhead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #56]
	cmp	r3, #0
	stmfd	sp!, {r4, r5}
	beq	.L58
	ldr	ip, [r3, #12]
	cmp	ip, #2
	beq	.L66
.L58:
	ldr	ip, [r0, #48]
	add	r4, r0, #44
	cmp	ip, r4
	beq	.L60
	sub	r3, r1, #1
	add	r5, r2, r3
	b	.L64
.L61:
	ldr	ip, [ip, #4]
	cmp	ip, r4
	beq	.L60
.L64:
	sub	r3, ip, #4
	ldr	r0, [r3, #12]
	cmp	r0, #2
	bne	.L61
	ldr	r0, [r3, #36]
	cmp	r2, r0
	bne	.L61
	ldr	r0, [r3, #48]
	cmp	r0, #0
	beq	.L61
	ldr	r0, [r3, #16]
	add	r0, r0, #60
	cmp	r1, r0
	bcc	.L61
	ldr	r0, [r3, #20]
	cmp	r5, r0
	bls	.L59
	b	.L61
.L60:
	mov	r3, #0
.L59:
	mov	r0, r3
	ldmfd	sp!, {r4, r5}
	bx	lr
.L66:
	ldr	ip, [r3, #36]
	cmp	r2, ip
	bne	.L58
	ldr	ip, [r3, #48]
	cmp	ip, #0
	beq	.L58
	ldr	ip, [r3, #16]
	add	ip, ip, #60
	cmp	r1, ip
	bcc	.L58
	sub	r4, r1, #1
	ldr	ip, [r3, #20]
	add	r4, r2, r4
	cmp	r4, ip
	bls	.L59
	b	.L58
	.size	kmempldelob_retn_mplhead, .-kmempldelob_retn_mplhead
	.align	2
	.global	kmempldelpg_retn_mplhead
	.type	kmempldelpg_retn_mplhead, %function
kmempldelpg_retn_mplhead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	cmp	r3, #0
	stmfd	sp!, {r4, r5}
	beq	.L68
	ldr	ip, [r3, #12]
	cmp	ip, #1
	beq	.L76
.L68:
	ldr	ip, [r0, #40]
	add	r4, r0, #36
	cmp	ip, r4
	beq	.L70
	sub	r3, r1, #1
	add	r5, r2, r3
	b	.L74
.L71:
	ldr	ip, [ip, #4]
	cmp	ip, r4
	beq	.L70
.L74:
	sub	r3, ip, #4
	ldr	r0, [r3, #12]
	cmp	r0, #1
	bne	.L71
	ldr	r0, [r3, #36]
	cmp	r2, r0
	bne	.L71
	ldr	r0, [r3, #48]
	cmp	r0, #0
	beq	.L71
	ldr	r0, [r3, #16]
	add	r0, r0, #4096
	cmp	r1, r0
	bcc	.L71
	ldr	r0, [r3, #20]
	cmp	r5, r0
	bls	.L69
	b	.L71
.L70:
	mov	r3, #0
.L69:
	mov	r0, r3
	ldmfd	sp!, {r4, r5}
	bx	lr
.L76:
	ldr	ip, [r3, #36]
	cmp	r2, ip
	bne	.L68
	ldr	ip, [r3, #48]
	cmp	ip, #0
	beq	.L68
	ldr	ip, [r3, #16]
	add	ip, ip, #4096
	cmp	r1, ip
	bcc	.L68
	sub	r4, r1, #1
	ldr	ip, [r3, #20]
	add	r4, r2, r4
	cmp	r4, ip
	bls	.L69
	b	.L68
	.size	kmempldelpg_retn_mplhead, .-kmempldelpg_retn_mplhead
	.align	2
	.global	kmemplpg_retn_mplhead
	.type	kmemplpg_retn_mplhead, %function
kmemplpg_retn_mplhead:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #52]
	cmp	r3, #0
	stmfd	sp!, {r4, r5}
	beq	.L78
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L78
	ldr	r2, [r3, #12]
	cmp	r2, #1
	beq	.L86
.L78:
	ldr	r2, [r0, #40]
	add	r4, r0, #36
	cmp	r2, r4
	bne	.L84
.L80:
	mov	r3, #0
.L79:
	mov	r0, r3
	ldmfd	sp!, {r4, r5}
	bx	lr
.L89:
	ldr	ip, [r3, #36]
	cmp	r1, ip
	beq	.L87
.L81:
	ldr	r2, [r2, #4]
	cmp	r2, r4
	beq	.L80
.L84:
	sub	r3, r2, #4
	ldr	ip, [r3, #28]
	cmp	ip, #0
	beq	.L81
	ldr	ip, [r3, #12]
	cmp	ip, #1
	bne	.L81
	b	.L89
.L86:
	ldr	r2, [r3, #36]
	cmp	r1, r2
	bne	.L78
	ldr	ip, [r3, #48]
	ldr	r2, [r3, #32]
	cmp	ip, r2
	bcc	.L79
	b	.L78
.L87:
	ldr	r5, [r3, #48]
	ldr	ip, [r3, #32]
	cmp	r5, ip
	bcs	.L81
	str	r3, [r0, #52]
	b	.L79
	.size	kmemplpg_retn_mplhead, .-kmemplpg_retn_mplhead
	.align	2
	.global	kmempool_page_new_callhalmm
	.type	kmempool_page_new_callhalmm, %function
kmempool_page_new_callhalmm:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #131072
	stmfd	sp!, {r4, lr}
	bls	.L99
	cmp	r0, #262144
	bls	.L100
	cmp	r0, #524288
	bls	.L101
	cmp	r0, #1048576
	bls	.L102
	cmp	r0, #2097152
	bls	.L103
	cmp	r0, #4194304
	movhi	r0, #0
	bls	.L104
.L92:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L99:
	mov	r0, #131072
	bl	hal_memallocblks
	b	.L92
.L101:
	mov	r0, #524288
	bl	hal_memallocblks
	b	.L92
.L104:
	mov	r0, #4194304
	bl	hal_memallocblks
	b	.L92
.L100:
	mov	r0, #262144
	bl	hal_memallocblks
	b	.L92
.L102:
	mov	r0, #1048576
	bl	hal_memallocblks
	b	.L92
.L103:
	mov	r0, #2097152
	bl	hal_memallocblks
	b	.L92
	.size	kmempool_page_new_callhalmm, .-kmempool_page_new_callhalmm
	.align	2
	.global	cmp_adrsz
	.type	cmp_adrsz, %function
cmp_adrsz:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	subs	r7, r1, #0
	mov	r4, r0
	movne	r6, #0
	beq	.L121
.L107:
	mov	r5, #0
	mov	r8, r6, asl #3
	b	.L109
.L108:
	add	r5, r5, #1
	cmp	r7, r5
	bls	.L129
.L109:
	cmp	r6, r5
	beq	.L108
	ldr	r3, [r4, r5, asl #3]
	ldr	r2, [r4, r8]
	cmp	r2, r3
	bne	.L108
	ldr	r0, .L132
	add	r5, r5, #1
	bl	hal_sysdie
	cmp	r7, r5
	bhi	.L109
.L129:
	add	r6, r6, #1
	cmp	r7, r6
	bhi	.L107
	mov	sl, #0
	mov	r8, sl
.L110:
	mov	r6, #0
	mov	r5, r6
	add	r9, r4, sl
	b	.L112
.L111:
	cmp	r7, r5
	add	r6, r6, #8
	bls	.L130
.L112:
	cmp	r8, r5
	add	r3, r4, r6
	add	r5, r5, #1
	beq	.L111
	ldr	r0, [r3, #4]
	ldr	r1, [r9, #4]
	ldr	r3, [r4, r6]
	ldr	r2, [r4, sl]
	add	r3, r0, r3
	add	r2, r1, r2
	cmp	r2, r3
	bne	.L111
	ldr	r0, .L132+4
	bl	hal_sysdie
	cmp	r7, r5
	add	r6, r6, #8
	bhi	.L112
.L130:
	add	r8, r8, #1
	cmp	r7, r8
	add	sl, sl, #8
	bhi	.L110
	mov	sl, #0
	mov	r8, sl
.L113:
	mov	r6, #0
	mov	r5, r6
	add	r9, r4, sl
	b	.L115
.L114:
	cmp	r7, r5
	add	r6, r6, #8
	bls	.L131
.L115:
	cmp	r8, r5
	add	r5, r5, #1
	beq	.L114
	ldr	r2, [r4, r6]
	ldr	r3, [r4, sl]
	cmp	r3, r2
	add	r1, r4, r6
	bcc	.L114
	ldr	r0, [r1, #4]
	ldr	r1, [r9, #4]
	add	r2, r2, r0
	add	r3, r3, r1
	cmp	r3, r2
	bhi	.L114
	ldr	r0, .L132+8
	bl	hal_sysdie
	cmp	r7, r5
	add	r6, r6, #8
	bhi	.L115
.L131:
	add	r8, r8, #1
	cmp	r7, r8
	add	sl, sl, #8
	bhi	.L113
	mov	fp, #0
	mov	r9, fp
.L120:
	mov	sl, r4
	ldr	r6, [sl, fp]!
	ldr	r2, [sl, #4]
	cmp	r2, #0
	and	r8, r6, #255
	beq	.L117
	mov	r5, #0
.L119:
	ldrb	r3, [r5, r6]	@ zero_extendqisi2
	cmp	r3, r8
	add	r5, r5, #1
	beq	.L118
	ldr	r0, .L132+12
	bl	hal_sysdie
	ldr	r2, [sl, #4]
.L118:
	cmp	r2, r5
	bhi	.L119
.L117:
	add	r9, r9, #1
	cmp	r7, r9
	add	fp, fp, #8
	bhi	.L120
.L121:
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L133:
	.align	2
.L132:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	cmp_adrsz, .-cmp_adrsz
	.align	2
	.global	del_page_mpool
	.type	del_page_mpool, %function
del_page_mpool:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r1, #48]
	cmp	r3, #0
	sub	sp, sp, #8
	mov	r4, r0
	bne	.L135
	ldr	r3, [r0, #28]
	ldr	ip, [r1, #4]
	ldr	r0, [r1, #8]
	add	r2, r1, #4
	cmp	r3, #0
	str	r0, [ip, #4]
	str	ip, [r0, #0]
	str	r2, [r1, #8]
	str	r2, [r1, #4]
	ldr	r5, [r1, #20]
	ldr	r6, [r1, #16]
	beq	.L139
.L136:
	ldr	r2, [r4, #52]
	sub	r3, r3, #1
	cmp	r2, r1
	str	r3, [r4, #28]
	add	r1, r5, #1
	moveq	r3, #0
	streq	r3, [r4, #52]
	mov	r0, r6
	rsb	r1, r6, r1
	bl	hal_memfreeblks
	cmp	r0, #0
	beq	.L140
.L135:
	mov	r0, #1
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L140:
	ldr	r0, .L141
	bl	hal_sysdie
	b	.L135
.L139:
	ldr	r0, .L141+4
	str	r1, [sp, #4]
	bl	hal_sysdie
	ldr	r3, [r4, #28]
	ldr	r1, [sp, #4]
	b	.L136
.L142:
	.align	2
.L141:
	.word	.LC5
	.word	.LC4
	.size	del_page_mpool, .-del_page_mpool
	.align	2
	.global	kmempool_pages_core_delete
	.type	kmempool_pages_core_delete, %function
kmempool_pages_core_delete:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #8
	add	r4, sp, #4
	mov	r6, r1
	mov	r5, r0
	mov	r1, r4
	ldr	r0, .L148
	bl	hal_spinlock_saveflg_cli
	mov	r2, r6
	ldr	r0, .L148+4
	mov	r1, r5
	bl	kmempldelpg_retn_mplhead
	subs	r6, r0, #0
	beq	.L144
	mov	r1, r5
	bl	page_delete_on_mplhead
	cmp	r0, #0
	bne	.L147
.L144:
	mov	r5, #0
.L145:
	mov	r1, r4
	ldr	r0, .L148
	bl	hal_spinunlock_restflg_sti
	mov	r0, r5
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L147:
	mov	r1, r6
	ldr	r0, .L148+4
	bl	del_page_mpool
	cmp	r0, #0
	movne	r5, #1
	bne	.L145
	b	.L144
.L149:
	.align	2
.L148:
	.word	oskmempool+20
	.word	oskmempool
	.size	kmempool_pages_core_delete, .-kmempool_pages_core_delete
	.align	2
	.global	kmempool_page_delete_callhalmm
	.type	kmempool_page_delete_callhalmm, %function
kmempool_page_delete_callhalmm:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #131072
	stmfd	sp!, {r4, lr}
	bls	.L159
	cmp	r1, #262144
	bls	.L160
	cmp	r1, #524288
	bls	.L161
	cmp	r1, #1048576
	bls	.L162
	cmp	r1, #2097152
	bls	.L163
	cmp	r1, #4194304
	movhi	r0, #0
	bls	.L164
.L152:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L159:
	mov	r1, #131072
	bl	hal_memfreeblks
	b	.L152
.L161:
	mov	r1, #524288
	bl	hal_memfreeblks
	b	.L152
.L164:
	mov	r1, #4194304
	bl	hal_memfreeblks
	b	.L152
.L160:
	mov	r1, #262144
	bl	hal_memfreeblks
	b	.L152
.L162:
	mov	r1, #1048576
	bl	hal_memfreeblks
	b	.L152
.L163:
	mov	r1, #2097152
	bl	hal_memfreeblks
	b	.L152
	.size	kmempool_page_delete_callhalmm, .-kmempool_page_delete_callhalmm
	.align	2
	.global	kmempool_pages_delete
	.type	kmempool_pages_delete, %function
kmempool_pages_delete:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r1, #4080
	add	r1, r1, #15
	bic	r1, r1, #4080
	bic	r1, r1, #15
	cmp	r1, #126976
	bhi	.L168
	b	kmempool_pages_core_delete
.L168:
	b	kmempool_page_delete_callhalmm
	.size	kmempool_pages_delete, .-kmempool_pages_delete
	.align	2
	.global	del_objs_mpool
	.type	del_objs_mpool, %function
del_objs_mpool:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	ldr	r3, [r1, #48]
	cmp	r3, #0
	sub	sp, sp, #8
	mov	r4, r0
	bne	.L170
	ldr	r3, [r0, #32]
	ldr	ip, [r1, #4]
	ldr	r0, [r1, #8]
	add	r2, r1, #4
	cmp	r3, #0
	str	r0, [ip, #4]
	str	ip, [r0, #0]
	str	r2, [r1, #8]
	str	r2, [r1, #4]
	ldr	r5, [r1, #20]
	ldr	r6, [r1, #16]
	beq	.L174
.L171:
	ldr	r2, [r4, #56]
	sub	r3, r3, #1
	cmp	r2, r1
	str	r3, [r4, #32]
	add	r1, r5, #1
	moveq	r3, #0
	streq	r3, [r4, #56]
	mov	r0, r6
	rsb	r1, r6, r1
	bl	kmempool_pages_delete
	cmp	r0, #0
	beq	.L175
.L170:
	mov	r0, #1
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L175:
	ldr	r0, .L176
	bl	hal_sysdie
	b	.L170
.L174:
	ldr	r0, .L176+4
	str	r1, [sp, #4]
	bl	hal_sysdie
	ldr	r3, [r4, #32]
	ldr	r1, [sp, #4]
	b	.L171
.L177:
	.align	2
.L176:
	.word	.LC7
	.word	.LC6
	.size	del_objs_mpool, .-del_objs_mpool
	.align	2
	.global	kmempool_objsz_core_delete
	.type	kmempool_objsz_core_delete, %function
kmempool_objsz_core_delete:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	sub	sp, sp, #8
	add	r4, sp, #4
	mov	r6, r1
	mov	r5, r0
	mov	r1, r4
	ldr	r0, .L183
	bl	hal_spinlock_saveflg_cli
	mov	r2, r6
	ldr	r0, .L183+4
	mov	r1, r5
	bl	kmempldelob_retn_mplhead
	subs	r6, r0, #0
	beq	.L179
	mov	r1, r5
	bl	objs_delete_on_mplhead
	cmp	r0, #0
	bne	.L182
.L179:
	mov	r5, #0
.L180:
	mov	r1, r4
	ldr	r0, .L183
	bl	hal_spinunlock_restflg_sti
	mov	r0, r5
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L182:
	mov	r1, r6
	ldr	r0, .L183+4
	bl	del_objs_mpool
	cmp	r0, #0
	movne	r5, #1
	bne	.L180
	b	.L179
.L184:
	.align	2
.L183:
	.word	oskmempool+24
	.word	oskmempool
	.size	kmempool_objsz_core_delete, .-kmempool_objsz_core_delete
	.align	2
	.global	kmempool_objsz_delete
	.type	kmempool_objsz_delete, %function
kmempool_objsz_delete:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r1, r1, #3
	bic	r1, r1, #3
	cmp	r1, #2048
	bls	.L186
	mov	r0, #0
	bx	lr
.L186:
	b	kmempool_objsz_core_delete
	.size	kmempool_objsz_delete, .-kmempool_objsz_delete
	.align	2
	.global	kmempool_onsize_delete
	.type	kmempool_onsize_delete, %function
kmempool_onsize_delete:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #2048
	bhi	.L192
	b	kmempool_objsz_delete
.L192:
	b	kmempool_pages_delete
	.size	kmempool_onsize_delete, .-kmempool_onsize_delete
	.align	2
	.global	kmempool_delete
	.type	kmempool_delete, %function
kmempool_delete:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	cmpne	r1, #0
	beq	.L194
	cmp	r1, #4194304
	bls	.L196
.L194:
	mov	r0, #0
	bx	lr
.L196:
	b	kmempool_onsize_delete
	.size	kmempool_delete, .-kmempool_delete
	.align	2
	.global	mplhead_t_init
	.type	mplhead_t_init, %function
mplhead_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	hal_spinlock_init
	mov	r3, #0
	add	r2, r4, #4
	add	r1, r4, #60
	str	r1, [r4, #56]
	str	r2, [r4, #8]
	str	r3, [r4, #52]
	str	r2, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	str	r3, [r4, #32]
	str	r3, [r4, #36]
	str	r3, [r4, #40]
	str	r3, [r4, #44]
	str	r3, [r4, #48]
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	mplhead_t_init, .-mplhead_t_init
	.align	2
	.global	page_mpool_init
	.type	page_mpool_init, %function
page_mpool_init:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r4, r3, asl #20
	mov	r4, r4, lsr #20
	sub	sp, sp, #16
	cmp	r4, #0
	mov	r5, r0
	ldr	r6, [sp, #48]
	beq	.L208
.L200:
	mov	r1, #0
.L206:
	mov	r0, r1
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L208:
	mov	r0, #8128
	add	r0, r0, #62
	rsb	ip, r3, r6
	cmp	ip, r0
	bls	.L200
	mov	r0, r1
	add	r7, r3, #4096
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	bl	mplhead_t_init
	ldr	r2, [sp, #8]
	add	r0, r7, r2
	ldr	r1, [sp, #12]
	sub	ip, r0, #1
	ldr	r3, [sp, #4]
	cmp	r6, ip
	mov	ip, #1
	str	ip, [r1, #12]
	str	r3, [r1, #16]
	str	r6, [r1, #20]
	str	r2, [r1, #36]
	str	r2, [r1, #40]
	bcc	.L201
	ldr	sl, [r1, #56]
	sub	ip, r2, #1
	add	ip, ip, r0
	mov	r8, sl
	b	.L203
.L209:
	mov	r7, r0
	mov	r8, r3
	mov	r0, r9
.L203:
	mov	r3, r8
	add	ip, ip, r2
	str	r7, [r3], #8
	rsb	r7, r2, ip
	cmp	r6, r7
	str	r3, [r8, #4]
	add	r4, r4, #1
	add	r9, r0, r2
	bcs	.L209
	cmp	r4, #0
	movne	r3, #0
	strne	r3, [r8, #4]
	strne	sl, [r1, #28]
	beq	.L204
.L205:
	str	r4, [r1, #52]
	str	r4, [r1, #32]
	ldr	ip, [r5, #28]
	ldr	r3, [r5, #40]
	add	r2, r1, #4
	add	ip, ip, #1
	add	r0, r5, #36
	str	r3, [r1, #8]
	str	r2, [r3, #0]
	str	ip, [r5, #28]
	str	r2, [r5, #40]
	str	r0, [r1, #4]
	b	.L206
.L201:
	ldr	sl, [r1, #56]
.L204:
	mov	r4, #0
	str	r4, [sl, #0]
	str	r4, [sl, #4]
	b	.L205
	.size	page_mpool_init, .-page_mpool_init
	.align	2
	.global	new_page_mpool
	.type	new_page_mpool, %function
new_page_mpool:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	movs	r3, r1, lsr #12
	sub	sp, sp, #12
	mov	r4, r1
	mov	r5, r0
	beq	.L211
	cmp	r3, #2
	bls	.L218
	cmp	r3, #4
	bls	.L219
	cmp	r3, #8
	bls	.L220
	cmp	r3, #16
	bls	.L221
	cmp	r3, #31
	bls	.L222
.L211:
	mov	r4, #0
.L213:
	mov	r0, r4
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L221:
	mov	r0, #262144
	bl	hal_memallocblks
	cmp	r0, #0
	beq	.L211
	mov	r1, r0
	sub	ip, r0, #-67108863
	sub	ip, ip, #66846720
	mov	r2, r4
	mov	r0, r5
	mov	r3, r1
	str	ip, [sp, #0]
	bl	page_mpool_init
	subs	r4, r0, #0
	bne	.L213
	ldr	r0, .L223
	bl	hal_sysdie
	b	.L213
.L222:
	mov	r0, #131072
	bl	hal_memallocblks
	subs	r1, r0, #0
	beq	.L211
	add	ip, r1, #16777216
	sub	ip, ip, #16646144
	sub	ip, ip, #1
	mov	r2, r4
	mov	r0, r5
	mov	r3, r1
	str	ip, [sp, #0]
	bl	page_mpool_init
	subs	r4, r0, #0
	bne	.L213
	ldr	r0, .L223+4
	bl	hal_sysdie
	b	.L213
.L218:
	mov	r0, #131072
	bl	hal_memallocblks
	subs	r1, r0, #0
	beq	.L211
	add	ip, r1, #16777216
	sub	ip, ip, #16646144
	sub	ip, ip, #1
	mov	r2, r4
	mov	r0, r5
	mov	r3, r1
	str	ip, [sp, #0]
	bl	page_mpool_init
	subs	r4, r0, #0
	bne	.L213
	ldr	r0, .L223+8
	bl	hal_sysdie
	b	.L213
.L219:
	mov	r0, #262144
	bl	hal_memallocblks
	cmp	r0, #0
	beq	.L211
	mov	r1, r0
	sub	ip, r0, #-67108863
	sub	ip, ip, #66846720
	mov	r2, r4
	mov	r0, r5
	mov	r3, r1
	str	ip, [sp, #0]
	bl	page_mpool_init
	subs	r4, r0, #0
	bne	.L213
	ldr	r0, .L223+12
	bl	hal_sysdie
	b	.L213
.L220:
	mov	r0, #262144
	bl	hal_memallocblks
	cmp	r0, #0
	beq	.L211
	mov	r1, r0
	sub	ip, r0, #-67108863
	sub	ip, ip, #66846720
	mov	r2, r4
	mov	r0, r5
	mov	r3, r1
	str	ip, [sp, #0]
	bl	page_mpool_init
	subs	r4, r0, #0
	bne	.L213
	ldr	r0, .L223+16
	bl	hal_sysdie
	b	.L213
.L224:
	.align	2
.L223:
	.word	.LC11
	.word	.LC12
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.size	new_page_mpool, .-new_page_mpool
	.align	2
	.global	kmempool_pages_core_new
	.type	kmempool_pages_core_new, %function
kmempool_pages_core_new:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	add	r4, sp, #4
	mov	r5, r0
	mov	r1, r4
	ldr	r0, .L232
	bl	hal_spinlock_saveflg_cli
	ldr	r0, .L232+4
	mov	r1, r5
	bl	kmemplpg_retn_mplhead
	cmp	r0, #0
	beq	.L230
.L226:
	ldr	r3, [r0, #48]
	ldr	r2, [r0, #32]
	cmp	r3, r2
	bcc	.L231
.L227:
	mov	r5, #0
.L228:
	mov	r1, r4
	ldr	r0, .L232
	bl	hal_spinunlock_restflg_sti
	mov	r0, r5
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L231:
	ldr	r2, [r0, #28]
	cmp	r2, #0
	beq	.L227
	add	r3, r3, #1
	str	r3, [r0, #48]
	ldr	r3, [r2, #4]
	str	r3, [r0, #28]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r5, [r2, #0]
	b	.L228
.L230:
	mov	r1, r5
	ldr	r0, .L232+4
	bl	new_page_mpool
	cmp	r0, #0
	bne	.L226
	b	.L227
.L233:
	.align	2
.L232:
	.word	oskmempool+20
	.word	oskmempool
	.size	kmempool_pages_core_new, .-kmempool_pages_core_new
	.align	2
	.global	kmempool_pages_new
	.type	kmempool_pages_new, %function
kmempool_pages_new:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #4080
	add	r0, r0, #15
	bic	r0, r0, #4080
	bic	r0, r0, #15
	cmp	r0, #126976
	bhi	.L237
	b	kmempool_pages_core_new
.L237:
	b	kmempool_page_new_callhalmm
	.size	kmempool_pages_new, .-kmempool_pages_new
	.align	2
	.global	objs_mpool_init
	.type	objs_mpool_init, %function
objs_mpool_init:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	r4, r3, asl #20
	mov	r4, r4, lsr #20
	sub	sp, sp, #16
	cmp	r4, #0
	mov	r5, r0
	ldr	r6, [sp, #40]
	beq	.L250
.L239:
	mov	r1, #0
.L241:
	mov	r0, r1
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L250:
	mov	r0, #4080
	add	r0, r0, #14
	rsb	ip, r3, r6
	cmp	ip, r0
	bls	.L239
	add	r7, r3, #60
	ands	r8, r7, #3
	bne	.L251
	mov	r0, r1
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	bl	mplhead_t_init
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #12]
	add	r0, r2, #4
	ldr	r3, [sp, #4]
	mov	ip, #2
	ands	r4, r0, #3
	str	ip, [r1, #12]
	str	r3, [r1, #16]
	str	r6, [r1, #20]
	str	r7, [r1, #24]
	str	r2, [r1, #36]
	str	r2, [r1, #40]
	str	r0, [r1, #44]
	bne	.L242
	add	r3, r7, r0
	sub	ip, r3, #1
	cmp	r6, ip
	addcs	ip, r2, #3
	addcs	ip, ip, r3
	bcc	.L243
.L245:
	add	ip, ip, r0
	rsb	r8, r0, ip
	cmp	r6, r8
	str	r3, [r7, r2]
	mov	r8, r3
	mov	r7, r3
	add	r4, r4, #1
	add	r3, r3, r0
	bcs	.L245
	cmp	r4, #0
	beq	.L243
	mov	r3, #0
	str	r3, [r8, #-4]
	str	r4, [r1, #32]
	ldr	ip, [r5, #32]
	ldr	r3, [r5, #48]
	add	r2, r1, #4
	add	ip, ip, #1
	add	r0, r5, #44
	str	r3, [r1, #8]
	str	r2, [r3, #0]
	str	ip, [r5, #32]
	str	r2, [r5, #48]
	str	r0, [r1, #4]
	b	.L241
.L243:
	ldr	r0, .L252
	bl	hal_sysdie
	mov	r1, #0
	b	.L241
.L251:
	ldr	r0, .L252+4
	bl	hal_sysdie
	mov	r1, r4
	b	.L241
.L242:
	ldr	r0, .L252+8
	bl	hal_sysdie
	mov	r1, r8
	b	.L241
.L253:
	.align	2
.L252:
	.word	.LC15
	.word	.LC13
	.word	.LC14
	.size	objs_mpool_init, .-objs_mpool_init
	.align	2
	.global	new_objs_mpool
	.type	new_objs_mpool, %function
new_objs_mpool:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	r5, r0
	sub	sp, sp, #12
	mov	r0, #16384
	mov	r4, r1
	bl	kmempool_pages_new
	cmp	r0, #0
	moveq	r4, r0
	bne	.L258
.L256:
	mov	r0, r4
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L258:
	mov	r1, r0
	add	ip, r0, #16320
	add	ip, ip, #63
	mov	r2, r4
	mov	r0, r5
	mov	r3, r1
	str	ip, [sp, #0]
	bl	objs_mpool_init
	subs	r4, r0, #0
	bne	.L256
	ldr	r0, .L259
	bl	hal_sysdie
	b	.L256
.L260:
	.align	2
.L259:
	.word	.LC16
	.size	new_objs_mpool, .-new_objs_mpool
	.align	2
	.global	kmempool_objsz_core_new
	.type	kmempool_objsz_core_new, %function
kmempool_objsz_core_new:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	add	r4, sp, #4
	mov	r5, r0
	mov	r1, r4
	ldr	r0, .L268
	bl	hal_spinlock_saveflg_cli
	ldr	r0, .L268+4
	mov	r1, r5
	bl	kmemplob_retn_mplhead
	cmp	r0, #0
	beq	.L266
.L262:
	ldr	r2, [r0, #48]
	ldr	r3, [r0, #32]
	cmp	r2, r3
	bcc	.L267
.L263:
	mov	r5, #0
.L264:
	mov	r1, r4
	ldr	r0, .L268
	bl	hal_spinunlock_restflg_sti
	mov	r0, r5
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L267:
	ldr	r5, [r0, #24]
	cmp	r5, #0
	beq	.L264
	ldr	r3, [r0, #36]
	ldr	r2, [r5, r3]
	str	r2, [r0, #24]
	mov	r2, #0
	str	r2, [r5, r3]
	ldr	r3, [r0, #48]
	add	r3, r3, #1
	str	r3, [r0, #48]
	b	.L264
.L266:
	mov	r1, r5
	ldr	r0, .L268+4
	bl	new_objs_mpool
	cmp	r0, #0
	bne	.L262
	b	.L263
.L269:
	.align	2
.L268:
	.word	oskmempool+24
	.word	oskmempool
	.size	kmempool_objsz_core_new, .-kmempool_objsz_core_new
	.align	2
	.global	kmempool_objsz_new
	.type	kmempool_objsz_new, %function
kmempool_objsz_new:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r0, r0, #3
	bic	r0, r0, #3
	cmp	r0, #2048
	bls	.L271
	mov	r0, #0
	bx	lr
.L271:
	b	kmempool_objsz_core_new
	.size	kmempool_objsz_new, .-kmempool_objsz_new
	.align	2
	.global	kmempool_onsize_new
	.type	kmempool_onsize_new, %function
kmempool_onsize_new:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #2048
	bhi	.L277
	b	kmempool_objsz_new
.L277:
	b	kmempool_pages_new
	.size	kmempool_onsize_new, .-kmempool_onsize_new
	.align	2
	.global	kmempool_new
	.type	kmempool_new, %function
kmempool_new:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r3, r0, #1
	cmp	r3, #4194304
	bcc	.L279
	mov	r0, #0
	bx	lr
.L279:
	b	kmempool_onsize_new
	.size	kmempool_new, .-kmempool_new
	.align	2
	.global	kmempool_t_init
	.type	kmempool_t_init, %function
kmempool_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, #0
	bl	hal_spinlock_init
	add	r3, r4, #4
	str	r3, [r4, #8]
	str	r3, [r4, #4]
	add	r0, r4, #20
	str	r5, [r4, #12]
	str	r5, [r4, #16]
	bl	hal_spinlock_init
	add	r0, r4, #24
	bl	hal_spinlock_init
	add	r2, r4, #36
	add	r3, r4, #44
	str	r5, [r4, #56]
	str	r2, [r4, #40]
	str	r3, [r4, #48]
	str	r5, [r4, #28]
	str	r5, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #44]
	str	r5, [r4, #52]
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	kmempool_t_init, .-kmempool_t_init
	.align	2
	.global	init_krlpagempol
	.type	init_krlpagempol, %function
init_krlpagempol:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L286
	b	kmempool_t_init
.L287:
	.align	2
.L286:
	.word	oskmempool
	.size	init_krlpagempol, .-init_krlpagempol
	.align	2
	.global	testpagemgr
	.type	testpagemgr, %function
testpagemgr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 240
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #240
	mov	r6, #4096
	mov	r4, sp
.L289:
	mov	r5, #0
	mov	r7, r5
	b	.L291
.L290:
	mov	r1, r7
	ldr	r2, [r8, #4]
	add	r7, r7, #1
	ldr	r0, .L300
	bl	printfk
	cmp	r7, #30
	add	r5, r5, #8
	beq	.L298
.L291:
	add	r8, r4, r5
	mov	r0, r6
	str	r6, [r8, #4]
	bl	kmempool_new
	cmp	r0, #0
	mov	r3, r0
	str	r0, [r4, r5]
	bne	.L290
	ldr	r0, .L300+4
	bl	hal_sysdie
	ldr	r3, [r4, r5]
	mov	r1, r7
	ldr	r2, [r8, #4]
	add	r7, r7, #1
	ldr	r0, .L300
	bl	printfk
	cmp	r7, #30
	add	r5, r5, #8
	bne	.L291
.L298:
	mov	r1, r7
	mov	r0, sp
	mov	r5, #0
	bl	cmp_adrsz
	mov	r7, r5
	b	.L293
.L292:
	mov	r1, r7
	ldr	r3, [r4, r5]
	ldr	r2, [r8, #4]
	add	r7, r7, #1
	ldr	r0, .L300+8
	bl	printfk
	cmp	r7, #30
	add	r5, r5, #8
	beq	.L299
.L293:
	add	r8, r4, r5
	ldr	r1, [r8, #4]
	ldr	r0, [r4, r5]
	bl	kmempool_delete
	cmp	r0, #0
	bne	.L292
	ldr	r0, .L300+12
	bl	hal_sysdie
	b	.L292
.L299:
	add	r6, r6, #4096
	cmp	r6, #102400
	bne	.L289
	ldr	r3, .L300+16
	ldr	r0, .L300+20
	ldr	r1, [r3, #28]
	bl	printfk
	add	sp, sp, #240
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L301:
	.align	2
.L300:
	.word	.LC18
	.word	.LC17
	.word	.LC20
	.word	.LC19
	.word	oskmempool
	.word	.LC21
	.size	testpagemgr, .-testpagemgr
	.align	2
	.global	testobjsmgr
	.type	testobjsmgr, %function
testobjsmgr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 512
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #512
	mov	r8, #32
	mov	r5, sp
.L303:
	mov	r6, #0
	mov	r7, r6
.L307:
	add	r4, r5, r6
	mov	r0, r8
	str	r8, [r4, #4]
	bl	kmempool_new
	cmp	r0, #0
	mov	r3, r0
	str	r0, [r5, r6]
	beq	.L315
.L304:
	ldr	r0, .L317
	mov	r1, r7
	ldr	r2, [r4, #4]
	bl	printfk
	ldr	r3, [r4, #4]
	ldr	r1, [r5, r6]
	cmp	r3, #0
	and	r0, r1, #255
	beq	.L305
	mov	r2, #0
	mov	r3, r2
.L306:
	strb	r0, [r1, r2]
	ldr	r2, [r4, #4]
	add	r3, r3, #1
	cmp	r2, r3
	mov	r2, r3
	bhi	.L306
.L305:
	add	r7, r7, #1
	cmp	r7, #64
	add	r6, r6, #8
	bne	.L307
	mov	r1, r7
	mov	r0, r5
	mov	r4, #0
	bl	cmp_adrsz
	mov	r6, r4
	b	.L309
.L308:
	mov	r1, r6
	ldr	r3, [r5, r4]
	ldr	r2, [r7, #4]
	add	r6, r6, #1
	ldr	r0, .L317+4
	bl	printfk
	cmp	r6, #64
	add	r4, r4, #8
	beq	.L316
.L309:
	add	r7, r5, r4
	ldr	r1, [r7, #4]
	ldr	r0, [r5, r4]
	bl	kmempool_delete
	cmp	r0, #0
	bne	.L308
	ldr	r0, .L317+8
	bl	hal_sysdie
	b	.L308
.L315:
	ldr	r0, .L317+12
	bl	hal_sysdie
	ldr	r3, [r5, r6]
	b	.L304
.L316:
	add	r8, r8, #16
	cmp	r8, #2048
	bne	.L303
	ldr	r3, .L317+16
	ldr	r0, .L317+20
	ldr	r1, [r3, #32]
	bl	printfk
	add	sp, sp, #512
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L318:
	.align	2
.L317:
	.word	.LC23
	.word	.LC25
	.word	.LC24
	.word	.LC22
	.word	oskmempool
	.word	.LC26
	.size	testobjsmgr, .-testobjsmgr
	.align	2
	.global	testpgmpool
	.type	testpgmpool, %function
testpgmpool:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, #4096
	sub	sp, sp, #96
	mov	r0, r4
	str	r4, [sp, #20]
	bl	kmempool_new
	mov	r3, r0
	mov	r0, r4
	str	r3, [sp, #16]
	str	r3, [sp, #12]
	str	r4, [sp, #28]
	bl	kmempool_new
	mov	r5, #5376
	str	r0, [sp, #24]
	mov	r0, r5
	str	r5, [sp, #36]
	bl	kmempool_new
	str	r0, [sp, #32]
	mov	r0, r5
	str	r5, [sp, #44]
	bl	kmempool_new
	mov	r5, #12288
	str	r0, [sp, #40]
	mov	r0, r5
	str	r5, [sp, #52]
	bl	kmempool_new
	str	r0, [sp, #48]
	mov	r0, r5
	str	r5, [sp, #60]
	bl	kmempool_new
	mov	r5, #12800
	str	r0, [sp, #56]
	mov	r0, r5
	str	r5, [sp, #68]
	bl	kmempool_new
	str	r0, [sp, #64]
	mov	r0, r5
	str	r5, [sp, #76]
	bl	kmempool_new
	mov	r5, #28672
	str	r0, [sp, #72]
	mov	r0, r5
	str	r5, [sp, #84]
	bl	kmempool_new
	str	r0, [sp, #80]
	mov	r0, r5
	str	r5, [sp, #92]
	bl	kmempool_new
	mov	r5, #0
	mov	r2, r4
	str	r0, [sp, #88]
	mov	r4, r5
	add	r6, sp, #16
	ldr	r3, [sp, #12]
	b	.L321
.L327:
	add	r3, r6, r5
	ldr	r2, [r3, #4]
	ldr	r3, [r6, r5]
.L321:
	mov	r1, r4
	ldr	r0, .L328
	add	r4, r4, #1
	bl	printfk
	cmp	r4, #10
	add	r5, r5, #8
	bne	.L327
	ldr	r5, .L328+4
	ldr	r4, [r5, #40]
	add	r5, r5, #36
	cmp	r4, r5
	beq	.L324
.L325:
	sub	r1, r4, #4
	ldr	ip, [r1, #32]
	ldr	r2, [r1, #20]
	ldr	r3, [r1, #40]
	ldr	r0, .L328+8
	str	ip, [sp, #0]
	bl	printfk
	ldr	r4, [r4, #4]
	cmp	r4, r5
	bne	.L325
.L324:
	add	sp, sp, #96
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L329:
	.align	2
.L328:
	.word	.LC18
	.word	oskmempool
	.word	.LC27
	.size	testpgmpool, .-testpgmpool
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"cmp adr start err\000"
	.space	2
.LC1:
	.ascii	"cmp adr end err\000"
.LC2:
	.ascii	"cmp adr in err\000"
	.space	1
.LC3:
	.ascii	"cmp val err\000"
.LC4:
	.ascii	"del_page_mpool kmplockp->mp_pgmplnr<1\000"
	.space	2
.LC5:
	.ascii	"del_page_mpool hal_memfreeblks err\000"
	.space	1
.LC6:
	.ascii	"del_objs_mpool kmplockp->mp_obmplnr<1\000"
	.space	2
.LC7:
	.ascii	"del_objs_mpool page delete err\000"
	.space	1
.LC8:
	.ascii	"new pg mpool err 1\000"
	.space	1
.LC9:
	.ascii	"new pg mpool err 2\000"
	.space	1
.LC10:
	.ascii	"new pg mpool err 3\000"
	.space	1
.LC11:
	.ascii	"new pg mpool err 4\000"
	.space	1
.LC12:
	.ascii	"new pg mpool err 5\000"
	.space	1
.LC13:
	.ascii	"objs_mpool_init:sadr not align dword\000"
	.space	3
.LC14:
	.ascii	"objs_mpool_init:initp->mh_nxtpsz not align dword\000"
	.space	3
.LC15:
	.ascii	"objs_mpool_init:objnr err\000"
	.space	2
.LC16:
	.ascii	"new objs mpool err\000"
	.space	1
.LC17:
	.ascii	"testpagemgr kmempool_new err\000"
	.space	3
.LC18:
	.ascii	"adsz[%x] sz:%x adr:%x\012\015\000"
.LC19:
	.ascii	"testpagemgr kmempool_delete err\000"
.LC20:
	.ascii	"delete adsz[%x] sz:%x adr:%x\012\015\000"
	.space	1
.LC21:
	.ascii	"oskmempool.mp_pgmplnr:%x\012\015\000"
	.space	1
.LC22:
	.ascii	"testobjsmgr kmempool_new err\000"
	.space	3
.LC23:
	.ascii	"objs alloc adsz[%x] sz:%x adr:%x\012\015\000"
	.space	1
.LC24:
	.ascii	"testobjsmgr kmempool_delete err\000"
.LC25:
	.ascii	"objs delete adsz[%x] sz:%x adr:%x\012\015\000"
.LC26:
	.ascii	"oskmempool.mp_obmplnr:%x\012\015\000"
	.space	1
.LC27:
	.ascii	"mph_t_adr:%x mph_t.mh_end:%x mph_t.mh_objsz:%x mph_"
	.ascii	"t.mh_objnr:%x\012\015\000"
	.section	.note.GNU-stack,"",%progbits
