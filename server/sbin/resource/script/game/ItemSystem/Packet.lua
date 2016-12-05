--[[Packet.lua
������
	����
]]

Packet = class()

function Packet:__init(owner)
	-- ӵ����
	self.owner = owner;
	-- ���а���
	self.packs = {}
	-- ��ʼ������
	self:initPack()
end

function Packet:__release()
	for packIndex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
		if self.packs[packIndex] then
			release(self.packs[packIndex])
			self.packs[packIndex] = nil
		end
	end
end

-- ����ʱ�����Ƿ���
function Packet:checkItemExpire()
	for packindex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
		-- ��ð���
		local pack = self:getPack(packindex)
		if pack then
			-- ��ð������ڼ�ʱ�ĵ���
			local tTimeItems = pack:getTimeItems()
			for i = 1, table.getn(tTimeItems) do
				local gridItem = tTimeItems[i]
				if gridItem then
					if os.time() >= gridItem:getExpireTime() then
						-- ɾ������
						local result = self:removeItem(gridItem:getGuid(), 0, true)
						if result == RemoveItemsResult.SucceedClean then
							-- ��ʾ�ͻ��˵��߹��ڣ���ɾ��
						end
					end
				end
			end
		end
	end
end

-- �������ID
function Packet:getContainerID()
	return PackContainerID.Packet
end

-- ֪ͨ�ͻ��˵�������
function Packet:updateItemToClient()
	for packIndex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
		if self.packs[packIndex] then
			self.packs[packIndex]:updateClient()
		end
	end
end

-- ��Ӱ���
function Packet:addPack(packIndex, pack)
	if instanceof(pack, Pack) then
		if self.packs[packIndex] then
			-- �Ѿ�����
			return false
		else
			pack:setOwner(self.owner)
			pack:setPackIndex(packIndex)
			pack:setPackContainerID(PackContainerID.Packet)
			self.packs[packIndex] = pack
			return true
		end
	end
	return false
end

-- �رհ���
function Packet:stopPack(packIndex)
	local pack = self:getPack(packIndex)
	if not pack then
		-- ����δ����
		return
	end
	release(self.packs[packIndex])
	self.packs[packIndex] = nil
end

-- ��ð���
function Packet:getPack(packIndex)
	return self.packs[packIndex]
end

-- ��ʼ������
function Packet:initPack()
	-- Ĭ�ϰ���
	local defaultPack = Pack()
	defaultPack:setCapability(PacketPackDefaultCapacity)
	defaultPack:setPackContainerID(PackContainerID.Packet)
	self:addPack(PacketPackIndex.Default, defaultPack)

	-- �������
	local taskPack = Pack()
	taskPack:setCapability(PacketPackDefaultCapacity)
	self:addPack(PacketPackIndex.Task, taskPack)
end

-- �õ������ո�����
function Packet:getSpaceIndex(item)
	local itemConfig = tItemDB[item:getItemID()]
	if not itemConfig then
		-- �Ҳ�����������
		return false, -1, -1
	end

	if itemConfig.SubClass == ItemSubClass.Task then
		-- ȥ���������ȥ��
		local gridIndex = self.packs[PacketPackIndex.Task]:getFirstSpace()
		if gridIndex > 0 then
			return true, PacketPackIndex.Task, gridIndex
		end
	else
		-- ���ڱ��������ڵİ��������
		local packIndex = item:getPackIndex()
		if self.packs[packIndex] then
			local gridIndex = self.packs[packIndex]:getFirstSpace()
			if gridIndex > 0 then
				return true, packIndex, gridIndex
			end
		end
		-- �����������������
		for packIndex = PacketPackIndex.Default, PacketPackIndex.Horse do
			if self.packs[packIndex] then
				local gridIndex = self.packs[packIndex]:getFirstSpace()
				if gridIndex > 0 then
					return true, packIndex, gridIndex
				end
			end
		end
	end

	return false, -1, -1
end

-- ���ָ��λ�õĵ���
function Packet:getItems(packIndex, gridIndex)
	if packIndex < PacketPackIndex.Default or packIndex >= PacketPackIndex.MaxNum then
		-- �߼�����
		return -1, nil
	end

	if self.packs[packIndex] then
		if gridIndex >= 1 and gridIndex <= self.packs[packIndex]:getCapability() then
			return 0, self.packs[packIndex]:getGridItem(gridIndex)
		end
	end
	-- �߼�����
	return -1, nil
end

-- ���ָ��ID�ĵ����б�
function Packet:getItemsByID(itemID)
	local itemList = {}
	for packindex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
		-- ��ð���
		local pack = self:getPack(packindex)
		if pack then
			-- ��ð�������
			for gridIndex = 1, pack:getCapability() do
				local item = pack:getGridItem(gridIndex)
				if item and item:getItemID() == itemID then
					table.insert(itemList,item)
				end
			end
		end
	end 
	return itemList
end

-- ��ӵ���
function Packet:addItems(itemGuid, bUpdateClient)
	local item = g_itemMgr:getItem(itemGuid)
	if not item then
		-- ���߲�����
		return AddItemsResult.SrcInvalid
	end
	local itemConfig = tItemDB[item:getItemID()]
	if not itemConfig then
		-- �Ҳ�����������
		return AddItemsResult.SrcInvalid
	end

	-- �ж��Ƿ���Ҫ�����񱳰�
	if itemConfig.SubClass == ItemSubClass.Task then
		local result = self.packs[PacketPackIndex.Task]:addItems(item, bUpdateClient)
		if result == AddItemsResult.SucceedPile then
			-- ����Դ���ߣ���������
			g_itemMgr:destroyItem(itemGuid)
		end
		return result
	else
		local canAdd, tAddPacks = self:canAddItems(item)
		if canAdd then
			local result = AddItemsResult.Succeed
			for i = 1, #tAddPacks do
				local packIndex = tAddPacks[i][1]
				local addNum = tAddPacks[i][2]
				result = self.packs[packIndex]:addItemsLimitNums(item, addNum, bUpdateClient)
				if result ~= AddItemsResult.Succeed and result ~= AddItemsResult.SucceedPile then
					-- �����������������ֽ������Ϊǰ���Ѿ��жϿ�����ӳɹ���
					return result
				end
			end
			-- ���Դ���߷ֲ��������������ͬһ���������Ӵ�ţ���Ҫ����Դ����
			if #tAddPacks > 1 or result == AddItemsResult.SucceedPile then
				-- ����Դ���ߣ���������
				g_itemMgr:destroyItem(itemGuid)
				return AddItemsResult.SucceedPile
			else
				return AddItemsResult.Succeed
			end
		else
			-- �Ų���
			return AddItemsResult.Full
		end
	end
end

-- �жϿɷ���������ע�⣺�����ǳ��������������չ��������������
function Packet:canAddItems(item)
	local canAdd = false
	local tAddPacks = {}
	local needAddNumber = item:getNumber()
	local canAddNumber = 0

	for packIndex = PacketPackIndex.Default, PacketPackIndex.Horse do
		if self.packs[packIndex] then
			-- ��ǰ�������Է������Ŀ
			local curAddNumber = self.packs[packIndex]:canAddNumber(item)
			if curAddNumber > 0 then
				-- ��¼��ǰ�Ѿ����Է���ĵ�����Ŀ
				canAddNumber = canAddNumber + curAddNumber
				if needAddNumber - canAddNumber <= 0 then
					-- ��¼�µ�ǰ���������͵�ǰ�������Է���ĵ�����Ŀ������ֻ��¼����������Ŀ
					table.insert(tAddPacks, {packIndex, needAddNumber})
					-- �Ѿ����Է�����
					canAdd = true
					break
				else
					-- ��¼�µ�ǰ���������͵�ǰ�������Է���ĵ�����Ŀ
					table.insert(tAddPacks, {packIndex, curAddNumber})
					-- ���㻹��Ҫ�������Ŀ
					needAddNumber = needAddNumber - canAddNumber
				end
			end
		end
	end

	return canAdd, tAddPacks
end

-- �Ƴ�����
function Packet:removeItem(itemGuid, removeNum, bUpdateClient)
	local item = g_itemMgr:getItem(itemGuid)
	if not item then
		-- ���߲�����
		return RemoveItemsResult.SrcInvalid
	end

	-- ��õ������ڵİ�������
	local packIndex = item:getPackIndex()
	if packIndex < PacketPackIndex.Default or packIndex >= PacketPackIndex.MaxNum then
		-- �߼�����
		return RemoveItemsResult.Failed
	end

	local result = self.packs[packIndex]:removeItem(item, removeNum, bUpdateClient)
	if result == RemoveItemsResult.SucceedClean then
		-- ����Դ���ߣ���������
		g_itemMgr:destroyItem(itemGuid)
	end

	return result
end

-- ���ӵ��ߵ�ָ������
function Packet:addItemsToPack(srcItem, dstPackIndex)
	if dstPackIndex < PacketPackIndex.Default or dstPackIndex >= PacketPackIndex.MaxNum then
		-- �߼�����
		return AddItemsResult.LocInvalid
	end

	-- �ж��Ƿ����������
	if srcItem:isTaskItem() then
		if dstPackIndex ~= PacketPackIndex.Task then
			-- �������ֻ�ܷ��������
			return AddItemsResult.LocInvalid
		end
	else
		if dstPackIndex == PacketPackIndex.Task then
			-- ��������߲��ܷ��������
			return AddItemsResult.LocInvalid
		end
	end

	if self.packs[dstPackIndex] then
		local result = self.packs[dstPackIndex]:addItems(srcItem, true)
		if result == AddItemsResult.SucceedPile then
			-- ����Դ���ߣ���������
			g_itemMgr:destroyItem(srcItem:getGuid())
		end

		return result
	else
		-- ������δ����
		return AddItemsResult.LocInvalid
	end
end

--���ָ����������Ʒ������
function Packet:addNumberItemsToPack(srcItem, dstPackIndex, itemNum)
	if dstPackIndex ~= PacketPackIndex.Default then
		-- �߼�����
		return false
	end
	return self.packs[dstPackIndex]:addItemsLimitNums(srcItem, itemNum, true)
end

-- ��ӵ��ߵ�ָ����Ʒ��
function Packet:addItemsToGrid(item, packIndex, gridIndex, bUpdateClient)
	if packIndex < PacketPackIndex.Default or packIndex >= PacketPackIndex.MaxNum then
		-- �߼�����
		return false
	end

	-- �ж��Ƿ����������
	if item:isTaskItem() then
		if packIndex ~= PacketPackIndex.Task then
			-- �������ֻ�ܷ��������
			return false
		end
	else
		if packIndex == PacketPackIndex.Task then
			-- ��������߲��ܷ��������
			return false
		end
	end

	if self.packs[packIndex] then
		return self.packs[packIndex]:addItemsToGrid(item, gridIndex, bUpdateClient)
	else
		-- ������δ����
		return false
	end
end

-- ��ָ����Ʒ���Ƴ����ߣ��������ٵ���
function Packet:removeItemsFromGrid(packIndex, gridIndex, bUpdateClient)
	if packIndex < PacketPackIndex.Default or packIndex >= PacketPackIndex.MaxNum then
		-- �߼�����
		return false
	end

	if self.packs[packIndex] then
		return self.packs[packIndex]:removeItemsFromGrid(gridIndex, bUpdateClient)
	else
		-- ������δ����
		return false
	end
end

-- ���ӵ��ߵ�ָ����Ʒ��
function Packet:pileItemsToGrid(srcItem, dstPackIndex, dstGridIndex)
	if dstPackIndex < PacketPackIndex.Default or dstPackIndex >= PacketPackIndex.MaxNum then
		-- �߼�����
		return false
	end

	if self.packs[dstPackIndex] then
		return self.packs[dstPackIndex]:pileItemsToGrid(srcItem, dstGridIndex)
	else
		-- ������δ����
		return false
	end
end

-- ���ӵ��ߵ�����ָ����Ʒ��ע���������ܵ��Ӷ��پ͵��Ӷ���
function Packet:pileItemsToGridEx(srcItem, dstPackIndex, dstGridIndex)
	if dstPackIndex < PacketPackIndex.Default or dstPackIndex >= PacketPackIndex.MaxNum then
		-- �߼�����
		return false
	end

	if self.packs[dstPackIndex] then
		return self.packs[dstPackIndex]:pileItemsToGridEx(srcItem, dstGridIndex)
	else
		-- ������δ����
		return false
	end
end

-- ���ָ��ID���ߵĸ���
function Packet:getNumByItemID(itemId)
	local itemConfig = tItemDB[itemId]
	if not itemConfig then
		-- �Ҳ�����������
		return 0
	end

	local itemNum = 0
	if itemConfig.SubClass == ItemSubClass.Task then
		-- �������������
		itemNum = self.packs[PacketPackIndex.Task]:getNumByItemID(itemId)
	else
		for packIndex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
			if packIndex ~= PacketPackIndex.Task then
				if self.packs[packIndex] then
					itemNum = itemNum + self.packs[packIndex]:getNumByItemID(itemId)
				end
			end
		end
	end

	return itemNum
end

--[[������Ϸ�趨��Ʒ�󶨷ǰ����������Ƿ����йأ����ܸ��ģ�����������ò��ţ�������
--���ָ��ID�İ󶨵��ߵĸ���
function Packet:getBindItemNum(itemId)
	local itemConfig = tItemDB[itemId]
	if not itemConfig then
		-- �Ҳ�����������
		return 0
	end

	local itemNum = 0
	if itemConfig.SubClass == ItemSubClass.Task then
		-- �������������
		itemNum = self.packs[PacketPackIndex.Task]:getBindItemNum(itemId)
	else
		for packIndex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
			if packIndex ~= PacketPackIndex.Task then
				if self.packs[packIndex] then
					itemNum = itemNum + self.packs[packIndex]:getBindItemNum(itemId)
				end
			end
		end
	end

	return itemNum
end

-- ���ָ��ID��δ�󶨵��ߵĸ���
function Packet:getNoBindItemNum(itemId)
	local itemConfig = tItemDB[itemId]
	if not itemConfig then
		-- �Ҳ�����������
		return 0
	end

	local itemNum = 0
	if itemConfig.SubClass == ItemSubClass.Task then
		-- �������������
		itemNum = self.packs[PacketPackIndex.Task]:getNoBindItemNum(itemId)
	else
		for packIndex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
			if packIndex ~= PacketPackIndex.Task then
				if self.packs[packIndex] then
					itemNum = itemNum + self.packs[packIndex]:getNoBindItemNum(itemId)
				end
			end
		end
	end

	return itemNum
end

-- �Ƴ�ָ��ID�İ󶨵��ߣ������Ƴ��ĸ���
function Packet:removeBindItem(itemId, itemNum)
	-- ���ж�������������
	if self:getBindItemNum(itemId) < itemNum then
		return 0
	end

	local needRemoveNum = itemNum
	for packIndex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
		if self.packs[packIndex] then
			local nRemoveNum = self.packs[packIndex]:removeBindItem(itemId, needRemoveNum)
			needRemoveNum = needRemoveNum - nRemoveNum
			if needRemoveNum <= 0 then
				-- �Ѿ��۳�����Ŀ��
				return itemNum
			end
		end
	end
	return 0
end

-- �Ƴ�ָ��ID��δ�󶨵��ߣ������Ƴ��ĸ���
function Packet:removeNoBindItem(itemId, itemNum)
	-- ���ж�������������
	if self:getNoBindItemNum(itemId) < itemNum then
		return 0
	end

	local needRemoveNum = itemNum
	for packIndex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
		if self.packs[packIndex] then
			local nRemoveNum = self.packs[packIndex]:removeNoBindItem(itemId, needRemoveNum)
			needRemoveNum = needRemoveNum - nRemoveNum
			if needRemoveNum <= 0 then
				-- �Ѿ��۳�����Ŀ��
				return itemNum
			end
		end
	end
	return 0
end

]]

-- �Ƴ�ָ��ID���ߣ������Ƴ��ĸ���
function Packet:removeByItemId(itemId, itemNum)
	-- ���ж�������������
	if self:getNumByItemID(itemId) < itemNum then
		return 0
	end

	local needRemoveNum = itemNum
	for packIndex = PacketPackIndex.Default, PacketPackIndex.MaxNum-1 do
		if self.packs[packIndex] then
			local nRemoveNum = self.packs[packIndex]:removeByItemId(itemId, needRemoveNum)
			needRemoveNum = needRemoveNum - nRemoveNum
			if needRemoveNum <= 0 then
				-- �Ѿ��۳�����Ŀ��
				return itemNum
			end
		end
	end
	return 0
end

-- ��������λ��
function Packet:swapItem(srcPackIndex, srcGridIndex, dstPackIndex, dstGridIndex)
	if srcPackIndex < PacketPackIndex.Default or srcPackIndex >= PacketPackIndex.MaxNum then
		-- �߼�����
		return false
	end
	if dstPackIndex < PacketPackIndex.Default or dstPackIndex >= PacketPackIndex.MaxNum then
		-- �߼�����
		return false
	end

	local srcPack = self.packs[srcPackIndex]
	local srcGridItem = srcPack:getGridItem(srcGridIndex)
	if not srcGridItem then
		return false
	end
	local dstPack = self.packs[dstPackIndex]
	local dstGridItem = dstPack:getGridItem(dstGridIndex)
	if not dstGridItem then
		return false
	end

	-- ��������������Ҫô����������ߣ�Ҫô�����ǣ������ܽ���
	if srcGridItem:isTaskItem() ~= dstGridItem:isTaskItem() then
		return false
	end

	-- Դ�����Ƴ�ԭ���ĵ���
	srcPack:removeItemsFromGrid(srcGridIndex, false)
	-- Դ��������µ���
	srcPack:addItemsToGrid(dstGridItem, srcGridIndex, true)
	-- Ŀ������Ƴ�ԭ���ĵ���
	dstPack:removeItemsFromGrid(dstGridIndex, false)
	-- Ŀ���������µ���
	dstPack:addItemsToGrid(srcGridItem, dstGridIndex, true)

	return true
end

-- ������
function Packet:packUp()
	for packIndex = PacketPackIndex.Default, PacketPackIndex.Task do
		-- ��ð���
		local pack = self.packs[packIndex]
		if pack then
			-- ÿһ��������������
			pack:packUp()
		end
	end
	-- ֪ͨ�ͻ��˵�������
	self:updateItemToClient()
end

-- �õ�ս����������ս����ʹ��
function Packet:getBattlePack()
	-- �ܷ�ʹ����������ߵı��
	local canUseHealItemFlag = true
	local mapID = self.owner:getCurPos()
	if mapID >= EctypeMap_StartID then
		local ectype = g_ectypeMgr:getEctype(mapID)
		if ectype and not ectype:canUseHealItems() then
			-- ��ǰ�����޷�ʹ�����������
			canUseHealItemFlag = false
		end
	end
	local playerDBID = self.owner:getDBID()
	local battlePack = {}
	for packIndex = PacketPackIndex.Default, PacketPackIndex.Horse do
		-- ��ð���
		local pack = self.packs[packIndex]
		if pack then
			-- ��ð�������
			for gridIndex = 1, pack:getCapability() do
				local item = pack:getGridItem(gridIndex)
				-- ֻ�õ�ս���п�ʹ�õ�ҩƷ�����
				if item and item:isBattleItem() then
					if not canUseHealItemFlag and item:isHealItem() then
					else
						local itemID = item:getItemID()
						battlePack[item:getGuid()] = {itemID = itemID, itemNum = item:getNumber(), packIndex = packIndex, gridIndex = gridIndex,
						useTimes = g_itemMgr:getItemUseTimes(playerDBID, itemID),effect = item:getEffect()}
					end
				end
			end
		end
	end
	return battlePack
end

-- ����ս��������ս�������صģ�����Ҫ������Ϣ������ҵ�������
function Packet:setBattlePack(battlePack)
	for itemGuid, itemInfo in pairs(battlePack or {}) do
		if itemGuid then
			-- ս���п��õĵ��ߣ����ڱ������е��ߣ������������
			local item = g_itemMgr:getItem(itemGuid)
			if item then
				if itemInfo.useTimes > 0 then
					-- ����ʹ�ô���
					g_itemMgr:resetItemUseTimes(self.owner:getDBID(), itemInfo.itemID, itemInfo.useTimes)
				end
				-- ���ʹ�����ˣ���ĿΪ0����Ҫ���ٵ���
				if itemInfo.itemNum == 0 then
					self:removeItem(itemGuid, 0, false)
				else
					-- ��õ������ڵİ���
					local packIndex = item:getPackIndex()
					local pack = self.packs[packIndex]
					if pack then
						pack:updateItem(item:getGridIndex(), itemInfo.itemID, itemInfo.itemNum)
					else
						-- �߼�����
					end
				end
			else
				-- �߼�����
			end
		else
			-- ս��������õĵ��ߣ���ӽ�����
			local item = g_itemMgr:createItem(itemInfo.itemID, itemInfo.itemNum)
			if item then
				self:addItems(item:getGuid(), false)
			end
		end
	end

	-- ֪ͨ�ͻ��˵�������
	self:updateItemToClient()
end

-- �ж�ָ������ID����Ŀ�ܷ���뱳��
function Packet:canAddPacket(itemID, itemNum, bindFlag)
	local itemConfig = tItemDB[itemID]
	if not itemConfig or itemNum <= 0 then
		return false
	end
	local curCanAddNum = 0
	if itemConfig.SubClass == ItemSubClass.Task then
		local taskPack = self.packs[PacketPackIndex.Task]
		if taskPack then
			-- ���ҿո��ܴ�ŵ���Ŀ
			curCanAddNum = taskPack:getAllSpaceNum() * itemConfig.MaxPileNum
			if curCanAddNum >= itemNum then
				return true
			end
			-- ���ҵ����ܴ�ŵ���Ŀ
			curCanAddNum = curCanAddNum + taskPack:getCanPileNum(itemID)
			if curCanAddNum >= itemNum then
				return true
			end
		end
	else
		for packIndex = PacketPackIndex.Default, PacketPackIndex.Horse do
			local pack = self.packs[packIndex]
			if pack then
				-- ���ҿո��ܴ�ŵ���Ŀ
				curCanAddNum = pack:getAllSpaceNum() * itemConfig.MaxPileNum
				if curCanAddNum >= itemNum then
					return true
				end
				-- ���ҵ����ܴ�ŵ���Ŀ
				curCanAddNum = curCanAddNum + pack:getCanPileNum(itemID)
				if curCanAddNum >= itemNum then
					return true
				end
			end
		end
	end
	return false
end
