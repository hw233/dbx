-- PvpPlayerAttrDefine.lua
-- Boss���Զ���

PvpPlayerAttrDefine = {}

-- defineAttr(����ֵ, ������, ��������, �Ƿ��й�ʽ, �ܷ���־û�)
local function defineAttr(name, desc, bExpr, bSave)
	local base = #PvpPlayerAttrDefine + 1
	PvpPlayerAttrDefine[base] = {
		name	= name,
		expr	= bExpr,
		db		= bSave,
	}
	_G[name] = base
end

----------------------------------------------------------------------------
----------------------------------------------------------------------------
defineAttr("pvp_in_str", "��������", true)
defineAttr("pvp_in_int", "��������", true)
defineAttr("pvp_in_sta", "�������", true)
defineAttr("pvp_in_spi", "��������", true)
defineAttr("pvp_in_dex", "������", true)
defineAttr("pvp_hp", "����", true)
defineAttr("pvp_max_hp", "��������", true)