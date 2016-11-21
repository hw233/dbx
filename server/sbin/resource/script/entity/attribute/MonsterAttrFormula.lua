-- MonsterAttrFormula.lua
-- �������Թ�ʽ


require "misc.constant"

local math_pow		= math.pow
local math_ceil		= math.ceil
local math_floor	= math.floor

MonsterAttrbuteFormula = {}

-----------------------------------------------------------------------
--�߻�����
-----------------------------------------------------------------------

--��������
function MonsterAttrbuteFormula.monster_in_str(monster)
	return 10
end

--��������
function MonsterAttrbuteFormula.monster_in_int(monster)
	return 10
end

--�������
function MonsterAttrbuteFormula.monster_in_sta(monster)
	return 10
end

--��������
function MonsterAttrbuteFormula.monster_in_spi(monster)
	return 10
end

--������
function MonsterAttrbuteFormula.monster_in_dex(monster)
	return 10
end

--�����ӵ�
function MonsterAttrbuteFormula.monster_str_point(monster)
	return 1
end

--�����ӵ�
function MonsterAttrbuteFormula.monster_int_point(monster)
	return 1
end

--���Ǽӵ�
function MonsterAttrbuteFormula.monster_sta_point(monster)
	return 1
end

--����ӵ�
function MonsterAttrbuteFormula.monster_spi_point(monster)
	return 1
end

--���ӵ�
function MonsterAttrbuteFormula.monster_dex_point(monster)
	return 1
end

--���У��ȼ�^3*����ϵ��
function MonsterAttrbuteFormula.monster_tao(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_tao_coffi = monster:getAttrValue(monster_tao_coffi)
	return math_pow(level,3) * monster_tao_coffi
end

--��������������+������ȼ�-1��*�����ӵ�+������ȼ�-1��*5*����ϵ��
function MonsterAttrbuteFormula.monster_str(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_in_str = monster:getAttrValue(monster_in_str)
	local monster_str_point = monster:getAttrValue(monster_str_point)
	local monster_str_coffi = monster:getAttrValue(monster_str_coffi)
	return math_floor(monster_in_str+(level-1)*monster_str_point+(level-1)*5*monster_str_coffi)
end

--��������������+������ȼ�-1��*�����ӵ�+������ȼ�-1��*5*����ϵ��
function MonsterAttrbuteFormula.monster_int(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_in_int = monster:getAttrValue(monster_in_int)
	local monster_int_point = monster:getAttrValue(monster_int_point)
	local monster_int_coffi = monster:getAttrValue(monster_int_coffi)
	return math_floor(monster_in_int+(level-1)*monster_int_point+(level-1)*5*monster_int_coffi)
end

--���ǣ��������+������ȼ�-1��*���Ǽӵ�+������ȼ�-1��*5*����ϵ��
function MonsterAttrbuteFormula.monster_sta(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_in_sta = monster:getAttrValue(monster_in_sta)
	local monster_sta_point = monster:getAttrValue(monster_sta_point)
	local monster_sta_coffi = monster:getAttrValue(monster_sta_coffi)
	return math_floor(monster_in_sta+(level-1)*monster_sta_point+(level-1)*5*monster_sta_coffi)
end

--������������+������ȼ�-1��*����ӵ�+������ȼ�-1��*5*����ϵ��
function MonsterAttrbuteFormula.monster_spi(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_in_spi = monster:getAttrValue(monster_in_spi)
	local monster_spi_point = monster:getAttrValue(monster_spi_point)
	local monster_spi_coffi = monster:getAttrValue(monster_spi_coffi)
	return math_floor(monster_in_spi+(level-1)*monster_spi_point+(level-1)*5*monster_spi_coffi)
end

--����������+������ȼ�-1��*���ӵ�+������ȼ�-1��*5*��ϵ��
function MonsterAttrbuteFormula.monster_dex(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_in_dex = monster:getAttrValue(monster_in_dex)
	local monster_dex_point = monster:getAttrValue(monster_dex_point)
	local monster_dex_coffi = monster:getAttrValue(monster_dex_coffi)
	return math_floor(monster_in_dex+(level-1)*monster_dex_point+(level-1)*5*monster_dex_coffi)
end

--�繥��:�繥����ֵ+�������Թ�����ֵ
function MonsterAttrbuteFormula.monster_win_at(monster)
	local monster_add_win_at = monster:getAttrValue(monster_add_win_at)
	local monster_add_phase_at = monster:getAttrValue(monster_add_phase_at)
	return math_floor(monster_add_win_at+monster_add_phase_at)
end

--�׹���:�׹�����ֵ+�������Թ�����ֵ
function MonsterAttrbuteFormula.monster_thu_at(monster)
	local monster_add_thu_at = monster:getAttrValue(monster_add_thu_at)
	local monster_add_phase_at = monster:getAttrValue(monster_add_phase_at)
	return math_floor(monster_add_thu_at+monster_add_phase_at)
end

--������:��������ֵ+�������Թ�����ֵ
function MonsterAttrbuteFormula.monster_ice_at(monster)
	local monster_add_ice_at = monster:getAttrValue(monster_add_ice_at)
	local monster_add_phase_at = monster:getAttrValue(monster_add_phase_at)
	return math_floor(monster_add_ice_at+monster_add_phase_at)
end

--�𹥻�:�𹥻���ֵ+�������Թ�����ֵ
function MonsterAttrbuteFormula.monster_fir_at(monster)
	local monster_add_fir_at = monster:getAttrValue(monster_add_fir_at)
	local monster_add_phase_at = monster:getAttrValue(monster_add_phase_at)
	return math_floor(monster_add_fir_at+monster_add_phase_at)
end

--������:��������ֵ+�������Թ�����ֵ
function MonsterAttrbuteFormula.monster_soi_at(monster)
	local monster_add_soi_at = monster:getAttrValue(monster_add_soi_at)
	local monster_add_phase_at = monster:getAttrValue(monster_add_phase_at)
	return math_floor(monster_add_soi_at+monster_add_phase_at)
end

--������:��������ֵ+�������Թ�����ֵ
function MonsterAttrbuteFormula.monster_poi_at(monster)
	local monster_add_poi_at = monster:getAttrValue(monster_add_poi_at)
	local monster_add_phase_at = monster:getAttrValue(monster_add_phase_at)
	return math_floor(monster_add_poi_at+monster_add_phase_at)
end

--�翹:�翹��ֵ+�������Կ��Լ�ֵ
function MonsterAttrbuteFormula.monster_win_resist(monster)
	local monster_add_win_resist = monster:getAttrValue(monster_add_win_resist)
	local monster_add_phase_resist = monster:getAttrValue(monster_add_phase_resist)
	return math_floor(monster_add_win_resist+monster_add_phase_resist)
end

--�׿�:�׿���ֵ+�������Կ��Լ�ֵ
function MonsterAttrbuteFormula.monster_thu_resist(monster)
	local monster_add_thu_resist = monster:getAttrValue(monster_add_thu_resist)
	local monster_add_phase_resist = monster:getAttrValue(monster_add_phase_resist)
	return math_floor(monster_add_thu_resist+monster_add_phase_resist)
end

--����:������ֵ+�������Կ��Լ�ֵ
function MonsterAttrbuteFormula.monster_ice_resist(monster)
	local monster_add_ice_resist = monster:getAttrValue(monster_add_ice_resist)
	local monster_add_phase_resist = monster:getAttrValue(monster_add_phase_resist)
	return math_floor(monster_add_ice_resist+monster_add_phase_resist)
end

--��:�𿹼�ֵ+�������Կ��Լ�ֵ
function MonsterAttrbuteFormula.monster_fir_resist(monster)
	local monster_add_fir_resist = monster:getAttrValue(monster_add_fir_resist)
	local monster_add_phase_resist = monster:getAttrValue(monster_add_phase_resist)
	return math_floor(monster_add_fir_resist+monster_add_phase_resist)
end

--����:������ֵ+�������Կ��Լ�ֵ
function MonsterAttrbuteFormula.monster_soi_resist(monster)
	local monster_add_soi_resist = monster:getAttrValue(monster_add_soi_resist)
	local monster_add_phase_resist = monster:getAttrValue(monster_add_phase_resist)
	return math_floor(monster_add_soi_resist+monster_add_phase_resist)
end

--����:������ֵ+�������Կ��Լ�ֵ
function MonsterAttrbuteFormula.monster_poi_resist(monster)
	local monster_add_poi_resist = monster:getAttrValue(monster_add_poi_resist)
	local monster_add_phase_resist = monster:getAttrValue(monster_add_phase_resist)
	return math_floor(monster_add_poi_resist+monster_add_phase_resist)
end

--��������:(����*30+�ȼ�^2/5)*(1+�������޼ӳɣ�+�������޼�ֵ
function MonsterAttrbuteFormula.monster_max_hp(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_sta = monster:getAttrValue(monster_sta)
	local monster_inc_max_hp = monster:getAttrValue(monster_inc_max_hp)
	local monster_add_max_hp = monster:getAttrValue(monster_add_max_hp)
	return math_floor((monster_sta*30+math_pow(level,2)/5)*(1+monster_inc_max_hp)+monster_add_max_hp)
end

--��������:(�ȼ�^2/5+����*12-50)*(1+�������ӳɣ�+��������ֵ
function MonsterAttrbuteFormula.monster_at(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_str = monster:getAttrValue(monster_str)
	local monster_inc_at = monster:getAttrValue(monster_inc_at)
	local monster_add_at = monster:getAttrValue(monster_add_at)
	return math_floor((math_pow(level,2)/5+monster_str*12-50)*(1+monster_inc_at)+monster_add_at)
end

--����������:(�ȼ�^2/5+����*12-50)*(1+���������ӳɣ�+����������ֵ
function MonsterAttrbuteFormula.monster_mt(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_int = monster:getAttrValue(monster_int)
	local monster_inc_mt = monster:getAttrValue(monster_inc_mt)
	local monster_add_mt = monster:getAttrValue(monster_add_mt)
	return math_floor((math_pow(level,2)/5+monster_int*12-50)*(1+monster_inc_mt)+monster_add_mt)
end

--�����������(�ȼ�^2/5+����*8-40)*(1+��������ӳ�)+���������ֵ
function MonsterAttrbuteFormula.monster_af(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_sta = monster:getAttrValue(monster_sta)
	local monster_inc_af = monster:getAttrValue(monster_inc_af)
	local monster_add_af = monster:getAttrValue(monster_add_af)
	return math_floor((math_pow(level,2)/5+monster_sta*8-40)*(1+monster_inc_af)+monster_add_af)
end

--������������(�ȼ�^2/5+����*8-40)*(1+���������ӳ�)+����������ֵ
function MonsterAttrbuteFormula.monster_mf(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_sta = monster:getAttrValue(monster_sta)
	local monster_inc_mf = monster:getAttrValue(monster_inc_mf)
	local monster_add_mf = monster:getAttrValue(monster_add_mf)
	return math_floor((math_pow(level,2)/5+monster_sta*8-40)*(1+monster_inc_mf)+monster_add_mf)
end

--����:(����*0.5+����*0.5+����*1+�ȼ�*0.5)*(1+���мӳ�)+���м�ֵ
function MonsterAttrbuteFormula.monster_hit(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_str = monster:getAttrValue(monster_str)
	local monster_int = monster:getAttrValue(monster_int)
	local monster_spi = monster:getAttrValue(monster_spi)
	local monster_add_hit = monster:getAttrValue(monster_add_hit)
	local monster_inc_hit = monster:getAttrValue(monster_inc_hit)
	return math_floor((monster_str*0.5+monster_int*0.5+monster_spi*1+level*0.5)*(1+monster_inc_hit)+monster_add_hit)
end

--����:����*1.2+�ȼ�*0.5��*��1+���ܼӳɣ�+���ܼ�ֵ
function MonsterAttrbuteFormula.monster_dodge(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_dex = monster:getAttrValue(monster_dex)
	local monster_inc_dodge = monster:getAttrValue(monster_inc_dodge)
	local monster_add_dodge = monster:getAttrValue(monster_add_dodge)
	return math_floor((monster_dex*1.2+level*0.5)*(1+monster_inc_dodge)+monster_add_dodge)
end

--����:������*1.5+�ȼ�/2��*��1+�����ӳɣ�+������ֵ
function MonsterAttrbuteFormula.monster_critical(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_spi = monster:getAttrValue(monster_spi)
	local monster_inc_critical = monster:getAttrValue(monster_inc_critical)
	local monster_add_critical = monster:getAttrValue(monster_add_critical)
	return math_floor((monster_spi*1.5+level/2)*(1+monster_inc_critical)+monster_add_critical)
end

--����:������*0.8+�ȼ�/2��*��1+�����ӳɣ�+������ֵ
function MonsterAttrbuteFormula.monster_tenacity(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_spi = monster:getAttrValue(monster_spi)
	local monster_inc_tenacity = monster:getAttrValue(monster_inc_tenacity)
	local monster_add_tenacity = monster:getAttrValue(monster_add_tenacity)
	return math_floor((level/2+monster_spi*0.8)*(1+monster_inc_tenacity)+monster_add_tenacity)
end

--�ٶ�:����*1.2+�ȼ�*0.5��*��1+�ٶȼӳɣ�+�ٶȼ�ֵ
function MonsterAttrbuteFormula.monster_speed(monster)
	local level = monster:getAttrValue(monster_lvl)
	local monster_inc_speed = monster:getAttrValue(monster_inc_speed)
	local monster_add_speed = monster:getAttrValue(monster_add_speed)
	local monster_dex = monster:getAttrValue(monster_dex)
	return math_floor((monster_dex*1.2+level*0.5)*(1+monster_inc_speed)+monster_add_speed)
end

--����
function MonsterAttrbuteFormula.monster_counter(monster)
	return 0
end

--����
function MonsterAttrbuteFormula.monster_unhit_rate(monster)
	return 0
end

-- ��׼����
function MonsterAttrbuteFormula.monster_stand_tao(monster)
	local level = monster:getAttrValue(monster_lvl)
	return math_floor(math_pow(level,3)*0.29 + 73)
end


--����Ӱ���ϵ
g_AttrMonsterInfluenceTable =
{
	-- һ������
	[monster_str]						= {monster_hit,monster_at},
	[monster_int]						= {monster_hit,monster_mt},
	[monster_sta]						= {monster_tenacity,monster_mf,monster_af,monster_max_hp},
	[monster_spi]						= {monster_critical,monster_hit,monster_af,monster_mf},
	[monster_dex]						= {monster_speed,monster_dodge,monster_af,monster_max_hp},
	[monster_in_str]					= {monster_str},
	[monster_in_int]					= {monster_int},
	[monster_in_sta]					= {monster_sta},
	[monster_in_spi]					= {monster_spi},
	[monster_in_dex]					= {monster_dex},
	[monster_str_point]					= {monster_str},
	[monster_int_point]					= {monster_int},
	[monster_sta_point]					= {monster_sta},
	[monster_spi_point]					= {monster_spi},
	[monster_dex_point]					= {monster_dex},
	[monster_add_str]					= {monster_str},
	[monster_add_int]					= {monster_int},
	[monster_add_sta]					= {monster_sta},
	[monster_add_spi]					= {monster_spi},
	[monster_add_dex]					= {monster_dex},
	[monster_add_base_attr]				= {monster_str,monster_int,monster_sta,monster_spi,monster_dex},

	-- ��������
	[monster_add_max_hp]				= {monster_max_hp},
	[monster_inc_max_hp]				= {monster_max_hp},
	[monster_inc_at]					= {monster_at},
	[monster_add_at]					= {monster_at},
	[monster_inc_mt]					= {monster_mt},
	[monster_add_mt]					= {monster_mt},
	[monster_add_at_mt]                 = {monster_at,monster_mt},
	[monster_inc_at_mt]                 = {monster_at,monster_mt},
	[monster_add_af]					= {monster_af},
	[monster_inc_af]                    = {monster_af},
	[monster_add_mf]					= {monster_mf},
	[monster_inc_mf]                    = {monster_mf},
	[monster_add_af_mf]                 = {monster_af,monster_mf},
	[monster_inc_af_mf]                 = {monster_af,monster_mf},
	[monster_add_hit]					= {monster_hit},
	[monster_inc_hit]					= {monster_hit},
	[monster_add_dodge]					= {monster_dodge},
	[monster_inc_dodge]					= {monster_dodge},
	[monster_add_critical]              = {monster_critical},
	[monster_inc_critical]				= {monster_critical},
	[monster_add_tenacity]              = {monster_tenacity},
	[monster_inc_tenacity]				= {monster_tenacity},
	[monster_add_speed]                 = {monster_speed},
	[monster_inc_speed]					= {monster_speed},
	[monster_add_obstacle_resist]		= {monster_add_taunt_resist,monster_add_sopor_resist,monster_add_chaos_resist,monster_add_freeze_resist,monster_add_silent_resist,monster_add_toxicosis_resist},
	[monster_add_win_at]				= {monster_win_at},
	[monster_add_thu_at]				= {monster_thu_at},
	[monster_add_ice_at]				= {monster_ice_at},
	[monster_add_fir_at]				= {monster_fir_at},
	[monster_add_soi_at]				= {monster_soi_at},
	[monster_add_poi_at]				= {monster_poi_at},
	[monster_add_phase_at]				= {monster_win_at,monster_thu_at,monster_ice_at,monster_fir_at,monster_soi_at,monster_poi_at},
	[monster_add_win_resist]			= {monster_win_resist},
	[monster_add_thu_resist]			= {monster_thu_resist},
	[monster_add_ice_resist]			= {monster_ice_resist},
	[monster_add_fir_resist]			= {monster_fir_resist},
	[monster_add_soi_resist]			= {monster_soi_resist},
	[monster_add_poi_resist]			= {monster_poi_resist},
	[monster_add_phase_resist]			= {monster_win_resist,monster_thu_resist,monster_ice_resist,monster_fir_resist,monster_soi_resist,monster_poi_resist},

	-- ��������
	[monster_lvl]			            = {monster_tao,monster_str,monster_int,monster_sta,monster_spi,monster_dex,monster_max_hp,monster_at,monster_mt,monster_af,monster_mf,monster_hit,monster_dodge,monster_critical,monster_tenacity,monster_speed, monster_stand_tao},
}

--���Թ�ʽ���ձ�
g_AttributeMonsterFormat =
{
	[monster_str]						= MonsterAttrbuteFormula.monster_str,
	[monster_int]						= MonsterAttrbuteFormula.monster_int,
	[monster_sta]						= MonsterAttrbuteFormula.monster_sta,
	[monster_spi]						= MonsterAttrbuteFormula.monster_spi,
	[monster_dex]						= MonsterAttrbuteFormula.monster_dex,
	[monster_in_str]					= MonsterAttrbuteFormula.monster_in_str,
	[monster_in_int]					= MonsterAttrbuteFormula.monster_in_int,
	[monster_in_sta]					= MonsterAttrbuteFormula.monster_in_sta,
	[monster_in_spi]					= MonsterAttrbuteFormula.monster_in_spi,
	[monster_in_dex]					= MonsterAttrbuteFormula.monster_in_dex,
	[monster_str_point]                 = MonsterAttrbuteFormula.monster_str_point,
	[monster_int_point]                 = MonsterAttrbuteFormula.monster_int_point,
	[monster_sta_point]                 = MonsterAttrbuteFormula.monster_sta_point,
	[monster_spi_point]                 = MonsterAttrbuteFormula.monster_spi_point,
	[monster_dex_point]                 = MonsterAttrbuteFormula.monster_dex_point,
	[monster_at]						= MonsterAttrbuteFormula.monster_at,
	[monster_mt]						= MonsterAttrbuteFormula.monster_mt,
	[monster_af]						= MonsterAttrbuteFormula.monster_af,
	[monster_mf]						= MonsterAttrbuteFormula.monster_mf,
	[monster_hit]						= MonsterAttrbuteFormula.monster_hit,
	[monster_dodge]						= MonsterAttrbuteFormula.monster_dodge,
	[monster_critical]					= MonsterAttrbuteFormula.monster_critical,
	[monster_tenacity]					= MonsterAttrbuteFormula.monster_tenacity,
	[monster_speed]						= MonsterAttrbuteFormula.monster_speed,
	[monster_win_at]					= MonsterAttrbuteFormula.monster_win_at,
	[monster_thu_at]					= MonsterAttrbuteFormula.monster_thu_at,
	[monster_ice_at]					= MonsterAttrbuteFormula.monster_ice_at,
	[monster_fir_at]					= MonsterAttrbuteFormula.monster_fir_at,
	[monster_soi_at]					= MonsterAttrbuteFormula.monster_soi_at,
	[monster_poi_at]					= MonsterAttrbuteFormula.monster_poi_at,
	[monster_win_resist]				= MonsterAttrbuteFormula.monster_win_resist,
	[monster_thu_resist]				= MonsterAttrbuteFormula.monster_thu_resist,
	[monster_ice_resist]				= MonsterAttrbuteFormula.monster_ice_resist,
	[monster_fir_resist]				= MonsterAttrbuteFormula.monster_fir_resist,
	[monster_soi_resist]				= MonsterAttrbuteFormula.monster_soi_resist,
	[monster_poi_resist]				= MonsterAttrbuteFormula.monster_poi_resist,
	[monster_max_hp]					= MonsterAttrbuteFormula.monster_max_hp,
	[monster_tao]						= MonsterAttrbuteFormula.monster_tao,
	[monster_counter]					= MonsterAttrbuteFormula.monster_counter,
	[monster_unhit_rate]				= MonsterAttrbuteFormula.monster_unhit_rate,
	[monster_stand_tao]					= MonsterAttrbuteFormula.monster_stand_tao,
}

-----------------------------------------------------------------------
--��������
-----------------------------------------------------------------------
--���Զ�Ӧ������ͬ��
g_AttributeMonsterToProp =
{
	
}

--��Ҫ���̸��µ�����
g_AttrMonsterSyncTable =
{
	[monster_in_str] = true,
	[monster_in_int] = true,
	[monster_in_sta] = true,
	[monster_in_spi] = true,
	[monster_in_dex] = true,
	--[monster_str] = true,
	[monster_int] = true,
	[monster_sta] = true,
	[monster_spi] = true,
	[monster_dex] = true,
	[monster_win_at] = true,
	[monster_thu_at] = true,
	[monster_ice_at] = true,
	[monster_fir_at] = true,
	[monster_soi_at] = true,
	[monster_poi_at] = true,
	[monster_win_resist] = true,
	[monster_thu_resist] = true,
	[monster_ice_resist] = true,
	[monster_fir_resist] = true,
	[monster_soi_resist] = true,
	[monster_poi_resist] = true,
	[monster_max_hp] = true,
	[monster_at] = true,
	[monster_mt] = true,
	[monster_af] = true,
	[monster_mf] = true,
	[monster_hit] = true,
	[monster_dodge]= true,
	[monster_critical] = true,
	[monster_tenacity] = true,
	[monster_speed] = true,
}