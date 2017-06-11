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
	.file	"libtime.c"
	.text
	.align	2
	.global	synsecalarm
	.type	synsecalarm, %function
synsecalarm:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	cmp	r0, #59
	sub	sp, sp, #20
	mov	r3, r0
	bls	.L6
.L2:
	mvn	r0, #0
.L3:
	add	sp, sp, #20
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L6:
	mov	r4, #0
	mov	ip, #22
	mov	r0, sp
	mov	r1, #49
	mov	r2, r4
	str	ip, [sp, #0]
	str	r3, [sp, #12]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	bl	open
	cmn	r0, #1
	mov	r5, r0
	beq	.L2
	add	r1, sp, #12
	mov	r2, #3
	mov	r3, r4
	bl	ioctrl
	mov	r0, r5
	bl	close
	mov	r0, r4
	b	.L3
	.size	synsecalarm, .-synsecalarm
	.align	2
	.global	settime
	.type	settime, %function
settime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	subs	r6, r0, #0
	sub	sp, sp, #16
	bne	.L11
.L8:
	mvn	r0, #0
.L9:
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L11:
	mov	r4, #0
	mov	r3, #22
	add	r0, sp, #4
	mov	r1, #49
	mov	r2, r4
	stmib	sp, {r3, r4}	@ phole stm
	str	r4, [sp, #12]
	bl	open
	cmn	r0, #1
	mov	r5, r0
	beq	.L8
	mov	r1, r6
	mov	r2, #1
	mov	r3, r4
	bl	ioctrl
	mov	r0, r5
	bl	close
	mov	r0, r4
	b	.L9
	.size	settime, .-settime
	.align	2
	.global	gettime
	.type	gettime, %function
gettime:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	subs	r6, r0, #0
	sub	sp, sp, #16
	bne	.L16
.L13:
	mvn	r0, #0
.L14:
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L16:
	mov	r4, #0
	mov	r3, #22
	add	r0, sp, #4
	mov	r1, #49
	mov	r2, r4
	stmib	sp, {r3, r4}	@ phole stm
	str	r4, [sp, #12]
	bl	open
	cmn	r0, #1
	mov	r5, r0
	beq	.L13
	mov	r1, r6
	mov	r2, #28
	mov	r3, r4
	bl	read
	mov	r0, r5
	bl	close
	mov	r0, r4
	b	.L14
	.size	gettime, .-gettime
	.align	2
	.global	time
	.type	time, %function
time:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	api_time
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	time, .-time
	.section	.note.GNU-stack,"",%progbits
