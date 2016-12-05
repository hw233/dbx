--[[ItemManager.lua
����:
	���߹�����
]]

-- �洢���е��ߵ����ݱ�
tItemDB = {}
table.deepCopy(tWarrantDB, tItemDB)
table.deepCopy(tMedicamentDB, tItemDB)
table.deepCopy(tEquipmentDB, tItemDB)
-- ��ȿ���ʱ�����Keyֵ�ظ���ֻ�����Valueֵ�����������Ƿ����쳣

ItemManager = class(nil, Singleton)

function ItemManager:__init()
	-- ��¼���е���
	self.items = {}
	-- ��¼���ߵ�ʹ�ô���
	self.itemUseTimes = {}
end

-- ����װ����������
function ItemManager:generateEquipBaseAttr(propertyContext, itemConfig)
	propertyContext.baseEffect = {}
	if itemConfig.BaseAttrTypeA and itemConfig.BaseAttrValueA then
		table.insert(propertyContext.baseEffect,{itemConfig.BaseAttrTypeA,itemConfig.BaseAttrValueA})
	end
	if itemConfig.BaseAttrTypeB and itemConfig.BaseAttrValueB then
		table.insert(propertyContext.baseEffect,{itemConfig.BaseAttrTypeB,itemConfig.BaseAttrValueB})
	end
	if itemConfig.BaseAttrTypeC and itemConfig.BaseAttrValueC then
		table.insert(propertyContext.baseEffect,{itemConfig.BaseAttrTypeC,itemConfig.BaseAttrValueC})
	end
end

function ItemManager:randomAttr(propertyContext,attrTypeDB,itemConfig)
	local attrID
	while(1) do 
		attrID = attrTypeDB[math.random(table.getn(attrTypeDB))]
		local count = 0
		for _,attr in pairs(propertyContext.addEffect) do
			if attr[1] == attrID then
				count = count+1
			end
		end
		if count < 2 then
			break
		end
	end
	if AddAttrValueDB[attrID] then
		local multiple = 1
		local takingValueUnit = AddAttrValueDB[attrID].takingValueUnit
		if takingValueUnit == 0.1 then
			multiple = 10
		elseif takingValueUnit == 0.01 then
			multiple = 100
		elseif takingValueUnit == 0.001 then
			multiple = 1000
		elseif takingValueUnit == 0.0001 then
			multiple = 10000
		end
		local attrValueLimit = AddAttrValueDB[attrID][itemConfig.UseNeedLvl]
		if attrValueLimit then
			local attrValue = math.random(attrValueLimit.lower_limit * multiple, attrValueLimit.upper_limit * multiple)
			attrValue = attrValue / multiple
			table.insert(propertyContext.addEffect,{attrID,attrValue})
		else
			print("AddAttrValueDBδ����ָ���ȼ���attrID��UseNeedLvl", attrID, itemConfig.UseNeedLvl)
		end
	else
		print("AddAttrValueDBδ����ָ�����ԣ�attrID", attrID)
	end
end

-- ����װ����������,attrType��Ϊ����װ��ʱ����ݸ�������������ѡ���
function ItemManager:generateEquipAddAttr(propertyContext, itemConfig, blueAttrNum, attrType)
	propertyContext.addEffect = {}
	if not blueAttrNum and itemConfig.AddAttrTypeBlueA and itemConfig.AddAttrValueBlueA then
		-- ��װ��������
		local equipQuality = itemConfig.Quality
		table.insert(propertyContext.addEffect,{itemConfig.AddAttrTypeBlueA,itemConfig.AddAttrValueBlueA})
		if itemConfig.AddAttrTypeBlueB and itemConfig.AddAttrValueBlueB then
			table.insert(propertyContext.addEffect,{itemConfig.AddAttrTypeBlueB,itemConfig.AddAttrValueBlueB})
		else
			table.insert(propertyContext.addEffect,{0,0})
		end
		if itemConfig.AddAttrTypeBlueC and itemConfig.AddAttrValueBlueC then
			table.insert(propertyContext.addEffect,{itemConfig.AddAttrTypeBlueC,itemConfig.AddAttrValueBlueC})
		else
			table.insert(propertyContext.addEffect,{0,0})
		end
		if itemConfig.AddAttrTypePink and itemConfig.AddAttrValuePink and equipQuality >= ItemQuality.Pink then
			table.insert(propertyContext.addEffect,{itemConfig.AddAttrTypePink,itemConfig.AddAttrValuePink})
		else
			table.insert(propertyContext.addEffect,{0,0})
		end
		if itemConfig.AddAttrTypeGold and itemConfig.AddAttrValueGold and equipQuality >= ItemQuality.Gold then
			table.insert(propertyContext.addEffect,{itemConfig.AddAttrTypeGold,itemConfig.AddAttrValueGold})
		else
			table.insert(propertyContext.addEffect,{0,0})
		end
		if itemConfig.AddAttrTypeGreen and itemConfig.AddAttrValueGreen and equipQuality >= ItemQuality.Green then
			table.insert(propertyContext.addEffect,{itemConfig.AddAttrTypeGreen,itemConfig.AddAttrValueGreen})
		else
			table.insert(propertyContext.addEffect,{0,0})
		end
	else
		local AddAttrTypeList = {}
		-- �����Ա����
		if not attrType then
			AddAttrTypeList = AddAttrTypeDB[itemConfig.SubClass]
		else
			AddAttrTypeList = EquipMakeAddAttrTypeDB[attrType]
		end
		if AddAttrTypeList then
			local attrTypeDB = AddAttrTypeList[itemConfig.EquipClass]
			if attrTypeDB then
				blueAttrNum = blueAttrNum or 0
				if blueAttrNum == 0 then
					local random = math.random(1, 100)
					if random <= 60 then
						blueAttrNum = 1
					elseif random <= 90 then
						blueAttrNum = 2
					else
						blueAttrNum = 3
					end
				end
				for i = 1, EquipBlueAttrMaxNum do
					if i <= blueAttrNum then
						self:randomAttr(propertyContext,attrTypeDB,itemConfig)
					else
						table.insert(propertyContext.addEffect,{0,0})
					end
				end
				local equipQuality = itemConfig.Quality
				if equipQuality == ItemQuality.Pink then
					self:randomAttr(propertyContext,attrTypeDB,itemConfig)
				elseif equipQuality == ItemQuality.Gold then
					for i = 1,2 do
						self:randomAttr(propertyContext,attrTypeDB,itemConfig)
					end
				elseif equipQuality == ItemQuality.Green then
					for i = 1,3 do
						self:randomAttr(propertyContext,attrTypeDB,itemConfig)
					end
				end
			else
				print("AddAttrTypeDBδ����ָ��װ����SubClass��EquipClass", itemConfig.SubClass, itemConfig.EquipClass)
			end
		end
	end
end

-- ����װ��������
function ItemManager:generateEquipBindAttr(propertyContext, itemConfig)
	local bindAttrValueDB = BindAttrValueDB[itemConfig.UseNeedLvl]
	if not bindAttrValueDB then
		return
	end
	propertyContext.bindEffect = {}
	for attrType, attrValue in pairs(bindAttrValueDB) do
		table.insert(propertyContext.bindEffect,{attrType,attrValue})
	end
end

-- ���ɵ��������ֳ�
function ItemManager:generatePropertyContext(item, itemConfig)
	-- ���õ��������ֳ�
	local propertyContext = {}
	propertyContext.expireTime = 0
	propertyContext.effect = 0
	propertyContext.identityFlag = true
	propertyContext.bindFlag = false

	-- ���õ���ʱ��
	if itemConfig.TimeLimitHours and itemConfig.TimeLimitHours > 0 then
		local expireTime = os.time() + itemConfig.TimeLimitHours * 3600
		propertyContext.expireTime = expireTime
	end

	-- ���ɵ���Effect
	if itemConfig.Class == ItemClass.Equipment then
		-- װ�������
		propertyContext.curDurability = itemConfig.MaxDurability * ConsumeDurabilityNeedFightTimes
		-- ��������
		self:generateEquipBaseAttr(propertyContext, itemConfig)
		if itemConfig.Quality == ItemQuality.NoIdentify then
			-- ����δ������־
			propertyContext.identityFlag = false
		else
			-- ��������
			self:generateEquipAddAttr(propertyContext, itemConfig)
		end
		-- ������
		self:generateEquipBindAttr(propertyContext, itemConfig)
	elseif itemConfig.Class == ItemClass.Medicament then
		-- ҩƷ�����
		if itemConfig.ReactType == MedicamentReactType.UseHpPool or itemConfig.ReactType == MedicamentReactType.UseMpPool then
			-- �����ص��ߺͷ����ص���
			propertyContext.effect = itemConfig.ReactExtraParam1
			
		elseif itemConfig.SubClass == ItemSubClass.FlyingFlag then
			--������ķ��д���
			propertyContext.effect = itemConfig.ReactExtraParam2
		end
	else
		-- ƾ֤����ߣ�û�����ԡ���
	end
	
	-- ���õ��������ֳ�
	item:setPropertyContext(propertyContext)
end

-- ��������
function ItemManager:createItem(itemId, itemNum)
	local itemConfig = tItemDB[itemId]
	if not itemConfig then
		-- �Ҳ�����������
		return nil
	end

	local item = nil
	if itemConfig.Class == ItemClass.Equipment then
		-- װ��
		item = g_itemFct:createEquipment(itemId, itemNum)
	elseif itemConfig.Class == ItemClass.Medicament then
		-- ҩƷ
		item = g_itemFct:createMedicament(itemId, itemNum)
	elseif itemConfig.Class == ItemClass.Warrant then
		-- ƾ֤
		item = g_itemFct:createWarrant(itemId, itemNum)
	else
		-- ���ʹ���
	end

	if item then
		-- ���ɵ��������ֳ�
		self:generatePropertyContext(item, itemConfig)

		-- ��¼һ��
		self.items[item:getGuid()] = item
	end

	return item
end

-- ���������ֳ���������
function ItemManager:createItemFromContext(propertyContext, itemNum)
	local itemId = propertyContext.itemID
	local itemConfig = tItemDB[itemId]
	if not itemConfig then
		-- �Ҳ�����������
		return nil
	end
	
	local item = nil
	if itemConfig.Class == ItemClass.Equipment then
		-- װ��
		item = g_itemFct:createEquipment(itemId, itemNum)
	elseif itemConfig.Class == ItemClass.Medicament then
		-- ҩƷ
		item = g_itemFct:createMedicament(itemId, itemNum)
	elseif itemConfig.Class == ItemClass.Warrant then
		-- ƾ֤
		item = g_itemFct:createWarrant(itemId, itemNum)
	else
		-- ���ʹ���
	end

	if item then
		-- ���õ��������ֳ�
		item:setPropertyContext(propertyContext)

		-- ��¼һ��
		self.items[item:getGuid()] = item
	end

	return item
end

-- �������ݿ�����������ݴ�������
function ItemManager:createItemFromDB(player, itemsRecord)
	if not itemsRecord then
		return false
	end
	--print("itemsRecord", toString(itemsRecord))
	
	local packetHandler = player:getHandler(HandlerDef_Packet)
	local packet = packetHandler:getPacket()
	local depotHandler = player:getHandler(HandlerDef_Depot)
	local depot = depotHandler:getDepot()
	local equipHandler = player:getHandler(HandlerDef_Equip)
	local equip = equipHandler:getEquip()

	-- ����ֿ���������Ĭ�ϵģ���֪ͨ�¿ͻ���
	local depotCapacity = player:getDepotCapacity()
	if depotCapacity > DepotDefaultCapacity then
		depotHandler:setDepotCapability(depotCapacity)
		local event = Event.getEvent(ItemEvents_SC_CapacityChange, PackContainerID.Depot, depotCapacity)
		g_eventMgr:fireRemoteEvent(event, player)
	end

	-- ��¼����δ��ӳɹ��ĵ��ߣ�����߻��ı��˵��ߴ�ŵİ������ͣ����º���ҵ�һ�ε�½�˵��߾ͻ����ʧ��
	local tPacketUnAddItems = {}
	-- ��¼�ֿ�δ��ӳɹ��ĵ���
	local tDepotUnAddItems = {}

	-- Ŀǰװ�����ߡ��������ߺͲֿ���߶�һ����ȡ�ˣ��Ժ�ֿ����Ҫ��֤����Ļ����ٵ�������
	for _, items in pairs(itemsRecord) do
		-- �������ݿ��ֳ���������
		local item = self:createItemFromContext(items, items.number)
		if item then
			-- ��ӵ��ߵ���������ָ����Ʒ��
			if items.containerID == PackContainerID.Packet then
				-- ��ӵ�������
				if not packet:addItemsToGrid(item, items.packIndex, items.gridIndex, false) then
					-- ��¼һ��
					table.insert(tPacketUnAddItems, item)
				end
			elseif items.containerID == PackContainerID.Depot then
				-- ��ӵ��ֿ���
				if not depot:addItemsToGrid(item, items.packIndex, items.gridIndex, false) then
					-- ��¼һ��
					table.insert(tDepotUnAddItems, item)
				end
			elseif items.containerID == PackContainerID.Equip then
				-- ��ӵ�װ����
				if not equip:addItemsToGrid(item, items.packIndex, items.gridIndex, false) then
					-- ���ʧ��
				end
			else
				-- ��������
			end
		else
			-- ����ʧ��
		end
	end

	-- ͳһ������ǰ��δ��ӳɹ��ĵ���
	local unAddItemsNum = 0

	-- ��������
	unAddItemsNum = table.getn(tPacketUnAddItems)
	if unAddItemsNum > 0 then
		for i = 1, unAddItemsNum do
			local itemGuid = tPacketUnAddItems[i]:getGuid()
			local result = packet:addItems(itemGuid, false)
			if result == AddItemsResult.SucceedPile then
				-- ���ӳɹ�������Դ����
				packet:removeItem(itemGuid, 0, false)
			elseif result == AddItemsResult.Succeed then
				-- ��ӳɹ�
			else
				-- ���ʧ���ˣ���ӡһ��Log�ѣ��������ٵ���
				self:destroyItem(itemGuid)
			end
		end
	end

	-- ����ֿ��
	unAddItemsNum = table.getn(tDepotUnAddItems)
	if unAddItemsNum > 0 then
		for i = 1, unAddItemsNum do
			local itemGuid = tDepotUnAddItems[i]:getGuid()
			local result = depot:addItems(itemGuid, false)
			if result == AddItemsResult.SucceedPile then
				-- ���ӳɹ�������Դ����
				depot:removeItem(itemGuid, 0, false)
			elseif result == AddItemsResult.Succeed then
				-- ��ӳɹ�
			else
				-- ���ʧ���ˣ���ӡһ��Log�ѣ��������ٵ���
				self:destroyItem(itemGuid)
			end
		end
	end

	-- ������������ͳһ�����ͻ���
	packet:updateItemToClient()
	depot:updateItemToClient()
	equip:updateItemToClient()
	
	return true
end

-- ������ҵ�������
function ItemManager:saveItemsData(player)
	local playerDBID = player:getDBID()

	-- �ȼ�ɾ����ҵ��ߣ�ֻ����һ��ɾ�����
	LuaDBAccess.itemRemove(playerDBID, 0)

	-- ��¼Ҫ����ĵ�����Ŀ
	local itemSaveNumber = 0
	-- ��¼Ҫ�����װ����Ŀ
	local equipSaveNumber = 0
	-- �趨ÿ�α������������
	local maxItemSaveNumber = 30
	local maxEquipSaveNumber = 5
	-- Ŀǰ���ݿⲻ֧�ִ�����������ݿ飬����������ʱ�����ַ������棬�洢���̽����ַ�����õ�������
	local itemStringData = ""
	local equipStringData = ""

	-- ������ұ���������
	local packetHandler = player:getHandler(HandlerDef_Packet)
	local packet = packetHandler:getPacket()
	for packindex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
		-- ��ð���
		local pack = packet:getPack(packindex)
		if pack then
			-- ��ð�������
			for gridIndex = 1, pack:getCapability() do
				local item = pack:getGridItem(gridIndex)
				if item then
					-- ���Ҫ����������ֳ�����������֮����"-"�������ָ�
					local propertyContext = item:getPropertyContext()
					if item:getItemClass() ~= ItemClass.Equipment then
						itemStringData = itemStringData..propertyContext.itemID.."-"
						itemStringData = itemStringData..propertyContext.number.."-"
						itemStringData = itemStringData..packet:getContainerID().."-"
						itemStringData = itemStringData..packindex.."-"
						itemStringData = itemStringData..gridIndex.."-"
						itemStringData = itemStringData..(propertyContext.bindFlag and 1 or 0).."-"
						itemStringData = itemStringData..propertyContext.expireTime.."-"
						itemStringData = itemStringData..(propertyContext.effect or 0).."-"
						if propertyContext.attr then
							itemStringData = itemStringData..toString(propertyContext.attr).."-"
						else
							itemStringData = itemStringData.."nil".."-"
						end
						itemSaveNumber = itemSaveNumber + 1
						if itemSaveNumber >= maxItemSaveNumber then
							print("itemSaveNumber................................"..itemSaveNumber)
							-- �������ݿⱣ���������
							LuaDBAccess.itemSave(playerDBID, itemSaveNumber, itemStringData)
							-- ���Ҫ����ĵ����ַ���
							itemStringData = ""
							-- ����Ҫ����ĵ�����Ŀ
							itemSaveNumber = 0
						end
					else
						equipStringData = equipStringData..propertyContext.itemID.."-"
						equipStringData = equipStringData..propertyContext.number.."-"
						equipStringData = equipStringData..packet:getContainerID().."-"
						equipStringData = equipStringData..packindex.."-"
						equipStringData = equipStringData..gridIndex.."-"
						equipStringData = equipStringData..(propertyContext.bindFlag and 1 or 0).."-"
						equipStringData = equipStringData..propertyContext.curDurability.."-"
						if propertyContext.remouldAttr then
							equipStringData = equipStringData..toString(propertyContext.remouldAttr).."-"
						else
							equipStringData = equipStringData.."nil".."-"
						end
						if propertyContext.baseEffect then
							equipStringData = equipStringData..toString(propertyContext.baseEffect).."-"
						else
							equipStringData = equipStringData.."nil".."-"
						end
						if propertyContext.addEffect then
							equipStringData = equipStringData..toString(propertyContext.addEffect).."-"
						else
							equipStringData = equipStringData.."nil".."-"
						end
						if propertyContext.bindEffect then
							equipStringData = equipStringData..toString(propertyContext.bindEffect).."-"
						else
							equipStringData = equipStringData.."nil".."-"
						end
						if propertyContext.refiningEffect then
							equipStringData = equipStringData..toString(propertyContext.refiningEffect).."-"
						else
							equipStringData = equipStringData.."nil".."-"
						end
						equipStringData = equipStringData..(propertyContext.identityFlag and 1 or 0).."-"
						equipStringData = equipStringData..propertyContext.completeness.."-"

						equipSaveNumber = equipSaveNumber + 1
						if equipSaveNumber >= maxEquipSaveNumber then
							-- �������ݿⱣ��װ������
							LuaDBAccess.equipSave(playerDBID, equipSaveNumber, equipStringData)
							-- ���Ҫ�����װ���ַ���
							equipStringData = ""
							-- ����Ҫ�����װ����Ŀ
							equipSaveNumber = 0
						end
					end
				end
			end
		end
	end

	-- ������Ҳֿ�������
	local depotHandler = player:getHandler(HandlerDef_Depot)
	local depot = depotHandler:getDepot()
	for packindex = DepotPackIndex.First, DepotPackIndex.MaxNum-1 do
		local depotPack = depot:getPack(packindex)
		for gridIndex = 1, depotPack:getCapability() do
			local item = depotPack:getGridItem(gridIndex)
			if item then
				-- ���Ҫ����������ֳ�����������֮����"-"�������ָ�
				local propertyContext = item:getPropertyContext()
				if item:getItemClass() ~= ItemClass.Equipment then
					itemStringData = itemStringData..propertyContext.itemID.."-"
					itemStringData = itemStringData..propertyContext.number.."-"
					itemStringData = itemStringData..depot:getContainerID().."-"
					itemStringData = itemStringData..packindex.."-"
					itemStringData = itemStringData..gridIndex.."-"
					itemStringData = itemStringData..(propertyContext.bindFlag and 1 or 0).."-"
					itemStringData = itemStringData..propertyContext.expireTime.."-"
					itemStringData = itemStringData..(propertyContext.effect or 0).."-"
					if propertyContext.attr then
						itemStringData = itemStringData..toString(propertyContext.attr).."-"
					else
						itemStringData = itemStringData.."nil".."-"
					end
					itemSaveNumber = itemSaveNumber + 1
					if itemSaveNumber >= maxItemSaveNumber then
						-- �������ݿⱣ���������
						LuaDBAccess.itemSave(playerDBID, itemSaveNumber, itemStringData)
						-- ���Ҫ����ĵ����ַ���
						itemStringData = ""
						-- ����Ҫ����ĵ�����Ŀ
						itemSaveNumber = 0
					end
				else
					equipStringData = equipStringData..propertyContext.itemID.."-"
					equipStringData = equipStringData..propertyContext.number.."-"
					equipStringData = equipStringData..depot:getContainerID().."-"
					equipStringData = equipStringData..packindex.."-"
					equipStringData = equipStringData..gridIndex.."-"
					equipStringData = equipStringData..(propertyContext.bindFlag and 1 or 0).."-"
					equipStringData = equipStringData..propertyContext.curDurability.."-"
					if propertyContext.remouldAttr then
						equipStringData = equipStringData..toString(propertyContext.remouldAttr).."-"
					else
						equipStringData = equipStringData.."nil".."-"
					end
					if propertyContext.baseEffect then
						equipStringData = equipStringData..toString(propertyContext.baseEffect).."-"
					else
						equipStringData = equipStringData.."nil".."-"
					end
					if propertyContext.addEffect then
						equipStringData = equipStringData..toString(propertyContext.addEffect).."-"
					else
						equipStringData = equipStringData.."nil".."-"
					end
					if propertyContext.bindEffect then
						equipStringData = equipStringData..toString(propertyContext.bindEffect).."-"
					else
						equipStringData = equipStringData.."nil".."-"
					end
					if propertyContext.refiningEffect then
						equipStringData = equipStringData..toString(propertyContext.refiningEffect).."-"
					else
						equipStringData = equipStringData.."nil".."-"
					end
					equipStringData = equipStringData..(propertyContext.identityFlag and 1 or 0).."-"
					equipStringData = equipStringData..propertyContext.completeness.."-"

					equipSaveNumber = equipSaveNumber + 1
					if equipSaveNumber >= maxEquipSaveNumber then
						-- �������ݿⱣ��װ������
						LuaDBAccess.equipSave(playerDBID, equipSaveNumber, equipStringData)
						-- ���Ҫ�����װ���ַ���
						equipStringData = ""
						-- ����Ҫ�����װ����Ŀ
						equipSaveNumber = 0
					end
				end
			end
		end
	end

	-- �������װ��������
	local equipHandler = player:getHandler(HandlerDef_Equip)
	local equip = equipHandler:getEquip()
	local equipPack = equip:getPack()
	for gridIndex = 1, equipPack:getCapability() do
		local item = equipPack:getGridItem(gridIndex)
		if item then
			equipSaveNumber = equipSaveNumber + 1
			-- ���Ҫ����������ֳ�����������֮����"-"�������ָ�
			local propertyContext = item:getPropertyContext()
			equipStringData = equipStringData..propertyContext.itemID.."-"
			equipStringData = equipStringData..propertyContext.number.."-"
			equipStringData = equipStringData..equip:getContainerID().."-"
			equipStringData = equipStringData..EquipPackIndex.Default.."-"
			equipStringData = equipStringData..gridIndex.."-"
			equipStringData = equipStringData..(propertyContext.bindFlag and 1 or 0).."-"
			equipStringData = equipStringData..propertyContext.curDurability.."-"
			if propertyContext.remouldAttr then
				equipStringData = equipStringData..toString(propertyContext.remouldAttr).."-"
			else
				equipStringData = equipStringData.."nil".."-"
			end
			if propertyContext.baseEffect then
				equipStringData = equipStringData..toString(propertyContext.baseEffect).."-"
			else
				equipStringData = equipStringData.."nil".."-"
			end
			if propertyContext.addEffect then
				equipStringData = equipStringData..toString(propertyContext.addEffect).."-"
			else
				equipStringData = equipStringData.."nil".."-"
			end
			if propertyContext.bindEffect then
				equipStringData = equipStringData..toString(propertyContext.bindEffect).."-"
			else
				equipStringData = equipStringData.."nil".."-"
			end
			if propertyContext.refiningEffect then
				equipStringData = equipStringData..toString(propertyContext.refiningEffect).."-"
			else
				equipStringData = equipStringData.."nil".."-"
			end
			equipStringData = equipStringData..(propertyContext.identityFlag and 1 or 0).."-"
			equipStringData = equipStringData..propertyContext.completeness.."-"

			if equipSaveNumber >= maxEquipSaveNumber then
				-- �������ݿⱣ��װ������
				LuaDBAccess.equipSave(playerDBID, equipSaveNumber, equipStringData)
				-- ���Ҫ�����װ���ַ���
				equipStringData = ""
				-- ����Ҫ�����װ����Ŀ
				equipSaveNumber = 0
			end
		end
	end

	-- ���ʣ��ĵ���Ҳ������
	if itemSaveNumber > 0 then
		-- �������ݿⱣ���������
		LuaDBAccess.itemSave(playerDBID, itemSaveNumber, itemStringData)
	end
	-- ���ʣ���װ��Ҳ������
	if equipSaveNumber > 0 then
		-- �������ݿⱣ��װ������
		LuaDBAccess.equipSave(playerDBID, equipSaveNumber, equipStringData)
	end

	-- ��������ˣ�������ɾ��֮ǰ��ǵĵ���
	LuaDBAccess.itemRemove(playerDBID, 1)

	-- �������ʹ�ô���
	if self.itemUseTimes[playerDBID] then
		for itemID, itemInfo in pairs(self.itemUseTimes[playerDBID]) do
			-- �������ݿ�
			LuaDBAccess.updateItemUseTimes(playerDBID, itemID, itemInfo.useTimes, itemInfo.recordTime)
		end
		-- ��յ���ʹ�ô�����¼
		self.itemUseTimes[playerDBID] = nil
	end
end

-- ���ٵ���
function ItemManager:destroyItem(itemGuid)
	local item = self.items[itemGuid]
	if item then
		release(item)
	end
	self.items[itemGuid] = nil
end

-- ��õ���
function ItemManager:getItem(itemGuid)
	return self.items[itemGuid]
end

-- ��������ID������ID���͸��ӵõ���Ʒ �����ַ�ʽ�޶�������������һ��
function ItemManager:getItemByPosition(player,containerID,packIndex,gridIndex)
	-- ��ø�������
	local packetHandler = player:getHandler(HandlerDef_Packet)
	local packet = packetHandler:getPacket()
	local depotHandler = player:getHandler(HandlerDef_Depot)
	local depot = depotHandler:getDepot()
	local equipHandler = player:getHandler(HandlerDef_Equip)
	local result = 1
	local item = nil
	local equip = equipHandler:getEquip()
	if containerID == PackContainerID.Packet then
		result, item = packet:getItems(packIndex,gridIndex)
	elseif containerID == PackContainerID.Depot then
		result, item = depot:getItems(packIndex,gridIndex)
	elseif containerID == PackContainerID.Equip then
		result, item = equip:getItems(packIndex,gridIndex)
	end
	return item
end

-- ���ص���ʹ�ô���
function ItemManager:loadItemUseTimes(player, useTimesRecord)
	if not useTimesRecord or table.size(useTimesRecord) <= 0 then
		return
	end
	local playerDBID = player:getDBID()
	if not self.itemUseTimes[playerDBID] then
		self.itemUseTimes[playerDBID] = {}
	end
	for _, record in pairs(useTimesRecord) do
		-- �жϼ�¼���ڸ������ǲ���ͬһ��
		if time.isSameDay(record.recordTime) then
			self.itemUseTimes[playerDBID][record.itemID] = {}
			self.itemUseTimes[playerDBID][record.itemID].useTimes = record.useTimes
			self.itemUseTimes[playerDBID][record.itemID].recordTime = record.recordTime
		else
			-- ����ͬһ�죬�����ٴ�ʹ����
		end
	end
end

-- ��õ���ʹ�ô���
function ItemManager:getItemUseTimes(playerDBID, itemID)
	if self.itemUseTimes[playerDBID] then
		if self.itemUseTimes[playerDBID][itemID] then
			if time.isSameDay(self.itemUseTimes[playerDBID][itemID].recordTime) then
				return self.itemUseTimes[playerDBID][itemID].useTimes
			end
		end
	end
	return 0
end

-- ���ӵ���ʹ�ô���
function ItemManager:addItemUseTimes(playerDBID, itemID)
	if not self.itemUseTimes[playerDBID] then
		self.itemUseTimes[playerDBID] = {}
	end
	if not self.itemUseTimes[playerDBID][itemID] then
		self.itemUseTimes[playerDBID][itemID] = {}
		self.itemUseTimes[playerDBID][itemID].useTimes = 0
	else
		if not time.isSameDay(self.itemUseTimes[playerDBID][itemID].recordTime) then
			-- ����ͬһ���ˣ�ֱ����0
			self.itemUseTimes[playerDBID][itemID].useTimes = 0
		end
	end
	self.itemUseTimes[playerDBID][itemID].useTimes = self.itemUseTimes[playerDBID][itemID].useTimes + 1
	self.itemUseTimes[playerDBID][itemID].recordTime = os.time()
end

-- �������ʹ�ô�������ս������ʱ����
function ItemManager:resetItemUseTimes(playerDBID, itemID, useTimes)
	if not self.itemUseTimes[playerDBID] then
		self.itemUseTimes[playerDBID] = {}
	end
	if not self.itemUseTimes[playerDBID][itemID] then
		self.itemUseTimes[playerDBID][itemID] = {}
	end
	self.itemUseTimes[playerDBID][itemID].useTimes = useTimes
	self.itemUseTimes[playerDBID][itemID].recordTime = os.time()
end

--��װ����������
function ItemManager:openEquipAppraisal(player)
	local event = Event.getEvent(ItemEvents_SC_OpenEquipAppraisal)
	g_eventMgr:fireRemoteEvent(event, player)
end

--�򿪶һ���Ʒ����
function ItemManager:exchangeProps(player)
	local event = Event.getEvent(ItemEvents_SC_OpenExchangeProps)
	g_eventMgr:fireRemoteEvent(event, player)
end

--�һ���Ʒ
function ItemManager:onExchangeProps(player,itemID,num)
	local itemConfig  = tItemDB[itemID]
	local packetHandler = player:getHandler(HandlerDef_Packet)
	if itemConfig.SubClass == ItemSubClass.Beast then
		local specificItem = ExchangePropsDB.specific
		local exchangeMat = ExchangePropsDB.common
		local additemID = specificItem[itemID]
		local flag = false
		for i = 1,num do
			if itemID then
				if packetHandler:getNumByItemID(itemID) < 1 then
					print("--222-----���ϲ��㡣����")
					break
				end
			end
			
			local breakFlag = false
			for _,matInfo in pairs(exchangeMat) do
				local matID = matInfo[1]
				local count = matInfo[2]
				local curcount = packetHandler:getNumByItemID(matID)
				if count > curcount then
					print("--11------���ϲ��㡣����")
					breakFlag = true
					break
				end
			end
			if breakFlag then
				break
			end

			if not packetHandler:canAddPacket(additemID, 1, false) then
				print("�����ռ䲻���޷��һ���")
				break
			end

			for _,matInfo in pairs(exchangeMat) do
				local matID = matInfo[1]
				local count = matInfo[2]
				packetHandler:removeByItemId(matID, count)
			end
			print("����Ʒ������Ʒ������Ʒ����")
			packetHandler:removeByItemId(itemID, 1)
			packetHandler:addItemsToPacket(additemID, 1)
			flag = true
		end
		if flag then
			local event = Event.getEvent(ItemEvents_SC_ExchangePropsResult)
			g_eventMgr:fireRemoteEvent(event, player)
		end
	end
end

function ItemManager.getInstance()
	return ItemManager()
end
