/**********************************************************
        LMOSEM文件管理API文件lapiclose.c
***********************************************************/

#include "lmosemtypes.h"
#include "lmosemmctrl.h"
sysstus_t api_close(hand_t fhand)
{

    sysstus_t rets;
    API_ENTRY_PARE1(SNR_FS_CLOSE,rets,fhand);
    return rets;
}
