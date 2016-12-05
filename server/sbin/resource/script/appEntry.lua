--[[appEntry.lua
描述：
	游戏的主服务器脚本
--]]

package.path = "../resource/script/?.lua;../../../share/lua/?.lua;" .. package.path
print("[Lua] package.path = ", package.path)

ManagedApp = {}

function ManagedApp.start(serverID)
	require "prop.PropEntry"
	require "config.ConfCore"
	require "config.ConfDB"
	require "config.ConfSystem"

	loadCore(serverID)
	loadSystem()
	g_sceneMgr:loadPublicScenes()
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

function ManagedApp.close(reason)
	release(g_timerMgr)
	release(g_sceneMgr)
	release(g_entityMgr)
end