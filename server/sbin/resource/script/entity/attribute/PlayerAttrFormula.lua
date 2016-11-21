--[[PlayerAttrFormula.lua
������
	������Թ�ʽ
]]

require "misc.constant"

local math_pow		= math.pow
local math_ceil		= math.ceil
local math_floor	= math.floor

PlayerAttrbuteFormula = {}

-----------------------------------------------------------------------
--�߻�����
-----------------------------------------------------------------------
--�����������һ������

function PlayerAttrbuteFormula.player_next_xp(player)
	local level = player:getAttrValue(player_lvl)
	return PlayerLevelUpDB[level] or 0
end

--��������
function PlayerAttrbuteFormula.player_in_str(player)
	local level = player:getAttrValue(player_lvl)
	return level + 10;
end

--��������
function PlayerAttrbuteFormula.player_in_int(player)
	local level = player:getAttrValue(player_lvl)
	return level + 10;
end

--�������
function PlayerAttrbuteFormula.player_in_sta(player)
	local level = player:getAttrValue(player_lvl)
	return level + 10;
end

--��������
function PlayerAttrbuteFormula.player_in_spi(player)
	local level = player:getAttrValue(player_lvl)
	return level + 10;
end

--������
function PlayerAttrbuteFormula.player_in_dex(player)
	local level = player:getAttrValue(player_lvl)
	return level + 10;
end

--���� = �������� +�����ӵ� + ������ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_str(player)
	local player_in_str = player:getAttrValue(player_in_str)
	local player_str_point = player:getAttrValue(player_str_point)
	local player_add_str = player:getAttrValue(player_add_str)
	local player_add_base_attr = player:getAttrValue(player_add_base_attr)
	--print("������player_in_str,player_str_point,player_add_str,player_add_base_attr",player_in_str,player_str_point,player_add_str,player_add_base_attr)
	return player_in_str+player_str_point+player_add_str+player_add_base_attr
end

--���� = �������� +�����ӵ� + ������ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_int(player)
	local player_in_int = player:getAttrValue(player_in_int)
	local player_int_point = player:getAttrValue(player_int_point)
	local player_add_int = player:getAttrValue(player_add_int)
	local player_add_base_attr = player:getAttrValue(player_add_base_attr)
	return player_in_int+player_int_point+player_add_int+player_add_base_attr
end

--���� = ������� +���Ǽӵ� + ���Ǽ�ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_sta(player)
	local player_in_sta = player:getAttrValue(player_in_sta)
	local player_sta_point = player:getAttrValue(player_sta_point)
	local player_add_sta = player:getAttrValue(player_add_sta)
	local player_add_base_attr = player:getAttrValue(player_add_base_attr)
	--print("���ǣ�player_in_sta,player_sta_point,player_add_sta,player_add_base_attr",player_in_sta,player_sta_point,player_add_sta,player_add_base_attr)
	return player_in_sta+player_sta_point+player_add_sta+player_add_base_attr
end

--���� = �������� +����ӵ� + �����ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_spi(player)
	local player_in_spi = player:getAttrValue(player_in_spi)
	local player_spi_point = player:getAttrValue(player_spi_point)
	local player_add_spi = player:getAttrValue(player_add_spi)
	local player_add_base_attr = player:getAttrValue(player_add_base_attr)
	return player_in_spi+player_spi_point+player_add_spi+player_add_base_attr
end

--�� = ������ +���ӵ� + ����ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_dex(player)
	local player_in_dex = player:getAttrValue(player_in_dex)
	local player_dex_point = player:getAttrValue(player_dex_point)
	local player_add_dex = player:getAttrValue(player_add_dex)
	local player_add_base_attr = player:getAttrValue(player_add_base_attr)
	return player_in_dex+player_dex_point+player_add_dex+player_add_base_attr
end

--������ = �����Լӵ� + �����Լ�ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_win_phase(player)
	local player_win_phase_point = player:getAttrValue(player_win_phase_point)
	local player_add_win_phase = player:getAttrValue(player_add_win_phase)
	local player_add_all_phase = player:getAttrValue(player_add_all_phase)
	--print("�����ԣ�player_win_phase_point,player_add_win_phase,player_add_all_phase",player_win_phase_point,player_add_win_phase,player_add_all_phase)
	return player_win_phase_point+player_add_win_phase+player_add_all_phase
end

--������ = �����Լӵ� + �����Լ�ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_thu_phase(player)
	local player_thu_phase_point = player:getAttrValue(player_thu_phase_point)
	local player_add_thu_phase = player:getAttrValue(player_add_thu_phase)
	local player_add_all_phase = player:getAttrValue(player_add_all_phase)
	return player_thu_phase_point+player_add_thu_phase+player_add_all_phase
end

--������ = �����Լӵ� + �����Լ�ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_ice_phase(player)
	local player_ice_phase_point = player:getAttrValue(player_ice_phase_point)
	local player_add_ice_phase = player:getAttrValue(player_add_ice_phase)
	local player_add_all_phase = player:getAttrValue(player_add_all_phase)
	--print("�����ԣ�player_ice_phase_point,player_add_ice_phase,player_add_all_phase",player_ice_phase_point,player_add_ice_phase,player_add_all_phase)
	return player_ice_phase_point+player_add_ice_phase+player_add_all_phase
end

--������ = �����Լӵ� + �����Լ�ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_soi_phase(player)
	local player_soi_phase_point = player:getAttrValue(player_soi_phase_point)
	local player_add_soi_phase = player:getAttrValue(player_add_soi_phase)
	local player_add_all_phase = player:getAttrValue(player_add_all_phase)
	return player_soi_phase_point+player_add_soi_phase+player_add_all_phase
end

--������ = �����Լӵ� + �����Լ�ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_fir_phase(player)
	local player_fir_phase_point = player:getAttrValue(player_fir_phase_point)
	local player_add_fir_phase = player:getAttrValue(player_add_fir_phase)
	local player_add_all_phase = player:getAttrValue(player_add_all_phase)
	return player_fir_phase_point+player_add_fir_phase+player_add_all_phase
end

--������ = �����Լӵ� + �����Լ�ֵ + �������Լ�ֵ
function PlayerAttrbuteFormula.player_poi_phase(player)
	local player_poi_phase_point = player:getAttrValue(player_poi_phase_point)
	local player_add_poi_phase = player:getAttrValue(player_add_poi_phase)
	local player_add_all_phase = player:getAttrValue(player_add_all_phase)
	return player_poi_phase_point+player_add_poi_phase+player_add_all_phase
end

--�繥�� =������0.01+�繥����ֵ+�������Թ�����ֵ��
function PlayerAttrbuteFormula.player_win_at(player)
	local player_win_phase = player:getAttrValue(player_win_phase)
	local player_inc_win_at = player:getAttrValue(player_inc_win_at)
	local player_inc_phase_at = player:getAttrValue(player_inc_phase_at)
	return math_floor(player_win_phase*0.01+player_inc_win_at+player_inc_phase_at)
end

--�׹��� = ��������*0.01+�׹�����ֵ+�������Թ�����ֵ��
function PlayerAttrbuteFormula.player_thu_at(player)
	local player_thu_phase = player:getAttrValue(player_thu_phase)
	local player_inc_thu_at = player:getAttrValue(player_inc_thu_at)
	local player_inc_phase_at = player:getAttrValue(player_inc_phase_at)
	return math_floor(player_thu_phase*0.01+player_inc_thu_at+player_inc_phase_at)
end

--������ =��������*0.01+��������ֵ+�������Թ�����ֵ��
function PlayerAttrbuteFormula.player_ice_at(player)
	local player_ice_phase = player:getAttrValue(player_ice_phase)
	local player_inc_ice_at = player:getAttrValue(player_inc_ice_at)
	local player_inc_phase_at = player:getAttrValue(player_inc_phase_at)
	return math_floor(player_ice_phase*0.01+player_inc_ice_at+player_inc_phase_at)
end

--�𹥻� = (������*0.01+�𹥻���ֵ+�������Թ�����ֵ)
function PlayerAttrbuteFormula.player_fir_at(player)
	local player_fir_phase = player:getAttrValue(player_fir_phase)
	local player_inc_fir_at = player:getAttrValue(player_inc_fir_at)
	local player_inc_phase_at = player:getAttrValue(player_inc_phase_at)
	return math_floor(player_fir_phase*0.01+player_inc_fir_at+player_inc_phase_at)
end

--������ = (������*0.01+��������ֵ+�������Թ�����ֵ)
function PlayerAttrbuteFormula.player_soi_at(player)
	local player_soi_phase = player:getAttrValue(player_soi_phase)
	local player_inc_soi_at = player:getAttrValue(player_inc_soi_at)
	local player_inc_phase_at = player:getAttrValue(player_inc_phase_at)
	return math_floor(player_soi_phase*0.01+player_inc_soi_at+player_inc_phase_at)
end

--������ = (������*0.01+��������ֵ+�������Թ�����ֵ)
function PlayerAttrbuteFormula.player_poi_at(player)
	local player_poi_phase = player:getAttrValue(player_poi_phase)
	local player_inc_poi_at = player:getAttrValue(player_inc_poi_at)
	local player_inc_phase_at = player:getAttrValue(player_inc_phase_at)
	return math_floor(player_poi_phase*0.01+player_inc_poi_at+player_inc_phase_at)
end

--�翹 = (������*0.01+�翹��ֵ+�������Կ��Լ�ֵ)
function PlayerAttrbuteFormula.player_win_resist(player)
	local player_win_phase = player:getAttrValue(player_win_phase)
	local player_inc_win_resist = player:getAttrValue(player_inc_win_resist)
	local player_inc_phase_resist = player:getAttrValue(player_inc_phase_resist)
	return math_floor(player_win_phase*0.01+player_inc_win_resist+player_inc_phase_resist)
end

--�׿� = (������*0.01+�׿���ֵ+�������Կ��Լ�ֵ)
function PlayerAttrbuteFormula.player_thu_resist(player)
	local player_thu_phase = player:getAttrValue(player_thu_phase)
	local player_inc_thu_resist = player:getAttrValue(player_inc_thu_resist)
	local player_inc_phase_resist = player:getAttrValue(player_inc_phase_resist)
	return math_floor(player_thu_phase*0.01+player_inc_thu_resist+player_inc_phase_resist)
end

--���� = (������*0.01+������ֵ+�������Կ��Լ�ֵ)
function PlayerAttrbuteFormula.player_ice_resist(player)
	local player_ice_phase = player:getAttrValue(player_ice_phase)
	local player_inc_ice_resist = player:getAttrValue(player_inc_ice_resist)
	local player_inc_phase_resist = player:getAttrValue(player_inc_phase_resist)
	return math_floor(player_ice_phase*0.01+player_inc_ice_resist+player_inc_phase_resist)
end

--�� = (������*0.01+�𿹼�ֵ+�������Կ��Լ�ֵ)
function PlayerAttrbuteFormula.player_fir_resist(player)
	local player_fir_phase = player:getAttrValue(player_fir_phase)
	local player_inc_fir_resist = player:getAttrValue(player_inc_fir_resist)
	local player_inc_phase_resist = player:getAttrValue(player_inc_phase_resist)
	return math_floor(player_fir_phase*0.01+player_inc_fir_resist+player_inc_phase_resist)
end

--���� = (������*0.01+������ֵ+�������Կ��Լ�ֵ)
function PlayerAttrbuteFormula.player_soi_resist(player)
	local player_soi_phase = player:getAttrValue(player_soi_phase)
	local player_inc_ice_resist = player:getAttrValue(player_inc_ice_resist)
	local player_inc_phase_resist = player:getAttrValue(player_inc_phase_resist)
	return math_floor(player_soi_phase*0.01+player_inc_ice_resist+player_inc_phase_resist)
end

--���� = (������*0.01+������ֵ+�������Կ��Լ�ֵ)
function PlayerAttrbuteFormula.player_poi_resist(player)
	local player_poi_phase = player:getAttrValue(player_poi_phase)
	local player_inc_poi_resist = player:getAttrValue(player_inc_poi_resist)
	local player_inc_phase_resist = player:getAttrValue(player_inc_phase_resist)
	return math_floor(player_poi_phase*0.01+player_inc_poi_resist+player_inc_phase_resist)
end

--�������� =������*20+������*30+�ȼ�^2/5-�ȼ�+�������޼�ֵ + �������޼�ֵ��*��1+����ֵ���޼ӳ� + �������߼ӳɣ�
function PlayerAttrbuteFormula.player_max_hp(player)
	local player_sta = player:getAttrValue(player_sta)
	local player_ice_phase = player:getAttrValue(player_ice_phase)
	local level = player:getAttrValue(player_lvl)
	local player_add_max_hp = player:getAttrValue(player_add_max_hp)
	local player_inc_max_hp = player:getAttrValue(player_inc_max_hp)
	local player_add_max_hm = player:getAttrValue(player_add_max_hm)
	local player_inc_max_hm = player:getAttrValue(player_inc_max_hm)
	return math_floor((player_sta*20+player_ice_phase*30+math_pow(level,2)/5-level+player_add_max_hp+player_add_max_hm)*(1+player_inc_max_hp+player_inc_max_hm))
end

--�������� =������*10+����*10+������*30+�ȼ�^2/5-�ȼ�+ �������޼�ֵ + �������޼�ֵ��*��1+����ֵ���޼ӳ�+�������߼ӳɣ�
function PlayerAttrbuteFormula.player_max_mp(player)
	local player_str = player:getAttrValue(player_str)
	local player_int = player:getAttrValue(player_int)
	local player_ice_phase = player:getAttrValue(player_ice_phase)
	local level = player:getAttrValue(player_lvl)
	local player_add_max_mp = player:getAttrValue(player_add_max_mp)
	local player_inc_max_mp = player:getAttrValue(player_inc_max_mp)
	local player_add_max_hm = player:getAttrValue(player_add_max_hm)
	local player_inc_max_hm = player:getAttrValue(player_inc_max_hm)
	return math_floor((player_str*10+player_int*10+player_ice_phase*30+math_pow(level,2)/5-level+player_add_max_mp+player_add_max_hm)*(1+player_inc_max_mp+player_inc_max_hm))
end

--�������� =������*10+������*7+�ȼ�^2/10-�ȼ�+����������ֵ+ȫ����������ֵ��*��1+���������ӳ�+ȫ���������ӳɣ�
function PlayerAttrbuteFormula.player_at(player)
	local player_str = player:getAttrValue(player_str)
	local player_fir_phase = player:getAttrValue(player_fir_phase)
	local level = player:getAttrValue(player_lvl)
	local player_add_at = player:getAttrValue(player_add_at)
	local player_inc_at = player:getAttrValue(player_inc_at)
	local player_add_at_mt = player:getAttrValue(player_add_at_mt)
	local player_inc_at_mt = player:getAttrValue(player_inc_at_mt)
	return math_floor((player_str*10+player_fir_phase*7+math_pow(level,2)/10-level)*(1+player_inc_at+player_inc_at_mt)+player_add_at+player_add_at_mt)
end

--���������� =������*10+������*7+�ȼ�^2/10-�ȼ�+������������ֵ+ȫ����������ֵ��*��1+�����������ӳ�+ȫ���������ӳɣ�
function PlayerAttrbuteFormula.player_mt(player)
	local player_int = player:getAttrValue(player_int)
	local player_thu_phase = player:getAttrValue(player_thu_phase)
	local level = player:getAttrValue(player_lvl)
	local player_add_mt = player:getAttrValue(player_add_mt)
	local player_inc_mt = player:getAttrValue(player_inc_mt)
	local player_add_at_mt = player:getAttrValue(player_add_at_mt)
	local player_inc_at_mt = player:getAttrValue(player_inc_at_mt)
	return math_floor((player_int*10+player_thu_phase*7+math_pow(level,2)/10-level+player_add_mt+player_add_at_mt)*(1+player_inc_mt+player_inc_at_mt))
end

--��������� =������*5+������*4+�ȼ�^2/10-�ȼ�+�����������ֵ+ȫ����������ֵ��*��1+����������ӳ�+ȫ���������ӳɣ�
function PlayerAttrbuteFormula.player_af(player)
	local player_sta = player:getAttrValue(player_sta)
	local player_soi_phase = player:getAttrValue(player_soi_phase)
	local level = player:getAttrValue(player_lvl)
	local player_add_af = player:getAttrValue(player_add_af)
	local player_inc_af = player:getAttrValue(player_inc_af)
	local player_add_af_mf = player:getAttrValue(player_add_af_mf)
	local player_inc_af_mf = player:getAttrValue(player_inc_af_mf)
	return math_floor((player_sta*5+player_soi_phase*4+math_pow(level,2)/10-level+player_add_af+player_add_af_mf)*(1+player_inc_af+player_inc_af_mf))
end

--���������� =������*5+������*4+�ȼ�^2/10-�ȼ�+������������ֵ+ȫ����������ֵ��*��1+�����������ӳ�+ȫ���������ӳɣ�
function PlayerAttrbuteFormula.player_mf(player)
	local player_sta = player:getAttrValue(player_sta)
	local player_soi_phase = player:getAttrValue(player_soi_phase)
	local level = player:getAttrValue(player_lvl)
	local player_add_mf = player:getAttrValue(player_add_mf)
	local player_inc_mf = player:getAttrValue(player_inc_mf)
	local player_add_af_mf = player:getAttrValue(player_add_af_mf)
	local player_inc_af_mf = player:getAttrValue(player_inc_af_mf)
	return math_floor((player_sta*5+player_soi_phase*4+math_pow(level,2)/10-level+player_add_mf+player_add_af_mf)*(1+player_inc_mf+player_inc_af_mf))
end

--���� =������*0.5+����*0.5+����*1+�ȼ�*0.5+���м�ֵ��*��1+���мӳɣ�
function PlayerAttrbuteFormula.player_hit(player)
	local player_str = player:getAttrValue(player_str)
	local player_int = player:getAttrValue(player_int)
	local player_spi = player:getAttrValue(player_spi)
	local level = player:getAttrValue(player_lvl)
	local player_add_hit = player:getAttrValue(player_add_hit)
	local player_inc_hit = player:getAttrValue(player_inc_hit)
	return math_floor((player_str*0.5+player_int*0.5+player_spi*1+level*0.5+player_add_hit)*(1+player_inc_hit))
end

--���� =����*2+�ȼ�*0.5+���ܼ�ֵ��*��1+���ܼӳɣ�
function PlayerAttrbuteFormula.player_dodge(player)
	local player_dex = player:getAttrValue(player_dex)
	local level = player:getAttrValue(player_lvl)
	local player_add_dodge = player:getAttrValue(player_add_dodge)
	local player_inc_dodge = player:getAttrValue(player_inc_dodge)
	return math_floor((player_dex*2+level*0.5+player_add_dodge)*(1+player_inc_dodge))
end

--���� =������*2+������*3+�ȼ�/2+������ֵ��*��1+�����ӳɣ�
function PlayerAttrbuteFormula.player_critical(player)
	local player_spi = player:getAttrValue(player_spi)
	local player_win_phase = player:getAttrValue(player_win_phase)
	local level = player:getAttrValue(player_lvl)
	local player_inc_critical = player:getAttrValue(player_inc_critical)
	local player_add_critical = player:getAttrValue(player_add_critical)
	return math_floor((player_spi*2+player_win_phase*3+level/2+player_add_critical)*(1+player_inc_critical))
end

--���� =������*2+�ȼ�/2+������ֵ��*��1+�����ӳɣ�
function PlayerAttrbuteFormula.player_tenacity(player)
	local player_spi = player:getAttrValue(player_spi)
	local level = player:getAttrValue(player_lvl)
	local player_inc_tenacity = player:getAttrValue(player_inc_tenacity)
	local player_add_tenacity = player:getAttrValue(player_add_tenacity)
	return math_floor((player_spi*2+level/2+player_add_tenacity)*(1+player_inc_tenacity))
end

--�ٶ�=����*1+�ȼ�*0.5+�ٶȼ�ֵ��*��1+�ٶȼӳɣ�
function PlayerAttrbuteFormula.player_speed(player)
	local player_dex = player:getAttrValue(player_dex)
	local level = player:getAttrValue(player_lvl)
	local player_inc_speed = player:getAttrValue(player_inc_speed)
	local player_add_speed = player:getAttrValue(player_add_speed)
	return math_floor((player_dex*1+level*0.5+player_add_speed)*(1+player_inc_speed))
end

--������
function PlayerAttrbuteFormula.player_counter(player)
	return 0
end

--����Ч���ӳ�
--[[function PlayerAttrbuteFormula.player_inc_critical_effect(player)
	local player_inc_critical_effect = player:getAttrValue(player_inc_critical_effect)
	return player_inc_critical_effect
end]]

--�ƶ��ٶ�
function PlayerAttrbuteFormula.player_mobile_speed(player)
	return 4
end

--���ŭ��
function PlayerAttrbuteFormula.player_max_anger(player)
	return 100
end

--�������ֵ
function PlayerAttrbuteFormula.player_max_vigor(player)
	local level = player:getAttrValue(player_lvl)
	if level <= 20 then
		return 50
	else
		return 50 + (level - 20)*5
	end
end

-- ��׼����
function PlayerAttrbuteFormula.player_stand_tao(player)
	local level = player:getAttrValue(player_lvl)
	return math_floor(math_pow(level,3)*0.29 + 73)
end

g_AttrPlayerInfluenceTable =
{
	-- һ������
	[player_str]						= {player_at,player_hit,player_max_mp},
	[player_int]						= {player_mt,player_max_mp,player_hit},
	[player_sta]						= {player_max_hp,player_af,player_mf,player_tenacity},
	[player_spi]						= {player_critical,player_hit,player_af,player_mf},
	[player_dex]						= {player_speed,player_dodge},
	[player_in_str]						= {player_str},
	[player_in_int]						= {player_int},
	[player_in_sta]						= {player_sta},
	[player_in_spi]						= {player_spi},
	[player_in_dex]						= {player_dex},
	[player_str_point]					= {player_str},
	[player_int_point]					= {player_int},
	[player_sta_point]					= {player_sta},
	[player_spi_point]					= {player_spi},
	[player_dex_point]					= {player_dex},
	[player_add_str]					= {player_str},
	[player_add_int]					= {player_int},
	[player_add_sta]					= {player_sta},
	[player_add_spi]					= {player_spi},
	[player_add_dex]					= {player_dex},
	[player_add_base_attr]				= {player_str,player_int,player_sta,player_spi,player_dex},
	[player_win_phase]					= {player_win_at,player_win_resist,player_mt},
	[player_thu_phase]					= {player_thu_at,player_thu_resist,player_critical},
	[player_ice_phase]					= {player_ice_at,player_ice_resist,player_max_hp,player_max_mp},
	[player_soi_phase]					= {player_soi_at,player_soi_resist,player_af,player_mf},
	[player_fir_phase]					= {player_fir_at,player_fir_resist,player_at},
	[player_poi_phase]					= {player_poi_at,player_poi_resist},--����Ӱ��dotЧ��
	[player_add_all_phase]				= {player_win_phase,player_thu_phase,player_ice_phase,player_soi_phase,player_fir_phase,player_poi_phase},
	[player_win_phase_point]			= {player_win_phase},
	[player_thu_phase_point]			= {player_thu_phase},
	[player_ice_phase_point]			= {player_ice_phase},
	[player_soi_phase_point]			= {player_soi_phase},
	[player_fir_phase_point]			= {player_fir_phase},
	[player_poi_phase_point]			= {player_poi_phase},

	-- ��������
	[player_add_max_hp]					= {player_max_hp},
	[player_inc_max_hp]					= {player_max_hp},
	[player_add_max_mp]					= {player_max_mp},
	[player_inc_max_mp]					= {player_max_mp},
	[player_add_max_hm]					= {player_max_hp,player_max_mp},
	[player_inc_max_hm]					= {player_max_hp,player_max_mp},
	[player_add_at]						= {player_at},
	[player_inc_at]						= {player_at},
	[player_add_mt]						= {player_mt},
	[player_inc_mt]						= {player_mt},
	[player_add_at_mt]					= {player_at,player_mt},
	[player_inc_at_mt]					= {player_at,player_mt},
	[player_add_af]						= {player_af},
	[player_inc_af]                     = {player_af},
	[player_add_mf]						= {player_mf},
	[player_inc_mf]                     = {player_mf},
	[player_add_af_mf]					= {player_af,player_mf},
	[player_inc_af_mf]					= {player_af,player_mf},
	[player_add_hit]					= {player_hit},
	[player_inc_hit]					= {player_hit},
	[player_add_dodge]					= {player_dodge},
	[player_inc_dodge]					= {player_dodge},
	[player_add_critical]               = {player_critical},
	[player_inc_critical]				= {player_critical},
	[player_add_tenacity]               = {player_tenacity},
	[player_inc_tenacity]				= {player_tenacity},
	[player_add_speed]					= {player_speed},
	[player_inc_speed]					= {player_speed},
	--[player_inc_obstacle_resist]		= {player_inc_taunt_resist,player_inc_sopor_resist,player_inc_chaos_resist,player_inc_freeze_resist,player_inc_silent_resist,player_inc_toxicosis_resist},
	[player_inc_win_at]					= {player_win_at},
	[player_inc_thu_at]					= {player_thu_at},
	[player_inc_ice_at]					= {player_ice_at},
	[player_inc_soi_at]					= {player_soi_at},
	[player_inc_fir_at]					= {player_fir_at},
	[player_inc_poi_at]					= {player_poi_at},
	[player_inc_phase_at]				= {player_win_at,player_thu_at,player_ice_at,player_fir_at,player_soi_at,player_poi_at},
	[player_inc_win_resist]				= {player_win_resist},
	[player_inc_thu_resist]				= {player_thu_resist},
	[player_inc_ice_resist]				= {player_ice_resist},
	[player_inc_fir_resist]				= {player_fir_resist},
	[player_inc_soi_resist]				= {player_soi_resist},
	[player_inc_poi_resist]				= {player_poi_resist},
	[player_inc_phase_resist]			= {player_win_resist,player_thu_resist,player_ice_resist,player_fir_resist,player_soi_resist,player_poi_resist},

	-- ��������
	[player_add_mobile_speed]           = {player_mobile_speed},
	[player_lvl]						= {player_next_xp, player_in_str,player_in_int,player_in_sta,player_in_spi,player_in_dex,player_max_vigor,player_stand_tao},
	[player_inc_counter]				= {player_counter},
	[player_inc_escape]					= {player_escape},
}

--���Թ�ʽ���ձ�
g_AttributePlayerFormat =
{
	[player_str]						= PlayerAttrbuteFormula.player_str,
	[player_int]						= PlayerAttrbuteFormula.player_int,
	[player_sta]						= PlayerAttrbuteFormula.player_sta,
	[player_spi]						= PlayerAttrbuteFormula.player_spi,
	[player_dex]						= PlayerAttrbuteFormula.player_dex,
	[player_in_str]						= PlayerAttrbuteFormula.player_in_str,
	[player_in_int]						= PlayerAttrbuteFormula.player_in_int,
	[player_in_sta]						= PlayerAttrbuteFormula.player_in_sta,
	[player_in_spi]						= PlayerAttrbuteFormula.player_in_spi,
	[player_in_dex]						= PlayerAttrbuteFormula.player_in_dex,
	[player_win_phase]                  = PlayerAttrbuteFormula.player_win_phase,
	[player_thu_phase]                  = PlayerAttrbuteFormula.player_thu_phase,
	[player_ice_phase]                  = PlayerAttrbuteFormula.player_ice_phase,
	[player_soi_phase]                  = PlayerAttrbuteFormula.player_soi_phase,
	[player_fir_phase]                  = PlayerAttrbuteFormula.player_fir_phase,
	[player_poi_phase]                  = PlayerAttrbuteFormula.player_poi_phase,
	[player_max_hp]						= PlayerAttrbuteFormula.player_max_hp,
	[player_max_mp]						= PlayerAttrbuteFormula.player_max_mp,
	[player_at]							= PlayerAttrbuteFormula.player_at,
	[player_mt]							= PlayerAttrbuteFormula.player_mt,
	[player_af]							= PlayerAttrbuteFormula.player_af,
	[player_mf]							= PlayerAttrbuteFormula.player_mf,
	[player_hit]						= PlayerAttrbuteFormula.player_hit,
	[player_dodge]						= PlayerAttrbuteFormula.player_dodge,
	[player_critical]					= PlayerAttrbuteFormula.player_critical,
	[player_tenacity]					= PlayerAttrbuteFormula.player_tenacity,
	[player_speed]						= PlayerAttrbuteFormula.player_speed,
	[player_win_at]						= PlayerAttrbuteFormula.player_win_at,
	[player_thu_at]						= PlayerAttrbuteFormula.player_thu_at,
	[player_ice_at]						= PlayerAttrbuteFormula.player_ice_at,
	[player_fir_at]						= PlayerAttrbuteFormula.player_fir_at,
	[player_soi_at]						= PlayerAttrbuteFormula.player_soi_at,
	[player_poi_at]						= PlayerAttrbuteFormula.player_poi_at,
	[player_win_resist]					= PlayerAttrbuteFormula.player_win_resist,
	[player_thu_resist]					= PlayerAttrbuteFormula.player_thu_resist,
	[player_ice_resist]					= PlayerAttrbuteFormula.player_ice_resist,
	[player_fir_resist]					= PlayerAttrbuteFormula.player_fir_resist,
	[player_soi_resist]					= PlayerAttrbuteFormula.player_soi_resist,
	[player_poi_resist]					= PlayerAttrbuteFormula.player_poi_resist,
	[player_inc_critical_effect]		= PlayerAttrbuteFormula.player_inc_critical_effect,

	[player_next_xp]					= PlayerAttrbuteFormula.player_next_xp,
	[player_mobile_speed]				= PlayerAttrbuteFormula.player_mobile_speed,
	[player_counter]					= PlayerAttrbuteFormula.player_counter,
	[player_max_anger]					= PlayerAttrbuteFormula.player_max_anger,
	[player_max_vigor]					= PlayerAttrbuteFormula.player_max_vigor,
	[player_stand_tao]					= PlayerAttrbuteFormula.player_stand_tao,
}

-----------------------------------------------------------------------
--��������
-----------------------------------------------------------------------
--���Զ�Ӧ������ͬ��
g_AttributePlayerToProp =
{
	-- һ������
	[player_attr_point]					= PLAYER_ATTR_POINT,
	[player_str_point]					= PLAYER_ATTR_STR_POINT,
	[player_int_point]					= PLAYER_ATTR_INT_POINT,
	[player_sta_point]					= PLAYER_ATTR_STA_POINT,
	[player_spi_point]					= PLAYER_ATTR_SPI_POINT,
	[player_dex_point]					= PLAYER_ATTR_DEX_POINT,
	[player_add_str]                    = PLAYER_ATTR_ADD_STR,
	[player_add_int]                    = PLAYER_ATTR_ADD_INT,
	[player_add_sta]                    = PLAYER_ATTR_ADD_STA,
	[player_add_spi]                    = PLAYER_ATTR_ADD_SPI,
	[player_add_dex]                    = PLAYER_ATTR_ADD_DEX,
	[player_add_base_attr]              = PLAYER_ATTR_ADD_BASE_ATTR,
	[player_add_all_phase]              = PLAYER_ATTR_ADD_ALL_PHASE,
	[player_win_phase_point]			= PLAYER_ATTR_WIN_POINT,
	[player_thu_phase_point]			= PLAYER_ATTR_THU_POINT,
	[player_ice_phase_point]			= PLAYER_ATTR_ICE_POINT,
	[player_soi_phase_point]			= PLAYER_ATTR_SOI_POINT,
	[player_fir_phase_point]			= PLAYER_ATTR_FIR_POINT,
	[player_poi_phase_point]			= PLAYER_ATTR_POI_POINT,
	[player_add_win_phase]              = PLAYER_ATTR_ADD_WIN,
	[player_add_thu_phase]              = PLAYER_ATTR_ADD_THU,
	[player_add_ice_phase]              = PLAYER_ATTR_ADD_ICE,
	[player_add_soi_phase]              = PLAYER_ATTR_ADD_SOI,
	[player_add_fir_phase]              = PLAYER_ATTR_ADD_FIR,
	[player_add_poi_phase]              = PLAYER_ATTR_ADD_POI,
	[player_phase_point]				= PLAYER_PHASE_POINT,
	[player_max_pet]					= PLAYER_ATTR_MAX_PET,

	-- ��������
	[player_hp]							= PLAYER_ATTR_HP,
	[player_mp]							= PLAYER_ATTR_MP,
	[player_add_max_hp]                 = PLAYER_ATTR_ADD_MAXHP,
	[player_inc_max_hp]                 = PLAYER_ATTR_INC_MAXHP,
	[player_add_max_mp]                 = PLAYER_ATTR_ADD_MAXMP,
	[player_inc_max_mp]                 = PLAYER_ATTR_INC_MAXMP,
	[player_add_at]                     = PLAYER_ATTR_ADD_AT,
	[player_inc_at]                     = PLAYER_ATTR_INC_AT,
	[player_add_mt]                     = PLAYER_ATTR_ADD_MT,
	[player_inc_mt]                     = PLAYER_ATTR_INC_MT,
	[player_add_at_mt]                  = PLAYER_ATTR_ADD_AT_MT,
	[player_inc_at_mt]                  = PLAYER_ATTR_INC_AT_MT,
	[player_add_af]                     = PLAYER_ATTR_ADD_AF,
	[player_inc_af]                     = PLAYER_ATTR_INC_AF,
	[player_add_mf]                     = PLAYER_ATTR_ADD_MF,
	[player_inc_mf]                     = PLAYER_ATTR_INC_MF,
	[player_add_af_mf]                  = PLAYER_ATTR_ADD_AF_MF,
	[player_inc_af_mf]                  = PLAYER_ATTR_INC_AF_MF,
	[player_add_critical]               = PLAYER_ATTR_ADD_CRITICAL,
	[player_inc_critical]               = PLAYER_ATTR_INC_CRITICAL,
	[player_add_tenacity]               = PLAYER_ATTR_ADD_TENACITY,
	[player_inc_tenacity]               = PLAYER_ATTR_INC_TENACITY,
	[player_add_speed]                  = PLAYER_ATTR_ADD_SPEED,
	[player_inc_speed]                  = PLAYER_ATTR_INC_SPEED,
	[player_inc_taunt_resist]           = PLAYER_ATTR_INC_TAUNT_RESIST,
	[player_inc_sopor_resist]           = PLAYER_ATTR_INC_SOPOR_RESIST,
	[player_inc_chaos_resist]           = PLAYER_ATTR_INC_CHAOS_RESIST,
	[player_inc_freeze_resist]          = PLAYER_ATTR_INC_FREEZE_RESIST,
	[player_inc_silent_resist]          = PLAYER_ATTR_INC_SILENT_RESIST,
	[player_inc_toxicosis_resist]       = PLAYER_ATTR_INC_TOXICOSIS_RESIST,
	[player_inc_win_at]                 = PLAYER_ATTR_INC_WIN_AT,
	[player_inc_thu_at]                 = PLAYER_ATTR_INC_THU_AT,
	[player_inc_ice_at]                 = PLAYER_ATTR_INC_ICE_AT,
	[player_inc_soi_at]                 = PLAYER_ATTR_INC_SOI_AT,
	[player_inc_fir_at]                 = PLAYER_ATTR_INC_FIR_AT,
	[player_inc_poi_at]                 = PLAYER_ATTR_INC_POI_AT,
	[player_inc_phase_at]               = PLAYER_ATTR_INC_PHASE_AT,
	[player_inc_win_resist]             = PLAYER_ATTR_INC_WIN_RESIST,
	[player_inc_thu_resist]             = PLAYER_ATTR_INC_THU_RESIST,
	[player_inc_ice_resist]             = PLAYER_ATTR_INC_ICE_RESIST,
	[player_inc_soi_resist]             = PLAYER_ATTR_INC_SOI_RESIST,
	[player_inc_fir_resist]             = PLAYER_ATTR_INC_FIR_RESIST,
	[player_inc_poi_resist]             = PLAYER_ATTR_INC_POI_RESIST,
	[player_inc_phase_resist]           = PLAYER_ATTR_INC_PHASE_RESIST,
	[player_add_max_hm]					= PLAYER_ATTR_ADD_MAX_HM,
	[player_inc_max_hm]					= PLAYER_ATTR_INC_MAX_HM,

	-- ��������
	[player_xp]							= PLAYER_ATTR_XP,
	[player_pot]						= PLAYER_ATTR_POT,
	[player_expoint]					= PLAYER_ATTR_EXPOINT,
	[player_vigor]						= PLAYER_ATTR_VIGOR,
	[player_tao]						= PLAYER_ATTR_TAO,
	[player_anger]						= PLAYER_ATTR_ANGER,
	[player_combat]						= PLAYER_ATTR_COMBAT,
	[player_kill]						= PLAYER_ATTR_KILL,
}

--��Ҫ���̸��µ�����
g_AttrPlayerSyncTable =
{
	[player_in_str] = true,
	[player_in_int] = true,
	[player_in_sta] = true,
	[player_in_spi] = true,
	[player_in_dex] = true,
	[player_str] = true,
	[player_int] = true,
	[player_sta] = true,
	[player_spi] = true,
	[player_dex] = true,
	[player_win_at] = true,
	[player_thu_at] = true,
	[player_ice_at] = true,
	[player_fir_at] = true,
	[player_soi_at] = true,
	[player_poi_at] = true,
	[player_win_resist] = true,
	[player_thu_resist] = true,
	[player_ice_resist] = true,
	[player_fir_resist] = true,
	[player_soi_resist] = true,
	[player_poi_resist] = true,
	[player_max_hp] = true,
	[player_max_mp] = true,
	[player_at] = true,
	[player_mt] = true,
	[player_af] = true,
	[player_mf] = true,
	[player_hit] = true,
	[player_dodge]= true,
	[player_critical] = true,
	[player_tenacity] = true,
	[player_speed] = true,
}
