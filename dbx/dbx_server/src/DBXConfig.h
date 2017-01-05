#ifndef __DBX_CONFIG_H_
#define __DBX_CONFIG_H_

#include <string>
#include <vector>

#include "tinyxml.h"
#include "Singleton.h"


#define DBX_MAX_BUF 256     // ����buff����󳤶�
#define DBX_MAX_NAME 256    // �����ַ�������󳤶�


struct DBInterfaceInfo
{
    DBInterfaceInfo()
    {
        id = 0;
        memset(db_ip, 0, sizeof(db_ip));
        memset(db_name, 0, sizeof(db_name));
        memset(db_username, 0, sizeof(db_username));
        memset(db_password, 0, sizeof(db_password));
    }

    int id;                             // ���ݿ�ӿ�id
    char db_ip[DBX_MAX_BUF];            // ���ݿ�ip��ַ
    int db_port;                        // ���ݿ�˿�
    char db_name[DBX_MAX_NAME];         // ���ݿ�����
    char db_username[DBX_MAX_NAME];     // �������ݿ���û���
    char db_password[DBX_MAX_BUF];      // �������ݿ������
    int db_connectionsNum;              // ���ݿ��������
};

class DBXConfig: public Singleton<DBXConfig>
{
public:
    bool LoadConfig(std::string p_filePath);

    std::vector<DBInterfaceInfo> m_interfaceInfos;

protected:
    std::string GetElementAttributeStr(TiXmlElement *p_element, const char *p_key)
    {
        const char *attr = p_element->Attribute(p_key);
        if (attr == NULL)
            return "";
        return attr;
    }

    int GetElementAttributeInt(TiXmlElement *p_element, const char *p_key)
    {
        const char *attr = p_element->Attribute(p_key);
        if (attr == NULL)
            return 0;
        return atoi(attr);
    }
};

#define g_dbxConfig DBXConfig::Instance()


#endif  // end of __DBX_CONFIG_H_