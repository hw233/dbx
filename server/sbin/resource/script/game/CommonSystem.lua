--[[CommonSystem.lua
������
    ���ܿͻ��˷�����ָ��ҵ��ϵͳ����Ϣ
--]]
require "base.base"
CommonSystem = class(EventSetDoer, Singleton)
function CommonSystem:__init()
	self._doer = {
		[GoodsEvents_CS_CollectState] = CommonSystem.setPlayerCollectState,
		}
end


--������Ҷ���״̬
function CommonSystem:setPlayerCollectState(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	local collectState = params[1]
	player:setCollectState(state)
end

function CommonSystem.getInstance()
	return CommonSystem()
end

EventManager:getInstance():addEventListener(CommonSystem.getInstance())