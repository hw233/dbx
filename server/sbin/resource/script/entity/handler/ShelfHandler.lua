--[[ShelfHandler.lua
������
	ʵ���Npc���ܻع���handler
--]]
ShelfHandler = class(nil)

function ShelfHandler:__init(entity)
	self._entity = entity
	-- npc���ܻع�
	self.shelf = Shelf(self._entity)
end

function ShelfHandler:__release()
	self._entity = nil
	release(self.shelf)
	self.shelf = nil
end

-- ��ȡ����
function ShelfHandler:getShelf()
	return self.shelf
end


-- ���ûع���������
function ShelfHandler:setShelfCapability(curCapability)
	local defaultPack = self.shelf:getPack()
	defaultPack:setCapability(curCapability)
end

