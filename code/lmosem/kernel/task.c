#include "lmosemtypes.h"
#include "lmosemmctrl.h"

void task1_main();
void task0_main();


void task0()
{
    thread_t* thp= krlnew_thread((void*)task0_main,0,PRILG_USR,PRITY_MIN,0,0);
    if(thp==NULL)
    {
        hal_sysdie("task0 err");
    }

    return;
}



void task1()
{

    thread_t* thp= krlnew_thread((void*)task1_main,0,PRILG_USR,PRITY_MIN,0,0);
    if(thp==NULL)
    {
        hal_sysdie("task1 err");
    }

    return;
}



void init_task()
{  
    task0();
    task1();
    
   
    return;
}

