--GMCmdSystem.lua

require "event.EventSetDoer"
--require "game.GMAttributes"

local tonumber = tonumber
local type = type
local __print = print
local function print(format,...)
	__print(
		("GMCmdSystem:%s"):format(
			(tostring(format) or ""):format(...)
		)
	)
end

local GMSystem = ShellSystem:getInstance()

--����goto����ָ��
GMSystem.goto = function(me, roleID, mapID, x, y, targetID, npc)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		if not CoScene:PosValidate(tonumber(mapID),tonumber(x),tonumber(y)) then
			local event = Event.getEvent(ChatEvents_SC_GotoMsgReturn)
			g_eventMgr:fireRemoteEvent(event, player)
			return
		end
		local mapID,x,y =tonumber(mapID),tonumber(x),tonumber(y)
		g_sceneMgr:doSwitchScence(roleID, mapID ,x ,y)
	end
end

-- ���ӵ���ָ��
GMSystem.additem = function(me, roleID, itemID, itemNum)
	local player = g_entityMgr:getPlayer(roleID)
	local itemID, itemNum = tonumber(itemID), tonumber(itemNum) or 1
	if player and itemID then
		local packetHandler = player:getHandler(HandlerDef_Packet)
		packetHandler:addItemsToPacket(itemID, itemNum)
	end
end

--���ó���5���������Ե�ֵ(���������������ǡ�������)
GMSystem.set_pet_all = function(me,roleID,value)
    local player = g_entityMgr:getPlayer(roleID)
	local petID = player:getFollowPetID()
    local pet = g_entityMgr:getPet(petID)
    if pet then
        pet:setAttrValue(pet_add_str,value)
        pet:setAttrValue(pet_add_int,value)
        pet:setAttrValue(pet_add_sta,value)
        pet:setAttrValue(pet_add_spi,value)
        pet:setAttrValue(pet_add_dex,value)
		pet:flushPropsBatch()
    else
        print("û�г�ս���ﲻ�ܽ�����ز���")
        return
    end
end

--���ó���ָ�����Ե�ֵ
GMSystem.set_petattr = function(me,roleID,attrType,value)
    local player = g_entityMgr:getPlayer(roleID)
	local petID = player:getFollowPetID()
    local pet = g_entityMgr:getPet(petID)
    attrType = tonumber(attrType)
    if pet then
        pet:setAttrValue(attrType,value)
		pet:flushPropsBatch()
    else
        print("��ǰû�г�ս���ﲻ�ܽ�����ز���")
        return
    end
end

--Ϊ������Ӽ���
GMSystem.add_pet_skills = function(me,roleID,...)
    local player = g_entityMgr:getPlayer(roleID)
	local petID = player:getFollowPetID()
    local pet = petID and g_entityMgr:getPet(petID)
	if not pet then
		print("û�г�ս����޷�ѧϰ����")
		return
	end
	local handler = pet:getHandler(HandlerDef_PetSkill)
	if handler:isFull() then
		g_eventMgr:fireRemoteEvent(
			Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_Pet,PetError.CantLearnMore),player
		)
		return
	end
	for i = 1,select('#',...) do
		local value = select(i,...)
		local id = tonumber(value)

		local access,rid = handler:canAddSkill(id)
		if not access then
			print(("������ӳ��＼��:%s"):format(id))
			if rid == id then
				--�����ظ�����
				g_eventMgr:fireRemoteEvent(
					Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_Pet,PetError.DuplicateSkill),player
				)
			else
				--���и߼�����
				g_eventMgr:fireRemoteEvent(
					Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_Pet,PetError.OwnSuperior),player
				)
			end
		else
			if rid then
				handler:removeSkill(rid)
			end
			handler:addSkill(PetSkill(id,2))
		end
	end
	handler:sendFreshs(player)
	handler:sendForgets(player)
	pet:flushPropsBatch()
	print "��ӳ��＼��"
end

-- ���ø�������ָ��
GMSystem.resetectype = function(me, roleID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		local ectypeHandler = player:getHandler(HandlerDef_Ectype)
		ectypeHandler:resetEctypeInfo()
	end
end

-- ���븱��ָ��
GMSystem.enterectype = function(me, roleID, ectypeID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		ectypeID = tonumber(ectypeID)
		g_ectypeMgr:enterEctype(player, ectypeID)
	end
end

--����ָ�����Ե�ֵ��ս���ں�ս���ⶼ������
GMSystem.set_attr = function(me, roleID, attrType, value, targetID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		attrType = tonumber(attrType)
		local fightServerID = player:getFightServerID()
		local bFighting = player:isFighting()
		if bFighting and fightServerID then
			local event = Event.getEvent(FightEvents_SF_SetAttr, player:getDBID(), attrType, value, targetID)
			g_eventMgr:fireWorldsEvent(event, fightServerID)
		else
			player:setAttrValue(attrType, value)
		end
	end
end

-- ��������������� + ս������ԣ�ս����û����
GMSystem.set_all = function(me, roleID, value, targetID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		local fightServerID = player:getFightServerID()
		local bFighting = player:isFighting()
		if bFighting and fightServerID then
			return
		else
			value = tonumber(value)
			if value < 0 then
				value = 0
			end
			player:setAttrValue(player_add_str, value)
			player:setAttrValue(player_add_int, value)
			player:setAttrValue(player_add_sta, value)
			player:setAttrValue(player_add_spi, value)
			player:setAttrValue(player_add_dex, value)
		end
		local curHp = player:getHp()
		local maxHp = player:getMaxHp()
		if curHp > maxHp then
			player:setHp(maxHp)
		end
		local curMp = player:getMp()
		local maxMp = player:getMaxMp()
		if curMp > maxMp then
			player:setMp(maxMp)
		end
	end
end

GMSystem.inc_all = function(me, roleID, value, targetID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		local fightServerID = player:getFightServerID()
		local bFighting = player:isFighting()
		if bFighting and fightServerID then
			return
		else
			value = tonumber(value)
			player:setAttrValue(player_add_str, player:getAttrValue(player_add_str) + value)
			player:setAttrValue(player_add_int, player:getAttrValue(player_add_int) + value)
			player:setAttrValue(player_add_sta, player:getAttrValue(player_add_sta) + value)
			player:setAttrValue(player_add_spi, player:getAttrValue(player_add_spi) + value)
			player:setAttrValue(player_add_dex, player:getAttrValue(player_add_dex) + value)
		end
	end
end

--���������������ȫ����ս���ں�ս���ⶼ������
GMSystem.full = function(me, roleID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		local fightServerID = player:getFightServerID()
		local bFighting = player:isFighting()
		if bFighting and fightServerID then
			local event = Event.getEvent(FightEvents_SF_SetAttr, player:getDBID(), player_hp, player:getMaxHp())
			g_eventMgr:fireWorldsEvent(event, fightServerID)
			event = Event.getEvent(FightEvents_SF_SetAttr, player:getDBID(), player_mp, player:getMaxMp())
			g_eventMgr:fireWorldsEvent(event, fightServerID)
		else
			local curHp = player:getHp()
			local maxHp = player:getMaxHp()
			if curHp < maxHp then
				player:setHp(maxHp)
			end
			local curMp = player:getMp()
			local maxMp = player:getMaxMp()
			if curMp < maxMp then
				player:setMp(maxMp)
			end
		end
	end
end

--���� �����ķ��ȼ�([set_skill 101, 30] 101->�ķ�id��30->�ȼ�)
GMSystem.set_skill = function(me, roleID, id, level)
	local player = g_entityMgr:getPlayer(roleID)
	local handler = player:getHandler(HandlerDef_Mind)
	local add_level = tonumber(level)
	local mind_id = tonumber(id)

	local result
	local add_max_level = 0
	local max_level = player:getLevel() + 10
	local minds = {}
	if mind_id == 1 then
		minds = SchoolMind[player:getSchool()]
	else
		local mind = handler:get_mind(mind_id)
		if not mind then
			print ('ERROR: not exist mind', mind_id)
			return
		end
		if mind.level >= MAX_MIND_LEVEL then
			print ('ERROR: mind arrived max level')
			return
		end

		if mind.db.position == 0 then
			max_level = handler:get_main_mind_level()
		end
		table.insert(minds, mind_id)
	end
	local context = {}
	for _, id in ipairs(minds) do
		local add_value = add_level
		local mind = handler:get_mind(id)
		add_max_level = max_level - mind.level
		if add_max_level <= 0 then
			add_value = 0
			print ('ERROR: mind arrived max avalibe level')
		elseif add_value > add_max_level then
			add_value = add_max_level
		end
		result = mind:upgrade(add_value)
		result.mindID = id
		MindSystem.getInstance().answerUpgrade(player, result)

		if result.up_level ~= 0 then
			context.mind_id = id
			context.add_level = result.up_level
			LuaDBAccess.upgradeMind(player:getDBID(), id, result.up_level, MindSystem.getInstance().onUpgradeMind, context)
		end
	end
end

--���� �����ķ��ȼ�([set_mind 101, 30] 101->�ķ�id��30->�ȼ�)
GMSystem.set_mind = function(me, roleID, mind_id, level)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		mind_id = tonumber(mind_id)
		level = tonumber(level)
		local handler = player:getHandler(HandlerDef_Mind)
		handler:gm_set_mind_level(mind_id, level)
	end
end

--����ű�ս��(��ʽ��s_fight 12 12�ǽű�ս��ID)
GMSystem.s_fight = function(me,roleID,scriptID ,mapID)
	local player = g_entityMgr:getPlayer(roleID)
	local script_ID = tonumber(scriptID)
	local map_id = tonumber(mapID)
	if player and script_ID then
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
		local finalList = {}
		--�ӳ���
		for k,player in ipairs(playerList) do
			table.insert(finalList,player)
			local petID = player:getFollowPetID()
			if petID then
				local pet = g_entityMgr:getPet(petID)
				table.insert(finalList,pet)
			end
		end
		g_fightMgr:startScriptFight(finalList, script_ID,  map_id ,FightBussinessType.Test)
	end
end

--����ű�ս��(��ʽ��s_fightType 12 12�ǽű�ս��ID,ս��������)
--FightBussinessType = {--1,--Ұ��2,--�д�3,--PK4,--����5,--����6,--�ɼ�7,--�ر�ͼ}
GMSystem.s_fightType = function(me,roleID,scriptID,fightType,mapID)
	local player = g_entityMgr:getPlayer(roleID)
	local script_ID = tonumber(scriptID)
	local map_id = tonumber(mapID)
	if player and script_ID then
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
		local finalList = {}
		--�ӳ���
		for k,player in ipairs(playerList) do
			table.insert(finalList,player)
			local petID = player:getFollowPetID()
			if petID then
				local pet = g_entityMgr:getPet(petID)
				table.insert(finalList,pet)
			end
		end
		if not fightType then
			fightType = FightBussinessType.Test
		else
			fightType = toNumber(fightType)
		end
		g_fightMgr:startScriptFight(finalList, script_ID,  map_id ,fightType)
	end
end

--�͹���ս��(��ʽ��m_fight 12 13 14 (12,13,14�ǹ���ID) )
GMSystem.m_fight = function(me,roleID,...)
	local player = g_entityMgr:getPlayer(roleID)
	--�����б�
	local m_IDs = {}
	for idx = 1,select('#',...) do
		local id = select(idx,...)
		table.insert(m_IDs,tonumber(id))
	end

	local mapID
	--����б�
	if player and #m_IDs > 0 then
		local playerList = {}
		local teamHandler = player:getHandler(HandlerDef_Team)
		if teamHandler:isTeam() then
			playerList = teamHandler:getTeamPlayerList()
		else
			table.insert(playerList,player)
		end
		print("����ս��")
		local finalList = {}
		--�ӳ���
		for k,player in ipairs(playerList) do
			table.insert(finalList,player)
			local petID = player:getFollowPetID()
			if petID then
				local pet = g_entityMgr:getPet(petID)
				table.insert(finalList,pet)
			end
		end
		g_fightMgr:startPveFight(finalList, m_IDs,  mapID ,FightBussinessType.Test)
	end
end

-- ��������(��ʽ��add_task 2002 (2002������ID) )
GMSystem.add_task = function(me, roleID, taskID, state)
	local player = g_entityMgr:getPlayer(roleID)
	if player and taskID then
		g_taskDoer:doRecetiveTask(player, tonumber(taskID), state)
	end
end

-- ��������(��ʽ��finish_task 2002 (2002������ID) )
GMSystem.finish_task = function(me, roleID, taskID)
	local player = g_entityMgr:getPlayer(roleID)
	if player and taskID then
		player:getHandler(HandlerDef_Task):finishTaskByID(tonumber(taskID))
	end
end

-- ��������(��ʽ��finish_task 2002 (2002������ID) )
GMSystem.done_scriptTask = function(me, roleID, scriptID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		TaskCallBack.script(player, scriptID, true)
	end
end

--����㲥(��ʽ: horn ok (ok������))
GMSystem.horn = function(me, roleID, msg)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		g_chatMgr:sendMessage(player, ChatChannelType.World, msg, {}, true)
	end
end

--�˳�ս��(��ʽ: e_fight )
GMSystem.e_fight = function(me, roleID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		local fightServerID = player:getFightServerID()
		local bFighting = player:isFighting()
		if bFighting and fightServerID then
			local event = Event.getEvent(FightEvents_SF_ExitFight, player:getDBID())
			g_eventMgr:fireWorldsEvent(event, fightServerID)
		end
	end
end

-- ��������
GMSystem.set_money = function(me, roleID, value)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		value = tonumber(value)
		player:setMoney(value)
	end
end

-- ���ð���
GMSystem.set_submoney = function(me, roleID, value)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		value = tonumber(value)
		player:setSubMoney(value)
	end
end

-- �������
GMSystem.set_cashmoney = function(me, roleID, value)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		value = tonumber(value)
		player:setCashMoney(value)
	end
end

GMSystem.send_mail = function(me,roleID,...)
end

GMSystem.addGoldCoin = function(me, roleID, value)
	local player = g_entityMgr:getPlayer(roleID)
	local roleDBID = player:getDBID()
	if player then
		value = tonumber(value)
		LuaDBAccess.AddGoldCoin(roleDBID, value, GMSystem_addGoldCoin, roleDBID)
	end
end

GMSystem.deductGoldCoin = function(me, roleID, value)
	local player = g_entityMgr:getPlayer(roleID)
	local roleDBID = player:getDBID()
	if player then
		value = tonumber(value)
		LuaDBAccess.DeductGoldCoin(roleDBID ,value, GMSystem_deductGoldCoin, roleDBID)
	end
end

-- Ԫ�����ӵĻص�����
function GMSystem_addGoldCoin(recordList, dbId)
	local params = recordList[1]
	local player = g_playerMgr:findPlayerByDBID(dbId)
	player:setGoldCoin(params[1].goldCoin)
end

-- �۳�Ԫ���Ļص�����
function GMSystem_deductGoldCoin(recordList, dbId)
	local params = recordList[1]
	if 0 == params[1].result then
		-- ʧ��...
	else
		-- �ɹ�
		local player = g_playerMgr:findPlayerByDBID(dbId)
		player:setGoldCoin(params[1].goldCoin)
	end
end

GMSystem.test_pet = function(me, roleID, configID)
	local player = g_entityMgr:getPlayer(roleID)
	local roleDBID = player:getDBID()
	if player then
		if player:canAddPet() then
			local pet = g_entityFct:createPet(tonumber(configID))
			if not pet then
				print(("����%s��û�����õ�"):format(configID))
				return
			end
			pet:setOwnerID(player:getID())
			pet:setOwnerDBID(player:getDBID())
			player:addPet(pet)
		else
			g_eventMgr:fireRemoteEvent(
				Event.getEvent(
					ClientEvents_SC_PromptMsg, eventGroup_Pet, PetError.MaxPetNumber
				),player
			)
		end
	end
end

GMSystem.rename_pet = function(me,roleID,name)
	local player = g_entityMgr:getPlayer(roleID)
	local roleDBID = player:getDBID()
	if not player then return false end
	for _,pet in pairs(player:getPetList()) do
		if pet:getPetStatus() == PetStatus.Fight then
			pet:setName(name)
			return true
		end
	end
	return false
end

GMSystem.test_pvp = function(me,roleID)

	local player = g_entityMgr:getPlayer(roleID)
	local teamHandler = player:getHandler(HandlerDef_Team)
	if teamHandler:isTeam() then

		local playerList1 = {}
		local playerList2 = {}

		local playerList = teamHandler:getTeamPlayerList()
		local i = 1
		for _,player in ipairs(playerList) do
			if (i%2) == 0 then
				table.insert(playerList2,player)
			else
				table.insert(playerList1,player)
			end
			i = i + 1
		end

		print("����ս��")
		g_fightMgr:startPvpFight(playerList1, playerList2, 2)
	else
		return
	end
end

-- ����װ��ָ��
GMSystem.add_equipment = function(me, roleID, itemId, itemNum, bindFlag, blueAttrNum, remouldLevel)
	itemId = tonumber(itemId)
	itemNum = tonumber(itemNum)
	local itemConfig = tItemDB[itemId]
	if not itemConfig then
		-- �Ҳ�����������
		return
	end
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		-- ���ɵ��������ֳ�
		local propertyContext = {}
		propertyContext.itemID = itemId
		propertyContext.effect = 0
		propertyContext.identityFlag = true
		if itemConfig.Class == ItemClass.Equipment then
			propertyContext.expireTime = itemConfig.MaxDurability*ConsumeDurabilityNeedFightTimes
			-- ��������
			g_itemMgr:generateEquipBaseAttr(propertyContext, itemConfig)

			if itemConfig.Quality == ItemQuality.NoIdentify then
				-- ����δ������־
				propertyContext.identityFlag = false
			else
				-- ��������
				if blueAttrNum then
					blueAttrNum = tonumber(blueAttrNum)
					if blueAttrNum > EquipBlueAttrMaxNum then
						blueAttrNum = EquipBlueAttrMaxNum
					elseif blueAttrNum <= 1 then
						blueAttrNum = 1
					end
				end
				g_itemMgr:generateEquipAddAttr(propertyContext, itemConfig, blueAttrNum)
			end
			-- ������
			g_itemMgr:generateEquipBindAttr(propertyContext, itemConfig)
		end
		for i = 1,itemNum do
			local equip = g_itemMgr:createItemFromContext(propertyContext, 1)
			if equip then
				if bindFlag ~= nil then
					equip:setBindFlag(Bind)
				else
					equip:setBindFlag(UnBind)
				end
				local packetHandler = player:getHandler(HandlerDef_Packet)
				packetHandler:addItems(equip:getGuid())
			end
		end
	end
end

-- ��������װ�����;ö�
GMSystem.set_durable = function(me, roleID, durable)
	durable = tonumber(durable)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		local equipHandler = player:getHandler(HandlerDef_Equip)
		local equip = equipHandler:getEquip()
		local equipPack = equip:getPack()
		for gridIndex = 1, equipPack:getCapability() do
			local equip = equipPack:getGridItem(gridIndex)
			if equip then
				local maxDurability = equip:getMaxDurability()
				if durable > maxDurability then
					durable = maxDurability
				elseif durable < 0 then
					durable = 0
				end
				equip:setCurDurability(durable * ConsumeDurabilityNeedFightTimes)
			end
		end
		equipPack:updateClient()
	end
end

-- ��ձ���
GMSystem.empty_packet = function(me, roleID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		local packetHandler = player:getHandler(HandlerDef_Packet)
		local packet = packetHandler:getPacket()
		for packindex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
			local pack = packet:getPack(packindex)
			if pack then
				for gridIndex = 1, pack:getCapability() do
					pack:destroyItem(gridIndex, false)
				end
			end
		end
		packet:updateItemToClient()
	end
end

--�������
GMSystem.add_ride = function(me,roleID,rideID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		g_rideMgr:addRide(player,tonumber(rideID))
	end
end

-- ȡ�����е�buff
GMSystem.empty_buff = function(me,roleID)
	local player = g_entityMgr:getPlayer(roleID)
	if player then
		local buffHandler = player:getHandler(HandlerDef_Buff)
		buffHandler:calcelAllBuff()
	end
end

-- �޸İﹱ
GMSystem.set_factionMemberMoney = function(me, roleID,money)

	local player = g_entityMgr:getPlayer(roleID)
	local playerDBID = player:getDBID()
	local event = Event.getEvent(FactionEvent_BB_UpdateFactionMemberInfo,"memberMoney",playerDBID,toNumber(money))
	g_eventMgr:fireWorldsEvent(event,SocialWorldID)

end

-- ����ʽ�
GMSystem.set_factionMoney = function(me, roleID,money)

	local player = g_entityMgr:getPlayer(roleID)
	local playerDBID = player:getDBID()
	local event = Event.getEvent(FactionEvent_BB_UpdateFactionInfo,"factionMoney",playerDBID,toNumber(money))
	g_eventMgr:fireWorldsEvent(event,SocialWorldID)

end

-- �������
GMSystem.set_factionFame = function(me, roleID,fame)

	local player = g_entityMgr:getPlayer(roleID)
	local playerDBID = player:getDBID()
	local event = Event.getEvent(FactionEvent_BB_UpdateFactionInfo,"factionFame",playerDBID,toNumber(fame))
	g_eventMgr:fireWorldsEvent(event,SocialWorldID)

end

-- ���ȼ�
GMSystem.set_factionLevel = function(me, roleID,level)

	local player = g_entityMgr:getPlayer(roleID)
	local playerDBID = player:getDBID()
	local event = Event.getEvent(FactionEvent_BB_UpdateFactionInfo,"factionLevel",playerDBID,toNumber(level))
	g_eventMgr:fireWorldsEvent(event,SocialWorldID)

end
-- �˳����
GMSystem.set_exitFaction = function(me, roleID)

	local player = g_entityMgr:getPlayer(roleID)
	local playerDBID = player:getDBID()
	local event = Event.getEvent(FactionEvent_BB_ExitFaction,playerDBID)
	g_eventMgr:fireWorldsEvent(event,SocialWorldID)

end

-- ����ֵ

GMSystem.set_Tiredness = function(me, roleID,inputValue)
	local value = tonumber(inputValue)
	if value >= 0 and value <= MaxPlayerTiredness then
		local player = g_entityMgr:getPlayer(roleID)
		player:setTiredness(value)
	end
end

-- ��������ֵ
GMSystem.set_Practise = function(me, roleID,inputValue)
	local value = tonumber(inputValue)
	if value >= 0 then
		local player = g_entityMgr:getPlayer(roleID)
		player:setPractise(value)
	end
end

-- �������ֵ
GMSystem.add_Practise = function(me, roleID,inputValue)
	local value = tonumber(inputValue)
	if value >= 0 then
		local player = g_entityMgr:getPlayer(roleID)
		player:addPractise(value)
	end
end


--[[
	ͬ��������Ե�ս����
	ֻ��ͬ�������Լ����е�����
]]
local function onPlayerAttrToWar(player,attrName,value)
	local fightServerID = player:getFightServerID()
	if player:isFighting() and fightServerID then
		local event = Event.getEvent(FightEvents_SF_SetAttr, player:getDBID(), attrName, value, targetID)
		g_eventMgr:fireWorldsEvent(event, fightServerID)
	end
end

--[[
	ͬ���������Ե�ս����
	��ǰս������֧��
	local function onPetAttrToWar(pet,attrName,value)
	end
]]

--[[
	��ȡ���ս��������
]]
local function onPlayerWarAttr(player,attrName)
	local fightServerID = player:getFightServerID()
	local bFighting = player:isFighting()
	if bFighting and fightServerID then
		local event = Event.getEvent(FightEvents_SF_QueryAttr, player:getDBID(), attrName, targetID)
		g_eventMgr:fireWorldsEvent(event, fightServerID)
	end
end

local function onGetPlayer(id)
	return g_entityMgr:getPlayer(id)
end

local function onGetPet(id)
	local player = onGetPlayer(id)
	if player then
		local petID = player:getFollowPetID()
		return petID and g_entityMgr:getPet(petID)
	end
	return nil
end

local function onPetAttrSet(entity)
	entity:flushPropsBatch()
end

--[[
local function MakeEntityGM(Attrs,onGetEntity,onAttrToWar,onWarAttr,onAttrSet)
	for attrName,detail in pairs(Attrs) do
		--����������ֵ����
		--�������Լ�ֵ����
		--�������Ի�ֵ����

		local get_func = detail.get_func		--ȡֵ����
		if not get_func and attrName > 0 then	--ֻҪ���������ǺϷ���
			get_func = function(entity)
				return entity:getAttrValue(attrName)	--����ʹ��Ĭ�ϵ����Լ���ȡֵ����
			end
		end

		local influence = nil
		local limits = detail.limits
		if limits then
			influence = function(entity,prev,value)
				local gap = value - prev
				local yaya = entity:getAttrValue(limits)
				if gap > 0 then
					yaya = yaya + gap
				end
				if yaya > value then
					yaya = value
				elseif yaya < 1 then
					yaya = 0
				end
				entity:setAttrValue(limits,yaya)
			end
		end

		local set_func = detail.set_func		--��ֵ����
		if not set_func and attrName > 0 and not detail.components then
			set_func = function(entity,value)
				entity:setAttrValue(attrName,value)
				if onAttrToWar then
					onAttrToWar(entity,attrName,value)
				end
			end
		else
			--print(("%sû����ֵ����"):format(detail.alias))
		end

		local ensure_func = nil					--ȷ��ֵ���ᳬ��ֵ��
		if set_func then						--ֻ���ܹ���ֵ�����Բ���Ҫȷ��ֵ��
			local limited = detail.limited
			local default = detail.default or 0
			if limited then
				local function maxValue(entity)
					if type(limited) == "string" then
						return tonumber(limited)
					else
						return entity:getAttrValue(limited)
					end
				end
				ensure_func = function(entity,value)
					if value < default then
						return default
					end
					local max = maxValue(entity)
					if value > max then
						return max
					end
					return value
				end
			else
				ensure_func = function(entity,value)
					if value < default then
						return default
					end
					return value
				end
			end
		end

		local add_func = detail.add_func
		if not add_func then
			local components = detail.components
			if components then					--��ֵͨ������ʵ��
				local delta = components.delta
				add_func = function(entity,value)
					local haha = entity:getAttrValue(delta) + value
					if haha < 1 then haha = 0 end
					entity:setAttrValue(delta, haha)
					if onAttrToWar then
						onAttrToWar(entity,delta,haha)
					end
				end
			elseif attrName > 0 then
				add_func = function(entity,value)
					local gugu = ensure_func(entity,entity:getAttrValue(attrName) + value)
					set_func(entity,gugu)
				end
			elseif set_func and get_func then
				add_func = function(entity,value)
					local hela = get_func(entity)
					set_func(entity,hela + value)
				end
			end
		end

		if set_func then
			GMSystem[ ("set_%s"):format(detail.alias) ] = function(self,id,value)
				local entity = onGetEntity(id)
				if not entity then
					print( ("set_%s:no such entity!"):format(detail.alias) )
					return
				end
				local prev = get_func and get_func(entity)
				set_func(entity,ensure_func(entity,tonumber(value)))
				if prev and influence then
					influence(entity,prev,get_func(entity))
				end
				if onAttrSet then
					onAttrSet(entity)
				end
			end
		else
			--print(("%sû��ȡֵ����"):format(detail.alias))
		end

		if add_func then
			GMSystem[ ("add_%s"):format(detail.alias) ] = function(self,id,value)
				local entity = onGetEntity(id)
				if not entity then
					print( ("set_%s:no such entity!"):format(detail.alias) )
					return
				end
				local prev = get_func(entity)
				add_func(entity,tonumber(value))
				if influence then
					influence(entity,prev,get_func(entity))
				end
				if onAttrSet then
					onAttrSet(entity)
				end
			end
		else
			--print(("%sû�м�ֵ����"):format(detail.alias))
		end

		if onWarAttr and attrName > 0 then
			GMSystem[ ("get_%s"):format(detail.alias) ] = function(self,id)
				local entity = onGetEntity(id)
				if not entity then
					print( ("set_%s:no such entity!"):format(detail.alias) )
					return
				end
				onWarAttr(entity,attrName)
			end
		end

	end
end

MakeEntityGM( PlayerGMAttrs,onGetPlayer,onPlayerAttrToWar,onPlayerWarAttr,nil)
MakeEntityGM( PetGMAttrs,onGetPet,nil,nil,onPetAttrSet)
]]