--[[Item.lua
����:
	��Ʒ����
]]

Item = class()

function Item:__init(itemID, itemNum)
	-- ���ߴ���
	self.class = 0
	-- ȫ��Ψһ��ʶ
	self.guid = ""
	-- ����ID
	self.itemID = itemID
	-- ������Ŀ
	self.itemNum = itemNum
	-- ������Ʒ������
	self.gridIndex = -1
	-- ��������ID
	self.containerID = -1
	-- ��¼���ڰ���������󶨻��������ȱ�־���¸��ͻ���
	self.pack = nil
	-- ����ʱ�䣬��Ʒ������ʱ�򣬷�����ʱ����ϲ߻��趨��ʱ����ǵ���ʱ��
	self.expireTime = 0
	-- �����������ȼ�����ֵԽ�����ȼ�Խ��
	self.sortPriority = -1
	-- ���������������ȼ�
	self:setSortPriority()
	-- ������־
	self.lockFlag = false
	-- ��Ʒ���ɵĵȼ�
	self.itemLvl = nil 
end

function Item:__release()
end

-- ��õ��ߴ���
function Item:getItemClass()
	return self.class
end

-- ��õ�������
function Item:getSubClass()
	local itemConfig = tItemDB[self.itemID]
	return itemConfig.SubClass
end

-- ����GUID
function Item:setGuid(guid)
	self.guid = guid
end

-- ���GUID
function Item:getGuid()
	return self.guid
end

-- ��õ���ID
function Item:getItemID()
	return self.itemID
end

-- ���õ�����Ŀ
function Item:setNumber(number)
	self.itemNum = number
end

-- ��õ�����Ŀ
function Item:getNumber()
	return self.itemNum
end

-- ��ð�������
function Item:getPackIndex()
	return self.pack:getPackIndex()
end

-- ������Ʒ������
function Item:setGridIndex(gridIndex)
	self.gridIndex = gridIndex
end

-- �����Ʒ������
function Item:getGridIndex()
	return self.gridIndex
end

-- ������������ID
function Item:setContainerID(containerID)
	self.containerID = containerID
end

-- �����������ID
function Item:getContainerID()
	return self.containerID
end

-- �������ڰ���
function Item:setPack(pack)
	self.pack = pack
end

-- ������ڰ���
function Item:getPack()
	return self.pack
end

-- ���õ��ߵ���ʱ��
function Item:setExpireTime(expireTime)
	self.expireTime = expireTime
end

-- ��õ��ߵ���ʱ��
function Item:getExpireTime()
	return self.expireTime
end

-- ��õ��߰󶨱�־
function Item:getBindFlag()
	local itemConfig = tItemDB[self.itemID]
	return not itemConfig.CanTrade
end

-- �ж��Ƿ���������ߣ������������ߣ���ӵ���������ʱֻ�ܷ��������
function Item:isTaskItem()
	local itemConfig = tItemDB[self.itemID]
	if not itemConfig then
		return false
	end
	return itemConfig.SubClass == ItemSubClass.Task
end

-- �ж��Ƿ���ս������
function Item:isBattleItem()
	local medicamentConfig = tMedicamentDB[self.itemID]
	if not medicamentConfig then
		return false
	end
	return medicamentConfig.UseNeedState >= MedicamentUseState.Fight
end

-- �����������Ŀ
function Item:getPileNum()
	local itemConfig = tItemDB[self.itemID]
	if not itemConfig then
		return 0
	end
	return itemConfig.MaxPileNum
end

-- ���������Ǯ��Ŀ
function Item:getSalePrice()
	local itemConfig = tItemDB[self.itemID]
	if not itemConfig then
		return 0
	end
	return itemConfig.SaleMoneyNum or 0
end

-- ������Ʒ�������ȼ�
function Item:setSortPriority()
	local itemConfig = tItemDB[self.itemID]
	if not itemConfig then
		return
	end
	if itemConfig.Class == ItemClass.Warrant then
		if itemConfig.SubClass == ItemSubClass.Task then
			-- ������Ʒ
			self.sortPriority = 1
		else
			-- �����������
			self.sortPriority = 2
		end
	elseif itemConfig.Class == ItemClass.Medicament then
		if itemConfig.SubClass == ItemSubClass.Medicament or itemConfig.SubClass == ItemSubClass.Food then
			-- ����Ʒ
			self.sortPriority = 3
		else
			-- ��ʹ�÷�����Ʒ
			self.sortPriority = 7
		end
		if itemConfig.SubClass == ItemSubClass.Medicament then
			if itemConfig.ReactType == MedicamentReactType.ChangeHpMp then
				-- ����ҩ
				self.sortPriority = 4
			elseif itemConfig.ReactType == MedicamentReactType.ChangeMp or itemConfig.ReactType == MedicamentReactType.UseMpPool then
				-- ��ҩ
				self.sortPriority = 5
			elseif itemConfig.ReactType == MedicamentReactType.ChangeHp or itemConfig.ReactType == MedicamentReactType.UseHpPool then
				-- ��ҩ
				self.sortPriority = 6
			end
		elseif itemConfig.SubClass == ItemSubClass.Pack then
			-- ��չ����
			self.sortPriority = 8
		end
	elseif itemConfig.Class == ItemClass.Equipment then
		-- ʱװ
		if itemConfig.SubClass then
			self.sortPriority = 9
		end
		-- ����
		self.sortPriority = 10
		-- ��ָ
		self.sortPriority = 11
		-- ����
		self.sortPriority = 12
		-- Ь��
		self.sortPriority = 13
		-- ����
		self.sortPriority = 14
		-- ����
		self.sortPriority = 15
		-- ����
		self.sortPriority = 16
		-- �·�
		self.sortPriority = 17
		-- ͷ��
		self.sortPriority = 18
		-- ����
		self.sortPriority = 19
	end
	if self.sortPriority == -1 then
		print("���õ��������������ȼ�����itemID = ", self.itemID)
	end
	--print(self.itemID, self.sortPriority)
end

-- �õ���Ʒ�������ȼ�
function Item:getSortPriority()
	return self.sortPriority
end

-- ������Ʒ��������־
function Item:setLockFlag(lockFlag)
	if self.lockFlag ~= lockFlag then
		self.lockFlag = lockFlag
		if self.pack then
			self.pack:setChange(self.gridIndex)
		end
	end
end

-- ��ȡ��Ʒ��������־
function Item:getLockFlag()
	return self.lockFlag
end

-- ������Ʒ���ɵĵȼ�
function Item:setItemLvl(lvl)
	self.itemLvl = lvl 
end

-- �����Ʒ���ɵĵȼ�
function Item:getItemLvl()
	return self.itemLvl
end

-- ������������Ͷ�Ӧ��
local tHealItems =
{
	[MedicamentReactType.ChangeHp] = true,
	[MedicamentReactType.ChangeMp] = true,
	[MedicamentReactType.ChangeHpMp] = true,
	[MedicamentReactType.UseHpPool] = true,
	[MedicamentReactType.UseMpPool] = true,
}
-- �жϵ����Ƿ������������
function Item:isHealItem()
	local itemConfig = tItemDB[self.itemID]
	if not itemConfig then
		return false
	end
	if tHealItems[itemConfig.ReactType] then
		return true
	end
	return false
end
