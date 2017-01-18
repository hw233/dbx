--[[MonsterSkillDB.lua
���������＼��
	]]

MonsterSkillDB = {

     [1001] = {
	          name = "��ػش�",
	          skill_type = Skill_Type.Heal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 13,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1002] = {
	          name = "������Ϣ",
	          skill_type = Skill_Type.Heal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 13,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1003] = {
	          name = "��������",
	          skill_type = Skill_Type.Heal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 14,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1004] = {
	          name = "�ҷ��",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1005] = {
	          name = "����ն",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1006] = {
	          name = "������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1007] = {
	          name = "��۵糸",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1008] = {
	          name = "����ն",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1009] = {
	          name = "���״�",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1010] = {
	          name = "����Ȧ",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1011] = {
	          name = "������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1012] = {
	          name = "������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1013] = {
	          name = "������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1014] = {
	          name = "����籩",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1015] = {
	          name = "��Ȫ����",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1016] = {
	          name = "������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.UnionHit,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1017] = {
	          name = "�����߽�",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.UnionHit,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1018] = {
	          name = "���Ϻ���",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.UnionHit,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1019] = {
	          name = "����ӭ��",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.UnionHit,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1020] = {
	          name = "�ǻ�׹",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1021] = {
	          name = "�ֻ��",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1022] = {
	          name = "������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1023] = {
	          name = "�������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1024] = {
	          name = "�㶾֮��",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1025] = {
	          name = "�綾ˮ��",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1026] = {
	          name = "��˿����",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1027] = {
	          name = "����涾",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1028] = {
	          name = "ǧ������",
	          skill_type = Skill_Type.Normal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1029] = {
	          name = "��������",
	          skill_type = Skill_Type.Normal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1030] = {
	          name = "��������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.UnionHit,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1031] = {
	          name = "ǹ��ɽ��",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.UnionHit,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1032] = {
	          name = "ŭ�����",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1033] = {
	          name = "�Ե��޼�",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1034] = {
	          name = "���Ƕ���",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1035] = {
	          name = "��������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1036] = {
	          name = "��������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1037] = {
	          name = "ʯ���쾪",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1038] = {
	          name = "����Ϸ��",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1039] = {
	          name = "���߿���",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1040] = {
	          name = "�������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
     [1041] = {
	          name = "���׺䶥",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [3] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	                 [4] = { 
	                     type = nil,
	                     target_type = nil,
	                 },
	             },
	         },
 }
