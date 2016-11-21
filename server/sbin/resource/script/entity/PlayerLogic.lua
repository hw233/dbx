--[[PlayerLogic.lua
������
	���ҵ���߼�����
--]]
require "entity.attribute.Attribute"

function Player:__init_logic()
	self._name		= nil
	self._sex		= nil
	self._modelId	= nil
	self._showParts	= nil
	self._school	= nil
	self.level		= nil
	self.attrSet	= {}

	self:createAttributeSet()
end

function Player:__release_logic()
	--todo
end

-- ����������Լ���
function Player:createAttributeSet()
	local attrSet = self.attrSet
	for attrName,detail in pairs(PlayerAttrDefine) do
		if not attrSet[attrName] then
			attrSet[attrName] = PlayerAttribute(self,attrName,detail.expr,0)
		end
	end
end

-- ��ȡĳһ������
function Player:getAttribute(attrName)
	return attrName and self.attrSet[attrName]
end

-- ������Լ���
function Player:getAttrSet()
	return self.attrSet
end

-- ��������ֵ
function Player:setAttrValue(attrName,value)
	local attribute = attrName and self.attrSet[attrName]
	if not attribute then
		print(("[Player:setAttrValue] û��%s��������!"):format(attrName or "nil"))
	end
	if attribute:isExpr() then
		print(("[Player:setAttrValue] ���ܸ���ʽ����%s��ֵ"):format(attribute:getName()))
	end
	attribute:setValue(value)
end

-- ���ĳ�����Ե�ֵ
function Player:getAttrValue(attrName)
	local attribute = attrName and self.attrSet[attrName]
	if attribute then
		return attribute:getValue()
	else
		print(("[Player:getAttrValue()] û��%s��������!"):format(attrName or "nil"))
		return nil
	end
end

-- ��ĳ�����Լ�ֵ
function Player:addAttrValue(attrName,value)
	local attribute = attrName and self.attrSet[attrName]
	if not attribute then
		print(("[Player:addAttrValue] û��%s��������!"):format(attrName or "nil"))
	end
	if attribute:isExpr() then
		print(("[Player:addAttrValue] ���ܸ���ʽ����%s��ֵ"):format(attribute:getName()))
	end
	attribute:setValue(attribute:getValue() + value)
end

-- ���Ըı��¼�֪ͨ
function Player:onAttrChanged(attrName)
	print("[Player:onAttrChanged]")
end
