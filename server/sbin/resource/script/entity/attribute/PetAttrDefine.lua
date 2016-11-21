-- PetAttrDefine.lua
-- �������Զ���

PetAttrDefine = {}

-- defineAttr(������, ��������, �Ƿ��й�ʽ, �ܷ���־û�)
local function defineAttr(name,desc, bExpr, bSave)
	local base = #PetAttrDefine + 1
	PetAttrDefine[base] = {
		name	= name,
		expr	= bExpr,
		db		= bSave,
	}
	_G[name] = base
end

defineAttr("pet_hp", "����", false, true)
defineAttr("pet_mp", "����", false, true)
defineAttr("pet_tao", "����", false, true)
defineAttr("pet_lvl", "�ȼ�", false, true)

defineAttr("pet_str", "����", true, false)
defineAttr("pet_int", "����", true, false)
defineAttr("pet_sta", "����", true, false)
defineAttr("pet_spi", "����", true, false)
defineAttr("pet_dex", "��", true, false)

defineAttr("pet_inborn_str", "������������", false,	true)
defineAttr("pet_inborn_int", "������������", false,	true)
defineAttr("pet_inborn_sta", "�����������", false,	true)
defineAttr("pet_inborn_spi", "������������", false,	true)
defineAttr("pet_inborn_dex", "����������", false,	true)

defineAttr("pet_in_str", "��������", true, false)
defineAttr("pet_in_int", "��������", true, false)
defineAttr("pet_in_sta", "�������", true, false)
defineAttr("pet_in_spi", "��������", true, false)
defineAttr("pet_in_dex", "������", true, false)

defineAttr("pet_str_point", "�����ӵ�", false, true)
defineAttr("pet_int_point", "�����ӵ�", false, true)
defineAttr("pet_sta_point", "���Ǽӵ�", false, true)
defineAttr("pet_spi_point", "����ӵ�", false, true)
defineAttr("pet_dex_point", "���ӵ�", false, true)

defineAttr("pet_attr_point", "�ɷ������Ե�", false, true)
defineAttr("pet_phase_point", "�ɷ������Ե�", false, true)

defineAttr("pet_add_str", "����+", false, false)
defineAttr("pet_add_int", "����+", false, false)
defineAttr("pet_add_sta", "����+", false, false)
defineAttr("pet_add_spi", "����+", false, false)
defineAttr("pet_add_dex", "��+", false, false)	 

defineAttr("pet_win_at", "�繥��", true, false)
defineAttr("pet_thu_at", "�׹���", true, false)
defineAttr("pet_ice_at", "������", true, false)
defineAttr("pet_soi_at", "������", true, false)
defineAttr("pet_fir_at", "�𹥻�", true, false)
defineAttr("pet_poi_at", "������", true, false)	 

defineAttr("pet_add_win_at", "�繥��+", false, false)
defineAttr("pet_add_thu_at", "�׹���+", false, false)
defineAttr("pet_add_ice_at", "������+", false, false)
defineAttr("pet_add_soi_at", "������+", false, false)
defineAttr("pet_add_fir_at", "�𹥻�+", false, false)
defineAttr("pet_add_poi_at", "������+", false, false)	 

defineAttr("pet_win_resist", "�翹", true, false)
defineAttr("pet_thu_resist", "�׿�", true, false)
defineAttr("pet_ice_resist", "����", true, false)
defineAttr("pet_soi_resist", "����", true, false)
defineAttr("pet_fir_resist", "��", true, false)
defineAttr("pet_poi_resist", "����", true, false)		

defineAttr("pet_add_win_resist", "�翹+", false, false)
defineAttr("pet_add_thu_resist", "�׿�+", false, false)
defineAttr("pet_add_ice_resist", "����+", false, false)
defineAttr("pet_add_soi_resist", "����+", false, false)
defineAttr("pet_add_fir_resist", "��+", false, false)
defineAttr("pet_add_poi_resist", "����+", false, false)

defineAttr("pet_fir_phase_point", "�����Լӵ�", false, true)
defineAttr("pet_soi_phase_point", "�����Լӵ�", false, true)
defineAttr("pet_win_phase_point", "�����Լӵ�", false, true)
defineAttr("pet_poi_phase_point", "�����Լӵ�", false, true)
defineAttr("pet_ice_phase_point", "�����Լӵ�", false, true)
defineAttr("pet_thu_phase_point", "�����Լӵ�", false, true)  

defineAttr("pet_max_hp", "��������", true, false)
defineAttr("pet_add_max_hp", "��������+", false, false)
defineAttr("pet_inc_max_hp", "�������޼ӳ�", false, false)	   

defineAttr("pet_max_mp", "��������", true, false)
defineAttr("pet_add_max_mp", "��������+", false, false)
defineAttr("pet_inc_max_mp", "�������޼ӳ�", false, false)

defineAttr("pet_at", "��������", true, false)
defineAttr("pet_add_at", "������+", false, false)
defineAttr("pet_inc_at", "�������ӳ�", false, false)

defineAttr("pet_mt", "����������", true, false)
defineAttr("pet_add_mt", "��������+", false, false)
defineAttr("pet_inc_mt", "���������ӳ�", false, false)

defineAttr("pet_af", "���������", true, false)
defineAttr("pet_add_af", "�������+", false, false)
defineAttr("pet_inc_af", "��������ӳ�", false, false)

defineAttr("pet_mf", "����������", true, false)
defineAttr("pet_add_mf", "��������+", false, false)
defineAttr("pet_inc_mf", "���������ӳ�", false, false)

defineAttr("pet_hit", "����", true, false)
defineAttr("pet_add_hit", "����+", false, false)
defineAttr("pet_inc_hit", "���мӳ�", false, false)

defineAttr("pet_dodge", "����", true, false)
defineAttr("pet_add_dodge", "����+", false, false)
defineAttr("pet_inc_dodge", "���ܼӳ�", false, false)

defineAttr("pet_critical", "����", true, false)
defineAttr("pet_add_critical", "����+", false, false)
defineAttr("pet_inc_critical", "�����ӳ�", false, false)

defineAttr("pet_tenacity", "����", true, false)
defineAttr("pet_add_tenacity", "����+", false, false)
defineAttr("pet_inc_tenacity", "�����ӳ�", false, false)

defineAttr("pet_speed", "�ٶ�", true, false)
defineAttr("pet_add_speed", "�ٶ�+", false, false)
defineAttr("pet_inc_speed", "�ٶȼӳ�", false, false)

defineAttr("pet_add_base_attr", "��������+", false, false)
defineAttr("pet_add_phase_at", "�������Թ���+", false, false)
defineAttr("pet_add_phase_resist", "�������Կ���+", false, false)
defineAttr("pet_add_obstacle_resist", "�����ϰ�����+", false, false)

defineAttr("pet_capacity", "���ʳɳ�", false, true)
defineAttr("pet_at_grow", "�﹥�ɳ�", false, true)
defineAttr("pet_df_grow", "����ɳ�", false, true)
defineAttr("pet_mt_grow", "�����ɳ�", false, true)
defineAttr("pet_mf_grow", "�����ɳ�", false, true)
defineAttr("pet_hp_grow", "�����ɳ�", false, true)
defineAttr("pet_at_speed_grow", "�ٶȳɳ�", false, true)

defineAttr("pet_capacity_max", "���ʳɳ����ֵ", false, true)
defineAttr("pet_at_grow_max", "�﹥�ɳ����ֵ", false, true)
defineAttr("pet_df_grow_max", "����ɳ����ֵ", false, true)
defineAttr("pet_mt_grow_max", "�����ɳ����ֵ", false, true)
defineAttr("pet_mf_grow_max", "�����ɳ����ֵ", false, true)
defineAttr("pet_hp_grow_max", "�����ɳ����ֵ", false, true)
defineAttr("pet_at_speed_grow_max", "�ٶȳɳ����ֵ", false, true)

defineAttr("pet_obstacle_hit", "�ϰ�����", false, false)
defineAttr("pet_add_obstacle_hit", "�ϰ�����+", false, false)
defineAttr("pet_taunt_resist", "������", true, false)
defineAttr("pet_add_taunt_resist", "������+", false, false)
defineAttr("pet_inc_taunt_resist", "������", false, false)
defineAttr("pet_sopor_resist", "����˯", true, false)
defineAttr("pet_add_sopor_resist", "����˯+", false, false)
defineAttr("pet_inc_sopor_resist", "����˯", false, false)
defineAttr("pet_chaos_resist", "������", true, false)
defineAttr("pet_add_chaos_resist", "������+", false, false)
defineAttr("pet_inc_chaos_resist", "������", false, false)
defineAttr("pet_freeze_resist", "������", true, false)
defineAttr("pet_add_freeze_resist", "������+", false, false)
defineAttr("pet_inc_freeze_resist", "������", false, false)
defineAttr("pet_silent_resist", "����Ĭ", true, false)
defineAttr("pet_add_silent_resist", "����Ĭ+", false, false)
defineAttr("pet_inc_silent_resist", "����Ĭ", false, false)
defineAttr("pet_toxicosis_resist", "���ж�", true, false)
defineAttr("pet_add_toxicosis_resist", "���ж�+", false, false)
defineAttr("pet_inc_toxicosis_resist", "���ж�", false, false)

defineAttr("pet_chaos_phase_point", "�������Լӵ�", false, true)
defineAttr("pet_taunt_phase_point", "�������Լӵ�", false, true)
defineAttr("pet_sopor_phase_point", "��˯���Լӵ�", false, true)
defineAttr("pet_silent_phase_point", "��Ĭ���Լӵ�", false, true)
defineAttr("pet_freeze_phase_point", "�������Լӵ�", false, true)
defineAttr("pet_toxicosis_phase_point", "�ж����Լӵ�", false, true)

defineAttr("pet_xp", "����", false, true)
defineAttr("pet_next_xp", "��������", true, false)

defineAttr("pet_life", "��ǰ����", false, true)
defineAttr("pet_life_max", "�������", false, true)

defineAttr("pet_mobile_speed", "�ƶ��ٶ�", false, false)
defineAttr("pet_add_mobile_speed", "�ƶ��ٶȼӳ�", false, false)

defineAttr("pet_counter", "������", true, false)
defineAttr("pet_inc_counter", "�����ʼӳ�", false, false)

defineAttr("pet_escape", "���ܳɹ���", false, false)
defineAttr("pet_inc_escape", "���ܳɹ��ʼӳ�", false, false)

defineAttr("pet_critical_effect", "�����˺�", true, false)
defineAttr("pet_inc_critical_effect", "�����˺��ӳ�", false, false)

defineAttr("pet_inc_skill_trigger", "���ܴ�������", false, false)
defineAttr("pet_inc_chase", "׷����", false, false)

defineAttr("pet_inc_health", "����Ч���ӳ�", false, false)
defineAttr("pet_add_health", "����Ч����ֵ", false, false)

defineAttr("pet_allt", "ȫ��������", false, false)
defineAttr("pet_allf", "ȫ��������", false, false)

defineAttr("pet_at_da", "���������˺�����", false, false)
defineAttr("pet_mt_da", "���շ����˺�����", false, false)
defineAttr("pet_dmg_da", "����ȫ���˺�����", false, false)

defineAttr("pet_stand_tao", "��׼����", true, false)

defineAttr("pet_unhit_rate", "������", true, false)
defineAttr("pet_add_unhit_rate", "������+", false, false)

defineAttr("pet_skill_max","�������������",false,true)
