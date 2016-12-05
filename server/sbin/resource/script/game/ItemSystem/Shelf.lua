--[[Shelf.lua
����:
	��һع�������
]]

Shelf = class()

function Shelf:__init(owner)
	-- ӵ����
	self.owner = owner;
	-- ���а���
	self.packs = {}

	-- Ĭ�ϰ���
	local defaultPack = Pack()
	--��������Ĭ������Ϊ12
	defaultPack:setCapability(ShelfMaxCapacity)
	--���������Npc�ع����ܰ�4
	defaultPack:setPackContainerID(PackContainerID.Shelf)
	self:addPack(ShelfPackIndex.Default, defaultPack)
end

function Shelf:__release()
	release(self.packs[ShelfPackIndex.Default])
	self.packs[ShelfPackIndex.Default] = nil
end

-- �������ID
function Shelf:getContainerID()
	return PackContainerID.Shelf
end

-- ֪ͨ�ͻ��˵�������
function Shelf:updateItemToClient()
	self.packs[ShelfPackIndex.Default]:updateClient()
end

-- ��Ӱ���
function Shelf:addPack(packIndex, pack)
	if instanceof(pack, Pack) then
		if self.packs[packIndex] then
			-- �Ѿ�����
			return false
		else
			pack:setOwner(self.owner)
			pack:setPackIndex(packIndex)
			self.packs[packIndex] = pack
			return true
		end
	end
	return false
end

-- ��ð���
function Shelf:getPack()
	-- �ֿ��һ������
	return self.packs[ShelfPackIndex.Default]
end

-- ���ָ��λ�õĵ���
function Shelf:getItems(packIndex, gridIndex)
	if packIndex ~= ShelfPackIndex.Default then
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

-- ɾ������
function Shelf:removeItem(itemGuid, removeNum, bUpdateClient)
	local item = g_itemMgr:getItem(itemGuid)
	if not item then
		-- ���߲�����
		return RemoveItemsResult.SrcInvalid
	end

	local result = self.packs[ShelfPackIndex.Default]:removeItem(item, removeNum, bUpdateClient)
	if result == RemoveItemsResult.SucceedClean then
		-- ����Դ���ߣ���������
		g_itemMgr:destroyItem(itemGuid)
	end
end

-- ���ӵ���ָ����������ָ������
function Shelf:addNumberItemsToPack(srcItem, dstPackIndex, itemNum)
	if dstPackIndex ~= ShelfPackIndex.Default then
		-- �߼�����
		print("ִ�е�����")
		return false
	end
	return self.packs[dstPackIndex]:addItemsToShelf(srcItem, itemNum, true)
end

-- ��ָ����Ʒ���Ƴ����ߣ��������ٵ���
function Shelf:removeItemsFromGrid(packIndex, gridIndex, bUpdateClient)
	if packIndex ~= ShelfPackIndex.Default then
		-- �߼�����
		return false
	end
	return self.packs[packIndex]:removeItemsFromGrid(gridIndex, bUpdateClient)
end


-- ��������һ��˳��
function Shelf:upGridItem(packIndex, bUpdateClient)
	-- ����Ĭ�ϰ���
	if packIndex ~= ShelfPackIndex.Default then
		-- �߼�����
		return false
	end
	return self.packs[packIndex]:packUpdate(bUpdateClient)
end
