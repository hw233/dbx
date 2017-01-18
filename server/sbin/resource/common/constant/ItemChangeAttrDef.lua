--[[
    ItemChangeAttrDef.lua ��ƷӰ�����Թ�ʽ
]]
require "misc.constant"

ItemChangeAttrDef = {}

ItemChangeType  =
{
    Change_BindMoney    = 1,        --�ı����
    Change_Money        = 2,        --�ı�����
    Change_ExpValue     = 3,        --�ı侭��      
    Change_TaoValue     = 4,        --�ı���� 
    Change_Potential    = 5,        --�ı�Ǳ��
    Change_Expoint      = 6,        --�ı�����
}

function ItemChangeAttrDef.Change_BindMoney(entity)
    local level = entity:getLevel()
    return math.floor(level*1 + 10)
end

function ItemChangeAttrDef.Change_Money(entity)
    local level = entity:getLevel()
    return math.floor(level*2 + 15)
end

function ItemChangeAttrDef.Change_ExpValue(entity)
    local level = entity:getLevel()
    return math.floor(level*1 + 12)
end

function ItemChangeAttrDef.Change_TaoValue(entity)
    local level = entity:getLevel()
    return math.floor(level*2 + 123)
end

function ItemChangeAttrDef.Change_Potential(entity)
    local level = entity:getLevel()
    return math.floor(level*2 + 123)
end

function ItemChangeAttrDef.Change_Expoint(entity)
    local level = entity:getLevel()
    return math.floor(level*10 + 123)
end

ItemEffectFuncs =
{
   [ItemChangeType.Change_BindMoney]    = ItemChangeAttrDef.Change_BindMoney,
   [ItemChangeType.Change_Money]        = ItemChangeAttrDef.Change_Money,        
   [ItemChangeType.Change_ExpValue]     = ItemChangeAttrDef.Change_ExpValue,
   [ItemChangeType.Change_TaoValue]     = ItemChangeAttrDef.Change_TaoValue,
   [ItemChangeType.Change_Potential]    = ItemChangeAttrDef.Change_Potential,
   [ItemChangeType.Change_Expoint]      = ItemChangeAttrDef.Change_Expoint,
}

