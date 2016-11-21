--[[EntityManager.lua
������
	ʵ�����
--]]

EntityManager = class(nil, Singleton)

function EntityManager:__init()
	self.playerList = {}
	self.playerDBIDList = {}

	self.mineNpcList = {}
	self.npcList = {}
end

function EntityManager:__release()
	self.playerList = nil
	self.playerDBIDList = nil

	self.mineNpcList = nil
	self.npcList = nil
end

function EntityManager:addPlayer(player)
	local id = player:getID()
	local dbId = player:getDBID()
	if self.playerList[playerID] then
		print("EntityManager:addPlayer() error, id = ", playerID)
		return
	end
	self.playerList[playerID] = player
	self.playerDBIDList[dbId] = player
end

function EntityManager:removePlayer(playerID)
	if not self.playerList[playerID] then
		return
	end
	local player = self.playerList[playerID]
	local dbId = player:getDBID()
	self.playerList[playerID] = nil
	self.playerDBIDList[dbId] = nil
	release(player)
end

function EntityManager:getPlayerByID(playerID)
	return self.playerList[playerID]
end

function EntityManager:getPlayerByDBID(playerDBID)
	return self.playerDBIDList[playerDBID]
end

function EntityManager:getPlayers()
	return self.playerList
end

--���Npc����
function EntityManager:addNpc(npc)
	local npcID = npc:getID()
	if not self.npcList[npcID] then
		self.npcList[npcID] = npc
	end

end

--ɾ��Npc����
function EntityManager:removeNpc(npcID)
	if self.npcList[npcID] then
		self.npcList[npcID] = nil
	end
end

--���Pet����
function EntityManager:addPet(pet)
	local petID = pet:getID()
	if not self.petList[petID] then
		self.petList[petID] = pet
	end
end

--ɾ��Pet����
function EntityManager:removePet(petID)
	if self.petList[petID] then
		self.petList[petID] = nil
	end
end

--��ӳ������׶���
function EntityManager:addMineNpc(mineNpc)
	local mineNpcID = mineNpc:getID()
	if not self.mineNpcList[mineNpcID] then
		self.mineNpcList[mineNpcID] = mineNpc
	end
end

--ɾ���������׶���
function EntityManager:removeMineNpc(mineNpcID)
	if self.mineNpcList[mineNpcID] then
		self.mineNpcList[mineNpcID] = nil
	end
end


EntityManager.getInstance = function()
	return EntityManager()
end