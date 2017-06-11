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
	.file	"krlsched.c"
	.text
	.align	2
	.global	thrdlst_t_init
	.type	thrdlst_t_init, %function
thrdlst_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	str	r3, [r0, #12]
	str	r0, [r0, #0]
	stmib	r0, {r0, r3}	@ phole stm
	bx	lr
	.size	thrdlst_t_init, .-thrdlst_t_init
	.align	2
	.global	krlretn_thread_id
	.type	krlretn_thread_id, %function
krlretn_thread_id:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	krlretn_thread_id, .-krlretn_thread_id
	.align	2
	.global	retnfrom_first_sched
	.type	retnfrom_first_sched, %function
retnfrom_first_sched:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, [r0, #92]
	ldr	r3, [r0, #80]
	ldr	r2, [r0, #84]
#APP
@ 316 "../kernel/krlsched.c" 1
	msr spsr,r2
	mov sp,r3 
	mov lr,r1 
	ldmia sp,{r0-lr}^ 
	add sp,sp,#60 
	movs pc,lr 
	
@ 0 "" 2
	bx	lr
	.size	retnfrom_first_sched, .-retnfrom_first_sched
	.align	2
	.global	save_to_new_context
	.type	save_to_new_context, %function
save_to_new_context:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	add	r5, sp, #4
	mov	r4, r0
	mov	r0, r5
	mov	r6, r1
	bl	hal_disableirq_savecpuflg
#APP
@ 282 "../kernel/krlsched.c" 1
	stmfd sp!,{r0-r12,lr} 
	
@ 0 "" 2
	ldr	ip, [r4, #84]
	ldr	r7, [r4, #88]
	add	r3, r6, #80
	add	r2, r6, #84
	add	r1, r6, #88
	add	r0, r4, #80
#APP
@ 285 "../kernel/krlsched.c" 1
	mrs lr,spsr
	str lr,[r2] 
	mrs lr,cpsr
	str lr,[r1] 
	msr spsr,ip 
	msr cpsr,r7 
	str sp,[r3] 
	ldr sp,[r0] 
	mov r0,r4 
	mov r1,r6 
	bl __to_new_context 
	
@ 0 "" 2
@ 305 "../kernel/krlsched.c" 1
	ldmfd sp!,{r0-r12,lr} 
	
@ 0 "" 2
	mov	r0, r5
	bl	hal_enableirq_restcpuflg
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
	.size	save_to_new_context, .-save_to_new_context
	.align	2
	.global	__to_new_context
	.type	__to_new_context, %function
__to_new_context:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	hal_retn_cpuid
	ldr	r3, [r4, #16]
	ldr	r2, .L13
	add	r0, r0, r0, asl #5
	add	r0, r2, r0, asl #5
	cmp	r3, #5
	str	r4, [r0, #28]
	bne	.L11
	mov	r3, #0
	str	r3, [r4, #16]
	ldr	r1, [r4, #92]
	ldr	r3, [r4, #80]
	ldr	r2, [r4, #84]
#APP
@ 316 "../kernel/krlsched.c" 1
	msr spsr,r2
	mov sp,r3 
	mov lr,r1 
	ldmia sp,{r0-lr}^ 
	add sp,sp,#60 
	movs pc,lr 
	
@ 0 "" 2
.L11:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	osschedcls+16
	.size	__to_new_context, .-__to_new_context
	.align	2
	.global	krlschdclass_add_thread
	.type	krlschdclass_add_thread, %function
krlschdclass_add_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	mov	r7, r0
	bl	hal_retn_cpuid
	ldr	r5, .L17
	add	r0, r0, r0, asl #5
	add	r4, r5, r0, asl #5
	add	r6, sp, #4
	mov	r0, r4
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r7, #36]
	add	r2, r4, r3, asl #4
	ldr	r1, [r2, #44]
	add	r1, r1, #1
	str	r1, [r2, #44]
	add	r3, r3, #2
	add	r3, r4, r3, asl #4
	ldr	ip, [r4, #16]
	ldr	r1, [r3, #4]
	add	r2, r7, #4
	add	ip, ip, #1
	sub	r5, r5, #16
	str	r2, [r1, #0]
	str	r1, [r7, #8]
	str	r3, [r7, #4]
	str	r2, [r3, #4]
	mov	r0, r4
	mov	r1, r6
	str	ip, [r4, #16]
	bl	hal_spinunlock_restflg_sti
	mov	r0, r5
	mov	r1, r6
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r5, #8]
	add	r3, r3, #1
	mov	r0, r5
	mov	r1, r6
	str	r3, [r5, #8]
	bl	hal_spinunlock_restflg_sti
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	osschedcls+16
	.size	krlschdclass_add_thread, .-krlschdclass_add_thread
	.align	2
	.global	krlsched_set_schedflgs
	.type	krlsched_set_schedflgs, %function
krlsched_set_schedflgs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	bl	hal_retn_cpuid
	ldr	r3, .L21
	add	r0, r0, r0, asl #5
	add	r4, r3, r0, asl #5
	add	r5, sp, #4
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinlock_saveflg_cli
	mov	r3, #1
	mov	r0, r4
	mov	r1, r5
	str	r3, [r4, #8]
	bl	hal_spinunlock_restflg_sti
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	osschedcls+16
	.size	krlsched_set_schedflgs, .-krlsched_set_schedflgs
	.align	2
	.global	krlsched_retn_idlethread
	.type	krlsched_retn_idlethread, %function
krlsched_retn_idlethread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	hal_retn_cpuid
	ldr	r3, .L27
	add	r0, r0, r0, asl #5
	add	r4, r3, r0, asl #5
	ldr	r0, [r4, #24]
	cmp	r0, #0
	beq	.L26
.L24:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L26:
	ldr	r0, .L27+4
	bl	hal_sysdie
	ldr	r0, [r4, #24]
	b	.L24
.L28:
	.align	2
.L27:
	.word	osschedcls+16
	.word	.LC0
	.size	krlsched_retn_idlethread, .-krlsched_retn_idlethread
	.align	2
	.global	krlsched_select_thread
	.type	krlsched_select_thread, %function
krlsched_select_thread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	bl	hal_retn_cpuid
	ldr	r3, .L40
	add	r0, r0, r0, asl #5
	add	r4, r3, r0, asl #5
	add	r5, sp, #4
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinlock_saveflg_cli
	mov	r2, r4
	mov	r3, #0
.L36:
	ldr	ip, [r2, #44]
	add	r0, r3, #2
	cmp	ip, #0
	add	r1, r4, r0, asl #4
	beq	.L30
	ldr	ip, [r2, #36]
	cmp	r1, ip
	beq	.L39
	mov	r2, r1
	mov	r1, ip
.L33:
	mov	r6, r1
	mov	r3, r3, asl #4
	ldr	r7, [r6], #-4
	add	ip, r4, r3
	ldr	ip, [ip, #40]
	ldr	lr, [r6, #8]
	cmp	ip, #0
	str	lr, [r7, #4]
	str	r7, [lr, #0]
	str	r1, [r6, #8]
	str	r1, [r6, #4]
	beq	.L35
	ldr	r1, [r4, r0, asl #4]
	add	lr, ip, #4
	str	lr, [r4, r0, asl #4]
	stmib	ip, {r1, r2}	@ phole stm
	str	lr, [r1, #4]
.L35:
	add	r3, r4, r3
	str	r6, [r3, #40]
	b	.L34
.L32:
	ldr	r6, [r2, #40]
	cmp	r6, #0
	bne	.L34
.L30:
	add	r3, r3, #1
	cmp	r3, #64
	add	r2, r2, #16
	bne	.L36
	mov	r3, #0
	str	r3, [r4, #20]
	bl	krlsched_retn_idlethread
	mov	r6, r0
.L34:
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
	mov	r0, r6
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	bx	lr
.L39:
	ldr	ip, [r2, #32]
	cmp	r1, ip
	beq	.L32
	mov	r2, r1
	b	.L33
.L41:
	.align	2
.L40:
	.word	osschedcls+16
	.size	krlsched_select_thread, .-krlsched_select_thread
	.align	2
	.global	krlsched_retn_currthread
	.type	krlsched_retn_currthread, %function
krlsched_retn_currthread:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	hal_retn_cpuid
	ldr	r3, .L46
	add	r0, r0, r0, asl #5
	add	r4, r3, r0, asl #5
	ldr	r0, [r4, #28]
	cmp	r0, #0
	beq	.L45
.L43:
	ldmfd	sp!, {r4, lr}
	bx	lr
.L45:
	ldr	r0, .L46+4
	bl	hal_sysdie
	ldr	r0, [r4, #28]
	b	.L43
.L47:
	.align	2
.L46:
	.word	osschedcls+16
	.word	.LC1
	.size	krlsched_retn_currthread, .-krlsched_retn_currthread
	.align	2
	.global	krlschedul
	.type	krlschedul, %function
krlschedul:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	bl	krlsched_retn_currthread
	mov	r4, r0
	bl	krlsched_select_thread
	mov	r1, r4
	ldmfd	sp!, {r4, lr}
	b	save_to_new_context
	.size	krlschedul, .-krlschedul
	.align	2
	.global	krlsched_chkneed_pmptsched
	.type	krlsched_chkneed_pmptsched, %function
krlsched_chkneed_pmptsched:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	sub	sp, sp, #12
	bl	hal_retn_cpuid
	ldr	r3, .L55
	add	r0, r0, r0, asl #5
	add	r4, r3, r0, asl #5
	add	r5, sp, #4
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinlock_saveflg_cli
	ldr	r3, [r4, #8]
	cmp	r3, #1
	beq	.L54
.L51:
	mov	r0, r4
	mov	r1, r5
	bl	hal_spinunlock_restflg_sti
.L53:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, lr}
	bx	lr
.L54:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L51
	mov	r0, r4
	mov	r1, r5
	str	r3, [r4, #8]
	bl	hal_spinunlock_restflg_sti
	bl	krlschedul
	b	.L53
.L56:
	.align	2
.L55:
	.word	osschedcls+16
	.size	krlsched_chkneed_pmptsched, .-krlsched_chkneed_pmptsched
	.align	2
	.global	krlsched_up
	.type	krlsched_up, %function
krlsched_up:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	mov	r4, r0
	bl	hal_retn_cpuid
	cmp	r4, #0
	mov	r6, r0
	beq	.L58
	mov	r0, r4
	bl	krlwlst_del_thread
	subs	r4, r0, #0
	beq	.L58
	ldr	r5, [r4, #36]
	cmp	r5, #63
	bls	.L61
.L58:
	ldr	r0, .L62
	bl	hal_sysdie
.L60:
	add	sp, sp, #8
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L61:
	ldr	r3, .L62+4
	add	r6, r6, r6, asl #5
	add	r6, r3, r6, asl #5
	add	r7, sp, #4
	mov	r0, r6
	mov	r1, r7
	bl	hal_spinlock_saveflg_cli
	mov	r0, r4
	mov	r1, sp
	bl	hal_spinlock_saveflg_cli
	mov	r3, #0
	str	r3, [r4, #16]
	mov	r1, sp
	mov	r0, r4
	bl	hal_spinunlock_restflg_sti
	add	r3, r6, r5, asl #4
	ldr	r2, [r3, #44]
	add	r5, r5, #2
	ldr	r1, [r6, r5, asl #4]
	add	r0, r4, #4
	add	ip, r6, r5, asl #4
	add	r2, r2, #1
	str	r0, [r6, r5, asl #4]
	stmib	r4, {r1, ip}	@ phole stm
	str	r0, [r1, #4]
	str	r2, [r3, #44]
	mov	r0, r6
	mov	r1, r7
	mov	r8, sp
	bl	hal_spinunlock_restflg_sti
	b	.L60
.L63:
	.align	2
.L62:
	.word	.LC2
	.word	osschedcls+16
	.size	krlsched_up, .-krlsched_up
	.align	2
	.global	krlsched_wait
	.type	krlsched_wait, %function
krlsched_wait:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #12
	mov	r5, r0
	bl	hal_retn_cpuid
	mov	r7, r0
	bl	krlsched_retn_currthread
	ldr	sl, [r0, #36]
	cmp	sl, #63
	movls	r6, #0
	movhi	r6, #1
	cmp	r5, #0
	orreq	r6, r6, #1
	cmp	r6, #0
	mov	r4, r0
	bne	.L65
	ldr	r3, .L70
	add	r7, r7, r7, asl #5
	add	r7, r3, r7, asl #5
	mov	sl, sl, asl #4
	add	r8, r7, sl
	ldr	r3, [r8, #44]
	cmp	r3, #0
	bne	.L69
.L65:
	ldr	r0, .L70+4
	bl	hal_sysdie
.L68:
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
.L69:
	add	r9, sp, #4
	mov	r0, r7
	mov	r1, r9
	bl	hal_spinlock_saveflg_cli
	mov	r0, r4
	mov	r1, sp
	bl	hal_spinlock_saveflg_cli
	ldmib	r4, {r1, r2}	@ phole ldm
	add	r3, r4, #4
	mov	r0, #4
	str	r2, [r1, #4]
	str	r1, [r2, #0]
	str	r0, [r4, #16]
	str	r3, [r4, #8]
	mov	r1, sp
	str	r3, [r4, #4]
	mov	r0, r4
	bl	hal_spinunlock_restflg_sti
	ldr	r3, [r8, #40]
	add	sl, r7, sl
	cmp	r4, r3
	ldr	r3, [sl, #44]
	sub	r3, r3, #1
	mov	r0, r7
	mov	r1, r9
	streq	r6, [r8, #40]
	str	r3, [sl, #44]
	bl	hal_spinunlock_restflg_sti
	mov	r0, r5
	mov	r1, r4
	mov	fp, sp
	bl	krlwlst_add_thread
	b	.L68
.L71:
	.align	2
.L70:
	.word	osschedcls+16
	.word	.LC3
	.size	krlsched_wait, .-krlsched_wait
	.align	2
	.global	schdata_t_init
	.type	schdata_t_init, %function
schdata_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	hal_spinlock_init
	bl	hal_retn_cpuid
	mov	r3, #0
	mov	r2, r3
	stmib	r4, {r0, r3}	@ phole stm
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	r3, [r4, #20]
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	mov	r0, r2
	mov	r3, r4
.L73:
	add	r1, r2, #2
	add	r2, r2, #1
	add	r1, r4, r1, asl #4
	cmp	r2, #64
	str	r1, [r3, #36]
	str	r1, [r3, #32]
	str	r0, [r3, #40]
	str	r0, [r3, #44]
	add	r3, r3, #16
	bne	.L73
	ldmfd	sp!, {r4, lr}
	bx	lr
	.size	schdata_t_init, .-schdata_t_init
	.align	2
	.global	schedclass_t_init
	.type	schedclass_t_init, %function
schedclass_t_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	bl	hal_spinlock_init
	mov	r3, #0
	mov	r2, #1
	add	r0, r4, #16
	str	r2, [r4, #4]
	str	r3, [r4, #12]
	str	r3, [r4, #8]
	ldmfd	sp!, {r4, lr}
	b	schdata_t_init
	.size	schedclass_t_init, .-schedclass_t_init
	.align	2
	.global	init_krlsched
	.type	init_krlsched, %function
init_krlsched:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L80
	b	schedclass_t_init
.L81:
	.align	2
.L80:
	.word	osschedcls
	.size	init_krlsched, .-init_krlsched
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"schdap->sda_cpuidle NULL\000"
	.space	3
.LC1:
	.ascii	"schdap->sda_currtd NULL\000"
.LC2:
	.ascii	"krlsched_up err\000"
.LC3:
	.ascii	"krlsched_wait err\000"
	.section	.note.GNU-stack,"",%progbits
