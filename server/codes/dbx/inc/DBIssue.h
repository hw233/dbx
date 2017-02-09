/*
Written by wangshufeng.
RTX:6016.
������

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

    virtual void Progress();
    virtual void OnProgress() = 0;
    virtual void MainProgress();

    void SetDBInterface(DBInterface *p_dbInterface);

    int GetQueryID();

    bool HasError();
    std::string &GetErrorStr();
    void SetError(int p_errnum, std::string p_errstr);
    void ProcessError();
protected:
    DBInterface *m_dbInterface;
    int m_queryID;              // ��ѯ�����id����Ч��ͬ����밴˳�����ѯ
    AppMsg m_resultAppMsg;      // ��ѯ������ݰ�

    unsigned int m_errnum;
    std::string m_errstr;
};


class DBIssueCallSP :public DBIssueBase
{
public:
    DBIssueCallSP(AppMsg *p_appMsg, int p_queryID);

    virtual void OnProgress();
    virtual void MainProgress();
};


class DBIssueCallSQL :public DBIssueBase
{
public:
    DBIssueCallSQL(AppMsg *p_appMsg, int p_queryID);

    virtual void OnProgress();
    virtual void MainProgress();
};

#endif // end of __DB_ISSUE_H_