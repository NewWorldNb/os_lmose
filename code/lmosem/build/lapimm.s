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
	.file	"lapimm.c"
	.text
	.align	2
	.global	api_mallocblk
	.type	api_mallocblk, %function
api_mallocblk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, r0
	mov	r3, #1
#APP
@ 12 "../lib/lapimm.c" 1
	mov r0,r3 
	mov r1,r2 
	swi 0 
	mov r3,r0 
	
@ 0 "" 2
	mov	r0, r3
	ldr	lr, [sp], #4
	bx	lr
	.size	api_mallocblk, .-api_mallocblk
	.align	2
	.global	api_mfreeblk
	.type	api_mfreeblk, %function
api_mfreeblk:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r3, r0
	mov	r4, r1
	mov	ip, #2
#APP
@ 19 "../lib/lapimm.c" 1
	mov r0,ip 
	mov r1,r3 
	mov r2,r4 
	swi 0 
	mov r3,r0 
	
@ 0 "" 2
	mov	r0, r3
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	api_mfreeblk, .-api_mfreeblk
	.section	.note.GNU-stack,"",%progbits
