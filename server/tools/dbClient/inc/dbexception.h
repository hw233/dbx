
//ExceptionType Ϊ0ʱ����ʾû�д���
#define NO_EXCEPTION 0
//ExceptionType������Ϊ�ͻ����쳣��С����Ϊ������쳣
#define C_LOADSOCK_EXCEPTION	1
#define C_LINKPORT_EXCEPTION	2
#define C_INPUTPARAM_EXCEPTION	3

#define S_LOADSOCK_EXCEPTION -1
#define S_LINKPORT_EXCEPTION -2




class CDBException
{
public:
	CDBException():m_nExceptionType(0){}
	~CDBException(){}
public:
	std::string m_strDescription;
	int m_nExceptionType;
};