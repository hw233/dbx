#ifndef __MESSAGE_BUILDER_H_
#define __MESSAGE_BUILDER_H_

// @note by wangshufeng.
// for AppMsg��AppMsg��msgdef.h����������ȴ��Ҫ����vsdef.h����Ϊmsgdef.h�е�һЩ����������vsdef.h�����ܶ���ʹ�ã�vsdef.h���ļ�β������msgdef.h��
#include "lindef.h"
#include "vsdef.h"

#include "DBXClientMessage.h"


class DBMessageBuilder
{
public:
    static DBXClientMessage *BuildDBXMessage(AppMsg *p_appMsg)
    {}
};

#endif // __MESSAGE_BUILDER_H_