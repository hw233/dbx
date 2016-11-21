-- PlayerAttrDefine.lua
-- ������Զ���


PlayerAttrDefine = {}

-- defineAttr(������, ��������, �Ƿ��й�ʽ, �ܷ���־û�)
local function defineAttr(name, desc, bExpr, bSave)
	local base = #PlayerAttrDefine + 1
	PlayerAttrDefine[base] = {
		name	= name,
		db		= bSave,
		expr	= bExpr,
	}
	_G[name] = base
end

--	һ�����ԣ�1
--	���������ʱ��Ĭ�ϴ��е�����
--	�������ú�Ӱ���������ԣ�
--	һ��������Ŀ�°����ܱ��һ�����Ա������������
defineAttr("player_str", "����", true, false)
defineAttr("player_int", "����", true, false)
defineAttr("player_sta", "����", true, false)
defineAttr("player_spi", "����", true, false)
defineAttr("player_dex", "��", true, false)

defineAttr("player_in_str", "��������", true, false)
defineAttr("player_in_int", "��������", true, false)
defineAttr("player_in_sta", "�������", true, false)
defineAttr("player_in_spi", "��������", true, false)
defineAttr("player_in_dex", "������", true, false)

defineAttr("player_attr_point", "�ɷ������Ե�", false, true)
defineAttr("player_str_point", "�����ӵ�", false, true)
defineAttr("player_int_point", "�����ӵ�", false, true)
defineAttr("player_sta_point", "���Ǽӵ�", false, true)
defineAttr("player_spi_point", "����ӵ�", false, true)
defineAttr("player_dex_point", "���ӵ�", false, true)

defineAttr("player_add_str", "������ֵ", false, false)
defineAttr("player_add_int", "������ֵ", false, false)
defineAttr("player_add_sta", "���Ǽ�ֵ", false, false)
defineAttr("player_add_spi", "�����ֵ", false, false)
defineAttr("player_add_dex", "����ֵ", false, false)
defineAttr("player_add_base_attr", "�������Լ�ֵ", false, false)

defineAttr("player_win_phase", "������", true, false)
defineAttr("player_thu_phase", "������", true, false)
defineAttr("player_ice_phase", "������", true, false)
defineAttr("player_soi_phase", "������", true, false)
defineAttr("player_fir_phase", "������", true, false)
defineAttr("player_poi_phase", "������", true, false)
defineAttr("player_add_all_phase", "�������Լ�ֵ", false, false)

defineAttr("player_win_phase_point", "�����Լӵ�", false, true)
defineAttr("player_thu_phase_point", "�����Լӵ�", false, true)
defineAttr("player_ice_phase_point", "�����Լӵ�", false, true)
defineAttr("player_soi_phase_point", "�����Լӵ�", false, true)
defineAttr("player_fir_phase_point", "�����Լӵ�", false, true)
defineAttr("player_poi_phase_point", "�����Լӵ�", false, true)

defineAttr("player_add_win_phase", "�����Լ�ֵ", false, false)
defineAttr("player_add_thu_phase", "�����Լ�ֵ", false, false)
defineAttr("player_add_ice_phase", "�����Լ�ֵ", false, false)
defineAttr("player_add_soi_phase", "�����Լ�ֵ", false, false)
defineAttr("player_add_fir_phase", "�����Լ�ֵ", false, false)
defineAttr("player_add_poi_phase", "�����Լ�ֵ", false, false)
defineAttr("player_phase_point", "�ɷ������Ե�", false, true)

-- �������ԣ�
-- ��һ������Ӱ��������䶯������
-- �䱾��Ҳ���ܵ�������װ����buff�ȵط�Ӱ����ܵ��ı�
-- ����������Ŀ�°���Ӱ��������Ա������������
-- �������ʡ������ʡ������ʡ������ʲ�������Ϊ�������ԣ��ϲ��ڶ���������Ŀ�£�
defineAttr("player_hp", "����", false, true)
defineAttr("player_mp", "����", false, true)

defineAttr("player_max_hp", "��������", true, false)
defineAttr("player_add_max_hp", "�������޼�ֵ", false, false)
defineAttr("player_inc_max_hp", "�������޼ӳ�", false, false)

defineAttr("player_max_mp", "��������", true, false)
defineAttr("player_add_max_mp", "�������޼�ֵ", false, false)
defineAttr("player_inc_max_mp", "�������޼ӳ�", false, false)

defineAttr("player_at", "��������", true, false)
defineAttr("player_add_at", "��������ֵ", false, false)
defineAttr("player_inc_at", "�������ӳ�", false, false)

defineAttr("player_mt", "����������", true, false)
defineAttr("player_add_mt", "����������ֵ", false, false)
defineAttr("player_inc_mt", "���������ӳ�", false, false)

defineAttr("player_add_at_mt", "ȫ��������ֵ", false, false)
defineAttr("player_inc_at_mt", "ȫ�������ӳ�", false, false)

defineAttr("player_af", "���������", true, false)
defineAttr("player_add_af", "���������ֵ", false, false)
defineAttr("player_inc_af", "��������ӳ�", false, false)

defineAttr("player_mf", "����������", true, false)
defineAttr("player_add_mf", "����������ֵ", false, false)
defineAttr("player_inc_mf", "���������ӳ�", false, false)

defineAttr("player_add_af_mf", "ȫ��������ֵ", false, false)
defineAttr("player_inc_af_mf", "ȫ�������ӳ�", false, false)

defineAttr("player_hit", "����", true, false)
defineAttr("player_add_hit", "���м�ֵ", false, false)
defineAttr("player_inc_hit", "���мӳ�", false, false)

defineAttr("player_dodge", "����", true, false)
defineAttr("player_add_dodge", "���ܼ�ֵ", false, false)
defineAttr("player_inc_dodge", "���ܼӳ�", false, false)

defineAttr("player_critical", "����", true, false)
defineAttr("player_add_critical", "������ֵ", false, false)
defineAttr("player_inc_critical", "�����ӳ�", false, false)

defineAttr("player_tenacity", "����", true, false)
defineAttr("player_add_tenacity", "������ֵ", false, false)
defineAttr("player_inc_tenacity", "�����ӳ�", false, false)

defineAttr("player_speed", "�ٶ�", true, false)
defineAttr("player_add_speed", "�ٶȼ�ֵ", false, false)
defineAttr("player_inc_speed", "�ٶȼӳ�", false, false)

defineAttr("player_inc_obstacle_hit", "�ϰ����мӳ�", false, false)
defineAttr("player_inc_taunt_resist", "������ӳ�", false, false)
defineAttr("player_inc_sopor_resist", "����˯�ӳ�", false, false)
defineAttr("player_inc_chaos_resist", "�����Ҽӳ�", false, false)
defineAttr("player_inc_freeze_resist", "�������ӳ�", false, false)
defineAttr("player_inc_silent_resist", "����Ĭ�ӳ�", false, false)
defineAttr("player_inc_toxicosis_resist", "���ж��ӳ�", false, false)
defineAttr("player_inc_obstacle_resist", "�����ϰ����Լӳ�", false, false)

defineAttr("player_win_at", "�繥��", true, false)
defineAttr("player_thu_at", "�׹���", true, false)
defineAttr("player_ice_at", "������", true, false)
defineAttr("player_soi_at", "������", true, false)
defineAttr("player_fir_at", "�𹥻�", true, false)
defineAttr("player_poi_at", "������", true, false)

defineAttr("player_inc_win_at", "�繥���ӳ�", false, false)
defineAttr("player_inc_thu_at", "�׹����ӳ�", false, false)
defineAttr("player_inc_ice_at", "�������ӳ�", false, false)
defineAttr("player_inc_soi_at", "�������ӳ�", false, false)
defineAttr("player_inc_fir_at", "�𹥻��ӳ�", false, false)
defineAttr("player_inc_poi_at", "�������ӳ�", false, false)

defineAttr("player_inc_phase_at", "�������Թ����ӳ�", false, false)

defineAttr("player_win_resist", "�翹", true, false)
defineAttr("player_thu_resist", "�׿�", true, false)
defineAttr("player_ice_resist", "����", true, false)
defineAttr("player_soi_resist", "����", true, false)
defineAttr("player_fir_resist", "��", true, false)
defineAttr("player_poi_resist", "����", true, false)

defineAttr("player_inc_win_resist", "�翹�ӳ�", false, false)
defineAttr("player_inc_thu_resist", "�׿��ӳ�", false, false)
defineAttr("player_inc_ice_resist", "�����ӳ�", false, false)
defineAttr("player_inc_soi_resist", "�����ӳ�", false, false)
defineAttr("player_inc_fir_resist", "�𿹼ӳ�", false, false)
defineAttr("player_inc_poi_resist", "�����ӳ�", false, false)

defineAttr("player_inc_phase_resist", "�������Կ��Լӳ�", false, false)
defineAttr("player_inc_critical_effect", "����Ч���ӳ�", false, false)

-- �������ԣ�
-- �������ú�Ӱ����ҵ�����ֵ����Ӱ����������
-- ����������Ŀ�°���Ӱ�����������������������
defineAttr("player_stand_tao", "��׼����", true, false)
defineAttr("player_xp", "����", false, true)
defineAttr("player_pot", "Ǳ��", false, true)
defineAttr("player_expoint", "����", false, true)
defineAttr("player_vigor", "����", false, true)

defineAttr("player_mobile_speed", "�ƶ��ٶ�", true, false)
defineAttr("player_add_mobile_speed", "�ƶ��ٶȼӳ�", false, false)

defineAttr("player_tao", "����", false, true)
defineAttr("player_anger", "ŭ��ֵ", false, false)
defineAttr("player_combat", "ս��", false, true)
defineAttr("player_lvl", "�ȼ�", false, false)
defineAttr("player_next_xp", "��������", true, false)

defineAttr("player_counter", "������", true, false)
defineAttr("player_inc_counter", "�����ʼӳ�", false, false)
defineAttr("player_escape", "���ܳɹ���", false, false)
defineAttr("player_inc_anger", "ŭ����üӳ�", false, false)
defineAttr("player_inc_escape", "���ܳɹ��ʼӳ�", false, false)
defineAttr("player_inc_skill_trigger", "���ܴ�������", false, false)
defineAttr("player_inc_chase", "׷����", false, false)
defineAttr("player_max_anger", "���ŭ��", true, false)
defineAttr("player_inc_health", "����Ч���ӳ�", false, false)
defineAttr("player_add_health", "����Ч����ֵ", false, false)
defineAttr("player_at_da", "���������˺�����", false, false)
defineAttr("player_mt_da", "���շ����˺�����", false, false)
defineAttr("player_dmg_da", "����ȫ���˺�����", false, false)
defineAttr("player_counter_dmg_add", "�����˺��ӳ�", false, false)
defineAttr("player_kill", "ɱ��ֵ", false, true)
defineAttr("player_unhit_rate", "������", false, false)
defineAttr("player_add_unhit_rate", "�����ʼ�ֵ", false, false)
defineAttr("player_max_vigor", "�������", true, false)
defineAttr("player_max_pet", "��������", false, true)
defineAttr("player_add_max_hm","�������������޼�ֵ",false,true)
defineAttr("player_inc_max_hm","�������������޼ӳ�",false,true)
defineAttr("player_inc_taunt_hit","�������мӳ�",false,false)
defineAttr("player_inc_soper_hit","�������мӳ�",false,false)
defineAttr("player_inc_chaos_hit","�������мӳ�",false,false)
defineAttr("player_inc_freeze_hit","�������мӳ�",false,false)
defineAttr("player_inc_silent_hit","��Ĭ���мӳ�",false,false)
defineAttr("player_inc_toxicosis_hit","�¶����мӳ�",false,false)
defineAttr("player_dec_spell_cost","�������Ľ���",false,false)
defineAttr("player_rupture_rate","�������Ʒ���",false,false)
defineAttr("player_inc_rupture_effect","�Ʒ�Ч���ӳ�",false,false)
defineAttr("player_add_mind_level","����ķ��ȼ���ֵ",false,false)
defineAttr("player_add_escape_rate","��������ʼ�ֵ",false,true)
defineAttr("player_add_catchpet_rate","���ץ���ʼ�ֵ",false,true)
defineAttr("player_reduce_escape_rate","��ҶԵ������ʼ�ֵ",false,true)