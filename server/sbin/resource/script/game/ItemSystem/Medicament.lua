--[[Medicament.lua
������
	��Ʒ����ҩƷ��
]]

Medicament = class(Item)

function Medicament:__init()
	-- ҩƷ����
	self.class = ItemClass.Medicament
	-- ����Ч��
	self.effect = 0
	self.attr = nil
end

function Medicament:__release()
end

-- ��������Ч��
function Medicament:setEffect(itemEffect)
	self.effect = itemEffect
end

-- �������Ч��
function Medicament:getEffect()
	return self.effect
end

-- ����Ч����table
function Medicament:setAttr(itemAttr)
	self.attr = itemAttr
end

-- ���Ч����
function Medicament:getAttr()
	return self.attr
end

-- �������ݿ��ֳ�����ҩƷ����
function Medicament:setPropertyContext(context)
	self:setExpireTime(context.expireTime)
	self:setEffect(tonumber(context.effect))
	if context.attr and type(context.attr) == "string" then
		context.attr = unserialize(context.attr)
	end
	self:setAttr(context.attr)
end

-- ���ҩƷ�����ֳ�
function Medicament:getPropertyContext()
	local context = {}
	context.itemID = self:getItemID()
	context.number = self:getNumber()
	context.bindFlag = self:getBindFlag()
	context.expireTime = self:getExpireTime()
	context.effect = self:getEffect()
	context.attr = self:getAttr()
	return context
end
