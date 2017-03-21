#ifndef __DB_CLIENT_H_
#define __DB_CLIENT_H_

#include "Singleton.h"
#include "dbx_msgdef.h"

#include "lindef.h"
#include "Sock.h"

#include <map>

struct AppMsg;
class NetCtrl;


class DBClientCB
{
public:
    virtual void onConnected(bool result){};
    virtual void onLogined(int id, int userId, AppMsg *pMsg, bool result){};
    virtual void onExeDBProc(int id, bool result){};
};


class DBClient: public TSingleton<DBClient>
{
public:
	DBClient();
	~DBClient(void);

	void connectDBX(std::string p_serverAddr, int p_port);

    int callDBProc(CSCResultMsg *pMsg);
	int callDBSQL(AppMsg *pMsg);

    static DBClientCB* getDBClientCB();
	static void setDBClientCB(DBClientCB* p_dbClientCB);

	void* getAttributeSet(int attriIndex,int index=0);
	void  deleteAttributeSet(int index);

    void connectResult(HRESULT p_result);
    void onRecv(AppMsg* p_appMsg);

private:
    static int generateOperationID();

    void addQueryResult(CSCResultMsg* pMsg);

	IThreadsPool* m_pThreads;
	static DBClientCB* m_queryResultHandle;	

	typedef std::multimap<int,CSCResultMsg*> MAPATTRSET;
	MAPATTRSET m_mapResultSet;

    NetCtrl *m_netCtrl;
};

DBClient* CreateClient(DBClientCB* p_dbClientCB, std::string serverAddr, int port);

#endif // __DB_CLIENT_H_