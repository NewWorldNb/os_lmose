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
	.file	"krlmm.c"
	.text
	.align	2
	.global	krldelete
	.type	krldelete, %function
krldelete:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	cmpne	r1, #0
	stmfd	sp!, {r4, lr}
	beq	.L2
	cmp	r1, #4194304
	bls	.L6
.L2:
	mov	r0, #0
.L3:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L6:
	bl	kmempool_delete
	b	.L3
	.size	krldelete, .-krldelete
	.align	2
	.global	krlnew
	.type	krlnew, %function
krlnew:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	r3, r0, #1
	cmp	r3, #4194304
	stmfd	sp!, {r4, lr}
	movcs	r0, #0
	blcc	kmempool_new
.L9:
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	krlnew, .-krlnew
	.align	2
	.global	init_krlmm
	.type	init_krlmm, %function
init_krlmm:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	init_krlpagempol
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	init_krlmm, .-init_krlmm
	.section	.note.GNU-stack,"",%progbits
