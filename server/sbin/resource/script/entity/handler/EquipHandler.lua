--[[EquipHandler.lua
������
	ʵ���װ��handler
--]]

EquipHandler = class()

function EquipHandler:__init(entity)
	self._entity = entity
	-- װ����
	self.equip = Equip(self._entity)
end

function EquipHandler:__release()
	self._entity = nil
	release(self.equip)
	self.equip = nil
end

-- ��ȡװ����
function EquipHandler:getEquip()
	return self.equip
end

-- ��װ��
function EquipHandler:bindEquip(equip)
	if not instanceof(equip, Equipment) then
		return
	end
	if equip:getContainerID() ~= PackContainerID.Packet then
		-- ֻ�ܲ�����������װ��
		return
	end
	if equip:getBindFlag() then
		-- �Ѿ�����
		return
	end
	-- ֪ͨ�ͻ���
	equip:setBindFlag(Bind)
end

-- ���װ��
function EquipHandler:unBindEquip(equip)
	if not instanceof(equip, Equipment) then
		return
	end
	if equip:getContainerID() ~= PackContainerID.Packet then
		-- ֻ�ܲ�����������װ��
		return
	end
	if not equip:getBindFlag() then
		-- û�а�
		return
	end
	-- ֪ͨ�ͻ���
	equip:setBindFlag(UnBind)
end

-- ս��������װ���;öȴ���
function EquipHandler:onFightEnd(isDead,times)
	local times = times or 1
	local equip = self:getEquip()
	local equipPack = equip:getPack()
	for gridIndex = 1, equipPack:getCapability() do
		local equipment = equipPack:getGridItem(gridIndex)
		if equipment then
			local durability = equipment:getCurDurability()
			if durability > 0 then
				if isDead then
					-- ��ɫ������������װ������һ���;öȣ������ȥ���ĳ������ͻ�����ʾ���Ǽ���һ��
					local redu = times * math.floor(durability * PunishDurReductionPerc/100)
					durability = durability - redu
					if durability < 0 then
						durability = 0
					end
				else
					-- ��ɫδ�����Ļ���ÿ50��ս����һ���;�
					durability = durability - 1
				end
				equipment:setCurDurability(durability)
			end
		end
	end
	equipPack:updateClient()
end

-- ����װ��
function EquipHandler:identityEquip(equip)
	local itemConfig = tItemDB[equip:getItemID()]
	if not itemConfig then
		-- �Ҳ�����������
		return
	end
	if equip:getIdentityFlag() then
		-- �Ѿ���������
		return
	end
	-- �����װ���������Ʒ��
	local equipQuality = ItemQuality.NoIdentify
	local random = math.random(1, 10000)
	if random <= 5900 then
		-- ��ɫ
		equipQuality = ItemQuality.Blue
	elseif random <= 8900 then
		-- ��ɫ
		equipQuality = ItemQuality.Pink
	elseif random <= 9900 then
		-- ��ɫ
		equipQuality = ItemQuality.Gold
	else
		-- ��ɫ
		equipQuality = ItemQuality.Green
	end
	-- ����Ʒ�����ɸ�������
	local itemConfig1 = {}
	table.copy(itemConfig,itemConfig1)
	itemConfig1.Quality = equipQuality
	local propertyContext = equip:getPropertyContext()
	g_itemMgr:generateEquipAddAttr(propertyContext, itemConfig1)
	-- ��¼������
	equip:setEffectEx(propertyContext)
	-- ���ü�����־
	equip:setIdentityFlag(true)
	-- ���µ��ͻ���
	equip:getPack():updateItemsToClient(equip)
	local event = Event.getEvent(ItemEvents_SC_EquipAppraisalResult)
	g_eventMgr:fireRemoteEvent(event, self._entity)
end

--�����������ID
function EquipHandler:getWeaponID()
	local equipMent = self.equip:getPack():getGridItem(WeaponGridIndex)
	if equipMent then
		return equipMent:getItemID()
	end
end

-- �Ƴ�ָ��GUID�ĵ���
function EquipHandler:removeItem(itemGuid, removeNum)
	return self.equip:removeItem(itemGuid, removeNum, true)
end

--�����װ����
function EquipHandler:setSuitAttr(onEquip,item)
	self.equip:setSuitAttr(onEquip, item)
end