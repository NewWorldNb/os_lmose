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
	.file	"krlsvemm.c"
	.text
	.align	2
	.global	krlsve_core_mfreeblk
	.type	krlsve_core_mfreeblk, %function
krlsve_core_mfreeblk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	krldelete
	cmp	r0, #0
	ldreq	r0, .L5
	bleq	hal_sysdie
.L2:
	mov	r0, #0
	ldmfd	sp!, {r4, lr}
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LC0
	.size	krlsve_core_mfreeblk, .-krlsve_core_mfreeblk
	.align	2
	.global	krlsve_mfreeblk
	.type	krlsve_mfreeblk, %function
krlsve_mfreeblk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	cmpne	r1, #4194304
	bcc	.L8
	mvn	r0, #0
	bx	lr
.L8:
	b	krlsve_core_mfreeblk
	.size	krlsve_mfreeblk, .-krlsve_mfreeblk
	.align	2
	.global	krlsvetabl_mfreeblk
	.type	krlsvetabl_mfreeblk, %function
krlsvetabl_mfreeblk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #2
	mov	r3, r1
	beq	.L12
	mvn	r0, #0
	bx	lr
.L12:
	ldr	r1, [r1, #12]
	ldr	r0, [r3, #8]
	b	krlsve_mfreeblk
	.size	krlsvetabl_mfreeblk, .-krlsvetabl_mfreeblk
	.align	2
	.global	krlsve_core_mallocblk
	.type	krlsve_core_mallocblk, %function
krlsve_core_mallocblk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	krlnew
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	krlsve_core_mallocblk, .-krlsve_core_mallocblk
	.align	2
	.global	krlsve_mallocblk
	.type	krlsve_mallocblk, %function
krlsve_mallocblk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #4194304
	bcc	.L18
	mov	r0, #0
	bx	lr
.L18:
	b	krlsve_core_mallocblk
	.size	krlsve_mallocblk, .-krlsve_mallocblk
	.align	2
	.global	krlsvetabl_mallocblk
	.type	krlsvetabl_mallocblk, %function
krlsvetabl_mallocblk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #1
	beq	.L22
	mvn	r0, #0
	bx	lr
.L22:
	ldr	r0, [r1, #8]
	b	krlsve_mallocblk
	.size	krlsvetabl_mallocblk, .-krlsvetabl_mallocblk
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"krlsve_core_mfreeblk err\000"
	.section	.note.GNU-stack,"",%progbits
