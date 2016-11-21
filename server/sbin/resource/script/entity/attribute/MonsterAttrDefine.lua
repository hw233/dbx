-- MonsterAttrDefine.lua
-- �������Զ���

local __base = 1

MonsterAttrDefine = {}

-- defineAttr(����ֵ, ������, ��������, �Ƿ��й�ʽ, �ܷ���־û�)
local function defineAttr(name, desc, bExpr, bSave)
	local base = #MonsterAttrDefine + 1
	MonsterAttrDefine[base] = {
		name	= name,
		expr	= bExpr,
		db		= bSave,
	}
	_G[name] = base
end

-- һ������
defineAttr("monster_str", "����", true, false)
defineAttr("monster_int", "����", true, false)
defineAttr("monster_sta", "����", true, false)
defineAttr("monster_spi", "����", true, false)
defineAttr("monster_dex", "��", true, false)

defineAttr("monster_in_str", "��������", true, false)
defineAttr("monster_in_int", "��������", true, false)
defineAttr("monster_in_sta", "�������", true, false)
defineAttr("monster_in_spi", "��������", true, false)
defineAttr("monster_in_dex", "������", true, false)

defineAttr("monster_str_point", "�����ӵ�", true, false)
defineAttr("monster_int_point", "�����ӵ�", true, false)
defineAttr("monster_sta_point", "���Ǽӵ�", true, false)
defineAttr("monster_spi_point", "����ӵ�", true, false)
defineAttr("monster_dex_point", "���ӵ�", true, false)

defineAttr("monster_add_str", "����+", false, false)
defineAttr("monster_add_int", "����+", false, false)
defineAttr("monster_add_sta", "����+", false, false)
defineAttr("monster_add_spi", "����+", false, false)
defineAttr("monster_add_dex", "��+", false, false)
defineAttr("monster_add_base_attr", "��������+", false, false)

-- ��������
defineAttr("monster_hp", "����", false, false)
defineAttr("monster_max_hp", "��������", true, false)
defineAttr("monster_add_max_hp", "��������+", false, false)
defineAttr("monster_inc_max_hp", "�������޼ӳ�", false, false)

defineAttr("monster_at", "��������", true, false)
defineAttr("monster_add_at", "������+", false, false)
defineAttr("monster_inc_at", "�������ӳ�", false, false)

defineAttr("monster_mt", "����������", true, false)
defineAttr("monster_add_mt", "��������+", false, false)
defineAttr("monster_inc_mt", "���������ӳ�", false, false)

defineAttr("monster_add_at_mt", "ȫ������+", false, false)
defineAttr("monster_inc_at_mt", "ȫ�������ӳ�", false, false)

defineAttr("monster_af", "���������", true, false)
defineAttr("monster_add_af", "�������+", false, false)
defineAttr("monster_inc_af", "��������ӳ�", false, false)

defineAttr("monster_mf", "����������", true, false)
defineAttr("monster_add_mf", "��������+", false, false)
defineAttr("monster_inc_mf", "���������ӳ�", false, false)

defineAttr("monster_add_af_mf", "ȫ������+", false, false)
defineAttr("monster_inc_af_mf", "ȫ�������ӳ�", false, false)

defineAttr("monster_hit", "����", true, false)
defineAttr("monster_add_hit", "����+", false, false)
defineAttr("monster_inc_hit", "���мӳ�", false, false)

defineAttr("monster_dodge", "����", true, false)
defineAttr("monster_add_dodge", "����+", false, false)
defineAttr("monster_inc_dodge", "���ܼӳ�", false, false)

defineAttr("monster_critical", "����", true, false)
defineAttr("monster_add_critical", "����+", false, false)
defineAttr("monster_inc_critical", "�����ӳ�", false, false)

defineAttr("monster_tenacity", "����", true, false)
defineAttr("monster_add_tenacity", "����+", false, false)
defineAttr("monster_inc_tenacity", "�����ӳ�", false, false)

defineAttr("monster_speed", "�ٶ�", true, false)
defineAttr("monster_add_speed", "�ٶ�+", false, false)
defineAttr("monster_inc_speed", "�ٶȼӳ�", false, false)

defineAttr("monster_add_obstacle_hit", "�ϰ�����+", false, false)
defineAttr("monster_add_taunt_resist", "������+", false, false)
defineAttr("monster_add_sopor_resist", "����˯+", false, false)
defineAttr("monster_add_chaos_resist", "������+", false, false)
defineAttr("monster_add_freeze_resist", "������+", false, false)
defineAttr("monster_add_silent_resist", "����Ĭ+", false, false)
defineAttr("monster_add_toxicosis_resist", "���ж�+", false, false)
defineAttr("monster_add_obstacle_resist", "�����ϰ����Լ�ֵ", false, false)

defineAttr("monster_win_at", "�繥��", true, false)
defineAttr("monster_thu_at", "�׹���", true, false)
defineAttr("monster_ice_at", "������", true, false)
defineAttr("monster_soi_at", "������", true, false)
defineAttr("monster_fir_at", "�𹥻�", true, false)
defineAttr("monster_poi_at", "������", true, false)

defineAttr("monster_add_win_at", "�繥��+", false, false)
defineAttr("monster_add_thu_at", "�׹���+", false, false)
defineAttr("monster_add_ice_at", "������+", false, false)
defineAttr("monster_add_soi_at", "������+", false, false)
defineAttr("monster_add_fir_at", "�𹥻�+", false, false)
defineAttr("monster_add_poi_at", "������+", false, false)
defineAttr("monster_add_phase_at", "�������Թ���+", false, false)

defineAttr("monster_win_resist", "�翹", true, false)
defineAttr("monster_thu_resist", "�׿�", true, false)
defineAttr("monster_ice_resist", "����", true, false)
defineAttr("monster_soi_resist", "����", true, false)
defineAttr("monster_fir_resist", "��", true, false)
defineAttr("monster_poi_resist", "����", true, false)

defineAttr("monster_add_win_resist", "�翹+", false, false)
defineAttr("monster_add_thu_resist", "�׿�+", false, false)
defineAttr("monster_add_ice_resist", "����+", false, false)
defineAttr("monster_add_soi_resist", "����+", false, false)
defineAttr("monster_add_fir_resist", "��+", false, false)
defineAttr("monster_add_poi_resist", "����+", false, false)
defineAttr("monster_add_phase_resist", "�������Կ���+", false, false)
defineAttr("monster_inc_critical_effect", "����Ч���ӳ�", false, false)

-- ��������
defineAttr("monster_lvl", "�ȼ�", false, false)
defineAttr("monster_tao", "����", true, false)
defineAttr("monster_inc_skill_trigger", "���ܴ�������", false, false)
defineAttr("monster_inc_chase", "׷����", false, false)
defineAttr("monster_inc_health", "����Ч���ӳ�", false, false)
defineAttr("monster_add_health", "����Ч����ֵ", false, false)
defineAttr("monster_at_da", "���������˺�����", false, false)
defineAttr("monster_mt_da", "���շ����˺�����", false, false)
defineAttr("monster_dmg_da", "����ȫ���˺�����", false, false)
defineAttr("monster_tao_coffi", "����ϵ��", false, false)
defineAttr("monster_str_coffi", "����ϵ��", false, false)
defineAttr("monster_int_coffi", "����ϵ��", false, false)
defineAttr("monster_sta_coffi", "����ϵ��", false, false)
defineAttr("monster_spi_coffi", "����ϵ��", false, false)
defineAttr("monster_dex_coffi", "��ϵ��", false, false)
defineAttr("monster_counter", "����", true, false)
defineAttr("monster_inc_counter", "����ӳ�", false, false)
defineAttr("monster_unhit_rate", "������", true, false)
defineAttr("monster_add_unhit_rate", "������+", false, false)
defineAttr("monster_stand_tao", "��׼����", true, false)