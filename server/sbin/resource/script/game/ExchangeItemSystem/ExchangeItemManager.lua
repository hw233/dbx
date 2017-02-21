--[[ExchangeItemManager.lua
������
	�һ���Ʒ����
]]

local itemsInfo = 
{
	[101] = {items = {{itemID = 1051021,count = 5},{itemID = 1051022,count = 10}},rewards = {xp = 1000,itemInfo = {{itemID = 1024005,count = 2}}},maxCount = 3},
	--[id1] = {items = {{itemID = 1051021,count = 5},{itemID = 1051022,count = 10}},rewards = {}},
}

ExchangeItemManager = class(nil, Singleton)

function ExchangeItemManager:__init()
	self.commitTimes =				--ÿ��һ��Ĵ��� 
	{
		[101] = 0,
	}
		
	self.commitTime =				--ÿ�ζһ���ʱ��
	{
		[101] = 0,
	}
end

function ExchangeItemManager:__release()
	self.commitTimes = nil
	self.commitTime = nil
end


function ExchangeItemManager:doExchange(player,tempInfo,commitID)
	local bPlayerChanged = false	-- ��������Ƿ�ı�
	local bPetChanged = false		-- ���������Ƿ�ı�

	local packetHandler = player:getHandler(HandlerDef_Packet)
	--�����������Ͳ��ܽ��жһ�
	if self.commitTimes[commitID] >= itemsInfo[commitID].maxCount then 
		local errorID = 39
		local event = Event.getEvent(ExchangeItemEvent_SC_doExchangeReturn,errorID)
		g_eventMgr:fireRemoteEvent(event, player)
		return
	end

	for key,value in pairs(itemsInfo[commitID].items) do
		local item = g_itemMgr:getItem(tempInfo[1].guid)
		local itemID = item:getItemID()
		if itemID == value.itemID and tempInfo[1].count >= value.count then
			packetHandler:removeItem(tempInfo[1].guid, value.count)
			self.commitTimes[commitID] = self.commitTimes[commitID] + 1
			self.commitTime[commitID] = os.time()

			--�������ݵ����ݿ�
			local roleDBID = player:getDBID()
			LuaDBAccess.saveExchangeItemInfo(roleDBID,self.commitTimes[commitID],self.commitTime[commitID],commitID)
			
			local event = Event.getEvent(ExchangeItemEvent_SC_UpdateData,commitID,self.commitTimes[commitID])
			g_eventMgr:fireRemoteEvent(event, player)

			local msgGroupID = 30
			if table.size(itemsInfo[commitID].rewards) > 0 then
				if itemsInfo[commitID].rewards.xp then				--���ﾭ��
					local experience = itemsInfo[commitID].rewards.xp
					player:addXp(experience)
					bPlayerChanged = true
					local event = Event.getEvent(ClientEvents_SC_PromptMsg, msgGroupID, 1,experience)
					g_eventMgr:fireRemoteEvent(event, player)
				end
				if itemsInfo[commitID].rewards.itemInfo then		--��Ʒ����
					for key,value in pairs(itemsInfo[commitID].rewards.itemInfo) do
						local packetHandler = player:getHandler(HandlerDef_Packet)
						packetHandler:addItemsToPacket(value.itemID, value.count)
						local event = Event.getEvent(ExchangeItemEvent_SC_RewardItemMsg,value.itemID,value.count)
						g_eventMgr:fireRemoteEvent(event, player)
					end
				end
				if itemsInfo[commitID].rewards.petXP then			--���ﾭ�齱��
					--for key ,value in pairs() do
					--end
				end
				
				if itemsInfo[commitID].rewards.potPrize then		--Ǳ��
					local pot = itemsInfo[commitID].rewards.potPrize  + player:getAttrValue(player_pot)
					player:setAttrValue(player_pot, pot)
					local event = Event.getEvent(ClientEvents_SC_PromptMsg, msgGroupID, 3,itemsInfo[commitID].rewards.potPrize)
					g_eventMgr:fireRemoteEvent(event, player)
				end
			end
		end
	end
	if self.commitTimes[commitID] == 0 then
		local errorID = 40
		local event = Event.getEvent(ExchangeItemEvent_SC_doExchangeReturn,errorID)
		g_eventMgr:fireRemoteEvent(event, player)
	end
	if bPlayerChanged then player:flushPropBatch() end

	-- pet:flushPropBatch(player)
end

--ÿ��ת����������
function ExchangeItemManager:update(period)
	if period == "day" then
		for playerID, player in pairs(g_entityMgr:getPlayers()) do
			self:resetData()
			local event = Event.getEvent(ExchangeItemEvent_SC_ResetData)
			g_eventMgr:fireRemoteEvent(event, player)
		end
	end
end

function ExchangeItemManager:resetData()
	self.commitTimes = 
	{
		[101] = 0,
	}
	self.commitTime = 
	{
		[101] = 0,
	}
end

--������߼�������
function ExchangeItemManager:playerOnLine(player,record)
	if table.size(record) > 0 then
		for key,value in pairs(record) do
			if not time.isSameDay(value.commitTime) then							--����ͬһ��
				self.commitTimes[value.commitID] = 0
				self.commitTime[value.commitID] = 0
				local event = Event.getEvent(ExchangeItemEvent_SC_UpdateData,value.commitID,0)
				g_eventMgr:fireRemoteEvent(event, player)
			else																	--ͬһ��
				self.commitTimes[value.commitID] = value.commitTimes
				self.commitTime[value.commitID] = value.commitTime
				local event = Event.getEvent(ExchangeItemEvent_SC_UpdateData,value.commitID,value.commitTimes)
				g_eventMgr:fireRemoteEvent(event, player)
			end
		end
	else																			--���ݿ�ûֵ��ʱ��ȡĬ��ֵ
		self.commitTimes = 
		{
			[101] = 0,
		}

		self.commitTime = 
		{
			[101] = 0,
		}
		local event = Event.getEvent(ExchangeItemEvent_SC_ResetData)
		g_eventMgr:fireRemoteEvent(event, player)
	end
end

function ExchangeItemManager.getInstance()
	return ExchangeItemManager()
end

g_periodChecker:addPeriodListener("day", ExchangeItemManager.getInstance())
