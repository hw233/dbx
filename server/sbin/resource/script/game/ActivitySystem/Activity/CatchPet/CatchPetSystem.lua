--[[CatchPetSystem.lua
	����ҵ��ϵͳ
--]]

require "game.ActivitySystem.Activity.CatchPet.CatchPet"
require "game.ActivitySystem.Activity.CatchPet.CatchPetManager"
CatchPetSystem = class(EventSetDoer, Singleton)

function CatchPetSystem:__init()
	self._doer = 
	{
		[ActivityEvent_CS_EnterPatrolFight]				= CatchPetSystem.onEnterPatrolFight,
		-- ս������ǰ�Ƴ�NPC
		[FightEvents_SS_FightEnd_beforeClient]			= CatchPetSystem.onFightEndBefor,
		-- ս�������������л�����
		[FightEvents_SS_FightEnd_afterClient]			= CatchPetSystem.onFightEndAfter,
	}
end

function CatchPetSystem:onEnterPatrolFight(event)
	local params = event:getParams()
	local roleID = params[1]
	local patrolNpcID = params[2]
	if not roleID then
		return
	end
	local player = g_entityMgr:getPlayerByID(roleID)
	if not player then
		return
	end

	local patrolNpc = g_entityMgr:getPatrolNpc(patrolNpcID)
	if not patrolNpc then
		return
	end
	local catchPet = patrolNpc:getCatchPet()
	if catchPet and not patrolNpc:getOwnerID() then
		patrolNpc:setOwnerID(player:getID())
		local scriptID = patrolNpc:getScriptID()
		local fightID = self:startPatrolFight(player, scriptID)
		-- �ڵ�ǰ�������м�¼ս��ID �� Ѳ��NPC����ID
		catchPet:attachPatrolNpc(fightID, patrolNpcID)
		local moveHandler = patrolNpc:getHandler(HandlerDef_Move)
		moveHandler:DoStopMove()
	end
end

function CatchPetSystem:startPatrolFight(player, scriptID)
	local playerList = {}
	local teamHandler = player:getHandler(HandlerDef_Team)
	if teamHandler:isTeam() then
		if teamHandler:isLeader() then
			playerList = teamHandler:getTeamPlayerList()
		elseif teamHandler:isStepOutState() then
			table.insert(playerList,player)
		end
	else
		table.insert(playerList,player)
	end
	--�ӳ���
	local finalList = {}
	for k,player in ipairs(playerList) do
		table.insert(finalList,player)
		local petID = player:getFightPetID()
		if petID then
			local pet = g_entityMgr:getPet(petID)
			table.insert(finalList,pet)
		end
	end
	local fightID = g_fightMgr:startScriptFight(finalList, scriptID, nil, FightBussinessType.ActivityPatrol)
	return fightID
end

function CatchPetSystem:onFightEndBefor(event)
	local params = event:getParams()
	local fightEndResults = params[1]
	local scriptID = params[2]
	local fightID = params[4]
	local result = false
	-- �ж����ս������ʤ��
	for playerID,isWin in pairs(fightEndResults) do
		result = isWin
		break
	end
	g_catchPetMgr:onFightEndBefor(fightID, result, fightEndResults)
end

-- ս���������жϻ�Ƿ�رգ�����رգ��ڴ������
function CatchPetSystem:onFightEndAfter(event)
	local params = event:getParams()
	local fightEndResults = params[1]
	local scriptID = params[2]
	local fightID = params[4]
	local result = false
	
	g_catchPetMgr:onFightEndAfter(fightID, result, fightEndResults)
end

function CatchPetSystem.getInstance()
	return CatchPetSystem()
end

EventManager.getInstance():addEventListener(CatchPetSystem.getInstance())
