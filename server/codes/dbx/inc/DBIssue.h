/*
Written by wangshufeng.
RTX:6016.
描述：

*/

#ifndef __DB_ISSUE_H_
#define __DB_ISSUE_H_

#include <string>

#include "lindef.h"
#include "DBInterface.h"

class DBIssueBase
{
public:
    DBIssueBase(AppMsg *p_appMsg, int p_queryID);

    virtual bool Progress();
    virtual bool OnProgress() = 0;
    virtual void MainProgress();

    void SetDBInterface(DBInterface *p_dbInterface);

    int GetQueryID();

    bool HasError();
    std::string &GetErrorStr();
    void SetError(int p_errnum, std::string p_errstr);
    void ProcessError();
protected:
    DBInterface *m_dbInterface;
    int m_queryID;              // 查询的序号id，有效的同序号须按顺序处理查询
    AppMsg m_resultAppMsg;      // 查询结果数据包

    unsigned int m_errnum;
    std::string m_errstr;
};


class DBIssueCallSP :public DBIssueBase
{
public:
    DBIssueCallSP(AppMsg *p_appMsg, int p_queryID);

    virtual bool OnProgress();
    virtual void MainProgress();
};


class DBIssueCallSQL :public DBIssueBase
{
public:
    DBIssueCallSQL(AppMsg *p_appMsg, int p_queryID);

    virtual bool OnProgress();
	virtual void MainProgress();
};

#endif // __DB_ISSUE_H_