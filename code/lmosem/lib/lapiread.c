/**********************************************************
        LMOSEM文件管理API文件lapiread.c
***********************************************************/

#include "lmosemtypes.h"
#include "lmosemmctrl.h"

sysstus_t api_read(hand_t fhand,buf_t buf,size_t len,uint_t flgs)
{
    sysstus_t rets;
    API_ENTRY_PARE4(SNR_FS_READ,rets,fhand,buf,len,flgs);
    return rets;
}
