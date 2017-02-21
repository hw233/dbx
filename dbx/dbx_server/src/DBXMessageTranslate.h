#ifndef __DBX_MESSAGE_TRANSLATE_
#define __DBX_MESSAGE_TRANSLATE_

#include "lindef.h"	// ����lindef.h��ʹ��trace.h
#include "dbx_msgdef.h"
//mysql
//#include "m_string.h"
#include "mysql.h"
//std
#include <list>
#include <string>
#include <map>
using namespace std;


// ���������Ƴ���
#define MAX_PARAMNAME_LEN			32

// QueryBuffer����
#define QUERYBUFFER_MAX_LEN			1024 * 128

// ����������
enum
{
	PARAM_DIR_IN = 0,				/// �������
	PARAM_DIR_OUT,					/// �������
};

// �������
struct SOutParam
{
	char szVariableName[MAX_PARAMNAME_LEN];	// ���������
	PType nDataType;						// ��������

	int size() { return DbxMessage::getTypeSize(nDataType); }

	SOutParam(void)
	{
		memset(this, 0, sizeof(SOutParam));
	}

	SOutParam(const char * vname, PType & type):
		nDataType(type)
	{
		strcpy(szVariableName, vname);
	}
};


typedef std::list< SOutParam >  TListOutput;


// ��Ϣ����
struct SParam
{
	char szVariableName[MAX_PARAMNAME_LEN];	// ������
	int nDataDir;							// ��������
	PType nDataType;						// ��������
	const void * pvData;					// ����

	int size() { return DbxMessage::getTypeSize(nDataType); }

	SParam(void)
	{
		memset(this, 0, sizeof(SParam));
	}

	SParam(const char * vname, PType & type, const void * data) :
		nDataType(type), pvData(data)
	{
		strcpy(szVariableName, vname);
	}

	SParam(const char * vname, const PType & type, const void * data) :
		nDataType(type), pvData(data)
	{
		strcpy(szVariableName, vname);
	}
};

struct SCharPtrCmp
{
	bool operator() (const char * s1, const char * s2) const
	{
		return strcmp(s1, s2) < 0;
	}
};


typedef std::list< SParam >  TListParam;
typedef std::map<const char *, SParam, SCharPtrCmp> TMapParam;


char * strmov(char * dst, const char * src);

void upper_first_char(char * buffer);

void lower_first_char(char * buffer);

bool build_sql_query_buffer(CCSResultMsg & message, char * pBuffer);

bool build_sp_query_buffer(MYSQL * pMysql, CCSResultMsg * pMessage, char * pBuffer/*out*/, 
	int & nBufferLen/*in-out*/, TListOutput & outParams/*out*/);

bool translate_sql_result_mysql(const char * pData, CSCResultMsg & message);

bool translate_sp_result_mysql(const char * pData, CSCResultMsg & message);

#endif //__DBX_MESSAGE_TRANSLATE_
