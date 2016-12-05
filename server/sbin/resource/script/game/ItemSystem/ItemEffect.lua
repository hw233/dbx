--[[ItemEffect.lua
����:
	��ƷЧ��
]]

ItemEffect = {}

-- �Ƴ���־
--local removeFlag = true

-- ����Buff
function ItemEffect.addBuff(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local buffID = medicamentConfig.ReactExtraParam1
	g_buffMgr:addBuff(targetEntity, buffID)
	removeFlag = true
	return removeFlag
end

-- �Ƴ�buff
function ItemEffect.cancelBuff(targetEntity, medicament, medicamentConfig)
	--[[local removeFlag = true
	local buffID = medicamentConfig.ReactExtraParam1
	local buffHandler = targetEntity:getHandler(HandlerDef_Buff)
	-- �ж��Ƿ��Ѿ���buff
	if nil == buffHandler:findBuffByID(buffID) then
		removeFlag = false
		return removeFlag
	end
	buffHandler:cancelBuff(buffID)
	removeFlag = true
	return removeFlag]]
end

-- ִ��Lua����
function ItemEffect.exeLuaFun(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local targetFunction = _G[medicamentConfig.ReactExtraParam1]
	if type(targetFunction) == 'function' then
		targetFunction(targetEntity, medicament)
	end
	-- �Ƿ�ɾ��������Lua���������
	removeFlag = false
	return removeFlag
end

-- �ı����� ���ܸı�
function ItemEffect.changeHp(targetEntity, medicament, medicamentConfig, targetEntityID)
	local removeFlag = true
	-- ���������Ŀ��Ļ�
	local curEntity
	if targetEntityID then
		local pet = g_entityMgr:getPet(targetEntityID)
		if pet then
			curEntity = pet
		else
			removeFlag = false
			return removeFlag
		end
	else
		curEntity = targetEntity
	end
	local maxHp = curEntity:getMaxHp()
	local curHp = curEntity:getHp()
	local changeHp = medicamentConfig.ReactExtraParam1

	-- �ж��Ƿ��Ѿ������ֵ
	if curHp == maxHp then
		removeFlag = false
		return removeFlag, 7	
	end
	-- ���Ըı�ֵ
	curHp = curHp + changeHp
	if curHp > maxHp then
		curHp = maxHp
	end
	if curHp < 0 then
		curHp = 0
	end
	curEntity:setHp(curHp)
	if curEntity:getEntityType() == eClsTypePet then
		curEntity:flushPropsBatch()
	end
	removeFlag = true
	return removeFlag
end

-- �ı䷨��
function ItemEffect.changeMp(targetEntity, medicament, medicamentConfig, targetEntityID)
	local removeFlag = true
	local curEntity
	if targetEntityID then
		local pet = g_entityMgr:getPet(targetEntityID)
		if pet then
			curEntity = pet
		else
			removeFlag = false
			return removeFlag
		end
	else
		curEntity = targetEntity
	end
	local maxMp = curEntity:getMaxMp()
	local curMp = curEntity:getMp()
	local changeMp = medicamentConfig.ReactExtraParam1
	if curMp == maxMp then
		removeFlag = false
		return removeFlag, 7	
	end
	curMp = curMp + changeMp
	if curMp > maxMp then
		curMp = maxMp
	end
	if curMp < 0 then
		curMp = 0
	end
	curEntity:setMp(curMp)
	if curEntity:getEntityType() == eClsTypePet then
		curEntity:flushPropsBatch()
	end
	removeFlag = true
	return removeFlag
end

-- �ı������ͷ���
function ItemEffect.changeHpMp(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local maxHp = targetEntity:getMaxHp()
	local curHp = targetEntity:getHp()
	local maxMp = targetEntity:getMaxMp()
	local curMp = targetEntity:getMp()
	local changeHp = medicamentConfig.ReactExtraParam1
	local changeMp = medicamentConfig.ReactExtraParam2
	if curHp == maxHp and curMp == maxMp then
		removeFlag = false
		return removeFlag, 7
	end
	curHp = curHp + changeHp
	curMp = curMp + changeMp
	if curHp > maxHp then
		curHp = maxHp
	end
	if curHp < 0 then
		curHp = 0
	end
	if curMp > maxMp then
		curMp = maxMp
	end
	if curMp < 0 then
		curMp = 0
	end
	targetEntity:setHp(curHp)
	targetEntity:setMp(curMp)
	removeFlag = true
	return removeFlag
end

-- �ı�ŭ��
function ItemEffect.changeAngerValue(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local maxAngerValue = targetEntity:getAttrValue(player_max_anger)
	local curAngerValue = targetEntity:getAttrValue(player_anger)
	local changeAngerValue = medicamentConfig.ReactExtraParam1
	if maxAngerValue == curAngerValue then
		removeFlag = false
		return removeFlag
	end
	curAngerValue = curAngerValue + changeAngerValue
	if curAngerValue > maxAngerValue then
		curAngerValue = maxAngerValue
	end
	if curAngerValue < 0 then
		curAngerValue = 0
	end
	targetEntity:setAttrValue(player_anger, curAngerValue)
	removeFlag = true
	return removeFlag
end

-- �ı�PKֵ
function ItemEffect.changePkValue(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local curKillValue = targetEntity:getAttrValue(player_kill)
	local changeKillValue = medicamentConfig.ReactExtraParam1
	if PlayerMaxKill == curKillValue then
		removeFlag = false
		return removeFlag
	end
	curKillValue = curKillValue + changeKillValue
	if curKillValue > PlayerMaxKill then
		curKillValue = PlayerMaxKill
	end
	if curKillValue < 0 then
		curKillValue = 0
	end
	targetEntity:setAttrValue(player_kill, curKillValue)
	removeFlag = true
	return removeFlag
end

-- �ı����
function ItemEffect.changeBindMoney(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local curBindMoney =  targetEntity:getSubMoney()
	local changeBindMoney = medicamentConfig.ReactExtraParam1
	local fun_Change = ItemEffectFuncs[changeBindMoney]
	if fun_Change then
		changeBindMoney = fun_Change(targetEntity)
	end
	curBindMoney = curBindMoney + changeBindMoney
	if curBindMoney < 0 then
		removeFlag = false
		return removeFlag
	end
	targetEntity:setSubMoney(curBindMoney)
	removeFlag = true
	return removeFlag
end

-- �ı�����
function ItemEffect.changeMoney(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local curMoney = targetEntity:getMoney()
	local changeMoney = medicamentConfig.ReactExtraParam1
	local fun_Change = ItemEffectFuncs[changeMoney]
	if fun_Change then
		changeMoney = fun_Change(targetEntity)
	end
	curMoney = curMoney + changeMoney
	if curMoney < 0 then
		removeFlag = false
		return removeFlag
	end
	targetEntity:setMoney(curMoney)
	removeFlag = true
	return removeFlag
end

-- �ı侭��
function ItemEffect.changeExpValue(targetEntity, medicament, medicamentConfig, targetEntityID)
	local removeFlag = true
	-- �жϵȼ�
	local curLevel = targetEntity:getAttrValue(player_lvl)
	local reactTarget = medicamentConfig.ReactTarget
	if reactTarget == MedicamentReactTarget.Self then
		if curLevel == MaxPlayerLevel then
			removeFlag = false
			return removeFlag
		end
		local changeExpValue = medicamentConfig.ReactExtraParam1
		local fun_Change = ItemEffectFuncs[changeExpValue]
		if fun_Change then
			changeExpValue = fun_Change(targetEntity)
		end

		targetEntity:addXp(changeExpValue)
		removeFlag = true
		return removeFlag
	elseif reactTarget == MedicamentReactTarget.Pet then
		local expValue = medicamentConfig.ReactExtraParam1
		if not expValue then
			print("û�����þ������ֵ")
			removeFlag = false
			return removeFlag
		end

		local curEntity = false
		if targetEntityID then
			-- �����ѡ��ĳ���
			local pet = g_entityMgr:getPet(targetEntityID)
			if pet then
				curEntity = pet
			else
				removeFlag = false
				return removeFlag
			end
		else
			-- ֻ��Գ�ս����
			local curFollowPetID = targetEntity:getFollowPetID()
			if curFollowPetID then
				local curFollowPet = g_entityMgr:getPet(curFollowPetID)
				curEntity = curFollowPet
			else
				removeFlag = false
				return removeFlag, 6
			end
		end

		if curEntity then
			if func_Change then
				taoValue = func_Change(targetEntity)
			end
			local level = curEntity:getLevel()
			if level < medicamentConfig.UseNeedLvl then
				removeFlag = false
				return removeFlag, 9
			end
			local value = medicamentConfig.ReactExtraParam1
			local fun_Change = ItemEffectFuncs[changeExpValue]
			if fun_Change then
				value = fun_Change(curEntity)
			end

			curEntity:addXp(value)
			curEntity:flushPropsBatch()
			removeFlag = true
			return removeFlag
		end
	end
end

-- �ı����
function ItemEffect.changeCashMoney(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local curCashMoney = targetEntity:getCashMoney()
	local changeCashMoney = medicamentConfig.ReactExtraParam1
	curCashMoney = curCashMoney + changeCashMoney
	print(curCashMoney)
	targetEntity:setCashMoney(curCashMoney)
	removeFlag = true
	return removeFlag
end

-- �ı�Ԫ��
function ItemEffect.changeGoldCoin(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local curGoldCoin = targetEntity:getGoldCoin()
	local changeGoldCoin = medicamentConfig.ReactExtraParam1
	curGoldCoin = curGoldCoin + changeGoldCoin
	targetEntity:setGoldCoin(curGoldCoin)
	removeFlag = true
	return removeFlag
end


--entity:getEntityType() == eClsTypePet
--entity:getEntityType() == eClsTypePlayer
-- �ı��������ͳ��﹫��
function ItemEffect.changeTaoValue(targetEntity, medicament, medicamentConfig, targetEntityID)
	local removeFlag = true
	local curTaoValue = targetEntity:getAttrValue(player_tao)
	local changeTaoValue = medicamentConfig.ReactExtraParam1
	local fun_Change = ItemEffectFuncs[changeTaoValue]

	local reactTarget = medicamentConfig.ReactTarget
	if reactTarget == MedicamentReactTarget.Self then
		if fun_Change then
			changeTaoValue = fun_Change(targetEntity)
		end
		targetEntity:addTao(changeTaoValue)
		removeFlag = true
		return removeFlag
	elseif reactTarget == MedicamentReactTarget.Pet then
		local taoValue = medicamentConfig.ReactExtraParam1
		if not targetEntityID then
			-- ֻ��Գ�ս����
			local petID = targetEntity:getFollowPetID()
			local pet = g_entityMgr:getPet(petID)
			if pet then
				if func_Change then
					taoValue = func_Change(pet)
				end
				local curPetTao = pet:getAttrValue(pet_tao)
				if curPetTao >= MaxPetTao then
					print("��ǰ���������������")
					removeFlag = false
					return removeFlag
				end
				curPetTao = curPetTao + taoValue
				if curPetTao > MaxPetTao then
					curPetTao = MaxPetTao
				end
				pet:setAttrValue(pet_tao, curPetTao)
				pet:flushPropsBatch()
			else
				removeFlag = false
				return removeFlag
			end
			removeFlag = true
			return removeFlag
		else
			local pet = g_entityMgr:getPet(targetEntityID)
			if pet then
				if fun_Change then
					changeTaoValue = fun_Change(pet)
				end
				local curPetTao = pet:getAttrValue(pet_tao)
				if curPetTao >= MaxPetTao then
					print("��ǰ���������������")
					removeFlag = false
					return removeFlag
				end
				curPetTao = curPetTao + taoValue
				if curPetTao > MaxPetTao then
					curPetTao = MaxPetTao
				end
				pet:setAttrValue(pet_tao, curPetTao)
				pet:flushPropsBatch()
				removeFlag = true
				return removeFlag
			else
				removeFlag = false
				return removeFlag
			end
		end
	end
end

-- �ı�Ǳ��
function ItemEffect.changePotential(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local curPotential = targetEntity:getAttrValue(player_pot)
	local changePotential = medicamentConfig.ReactExtraParam1
	local fun_Change = ItemEffectFuncs[changePotential]
	if fun_Change then
		changePotential = fun_Change(targetEntity)
	end
	curPotential = curPotential + changePotential
	targetEntity:setAttrValue(player_pot, curPotential)
	removeFlag = true
	return removeFlag
end

-- �ı�����
function ItemEffect.changeExpoint(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local curExpoint = targetEntity:getAttrValue(player_expoint)
	local changExpoint = medicamentConfig.ReactExtraParam1
	local func_Change = ItemEffectFuncs[changeExpoint]
	if func_Change then
		changeExpoint = func_Change(targetEntity)
	end
	curExpoint = curExpoint + changExpoint
	targetEntity:setAttrValue(player_expoint, curExpoint)
	removeFlag = true
	return removeFlag
end

-- �ı�ս��
function ItemEffect.changeCombatNum(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local curCombatNum = targetEntity:getAttrValue(player_combat)
	local changeCombatNum = medicamentConfig.ReactExtraParam1
	curCombatNum = curCombatNum + changeCombatNum
	targetEntity:setAttrValue(player_combat, curCombatNum)
	removeFlag = true
	return removeFlag
end

-- �ı�ﹱ
function ItemEffect.changeContribution(targetEntity, medicament, medicamentConfig)

end

-- �ı�����
function ItemEffect.changeVigor(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local maxVigor = targetEntity:getMaxVigor()
	local curVigor = targetEntity:getVigor()
	local changeVigor =  medicamentConfig.ReactExtraParam1
	if maxVigor == curVigor then
		removeFlag = false
		return removeFlag
	end
	curVigor = curVigor + changeVigor
	if curVigor > maxVigor then
		curVigor = maxVigor
	end
	if curVigor < 0 then
		curVigor = 0
	end
	targetEntity:setVigor(curVigor)
	removeFlag = true
	return removeFlag
end

-- �ı�����ҳ�
function ItemEffect.changePetLoyalty(targetEntity, medicament, medicamentConfig, targetEntityID)
	local removeFlag = true
	local curEntity
	if targetEntityID then
		-- �����ѡ��ĳ���
		local pet = g_entityMgr:getPet(targetEntityID)
		if pet then
			curEntity = pet
		else
			removeFlag = false
			return removeFlag
		end
	else
		-- ֻ��Գ�ս����
		local curFollowPetID = targetEntity:getFollowPetID()
		if curFollowPetID then
			local curFollowPet = g_entityMgr:getPet(curFollowPetID)
			curEntity = curFollowPet
		else
			removeFlag = false
			return removeFlag
		end
	end

	if curEntity then
		local curLoyalty = curEntity:getLoyalty()
		if curLoyalty >= MaxPetLoyalty then
			removeFlag = false
			return removeFlag
		else
			local value = medicamentConfig.ReactExtraParam1
			curLoyalty = curLoyalty + value
			if curLoyalty >= MaxPetLoyalty then
				curLoyalty = MaxPetLoyalty
			end
			curEntity:setLoyalty(curLoyalty)
			curEntity:flushPropsBatch()
			removeFlag = true
			return removeFlag
		end
	end
	
end

-- �ı��������
function ItemEffect.changePetLife(targetEntity, medicament, medicamentConfig, targetEntityID)
	local removeFlag = true
	local value = medicamentConfig.ReactExtraParam1
	if targetEntityID then
		-- �����ѡ��ĳ���
		local pet = g_entityMgr:getPet(targetEntityID)
		if pet then
			curEntity = pet
		else
			removeFlag = false
			return removeFlag
		end
	else
		-- ֻ��Գ�ս����
		local curFollowPetID = targetEntity:getFollowPetID()
		if curFollowPetID then
			local curFollowPet = g_entityMgr:getPet(curFollowPetID)
			curEntity = curFollowPet
		else
			removeFlag = false
			return removeFlag
		end
	end

	if curEntity then
		local petLife = curEntity:getAttrValue(pet_life)
		local petLifeMax = curEntity:getAttrValue(pet_life_max)
		if petLife >= petLifeMax then
			removeFlag = false
			return removeFlag
		else
			curPetLife = petLife + value
			if curPetLife >= petLifeMax then
				curPetLife = petLifeMax
			end
			curEntity:setAttrValue(pet_life, curPetLife)
			curEntity:flushPropsBatch()
			removeFlag = true
			return removeFlag
		end
	end
end

-- ʹ��������
function ItemEffect.useHpPoolItem(targetEntity, medicament, medicamentConfig,targetEntityID)
	local removeFlag = false
	if not targetEntity then
		return
	end
	local curEntity = ItemEffect.getTargetEntity(targetEntity, medicamentConfig, targetEntityID)
	local role = targetEntity
	if instanceof(curEntity,Pet)then
		pet = curEntity
	end

	local roleMaxHp = role:getMaxHp()
	local roleCurHp = role:getHp()
	local roleAddHp = roleMaxHp - roleCurHp
	local petMaxHp = 0
	local petCurHp = 0
	local petAddHp = 0
	if pet then
		petMaxHp = pet:getMaxHp()
		petCurHp = pet:getHp()
		petAddHp = petMaxHp - petCurHp
	end
	if petAddHp + roleAddHp > 0 then
		local leftHpValue = medicament:getEffect()
		if leftHpValue > roleAddHp + petAddHp then
			leftHpValue = leftHpValue - roleAddHp - petAddHp
			medicament:setEffect(leftHpValue)
			-- ֱ�Ӽ���������
			role:setHp(roleMaxHp)
			if pet then
				pet:setHp(petMaxHp)
			end
			-- ֪ͨ�ͻ��˱�����Ʒ�仯
			local changeInfo = {}
			local gridIndex = medicament:getGridIndex()
			changeInfo[gridIndex] = {}
			changeInfo[gridIndex].effect = medicament:getEffect()
			changeInfo[gridIndex].guid = medicament:getGuid()
			local event = Event.getEvent(ItemEvents_SC_UpdateInfo, 1, medicament:getPackIndex(), changeInfo)
			g_eventMgr:fireRemoteEvent(event, targetEntity)
		else
			if leftHpValue > roleAddHp then
				role:setHp(roleMaxHp)
				if pet then
					pet:setHp(petCurHp+leftHpValue - roleAddHp)
				end
			else
				role:setHp(roleCurHp + leftHpValue)
			end
			if pet then
				pet:flushPropsBatch()
			end
			removeFlag = true
		end
	else
		-- ����ʹ��
	end
	return removeFlag
end

-- ʹ�÷�����
function ItemEffect.useMpPoolItem(targetEntity, medicament, medicamentConfig)
	local removeFlag = false
	if not targetEntity then
		return
	end
	local curEntity = ItemEffect.getTargetEntity(targetEntity, medicamentConfig, targetEntityID)
	local role = targetEntity
	if instanceof(curEntity,Pet)then
		pet = curEntity
	end

	local roleMaxMp = role:getMaxMp()
	local roleCurMp = role:getMp()
	local roleAddMp = roleMaxMp - roleCurMp
	local petMaxMp = 0
	local petCurMp = 0
	local petAddMp = 0
	if pet then
		petMaxMp = pet:getMaxMp()
		petCurMp = pet:getMp()
		petAddMp = petMaxMp - petCurMp
	end
	if petAddMp + roleAddMp > 0 then
		local leftMpValue = medicament:getEffect()
		if leftMpValue > roleAddMp + petAddMp then
			leftMpValue = leftMpValue - roleAddMp - petAddMp
			medicament:setEffect(leftMpValue)
			-- ֱ�Ӽ�������
			role:setMp(roleMaxMp)
			if pet then
				pet:setMp(petMaxMp)
			end
			-- ֪ͨ�ͻ��˱�����Ʒ�仯
			local changeInfo = {}
			local gridIndex = medicament:getGridIndex()
			changeInfo[gridIndex] = {}
			changeInfo[gridIndex].effect = medicament:getEffect()
			changeInfo[gridIndex].guid = medicament:getGuid()
			local event = Event.getEvent(ItemEvents_SC_UpdateInfo, 1, medicament:getPackIndex(), changeInfo)
			g_eventMgr:fireRemoteEvent(event, targetEntity)
		else
			if leftMpValue > roleAddMp then
				role:setMp(roleMaxMp)
				if pet then
					pet:setMp(petCurMp+leftMpValue - roleAddMp)
				end
			else
				role:setMp(roleCurMp + leftMpValue)
			end
			if pet then
				pet:flushPropsBatch()
			end
			removeFlag = true
		end
	else
		-- ����ʹ��
	end
	return removeFlag
end

-- ��ӳ���
function ItemEffect.addPet(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local petID = medicamentConfig.ReactExtraParam1
	if petID then
		-- �ж��ܷ���ӳ���
		if targetEntity:canAddPet() then
			local pet = g_entityFct:createPet(petID)
			pet:setOwnerID(targetEntity:getID())
			pet:setOwnerDBID(targetEntity:getDBID())
			targetEntity:addPet(pet)
			removeFlag = true
		else
			print("��ҳ����Ѿ��ﵽ���ޣ�������ӳ���")
			removeFlag = false
		end
	else
		removeFlag = false
	end
	return removeFlag
end

-- �������
function ItemEffect.addRide(targetEntity, medicament, medicamentConfig)
	local removeFlag = true
	local rideID = medicamentConfig.ReactExtraParam1
	local isAdd = g_rideMgr:addRide(targetEntity,rideID)
	if isAdd == 1 then 
		removeFlag = false 
	end
	return removeFlag
end

-- ������Ŀ���Ч��
function ItemEffect.getTargetEntity(targetEntity, medicamentConfig, targetEntityID)
	local removeFlag = true
	local curEntity = false
	local reactTarget = medicamentConfig.ReactTarget
	if reactTarget == MedicamentReactTarget.Self then
		curEntity = targetEntity
	elseif reactTarget == MedicamentReactTarget.Pet then
		if targetEntityID then
			local curPet = g_entityMgr:getPet(targetEntityID)
			if curPet then
				curEntity = curPet
			end
		else
			local curFollowPetID = targetEntity:getFollowPetID()
			if curFollowPetID then
				local curFollowPet = g_entityMgr:getPet(curFollowPetID)
				curEntity = curFollowPet
			end
		end
	elseif reactTarget == MedicamentReactTarget.SelfAndPet then
		if targetEntityID then
			local curPet = g_entityMgr:getPet(targetEntityID)
			if curPet then
				curEntity = curPet
			end
		else
			local curFollowPetID = targetEntity:getFollowPetID()
			if curFollowPetID then
				local curFollowPet = g_entityMgr:getPet(curFollowPetID)
				curEntity = curFollowPet
			end
		end
	end
	return curEntity
end

-- �ı����� �� �����������Լӵ�
function ItemEffect.changeAllAttr(targetEntity, medicament, medicamentConfig, targetEntityID)
	local removeFlag = false
	local curEntity = ItemEffect.getTargetEntity(targetEntity, medicamentConfig, targetEntityID)
	if curEntity then
		if curEntity:getEntityType() == eClsTypePlayer then
			removeFlag = ItemEffect.washPlayerAllAttr(curEntity)
		elseif curEntity:getEntityType() == eClsTypePet then
			removeFlag = ItemEffect.washPetAllAttr(curEntity)
			if removeFlag then
				curEntity:flushPropsBatch()
			end
		end
	end
	return removeFlag
end

local PlayerCleanAttrs = {
	player_str_point,
	player_int_point,
	player_sta_point,
	player_spi_point,
	player_dex_point,
}

-- �������������Լӵ�
function ItemEffect.washPlayerAllAttr(player)
	local freePoint = 0
	for _,attrName in ipairs(PlayerCleanAttrs) do
		local pnt = player:getAttrValue(attrName)
		if pnt > 0 then
			player:setAttrValue(attrName,0)
			freePoint = freePoint + pnt
		end
	end

	local attrPoint = player:getAttrValue(player_attr_point)

	if freePoint < 1 then
		print("���û�пɻ�ԭ�����Ե�")
		return false
	end

	player:setAttrValue(player_attr_point,
		player:getAttrValue(
			player_attr_point
		) + freePoint
	)

	local curHp = player:getAttrValue(player_hp)
	local maxHp = player:getAttrValue(player_max_hp)
	local curMp = player:getAttrValue(player_mp)
	local maxMp = player:getAttrValue(player_max_mp)
	if curHp > maxHp then
		player:setAttrValue(player_hp, maxHp)
	end

	if curMp > maxMp then
		player:setAttrValue(player_mp, maxMp)
	end
	return true
end

local PetCleanAttrs = {
	pet_str_point,
	pet_int_point,
	pet_sta_point,
	pet_spi_point,
	pet_dex_point,	
}

-- ��������������Լӵ�
function ItemEffect.washPetAllAttr(pet)
	local freePoint = 0

	for _,attrName in ipairs(PetCleanAttrs) do
		local pnt = pet:getAttrValue(attrName)
		if pnt > 0 then
			pet:setAttrValue(attrName,0)
			freePoint = freePoint + pnt
		end
	end


	if freePoint < 1 then
		print("����û�пɻ�ԭ�����Ե�")
		return false
	end

	pet:setAttrValue(pet_attr_point,
		pet:getAttrValue(pet_attr_point) + freePoint
	)

	local curHp = pet:getAttrValue(pet_hp)
	local maxHp = pet:getAttrValue(pet_max_hp)
	local curMp = pet:getAttrValue(pet_mp)
	local maxMp = pet:getAttrValue(pet_max_mp)
	if curHp > maxHp then
		pet:setAttrValue(pet_hp, maxHp)
	end

	if curMp > maxMp then
		pet:setAttrValue(pet_mp, maxMp)
	end
	return true
end

-- ��ҡ��������п���
function ItemEffect.changeAllPhase(targetEntity, medicament, medicamentConfig, targetEntityID)
	local removeFlag = false
	local curEntity = ItemEffect.getTargetEntity(targetEntity, medicamentConfig, targetEntityID)
	if curEntity:getEntityType() == eClsTypePlayer then
		removeFlag = ItemEffect.washPlayerAllPhase(curEntity)
	elseif curEntity:getEntityType() == eClsTypePet then
		removeFlag = ItemEffect.washPetAllPhase(curEntity)
		if removeFlag then
			curEntity:flushPropsBatch()
		end
	end
	return removeFlag
end

-- ����������������
local PlayerCleanPhases = {
	player_win_phase_point,
	player_thu_phase_point,
	player_ice_phase_point,
	player_soi_phase_point,
	player_fir_phase_point,
	player_poi_phase_point,
}

-- �������������Լӵ�
function ItemEffect.washPlayerAllPhase(player)
	--��ȡ���е����Լӵ�
	local freePoint = 0
	for _,attrName in ipairs(PlayerCleanPhases) do
		local pnt = player:getAttrValue(attrName)
		if pnt > 0 then
			player:setAttrValue(attrName,0)
			freePoint = freePoint + pnt
		end
	end

	if freePoint < 1 then
		print("���û�пɻ�ԭ�����Ե�")
		return false
	end

	player:setAttrValue(player_phase_point, 
		player:getAttrValue(
			player_phase_point
		) + freePoint
	)

	local curHp = player:getAttrValue(player_hp)
	local maxHp = player:getAttrValue(player_max_hp)
	local curMp = player:getAttrValue(player_mp)
	local maxMp = player:getAttrValue(player_max_mp)
	if curHp > maxHp then
		player:setAttrValue(player_hp, maxHp)
	end

	if curMp > maxMp then
		player:setAttrValue(player_mp, maxMp)
	end
	return true
end

-- ������Ҫ�������������
local PetCleanPhases = {
	pet_fir_phase_point,pet_soi_phase_point,
	pet_win_phase_point,pet_poi_phase_point,
	pet_ice_phase_point,pet_thu_phase_point,
	pet_chaos_phase_point,pet_taunt_phase_point,
	pet_sopor_phase_point,pet_silent_phase_point,
	pet_freeze_phase_point,pet_toxicosis_phase_point,
	pet_chaos_phase_point,pet_taunt_phase_point,
	pet_sopor_phase_point,pet_silent_phase_point,
	pet_freeze_phase_point,pet_toxicosis_phase_point,
}

-- �������п���
function ItemEffect.washPetAllPhase(targetEntity)
	local flag = false
	local value = 0
	local point = 0
	for _,attrName in ipairs(PetCleanPhases) do
		point = targetEntity:getAttrValue(attrName)
		if point > 0 then
			targetEntity:setAttrValue(attrName, 0)
			value = value + point
			flag = true
		end
	end
	
	if flag then
		local petPhasePoint = targetEntity:getAttrValue(pet_phase_point)
		petPhasePoint = petPhasePoint + value
		targetEntity:setAttrValue(pet_phase_point, petPhasePoint)

		local curHp = targetEntity:getAttrValue(pet_hp)
		local maxHp = targetEntity:getAttrValue(pet_max_hp)
		local curMp = targetEntity:getAttrValue(pet_mp)
		local maxMp = targetEntity:getAttrValue(pet_max_mp)
		if curHp > maxHp then
			targetEntity:setAttrValue(pet_hp, maxHp)
		end
		if curMp > maxMp then
			targetEntity:setAttrValue(pet_mp, maxMp)
		end
		return true
	else
		return false
	end
end

-- ��ӳ��ﾭ��
function ItemEffect.changePetExp(targetEntity, medicament, medicamentConfig, targetEntityID)
	local curEntity
	if targetEntityID then
		-- �����ѡ��ĳ���
		local pet = g_entityMgr:getPet(targetEntityID)
		if pet then
			curEntity = pet
		else
			return false
		end
	else
		-- ֻ��Գ�ս����
		local curFollowPetID = targetEntity:getFollowPetID()
		if curFollowPetID then
			local curFollowPet = g_entityMgr:getPet(curFollowPetID)
			curEntity = curFollowPet
		else 
			return false
		end
	end

	if curEntity then
		local value = medicamentConfig.ReactExtraParam1
		curEntity:addXp(value)
		curEntity:flushPropsBatch()
		removeFlag = true
		return removeFlag
	end
end

--������������ֵ
function ItemEffect.changeRideVigor(player, medicament, medicamentConfig, targetEntityID)
	local removeFlag = true
	local rideHandler = player:getHandler(HandlerDef_Ride)
	local ride = nil
	if not targetEntityID then
		ride = rideHandler:getRidingMount()
	else
		ride = rideHandler:getRide(targetEntityID)
	end
	if not ride then
		removeFlag = false
		return removeFlag
	end
	local addVigor = medicamentConfig.ReactExtraParam1
	local vigor 
	if ride:getVigor() < RideDB[ride:getID()].vigor then
		vigor = ride:getVigor()+addVigor
		if vigor > RideDB[ride:getID()].vigor then
			vigor = RideDB[ride:getID()].vigor
		end
		ride:setVigor(vigor)
	else
		removeFlag = false
		local event = Event.getEvent(ClientEvents_SC_PromptMsg,eventGroup_Item, 10,errCode)
		g_eventMgr:fireRemoteEvent(event,player)
		return removeFlag
	end
	local event = Event.getEvent(RideEvent_SC_AddRideVigor,ride:getGuid(),vigor)
	g_eventMgr:fireRemoteEvent(event,player)
	return removeFlag
end

-- ʹ����Ʒ�����������
function ItemEffect.finishTask(targetEntity, medicament, medicamentConfig)
	local taskHandler = targetEntity:getHandler(HandlerDef_Task)
	local taskID = medicamentConfig.ReactExtraParam1
	local task = taskHandler:getTask(taskID)
	if not task then
		print("��ǰ��û���������")
		removeFlag = false
		return removeFlag
	end
	-- ���������Ҳ���У���Ҫ�жϵ�ǰ����Ŀ�������������Ʒ��
	local targetType = task:getTargetType()
	local targetIndex = task:getTargetIdx()
	if targetType ~= LoopTaskTargetType.mysteryBus then
		print("��ǰ����Ŀ�겻��Ӧ�����ܹ�ʹ�ø���Ʒ")
		removeFlag =false
		return removeFlag
	end
	g_taskDoer:doDeleteTask(targetEntity, taskID)
	local loopTask = g_taskFty:createLoopTask(targetEntity, taskID, LoopTaskTargetType.itemTalk)
	loopTask:setReceiveTaskLvl(targetEntity:getLevel())
	taskHandler:addTask(loopTask)
	g_taskSystem:updateLoopTaskList(targetEntity, taskHandler:getRecetiveTaskList())
	removeFlag = true
	return removeFlag
end

-- ʹ�òر�ͼ���ܴ򿪱���
function ItemEffect.openTreasure(targetEntity, medicament, medicamentConfig)
	-- ɾ����ʶΪ��ɾ��
	removeFlag = false
	-- �Ƿ���� �Ƿ��Ƕӳ�
	local teamHandler = targetEntity:getHandler(HandlerDef_Team)
	if teamHandler:isTeam() and not teamHandler:isLeader() then
		return removeFlag
	end
	-- �ж��Ƿ��Ѿ�����
	local treasureHandler = targetEntity:getHandler(HandlerDef_Treasure)
	local guid = medicament:getGuid()
	local treasureID = medicamentConfig.ReactExtraParam1
		-- �������� 
	if g_treasureMgr:createTreasure(targetEntity,treasureID,guid) then
		-- ����Ʒ����Ϊ��
		return removeFlag
	end
    local isTrue,msgID,msgParams = treasureHandler:doClickTreasure(guid)
	if isTrue then
		removeFlag = true
		return removeFlag
	else
		treasureHandler:sendTreasureMessage(msgID,msgParams)
		return removeFlag
	end
end

-- Ϊ������Ӽ���
function ItemEffect.addPetSkill(targetEntity,item,itemConfig,targetEntityID)
	local targetPet
	if targetEntityID then
		local pet = g_entityMgr:getPet(targetEntityID)
		if pet and pet:getOwnerID() == targetEntity:getID() then
			targetPet = pet
		end
	end
	if not targetPet then
		local followID = targetEntity:getFollowPetID()
		local pet = followID and g_entityMgr:getPet(followID)
		if pet then
			targetPet = pet
		end
	end
	if not targetPet then
		g_eventMgr:fireRemoteEvent(
			Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_Pet, PetError.NoPetLearn), targetEntity
		)
		return false	--��ɾ����Ʒ
	end

	local skillHandler = targetPet:getHandler(HandlerDef_PetSkill)
	local errCode = skillHandler:canRead(item:getItemID())
	if errCode == 0 then
		skillHandler:readBook(item:getItemID())
		return true
	end
	g_eventMgr:fireRemoteEvent(
		Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_Pet,errCode),targetEntity
	)
	return false
end

-- ���һ������
function ItemEffect.addTask(targetEntity,item,itemConfig,targetEntityID)
	-- ɾ����ʶΪ��ɾ��
	local removeFlag = false
	local taskID = itemConfig.ReactExtraParam1
	if g_taskDoer:doRecetiveTask(targetEntity,taskID ) then
		removeFlag = true
	end
	return removeFlag
end

--���һ������
function ItemEffect.completeTask(targetEntity,item,itemConfig,targetEntityID)
	local removeFlag = false
	local taskID = itemConfig.ReactExtraParam1
	if targetEntity:getHandler(HandlerDef_Task):finishTaskByID(taskID) then
		removeFlag = true
	end
	return removeFlag
end

--�ı�����ҳ϶Ȳ���ʣ��ֵ���һ��buff
function ItemEffect.changeLoyaltyAndAddBuff(targetEntity,item,itemConfig,targetEntityID)
	local removeFlag = true
	local pet
	if targetEntityID then
		-- �����ѡ��ĳ���
		pet = g_entityMgr:getPet(targetEntityID)
		if not pet then
			removeFlag = false
		end
	else
		-- ֻ��Գ�ս����
		local curFollowPetID = targetEntity:getFollowPetID()
		if curFollowPetID then
			local curFollowPet = g_entityMgr:getPet(curFollowPetID)
			pet = curFollowPet
		else
			removeFlag = false
		end
	end
	if pet then
		local buffID = itemConfig.ReactExtraParam1
		local curLoyalty = pet:getLoyalty()
		if curLoyalty >= MaxPetLoyalty then
			g_buffMgr:addBuff(targetEntity, buffID)
			removeFlag = true
		else
			local buffConfig = FightOutBuffDB[buffID]
			local value = buffConfig.last_num
			local subValue = 0
			if curLoyalty + value >= MaxPetLoyalty then
				subValue = value-(MaxPetLoyalty - curLoyalty)
				curLoyalty = MaxPetLoyalty
				local buff = Buff(buffID, targetEntity)
				buff.lastValue = subValue
				targetEntity:getHandler(HandlerDef_Buff):addBuff(buff)
			else
				curLoyalty = curLoyalty + value
			end
			pet:setLoyalty(curLoyalty)
			pet:flushPropsBatch()
			removeFlag = true
		end
	else
		local buffID = itemConfig.ReactExtraParam1
		g_buffMgr:addBuff(targetEntity, buffID)
		removeFlag = true
	end
	return removeFlag
end

--�ı���������ʣ��ֵ���һ��buff
function ItemEffect.changeHpAndAddBuff(targetEntity,item,itemConfig,targetEntityID)
	local removeFlag = true
	if not targetEntity then
		return
	end
	-- ���������Ŀ��Ļ�
	local pet
	if targetEntityID then
		local pet = g_entityMgr:getPet(targetEntityID)
	else
		-- ֻ��Գ�ս����
		local curFollowPetID = targetEntity:getFollowPetID()
		if curFollowPetID then
			pet = g_entityMgr:getPet(curFollowPetID)
		end
	end
	local role = targetEntity

	local buffID = itemConfig.ReactExtraParam1
	local buffConfig = FightOutBuffDB[buffID]
	local value = buffConfig.last_num
	
	local roleMaxHp = role:getMaxHp()
	local roleCurHp = role:getHp()
	-- ���Ըı�ֵ
	if roleCurHp + value >= roleMaxHp then
		value = value - (roleMaxHp-roleCurHp)
		role:setHp(roleMaxHp)
	else
		role:setHp(roleCurHp + value)
		value = 0
	end
	
	if pet then
		local petMaxHp = pet:getMaxHp()
		local petCurHp = pet:getHp()
		if petCurHp + value >= petMaxHp then
			value = value - (petMaxHp-petCurHp)
			pet:setHp(petMaxHp)
		else
			pet:setHp(petCurHp + value)
			value = 0
		end
		pet:flushPropsBatch()
	end

	if value > 0 then
		local buff = Buff(buffID, targetEntity)
		buff.lastValue = value
		targetEntity:getHandler(HandlerDef_Buff):addBuff(buff)
	end
	removeFlag = true
	return removeFlag
end


--�ı䷨������ʣ��ֵ���һ��buff
function ItemEffect.changeMpAndAddBuff(targetEntity,item,itemConfig,targetEntityID)
	local removeFlag = true
	if not targetEntity then
		return
	end
	-- ���������Ŀ��Ļ�
	local pet
	if targetEntityID then
		local pet = g_entityMgr:getPet(targetEntityID)
	else
		-- ֻ��Գ�ս����
		local curFollowPetID = targetEntity:getFollowPetID()
		if curFollowPetID then
			pet = g_entityMgr:getPet(curFollowPetID)
		end
	end
	local role = targetEntity

	local buffID = itemConfig.ReactExtraParam1
	local buffConfig = FightOutBuffDB[buffID]
	local value = buffConfig.last_num
	
	local roleMaxMp = role:getMaxMp()
	local roleCurMp = role:getMp()
	-- ���Ըı�ֵ
	if roleCurMp + value >= roleMaxMp then
		value = value - (roleMaxMp-roleCurMp)
		role:setMp(roleMaxMp)
	else
		role:setMp(roleCurMp + value)
		value = 0
	end
	
	if pet then
		local petMaxMp = pet:getMaxMp()
		local petCurMp = pet:getMp()
		if petCurMp + value >= petMaxMp then
			value = value - (petMaxMp-petCurMp)
			pet:setMp(petMaxMp)
		else
			pet:setMp(petCurMp + value)
			value = 0
		end
		pet:flushPropsBatch()
	end

	if value > 0 then
		local buff = Buff(buffID, targetEntity)
		buff.lastValue = value
		targetEntity:getHandler(HandlerDef_Buff):addBuff(buff)
	end
	removeFlag = true
	return removeFlag
end

