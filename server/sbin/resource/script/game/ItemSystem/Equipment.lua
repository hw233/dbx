--[[Equipment.lua
����:
	��Ʒ����װ����
]]

Equipment = class(Item)

function Equipment:__init(itemId, itemNum)
	-- װ������
	self.class = ItemClass.Equipment
	-- װ�����࣬������
	self.subClass = tEquipmentDB[itemId].SubClass
	-- װ����������
	self.equipClass = tEquipmentDB[itemId].EquipClass
	-- ��ǰ�;ö�
	self.curDurability = 0
	--����
	self.identityFlag = true
	-- ����ȼ�
	self.remouldAttr = nil
	-- ��������Ч��
	self.baseEffect = nil
	-- ��������Ч��
	self.addEffect = nil
	-- ������Ч��
	self.bindEffect = nil
	-- ��������Ч��
	self.refiningEffect = nil
	-- ��װ����
	self.suitEffect = nil
	--ǿ����ɶ�
	self.completeness = 0
	-- �󶨱�־��trueΪ�󶨣�
	self.bindFlag = false
end

function Equipment:__release()
end
-- ���װ��������
function Equipment:getSubClass()
	local equipConfig = tEquipmentDB[self.itemID]
	return equipConfig.SubClass
end
-- ���װ����������
function Equipment:getEquipClass()
	local equipConfig = tEquipmentDB[self.itemID]
	return equipConfig.EquipClass
end

-- ���װ���ȼ�������ʹ�õȼ�
function Equipment:getEquipLevel()
	local equipConfig = tEquipmentDB[self.itemID]
	return self:getItemLvl() and self:getItemLvl() or equipConfig.UseNeedLvl
end

-- ���װ��Ʒ��
function Equipment:getEquipQuality()
	local equipConfig = tEquipmentDB[self.itemID]
	if equipConfig.Quality ~= ItemQuality.NoIdentify then
		-- �������õ�װ��Ʒ��
		return equipConfig.Quality
	else
		if not self.identityFlag then
			-- δ����
			return ItemQuality.NoIdentify
		else
			-- ���ݼ����󸽼������ж�װ��Ʒ��
			local addEffectNum = table.getn(self.addEffect)
			if addEffectNum >= 6 then
				-- ��ɫ
				return ItemQuality.Green
			elseif addEffectNum >= 5 then
				-- ��ɫ
				return ItemQuality.Gold
			elseif addEffectNum >= 4 then
				-- ��ɫ
				return ItemQuality.Pink
			else
				-- ��ɫ
				return ItemQuality.Blue
			end
		end
	end
end

-- ���װ������;�
function Equipment:getMaxDurability()
	local equipConfig = tEquipmentDB[self.itemID]
	if not equipConfig then
		return 0
	end
	return equipConfig.MaxDurability*ConsumeDurabilityNeedFightTimes or 0
end

-- ���õ�ǰ�;ö�
function Equipment:setCurDurability(curDurability)
	if curDurability < 0 then
		curDurability = 0
	end
	if self.curDurability ~= curDurability then
		local setRealDurability = math.floor(curDurability / ConsumeDurabilityNeedFightTimes)
		local curRealDurability = math.floor(self.curDurability / ConsumeDurabilityNeedFightTimes)
		self.curDurability = curDurability
		if setRealDurability ~= curRealDurability then
			-- ����ͻ�����ʾ�б仯����֪ͨ�¿ͻ���
			if self.pack then
				self.pack:setChange(self.gridIndex)
			end
		end
	end
end

-- ��õ�ǰ�;ö�
function Equipment:getCurDurability()
	return self.curDurability
end

-- ���õ��߰󶨱�־
function Equipment:setBindFlag(bindFlag)
	if self.bindFlag ~= bindFlag then
		self.bindFlag = bindFlag
		if self.pack then
			self.pack:setChange(self.gridIndex)
		end
	end
end

-- ��õ��߰󶨱�־
function Equipment:getBindFlag()
	return self.bindFlag
end

-- ���ø�������
function Equipment:setRemouldAttr(remouldAttr)
	self.remouldAttr = remouldAttr
	if self:getSubClass() == EquipmentClass.Weapon and self:getContainerID() == PackContainerID.Equip then
		local data = string.format("{true,%d,%d}", self.itemID,self:getRemouldAttrValue()*100)
		local player = self.pack:getOwner()
		setPropValue(player:getPeer(), PLAYER_EQUIP_WEAPON,data)
	end
end

-- ��ø�������
function Equipment:getRemouldAttr()
	return self.remouldAttr
end

--�������ֵ
function Equipment:getRemouldAttrValue()
	local attrValue = 0
	for _,color in pairs(self.remouldAttr or {}) do
		attrValue = attrValue + EquipRemouldBaseAttrAddDB[color]/100
	end
	return attrValue
end

-- ��ø���ȼ�
function Equipment:getRemouldLevel()
	return table.size(self.remouldAttr)
end

-- ���ü�����־
function Equipment:setIdentityFlag(identityFlag)
	self.identityFlag = identityFlag
end

-- ��ü�����־,trueΪ������falseΪδ����
function Equipment:getIdentityFlag()
	return self.identityFlag
end

-- ����ǿ����ɶ�
function Equipment:setCompleteness(completeness)
	self.completeness = completeness
end

-- ��ȡǿ����ɶ�
function Equipment:getCompleteness()
	return self.completeness
end

-- ��������Ч��
function Equipment:setEffect(context)
	if context.baseEffect then
		self.baseEffect = context.baseEffect
	end
	if context.addEffect then
		self.addEffect = context.addEffect
	end
	if context.bindEffect then
		self.bindEffect = context.bindEffect
	end
	if context.refiningEffect then
		self.refiningEffect = context.refiningEffect
	end
end

-- ��ȡ��װ����
function Equipment:setSuitAttr(suirAttr)
	self.suitAttr = suirAttr
end

-- ��ȡ��װ����
function Equipment:getSuitAttr()
	return self.suitAttr
end

-- ��������Ч����չ����
function Equipment:setEffectEx(context)
	self.baseEffect = context.baseEffect
	self.addEffect = context.addEffect
	self.bindEffect = context.bindEffect
	self.refiningEffect = context.refiningEffect
end

-- �������Ч��
function Equipment:getEffect()
	return self.baseEffect, self.addEffect, self.bindEffect,self.refiningEffect
end

-- �������ݿ��ֳ�����װ������
function Equipment:setPropertyContext(context)
	-- װ����ʱû�е���ʱ�䣬������Ч
	self:setBindFlag(context.bindFlag and true or false)

	if context.expireTime > 0 then
		context.curDurability = context.expireTime
	end
	self:setCurDurability(context.curDurability)

	if context.effect and type(context.effect) == "string" then
		context.remouldAttr = unserialize(context.effect)
		self:setRemouldAttr(context.remouldAttr)
	end
	if not context.identityFlag then
		self:setIdentityFlag(context.identityFlag)
	end

	if context.completeness then
		self:setCompleteness(context.completeness)
	end

	if context.baseEffect and type(context.baseEffect) == "string" then
		context.baseEffect = unserialize(context.baseEffect)
	end
	if context.addEffect and type(context.addEffect) == "string" then
		context.addEffect = unserialize(context.addEffect)
	end
	if context.bindEffect and type(context.bindEffect) == "string" then
		context.bindEffect = unserialize(context.bindEffect)
	end
	if context.refiningEffect and type(context.refiningEffect) == "string" then
		context.refiningEffect = unserialize(context.refiningEffect)
	end
	
	self:setEffect(context)

end

-- ���װ�������ֳ�
function Equipment:getPropertyContext()
	local context = {}
	context.itemID = self:getItemID()
	context.number = self:getNumber()
	context.bindFlag = self:getBindFlag()
	context.expireTime = self:getExpireTime()
	context.curDurability = self:getCurDurability()
	context.remouldAttr = self:getRemouldAttr()
	context.baseEffect, context.addEffect, context.bindEffect, context.refiningEffect = self:getEffect()
	context.identityFlag = self:getIdentityFlag()
	context.completeness = self:getCompleteness()
	context.suitAttr = self:getSuitAttr()
	print("---------��װ����-----d----",toString(context.suitAttr))
	return context
end

-- ���װ����Ӧ��װ������������
function Equipment:getEquipGridIndex()
	return EquipType_ItemGrid[self.subClass][self.equipClass]
end

-- װ����װ��
function Equipment:onEquip(player)
	local equipConfig = tEquipmentDB[self.itemID]
	if not equipConfig then
		-- �Ҳ���װ������
		return
	end
	if not instanceof(player, Player) then
		return
	end

	-- ����װ�����
	self:updatePlayerShowParts(player, equipConfig, true)

	-- ��������
	if equipConfig.BaseAttrTypeA then
		player:addAttrValue(equipConfig.BaseAttrTypeA, equipConfig.BaseAttrValueA)
	end
	if equipConfig.BaseAttrTypeB then
		player:addAttrValue(equipConfig.BaseAttrTypeB, equipConfig.BaseAttrValueB)
	end
	if equipConfig.BaseAttrTypeC then
		player:addAttrValue(equipConfig.BaseAttrTypeC, equipConfig.BaseAttrValueC)
	end
	-- ��������
	self:updateAddAttr(player, true)
	-- ������
	self:updateBindAttr(player, true)
	-- ��������
	self:updateRefiningAttr(player, true)
end

-- ж�ظ�װ��
function Equipment:unEquip(player)
	local equipConfig = tEquipmentDB[self.itemID]
	if not equipConfig then
		-- �Ҳ���װ������
		return
	end
	if not instanceof(player, Player) then
		return
	end

	-- ����װ�����
	self:updatePlayerShowParts(player, equipConfig, false)

	-- ȥ����������
	if equipConfig.BaseAttrTypeA then
		player:addAttrValue(equipConfig.BaseAttrTypeA, -equipConfig.BaseAttrValueA)
	end
	if equipConfig.BaseAttrTypeB then
		player:addAttrValue(equipConfig.BaseAttrTypeB, -equipConfig.BaseAttrValueB)
	end
	if equipConfig.BaseAttrTypeC then
		player:addAttrValue(equipConfig.BaseAttrTypeC, -equipConfig.BaseAttrValueC)
	end
	-- ȥ����������
	self:updateAddAttr(player, false)
	-- ȥ��������
	self:updateBindAttr(player, false)
	-- ȥ����������
	self:updateRefiningAttr(player, false)
end

-- ���¸�������
function Equipment:updateAddAttr(player, isEquip)
	for i = 1, table.getn(self.addEffect or {}) do
		local attrID = self.addEffect[i][1]
		if attrID > 0 then
			local attrValue = self.addEffect[i][2]
			if isEquip then
				player:addAttrValue(attrID, attrValue)
			else
				player:addAttrValue(attrID, -attrValue)
			end
		end
	end
end

-- ���°�����
function Equipment:updateBindAttr(player, isEquip)
	if not self:getBindFlag() then
		-- ֻ�а󶨺󣬰����ԲŻ���Ч��
		return
	end
	for i = 1, table.getn(self.bindEffect or {}) do
		local attrID = self.bindEffect[i][1]
		local attrValue = self.bindEffect[i][2]
		if isEquip then
			player:addAttrValue(attrID, attrValue)
		else
			player:addAttrValue(attrID, -attrValue)
		end
	end
end

-- ������������
function Equipment:updateRefiningAttr(player, isEquip)
	if self.refiningEffect then
		local attr = self.refiningEffect.attr
		local attrID = attr[1]
		local attrValue = attr[2]
		if isEquip then
			player:addAttrValue(attrID, attrValue)
		else
			player:addAttrValue(attrID, -attrValue)
		end
	end
end

-- ���½�ɫװ�����
function Equipment:updatePlayerShowParts(player, equipConfig, onEquip)
	--local buffHandler = player:getHandler(HandlerDef_Buff)
	--local isTransCard = buffHandler:getTransCard()
	if equipConfig.SubClass == EquipmentClass.Weapon then
		local data = string.format("{%s,%d,%d}", onEquip and "true" or "false", equipConfig.ID,self:getRemouldAttrValue()*100)
		setPropValue(player:getPeer(), PLAYER_EQUIP_WEAPON,data)
	elseif equipConfig.EquipClass == ArmorSubClass.Clothes and not isTransCard then
		local bodyTex = 1
		local curBodyTex = player:getCurBodyTex()
		local curModelID = player:getModelID()
		if onEquip then
			-- ��װ
			local str = ModelIDByClothDB[player:getSchool()][player:getSex()][equipConfig.UseNeedLvl]
			if str then
				local i,j = string.find(str,"%d+")
				local configModelID = toNumber(string.sub(str,i,j))

				local subStr = string.sub(str,j+2,string.len(str))
				i,j = string.find(subStr,"%d+")
				bodyTex = toNumber(string.sub(subStr,i,j))

				if configModelID and curModelID ~= configModelID then
					player:setModelID(configModelID)
				end
			end
		else
			-- жװ
			local modelID = SchoolModelSwitch[player:getSex()][player:getSchool()]
			if curModelID ~= modelID then
				player:setModelID(modelID)
			end
		end
		player:setCurBodyTex(bodyTex)
		local showParts = string.format("{%d,%d}", player:getCurHeadTex(), player:getCurBodyTex())
		player:setShowParts(showParts)
	end
end
