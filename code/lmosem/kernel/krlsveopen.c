/**********************************************************
        LMOSEM内核服务文件krlsveopen.c
***********************************************************/

#include "lmosemtypes.h"
#include "lmosemmctrl.h"

sysstus_t krlsvetabl_open(uint_t swinr,stkparame_t* stkparv)
{
    if(swinr!=SNR_FS_OPEN)
    {
        return SYSSTUSERR;
    }
    return (sysstus_t)krlsve_open((void*)stkparv->parmv1,(uint_t)stkparv->parmv2,
    (uint_t)stkparv->parmv3);
}


hand_t krlsve_open(void* file,uint_t flgs,uint_t stus)
{
    if(file==NULL||((flgs&FILE_TY_MASK)==FILE_TY_FILE))
    {
        return SYSSTUSERR;
    }
    
    return krlsve_core_open(file,flgs,stus);
}

hand_t krlsve_core_open(void* file,uint_t flgs,uint_t stus)
{
    devid_t devid;
    device_t* devp;
    objnode_t* ondp;
    hand_t rethd;
    thread_t* tdp=krlsched_retn_currthread();
    if(((flgs&FILE_TY_MASK)==FILE_TY_DEV))
    {
        goto op_dev_step;       
    }
    return NO_HAND;
op_dev_step:
    devid.dev_mtype=((devid_t*)file)->dev_mtype;
    devid.dev_stype=((devid_t*)file)->dev_stype;
    devid.dev_nr=((devid_t*)file)->dev_nr;
    devp=krlonidfl_retn_device((void*)(&devid),DIDFIL_IDN);
    if(devp==NULL)
    {
           return NO_HAND;
    }
    ondp=krlnew_objnode();
    if(ondp==NULL)
    {
           return NO_HAND;
    }
    ondp->on_opercode=IOIF_CODE_OPEN;
    ondp->on_objtype=OBJN_TY_DEV;
    ondp->on_objadr=devp;       
           
    rethd=krlthd_add_objnode(tdp,ondp);
    if(rethd==NO_HAND)
    {
        goto res_step;        
    }    
    if(krlsve_open_device(ondp)==SYSSTUSERR)
    {
        goto res_step;
    }
    return rethd;
res_step:
    printfk("call open ok had%x \n\r",rethd);
    if(rethd!=NO_HAND)
    {
        if(krlthd_del_objnode(tdp,rethd)==NO_HAND)
        {
            hal_sysdie("open api td del objnode err");
        }
    }
    if(krldel_objnode(ondp)==FALSE)
    {
        hal_sysdie("open api del objnode err");
    }
    return NO_HAND;
        
}

sysstus_t krlsve_open_device(objnode_t* ondep)
{
    if(ondep->on_objadr==NULL)
    {
        return SYSSTUSERR;
    }
    if(krldev_io(ondep)==DFCERRSTUS)
    {
        return SYSSTUSERR;
    }
    return SYSSTUSOK;
}
