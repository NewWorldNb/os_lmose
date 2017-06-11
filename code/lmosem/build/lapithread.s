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
	.file	"lapithread.c"
	.text
	.align	2
	.global	api_exel_thread
	.type	api_exel_thread, %function
api_exel_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r3, r0
	mov	r4, r1
	mov	ip, #3
#APP
@ 12 "../lib/lapithread.c" 1
	mov r0,ip 
	mov r1,r3 
	mov r2,r4 
	swi 0 
	mov r3,r0 
	
@ 0 "" 2
	mov	r0, r3
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	api_exel_thread, .-api_exel_thread
	.align	2
	.global	api_exit_thread
	.type	api_exit_thread, %function
api_exit_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r3, #4
#APP
@ 19 "../lib/lapithread.c" 1
	mov r0,r3 
	mov r1,r2 
	swi 0 
	mov r3,r0 
	
@ 0 "" 2
	ldr	lr, [sp], #4
	bx	lr
	.size	api_exit_thread, .-api_exit_thread
	.align	2
	.global	api_retn_threadhand
	.type	api_retn_threadhand, %function
api_retn_threadhand:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, r0
	mov	r3, #5
#APP
@ 27 "../lib/lapithread.c" 1
	mov r0,r3 
	mov r1,r2 
	swi 0 
	mov r3,r0 
	
@ 0 "" 2
	mov	r0, r3
	ldr	lr, [sp], #4
	bx	lr
	.size	api_retn_threadhand, .-api_retn_threadhand
	.align	2
	.global	api_retn_threadstats
	.type	api_retn_threadstats, %function
api_retn_threadstats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	ip, #6
	mov	r8, r0
	mov	r7, r1
	mov	r6, r2
	mov	r5, r3
#APP
@ 34 "../lib/lapithread.c" 1
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
	.size	api_retn_threadstats, .-api_retn_threadstats
	.align	2
	.global	api_set_threadstats
	.type	api_set_threadstats, %function
api_set_threadstats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	mov	ip, #7
	mov	r8, r0
	mov	r7, r1
	mov	r6, r2
	mov	r5, r3
#APP
@ 41 "../lib/lapithread.c" 1
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
	.size	api_set_threadstats, .-api_set_threadstats
	.section	.note.GNU-stack,"",%progbits
