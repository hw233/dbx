#ifndef __DBMANAGER_H__
#define __DBMANAGER_H__

#include "NetworkInterface.h"

class DBManager
{
public:
	DBManager();

    HRESULT Running(unsigned short p_port = 3000);
    void RunOut();

protected:
	NetworkInterface m_networkInterface;
};


#endif // __DBMANAGER_H__
