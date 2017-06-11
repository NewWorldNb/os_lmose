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
	.file	"krlobjnode.c"
	.text
	.align	2
	.global	krldel_objnode
	.type	krldel_objnode, %function
krldel_objnode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r1, #100
	bl	krldelete
	subs	r4, r0, #0
	movne	r0, #1
	bne	.L3
	ldr	r0, .L6
	bl	hal_sysdie
	mov	r0, r4
.L3:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	.LC0
	.size	krldel_objnode, .-krldel_objnode
	.align	2
	.global	objnode_t_init
	.type	objnode_t_init, %function
objnode_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	hal_spinlock_init
	add	r3, r4, #4
	str	r3, [r4, #8]
	str	r3, [r4, #4]
	add	r0, r4, #12
	bl	krlsem_t_init
	mov	r3, #0
	mvn	r2, #0
	str	r3, [r4, #96]
	str	r2, [r4, #48]
	str	r3, [r4, #40]
	str	r3, [r4, #44]
	str	r3, [r4, #52]
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	str	r3, [r4, #64]
	str	r3, [r4, #68]
	str	r3, [r4, #72]
	str	r3, [r4, #76]
	str	r3, [r4, #80]
	str	r3, [r4, #84]
	str	r3, [r4, #88]
	str	r3, [r4, #92]
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	objnode_t_init, .-objnode_t_init
	.align	2
	.global	krlnew_objnode
	.type	krlnew_objnode, %function
krlnew_objnode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r0, #100
	bl	krlnew
	subs	r4, r0, #0
	blne	objnode_t_init
.L11:
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	krlnew_objnode, .-krlnew_objnode
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"krldel_objnode err\000"
	.section	.note.GNU-stack,"",%progbits
