--[[DepotHandler.lua
������
	ʵ��Ĳֿ�handler
--]]

DepotHandler = class(nil, Timer)

function DepotHandler:__init(entity)
	self._entity = entity
	-- �ֿ�
	self.depot = Depot(self._entity)
	-- ����15��Ķ�ʱ��������ʱ�����Ƿ���
	self.checkGoodsTimerID = g_timerMgr:regTimer(self, 1000*15, 1000*15, "���ֿ��ʱ����")
end

function DepotHandler:__release()
	self._entity = nil
	release(self.depot)
	self.depot = nil
	-- ɾ����ʱ��
	g_timerMgr:unRegTimer(self.checkGoodsTimerID)
end

-- ��ȡ�ֿ�
function DepotHandler:getDepot()
	return self.depot
end

-- ��ʱ���ص�
function DepotHandler:update(timerID)
	if timerID == self.checkGoodsTimerID then
		-- ���ֿ����
		self.depot:checkItemExpire()
	end
end

-- ��òֿ�����
function DepotHandler:getDepotCapability()
	local depotCapability = 0
	for packindex = DepotPackIndex.First, DepotPackIndex.MaxNum-1 do
		local depotPack = self.depot:getPack(packindex)
		if depotPack then
			depotCapability = depotCapability + depotPack:getCapability()
		end
	end
	return depotCapability
end

-- ���òֿ�����
function DepotHandler:setDepotCapability(curCapability)
	local firstPack = self.depot:getPack(DepotPackIndex.First)
	local secondPack = self.depot:getPack(DepotPackIndex.Second)
	if curCapability > DepotPackCapacity then
	    firstPack:setCapability(DepotPackCapacity)
	    secondPack:setCapability(curCapability-DepotPackCapacity)
	else
	    firstPack:setCapability(curCapability)
	    secondPack:setCapability(0)
	end
end
