--[[Depot.lua
����:
	�ֿ�
]]

Depot = class()

function Depot:__init(owner)
	-- ӵ����
	self.owner = owner;
	-- ���а���
	self.packs = {}

	-- ��һ������
	local firstPack = Pack()
	firstPack:setCapability(DepotDefaultCapacity)
	self:addPack(DepotPackIndex.First, firstPack)
	-- �ڶ�������
	local secondPack = Pack()
	secondPack:setCapability(0)
	self:addPack(DepotPackIndex.Second, secondPack)
end

function Depot:__release()
	for packIndex = DepotPackIndex.First, DepotPackIndex.MaxNum-1 do
		if self.packs[packIndex] then
			release(self.packs[packIndex])
			self.packs[packIndex] = nil
		end
	end
end

-- ����ʱ�����Ƿ���
function Depot:checkItemExpire()
	for packIndex = DepotPackIndex.First, DepotPackIndex.MaxNum-1 do
		-- ��ð���
		local pack = self:getPack(packIndex)
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
function Depot:getContainerID()
	return PackContainerID.Depot
end

-- ֪ͨ�ͻ��˵�������
function Depot:updateItemToClient()
	for packIndex = DepotPackIndex.First, DepotPackIndex.MaxNum-1 do
		if self.packs[packIndex] then
			self.packs[packIndex]:updateClient()
		end
	end
end

-- ��Ӱ���
function Depot:addPack(packIndex, pack)
	if instanceof(pack, Pack) then
		if self.packs[packIndex] then
			-- �Ѿ�����
			return false
		else
			pack:setOwner(self.owner)
			pack:setPackIndex(packIndex)
			pack:setPackContainerID(PackContainerID.Depot)
			self.packs[packIndex] = pack
			return true
		end
	end
	return false
end

-- ��ð���
function Depot:getPack(packIndex)
	return self.packs[packIndex]
end

-- ���ָ��λ�õĵ���
function Depot:getItems(packIndex, gridIndex)
	if packIndex < DepotPackIndex.First or packIndex >= DepotPackIndex.MaxNum then
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

-- ��ӵ���
function Depot:addItems(itemGuid, bUpdateClient)
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

	local canAdd, tAddPacks, result = self:canAddItems(item)
	if canAdd then
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
		local event = Event.getEvent(ClientEvents_SC_PromptMsg,eventGroup_Item, result)
		g_eventMgr:fireRemoteEvent(event,self.owner)
	end
	return result
end

-- �жϿɷ�������
function Depot:canAddItems(item)
	local canAdd = false
	local result = nil
	local tAddPacks = {}
	local needAddNumber = item:getNumber()
	local canAddNumber = 0

	for packIndex = DepotPackIndex.First, DepotPackIndex.MaxNum-1 do
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
					result = AddItemsResult.Succeed
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
	if not canAdd then
		local depotHandler = self.owner:getHandler(HandlerDef_Depot)
		local curCapacity = depotHandler:getDepotCapability()
		if curCapacity >= DepotMaxCapacity then
			--���Ĳֿ��Ѵ������޷�������Ʒ��
			result = 16
		else
			--��Ĳֿ��������빺��ֿ�Ǭ��������ֿ�
			result = 14
		end
		
	end

	return canAdd, tAddPacks,result
end

-- ɾ������
function Depot:removeItem(itemGuid, removeNum, bUpdateClient)
	local item = g_itemMgr:getItem(itemGuid)
	if not item then
		-- ���߲�����
		return RemoveItemsResult.SrcInvalid
	end

	-- ��õ������ڵİ�������
	local packIndex = item:getPackIndex()
	if packIndex < DepotPackIndex.First or packIndex >= DepotPackIndex.MaxNum then
		-- �߼�����
		return RemoveItemsResult.Failed
	end

	local result = self.packs[packIndex]:removeItem(item, removeNum, bUpdateClient)
	if result == RemoveItemsResult.SucceedClean then
		-- ����Դ���ߣ���������
		g_itemMgr:destroyItem(itemGuid)
	end
end

-- ���ӵ��ߵ�ָ������
function Depot:addItemsToPack(srcItem, dstPackIndex)
	if dstPackIndex < DepotPackIndex.First or dstPackIndex >= DepotPackIndex.MaxNum then
		-- �߼�����
		return AddItemsResult.LocInvalid
	end

	local result = self.packs[dstPackIndex]:addItems(srcItem, true)
	if result == AddItemsResult.SucceedPile then
		-- ����Դ���ߣ���������
		g_itemMgr:destroyItem(srcItem:getGuid())
	end
	return result
end

-- ��ӵ��ߵ�ָ����Ʒ��
function Depot:addItemsToGrid(item, packIndex, gridIndex, bUpdateClient)
	if packIndex < DepotPackIndex.First or packIndex >= DepotPackIndex.MaxNum then
		-- �߼�����
		return false
	end
	return self.packs[packIndex]:addItemsToGrid(item, gridIndex, bUpdateClient)
end

-- ��ָ����Ʒ���Ƴ����ߣ��������ٵ���
function Depot:removeItemsFromGrid(packIndex, gridIndex, bUpdateClient)
	if packIndex < DepotPackIndex.First or packIndex >= DepotPackIndex.MaxNum then
		-- �߼�����
		return false
	end

	return self.packs[packIndex]:removeItemsFromGrid(gridIndex, bUpdateClient)
end

-- ���ӵ��ߵ�ָ����Ʒ��
function Depot:pileItemsToGrid(srcItem, dstPackIndex, dstGridIndex)
	if dstPackIndex < DepotPackIndex.First or dstPackIndex >= DepotPackIndex.MaxNum then
		-- �߼�����
		return false
	end

	return self.packs[dstPackIndex]:pileItemsToGrid(srcItem, dstGridIndex)
end

-- ���ӵ��ߵ�����ָ����Ʒ��ע���������ܵ��Ӷ��پ͵��Ӷ���
function Depot:pileItemsToGridEx(srcItem, dstPackIndex, dstGridIndex)
	if dstPackIndex < DepotPackIndex.First or dstPackIndex >= DepotPackIndex.MaxNum then
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

-- ��������λ��
function Depot:swapItem(srcPackIndex, srcGridIndex, dstPackIndex, dstGridIndex)
	if srcPackIndex < DepotPackIndex.First or srcPackIndex >= DepotPackIndex.MaxNum then
		-- �߼�����
		return false
	end
	if dstPackIndex < DepotPackIndex.First or dstPackIndex >= DepotPackIndex.MaxNum then
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

-- ����ֿ�
function Depot:packUp()
	for packIndex = DepotPackIndex.First, DepotPackIndex.MaxNum-1 do
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
