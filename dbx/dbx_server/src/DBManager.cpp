#include "DBManager.h"

// ͷ�ļ����������⣬���������������������lindef.h������ȷʹ��lindef.h�а�����ĳ��ͷ�ļ�����Щͷ�ļ����໥�����ġ�
// �κ�һ��ͷ�ļ����޸Ķ����������е��ļ����±��룬�������ǰ������ͷ�ļ��ı��뵥Ԫ�������������߼�����Ҳ��ʹ����Ī�����
//#include "trace.h"
#include "lindef.h"

DBManager::DBManager()
{
	m_networkInterface = NetworkInterface();
}

void DBManager::Running()
{
	TRACE0_L2( "DBManager is Running..." );
}