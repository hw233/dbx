--[[Warrant.lua
����:
	��Ʒ����ƾ֤��
]]

Warrant = class(Item)

function Warrant:__init()
	-- ƾ֤����
	self.class = ItemClass.Warrant
	self.attr = nil
end

function Warrant:__release()
end


-- ��������Ч��
function Warrant:setAttr(itemAttr)
	self.attr = itemAttr
end

-- �������Ч��
function Warrant:getAttr()
	return self.attr
end

-- �������ݿ��ֳ���������
function Warrant:setPropertyContext(context)
	self:setExpireTime(context.expireTime)
	if context.attr and type(context.attr) == "string" then
		context.attr = unserialize(context.attr)
	end
	self:setAttr(context.attr)
end

-- ��������ֳ�
function Warrant:getPropertyContext()
	local context = {}
	context.itemID = self:getItemID()
	context.number = self:getNumber()
	context.expireTime = self:getExpireTime()
	context.lockFlag = self:getLockFlag()
	context.attr = self:getAttr()
	return context
end