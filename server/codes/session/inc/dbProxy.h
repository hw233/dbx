/**
 * filename : dbProxy.h
 * desc : 处理存储过程回调
 */

#ifndef __DBANETEVENT_H___
#define __DBANETEVENT_H___

#include "lindef.h"
#include "Sock.h"
#include "MsgLinksImpl.h"
#include "MsgDefine.h"
#include "IDBAClient.h"
#include "Client.h"
#include "IDBARecordSet.h"
#include "dbmsg.h"

#define	 MAXRESNUM 100

enum _StoreType
{
	eStoreBase = 0,
	eStoreLogin,
	eStoreCreateAccount,
	eStoreCreateRole,
	eStoreDeleteRole,
	eStoreCheckRole,
};

extern IInitClient* g_pDBAClient;

class CDBProxy :
	public IDBANetEvent,
	public IDBCallback,
    public ITask
{
public:
	CDBProxy(void);

public:
	~CDBProxy(void);

public:
	void init(const char* dbIp, int dbPort);

public:
	
	void onExeDBProc_tocpp(int operId,IInitClient* pInitClient,bool result);
	void onDBReturn(int operId,int errorCode, std::list<int>&record_indexs);
	void onConnected(bool result);
    virtual HRESULT Do(HANDLE hContext);

public:
	void doLogin(char* userName, char* password, handle hLink);
	void doLoginResult(int operId, std::list<int>&record_indexs, handle hLink);
	
	void doCreateAccount(char* userName, char* password, handle hLink);
	void doCreateAccountResult(int operId, std::list<int>&record_indexs, handle hLink, std::string accountName);

	void doCreateRole( handle hLink, int accountId, _MsgCS_CreateRoleInfo* roleInfo);
	void doCreateRoleResult(int operId, std::list<int>&record_indexs, handle hLink);

	void doDeleteRole(int accountId, int roleId, handle hLink);
	void doDeleteRoleResult(int operId, std::list<int>&record_indexs, handle hLink);

	void doCheckRoleName(char* roleName, handle hLink);
	void doCheckRoleNameResult(int operId, std::list<int>&record_indexs, handle hLink);
public:
	struct _DBStoreContext
	{
		int storeType;
		handle hLink;
		std::string accountName;
		_DBStoreContext() : storeType(eStoreBase), hLink(0) ,accountName("")
		{}
	};

	typedef std::map<int, _DBStoreContext> DBSTOREMAP;
	DBSTOREMAP m_mapDBStore;
};

extern CDBProxy g_DBProxy;

#endif
