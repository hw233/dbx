--[[Equip.lua
����:
	װ����
]]

Equip = class()

function Equip:__init(owner)
	-- ӵ����
	self.owner = owner;
	-- ���а���
	self.packs = {}

	-- װ������һ��Ĭ�ϰ���
	local defaultPack = Pack()
	defaultPack:setCapability(EquipDefaultCapacity)
	defaultPack:setOwner(self.owner)
	defaultPack:setPackIndex(EquipPackIndex.Default)
	defaultPack:setPackContainerID(PackContainerID.Equip)
	self.packs[EquipPackIndex.Default] = defaultPack
end

function Equip:__release()
	release(self.packs[EquipPackIndex.Default])
	self.packs[EquipPackIndex.Default] = nil
end

-- �������ID
function Equip:getContainerID()
	return PackContainerID.Equip
end

-- ֪ͨ�ͻ��˵�������
function Equip:updateItemToClient()
	self.packs[EquipPackIndex.Default]:updateClient()
end

-- ��ð���
function Equip:getPack()
	return self.packs[EquipPackIndex.Default]
end

-- ���ָ��λ�õĵ���
function Equip:getItems(packIndex, gridIndex)
	if packIndex ~= EquipPackIndex.Default then
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

-- ����Ƿ������ӵ��ߵ�ָ����Ʒ������ֻ���Ϸ��ԣ�Ŀ��λ�ô��ڵ��߲��ڴ˼�ⷶΧ
function Equip:canAddItemsToGrid(item, packIndex, gridIndex)
	if packIndex ~= EquipPackIndex.Default then
		-- �߼�����
		return false
	end
	if not instanceof(item, Equipment) then
		return false
	end
	-- ����;�Ϊ0�������κ�Ч��
	if item:getCurDurability() <= 0 then
		local event = Event.getEvent(ClientEvents_SC_PromptMsg,eventGroup_Item, 13)
		g_eventMgr:fireRemoteEvent(event,self.owner)
		return
	end

	if item:getEquipLevel() > self.owner:getLevel() then
		local event = Event.getEvent(ClientEvents_SC_PromptMsg,eventGroup_Item, 11)
		g_eventMgr:fireRemoteEvent(event,self.owner)
		return
	end

	local equipGridIndex = item:getEquipGridIndex()
	if type(equipGridIndex) ~= 'table' then
		if equipGridIndex ~= gridIndex then
			-- װ��λ�ò��Ϸ�
			return false
		end
	else
		-- ˵���ǽ�ָ��������λ�ÿ���װ��
		if equipGridIndex[1] ~= gridIndex and equipGridIndex[2] ~= gridIndex then
			-- װ��λ�ò��Ϸ�
			return false
		end
	end
	-- �������������Ƿ��������
	if item:getSubClass() == EquipmentClass.Weapon then 
		local schoolID = self.owner:getSchool()
		-- �����Ƿ��Ӧ����
		if WeaponSubClassSchoolID[item:getEquipClass()] ~= schoolID then
			local event = Event.getEvent(ClientEvents_SC_PromptMsg,eventGroup_Item, 12)
			g_eventMgr:fireRemoteEvent(event,self.owner)
			return false
		end
	end
	return true
end

-- ��ӵ��ߵ�ָ����Ʒ��
function Equip:addItemsToGrid(item, packIndex, gridIndex, bUpdateClient)
	if not self:canAddItemsToGrid(item, packIndex, gridIndex) then
		return false
	end
	local result = self.packs[packIndex]:addItemsToGrid(item, gridIndex, bUpdateClient)
	if result then
		item:onEquip(self.owner)
		self:setSuitAttr(true,item)
	end
	return result
end

-- ��ָ����Ʒ���Ƴ����ߣ��������ٵ���
function Equip:removeItemsFromGrid(packIndex, gridIndex, bUpdateClient)
	if packIndex ~= EquipPackIndex.Default then
		-- �߼�����
		return false
	end

	local item = self.packs[packIndex]:getGridItem(gridIndex)
	local result = self.packs[packIndex]:removeItemsFromGrid(gridIndex, bUpdateClient)
	if result then
		-- ж�ظ�װ��
		item:unEquip(self.owner)
		self:setSuitAttr(false,item)
	end
	return result
end

-- �Ƴ�ָ��GUID�ĵ��߲�����
function Equip:removeItem(itemGuid, removeNum)
	local equipMent = g_itemMgr:getItem(itemGuid)
	if equipMent then
		equipMent:unEquip(self.owner)
		self:setSuitAttr(false,equipMent)
		return self.packs[EquipPackIndex.Default]:removeItem(equipMent, removeNum, true)
	end
end

function Equip:setSuitAttr(onEquip,item)
	--�ж���װ����
	local _,_,_,itemRefiningEffect = item:getEffect()
	if itemRefiningEffect then
		local count = 0
		local level = item:getEquipLevel()
		local phase = itemRefiningEffect.phase
		local attr = nil
		--�ȼ�һ��������һ����װ��
		local refiningEquip = {}
		for i = 1, self.packs[EquipPackIndex.Default]:getCapability() do
			local equipMent = self.packs[EquipPackIndex.Default]:getGridItem(i)
			if equipMent then
				local _,_,_,refiningEffect = equipMent:getEffect()
				if refiningEffect and level == equipMent:getEquipLevel() and refiningEffect.phase == phase then
					count = count +1
					table.insert(refiningEquip,equipMent)
				end
			end
		end
		if onEquip then
			if count == 6 or count == 4 or count == 2 then
				local tattr = RefiningEffectDB[phase]
				if tattr then
					local tattrVaue = tattr[level]
					if tattrVaue[count-2] then
						self.owner:subAttrValue(tattr.suitType,tattrVaue[count-2])
					end
					attr = {attrID = tattr.suitType,attrValue = tattrVaue[count],count = count}
				end
				for _,equip in pairs(refiningEquip) do
					equip:setSuitAttr(attr)
					equip:getPack():updateItemsToClient(equip)
				end
				self.owner:addAttrValue(attr.attrID, attr.attrValue)
			else
				local tattr = RefiningEffectDB[phase]
				local tattrVaue = tattr[level]
				if tattrVaue[count-1] then
					attr = {attrID = tattr.suitType,attrValue = tattrVaue[count-1],count = count-1}
				end
				item:setSuitAttr(attr)
				item:getPack():updateItemsToClient(item)
			end		
		end

		if not onEquip then
			if count == 1 or count == 3 or count == 5 then
				local tattr = RefiningEffectDB[phase]
				if tattr then
					local tattrVaue = tattr[level]
					self.owner:subAttrValue(tattr.suitType,tattrVaue[count+1])
					if tattrVaue[count-1] then
						attr = {attrID = tattr.suitType,attrValue = tattrVaue[count-1],count = count-1}
					end
				end
				for _,equip in pairs(refiningEquip) do
					equip:setSuitAttr(attr)
					equip:getPack():updateItemsToClient(equip)
				end
				if attr then
					self.owner:addAttrValue(attr.attrID, attr.attrValue)
				end
			end
			--�������������һ��������װ����
			item:setSuitAttr(nil)
			print("������nil------------")
			item:getPack():updateItemsToClient(item)
		end
	end
end