--[[Pack.lua
����:
	������
]]

Pack = class()

function Pack:__init()
	-- ��Ʒ��
	self.grids = {}
	-- ����
	self.capacity = 0
	-- ӵ����
	self.owner = nil
	-- ��������
	self.packIndex = -1
	-- ��������ID
	self.packContainerID = -1
	-- ��¼�иı��λ�ã�����֪ͨ�ͻ���
	self.changeLocation = {}
	-- ��¼�м�ʱ�ĵ���λ��
	self.timeItemLocation = {}
	--��¼λ��
	self.gridIndex = 1
end

function Pack:__release()
	for i = 1, self:getCapability() do
		release(self.grids[i])
		self.grids[i] = nil
	end
end

-- ���ð�������
function Pack:setGridItem(item, gridIndex)
	-- ��¼������Ʒ������
	item:setGridIndex(gridIndex)
	-- ��¼��������ID
	item:setContainerID(self.packContainerID)
	-- ��¼��������
	item:setPack(self)
	-- ��¼����
	self.grids[gridIndex] = item

	-- ��ʱ����Ҫ��һ��λ����Ϣ�������⵽��ʱ��
	if item:getExpireTime() > 0 then
		self.timeItemLocation[item:getGuid()] = gridIndex
	end
end

-- ��ð�������
function Pack:getGridItem(gridIndex)
	return self.grids[gridIndex]
end

-- ��ð������ڼ�ʱ�ĵ���
function Pack:getTimeItems()
	local tTimeItems = {}
	for itemGuid, gridIndex in pairs(self.timeItemLocation) do
		local gridItem = self.grids[gridIndex]
		if gridItem then
			if gridItem:getGuid() == itemGuid then
				-- �����б�
				table.insert(tTimeItems, gridItem)
			else
				-- ��ʱ���߿��������٣��������߷ŵ�������
				self.timeItemLocation[itemGuid] = nil
			end
		else
			-- ��ʱ���߿���������
			self.timeItemLocation[itemGuid] = nil
		end
	end
	return tTimeItems
end

-- ���ð�������
function Pack:setCapability(capacity)
	self.capacity = capacity
end

-- ��ð�������
function Pack:getCapability()
	return self.capacity
end

-- ����ӵ����
function Pack:setOwner(owner)
	self.owner = owner
end

-- ��ȡӵ����
function Pack:getOwner()
	return self.owner
end

-- ���ð�������
function Pack:setPackIndex(packIndex)
	self.packIndex = packIndex
end

-- ��ð�������
function Pack:getPackIndex()
	return self.packIndex
end

-- ������������ID
function Pack:setPackContainerID(packContainerID)
	self.packContainerID = packContainerID
end

-- ֪ͨ�ͻ��˸��µ���
function Pack:updateItemsToClient(gridItem)
	if not gridItem then
		return
	end
	-- ��õ��������ֳ������ͻ���
	local propertyContext = gridItem:getPropertyContext()

	-- ������Ч����Lua�����л�һ�£���ֹ���������ȶ�ʧ������
	if propertyContext.attr then
		propertyContext.attr = serialize(propertyContext.attr)
	end
	if propertyContext.suitAttr then
		propertyContext.suitAttr = serialize(propertyContext.suitAttr)
	end
	propertyContext.baseEffect = serialize(propertyContext.baseEffect)
	propertyContext.addEffect = serialize(propertyContext.addEffect)
	propertyContext.bindEffect = serialize(propertyContext.bindEffect)
	propertyContext.refiningEffect = serialize(propertyContext.refiningEffect)
	local event = Event.getEvent(ItemEvents_SC_CreateItem, gridItem:getGuid(), propertyContext)
	g_eventMgr:fireRemoteEvent(event, self.owner)
end

-- ��¼�ı�λ��
function Pack:setChange(gridIndex)
	if gridIndex < 1 or gridIndex > self:getCapability() then
		return
	end

	local gridItem = self.grids[gridIndex]
	if gridItem then
		-- ֪ͨ�ͻ��˴�������
		self:updateItemsToClient(gridItem)
	end

	self.changeLocation[gridIndex] = gridIndex
end

-- ���͸��µ��ͻ���
function Pack:updateClient()
	local changeInfo = {}
	-- ������ĵ��߸�����Ϣ
	for _, gridIndex in pairs(self.changeLocation) do
		if gridIndex >= 1 and gridIndex <= self:getCapability() then
			local item = self.grids[gridIndex]
			changeInfo[gridIndex] = {}
			if item then
				changeInfo[gridIndex].guid = item:getGuid()
				changeInfo[gridIndex].gridIndex = gridIndex
			else
				changeInfo[gridIndex].gridIndex = gridIndex
			end
		end
	end
	if table.size(changeInfo) > 0 then
		local event = Event.getEvent(ItemEvents_SC_UpdateInfo, self.packContainerID, self.packIndex, changeInfo)
		g_eventMgr:fireRemoteEvent(event, self.owner)
	end

	-- ����ı�λ�ñ�
	self.changeLocation = {}
end

-- ��ñ�����һ���ո��λ�ã����itemConfig��Ϊ�գ���ʾ�ҿ��Ե��ӵ�λ�ã������ؿ��Ե�����ȥ����Ŀ
function Pack:getFirstSpace(itemConfig)
	for i = 1, self:getCapability() do
		local item = self.grids[i]
		if (not item and not itemConfig) then
			return i
		elseif (item and itemConfig) then
			if item:getItemID() == itemConfig.ID then
				if item:getNumber() < itemConfig.MaxPileNum then
					return i, itemConfig.MaxPileNum-item:getNumber()
				end
			end
		end
	end
	return -1
end

-- ��ñ�����������Ŀ����ʵ��ռ�ø�����
function Pack:getPackItemNum()
	local itemNum = 0

	for i = 1, self:getCapability() do
		local item = self.grids[i]
		if item then
			itemNum = itemNum + 1
		end
	end
	return itemNum
end

-- ��ñ��������пո���
function Pack:getAllSpaceNum()
	local spaceNum = 0

	for i = 1, self:getCapability() do
		local item = self.grids[i]
		if not item then
			spaceNum = spaceNum + 1
		end
	end

	return spaceNum
end

-- ��ñ�����ָ�����߿��Ե�����ȥ����Ŀ
function Pack:getCanPileNum(itemID)
	local totalCanPileNum = 0
	local curCanPileNum = 0

	for i = 1, self:getCapability() do
		local item = self.grids[i]
		if item and item:getItemID() == itemID then
			curCanPileNum = item:getPileNum() - item:getNumber()
			if curCanPileNum > 0 then
				totalCanPileNum = totalCanPileNum + curCanPileNum
			end
		end
	end

	return totalCanPileNum
end

-- ��ñ��������Ե��ӵ�ָ����������λ��
function Pack:getCanPileItemPos(itemID)
	for i = 1, self:getCapability() do
		local item = self.grids[i]
		if item and item:getItemID() == itemID then
			local curCanPileNum = item:getPileNum() - item:getNumber()
			if curCanPileNum > 0 then
				return i
			end
		end
	end
	return -1
end

-- ��ӵ��ߵ�����ָ����Ʒ��
function Pack:addItemsToGrid(item, gridIndex, bUpdateClient)
	if gridIndex < 1 or gridIndex > self:getCapability() then
		return false
	end

	local gridItem = self.grids[gridIndex]
	if not gridItem then
		-- ��¼����
		self:setGridItem(item, gridIndex)
	else
		-- ����Ʒ���Ѿ��е�����
		return false
	end

	-- ��¼���ı��
	self:setChange(gridIndex)
	-- ֪ͨ�ͻ���
	if bUpdateClient then
		self:updateClient()
	end

	return true
end

-- �Ӱ���ָ����Ʒ���Ƴ����ߣ��������ٵ���
function Pack:removeItemsFromGrid(gridIndex, bUpdateClient)
	if gridIndex < 1 or gridIndex > self:getCapability() then
		return false
	end

	local gridItem = self.grids[gridIndex]
	if gridItem then
		self.grids[gridIndex] = nil
	else
		-- ����Ʒ��û�е���
		return false
	end

	-- ��¼���ı��
	self:setChange(gridIndex)
	-- ֪ͨ�ͻ���
	if bUpdateClient then
		self:updateClient()
	end

	return true
end

-- ���ӵ��ߵ�����ָ����Ʒ��
function Pack:pileItemsToGrid(srcItem, dstGridIndex)
	if dstGridIndex < 1 or dstGridIndex > self:getCapability() then
		return false
	end

	local gridItem = self.grids[dstGridIndex]
	if gridItem then
		if gridItem:getItemID() ~= srcItem:getItemID() then
			-- ID��ͬ�����ܵ���
			return false
		end
		local maxPileNum = gridItem:getPileNum()
		if maxPileNum > 1 then
			local totalNum = gridItem:getNumber() + srcItem:getNumber()
			-- �ж��Ƿ���Ե���
			if totalNum <= maxPileNum then
				-- ���õ��Ӻ�ĵ�����Ŀ
				gridItem:setNumber(totalNum)
				-- ��¼���ı��
				self:setChange(dstGridIndex)
				-- ֪ͨ�ͻ���
				self:updateClient()
			else
				-- ��������������ֻ�ܽ���
				return false
			end
		else
			-- �����Ŀ��1�����ɵ���
			return false
		end
	else
		-- �߼�����
		return false
	end

	return true
end

-- ���ӵ��ߵ�����ָ����Ʒ��ע���������ܵ��Ӷ��پ͵��Ӷ���
function Pack:pileItemsToGridEx(srcItem, dstGridIndex)
	if dstGridIndex < 1 or dstGridIndex > self:getCapability() then
		return false
	end

	local gridItem = self.grids[dstGridIndex]
	if gridItem then
		if gridItem:getItemID() ~= srcItem:getItemID() then
			-- ID��ͬ�����ܵ���
			return false
		end
		local maxPileNum = gridItem:getPileNum()
		if maxPileNum > 1 then
			local itemNum = gridItem:getNumber()
			local spareNum = maxPileNum - itemNum
			-- �ж��Ƿ���Ե���
			if spareNum > 0 then
				local srcGridIndex = srcItem:getGridIndex()
				local srcItemNum = srcItem:getNumber()
				if spareNum >= srcItemNum then
					-- Դ����ȫ�������ˣ�����������
					self.grids[srcGridIndex] = nil
					g_itemMgr:destroyItem(srcItem:getGuid())
					-- ���õ��Ӻ�ĵ�����Ŀ
					gridItem:setNumber(itemNum+srcItemNum)
				else
					-- Դ���ߵ�����һ������Ŀ
					srcItem:setNumber(srcItemNum-spareNum)
					-- ���õ��Ӻ�ĵ�����Ŀ
					gridItem:setNumber(itemNum+spareNum)
				end
				-- ��¼���ı��
				self:setChange(srcGridIndex)
				-- ��¼���ı��
				self:setChange(dstGridIndex)
			else
				-- ���ܵ���
				return false
			end
		else
			-- �����Ŀ��1�����ɵ���
			return false
		end
	else
		-- �߼�����
		return false
	end

	return true
end

-- ��ӵ���
function Pack:addItems(item, bUpdateClient)
	local itemID = item:getItemID()
	local itemConfig = tItemDB[itemID]
	if not itemConfig then
		-- �Ҳ�����������
		return AddItemsResult.SrcInvalid
	end

	-- ����ͨ�����ӷ������
	if itemConfig.MaxPileNum > 1 then
		for i = 1, self:getCapability() do
			local gridItem = self.grids[i]
			if gridItem and gridItem:getItemID() == itemID then
				local totalNumber = gridItem:getNumber() + item:getNumber()
				if totalNumber <= itemConfig.MaxPileNum then
					-- ���õ��Ӻ�ĵ�����Ŀ
					gridItem:setNumber(totalNumber)
					-- ��¼���ı��
					self:setChange(i)
					-- ֪ͨ�ͻ���
					if bUpdateClient then
						self:updateClient()
					end
					-- ���ߵ��ӳɹ�
					return AddItemsResult.SucceedPile
				end
			end
		end

		-- ��ʱ������ͨ��������ӿ��Է��µ����
	end
	-- ���Ӳ����У����ҿ�λ���������
	local gridIndex = self:getFirstSpace()
	if gridIndex ~= -1 then
		-- �����������
		self:setGridItem(item, gridIndex)
		-- ��¼���ı��
		self:setChange(gridIndex)
		-- ֪ͨ�ͻ���
		if bUpdateClient then
			self:updateClient()
		end
		-- ������ӳɹ�
		return AddItemsResult.Succeed
	else
		-- ��������
		return AddItemsResult.Full
	end
end

-- ���ָ�������ĵ���
function Pack:addItemsLimitNums(item, addNum, bUpdateClient)
	local itemID = item:getItemID()
	local itemConfig = tItemDB[itemID]
	if not itemConfig then
		-- �Ҳ�����������
		return AddItemsResult.SrcInvalid
	end

	-- ������ͨ�����ӷ������
	if itemConfig.MaxPileNum > 1 then
		for i = 1, self:getCapability() do
			local gridItem = self.grids[i]
			if gridItem and gridItem:getItemID() == itemID then
				local leftPileNum = itemConfig.MaxPileNum - gridItem:getNumber()
				if leftPileNum > 0 then
					if addNum <= leftPileNum then
						-- ���õ��Ӻ�ĵ�����Ŀ
						gridItem:setNumber(gridItem:getNumber() + addNum)
						-- ��¼���ı��
						self:setChange(i)
						-- ֪ͨ�ͻ���
						if bUpdateClient then
							self:updateClient()
						end
						-- ���ߵ��ӳɹ�
						return AddItemsResult.SucceedPile
					else
						-- ֻ�ܵ���һ����
						gridItem:setNumber(itemConfig.MaxPileNum)
						-- ʣ����Ŀ�����ҵ���
						addNum = addNum - leftPileNum
						-- ��¼���ı��
						self:setChange(i)
						-- ֪ͨ�ͻ���
						if bUpdateClient then
							self:updateClient()
						end
					end
				end
			end
		end
	end

	-- ���Ӳ����У��������ҿ�λ���������
	local gridIndex = self:getFirstSpace()
	if gridIndex ~= -1 then
		if addNum == item:getNumber() then
			-- �������Ϳ��Է���������ߣ����÷ֲ�����
			self:setGridItem(item, gridIndex)
			-- ��¼���ı��
			self:setChange(gridIndex)
			-- ֪ͨ�ͻ���
			if bUpdateClient then
				self:updateClient()
			end
			-- ������ӳɹ�
			return AddItemsResult.Succeed
		else
			-- ������ֻ�Ƿ�һ���֣���Ҫ���´����µĵ���
			local newItem = g_itemMgr:createItemFromContext(item:getPropertyContext(), addNum)
			if not newItem then
				return AddItemsResult.Failed
			end
			-- ��¼�µĵ��ߣ����ﲢ����������Դ���ߣ���Ϊ�����Ų�����Ŀ�İ�����Ҫ�ã��ȶ�������ˣ��ɵ����߸��ݷ���ֵ������Դ����
			self:setGridItem(newItem, gridIndex)
			-- ��¼���ı��
			self:setChange(gridIndex)
			-- ֪ͨ�ͻ���
			if bUpdateClient then
				self:updateClient()
			end
			-- ���ߵ��ӳɹ�
			return AddItemsResult.SucceedPile
		end
	else
		return AddItemsResult.Full	
	end
end

-- �жϱ��������Է���ĵ�����Ŀ��ע�⣺���ﲢ��һ�����ؿ��Է���ľ����������ֻҪ��װ���¾�ֱ�ӷ��ؿ���װ�µ���Ŀ
function Pack:canAddNumber(item)
	local itemID = item:getItemID()
	local itemNum = item:getNumber()
	local itemConfig = tItemDB[itemID]
	if not itemConfig then
		-- �Ҳ�����������
		return 0
	end
	local maxPileNum = itemConfig.MaxPileNum
	local canAddNumber = 0
	local curCanPileNum = 0
	for i = 1, self:getCapability() do
		local gridItem = self.grids[i]
		if not gridItem then
			-- �ո�ֱ�Ӱ���������������
			canAddNumber = canAddNumber + maxPileNum
		elseif gridItem and gridItem:getItemID() == itemID then
			curCanPileNum = maxPileNum - gridItem:getNumber()
			if curCanPileNum > 0 then
				-- ���Ͽ��Ե��ӵ���Ŀ
				canAddNumber = canAddNumber + curCanPileNum
			end
		end
		if canAddNumber >= itemNum then
			-- �Ѿ�����װ���ˣ����ü�������ȥ�ˣ�ֱ�ӷ���
			return canAddNumber
		end
	end
	-- ִ�е����˵��������װ���£����ؿ���װ�������Ŀ
	return canAddNumber
end

-- �Ƴ�����
function Pack:removeItem(item, removeNum, bUpdateClient)
	local nResult = RemoveItemsResult.Failed

	-- �ж��Ƴ���Ŀ
	if 0 == removeNum then
		removeNum = item:getNumber()
	end
	if removeNum > item:getNumber() then
		-- �����Ƿ�
		nResult = RemoveItemsResult.NumInvalid
		return nResult
	end

	local gridIndex = item:getGridIndex()
	local gridItem = self.grids[gridIndex]
	if gridItem == item then
		local gridItemNum = gridItem:getNumber()
		if gridItemNum > removeNum then
			-- �۳���Ҫ�Ƴ�����Ŀ
			gridItem:setNumber(gridItemNum-removeNum)
			-- �Ƴ����߳ɹ�
			nResult = RemoveItemsResult.Succeed
		else
			-- ���������Ƴ�
			self.grids[gridIndex] = nil
			-- �Ƴ����߳ɹ���Դ������Ҫ����
			nResult = RemoveItemsResult.SucceedClean
		end
		-- ��¼���ı��
		self:setChange(gridIndex)
		if bUpdateClient then
			-- ֪ͨ�ͻ���
			self:updateClient()
		end
	end

	return nResult
end

--����ָ����ĵ���
function Pack:destroyItem(gridIndex, bUpdateClient)
	if gridIndex < 1 or gridIndex > self:getCapability() then
		return false
	end

	local gridItem = self.grids[gridIndex]
	if gridItem then
		self.grids[gridIndex] = nil
		g_itemMgr:destroyItem(gridItem:getGuid())
	else
		-- ����Ʒ��û�е���
		return false
	end

	-- ��¼���ı��
	self:setChange(gridIndex)
	-- ֪ͨ�ͻ���
	if bUpdateClient then
		self:updateClient()
	end

	return true
end

-- ���ָ��ID���ߵĸ���
function Pack:getNumByItemID(itemId)
	local itemNum = 0

	for i = 1, self:getCapability() do
		local gridItem = self.grids[i]
		if gridItem and gridItem:getItemID() == itemId then
			itemNum = itemNum + gridItem:getNumber()
		end
	end

	return itemNum
end

-- �Ƴ�ָ��ID���ߣ������Ƴ��ĸ���
function Pack:removeByItemId(itemId, itemNum)
	local removeNum = 0
	local needRemoveNum = itemNum

	for i = 1, self:getCapability() do
		local gridItem = self.grids[i]
		if gridItem and gridItem:getItemID() == itemId then
			local result = RemoveItemsResult.Failed
			local gridItemNum = gridItem:getNumber()
			if needRemoveNum > gridItemNum then
				result = self:removeItem(gridItem, gridItemNum, true)
				if result == RemoveItemsResult.Succeed or result == RemoveItemsResult.SucceedClean then
					removeNum = removeNum + gridItemNum
					needRemoveNum = needRemoveNum - gridItemNum
				end
			else
				result = self:removeItem(gridItem, needRemoveNum, true)
				if result == RemoveItemsResult.Succeed or result == RemoveItemsResult.SucceedClean then
					removeNum = removeNum + needRemoveNum
					needRemoveNum = 0
				end
			end
			if result == RemoveItemsResult.SucceedClean then
				-- ����Դ���ߣ���������
				g_itemMgr:destroyItem(gridItem:getGuid())
			end
			if needRemoveNum <= 0 or removeNum >= itemNum then
				-- �Ѿ��Ƴ���ָ����Ŀ��
				return removeNum
			end
		end
	end

	return removeNum
end

--[[ ���ָ��ID�İ󶨵��ߵĸ���
function Pack:getBindItemNum(itemId)
	local itemNum = 0

	for i = 1, self:getCapability() do
		local gridItem = self.grids[i]
		if gridItem and gridItem:getItemID() == itemId and gridItem:getBindFlag() then
			itemNum = itemNum + gridItem:getNumber()
		end
	end

	return itemNum
end

-- ���ָ��ID��δ�󶨵��ߵĸ���
function Pack:getNoBindItemNum(itemId)
	local itemNum = 0

	for i = 1, self:getCapability() do
		local gridItem = self.grids[i]
		if gridItem and gridItem:getItemID() == itemId and not gridItem:getBindFlag() then
			itemNum = itemNum + gridItem:getNumber()
		end
	end

	return itemNum
end

-- �Ƴ�ָ��ID�İ󶨵��ߣ������Ƴ��ĸ���
function Pack:removeBindItem(itemId, itemNum)
	local removeNum = 0
	local needRemoveNum = itemNum

	for i = 1, self:getCapability() do
		local gridItem = self.grids[i]
		if gridItem and gridItem:getItemID() == itemId and gridItem:getBindFlag() then
			local result = RemoveItemsResult.Failed
			local gridItemNum = gridItem:getNumber()
			if needRemoveNum > gridItemNum then
				result = self:removeItem(gridItem, gridItemNum, true)
				if result == RemoveItemsResult.Succeed or result == RemoveItemsResult.SucceedClean then
					removeNum = removeNum + gridItemNum
					needRemoveNum = needRemoveNum - gridItemNum
				end
			else
				result = self:removeItem(gridItem, needRemoveNum, true)
				if result == RemoveItemsResult.Succeed or result == RemoveItemsResult.SucceedClean then
					removeNum = removeNum + needRemoveNum
					needRemoveNum = 0
				end
			end
			if result == RemoveItemsResult.SucceedClean then
				-- ����Դ���ߣ���������
				g_itemMgr:destroyItem(gridItem:getGuid())
			end
			if needRemoveNum <= 0 or removeNum >= itemNum then
				-- �Ѿ��Ƴ���ָ����Ŀ��
				return removeNum
			end
		end
	end

	return removeNum
end

-- �Ƴ�ָ��ID��δ�󶨵��ߣ������Ƴ��ĸ���
function Pack:removeNoBindItem(itemId, itemNum)
	local removeNum = 0
	local needRemoveNum = itemNum

	for i = 1, self:getCapability() do
		local gridItem = self.grids[i]
		if gridItem and gridItem:getItemID() == itemId and not gridItem:getBindFlag() then
			local result = RemoveItemsResult.Failed
			local gridItemNum = gridItem:getNumber()
			if needRemoveNum > gridItemNum then
				result = self:removeItem(gridItem, gridItemNum, true)
				if result == RemoveItemsResult.Succeed or result == RemoveItemsResult.SucceedClean then
					removeNum = removeNum + gridItemNum
					needRemoveNum = needRemoveNum - gridItemNum
				end
			else
				result = self:removeItem(gridItem, needRemoveNum, true)
				if result == RemoveItemsResult.Succeed or result == RemoveItemsResult.SucceedClean then
					removeNum = removeNum + needRemoveNum
					needRemoveNum = 0
				end
			end
			if result == RemoveItemsResult.SucceedClean then
				-- ����Դ���ߣ���������
				g_itemMgr:destroyItem(gridItem:getGuid())
			end
			if needRemoveNum <= 0 or removeNum >= itemNum then
				-- �Ѿ��Ƴ���ָ����Ŀ��
				return removeNum
			end
		end
	end

	return removeNum
end]]

-- ����ָ��λ�õĵ�������
function Pack:updateItem(gridIndex, itemID, itemNum)
	local gridItem = self.grids[gridIndex]
	if gridItem then
		if gridItem:getItemID() == itemID then
			if itemNum > 0 and gridItem:getNumber() ~= itemNum then
				-- ���õ����µ���Ŀ
				gridItem:setNumber(itemNum)
				-- ��¼���ı��
				self:setChange(gridIndex)
			end
		end
	end
end

-- �������ȼ��ȵ�ǰ�������ȼ��͵ĸ��ӣ�����пո��ֱ�ӷ��ؿո�λ��
function Pack:getLowerPriorityItemPos(srcItem)
	local srcItemSortPriority = srcItem:getSortPriority()
	local srcSalePrice = srcItem:getSalePrice()
	-- ���ҷ�Χ�ڱ�����֮ǰ
	local gridIndex = srcItem:getGridIndex() - 1
	if gridIndex >= 1 and gridIndex <= self:getCapability() then
		for i = 1, gridIndex do
			local gridItem = self.grids[i]
			if gridItem then
				local curSortPriority = gridItem:getSortPriority()
				if curSortPriority < srcItemSortPriority then
					-- ���ȼ�С��Դ����
					return i
				elseif curSortPriority == srcItemSortPriority then
					-- ���ȼ���ȣ������ж�����Ʒ��ֵ
					local curSalePrice = gridItem:getSalePrice()
					if curSalePrice < srcSalePrice then
						return i
					elseif curSalePrice == srcSalePrice then
						-- ��Ʒ��ֵҲ��ȣ������ж�����Ʒ��Ŀ
						if gridItem:getNumber() < srcItem:getNumber() then
							return i
						end
					end
				end
			else
				-- ����ǿո�Ļ�����ֱ�ӷŹ�ȥ
				return i
			end
		end
	end
	return -1
end

-- �������ߣ�ע�⣺������ͬһ�������ｻ������
function Pack:swapItem(srcGridItem, dstGridItem)
	if not srcGridItem or not dstGridItem then
		return false
	end
	local srcGridIndex = srcGridItem:getGridIndex()
	local dstGridIndex = dstGridItem:getGridIndex()
	if srcGridIndex == dstGridIndex then
		return false
	end
	local capacity = self:getCapability()
	if srcGridIndex < 1 or srcGridIndex > capacity then
		return false
	end
	if dstGridIndex < 1 or dstGridIndex > capacity then
		return false
	end

	-- ��¼�µ���
	self:setGridItem(srcGridItem, dstGridIndex)
	self:setGridItem(dstGridItem, srcGridIndex)
	-- ��¼���ı��
	self:setChange(srcGridIndex)
	self:setChange(dstGridIndex)

	return true
end

-- �������
function Pack:packUp()
	local capacity = self:getCapability()
	-- ���ȴ������
	for gridIndex = capacity, 1, -1 do
		-- ������ִ�У�����ĵ��ߵ��ӵ�ǰ��ĵ�����
		local gridItem = self.grids[gridIndex]
		if gridItem then
			-- �õ���������Ŀ
			local maxPileNum = gridItem:getPileNum()
			if maxPileNum > 1 then
				-- ��Ҫ����
				local itemNum = gridItem:getNumber()
				local whileNum = 0
				while gridItem do
					whileNum = whileNum + 1
					if whileNum > itemNum then
						-- ��ֹ��ѭ��
						break
					end
					-- �ҵ����Ե��ӵĵ�һ������λ��
					local pileItemGridIndex = self:getCanPileItemPos(gridItem:getItemID())
					-- ����ҵ���λ���ǲ����ڱ�����ǰ���
					if pileItemGridIndex >= 1 and pileItemGridIndex < gridIndex then
						-- ��ʼ���ӣ�ע��������ܻ�����Դ����
						if not self:pileItemsToGridEx(gridItem, pileItemGridIndex) then
							-- �߼�����
							break
						end
						-- ���µõ������ߣ�������ڣ�˵�������Լ�������
						gridItem = self.grids[gridIndex]
						if not gridItem then
							-- ������ȫ����ȥ�ˣ�����������һ��
							break
						end
					else
						-- û�п��Ե��ӵ�
						break
					end
				end
			end
		end
	end
	-- Ȼ��������
	for gridIndex = capacity, 1, -1 do
		-- ������ִ�У����ȼ��ߵĵ��߾���ǰ��
		local gridItem = self.grids[gridIndex]
		if gridItem then
			local whileNum = 0
			while gridItem do
				whileNum = whileNum + 1
				if whileNum > capacity then
					-- ��ֹ��ѭ��
					break
				end
				local lowerPriorityGridIndex = self:getLowerPriorityItemPos(gridItem)
				if lowerPriorityGridIndex >= 1 then
					local dstGridItem = self.grids[lowerPriorityGridIndex]
					if dstGridItem then
						-- ���ڵ��ߣ��������߽��н���
						if not self:swapItem(gridItem, dstGridItem) then
							-- �߼�����
							break
						end
					else
						-- Ŀ��λ��û�е���
						if self:removeItemsFromGrid(gridItem:getGridIndex(), false) then
							-- �ȴ�Դλ���Ƴ���Ȼ���ƶ����߹�ȥ
							self:addItemsToGrid(gridItem, lowerPriorityGridIndex, false)
						else
							-- �߼�����
							break
						end
					end
					-- ���µõ���ǰ�����ĵ��ߣ�������ڣ�˵�������Լ�������
					gridItem = self.grids[gridIndex]
				else
					-- û�����ȼ��ȵ�ǰ���߻��͵ĵ�����
					break
				end
			end
		end
	end
end

--���Npc���ܰ�������,�Ƴ�֮����������
function Pack:packUpdate(bUpdateClient)
	for i = 1, ShelfMaxCapacity do 
		local item = self.grids[i]
		if item == nil then
			local item1 = self.grids[i+1]
			if not item1 then 
				self.grids[i] = nil
			else
				self:setGridItem(item1, i)
				self.grids[i+1] = nil
			end
			self:setChange(i)
			-- ֪ͨ�ͻ���
		end
	end
	if bUpdateClient then
		self:updateClient()
	end
end

--��ҳ�����Ʒʱ������Ʒ�����
function Pack:addItemsToShelf(item, addNum, bUpdateClient)
	-- ���ҿ�λ���������
	local itemID = item:getItemID()
	local gridIndex = self:getFirstSpace()
	if gridIndex ~= -1 then
		if addNum == item:getNumber() then
			-- �������Ϳ��Է���������ߣ����÷ֲ�����
			self:setGridItem(item, gridIndex)
			-- ��¼���ı��
			self:setChange(gridIndex)
			-- ֪ͨ�ͻ���
			if bUpdateClient then
				self:updateClient()
			end
			-- ������ӳɹ�
			return AddItemsResult.Succeed
		else
			-- ������ֻ�Ƿ�һ���֣���Ҫ���´����µĵ���
			local newItem = g_itemMgr:createItem(itemID, addNum)
			if not newItem then
				return AddItemsResult.Failed
			end
			-- ��¼�µĵ��ߣ����ﲢ����������Դ���ߣ���Ϊ�����Ų�����Ŀ�İ�����Ҫ�ã��ȶ�������ˣ��ɵ����߸��ݷ���ֵ������Դ����
			self:setGridItem(newItem, gridIndex)
			-- ��¼���ı��
			self:setChange(gridIndex)
			-- ֪ͨ�ͻ���
			if bUpdateClient then
				self:updateClient()
			end
			-- ���ߵ��ӳɹ�
			return AddItemsResult.SucceedPile
		end
	else
		if self.packContainerID == PackContainerID.Shelf then 
			--���ǻ�ȡ֮ǰ�Ļع������ϵ���Ʒ����������
			local itemPrevious = self.grids[1]
			local itemNum = itemPrevious:getNumber()
			self:destroyItem(self.gridIndex, true)
			--��ǰ�ƶ�һ��
			self:packUpdate(bUpdateClient)
			self:setGridItem(item, ShelfMaxCapacity)
			self:setChange(ShelfMaxCapacity)
			self:updateClient()
			return AddItemsResult.Succeed
		end
	end
end