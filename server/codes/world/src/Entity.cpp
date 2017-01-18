/**
 * filename : Entity.cpp
 * desc : 实体（视野管理部分）
 */

#include "lindef.h"
#include "vsdef.h"
#include "LinkContext.h"
#include "world.h"
#include "Entity.h"
#include "UnitConfig.h"
#include "Scene.h"
#include "GridGraphics.h"

CoEntity::CoEntity() :
	m_clientLink(0), m_gatewayLink(0), m_gatewayId(-1),
	m_dbid(-1),
	m_logicType(eLogicNone), m_propType(eClsTypeNone),
	m_direction(-1), m_speed(-1),
	m_pScene(NULL),
	m_inSync(false), m_firstCast(true), m_autoCast(false),
	m_Move(false)
{
	m_hand = s_hMgr.createHandle(this);
	resetMove();
}

CoEntity::~CoEntity(void)
{
	s_hMgr.closeHandle(m_hand);
}

void CoEntity::release()
{
	delete this;
}

void CoEntity::setPosition(int x, int y)
{
	GridVct pos;
	pos.x = x;
	pos.y = y;
	setPosition(pos);
}

void CoEntity::setPosition(const GridVct& pos)
{
	if ( pos.x != m_position.x || pos.y != m_position.y )
	{
		GridVct last = m_position;
		m_position = pos;
		PosChanged(last);
	}
}

void CoEntity::clearMyAround()
{
	for( handle h = m_myAround.begin(); h != (handle)INVALID_HANDLE; h = m_myAround.next() )
	{
		CoEntity* pEntity = _EntityFromHandle(h);
		if ( pEntity )
		{
			pEntity->removeWatcher(m_hand);
		}
	}
	m_myAround.clear();
}

void CoEntity::clearAroundMe()
{
	if ( m_aroundMe.size() > 0 )
	{
		AppMsg* pMsg = genExitMessage();
		for( handle h = m_aroundMe.begin(); h != (handle)INVALID_HANDLE; h = m_aroundMe.next() )
		{
			CoEntity* pEntity = _EntityFromHandle(h);
			if ( pEntity && pEntity->inSync() )
			{
				pEntity->flushMessage(pMsg);
				pEntity->removeWatchee(m_hand);
			}
		}
		m_aroundMe.clear();
	}
}

bool CoEntity::adjustSights(handle hand)
{
	CoEntity* pEntity = _EntityFromHandle(hand);
	if(!pEntity) return false;
	if ( m_inSync )
	{
		if ( addWatchee(hand) )
		{
			bcEntityEnter(hand);
			pEntity->addWatcher(m_hand);
		}
	}
	if ( pEntity->inSync() )
	{
		if (pEntity->addWatchee(m_hand))
		{
			pEntity->bcEntityEnter(m_hand);
			addWatcher(hand);
		}
	}
	return true;
}

void CoEntity::adjustSights(handle* pEntityList, int len)
{
	for( int i = 0; i < len; i++ )
	{
		if ( pEntityList[i] != m_hand )
		{
			adjustSights(pEntityList[i]);
		}
	}
}

AppMsg* CoEntity::genExitMessage()
{
	_MsgWC_PropSetExit* pMsg = (_MsgWC_PropSetExit*)s_propUpdateBuf;
	pMsg->msgFlags = 0;
	pMsg->msgCls = MSG_CLS_PROP;
	pMsg->msgId = MSG_C_W_PROPSET_EXIT;
	pMsg->unitCount = 1;
	pMsg->units[0] = m_hand;
	pMsg->msgLen = sizeof(_MsgWC_PropSetExit) + sizeof(unsigned int);
	return pMsg;
}

AppMsg* CoEntity::genPropUpdateMessage(int propId)
{
	_MsgWC_PropsUpdate* pMsg = (_MsgWC_PropsUpdate*)s_propUpdateBuf;
	pMsg->msgFlags		= 0;
	pMsg->msgCls		= MSG_CLS_PROP;
	pMsg->msgId			= MSG_C_W_PROPS_UPDATE;
	pMsg->context		= 0;
	pMsg->unitCount		= 1;

	char *p = s_propUpdateBuf + sizeof(_MsgWC_PropsUpdate);
	auxWrite(p,unsigned int,m_hand);//Set Entity ID
	auxWrite(p,char,1);				//Only one prop
	auxWrite(p,char,propId);		//Set PropID

	int size;
	if(UNIT_POS == propId)
	{
		size = serializePath(p);
	}
	else
	{
		size =  m_propSet[propId]->val.Save(p,_MaxMsgLength-(signed)(p-s_propUpdateBuf),0);
	}
	ASSERT_(size > 0);
	p += size;
	pMsg->msgLen = (signed)(p - s_propUpdateBuf);
	return pMsg;
}

int CoEntity::serializePath(char *pStart)
{
	char *p = pStart;
	const _PropPosData *pPos = (const _PropPosData *)m_propSet[UNIT_POS]->val.dataVal;

	auxWrite(p,short,0);		//数据报长度
	auxWrite(p,BYTE,pPos->bMove);
	auxWrite(p,BYTE,pPos->len);
	auxWrite(p,BYTE,pPos->idx);
	auxWrite(p,BYTE,pPos->delay);
	auxWrite(p,BYTE,pPos->step);
	auxWrite(p,BYTE,pPos->endPath);

	const GridVct *path = pPos->path;
	auxWrite(p,short,path->x);
	auxWrite(p,short,path->y);
	path++;
	for(int i = 1;i<pPos->len;i++,path++)
	{
		int dx = path->x - (path - 1)->x;
		int dy = path->y - (path - 1)->y;
		BYTE dir = 0xFF;
		if(dx < 0)
		{
			dir = dy > 0?3:((0==dy)?4:5);
		}
		else if(0 == dx)
		{
			dir = dy > 0?2:((0==dy)?0xFF:6);
		}
		else
		{
			dir = dy > 0?1:((0==dy)?0:7);
		}
		auxWrite(p,BYTE,dir);
	}
	int len = p - pStart;
	auxWrite(pStart,short,len - sizeof(short));
	return len;
}

void CoEntity::flushMessage(const AppMsg* pMsg)
{
	if ( m_inSync )
	{
		g_world.sendMsgToPeer(m_gatewayLink, m_clientLink, pMsg);
	}
}

bool CoEntity::bcAMessage(const AppMsg* pMsg, bool bPublic)
{
	flushMessage(pMsg);
	if ( bPublic )
	{
		int count = 0;
		for( handle h = m_aroundMe.begin(); h != (handle)INVALID_HANDLE; )
		{
			CoEntity* pEntity = _EntityFromHandle(h);
			if( pEntity && pEntity->inSync() )
			{
				bool toErease = GridDistance( X(), Y(), pEntity->X(), pEntity->Y() ) > _SyncRadius;
				if( toErease )
				{
					s_exitList[count++] = pEntity;
					h = m_aroundMe.erase();
				}
				else
				{
					pEntity->flushMessage(pMsg);
					h = m_aroundMe.next();
				}
			}
			else
			{
				h = m_aroundMe.erase();
			}
		}
		if(count > 0)
		{
			AppMsg* pExitMsg = genExitMessage();
			if( pExitMsg )
			{
				for( int i = 0; i < count; i++ )
				{
					CoEntity* pEntity = s_exitList[i];
					pEntity->flushMessage(pExitMsg);
					pEntity->removeWatchee(m_hand);
				}
			}
		}
	}
	return true;
}

bool CoEntity::bcAMessageToGroup(const AppMsg* pMsg,bool toSelf)
{
	static PeerHandle pPeers[500];
	int peer_count = 0;

	if(toSelf && inSync())
	{
		pPeers[peer_count].hGate		= m_gatewayLink;
		pPeers[peer_count].hClient		= m_clientLink;
		pPeers[peer_count].gatewayId	= m_gatewayId;

		peer_count++;
	}
	int free_count = 0;
	for( handle h = m_aroundMe.begin(); h != (handle)INVALID_HANDLE; )
	{
		CoEntity* pEntity = _EntityFromHandle(h);

		if( pEntity && pEntity->inSync() )
		{
			bool toErease = GridDistance( X(), Y(), pEntity->X(), pEntity->Y() ) > _SyncRadius;
			if( toErease )
			{
				s_exitList[free_count++] = pEntity;
				h = m_aroundMe.erase();
			}
			else
			{
				pPeers[peer_count].hGate		= pEntity->m_gatewayLink;
				pPeers[peer_count].hClient		= pEntity->m_clientLink;
				pPeers[peer_count].gatewayId	= pEntity->m_gatewayId;

				peer_count++;

				// ASSERT_(peer_count <= 500);// you can just send your data by several times
				if(peer_count >= 500)
				{
					g_world.sendMsgToPeers(pPeers,peer_count,pMsg);
					peer_count = 0;
				}

				h = m_aroundMe.next();
			}
		}
		else
		{
			h = m_aroundMe.erase();
		}
	}

	if (peer_count > 0)
		g_world.sendMsgToPeers(pPeers, peer_count, pMsg);
	if(free_count > 0)
	{
		AppMsg* pExitMsg = genExitMessage();
		if( pExitMsg )
		{
			peer_count = 0;
			for( int i = 0; i < free_count; i++ )
			{
				CoEntity* pEntity = s_exitList[i];
				pPeers[peer_count].hGate = pEntity->m_gatewayLink;
				pPeers[peer_count].hClient = pEntity->m_clientLink;
				pPeers[peer_count].gatewayId = pEntity->m_gatewayId;

				peer_count++;

				// ASSERT_(peer_count <= 500); // just send your data several times
				if(peer_count>=500)
				{
					g_world.sendMsgToPeers(pPeers,peer_count,pExitMsg);
					peer_count = 0;
				}

				pEntity->removeWatchee(m_hand);
			}
			if (peer_count > 0)
				g_world.sendMsgToPeers(pPeers, peer_count, pExitMsg);
		}
	}
	return true;
}

bool CoEntity::bcMyEnter()
{
	_MsgWC_PropSetEnter* pMsg = (_MsgWC_PropSetEnter*)s_propUpdateBuf;
	pMsg->msgFlags		= 0;
	pMsg->msgCls		= MSG_CLS_PROP;
	pMsg->msgId			= MSG_C_W_PROPSET_ENTER;
	pMsg->isMe			= (char)1;
	pMsg->unitId		= m_hand;
	pMsg->dbId			= m_dbid;
	pMsg->scene			= m_sceneInfo;
	pMsg->pos			= m_position;
	pMsg->dir			= m_direction;
	pMsg->status		= 0;
	pMsg->entityType	= m_logicType;
	pMsg->propSetId		= m_propType;
	pMsg->propCount		= 0;

	int offset = sizeof(_MsgWC_PropSetEnter);
	int head = offset;
	int nPropCount = 0;

	for( int i = 0; i < m_propSet.count; i++ )
	{
		_Property *property = m_propSet[i];
		if(VAR_NULL == property->val.type || 0 == property->update)
		{
			continue;
		}
		*(char *)(s_propUpdateBuf + offset)  = i,offset += sizeof(char);
		int size = 0;
		if(UNIT_POS == i)
		{
			size = serializePath(s_propUpdateBuf + offset);
		}
		else
		{
			size = property->val.Save(s_propUpdateBuf + offset,_MaxMsgLength - offset,false);
		}
		ASSERT_(size > 0);
		if(size > 0)
		{
			offset += size;
		}
		nPropCount++;
	}
	ASSERT_( offset > head );
	if(offset > head){
		pMsg->propCount = nPropCount;
		pMsg->msgLen = offset;
		flushMessage(pMsg);
	}
	return true;
}

bool CoEntity::bcSceneSwitch()
{
	_MsgWC_SceneSwitch* pMsg = (_MsgWC_SceneSwitch*)s_propUpdateBuf;
	pMsg->msgFlags = 0;
	pMsg->msgCls = MSG_CLS_PROP;
	pMsg->msgId = MSG_C_W_SCENE_SWITCH;
	pMsg->unitId = m_hand;
	pMsg->scene = m_sceneInfo;
	pMsg->pos = m_position;
	pMsg->dir = m_direction;
	pMsg->status = 0;
	pMsg->msgLen  = sizeof(_MsgWC_SceneSwitch);
	flushMessage(pMsg);
	return true;
}

bool CoEntity::bcEntityEnter(handle hand)
{
	CoEntity* pEntity = _EntityFromHandle(hand);
	if(!pEntity)
	{
		return false;
	}

	_MsgWC_PropSetEnter* pMsg = (_MsgWC_PropSetEnter*)s_propUpdateBuf;
	pMsg->msgFlags		= 0;
	pMsg->msgCls		= MSG_CLS_PROP;
	pMsg->msgId			= MSG_C_W_PROPSET_ENTER;
	pMsg->isMe			= (char)0;
	pMsg->unitId		= hand;
	pMsg->dbId			= pEntity->m_dbid;
	pMsg->scene			= pEntity->m_sceneInfo;
	pMsg->pos			= pEntity->m_position;
	pMsg->dir			= pEntity->m_direction;
	pMsg->status		= 0;
	pMsg->entityType	= pEntity->m_logicType;
	pMsg->propSetId		= pEntity->m_propType;
	pMsg->propCount		= 0;

	int offset = sizeof(_MsgWC_PropSetEnter);

	int nPropCount = 0;
	const _RefList &refList = CUnitConfig::Instance().GetPublicProps(pEntity->m_propType);
	for(int i=0;i<refList.count;i++)
	{
		BYTE propID = *refList[i];
		_Property *property = pEntity->m_propSet[propID];

		//we don't wanna send default or NULL value
		if(VAR_NULL == property->val.type || 0 == property->update)
		{
			continue;
		}
		//put prop id
		*(char *)(s_propUpdateBuf + offset) = propID,offset += sizeof(char);
		int size = 0;
		if(UNIT_POS == propID)
		{
			size = pEntity->serializePath(s_propUpdateBuf + offset);
		}
		else
		{
			size = property->val.Save(s_propUpdateBuf + offset,_MaxMsgLength - offset,false);
		}
		ASSERT_(size>0);
		if(size > 0){
			offset += size;
		}
		nPropCount++;
	}

	pMsg->propCount	= nPropCount;
	pMsg->msgLen	= offset;

	flushMessage(pMsg);

	return true;
}

bool CoEntity::bcEntityExit(handle* exitList, long count)
{
	_MsgWC_PropSetExit* pMsg = (_MsgWC_PropSetExit*)s_propUpdateBuf;
	pMsg->msgFlags = 0;
	pMsg->msgCls = MSG_CLS_PROP;
	pMsg->msgId = MSG_C_W_PROPSET_EXIT;
	pMsg->unitCount = 0;
	int offset = sizeof(_MsgWC_PropSetExit);
	int head = offset;
	for(int i = 0; i < count; i++)
	{
		handle hand = exitList[i];
		if ( offset + 2 * (sizeof(unsigned int) + 1) > _MaxMsgLength )
		{
			pMsg->msgLen = offset;
			flushMessage(pMsg);
			pMsg->unitCount = 0;
			offset = head;
		}
		*(unsigned int*)(s_propUpdateBuf + offset) = hand;
		offset += sizeof(unsigned int);
		pMsg->unitCount++;
	}
	if ( offset > head )
	{
		pMsg->msgLen = offset;
		flushMessage(pMsg);
	}
	return true;
}

/*
	* 同步属性更新
	* 将更新了的属性发送给
	*	1，自己，如果自己本身是可以接受数据的
	*	2，半径内的可接受数据的实体
	*	3，指定了的实体，用于实体不在场景的属性同步*
	*
	*	* 如果在场景中，那么对于指定的实体来说，同步数据不是会被发送两次？
*/
bool CoEntity::bcPropUpdates(handle hSendTo)
{
	CoEntity *pSendTo = _EntityFromHandle(hSendTo);
	bool bSendToPeer = pSendTo && pSendTo->inSync();	//指定对象能不能接收数据发送

	if( !bSendToPeer && !m_inSync && m_aroundMe.empty() ) return false;

	_MsgWC_PropsUpdate* pMsg = (_MsgWC_PropsUpdate*)s_propUpdateBuf;
	char *p = (char* )(pMsg + 1);

	auxWrite(p,unsigned int,m_hand);	// 设置实体ID
	auxWrite(p,char,0);					// 设置同步属性个数

	int nPublic = 0;		// 公开属性个数
	int nPBlockSize = 0;	// 公开属性数据包大小
	int nPrivate = 0;		// 私有属性个数
	static int aPrID[256];	// 存放私有属性的数组

	for( int i = 0; i < m_propSet.count; i++ )
	{
		_Property* property = m_propSet[i];
		if( property->casted != property->update )
		{
			if( property->radius < 1 )
				aPrID[ nPrivate++ ] = i;
			else
			{
				auxWrite(p, char, i);		// 写入一个公开属性ID
				p += (UNIT_POS == i) ?
					serializePath(p) :
					property->val.Save(p, _MaxMsgLength - (signed)( p - s_propUpdateBuf ), false);
				property->casted = property->update;
				nPublic++;
			}
		}
	}
	nPBlockSize = (signed)( p - s_propUpdateBuf );
	for( int i = 0; i < nPrivate; i++ )
	{
		int nID = aPrID[i];
		_Property* property = m_propSet[nID];
		auxWrite(p, char, nID);
		p += property->val.Save(p, _MaxMsgLength - (signed)( p - s_propUpdateBuf ), false);
		property->casted = property->update;
	}

	pMsg->msgFlags	= 0;
	pMsg->msgCls	= MSG_CLS_PROP;
	pMsg->msgId		= MSG_C_W_PROPS_UPDATE;
	pMsg->context	= 0;
	pMsg->unitCount	= 1;

	if( bSendToPeer || m_inSync )
	{
		char* pp = (char* )(pMsg + 1) + sizeof(m_hand);
		auxWrite(pp,char,nPublic + nPrivate);

		pMsg->msgLen = p - s_propUpdateBuf;

		if( pSendTo ) pSendTo->flushMessage(pMsg);
		if( m_inSync ) flushMessage(pMsg);
	}

	if( !m_aroundMe.empty() )
	{
		const int MaxGroup = 512;
		static PeerHandle s_peers[MaxGroup];
		int nFree = 0;
		int nSend = 0;

		char* pp = (char* )(pMsg + 1) + sizeof(m_hand);
		auxWrite(pp, char, nPublic);

		pMsg->msgLen = nPBlockSize;

		for( handle h = m_aroundMe.begin(); h != (handle)INVALID_HANDLE; )
		{
			CoEntity *pEntity = _EntityFromHandle(h);
			if( pEntity && pEntity->inSync() )
			{
				if( GridDistance( m_position.x, m_position.y, pEntity->X(), pEntity->Y() ) > _SyncRadius )
					s_exitList[nFree++] = pEntity, h = m_aroundMe.erase();
				else
				{
					if( h == hSendTo )
					{
						h = m_aroundMe.next();
						continue;
					}

					s_peers[nSend].hGate = pEntity->m_gatewayLink;
					s_peers[nSend].hClient = pEntity->m_clientLink;
					s_peers[nSend].gatewayId = pEntity->m_gatewayId;

					if( ++nSend >= MaxGroup )
						g_world.sendMsgToPeers(s_peers, nSend, pMsg), nSend = 0;
					h = m_aroundMe.next();
				}
			}
			else {
				h = m_aroundMe.erase();
			}
		}
		if( nSend > 0 )
			g_world.sendMsgToPeers(s_peers, nSend, pMsg), nSend = 0;

		if( nFree > 0)
		{
			AppMsg* pExitMsg = genExitMessage();
			while( nFree > 0 )
			{
				nFree--;

				s_peers[nSend].hGate = s_exitList[nFree]->m_gatewayLink;
				s_peers[nSend].hClient = s_exitList[nFree]->m_clientLink;
				s_peers[nSend].gatewayId = s_exitList[nFree]->m_gatewayId;

				s_exitList[nFree]->removeWatchee(m_hand);

				if( ++nSend >= MaxGroup )
					g_world.sendMsgToPeers(s_peers, nSend, pExitMsg), nSend = 0;
			}
			if( nSend > 0 )
				g_world.sendMsgToPeers(s_peers, nSend, pExitMsg);
		}
	}
	return true;
}

/*
	* 发送实体的所有属性
*/
bool CoEntity::bcAllProps(handle hSendTo)
{
	CoEntity *pSendTo = _EntityFromHandle(hSendTo);
	if(!pSendTo || !pSendTo->inSync()) return false;

	_MsgWC_PropsUpdate* pMsg = (_MsgWC_PropsUpdate*)s_propUpdateBuf;
	pMsg->msgFlags	= 0;
	pMsg->msgCls	= MSG_CLS_PROP;
	pMsg->msgId		= MSG_C_W_PROPS_UPDATE;
	pMsg->context	= 0;
	pMsg->unitCount	= 1;

	int nPropCount = 0;	//属性个数

	char *p = (char *)(pMsg + 1);
	auxWrite(p,unsigned int,m_hand);	// 设置实体ID
	auxWrite(p,char,0);					// 设置同步属性个数

	for(int i=0;i<m_propSet.count;i++)
	{
		_Property *property = m_propSet[i];
		if(property->update < 1) continue;
		auxWrite(p,char,i);
		if(UNIT_POS == i)
			p += serializePath(p);
		else
			p += property->val.Save(p,_MaxMsgLength - (signed)( p - s_propUpdateBuf ),false);
		nPropCount++;
	}
	if(nPropCount > 0)
	{
		pMsg->msgLen = p - s_propUpdateBuf;
		p = (char *)(pMsg + 1) + sizeof(m_hand);
		auxWrite(p,char,nPropCount);
		pSendTo->flushMessage(pMsg);
	}

	return true;
}

bool CoEntity::enterScene(CoScene* pScene, short x, short y)
{
	GridVct grid(x, y);
	if ( m_pScene == pScene ) return true;
	if ( !pScene  || !pScene->inMap(grid) ) return false;

	m_pScene = pScene;
	m_sceneInfo = m_pScene->getSceneInfo();

	static _PropPosData data =
	{
		false,	//bMove
		1,		//len
		0,		//idx
		0,		//delay
		0,		//step
		true,	//endPath
	};
	data.path[0] = grid;
	m_position = grid;

	SetPropData(UNIT_POS, (BYTE*)&data, sizeof(data));

	for( int i = 0; i < _SyncRingCount; i++ )
	{
		m_ringOrg[i] = grid;
	}

	m_pScene->attachUnit(this);
	if ( m_gatewayLink && m_clientLink )
	{
		m_inSync = true;
		if ( m_firstCast )
		{
			bcMyEnter();
			m_firstCast = false;
		}
		else
		{
			bcSceneSwitch();
		}
	}
	else
	{
		if ( m_firstCast )
		{
			m_firstCast = false;
		}
	}

	int count = 0;
	handle* pHandle = m_pScene->getEntities(m_position, _SyncRadius, count, eClsTypePlayer);
	if ( pHandle && count > 0 )
	{
		adjustSights(pHandle, count);
	}
	//clean update flags to ensure next flush operation won't send same copy
	for(int i = 0;i<m_propSet.count;i++)
	{
		_Property *property = m_propSet[i];
		property->casted = property->update;
	}

	return true;
}

bool CoEntity::quitScene()
{
	if ( !m_pScene ) return true;

	m_pScene->detachUnit(this);
	m_pScene = NULL;

	clearAroundMe();
	if ( m_inSync )
	{
		clearMyAround();
		m_inSync = false;
	}

	return true;
}

void CoEntity::PosChanged(GridVct& old)
{
	if ( !m_pScene )
	{
		TRACE1_L0("CoEntity::PosChanged FATAL ERROR: entity(%i) is not in a scene\n", m_hand);
		return;
	}
	m_pScene->moveUnit(this, old);

	int m = 0;
	int radius = 0;
	int x = m_position.x;
	int y = m_position.y;
	for( ; m < _SyncRingCount; m++ )
	{
		GridVct pt1(x, y);
		GridVct pt2(m_ringOrg[m].x, m_ringOrg[m].y);
		if ( m_pScene->getDistance(&pt1, &pt2) <= s_ringRadius[m] >> 2 ) break;
		radius = s_ringRadius[m];
	}

	if ( radius > 0 )
	{
		int count = 0;
		handle* pHandle = m_pScene->getEntities(m_position, radius, count);
		if ( pHandle && count > 0 )
		{
			adjustSights(pHandle, count);
		}
		for( int i = 0; i < m; i++ )
		{
			m_ringOrg[i].x = x;
			m_ringOrg[i].y = y;
		}
	}
}

void CoEntity::PropValChanged(int propId)
{
	_Property *property = m_propSet[propId];
	property->update++;

	//如果没有开启自动同步，则属性变动后一般不立即发送同步事件
	//指定了立即同步的属性，只要实体已经在场景中，则位置信息需要立即同步
	//可以接受属性同步的后续条件有两个
	//1，是自己可以接受同步数据
	//2，是周围有可以接受同步数据的实体
	if( ( m_autoCast || ( property->sync && !m_firstCast ) ) && (m_inSync||!m_aroundMe.empty()))
	{
		AppMsg *pMsg = genPropUpdateMessage(propId);
		if(pMsg){
			if (property->radius > 0)
				bcAMessageToGroup(pMsg);
			else
				bcAMessage(pMsg, false);
			property->casted = property->update;
		}
	}
}

HRESULT CoEntity::InitPropSet(int type)
{
	if(!CUnitConfig::Instance().CopyPropSet(type,m_propSet))
	{
		TRACE1_L0("[CoEntity::InitPropSet] failed PropSetID:%d\n",type);
		return E_FAIL;
	}
	return S_OK;
}

bool CoEntity::isInView(handle hand) const
{
	if (m_pScene == 0)
	{
		return false;
	}
	int count = 0;
	handle* pHandle = m_pScene->getEntities(m_position, _SyncRadius, count);
	if (pHandle == 0)
	{
		return false;
	}
	for (int i = 0; i < count; ++i)
	{
		if (pHandle[i] == hand)
		{
			return true;
		}
	}
	return false;
}

PeerHandle* CoEntity::getAroundMe(int& peer_count)
{
	static PeerHandle pPeers[500];
	peer_count = 0;
	pPeers[peer_count].hGate		= m_gatewayLink;
	pPeers[peer_count].hClient		= m_clientLink;
	pPeers[peer_count].gatewayId	= m_gatewayId;
	peer_count++;
	handle h = m_aroundMe.begin();
	while(h != (handle)INVALID_HANDLE)
	{
		CoEntity* pEntity = _EntityFromHandle(h);
		pPeers[peer_count].hGate		= pEntity->m_gatewayLink;
		pPeers[peer_count].hClient		= pEntity->m_clientLink;
		pPeers[peer_count].gatewayId	= pEntity->m_gatewayId;
		peer_count++;
		// ASSERT_(peer_count < 500);
		h = m_aroundMe.next();
	}
	return pPeers;
}

CoEntity* CoEntity::Create(EntityType type, EntityPropType propType)
{
	CoEntity* pEntity = new CoEntity();
	pEntity->m_logicType = type;
	pEntity->m_propType = propType;
	pEntity->InitPropSet(propType);
	return pEntity;
}

HandleMgr		CoEntity::s_hMgr;
short			CoEntity::s_ringRadius[_SyncRingCount] = { 8, 16 };
int				CoEntity::s_entityCounter[MAX_CLASS_TYPE];
char			CoEntity::s_propUpdateBuf[_MaxMsgLength];
CoEntity*		CoEntity::s_exitList[_MaxEnumCount];

_PropPosData	g_PosData;
