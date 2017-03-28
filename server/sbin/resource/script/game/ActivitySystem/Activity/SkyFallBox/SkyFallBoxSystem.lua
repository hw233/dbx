--[[SkyFallBoxSystem.lua
	�콵����ϵͳ
--]]

require "game.ActivitySystem.Activity.SkyFallBox.SkyFallBoxUtils"

SkyFallBoxSystem = class(EventSetDoer, Singleton)

function SkyFallBoxSystem:__init()
	self._doer = 
	{
		[FightEvents_SS_FightEnd_afterClient]	= SkyFallBoxSystem.onFightEnd,
	}
end

-- ������ս������
function SkyFallBoxSystem:onFightEnd(event)
	local params			= event:getParams()
	local fightEndResults	= params[1]	--ս�����
	local scriptID			= params[2]	--�ű�ID
	local monsterDBIDs		= params[3]	--������Ϣ
	local fightID			= params[4]	--ս��ID
	local fightInfo			= params[5]	--ս����Ϣ(�����޽����Ĺ�������ͳ����Ϣ)
	local bWin = false
	local teamPlayerID = nil

	--����������������б��е���
	local activityFlag = g_skyFallBoxMgr:getActivityFlag()
	if not activityFlag then
		return
	end

	for playerID,isWin in pairs(fightEndResults) do
		--ֻ��Ӯ�˲��л����ñ���
		bWin = isWin
		if not bWin then
			return
		end
		player = g_entityMgr:getPlayerByID(playerID)
		if instanceof(player,Player) then
			local handler = player:getHandler(HandlerDef_Activity)
			if not handler then
				print("Error of getHandler in SkyFallBoxSystem.lua")
			end

			local point = math.random(100)
			if point <= rewardProbability and handler:getSkyFallBoxNum() < rewardBoxLimit then
				--�����ϱ���δ�������ޣ���������Ϊ���Ի�ñ���ʱ

				--������ұ���
				local packetHandler = player:getHandler(HandlerDef_Packet)
				local itemInfo = {}
				local allItem = {}
				packetHandler:addItemsToPacket(1031021 ,1)
				itemInfo.itemID = 1031021
				itemInfo.itemNum = 1

				if table.size(itemInfo) > 0 then
					table.insert(allItem,itemInfo)
					g_dropMgr:sendRewardMessageTip(player, 11, allItem)
				end

				--���»�ڼ����񱦺�����				
				local newBoxNum = handler:getSkyFallBoxNum() + 1
				handler:setSkyFallBoxNum(newBoxNum)

				--֪ͨ�ͻ���
				g_skyFallBoxMgr:notifyToClient(player,newBoxNum)

			end
			

		end
	end
end


function SkyFallBoxSystem.getInstance()
	return SkyFallBoxSystem()
end

EventManager.getInstance():addEventListener(SkyFallBoxSystem.getInstance())