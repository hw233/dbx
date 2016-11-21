--[[appEntry.lua
������
	��Ϸ�����������ű�
--]]

package.path = "../resource/script/?.lua;../../../share/lua/?.lua;" .. package.path
print("[Lua] package.path = ", package.path)

require "prop.PropEntry"
require "config.ConfCore"
require "config.ConfDB"
require "config.ConfSystem"

ManagedApp = {}
function ManagedApp.start(serverID)
	loadCore(serverID)
	loadSystem()
	loadUnitConfig()
	g_SceneMgr:loadPublicScenes()
end

function ManagedApp.timerFired(timerID, state)
	if state == ScriptTimerNormal then
		g_timerMgr:update(timerID)
	else
		g_timerMgr:notify(timerID, state)
	end
end

function ManagedApp.onExeSP(operationID, recordList, errorCode)
	LuaDBAccess.onExeSP(operationID, recordList, errorCode)
end

function ManagedApp.EntityStartMove(entityId)
end

function ManagedApp.EntityEndMove(entityId)
end

function ManagedApp.onPlayerMessage(hLink, msg)
	g_playerMgr:onPlayerMessage(hLink, msg)
end