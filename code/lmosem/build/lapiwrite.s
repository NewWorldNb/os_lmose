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
	.file	"lapiwrite.c"
	.text
	.align	2
	.global	api_write
	.type	api_write, %function
api_write:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	ip, #11
	mov	r8, r0
	mov	r7, r1
	mov	r6, r2
	mov	r5, r3
#APP
@ 13 "../lib/lapiwrite.c" 1
	mov r0,ip 
	mov r1,r8 
	mov r2,r7 
	mov r3,r6 
	mov r4,r5 
	swi 0 
	mov ip,r0 
	
@ 0 "" 2
	mov	r0, ip
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
	.size	api_write, .-api_write
	.section	.note.GNU-stack,"",%progbits
