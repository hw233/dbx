--[[PvpPlayerAttrFormula.lua
������
	αpvp���Թ�ʽ
]]

require "misc.constant"

PvpPlayerAttrFormula = {}

-----------------------------------------------------------------------
--�߻�����
-----------------------------------------------------------------------
--��������
function PvpPlayerAttrFormula.pvp_player_max_hp(monster)
	return 1000
end

--���﹫ʽ���ձ�
g_AttributePvpPlayerFormat =
{
	[pvp_max_hp]						= PvpPlayerAttrFormula.pvp_player_max_hp,
}

--����Ӱ���ϵ
g_AttrPvpPlayerInfluenceTable =
{
	[pvp_hp]							= {pvp_max_hp},
}

-----------------------------------------------------------------------
--��������
-----------------------------------------------------------------------
--���Զ�Ӧ������ͬ��
g_AttrPvpPlayerToProp =
{
}

--��Ҫ�������µ�����
g_AttrPvpPlayerSyncTable =
{
}