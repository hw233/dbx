#include "NetworkInterface.h"


// ͷ�ļ����������⣬���������������������lindef.h������ȷʹ��lindef.h�а�����ĳ��ͷ�ļ�����Щͷ�ļ����໥�����ġ�
// �κ�һ��ͷ�ļ����޸Ķ����������е��ļ����±��룬�������ǰ������ͷ�ļ��ı��뵥Ԫ�������������߼�����Ҳ��ʹ����Ī�����
//#include "trace.h"
#include "lindef.h"	// ����lindef.h��ʹ��trace.h
#include "Sock.h"	// ʹ��Sock.h���Ȱ���lindef.h���������е�����

NetworkInterface::NetworkInterface()
{
	TRACE0_L2( "NetworkInterface init..." );
	m_linkCtrl = CreateLinkCtrl();

}

void NetworkInterface::Listen(const BYTE *p_addr, int *p_port, ILinkSink *p_sink, DWORD p_dwFlags)
{

}

HRESULT NetworkInterface::Send(AppMsg *p_appMsg)
{
}

HRESULT NetworkInterface::Recv(BYTE *p_buff, int p_size)
{}

