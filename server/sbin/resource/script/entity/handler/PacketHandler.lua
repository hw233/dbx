--[[PacketHandler.lua
������
	ʵ��ı���handler
--]]

PacketHandler = class(nil, Timer)

function PacketHandler:__init(entity)
	self._entity = entity
	-- ����
	self.packet = Packet(self._entity)
	-- ����15��Ķ�ʱ��������ʱ�����Ƿ���
	self.checkGoodsTimerID = g_timerMgr:regTimer(self, 1000*15, 1000*15, "��ⱳ����ʱ����")
	-- ��һ�����2���Ӷ�ʱ��
	self.doubleTimer = 0
	-- ɱ����ʱ��
	self.killAirTimer = 0
end

function PacketHandler:__release()
	self._entity = nil
	release(self.packet)
	self.packet = nil
	-- ɾ����ʱ��
	g_timerMgr:unRegTimer(self.checkGoodsTimerID)
	self.doubleTimer = nil
	self.killAirTimer = nil
end

-- ��ȡ����
function PacketHandler:getPacket()
	return self.packet
end

--��ȡ��Ʒ
function PacketHandler:getItemsByID(itemID)
	return self.packet:getItemsByID(itemID)
end

-- ��ʱ���ص�
function PacketHandler:update(timerID)
	if timerID == self.checkGoodsTimerID then
		-- ��ⱳ������
		self.packet:checkItemExpire()
		-- �����2����
		self.doubleTimer = self.doubleTimer + 1
		if self.doubleTimer == 2 then
			-- ������ҵ�����ֵ
			local vigor = self._entity:getVigor()
			local maxVigor = self._entity:getMaxVigor()
			if vigor < maxVigor then
				vigor = vigor + 1
				self._entity:setVigor(vigor)
			end
			self.doubleTimer = 0
		end

		-- ɱ����ʱ
		self.killAirTimer = self.killAirTimer + 1
		if self.killAirTimer == 2 then
			-- �����ɱ��
			local killAir = self._entity:getAttrValue(player_kill)
			if killAir > 0 then
				killAir = killAir - 1
				self._entity:setAttrValue(player_kill, killAir)
			end
			self.killAirTimer = 0
		end
	end
end

-- ���ɵ��ߵ�����
function PacketHandler:addItemsToPacket(itemID, itemNum)
	local itemConfig = tItemDB[itemID]
	if not itemConfig then
		-- �Ҳ�����������
		return false
	end
	if itemConfig.MaxPileNum < 1 then
		-- �Է���һ
		return false
	end
	local needCreateNum = 1
	if itemNum > itemConfig.MaxPileNum then
		needCreateNum = itemNum / itemConfig.MaxPileNum
		if itemNum % itemConfig.MaxPileNum > 0 then
			needCreateNum = needCreateNum + 1
		end
	end

	local itemCreateNum = 0
	for i = 1, needCreateNum do
		if itemNum >= itemConfig.MaxPileNum then
			itemNum = itemNum - itemConfig.MaxPileNum
			itemCreateNum = itemConfig.MaxPileNum
		else
			itemCreateNum = itemNum
		end
		local item = g_itemMgr:createItem(itemID, itemCreateNum)
		if item then
			local result = self.packet:addItems(item:getGuid(), true)
			if result == AddItemsResult.Succeed or result == AddItemsResult.SucceedPile then
				if itemConfig.UseNeedLvl == -1 then
					item:setItemLvl(self._entity:getLevel())
				else 
					item:setItemLvl(itemConfig.UseNeedLvl)
				end
				-- ����������Ϣ��ѭ������ϵͳ
			else
				-- ���ʧ�ܣ������ʼ���Ҫô�����ٵ���
				return false
			end
		end
	end
	-- �����Ʒ�ɹ�������Ϣ������ϵͳ
	TaskCallBack.onBuyItem(self._entity:getID(), itemID)
	return true
end

-- ���ָ��ID���ߵĸ���
function PacketHandler:getNumByItemID(itemId)
	return self.packet:getNumByItemID(itemId)
end

--[[������Ϸ�趨��Ʒ�󶨷ǰ����������Ƿ����йأ����ܸ��ģ�����������ò��ţ�������
-- ���ָ��IDδ�󶨵��ߵĸ���
function PacketHandler:getNoBindItemNum(itemId)
	return self.packet:getNoBindItemNum(itemId)
end

-- ���ָ��ID�󶨵��ߵĸ���
function PacketHandler:getBindItemNum(itemId)
	return self.packet:getBindItemNum(itemId)
end

-- �۳�ָ��ID���ߣ����ȿ۳��󶨵ģ��󶨵Ĳ����ٿ۳�δ�󶨵�
function PacketHandler:removeByItemIdEx(itemId, itemNum)
	-- ��ð󶨵�����Ŀ
	local bindItemNum = self.packet:getBindItemNum(itemId)
	-- ���δ�󶨵�����Ŀ
	local noBindItemNum = self.packet:getNoBindItemNum(itemId)
	if bindItemNum + noBindItemNum < itemNum then
		-- ��Ŀ�������޷��۳�
		return 0
	end
	local needRemoveItemNum = itemNum
	-- �ȿ۳��󶨵�
	if bindItemNum > 0 then
		if bindItemNum >= itemNum then
			needRemoveItemNum = 0
			self.packet:removeBindItem(itemId, itemNum)
		else
			needRemoveItemNum = itemNum - bindItemNum
			self.packet:removeBindItem(itemId, bindItemNum)
		end
	end
	-- �ٿ۳�δ�󶨵�
	if needRemoveItemNum > 0 then
		self.packet:removeNoBindItem(itemId, needRemoveItemNum)
	end
	return itemNum
end

-- �Ƴ�δ�󶨵�ID�ĵ���
function PacketHandler:removeNoBindItem(itemId, removeNum)
	self.packet:removeNoBindItem(itemId, removeNum)
end
]]

-- ��ӵ��ߵ���ұ���
function PacketHandler:addItems(itemGuid)
	return self.packet:addItems(itemGuid, true)
end

-- �Ƴ�ָ��ID���ߣ������Ƴ��ĸ���
function PacketHandler:removeByItemId(itemID, itemNum)
	local itemNum = self.packet:removeByItemId(itemID, itemNum)
	-- ������Ϣ��ѭ������ϵͳ
	TaskCallBack.onRemoveItem(self._entity:getID(), itemID)
	return itemNum
end

-- ѭ������Ի��Ƴ���Ʒ�ӿ� ����ص�������ϵͳ�ļ���
function PacketHandler:removeTaskItem(itemID, itemNum)
	return self.packet:removeByItemId(itemID, itemNum)
end

-- �Ƴ�ָ��GUID�ĵ���
function PacketHandler:removeItem(itemGuid, removeNum)
	return self.packet:removeItem(itemGuid, removeNum, true)
end

-- ����ָ��GUID�ĵ���������־
function PacketHandler:setLockFlag(gridItem, lockFlag)
	gridItem:setLockFlag(lockFlag)
	--֪ͨ�ͻ���,�ÿͻ��˴���Ʒ����
	local packIndex = gridItem:getPackIndex()
	local pack = self.packet:getPack(packIndex)
	pack:updateItemsToClient(gridItem)
end

-- ���ָ�����Ͱ���ʣ�������
function PacketHandler:getPacketEmptyGridsNum(packType)
	local leftGridsNum = 0
	if packType == PacketPackType.Normal then
		for packIndex = PacketPackIndex.Default, PacketPackIndex.Horse do
			local pack = self.packet:getPack(packIndex)
			if pack then
				leftGridsNum = leftGridsNum + pack:getAllSpaceNum()
			end
		end
	else
		local pack = self.packet:getPack(PacketPackIndex.Task)
		if pack then
			leftGridsNum = pack:getAllSpaceNum()
		end
	end
	return leftGridsNum
end

-- �ж�ָ������ID����Ŀ�ܷ���뱳��
function PacketHandler:canAddPacket(itemID, itemNum, bindFlag)
	return self.packet:canAddPacket(itemID, itemNum, bindFlag)
end

-- ���±����ĵȼ�����
function PacketHandler:updateLevelPack()
	local pack = self.packet:getPack(PacketPackIndex.Level)
	if not pack then
		local levelPack = Pack()
		levelPack:setCapability(PacketPackDefaultCapacity)
		self.packet:addPack(PacketPackIndex.Level, levelPack)
	end
end

-- ���±������������
function PacketHandler:updateHorsePack(canUse)
	if canUse then
		if self.packet:getPack(PacketPackIndex.Horse) then
			-- �Ѿ�������
			return
		end
		-- �����������
		local horsePack = Pack()
		horsePack:setCapability(PacketPackDefaultCapacity)
		self.packet:addPack(PacketPackIndex.Horse, horsePack)
	else
		local horsePack = self.packet:getPack(PacketPackIndex.Horse)
		if not horsePack then
			-- ��δ����
			return
		end
		local packItemNum = horsePack:getPackItemNum()
		if packItemNum > 0 then
			-- �е��ߴ��ڣ����ܹر��������
			return
		end
		-- �ر��������
		self.packet:stopPack(PacketPackIndex.Horse)
	end
	-- ֪ͨ�ͻ���ˢ���������
	local event = Event.getEvent(ItemEvents_CS_UpdatePack, PackContainerID.Packet, PacketPackIndex.Horse, canUse)
	g_eventMgr:fireRemoteEvent(event, self._entity)
end
