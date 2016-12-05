--[[EquipPlayingSystem.lua
����:
	װ���淨ϵͳ��������װ��������װ���������á�װ������ǿ����װ�����졢װ����������Ʒ��������Ʒ�ϳɵ�
]]

EquipPlayingSystem = class(EventSetDoer, Singleton)

function EquipPlayingSystem:__init()
	self._doer =
	{
		--װ������
		[EquipPlayingEvent_CS_EquipMake_Request]		= EquipPlayingSystem.onEquipMakeRequest,
		--װ���ֽ�
		[EquipPlayingEvent_CS_EquipAnalyse_Request]		= EquipPlayingSystem.onEquipAnalyseRequest,
		--�鿴װ����Ϣ
		[EquipPlayingEvent_CS_ViewEquips_Request]		= EquipPlayingSystem.onViewEquipRequest,
		-- װ����������
		[EquipPlayingEvent_CS_AttrReset_Request]		= EquipPlayingSystem.onAttrResetRequest,
		-- װ������ǿ��
		[EquipPlayingEvent_CS_AttrImprove_Request]		= EquipPlayingSystem.onAttrImproveRequest,
		-- װ������
		[EquipPlayingEvent_CS_EquipRemould_Request]		= EquipPlayingSystem.onEquipRemouldRequest,
		-- װ������
		[EquipPlayingEvent_CS_EquipRefining_Request]	= EquipPlayingSystem.onEquipRefiningRequest,
		-- ��Ʒ����
		[EquipPlayingEvent_CS_AdornMake_Request]		= EquipPlayingSystem.onAdornMakeRequest,
		-- ��Ʒ�ϳ�
		[EquipPlayingEvent_CS_AdornSynthetict_Request]	= EquipPlayingSystem.onAdornSyntheticRequest,
	}
end

function EquipPlayingSystem.loadRoleInfoAndEquipReturn(recordList,player)
	local roleInfo = {}
	local viewResult = {}
	local roleInfoList = recordList[1][1]
	roleInfo = {name = roleInfoList.name,ID = roleInfoList.ID,level = roleInfoList.level,school = roleInfoList.school,posite = {mapID = roleInfoList.mapID, x = roleInfoList.xPos, y = roleInfoList.yPos},modelID = roleInfoList.modelID}
	for i = 1, table.size(recordList[2]) do
		local gridItem = recordList[2][i]
		local propertyContext = {}
		propertyContext.ID = gridItem.itemID
		propertyContext.bindFlag = gridItem.bindFlag
		propertyContext.curDurability = gridItem.curDurability
		propertyContext.remouldLevel = gridItem.remouldLevel
		propertyContext.completePercent = gridItem.completePercent 
		propertyContext.baseEffect = serialize(gridItem.baseEffect)
		propertyContext.addEffect = serialize(gridItem.addEffect)
		propertyContext.bindEffect = serialize(gridItem.bindEffect)
		propertyContext.refiningEffect = serialize(gridItem.refiningEffect)
		table.insert(viewResult,propertyContext)
	end
	-- ֪ͨ�ͻ��˸�����
	local event = Event.getEvent(EquipPlayingEvent_SC_ViewEquips_Request,viewResult,roleInfo)
	g_eventMgr:fireRemoteEvent(event, player)
end

--�鿴װ��
function EquipPlayingSystem:onViewEquipRequest(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end

	local targetID = params[1]
	local targetName = params[2]
	--�õ�Ŀ�����
	local target = g_entityMgr:getPlayerByDBID(targetID)
	target = target or g_entityMgr:getPlayerByName(targetName)
	--����
	if target then
		local roleInfo = {}
		local viewResult = {}
		local mapID, xPos, yPos = target:getCurPos()
		roleInfo = {name = target:getName(),ID = target:getID(),level = target:getLevel(),school = target:getSchool(),posite = {mapID = mapID, x = xPos, y = yPos},modelID = target:getModelID(),bodyTex = target:getCurBodyTex(),headTex = target:getCurHeadTex()}
		
		local equipHandler = target:getHandler(HandlerDef_Equip)
		local equip = equipHandler:getEquip()
		local equipPack = equip:getPack()
		for i = 1, equipPack:getCapability() do
			local gridItem = equipPack.grids[i]
			if gridItem then
				-- ��õ��������ֳ������ͻ���
				local propertyContext = gridItem:getPropertyContext()
				-- ������Ч����Lua�����л�һ�£���ֹ���������ȶ�ʧ������
				propertyContext.ID = propertyContext.itemID
				propertyContext.baseEffect = serialize(propertyContext.baseEffect)
				propertyContext.addEffect = serialize(propertyContext.addEffect)
				propertyContext.bindEffect = serialize(propertyContext.bindEffect)
				propertyContext.refiningEffect = serialize(propertyContext.refiningEffect)
				table.insert(viewResult,propertyContext)
			end
		end
		-- ֪ͨ�ͻ��˸�����
		local event = Event.getEvent(EquipPlayingEvent_SC_ViewEquips_Request,viewResult,roleInfo)
		g_eventMgr:fireRemoteEvent(event, player)
	else
		LuaDBAccess.loadRoleInfoAndEquip(targetID, EquipPlayingSystem.loadRoleInfoAndEquipReturn,player)
	end
end

--װ������
function EquipPlayingSystem:onEquipMakeRequest(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	local packetHandler = player:getHandler(HandlerDef_Packet)
	local itemGuid = params[1]
	local attrType = params[2]
	local isBind = params[3]
	local item = g_itemMgr:getItem(itemGuid)
	if not isBind and item:getBindFlag() then
		print("-------------��ѡ�˷ǰ󶨣���ʹ���˰󶨲��ϡ���")
		return
	end
	if item and item:getSubClass() == ItemSubClass.Drawing then
		local itemID = item:getItemID()
		local config = EquipFormulaDB[EquipPlaying.EquipMake][itemID]
		if not config then
			print("ͼֽ���ɵ�װ��ID���ô���")
			return
		end
		local equip = tEquipmentDB[config.equipID]
		local level = equip.UseNeedLvl
		local needMoney = EquipMoneyConsumeDB[EquipPlaying.EquipMake][level]
		if attrType == EquipMakeAddattrType.Random then
			--�������
			attrType = false
		end
		if not attrType  then
			needMoney = math.ceil(needMoney*EquipDiscount)
		end
		local money = player:getMoney()
		local cashMoney = player:getCashMoney()
		if needMoney > money+cashMoney then
			print("Ǯ����")
			return
		end
		local needItemTable = config.needItem
		for _,needItem in pairs(needItemTable) do
			local itemID = needItem.itemID
			local bItemID = needItem.BitemID
			local itemNum = needItem.itemNum
			if not attrType then
				itemNum = math.ceil(itemNum*EquipDiscount)
			end
			local num
			if isBind then
				num = packetHandler:getNumByItemID(itemID) + packetHandler:getNumByItemID(bItemID)
			else
				num = packetHandler:getNumByItemID(itemID)
			end
			if num < itemNum then
				return
			end
		end
		-- װ��
		local itemConfig = tItemDB[config.equipID]
		if not itemConfig then
			-- �Ҳ�����������
			print("�Ҳ������á���")
			return
		end
		-- ���ɵ��������ֳ�
		local propertyContext = {}
		propertyContext.itemID = config.equipID
		propertyContext.expireTime = 0
		propertyContext.effect = 0
		propertyContext.identityFlag = true
		if itemConfig.Class == ItemClass.Equipment then
			propertyContext.curDurability = itemConfig.MaxDurability*ConsumeDurabilityNeedFightTimes
			-- ��������
			g_itemMgr:generateEquipBaseAttr(propertyContext, itemConfig)
			-- ��������
			g_itemMgr:generateEquipAddAttr(propertyContext, itemConfig, 0,attrType)
			-- ������
			g_itemMgr:generateEquipBindAttr(propertyContext, itemConfig)
			local equip = g_itemMgr:createItemFromContext(propertyContext, 1)
			if equip then
				for _,needItem in pairs(needItemTable) do
					local itemID = needItem.itemID
					local bItemID = needItem.BitemID
					local itemNum = needItem.itemNum
					if not attrType then
						itemNum = math.ceil(itemNum*EquipDiscount)
					end
					if isBind then
						local bItemNum = packetHandler:getNumByItemID(bItemID)
						if bItemNum >= itemNum then
							packetHandler:removeByItemId(bItemID,itemNum)
						else
							packetHandler:removeByItemId(bItemID,bItemNum)
							packetHandler:removeByItemId(itemID,itemNum - bItemNum)
						end
						equip:setBindFlag(isBind)
					else
						packetHandler:removeByItemId(itemID,itemNum)
					end
				end
				packetHandler:removeByItemId(itemID,1)
				packetHandler:addItems(equip:getGuid())
				local subMoney = money - needMoney
				if subMoney >= 0 then
					player:setMoney(subMoney)
				else
					player:setMoney(0)
					player:setCashMoney(cashMoney+subMoney)
				end
				-- ֪ͨ�ͻ����������
				local event = Event.getEvent(EquipPlayingEvent_SC_EquipMake_Result)
				g_eventMgr:fireRemoteEvent(event, player)
			else
				print("��װ��������")
			end
		end
	end
end

-- װ�����
function EquipPlayingSystem:onEquipAnalyseRequest(event)
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	local packetHandler = player:getHandler(HandlerDef_Packet)
	local params = event:getParams()
	local guid = params[1]
	local itemGuid = params[2]
	local isBind = params[3]

	-- ��ɫƷ������
	local equipment = g_itemMgr:getItem(guid)
	if not equipment or equipment:getEquipQuality() < ItemQuality.Blue then
		return
	end

	-- �ж��Ƿ��ǿս����ʯ
	local item = g_itemMgr:getItem(itemGuid)
	if item:getSubClass() ~= ItemSubClass.LingShi or item:getAttr() or (not isBind and item:getBindFlag()) then
		return
	end
	
	-- �жϵȼ�
	local itemConfig = tItemDB[item:getItemID()]
	local equipLevel = equipment:getEquipLevel()
	if itemConfig.UseNeedLvl ~= equipLevel then
		return
	end
	--�жϽ�Ǯ
	local needMoney = EquipMoneyConsumeDB[EquipPlaying.EquipAnalyse][equipLevel]
	local money = player:getMoney()
	local cashMoney = player:getCashMoney()
	if needMoney > money+cashMoney then
		return
	end

	--��Ǯ
	local subMoney = money - needMoney
	if subMoney >= 0 then
		player:setMoney(subMoney)
	else
		player:setMoney(0)
		player:setCashMoney(cashMoney+subMoney)
	end

	--������ɫ
	local _,addEffect = equipment:getEffect()
	local flag = false
	local attr
	local index
	while(1) do
		index = math.random(1,table.size(addEffect))
		attr = addEffect[index]
		if PlayerAttrDefine[attr[1]] then
			break
		end
	end
	local attrColor = AttrPositionToColor[index]

	-- ���ɵ��������ֳ�
	local position = equipment:getEquipClass()
	item:setAttr({position,attrColor,attr})

	if equipment:getContainerID() == PackContainerID.Equip then
		player:getHandler(HandlerDef_Equip):removeItem(guid,1)
	else
		packetHandler:removeItem(guid,1)
	end
	-- ���µ��ͻ���
	item:getPack():updateItemsToClient(item)
	-- ֪ͨ�ͻ������
	local event = Event.getEvent(EquipPlayingEvent_SC_EquipAnalyse_Result)
	g_eventMgr:fireRemoteEvent(event, player)
end

-- װ������
function EquipPlayingSystem:onEquipRemouldRequest(event)
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	local params = event:getParams()
	local itemGuid = params[1]
	local remouldType = params[2]
	local isBind = params[3]

	local equip = g_itemMgr:getItem(itemGuid)
	if not equip then
		-- ���߲�����
		return
	end
	-- �ж��Ƿ���װ��
	if not instanceof(equip, Equipment) then
		return
	end
	-- ֻ�������ͷ��߲ſ��Խ��и���
	local subClass = equip:getSubClass()
	if subClass ~= EquipmentClass.Weapon and subClass ~= EquipmentClass.Armor then
		return
	end
	-- �ж��Ƿ��Ѿ�����
	if not equip:getIdentityFlag() then
		return
	end
	local level = equip:getEquipLevel()
	if remouldType == EquipRemouldType.remould then
		-- �ж��Ƿ��Ѿ���������ȼ���
		local remouldLevel = equip:getRemouldLevel()
		if remouldLevel >= EquipRemouldMaxLevel then
			return
		end
		-- �ж��������
		local remouldMoney = EquipMoneyConsumeDB[EquipPlaying.EquipRemould][EquipRemouldType.remould][level]
		if not remouldMoney then
			return
		end

		local playerMoney = player:getMoney()
		local palyerCashMoney = player:getCashMoney()
		if playerMoney + palyerCashMoney < remouldMoney then
			-- ��������
			return
		end
		-- �ж��������
		local remouldItemData = EquipItemConsumeDB[EquipPlaying.EquipRemould]
		if not remouldItemData then
			return
		end
		local remouldItemID = remouldItemData[EquipRemouldType.remould].itemID
		local bRemouldItemID = remouldItemData[EquipRemouldType.remould].BitemID
		local remouldItemNum = remouldItemData[EquipRemouldType.remould].itemNum
		if not remouldItemID or not remouldItemNum then
			return
		end
		local packetHandler = player:getHandler(HandlerDef_Packet)
		local num
		if isBind then
			num = packetHandler:getNumByItemID(remouldItemID) + packetHandler:getNumByItemID(bRemouldItemID)
		else
			num = packetHandler:getNumByItemID(remouldItemID)
		end
		if num < remouldItemNum then
			-- ���ϲ���
			return
		end
		-- �۳���������
		playerMoney = playerMoney - remouldMoney
		player:setMoney(playerMoney)

		-- �۳�������ϣ��������ȿ۳��󶨵�
		if isBind then
			local bNum = packetHandler:getNumByItemID(bRemouldItemID)
			if remouldItemNum <= bNum then
				packetHandler:removeByItemId(bRemouldItemID, remouldItemNum)
			else
				packetHandler:removeByItemId(bRemouldItemID, bNum)
				packetHandler:removeByItemId(remouldItemID, remouldItemNum - bNum)
			end
			equip:setBindFlag(true)
		else
			packetHandler:removeByItemId(remouldItemID, remouldItemNum)
		end

		-- ����װ���Ļ������Լӳ�
		local tWeigt = 0
		for i,weight in pairs(EquipRemouldWeightDB) do 
			tWeigt = tWeigt +weight
		end
			max = weight
		local color = 1
		local rWeight = math.random(1,tWeigt)
		local max = tWeigt
		for i,weight in ipairs(EquipRemouldWeightDB) do
			max = max - weight
			if rWeight > max then
				color = i
				break
			end
		end
		local baseAttrAdd = EquipRemouldBaseAttrAddDB[color]/100
		if not baseAttrAdd then
			return
		end
		local attrAdd = equip:getRemouldAttrValue()
		local allAttrAdd = attrAdd + baseAttrAdd
		local propertyContext = equip:getPropertyContext()
		local equipConfig = tEquipmentDB[equip:getItemID()]
		local baseEffect = propertyContext.baseEffect
		for i = 1, table.getn(baseEffect) do
			local attrType = baseEffect[i][1]
			local takingValueUnit = AddAttrValueDB[attrType].takingValueUnit
			local attrValue = 0
			if i == 1 then
				attrValue = equipConfig.BaseAttrValueA
			elseif i == 2 then
				attrValue = equipConfig.BaseAttrValueB
			else
				attrValue = equipConfig.BaseAttrValueC
			end
			local attrAddValue = math.ceil(attrValue*(1+allAttrAdd)/takingValueUnit)*takingValueUnit
			baseEffect[i][2] = attrAddValue
		end
		-- ��¼�������Լӳ�
		equip:setEffectEx(propertyContext)
		-- �����µĸ�������
		local remouldAttr = equip:getRemouldAttr() or {}
		table.insert(remouldAttr,color)
		equip:setRemouldAttr(remouldAttr)
	else
		local rollBackList = params[4]
		local packetHandler = player:getHandler(HandlerDef_Packet)
		-- �ж��������
		local remouldAttr = equip:getRemouldAttr()
		local attrCount = table.size(remouldAttr)
		local rollBackCount = table.size(rollBackList)
		if rollBackCount > EquipRemouldMaxLevel then
			--������һ������ѡ
			return
		end
		if attrCount - rollBackCount >= 5 then
			local remouldItemData = EquipItemConsumeDB[EquipPlaying.EquipRemould][EquipRemouldType.rollBack][attrCount - rollBackCount]
			if not remouldItemData then
				return
			end
			local remouldItemID = remouldItemData.itemID
			local bRemouldItemID = remouldItemData.BitemID
			local remouldItemNum = remouldItemData.itemNum
			if not remouldItemID or not remouldItemNum then
				return
			end
			local num
			if isBind then
				num = packetHandler:getNumByItemID(bRemouldItemID) + packetHandler:getNumByItemID(remouldItemID)
			else
				num = packetHandler:getNumByItemID(remouldItemID)
			end
			if num < remouldItemNum then
				-- ���ϲ���
				return
			end
			-- �۳�������ϣ��������ȿ۳��󶨵�
			if isBind then
				local bNum = packetHandler:getNumByItemID(bRemouldItemID)
				if bNum >= remouldItemNum then
					packetHandler:removeByItemId(bRemouldItemID, remouldItemNum)
				else
					packetHandler:removeByItemId(bRemouldItemID, bNum)
					packetHandler:removeByItemId(remouldItemID, remouldItemNum - bNum)
				end
				equip:setBindFlag(true)
			else
				packetHandler:removeByItemId(remouldItemID, remouldItemNum)
			end
		end
		local rollbackDBMoney = EquipMoneyConsumeDB[EquipPlaying.EquipRemould][EquipRemouldType.rollBack][level]*rollBackCount
		-- ���ϻ��˵�����
		local playerMoney = player:getMoney()
		player:setMoney(playerMoney + rollbackDBMoney)
	
		-- �����µĸ�������
		for _,color in pairs(rollBackList) do
			for index,color1 in pairs(remouldAttr) do
				if color == color1 then
					table.remove(remouldAttr,index)
					break
				end
			end
		end
		local attrAdd = equip:getRemouldAttrValue()
		-- ����װ���Ļ������Լӳ�
		local propertyContext = equip:getPropertyContext()
		local equipConfig = tEquipmentDB[equip:getItemID()]
		local baseEffect = propertyContext.baseEffect
		for i = 1, table.getn(baseEffect) do
			local attrType = baseEffect[i][1]
			local takingValueUnit = AddAttrValueDB[attrType].takingValueUnit
			local attrValue = 0
			if i == 1 then
				attrValue = equipConfig.BaseAttrValueA
			elseif i == 2 then
				attrValue = equipConfig.BaseAttrValueB
			else
				attrValue = equipConfig.BaseAttrValueC
			end
			local attrAddValue = math.floor(attrValue*(1+attrAdd)/takingValueUnit)*takingValueUnit
			baseEffect[i][2] = attrAddValue
		end

		-- ��¼�������Լӳ�
		equip:setEffectEx(propertyContext)
		equip:setRemouldAttr(remouldAttr)
	end
	-- ���µ��ͻ���
	equip:getPack():updateItemsToClient(equip)

	-- ֪ͨ�ͻ��˸�����
	local event = Event.getEvent(EquipPlayingEvent_SC_EquipRemould_Result,itemGuid)
	g_eventMgr:fireRemoteEvent(event, player)
end

--װ����������
function EquipPlayingSystem:onAttrResetRequest(event)
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	local params = event:getParams()
	local itemGuid = params[1]
	local attrIndex = params[2]
	local isBind = params[3]
	-- ֻ�������ͷ��߲ſ��Խ��и���
	local equipMent = g_itemMgr:getItem(itemGuid)
	local subClass = equipMent:getSubClass()
	if subClass ~= EquipmentClass.Weapon and subClass ~= EquipmentClass.Armor then
		return
	end

	-- �ж��������
	local quality = equipMent:getEquipQuality()
	local equipLevel = equipMent:getEquipLevel()
	local attrResetMoney = EquipMoneyConsumeDB[EquipPlaying.AttrReset][quality][equipLevel]
	local playerMoney = player:getMoney()
	local cashMoney = player:getCashMoney()
	if playerMoney + cashMoney < attrResetMoney then
		-- ��������
		return
	end

	-- �ж��������
	local packetHandler = player:getHandler(HandlerDef_Packet)
	local index = 0
	local _,addEffect = equipMent:getEffect()
	for i,attr in pairs(addEffect) do
		if PlayerAttrDefine[attr[1]] then
			index = index + 1
			if index == attrIndex then
				attrIndex = i
				break
			end
		end
	end
	local attrColor = AttrPositionToColor[attrIndex]
	local attrResetItemData = EquipItemConsumeDB[EquipPlaying.AttrReset][attrColor]
	if not attrResetItemData then
		return
	end
	for _,item in pairs(attrResetItemData) do
		local itemID = item.itemID
		local bItemID = item.BitemID
		local itemCount = item.itemNum
		local num
		if isBind then
			num = packetHandler:getNumByItemID(itemID) + packetHandler:getNumByItemID(bItemID)
		else
			num = packetHandler:getNumByItemID(itemID)
		end
		if num < itemCount then
			print("���ϲ���")
			return
		end
	end
	
	--�۳�����
	for _,item in pairs(attrResetItemData)do
		local itemID = item.itemID
		local itemCount = item.itemNum
		local bItemID = item.BitemID
		if isBind then
			local bNum = packetHandler:getNumByItemID(bItemID)
			if bNum >= itemCount then
				packetHandler:removeByItemId(bItemID,itemCount)
			else
				packetHandler:removeByItemId(bItemID,bNum)
				packetHandler:removeByItemId(itemID,itemCount-bNum)
			end
		else
			packetHandler:removeByItemId(itemID,itemCount)
		end
	end

	--��Ǯ
	local subMoney = playerMoney - attrResetMoney
	if subMoney >= 0 then
		player:setMoney(subMoney)
	else
		player:setMoney(0)
		player:setCashMoney(cashMoney+subMoney)
	end
	--�����������
	local attr = addEffect[attrIndex]
	local attrType = attr[1]
	local attrTable = AddAttrTypeDB[subClass][equipMent:getEquipClass()]
	if isBind then
		equipMent:setBindFlag(isBind)
	end
	local rAttrType = nil
	while(1) do
		local count = 0
		local randomIndex = math.random(1,table.size(attrTable))
		rAttrType = attrTable[randomIndex]
		for index,attr in pairs(addEffect)do
			if rAttrType == attr[1] then
				count = count+1
			end
		end
		if count <= 2 and rAttrType ~= attrType then
			break
		end
	end
	local attrValueTable = AddAttrValueDB[rAttrType][equipLevel]
	local multiple = 1
	local takingValueUnit = AddAttrValueDB[rAttrType].takingValueUnit
	if takingValueUnit == 0.1 then
		multiple = 10
	elseif takingValueUnit == 0.01 then
		multiple = 100
	elseif takingValueUnit == 0.001 then
		multiple = 1000
	elseif takingValueUnit == 0.0001 then
		multiple = 10000
	end
	local rattrValue = math.random(attrValueTable.lower_limit * multiple, attrValueTable.upper_limit * multiple)
	rattrValue = rattrValue / multiple
	attr = {rAttrType,rattrValue}
	addEffect[attrIndex] = attr
	
	--���ð�
	if isBind then
		equipMent:setBindFlag(true)
	end
	-- ���µ��ͻ���
	equipMent:getPack():updateItemsToClient(equipMent)
	-- ֪ͨ�ͻ��˸�����
	local event = Event.getEvent(EquipPlayingEvent_SC_AttrReset_Result,attrIndex,itemGuid)
	g_eventMgr:fireRemoteEvent(event, player)
end

--װ������ǿ��
function EquipPlayingSystem:onAttrImproveRequest(event)
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	local params = event:getParams()
	local itemGuid = params[1]
	local attrIndex = params[2]
	local isBind = params[3]

	local equipMent = g_itemMgr:getItem(itemGuid)
	if not equipMent then
		-- ���߲�����
		return
	end
	-- �ж��Ƿ���װ��
	if not instanceof(equipMent, Equipment) then
		return
	end
	-- ֻ�������ͷ��߲ſ��Խ���ǿ��
	local subClass = equipMent:getSubClass()
	if subClass ~= EquipmentClass.Weapon and subClass ~= EquipmentClass.Armor then
		return
	end
	-- �ж��Ƿ��Ѿ�����
	if not equipMent:getIdentityFlag() then
		return
	end

	--�ж������Ƿ�ﵽ�����ֵ
	local equipLevel = equipMent:getEquipLevel()
	local _,addEffect = equipMent:getEffect()
	local index = 0
	for i,attr in pairs(addEffect) do
		if PlayerAttrDefine[attr[1]] then
			index = index + 1
			if index == attrIndex then
				attrIndex = i
				break
			end
		end
	end
	local attrColor = AttrPositionToColor[attrIndex]
	local attr = addEffect[attrIndex]
	local attrType = attr[1]
	local attrValue = attr[2]

	local attrValueTable = AddAttrValueDB[attrType][equipLevel]
	local maxValue = attrValueTable.upper_limit
	local minValue = attrValueTable.lower_limit
	if attrValue >= maxValue then
		print("ǿ���Ѵ���ֵ�����ٶ������ǿ������")
		return
	end

	-- �ж��������
	local quality = equipMent:getEquipQuality()
	local attrImproveMoney = EquipMoneyConsumeDB[EquipPlaying.AttrImprove][quality][equipLevel]
	local playerMoney = player:getMoney()
	local cashMoney = player:getCashMoney()
	if playerMoney + cashMoney < attrImproveMoney then
		-- ��������
		return
	end

	-- �ж��������
	local attrImproveItem = EquipItemConsumeDB[EquipPlaying.AttrImprove][equipLevel]
	if not attrImproveItem then
		return
	end

	--�����Ҫ����
	local itemID = attrImproveItem.itemID
	local bItemID = attrImproveItem.BitemID
	local itemCount = attrImproveItem.itemNum
	if not itemID or not itemCount or not bItemID then
		return
	end

	--�����������еĲ��Ͻ���λ�ã��ȼ���������ɫƥ��
	local itemConfig = tItemDB[itemID]
	local packetHandler = player:getHandler(HandlerDef_Packet)
	local itemList = nil
	if isBind then
		itemList = packetHandler:getItemsByID(bItemID)
	else
		itemList = packetHandler:getItemsByID(itemID)
	end
	local itemA = nil
	for _,item in pairs(itemList) do
		local itemAttr = item:getAttr()
		--ǿ��ĳһ������ʱ��Ҫ�����뱻ǿ����װ������������ͬ����λ��ͬ���ȼ���ͬ��������ɫ��ͬ�Ľ���龧
		if itemAttr and itemAttr[1] == equipMent:getEquipClass() and itemAttr[2] == attrColor and itemConfig.UseNeedLvl == equipLevel and itemAttr[3][1] == attrType then
			itemA = item
		end
	end

	if not itemA then
		-- ���ϲ���
		return
	end

	--�۳�����
	packetHandler:removeItem(itemA:getGuid(), itemCount)

	--��Ǯ
	local subMoney = playerMoney - attrImproveMoney
	if subMoney >= 0 then
		player:setMoney(subMoney)
	else
		player:setMoney(0)
		player:setCashMoney(cashMoney+subMoney)
	end

	--ĳ��ǿ���ɹ��� = �����������ֵ - ��ǰ���ԣ�/��ȡֵ��λ*�������ֵ��*����龧��������/�������ֵ
	local takingValueUnit = AddAttrValueDB[attrType].takingValueUnit
	local attrA = itemA:getAttr()
	local improveSuccess = math.floor((maxValue - attrValue)*(attrA[3][2]-minValue)/(maxValue-minValue)*100)
	local successRata = math.random(1,100)
	local isSuccess = false
	if successRata <= improveSuccess then
		isSuccess = true
	else
		local iCompleteness = equipMent:getCompleteness()
		iCompleteness = iCompleteness + improveSuccess/2
		if iCompleteness > 100 then
			equipMent:setCompleteness(0)
			isSuccess = true
		else
			equipMent:setCompleteness(iCompleteness)
		end
	end
	if isSuccess then
		local improveValue = math.random(1,3)*takingValueUnit
		attr[2] = attrValue + improveValue > maxValue and maxValue or attrValue + improveValue 
	end
	--���ð�
	if isBind then
		equipMent:setBindFlag(true)
	end
	-- ���µ��ͻ���
	equipMent:getPack():updateItemsToClient(equipMent)

	-- ֪ͨ�ͻ��˸�����
	local event = Event.getEvent(EquipPlayingEvent_SC_AttrImprove_Result, isSuccess)
	g_eventMgr:fireRemoteEvent(event, player)
end

--װ������
function EquipPlayingSystem:onEquipRefiningRequest(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end

	local equipGuid = params[1]
	local itemGuid = params[2]
	local isBind = params[3]
	local equip = g_itemMgr:getItem(equipGuid)
	if not equip then
		-- ���߲�����
		return
	end
	-- �ж��Ƿ���װ��,��ɫװ�����ܽ���װ������
	if not instanceof(equip, Equipment) and equip:getEquipQuality() == ItemQuality.Green then
		return
	end
	-- ֻ�������ͷ��߲ſ��Խ�������
	local subClass = equip:getSubClass()
	if subClass ~= EquipmentClass.Weapon and subClass ~= EquipmentClass.Armor then
		return
	end
	-- �ж��Ƿ��Ѿ�����
	if not equip:getIdentityFlag() then
		return
	end
	local item = g_itemMgr:getItem(itemGuid)
	local itemID = item:getItemID()
	local itemConfig = tItemDB[itemID]
	-- �ж��Ƿ���ɫ��ʯͷ
	if itemConfig.Quality ~= ItemQuality.Green and itemConfig.SubClass ~= ItemSubClass.Runes or (not isBind and item:getBindFlag())then
		return
	end
	-- �ж��������
	local equipRefiningMoney = EquipMoneyConsumeDB[EquipPlaying.EquipRefining]
	if not equipRefiningMoney then
		return
	end
	local equipLevel = equip:getEquipLevel()
	local refiningMoney = equipRefiningMoney[equipLevel]
	if not refiningMoney then
		return
	end
	local playerMoney = player:getMoney()
	if playerMoney < refiningMoney then
		-- ��������
		return
	end
	-- �ж��������
	local refiningItemNum = equipLevel
	local packetHandler = player:getHandler(HandlerDef_Packet)
	if packetHandler:getNumByItemID(itemID) < refiningItemNum then
		-- ���ϲ���
		return
	end
	-- �۳���������
	playerMoney = playerMoney - refiningMoney
	player:setMoney(playerMoney)

	packetHandler:removeByItemId(itemID, refiningItemNum)
	
	--��������
	local phase = itemConfig.ReactExtraParam1
	local refiningConfig = RefiningEffectDB[phase]
	local attrType = refiningConfig.attrType
	local attrTable = refiningConfig[equipLevel]
	local maxAttr = attrTable.maxValue
	local minAttr = attrTable.minValue
	local attrValue = math.random(minAttr,maxAttr)
	local effect = {phase = phase,attr = {attrType,attrValue}}
	local context = {}
	context.refiningEffect = effect
	equip:setEffect(context)

	if equip:getContainerID() == PackContainerID.Equip then
		player:getHandler(HandlerDef_Equip):setSuitAttr(true,equip)
	end

	equip:getPack():updateItemsToClient(equip)
	-- ֪ͨ�ͻ����������
	local event = Event.getEvent(EquipPlayingEvent_SC_EquipRefining_Result)
	g_eventMgr:fireRemoteEvent(event, player)
end

--��Ʒ����
function EquipPlayingSystem:onAdornMakeRequest(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	local adornSubClass = params[1]
	local level = params[2]
	local isBind = params[3]
	local makeEquipID = EquipFormulaDB[EquipPlaying.AdornMake][adornSubClass][level]
	local itemConfig = tItemDB[makeEquipID]
	if not itemConfig then
		return
	end
	-- �ж��������
	local adornMakeMoneyData = EquipMoneyConsumeDB[EquipPlaying.AdornMake]
	if not adornMakeMoneyData then
		return
	end
	local adornMakeMoney = adornMakeMoneyData[level]
	if not adornMakeMoney then
		return
	end
	local playerMoney = player:getMoney()
	local cashMoney = player:getCashMoney()

	if adornMakeMoney > playerMoney+cashMoney then
		-- ��������
		return
	end
	-- �ж��������
	local packetHandler = player:getHandler(HandlerDef_Packet)
	local needItemData = EquipItemConsumeDB[EquipPlaying.AdornMake][adornSubClass]
	for _,item in pairs(needItemData)do
		local itemID = item.itemID
		local bItemID = item.BitemID
		local itemNum = item.itemNum > 0 and item.itemNum or level
		local num = 0
		if isBind then
			num = packetHandler:getNumByItemID(itemID) + packetHandler:getNumByItemID(bItemID)
		else
			num = packetHandler:getNumByItemID(itemID)
		end
		if num < itemNum then
			print("----------------���ϲ��㡣����",itemID,itemNum)
			return
		end
	end
	-- �۳���������
	playerMoney = playerMoney - adornMakeMoney
	player:setMoney(playerMoney)
	-- �۳�������ϣ��������ȿ۳��󶨵�
	for _,item in pairs(needItemData)do
		local itemID = item.itemID
		local bItemID = item.BitemID
		local itemNum = item.itemNum > 0 and item.itemNum or level
		if isBind then
			local bNum = packetHandler:getNumByItemID(bItemID)
			if bNum >= itemNum then
				packetHandler:removeByItemId(bItemID, itemNum)
			else
				packetHandler:removeByItemId(bItemID, bNum)
				packetHandler:removeByItemId(itemID, itemNum - bNum)
			end
		else
			packetHandler:removeByItemId(itemID, itemNum)
		end
	end

	-- ���ɵ��������ֳ�
	local propertyContext = {}
	propertyContext.itemID = makeEquipID
	propertyContext.expireTime = 0
	propertyContext.effect = 0
	propertyContext.identityFlag = true
	if itemConfig.Class == ItemClass.Equipment then
		propertyContext.curDurability = itemConfig.MaxDurability*ConsumeDurabilityNeedFightTimes
		-- ��������
		g_itemMgr:generateEquipBaseAttr(propertyContext, itemConfig)
		-- ��������
		g_itemMgr:generateEquipAddAttr(propertyContext, itemConfig, 0)
		-- ������
		g_itemMgr:generateEquipBindAttr(propertyContext, itemConfig)
		local equip = g_itemMgr:createItemFromContext(propertyContext, 1)
		if equip then
			packetHandler:addItems(equip:getGuid())
		end
	end
	-- ֪ͨ�ͻ�����Ʒ�������
	local event = Event.getEvent(EquipPlayingEvent_SC_AdornMake_Result)
	g_eventMgr:fireRemoteEvent(event, player)
end

--��Ʒ�ϳ�

local function syntheticAddEffect(propertyContext,addEffect)
	while(1) do 
		local index = math.random(1,table.size(addEffect))
		attrID = addEffect[index][1]
		local count = 0
		for _,attr in pairs(propertyContext.addEffect) do
			if attr[1] == attrID then
				count = count+1
			end
		end
		if count < 2 then
			table.insert(propertyContext.addEffect,addEffect[index])
			table.remove(addEffect,index)
			break
		end
	end
end

function EquipPlayingSystem:onAdornSyntheticRequest(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end

	local itemGuidList = params[1]
	local isBind = params[2]
	local equipList = {}
	--�ж���Ʒ���ڲ�
	for _,itemGuid in pairs(itemGuidList)do
		local adorn = g_itemMgr:getItem(itemGuid)
		if not adorn then
			return
		end
		table.insert(equipList,adorn)
	end
	
	local adorn1 = equipList[1]
	local adorn2 = equipList[2]
	local adorn3 = equipList[3]
	if not isBind and (adorn1:getBindFlag() or adorn2:getBindFlag() or adorn3:getBindFlag()) then
		print("�ǰ�ֻ�����ķǰ󶨲��ϡ���")
		return
	end

	--�жϲ�λһ��
	local equipClass = adorn1:getEquipClass()
	if equipClass ~= adorn2:getEquipClass() or equipClass ~= adorn3:getEquipClass() then
		return
	end
	--�ж�Ʒ��һ��
	local quality = adorn1:getEquipQuality()
	if quality ~= adorn2:getEquipQuality() or quality ~= adorn3:getEquipQuality() then
		return
	end
	--�жϵȼ�һ��
	local level = adorn1:getEquipLevel()
	if level~= adorn2:getEquipLevel() or level ~= adorn3:getEquipLevel() then
		return
	end
	-- �ж��������
	local syntheticMoneyData = EquipMoneyConsumeDB[EquipPlaying.AdornSynthetic]
	if not syntheticMoneyData then
		return
	end
	local syntheticMoney = syntheticMoneyData[quality][level]
	if not syntheticMoney then
		return
	end
	local playerMoney = player:getMoney()
	if playerMoney < syntheticMoney then
		-- ��������
		return
	end
	-- �۳���������
	playerMoney = playerMoney - syntheticMoney
	player:setMoney(playerMoney)

	--������Ʒ
	local adornID = nil
	if quality == ItemQuality.Green then
		adornID = adorn1:getItemID()
	else
		adornID = EquipFormulaDB[EquipPlaying.AdornSynthetic][equipClass][quality+1][level]
	end

	local adornData = tEquipmentDB[adornID]

	-- ���ɵ��������ֳ�
	local propertyContext = {}
	propertyContext.itemID = adornID
	propertyContext.expireTime = 0
	propertyContext.effect = 0
	propertyContext.identityFlag = true
	propertyContext.bindFlag = isBind
	propertyContext.curDurability = adornData.MaxDurability*ConsumeDurabilityNeedFightTimes
	propertyContext.addEffect = {}
	--�������������ɫ����
	local subCount = 0
	if quality == ItemQuality.Pink then
		subCount = 1
	elseif quality == ItemQuality.Gold then
		subCount = 2
	elseif quality == ItemQuality.Green then
		subCount = 3
	end


	--�������һ����Ʒ���ϵ�����
	local index = math.random(1,3)
	
	--ÿ����Ʒ������ɫ��������
	local countList = {}
	
	--���в��ϵ����и�������
	local addEffect = {}
	for _,adorn in pairs(equipList)do
		local count = 0
		local _,adornAddEffect = adorn:getEffect()
		for _,effect in pairs(adornAddEffect) do
			if effect[1] ~= 0 then
				table.insert(addEffect,effect)
				count = count +1
			end
		end
		table.insert(countList,count-subCount)
	end
	
	--����3����ɫ����
	for i = 1,3 do
		if i <= countList[index] then
			--����õ��ĸ�������
			syntheticAddEffect(propertyContext,addEffect)
		else
			table.insert(propertyContext.addEffect,{0,0})
		end
	end
	--��������������
	if quality == ItemQuality.Pink then
		syntheticAddEffect(propertyContext,addEffect)
	elseif quality == ItemQuality.Gold then
		for i = 1,2 do
			syntheticAddEffect(propertyContext,addEffect)
		end
	elseif quality == ItemQuality.Green then
		for i = 1,3 do
			syntheticAddEffect(propertyContext,addEffect)
		end
	end

	-- ����ϳɺ���һ������
	local attrTypeDB = AddAttrTypeDB[adornData.SubClass][adornData.EquipClass]
	if quality ~= ItemQuality.Green then
		g_itemMgr:randomAttr(propertyContext,attrTypeDB,adornData)
	end
	local packetHandler = player:getHandler(HandlerDef_Packet)

	-- ��������
	g_itemMgr:generateEquipBaseAttr(propertyContext, adornData)
	-- bind����
	g_itemMgr:generateEquipBindAttr(propertyContext, adornData)

	local equip = g_itemMgr:createItemFromContext(propertyContext, 1)
	if equip then
		packetHandler:addItems(equip:getGuid())
	end
	local equpHandler = player:getHandler(HandlerDef_Equip)
	for _,guid in pairs(itemGuidList) do
		local equipment = g_itemMgr:getItem(guid)
		if equipment:getContainerID() == PackContainerID.Equip then
			equpHandler:removeItem(guid,1)
		else
			packetHandler:removeItem(guid,1)
		end
	end
	-- ֪ͨ�ͻ�����Ʒ�ϳɽ��
	local event = Event.getEvent(EquipPlayingEvent_SC_AdornSynthetict_Result)
	g_eventMgr:fireRemoteEvent(event, player)
end

function EquipPlayingSystem.getInstance()
	return EquipPlayingSystem()
end

EventManager.getInstance():addEventListener(EquipPlayingSystem.getInstance())
