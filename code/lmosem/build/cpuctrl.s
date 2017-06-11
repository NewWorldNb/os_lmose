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
	.file	"cpuctrl.c"
	.text
	.align	2
	.global	hal_disable_fiq
	.type	hal_disable_fiq, %function
hal_disable_fiq:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 12 "../hal/cpuctrl.c" 1
	mrs r0,cpsr 
	orr r0,r0,#64
	msr cpsr,r0 
	
@ 0 "" 2
	bx	lr
	.size	hal_disable_fiq, .-hal_disable_fiq
	.align	2
	.global	hal_enable_fiq
	.type	hal_enable_fiq, %function
hal_enable_fiq:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 25 "../hal/cpuctrl.c" 1
	mrs r0,cpsr 
	bic r0,r0,#64
	msr cpsr,r0 
	
@ 0 "" 2
	bx	lr
	.size	hal_enable_fiq, .-hal_enable_fiq
	.align	2
	.global	hal_disable_irq
	.type	hal_disable_irq, %function
hal_disable_irq:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 38 "../hal/cpuctrl.c" 1
	mrs r0,cpsr 
	orr r0,r0,#128
	msr cpsr,r0 
	
@ 0 "" 2
	bx	lr
	.size	hal_disable_irq, .-hal_disable_irq
	.align	2
	.global	hal_enable_irq
	.type	hal_enable_irq, %function
hal_enable_irq:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 50 "../hal/cpuctrl.c" 1
	mrs r0,cpsr 
	bic r0,r0,#128
	msr cpsr,r0 
	
@ 0 "" 2
	bx	lr
	.size	hal_enable_irq, .-hal_enable_irq
	.align	2
	.global	hal_disable_irqfiq
	.type	hal_disable_irqfiq, %function
hal_disable_irqfiq:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 63 "../hal/cpuctrl.c" 1
	mrs r0,cpsr 
	orr r0,r0,#192
	msr cpsr,r0 
	
@ 0 "" 2
	bx	lr
	.size	hal_disable_irqfiq, .-hal_disable_irqfiq
	.align	2
	.global	hal_enable_irqfiq
	.type	hal_enable_irqfiq, %function
hal_enable_irqfiq:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 75 "../hal/cpuctrl.c" 1
	mrs r0,cpsr 
	bic r0,r0,#192
	msr cpsr,r0 
	
@ 0 "" 2
	bx	lr
	.size	hal_enable_irqfiq, .-hal_enable_irqfiq
	.align	2
	.global	hal_disablefiq_savecpuflg
	.type	hal_disablefiq_savecpuflg, %function
hal_disablefiq_savecpuflg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r7, [sp, #-4]!
#APP
@ 90 "../hal/cpuctrl.c" 1
	mrs r7,cpsr 
	mov r3,r7 
	orr r7,r7,#64 
	msr cpsr,r7 
	
@ 0 "" 2
	str	r3, [r0, #0]
	ldmfd	sp!, {r7}
	bx	lr
	.size	hal_disablefiq_savecpuflg, .-hal_disablefiq_savecpuflg
	.align	2
	.global	hal_enablefiq_restcpuflg
	.type	hal_enablefiq_restcpuflg, %function
hal_enablefiq_restcpuflg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]
#APP
@ 105 "../hal/cpuctrl.c" 1
	msr cpsr,r3 
	
@ 0 "" 2
	bx	lr
	.size	hal_enablefiq_restcpuflg, .-hal_enablefiq_restcpuflg
	.align	2
	.global	hal_disableirq_savecpuflg
	.type	hal_disableirq_savecpuflg, %function
hal_disableirq_savecpuflg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r7, [sp, #-4]!
#APP
@ 118 "../hal/cpuctrl.c" 1
	mrs r7,cpsr 
	mov r3,r7 
	orr r7,r7,#128 
	msr cpsr,r7 
	
@ 0 "" 2
	str	r3, [r0, #0]
	ldmfd	sp!, {r7}
	bx	lr
	.size	hal_disableirq_savecpuflg, .-hal_disableirq_savecpuflg
	.align	2
	.global	hal_enableirq_restcpuflg
	.type	hal_enableirq_restcpuflg, %function
hal_enableirq_restcpuflg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]
#APP
@ 133 "../hal/cpuctrl.c" 1
	msr cpsr,r3 
	
@ 0 "" 2
	bx	lr
	.size	hal_enableirq_restcpuflg, .-hal_enableirq_restcpuflg
	.align	2
	.global	hal_disableirqfiq_savecpuflg
	.type	hal_disableirqfiq_savecpuflg, %function
hal_disableirqfiq_savecpuflg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r7, [sp, #-4]!
#APP
@ 147 "../hal/cpuctrl.c" 1
	mrs r7,cpsr 
	mov r3,r7 
	orr r7,r7,#192 
	msr cpsr,r7 
	
@ 0 "" 2
	str	r3, [r0, #0]
	ldmfd	sp!, {r7}
	bx	lr
	.size	hal_disableirqfiq_savecpuflg, .-hal_disableirqfiq_savecpuflg
	.align	2
	.global	hal_enableirqfiq_restcpuflg
	.type	hal_enableirqfiq_restcpuflg, %function
hal_enableirqfiq_restcpuflg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #0]
#APP
@ 162 "../hal/cpuctrl.c" 1
	msr cpsr,r3 
	
@ 0 "" 2
	bx	lr
	.size	hal_enableirqfiq_restcpuflg, .-hal_enableirqfiq_restcpuflg
	.align	2
	.global	hal_read_currmodesp
	.type	hal_read_currmodesp, %function
hal_read_currmodesp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 174 "../hal/cpuctrl.c" 1
	mov r0,sp 
	
@ 0 "" 2
	bx	lr
	.size	hal_read_currmodesp, .-hal_read_currmodesp
	.align	2
	.global	hal_read_cpuflg
	.type	hal_read_cpuflg, %function
hal_read_cpuflg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 186 "../hal/cpuctrl.c" 1
	mrs r0,cpsr 
	
@ 0 "" 2
	bx	lr
	.size	hal_read_cpuflg, .-hal_read_cpuflg
	.align	2
	.global	hal_write_cpuflg
	.type	hal_write_cpuflg, %function
hal_write_cpuflg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 197 "../hal/cpuctrl.c" 1
	msr cpsr,r0 
	
@ 0 "" 2
	bx	lr
	.size	hal_write_cpuflg, .-hal_write_cpuflg
	.align	2
	.global	hal_swhmodset_sp_rscurmod
	.type	hal_swhmodset_sp_rscurmod, %function
hal_swhmodset_sp_rscurmod:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 186 "../hal/cpuctrl.c" 1
	mrs r3,cpsr 
	
@ 0 "" 2
	bic	r2, r3, #31
	orr	r0, r2, r0
#APP
@ 212 "../hal/cpuctrl.c" 1
	msr cpsr_c,r0 
	mov sp,r1 
	msr cpsr,r3 
	
@ 0 "" 2
	bx	lr
	.size	hal_swhmodset_sp_rscurmod, .-hal_swhmodset_sp_rscurmod
	.align	2
	.global	hal_read_scpuflg
	.type	hal_read_scpuflg, %function
hal_read_scpuflg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 228 "../hal/cpuctrl.c" 1
	mrs r0,spsr 
	
@ 0 "" 2
	bx	lr
	.size	hal_read_scpuflg, .-hal_read_scpuflg
	.align	2
	.global	hal_write_scpuflg
	.type	hal_write_scpuflg, %function
hal_write_scpuflg:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 239 "../hal/cpuctrl.c" 1
	msr cpsr,r0 
	
@ 0 "" 2
	bx	lr
	.size	hal_write_scpuflg, .-hal_write_scpuflg
	.align	2
	.global	hal_cpumode_switch
	.type	hal_cpumode_switch, %function
hal_cpumode_switch:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r7, [sp, #-4]!
#APP
@ 251 "../hal/cpuctrl.c" 1
	mrs r7,cpsr 
	orr r7,r7,r0 
	msr cpsr,r7 
	
@ 0 "" 2
	ldmfd	sp!, {r7}
	bx	lr
	.size	hal_cpumode_switch, .-hal_cpumode_switch
	.align	2
	.global	hal_cpumodeswitch_retoldmode
	.type	hal_cpumodeswitch_retoldmode, %function
hal_cpumodeswitch_retoldmode:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r7, [sp, #-4]!
#APP
@ 265 "../hal/cpuctrl.c" 1
	mrs r7,cpsr 
	mov r0,r7 
	orr r7,r7,r0 
	msr cpsr,r7 
	
@ 0 "" 2
	ldmfd	sp!, {r7}
	bx	lr
	.size	hal_cpumodeswitch_retoldmode, .-hal_cpumodeswitch_retoldmode
	.align	2
	.global	hal_io8_read
	.type	hal_io8_read, %function
hal_io8_read:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 281 "../hal/cpuctrl.c" 1
	ldrb r0,[r0] 
	
@ 0 "" 2
	and	r0, r0, #255
	bx	lr
	.size	hal_io8_read, .-hal_io8_read
	.align	2
	.global	hal_io16_read
	.type	hal_io16_read, %function
hal_io16_read:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 295 "../hal/cpuctrl.c" 1
	ldrh r0,[r0] 
	
@ 0 "" 2
	mov	r0, r0, asl #16
	mov	r0, r0, lsr #16
	bx	lr
	.size	hal_io16_read, .-hal_io16_read
	.align	2
	.global	hal_io32_read
	.type	hal_io32_read, %function
hal_io32_read:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 309 "../hal/cpuctrl.c" 1
	ldr r0,[r0] 
	
@ 0 "" 2
	bx	lr
	.size	hal_io32_read, .-hal_io32_read
	.align	2
	.global	hal_io8_write
	.type	hal_io8_write, %function
hal_io8_write:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 322 "../hal/cpuctrl.c" 1
	strb r1,[r0] 
	
@ 0 "" 2
	bx	lr
	.size	hal_io8_write, .-hal_io8_write
	.align	2
	.global	hal_io16_write
	.type	hal_io16_write, %function
hal_io16_write:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 335 "../hal/cpuctrl.c" 1
	strh r1,[r0] 
	
@ 0 "" 2
	bx	lr
	.size	hal_io16_write, .-hal_io16_write
	.align	2
	.global	hal_io32_write
	.type	hal_io32_write, %function
hal_io32_write:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
#APP
@ 348 "../hal/cpuctrl.c" 1
	str r1,[r0] 
	
@ 0 "" 2
	bx	lr
	.size	hal_io32_write, .-hal_io32_write
	.align	2
	.global	hal_spinlock_init
	.type	hal_spinlock_init, %function
hal_spinlock_init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
#APP
@ 361 "../hal/cpuctrl.c" 1
	swp r3,r3,[r0] 
	
@ 0 "" 2
	bx	lr
	.size	hal_spinlock_init, .-hal_spinlock_init
	.align	2
	.global	hal_spinlock_lock
	.type	hal_spinlock_lock, %function
hal_spinlock_lock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r7, r8}
#APP
@ 373 "../hal/cpuctrl.c" 1
	mov r8,#1 
	1:swp r7,r8,[r0] 
	cmp r7,#0 
	bne 1b 
	
@ 0 "" 2
	ldmfd	sp!, {r7, r8}
	bx	lr
	.size	hal_spinlock_lock, .-hal_spinlock_lock
	.align	2
	.global	hal_spinlock_unlock
	.type	hal_spinlock_unlock, %function
hal_spinlock_unlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
#APP
@ 387 "../hal/cpuctrl.c" 1
	swp r3,r3,[r0] 
	
@ 0 "" 2
	bx	lr
	.size	hal_spinlock_unlock, .-hal_spinlock_unlock
	.align	2
	.global	hal_spinlock_saveflg_cli
	.type	hal_spinlock_saveflg_cli, %function
hal_spinlock_saveflg_cli:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r7, r8}
#APP
@ 401 "../hal/cpuctrl.c" 1
	mrs r7,cpsr 
	mov r3,r7 
	orr r7,r7,#192 
	msr cpsr,r7 
	
@ 0 "" 2
	str	r3, [r1, #0]
#APP
@ 411 "../hal/cpuctrl.c" 1
	mov r8,#1 
	1:swp r7,r8,[r0] 
	cmp r7,#0 
	bne 1b 
	
@ 0 "" 2
	ldmfd	sp!, {r7, r8}
	bx	lr
	.size	hal_spinlock_saveflg_cli, .-hal_spinlock_saveflg_cli
	.align	2
	.global	hal_spinunlock_restflg_sti
	.type	hal_spinunlock_restflg_sti, %function
hal_spinunlock_restflg_sti:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
#APP
@ 425 "../hal/cpuctrl.c" 1
	swp r3,r3,[r0] 
	
@ 0 "" 2
	ldr	r3, [r1, #0]
#APP
@ 433 "../hal/cpuctrl.c" 1
	msr cpsr,r3 
	
@ 0 "" 2
	bx	lr
	.size	hal_spinunlock_restflg_sti, .-hal_spinunlock_restflg_sti
	.align	2
	.global	hal_memset
	.type	hal_memset, %function
hal_memset:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	bxeq	lr
	mov	r3, #0
.L65:
	strb	r2, [r0, r3]
	add	r3, r3, #1
	cmp	r1, r3
	bhi	.L65
	bx	lr
	.size	hal_memset, .-hal_memset
	.align	2
	.global	hal_memcpy
	.type	hal_memcpy, %function
hal_memcpy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bxeq	lr
	mov	r3, #0
.L71:
	ldrb	ip, [r0, r3]	@ zero_extendqisi2
	strb	ip, [r1, r3]
	add	r3, r3, #1
	cmp	r2, r3
	bhi	.L71
	bx	lr
	.size	hal_memcpy, .-hal_memcpy
	.align	2
	.global	hal_retn_cpuid
	.type	hal_retn_cpuid, %function
hal_retn_cpuid:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	bx	lr
	.size	hal_retn_cpuid, .-hal_retn_cpuid
	.align	2
	.global	hal_sysdie
	.type	hal_sysdie, %function
hal_sysdie:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, r0
	stmfd	sp!, {r4, lr}
	ldr	r0, .L79
	bl	printfk
.L77:
	b	.L77
.L80:
	.align	2
.L79:
	.word	.LC0
	.size	hal_sysdie, .-hal_sysdie
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"LMOSEM SYSTEM IS DIE %s\000"
	.section	.note.GNU-stack,"",%progbits
