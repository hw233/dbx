#ifndef __APP_MESSAGE_H_
#define __APP_MESSAGE_H_

// @note by wangshufeng.
// for AppMsg��AppMsg��msgdef.h����������ȴ��Ҫ����vsdef.h����Ϊmsgdef.h�е�һЩ����������vsdef.h�����ܶ���ʹ�ã�vsdef.h���ļ�β������msgdef.h��
#include "vsdef.h"

#include "MessageBase.h"

// ����AppMsg����Э���װ
class AppMessage : public MessageBase
{
protected:
    AppMsg m_appMsg;
};

#endif  // __APP_MESSAGE_H_