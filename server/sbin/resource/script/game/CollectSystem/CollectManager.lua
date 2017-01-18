--[[CollectManager.lua
      �ɼ�������
--]]
require "base.base"

--�̶����������λ��״̬
ePosState = 
{
	loaded = 1,
	idle = 2,
}

CollectManager = class(nil, Singleton)

function CollectManager:__init()
    --��¼�̶�������ָ��������״̬
	self.postionStateInfo = {}
	--��¼�������ˢ�µĸ���
	self.totalAmount = {}
	--�����ͼ�����м�����ʵ�������
	self.loadedPostion = {}
end

--����λ�����Ƿ��������
function CollectManager:addPosState(mapID, npcID, index)
	if not self.postionStateInfo[mapID] then
		self.postionStateInfo[mapID] = {}
	end
	if not self.postionStateInfo[mapID][npcID] then
		self.postionStateInfo[mapID][npcID] = {}
	end
	self.postionStateInfo[mapID][npcID][index] = ePosState.loaded
end

--��ͼ�ϸõ�û��NPC,�õ�ԭ�ȵ�loaded״̬�Ƴ����õ���Ϊidle ״̬
function CollectManager:removePosState(mapID, npcID, index)
	if not self.postionStateInfo[mapID] then
		return
	end
	if not self.postionStateInfo[mapID][npcID] then --�϶���
	end
	--�õ���Ϊidle ״̬
    self.postionStateInfo[mapID][npcID][index] = ePosState.idle
end

--���λ��״̬
function CollectManager:checkPosState(mapID, npcID, index)
	if not self.postionStateInfo[mapID] then
		return ePosState.idle
	end
	if not self.postionStateInfo[mapID][npcID] then
		return ePosState.idle
	end
	return self.postionStateInfo[mapID][npcID][index]
end

--�������ʣ������
function CollectManager:setReminderAmount(mapID, npcID, amount) 
    local mapTable = {}
    self.totalAmount[mapID] = mapTable
    mapTable[npcID] = amount
end

--������ʣ������ 
function CollectManager:getReminderAmount(mapID, npcID)
	local mapNpcAmounts = mapID and self.totalAmount[mapID]
    local amount = mapNpcAmounts and mapNpcAmounts[npcID]
    return amount or 0
end

--�����������
function CollectManager:reduceAmount(mapID, npcID)
	local mapNpcAmounts = mapID and self.totalAmount[mapID]
	if not mapNpcAmounts then
		return
	end
	local amount = mapNpcAmounts[npcID]
	if not amount then
		return
	end
	mapNpcAmounts[npcID] = amount - 1
end

--��ӵ�ͼ�ϼ�����ʵ�������
function CollectManager:addEntityPos(mapID, postion)
    if not  self.loadedPostion[mapID] then
		self.loadedPostion[mapID] = {}
	end
    table.insert(self.loadedPostion[mapID], postion)
end

--�Ƴ�����û�м���ʵ�������
function CollectManager:removeEntitypos(mapID, postion)
    if self.loadedPostion[mapID] then
        for k,pos in ipairs (self.loadedPostion[mapID]) do
	        if postion[1] == pos[1] and postion[2] == pos[2] then
				table.remove (self.loadedPostion[mapID],k)
		    end
	    end
    end  
	
end

function CollectManager.getInstence()
    return CollectManager()
end

