INPUT( init.o lmosemhal_start.o interrupt.o intabtdistr.o halglobal.o halinit.o vector.o platform.o printfk.o div0.krnl _udivsi3.o _umodsi3.o _modsi3.o _divsi3.o cpuctrl.o halmmu.o halmach.o halmm.o halintupt.o haluart.o krlinit.o krlglobal.o krlintupt.o krlsem.o krlwaitlist.o krlmm.o krlpagempol.o krlobjsmpol.o krlsched.o krltime.o krlobjnode.o krlthread.o krldevice.o krlservice.o krlsvemm.o krlsvethread.o krlsveopen.o krlsveclose.o krlsveread.o krlsvewrite.o krlsveioctrl.o krlsvelseek.o krlcpuidle.o task.o drvtick.o drvuart.o drvrtc.o lapimm.o lapithread.o lapiopen.o lapiclose.o lapiread.o lapiwrite.o lapiioctrl.o lapilseek.o lapitime.o libmm.o libthread.o libopen.o libclose.o libread.o libwrite.o libioctrl.o liblseek.o libtime.o printf.o utask.o)
OUTPUT(lmosemkrnl.elf)
OUTPUT_FORMAT("elf32-littlearm", "elf32-littlearm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(_start)
SECTIONS
{
        . = 0x30008000;
        __begin_kernel = .;
        __begin_lmosem_hal_head_text = .;
        .head.text ALIGN(4) : { *(.head.text) }
        __end_lmosem_hal_head_text = .;
        __begin_lmosem_hal_head_data = .;
        .head.data ALIGN(4) : { *(.head.data) }
        __end_lmosem_hal_head_data = .;
        __begin_lmosem_hal_init = .;
        .lmosem_hal.init ALIGN(4) : { *(.lmosem_hal.init) }
        __end_lmosem_hal_init = .;
        __begin_lmosem_hal_vector = .;
        .lmosem_hal.vector ALIGN(4) : { *(.lmosem_hal.vector) }
        __end_lmosem_hal_vector = .;
        __begin_lmosem_hal_intvect = .;
        .lmosem_hal.intvect ALIGN(4) : { *(.lmosem_hal.intvect) }
        __end_lmosem_hal_intvect = .;
        __begin_text = .;
        .text ALIGN(4) : { *(.text) }
        __end_text = .;
        __begin_data = .;
        .data ALIGN(4) :{ *(.data) }
        __end_data = .;
        __begin_rodata = .;
        .rodata ALIGN(4) :{ *(.rodata) *(.rodata.*) }
        __end_rodata = .;
        __begin_kstrtab = .;
        .kstrtab ALIGN(4) : { *(.kstrtab) }
        __end_kstrtab = .;
        __begin_bss = .;
        .bss ALIGN(4) : { *(.bss) }
        __end_bss = .;
        __end_kernel = .;
         /DISCARD/ : { *(.dynstr*) }
         /DISCARD/ : { *(.dynamic*) }
         /DISCARD/ : { *(.plt*) }
         /DISCARD/ : { *(.interp*) }
         /DISCARD/ : { *(.gnu*) }
}
