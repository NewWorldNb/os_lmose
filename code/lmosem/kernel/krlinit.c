/****************************************************************
        LMOSEM kernel全局初始化文件krlinit.c
*****************************************************************/

#include "lmosemtypes.h"
#include "lmosemmctrl.h"

void init_krl()
{
    init_krlmm();
	init_krldevice();
    init_krldriver();
	hal_enable_irq();
    init_krlsched();
    
    init_ktime();
    init_task();
    init_krlcpuidle();
    hal_sysdie("LMOSEM_NI RUN!!");
    return;
}
