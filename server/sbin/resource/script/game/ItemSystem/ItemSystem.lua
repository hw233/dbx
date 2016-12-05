--[[ItemSystem.lua
����:
	��Ʒϵͳ������ͻ��˵���Ϣ����
]]

require "game.ItemSystem.Item"
require "game.ItemSystem.Equipment"
require "game.ItemSystem.Medicament"
require "game.ItemSystem.Warrant"
require "game.ItemSystem.Pack"
require "game.ItemSystem.Packet"
require "game.ItemSystem.Depot"
require "game.ItemSystem.Equip"
require "game.ItemSystem.ItemFactory"
require "game.ItemSystem.ItemManager"
require "game.ItemSystem.ItemUseFun"
require "game.ItemSystem.ItemEffect"

ItemSystem = class(EventSetDoer, Singleton)

function ItemSystem:__init()
	self._doer =
	{
		-- �ƶ�����
		[ItemEvents_CS_MoveItem]				= ItemSystem.onMoveItem,
		-- ���ٵ���
		[ItemEvents_CS_DestroyItem]				= ItemSystem.onDestroyItem,
		-- �������
		[ItemEvents_CS_PackUp]					= ItemSystem.onPackUp,
		-- ʹ��ҩƷ
		[ItemEvents_CS_UseMedicament]			= ItemSystem.onUseMedicament,
		-- ��ֵ���
		[ItemEvents_CS_SplitItem]				= ItemSystem.onSplitItem,
		-- �������
		[ItemEvents_CS_StoreMoney]				= ItemSystem.onStoreMoney,
		-- ȡ������
		[ItemEvents_CS_FetchMoney]				= ItemSystem.onFetchMoney,
		-- ����ֿ�
		[ItemEvents_CS_ExtendDepot]				= ItemSystem.onExtendDepot,
		--�������װ��
		[ItemEvents_CS_RequestEquipAppraisal]	= ItemSystem.onAppraisalEeuip,
		--�һ���Ʒ
		[ItemEvents_CS_RequestExchangeProps]	= ItemSystem.onExchangeProps,
		--����װ��
		[ItemEvents_CS_RepairEquipMent]			= ItemSystem.onRepairEquipMent,
		--����װ��
		[ItemEvents_CS_RepairAllEquipMent]		= ItemSystem.onRepairAllEquipMent,
	}
end

-- �ƶ�����
function ItemSystem:onMoveItem(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	--[[if player:isFighting() then
		-- ս�����޷�����
		return
	end]]

	local itemGuid = params[1]
	-- ����֤Ҫ�ƶ������Ƿ����
	local moveItem = g_itemMgr:getItem(itemGuid)
	if not moveItem then
		-- ���߲�����
		return
	end
	-- Դ����ID
	local srcContainerID = moveItem:getContainerID()
	-- Դ������������
	local srcPackIndex = moveItem:getPackIndex()
	-- Դ������������
	local srcGridIndex = moveItem:getGridIndex()

	local moveItemInfo = params[2]
	-- Ŀ������ID
	local dstContainerID = moveItemInfo.dstContainerID
	-- Ŀ��������������
	local dstPackIndex = moveItemInfo.dstPackIndex
	-- Ŀ��������������
	local dstGridIndex = moveItemInfo.dstGridIndex
	-- Դ����
	local packetHandler = player:getHandler(HandlerDef_Packet)
	local depotHandler = player:getHandler(HandlerDef_Depot)
	local equipHandler = player:getHandler(HandlerDef_Equip)
	local srcContainer = nil
	if srcContainerID == PackContainerID.Packet then
		srcContainer = packetHandler:getPacket()
	elseif srcContainerID == PackContainerID.Depot then
		srcContainer = depotHandler:getDepot()
	elseif srcContainerID == PackContainerID.Equip then
		srcContainer = equipHandler:getEquip()
	else
		return
	end
	-- Ŀ������
	local dstContainer = nil
	if dstContainerID == PackContainerID.Packet then
		dstContainer = packetHandler:getPacket()
	elseif dstContainerID == PackContainerID.Depot then
		dstContainer = depotHandler:getDepot()
	elseif dstContainerID == PackContainerID.Equip then
		dstContainer = equipHandler:getEquip()
	else
		return
	end
	if srcContainer == dstContainer then
		-- Դ������Ŀ��������һ���������ж����Ƿ�ͬһλ��
		if srcPackIndex == dstPackIndex and srcGridIndex == dstGridIndex then
			-- ͬһλ�ã�û��Ҫ��������
			return
		end
	end
	-- �ж�Դλ���Ƿ�Ϸ�
	local result, srcItem = srcContainer:getItems(srcPackIndex, srcGridIndex)
	if result == -1 or srcItem ~= moveItem then
		return
	end
	-- ���Դ������װ����
	if srcContainerID == PackContainerID.Equip then
		-- Ŀ�����������Ǳ���
		if dstContainerID ~= PackContainerID.Packet then
			return
		end
	end
	-- ���Ŀ��������װ����
	if dstContainerID == PackContainerID.Equip then
		-- Դ���������Ǳ���
		if srcContainerID ~= PackContainerID.Packet then
			return
		end
		if dstContainer:canAddItemsToGrid(srcItem, dstPackIndex, dstGridIndex) then
			local result, dstItem = dstContainer:getItems(dstPackIndex, dstGridIndex)
			if result == 0 then
				if dstItem == nil then
					-- ֱ�ӷ���Ŀ��λ��
					if dstContainer:addItemsToGrid(srcItem, dstPackIndex, dstGridIndex, true) then	
						-- ��Դλ���Ƴ�
						srcContainer:removeItemsFromGrid(srcPackIndex, srcGridIndex, true)
					end
				else
					-- Ŀ����ڵ��ߣ���Ҫ���н���
					dstContainer:removeItemsFromGrid(dstPackIndex, dstGridIndex, false)
					dstContainer:addItemsToGrid(srcItem, dstPackIndex, dstGridIndex, true)
					srcContainer:removeItemsFromGrid(srcPackIndex, srcGridIndex, false)
					srcContainer:addItemsToGrid(dstItem, srcPackIndex, srcGridIndex, true)
				end
			end
		else
			-- �������Ϸ�
		end
		return
	end

	if srcContainer ~= dstContainer then
		-- �����ڲ�ͬ�������ƶ����Żᴦ���ƶ���Ŀ
		local moveNum = params[3]
		if moveNum then
			local srcItemNum = srcItem:getNumber()
			if moveNum > srcItemNum then
				-- �߼�����
				return
			elseif moveNum < srcItemNum then
				local newItem = g_itemMgr:createItemFromContext(srcItem:getPropertyContext(), moveNum)
				if newItem then
					-- ���Ŀ�������������-1��˵���ͻ�������ѵ��߷���Ŀ��������һ���ո���
					if dstGridIndex == -1 then
						-- ���Ŀ�������������-1��˵���ͻ�������ѵ��߷���Ŀ���������һ��������,���������-1,���ָ������
						local result = nil
						if dstPackIndex == -1 then
							result = dstContainer:addItems(newItem:getGuid(), true)
						else						
							result = dstContainer:addItemsToPack(newItem, dstPackIndex)
						end

						if result == AddItemsResult.Succeed or result == AddItemsResult.SucceedPile then
							-- �۳�Դ���ߵ���Ŀ
							srcContainer:removeItem(srcItem:getGuid(), moveNum, true)
						elseif result == AddItemsResult.Full and srcContainerID == PackContainerID.Depot and dstContainerID == PackContainerID.Packet then
							--������Ʒ����Ŀǰû�пռ䣬������ȡ����Ʒ
							self:sendItemMessageTip(player, 15)
						end
					else
						-- �ж�Ŀ��λ���Ƿ�Ϸ�
						local result, dstItem = dstContainer:getItems(dstPackIndex, dstGridIndex)
						if result == -1 then
							return
						end
						if not dstItem then
							-- ֱ�ӷ���Ŀ��λ��
							if dstContainer:addItemsToGrid(newItem, dstPackIndex, dstGridIndex, true) then
								-- �۳�Դ���ߵ���Ŀ
								srcContainer:removeItem(srcItem:getGuid(), moveNum, true)
							end
						else
							-- ������ֱ�ӷ��룬�ж��Ƿ�ɵ���
							if dstContainer:pileItemsToGridEx(newItem, dstPackIndex, dstGridIndex) then
								-- ���ӳɹ�
								dstContainer:updateItemToClient()
								return
							else
								-- ���ܵ��ӣ���Ŀ��������һ���ո�����
								local result = dstContainer:addItemsToPack(newItem, dstPackIndex)
								if result == AddItemsResult.Succeed or result == AddItemsResult.SucceedPile then
									-- �۳�Դ���ߵ���Ŀ
									srcContainer:removeItem(srcItem:getGuid(), moveNum, true)
								elseif result == AddItemsResult.Full and srcContainerID == PackContainerID.Depot and dstContainerID == PackContainerID.Packet then
									--������Ʒ����Ŀǰû�пռ䣬������ȡ����Ʒ
									self:sendItemMessageTip(player, 15)
								end
							end
						end
					end
					return
				end
			else
				-- �ƶ�ȫ����Ŀ��������Ĵ���
			end
		end
	end
	-- ���Ŀ�������������-1��˵���ͻ�������ѵ��߷���Ŀ��������һ���ո���
	if dstGridIndex == -1 then
		-- ���Ŀ�������������-1��˵���ͻ�������ѵ��߷���Ŀ���������һ��������
		if dstPackIndex == -1 then
			local result = dstContainer:addItems(srcItem:getGuid(), true)
			if result == AddItemsResult.Succeed or result == AddItemsResult.SucceedPile then
				-- ��Դλ���Ƴ�
				srcContainer:removeItemsFromGrid(srcPackIndex, srcGridIndex, true)
			elseif result == AddItemsResult.Full and srcContainerID == PackContainerID.Depot and dstContainerID == PackContainerID.Packet then
				--������Ʒ����Ŀǰû�пռ䣬������ȡ����Ʒ
				self:sendItemMessageTip(player, 15)
			end
			return
		end
		-- ���ӵ�ָ������
		-- ��ͬ��������ͬ������Ŀ��λ�ò���ֱ�ӷ���
		if srcPackIndex == dstPackIndex then
			return 
		end
		
		local result = dstContainer:addItemsToPack(srcItem, dstPackIndex)
		if result == AddItemsResult.Succeed or result == AddItemsResult.SucceedPile then
			-- ��Դλ���Ƴ�
			srcContainer:removeItemsFromGrid(srcPackIndex, srcGridIndex, true)
		elseif result == AddItemsResult.Full and srcContainerID == PackContainerID.Depot and dstContainerID == PackContainerID.Packet then
			--������Ʒ����Ŀǰû�пռ䣬������ȡ����Ʒ
			self:sendItemMessageTip(player, 15)
		end
		return
	end
	-- �ж�Ŀ��λ���Ƿ�Ϸ�
	local result, dstItem = dstContainer:getItems(dstPackIndex, dstGridIndex)
	if result == -1 then
		return
	end
	if not dstItem then
		-- ֱ�ӷ���Ŀ��λ��
		if dstContainer:addItemsToGrid(srcItem, dstPackIndex, dstGridIndex, true) then
			-- ��Դλ���Ƴ�
			srcContainer:removeItemsFromGrid(srcPackIndex, srcGridIndex, true)
		end
	else
		-- ������ֱ�ӷ��룬�ж��Ƿ�ɵ���
		if dstContainer:pileItemsToGridEx(srcItem, dstPackIndex, dstGridIndex) then
			-- ���ӳɹ�
			dstContainer:updateItemToClient()
			return
		else
			-- ���ɵ���
			if srcContainer == dstContainer then
				-- ͬһ�����߽�������
				return srcContainer:swapItem(srcPackIndex, srcGridIndex, dstPackIndex, dstGridIndex)
			else
				-- ��ͬ�����Ļ�����Ŀ��������һ���ո�����
				local result = dstContainer:addItemsToPack(srcItem, dstPackIndex)
				if result == AddItemsResult.Succeed or result == AddItemsResult.SucceedPile then
					-- ��Դλ���Ƴ�
					srcContainer:removeItemsFromGrid(srcPackIndex, srcGridIndex, true)
				elseif result == AddItemsResult.Full and srcContainerID == PackContainerID.Depot and dstContainerID == PackContainerID.Packet then
					--������Ʒ����Ŀǰû�пռ䣬������ȡ����Ʒ
					self:sendItemMessageTip(player, 15)
				end
			end
		end
	end
end

-- ���ٵ���
function ItemSystem:onDestroyItem(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	--[[if player:isFighting() then
		-- ս�����޷�����
		return
	end]]

	-- ��õ���Guid
	local itemGuid = params[1]
	local item = g_itemMgr:getItem(itemGuid)
	if not item then
		-- ���߲�����
		return
	end
	local itemConfig = tItemDB[item:getItemID()]
	if not itemConfig then
		-- �Ҳ�����������
		return
	end
	-- ���ж��ܷ�����
	if not itemConfig.CanDestroy then
		return
	end
	-- �����������ID
	local packContainerID = params[2]
	if packContainerID == PackContainerID.Packet then
		-- ����
		local packetHandler = player:getHandler(HandlerDef_Packet)
		local itemID = item:getItemID()
		packetHandler:getPacket():removeItem(itemGuid, 0, true)
		TaskCallBack.onRemoveItem(player:getID(), itemID)
		return
	elseif packContainerID == PackContainerID.Depot then
		-- �ֿ�
		local depotHandler = player:getHandler(HandlerDef_Depot)
		return depotHandler:getDepot():removeItem(itemGuid, 0, true)
	else
		return
	end
end

-- �������
function ItemSystem:onPackUp(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	--[[if player:isFighting() then
		-- ս�����޷�����
		return
	end]]
	-- Դ����ID
	local srcContainerID = params[1]

	-- Դ����
	local srcContainer = nil
	if srcContainerID == PackContainerID.Packet then
		local packetHandler = player:getHandler(HandlerDef_Packet)
		srcContainer = packetHandler:getPacket()
	elseif srcContainerID == PackContainerID.Depot then
		local depotHandler = player:getHandler(HandlerDef_Depot)
		srcContainer = depotHandler:getDepot()
	end
	if not srcContainer then
		return
	end
	-- ����
	srcContainer:packUp()
end

-- ʹ��ҩƷ
function ItemSystem:onUseMedicament(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	--[[if player:isFighting() then
		-- ս�����޷�����
		return
	end]]

	local itemGuid = params[1]
	local targetEntityID = params[2]
	local item = g_itemMgr:getItem(itemGuid)
	if not item then
		-- ���߲�����
		return
	end
	-- �ж�ҩƷ�ܷ�ʹ��
	local reSult, errCode = self:canUseMedicament(player, item, targetEntityID)
	if reSult then
		-- ʹ��ҩƷ
		self:useMedicament(player, item, targetEntityID)
	else
		if errCode then
			self:sendItemMessageTip(player, errCode)
		end
	end
end

-- �ж�ҩƷ�ܷ�ʹ��
function ItemSystem:canUseMedicament(player, item, targetEntityID)
	-- ��������С��1
	if item:getNumber() < 1 then
		return false, 2
	end
	
	local medicamentConfig = tMedicamentDB[item:getItemID()]
	if not medicamentConfig then
		return false, 3
	end
	
	-- ��Ʒ���������ƾ֤�Ҽ�����ʹ��
	if medicamentConfig.Class == ItemClass.Warrant then
		return false, 3
	end
	-- ���Ը�����
	if medicamentConfig.UseNeedState == MedicamentUseState.NonUse then 
		return false, 3
	end

	-- �ж�ʹ�õȼ�
	local playerLvl = player:getLevel()
	if playerLvl < medicamentConfig.UseNeedLvl then
		return false, 4
	end
	-- �ж�ս��״̬
	--[[if player:isFighting() then
		if medicamentConfig.UseNeedState < MedicamentUseState.Fight then
			return false, 5
		end
	else
		if medicamentConfig.UseNeedState == MedicamentUseState.Fight then
			return false, 6
		end
	end]]

	-- �Ƿ���Ҫ�ж�ʹ�ô���
	if medicamentConfig.UseTimesOneDay > 0 then
		-- �õ���ǰʹ�ô���
		local curUseTimes = g_itemMgr:getItemUseTimes(player:getDBID(), item:getItemID())
		if curUseTimes >= medicamentConfig.UseTimesOneDay then
			-- ʹ�ô���������
			return false, 7
		end
	end
	-- �ж϶�ָ��Ŀ���ܷ�ʹ��
	-- ����ڸ�������Ҫ�ж��ܷ�ʹ�����������
	if item:isHealItem() then
		local mapID = player:getCurPos()
		if mapID >= EctypeMap_StartID then
			local ectype = g_ectypeMgr:getEctype(mapID)
			if ectype and not ectype:canUseHealItems() then
				--�˸�������ʹ��
				g_ectypeMgr:sendEctypeMessageTip(player, 10)
				return false, 8
			end
		end
	end
	return true
end

-- ҩƷ�������Ͷ�ӦЧ������
local tMedicamentReactEffect =
{
	[MedicamentReactType.AddBuff]					= ItemEffect.addBuff,
	[MedicamentReactType.CancelBuff]				= ItemEffect.cancelBuff,
	[MedicamentReactType.ExeLuaFun]					= ItemEffect.exeLuaFun,
	[MedicamentReactType.ChangeHp]					= ItemEffect.changeHp,
	[MedicamentReactType.ChangeMp]					= ItemEffect.changeMp,
	[MedicamentReactType.ChangeHpMp]				= ItemEffect.changeHpMp,
	[MedicamentReactType.ChangeAnger]				= ItemEffect.changeAngerValue,
	[MedicamentReactType.ChangePk]					= ItemEffect.changePkValue,
	[MedicamentReactType.ChangeBindMoney]			= ItemEffect.changeBindMoney,
	[MedicamentReactType.ChangeMoney]				= ItemEffect.changeMoney,
	[MedicamentReactType.ChangeExp]					= ItemEffect.changeExpValue,
	[MedicamentReactType.ChangeCashMoney]			= ItemEffect.changeCashMoney,
	[MedicamentReactType.ChangeGoldCoin]			= ItemEffect.changeGoldCoin,
	[MedicamentReactType.ChangeTao]					= ItemEffect.changeTaoValue,
	[MedicamentReactType.ChangePotential]			= ItemEffect.changePotential,
	[MedicamentReactType.ChangeExpoint]				= ItemEffect.changeExpoint,
	[MedicamentReactType.ChangeCombatNum]			= ItemEffect.changeCombatNum,
	[MedicamentReactType.ChangeContribution]		= ItemEffect.changeContribution,
	[MedicamentReactType.ChangeVigor]				= ItemEffect.changeVigor,
	[MedicamentReactType.ChangePetLoyalty]			= ItemEffect.changePetLoyalty,
	[MedicamentReactType.ChangePetLife]				= ItemEffect.changePetLife,
	[MedicamentReactType.UseHpPool]					= ItemEffect.useHpPoolItem,
	[MedicamentReactType.UseMpPool]					= ItemEffect.useMpPoolItem,
	[MedicamentReactType.OpenClientUI]				= ItemEffect.openClientUI,
	[MedicamentReactType.AddPet]					= ItemEffect.addPet,
	[MedicamentReactType.AddRide]					= ItemEffect.addRide,
	[MedicamentReactType.ChangeAllAttr]				= ItemEffect.changeAllAttr,
	[MedicamentReactType.ChangeAllPhase]			= ItemEffect.changeAllPhase,
	[MedicamentReactType.ChangeRideVigor]			= ItemEffect.changeRideVigor,
	[MedicamentReactType.FinishTask]				= ItemEffect.finishTask,
	[MedicamentReactType.OpenTreasure]				= ItemEffect.openTreasure,
	[MedicamentReactType.AddPetSkill]				= ItemEffect.addPetSkill,
	[MedicamentReactType.AddTask]					= ItemEffect.addTask,
	[MedicamentReactType.CompleteTask]				= ItemEffect.completeTask,
	[MedicamentReactType.ChangeLoyaltyAndAddBuff]	= ItemEffect.changeLoyaltyAndAddBuff,
	[MedicamentReactType.ChangeHpAndAddBuff]		= ItemEffect.changeHpAndAddBuff,
	[MedicamentReactType.ChangeMpAndAddBuff]		= ItemEffect.changeMpAndAddBuff,

}

-- ʹ��ҩƷ
function ItemSystem:useMedicament(player, item, targetEntityID)
	local medicamentConfig = tMedicamentDB[item:getItemID()]
	if not medicamentConfig then
		return
	end
	local reactEffectFun = tMedicamentReactEffect[medicamentConfig.ReactType]
	if reactEffectFun then
		local reSult, errCode = reactEffectFun(player, item, medicamentConfig, targetEntityID)
		print("reSult, errCode",reSult, errCode)
		if reSult then
			-- ������ص�removeFlagΪTrue����ɾ��Դ����
			local packetHandler = player:getHandler(HandlerDef_Packet)
			local packet = packetHandler:getPacket()
			local result = packet:removeItem(item:getGuid(), 1, true)
			if result == RemoveItemsResult.Succeed or result == RemoveItemsResult.SucceedClean then
				if medicamentConfig.UseTimesOneDay > 0 then
					-- ����ʹ�ô���
					g_itemMgr:addItemUseTimes(player:getDBID(), item:getItemID())
					-- ʹ�õ���ʾ��Ϣ
					local msgID = 1
					local itemName = medicamentConfig.Name
					self:sendItemMessageTip(player, msgID, itemName)
				end
				-- ʹ����Ʒ�������
				--[[
				if medicamentConfig.ReactType == MedicamentReactType.MayFinishTask then
					local taskID = medicamentConfig.ReactExtraParam1
					self:dealTask(player:getID(), taskID)	
				end
				--]]
			end
		else
			-- ������Ϣ
			if errCode then
				self:sendItemMessageTip(player, errCode)
			end
		end
	else
		print("ItemSystem:useMedicament �߼�����ReactType = ", medicamentConfig.ReactType)
	end
end

-- ��ֵ���
function ItemSystem:onSplitItem(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
--[[	if player:isFighting() then
		-- ս�����޷�����
		return
	end
]]
	local itemGuid = params[1]
	local splitNum = params[2]
	-- ����֤�����Ƿ����
	local item = g_itemMgr:getItem(itemGuid)
	if not item then
		-- ���߲�����
		return
	end
	if item:getContainerID() ~= PackContainerID.Packet then
		-- ��ʱֻ֧�ֱ������ߵĲ��
		return
	end
	if item:getNumber() <= splitNum or splitNum <= 0 then
		-- �����Ŀ���Ϸ�
		return
	end
	
    local packetHandler = player:getHandler(HandlerDef_Packet)
	local packet = packetHandler:getPacket()

	-- ���֣����ȵ��пո�
	local result, packIndex, gridIndex = packet:getSpaceIndex(item)
	if not result then
		-- ��ʾ��������
		return
	end
	local result = packet:removeItem(itemGuid, splitNum, false)
	if result == RemoveItemsResult.Succeed then
		-- ���ɷֲ�������µ��ߣ�������ݵ�ǰ���ߵ������ֳ�������������������Բ�һ��
		local newItem = g_itemMgr:createItemFromContext(item:getPropertyContext(), splitNum)
		if newItem then
			-- ���ӵ�ָ���ո���
			packet:addItemsToGrid(newItem, packIndex, gridIndex, true)
		end
	end
end

-- �������
function ItemSystem:onStoreMoney(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end

	local storeMoney = params[1]
	local playerMoney = player:getMoney()
	if storeMoney > playerMoney then
		-- ���Ϸ�
		return
	end
	local depotMoney = player:getDepotMoney()
	if depotMoney + storeMoney > DepotSaveMoneyMax then
		return
	end
	-- �۳������������
	player:setMoney(playerMoney - storeMoney)

	-- ������Ҳֿ�����
	player:setDepotMoney(depotMoney + storeMoney)
end

-- ȡ������
function ItemSystem:onFetchMoney(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end

	local fetchMoney = params[1]
	local depotMoney = player:getDepotMoney()
	if fetchMoney > depotMoney then
		-- ���Ϸ�
		return
	end
	-- �۳���Ҳֿ�����
	depotMoney = depotMoney - fetchMoney
	player:setDepotMoney(depotMoney)
	-- ���������������
	local playerMoney = player:getMoney()
	playerMoney = playerMoney + fetchMoney
	player:setMoney(playerMoney)
end

-- ����ֿ�
function ItemSystem:onExtendDepot(event)
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end
	local depotHandler = player:getHandler(HandlerDef_Depot)
	local curCapacity = depotHandler:getDepotCapability()
	if curCapacity >= DepotMaxCapacity then
		-- �Ѿ����䵽���
		return
	end
	-- �����ǵڼ�������ֿ�
	local extendCapacity = curCapacity - DepotDefaultCapacity
	if extendCapacity % 6 ~= 0 then
		-- �߼�����
		return
	end
	local extendTimes = extendCapacity / 6 + 1
	local packetHandler = player:getHandler(HandlerDef_Packet)
	if packetHandler:getNumByItemID(DepotExtendItemID) < extendTimes then
		-- ������߲���
		return
	end
	packetHandler:removeByItemId(DepotExtendItemID, extendTimes)
	curCapacity = curCapacity + 6
	if curCapacity > DepotMaxCapacity then
		-- �Է���һ
		return
	end
	depotHandler:setDepotCapability(curCapacity)
	-- ��ɫ��¼�£�Ҫ�������ݿ�
	player:setDepotCapacity(curCapacity)

	local event = Event.getEvent(ItemEvents_SC_CapacityChange, PackContainerID.Depot, curCapacity)
	g_eventMgr:fireRemoteEvent(event, player)
end

-- ��Ʒ��ʾ��Ϣ
function ItemSystem:sendItemMessageTip(player, msgID, msgParams)
	local event = Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_Item, msgID, msgParams)
	g_eventMgr:fireRemoteEvent(event, player)
end

-- �����Ҽ����������ߵ�ʹ���п�����������п��ܴ�����������
--[[
function ItemSystem:dealTask(roleID, taskID)
	local player = g_entityMgr:getPlayer(roleID)
	local taskHandler = player:getHandler(HandlerDef_Task)
	local value = math.random(1, 2)
	if value == 1 then
		-- �����������
		taskHandler:finishLoopTask(taskID)
	else
		g_taskDoer:doDeleteTask(player, taskID)
		-- �ٽ�ָ�������͵�����
		local loopTask = g_taskFty:createLoopTask(player, taskID, LoopTaskTargetType.itemScript)
		taskHandler:addTask(loopTask)
		g_taskSystem:updateLoopTaskList(player, taskHandler:getRecetiveTaskList())
	end
end
--]]

-- �������װ��
function ItemSystem:onAppraisalEeuip(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end

	local guid = params[1]
	local equipMent = g_itemMgr:getItem(guid)
	if equipMent and equipMent:getItemClass()== ItemClass.Equipment then
		local equipHandler = player:getHandler(HandlerDef_Equip)
		equipHandler:identityEquip(equipMent)
	end
end

-- �һ���Ʒ
function ItemSystem:onExchangeProps(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end

	local itemID = params[1]
	local num = params[2]
	g_itemMgr:onExchangeProps(player,itemID,num)
end

--����װ��
function ItemSystem:onRepairEquipMent(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end

	local itemGuid = params[1]
	local equipMent = g_itemMgr:getItem(itemGuid)
	if not equipMent then
		return
	end
	local curDurability = equipMent:getCurDurability()
	local maxDurability = equipMent:getMaxDurability()
	if equipMent:getItemClass() ~= ItemClass.Equipment or maxDurability <= curDurability then
		return
	end
	local salePrice = equipMent:getSalePrice()
	local durability  = curDurability/maxDurability * 100
	local perc = 0
	if durability > 80 then
		perc = 2
	elseif durability >50 then
		perc = 3
	elseif durability > 10 then
		perc = 4
	else
		perc = 6
	end
	local repairMoney = math.ceil(perc*salePrice*(maxDurability - curDurability )/maxDurability)
	local subMoney = player:getSubMoney()
	local money = player:getMoney()
	if subMoney + money < repairMoney then
		return
	end
	if subMoney >= repairMoney then
		player:setSubMoney(subMoney - repairMoney)
	else
		player:setSubMoney(0)
		player:setMoney(money-repairMoney + subMoney)
	end
	equipMent:setCurDurability(maxDurability)
end

--����ȫ��װ��
function ItemSystem:onRepairAllEquipMent(event)
	local params = event:getParams()
	local playerID = event.playerID
	if not playerID then
		return
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return
	end

	local equipHandler = player:getHandler(HandlerDef_Equip)
	local equip = equipHandler:getEquip()
	local equipPack = equip:getPack()
	local repairAllMoney = 0
	for gridIndex = 1, equipPack:getCapability() do
		local equipMent = equipPack:getGridItem(gridIndex)
		if equipMent then
			local maxDurability = equipMent:getMaxDurability()
			local curDurability = equipMent:getCurDurability()
			if curDurability < maxDurability then
				local salePrice = equipMent:getSalePrice()
				local durability  = curDurability/maxDurability * 100
				local perc = 0
				if durability > 80 then
					perc = 2
				elseif durability >50 then
					perc = 3
				elseif durability > 10 then
					perc = 4
				else
					perc = 6
				end
				repairAllMoney = repairAllMoney + math.ceil(perc*salePrice*(maxDurability - curDurability )/maxDurability)
			end
		end
	end

	local subMoney = player:getSubMoney()
	local money = player:getMoney()
	if subMoney + money < repairAllMoney then
		return
	end
	if subMoney >= repairAllMoney then
		player:setSubMoney(subMoney - repairAllMoney)
	else
		player:setSubMoney(0)
		player:setMoney(money-repairAllMoney + subMoney)
	end

	for gridIndex = 1, equipPack:getCapability() do
		local equipMent = equipPack:getGridItem(gridIndex)
		if equipMent then
			local maxDurability = equipMent:getMaxDurability()
			equipMent:setCurDurability(maxDurability)
		end
	end
end


function ItemSystem.getInstance()
	return ItemSystem()
end

EventManager.getInstance():addEventListener(ItemSystem.getInstance())
