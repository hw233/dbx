--[[ItemFactory.lua
����:
	���߹���
]]

ItemFactory = class(nil, Singleton)

function ItemFactory:__init()
end

function ItemFactory:createEquipment(itemId, itemNum)
	if not tEquipmentDB[itemId] then
		-- �Ҳ���װ������
		return nil
	end

	local equipment = Equipment(itemId, itemNum)
	equipment:setGuid(createGUID(Item))

	return equipment
end

function ItemFactory:createWarrant(itemId, itemNum)
	if not tWarrantDB[itemId] then
		-- �Ҳ���ƾ֤����
		return nil
	end

	local warrant = Warrant(itemId, itemNum)
	warrant:setGuid(createGUID(Item))

	return warrant
end

function ItemFactory:createMedicament(itemId, itemNum)
	if not tMedicamentDB[itemId] then
		-- �Ҳ���ҩƷ����
		return nil
	end

	local medicament = Medicament(itemId, itemNum)
	medicament:setGuid(createGUID(Item))

	return medicament
end

function ItemFactory.getInstance()
	return ItemFactory()
end
