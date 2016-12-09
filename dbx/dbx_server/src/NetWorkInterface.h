#ifndef __NETWORK_INTERFACE_H__
#define __NETWORK_INTERFACE_H__

#include "types.h"

//class AppMsg;	// û�ҵ�AppMsg�����������ʱ���
class ILinkCtrl;
class ILinkSink;


class NetworkInterface
{
public:
	NetworkInterface();

	void Listen(const BYTE *p_addr, int *p_port, ILinkSink *p_sink, DWORD p_dwFlags);

	HRESULT Send(BYTE *p_appMsg);	// û�ҵ�AppMsg���������Ϊ���ó�������������ʱʹ��BYTE

	HRESULT Recv(BYTE *p_buff, int p_size);

protected:
	ILinkCtrl* m_linkCtrl;
};


#endif // __NETWORK_INTERFACE_H__