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
	                     num_id = 62,
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
	                     num_id = 62,
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
	                     num_id = 63,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 60,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
	                     num_id = 60,
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
	                     num_id = 61,
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
     [1042] = {
	          name = "��������",
	          skill_type = Skill_Type.Revival,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 62,
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
     [1043] = {
	          name = "�ն�����",
	          skill_type = Skill_Type.Heal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 67,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1044] = {
	          name = "���֮��",
	          skill_type = Skill_Type.BuffDmg,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 63,
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
     [1045] = {
	          name = "��������",
	          skill_type = Skill_Type.BuffDmg,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 63,
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
     [1046] = {
	          name = "�ƻ�����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 67,
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
     [1047] = {
	          name = "ɥ�Ĳ���",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 67,
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
     [1048] = {
	          name = "Ѫ������",
	          skill_type = Skill_Type.Heal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 66,
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
     [1049] = {
	          name = "ħѪ����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 46,
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
     [1050] = {
	          name = "�Ա�����",
	          skill_type = Skill_Type.Buff,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 29,
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
     [1051] = {
	          name = "�ߵ�Ǭ��",
	          skill_type = Skill_Type.Buff,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 16,
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
     [1052] = {
	          name = "�������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 61,
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
     [1053] = {
	          name = "��������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.UnionHit,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 14,
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
     [1054] = {
	          name = "ǹ��ɽ��",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.UnionHit,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 15,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1055] = {
	          name = "��ո���",
	          skill_type = Skill_Type.Tranform,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 1,
	                     target_type = nil,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 17,
	                     target_type = nil,
	                     target_num_id = 1,
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
     [1056] = {
	          name = "�����ٶ�",
	          skill_type = Skill_Type.Tranform,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 2,
	                     target_type = nil,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 17,
	                     target_type = nil,
	                     target_num_id = 1,
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
     [1057] = {
	          name = "һ�򵱹�",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 3,
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
     [1058] = {
	          name = "һ�ﵱǧ",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 3,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1059] = {
	          name = "�����ɸ�",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 4,
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
     [1060] = {
	          name = "Ԩͣ����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 5,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1061] = {
	          name = "�������",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 6,
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
     [1062] = {
	          name = "ƽɳ����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 7,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1063] = {
	          name = "ŭ�����",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 22,
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
     [1064] = {
	          name = "�Ե��޼�",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 23,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1065] = {
	          name = "Ǳ������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = nil,
	                     num_id = 8,
	                     target_type = nil,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = nil,
	                     num_id = 24,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
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
     [1066] = {
	          name = "�ȷ�����",
	          skill_type = Skill_Type.BuffDmg,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 25,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = SkillEff.Buff,
	                     num_id = 9,
	                     target_type = nil,
	                     target_num_id = 1,
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
     [1067] = {
	          name = "��������",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 10,
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
     [1068] = {
	          name = "�����ɢ",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 10,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1069] = {
	          name = "�²��ɵ�",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 11,
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
     [1070] = {
	          name = "����ɽ��",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 12,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1071] = {
	          name = "�һ���ԭ",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
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
     [1072] = {
	          name = "�������",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 14,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1073] = {
	          name = "���Ƕ���",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 27,
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
     [1074] = {
	          name = "��������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 28,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1075] = {
	          name = "���Ķ���",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 15,
	                     target_type = nil,
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
     [1076] = {
	          name = "�������",
	          skill_type = Skill_Type.Arrows,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 30,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = SkillEff.AddCrit,
	                     num_id = 29,
	                     target_type = nil,
	                     target_num_id = 1,
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
     [1077] = {
	          name = "�겻����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 16,
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
     [1078] = {
	          name = "���ߵ�",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 16,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1079] = {
	          name = "�������",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 17,
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
     [1080] = {
	          name = "�����転",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 18,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1081] = {
	          name = "������ɢ",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 19,
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
     [1082] = {
	          name = "������",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 20,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1083] = {
	          name = "��������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 33,
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
     [1084] = {
	          name = "ʯ���쾪",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 34,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1085] = {
	          name = "��ũ����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 21,
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
     [1086] = {
	          name = "��������",
	          skill_type = Skill_Type.Revival,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 35,
	                     target_type = nil,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 53,
	                     target_type = nil,
	                     target_num_id = 1,
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
     [1087] = {
	          name = "����ѩ��",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 22,
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
     [1088] = {
	          name = "��������",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 22,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1089] = {
	          name = "����ɽ�",
	          skill_type = Skill_Type.Heal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 36,
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
     [1090] = {
	          name = "�Ⱥ��ն�",
	          skill_type = Skill_Type.Heal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 37,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1091] = {
	          name = "�������",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 23,
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
     [1092] = {
	          name = "��������",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 24,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1093] = {
	          name = "����Ϸ��",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 41,
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
     [1094] = {
	          name = "���߿���",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 42,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1095] = {
	          name = "�ŷ�ɥ��",
	          skill_type = Skill_Type.Dispel,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 43,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	                 },
	                 [2] = { 
	                     type = SkillEff.Dispel,
	                     num_id = 39,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
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
     [1096] = {
	          name = "�������",
	          skill_type = Skill_Type.Dispel,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 44,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	                 },
	                 [2] = { 
	                     type = SkillEff.Dispel,
	                     num_id = 40,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
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
     [1097] = {
	          name = "����֮��",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 25,
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
     [1098] = {
	          name = "�򶾹���",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 25,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1099] = {
	          name = "ѸӰ����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 26,
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
     [1100] = {
	          name = "���аٱ�",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 27,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1101] = {
	          name = "�Զ�����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 28,
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
     [1102] = {
	          name = "�ٶ�����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 29,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1103] = {
	          name = "�������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 46,
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
     [1104] = {
	          name = "���׺䶥",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 47,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1105] = {
	          name = "ɢԪ����",
	          skill_type = Skill_Type.ReduceMp,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.ReduceMp,
	                     num_id = 48,
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
     [1106] = {
	          name = "���׳�н",
	          skill_type = Skill_Type.ReduceMp,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.ReduceMp,
	                     num_id = 49,
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
     [1107] = {
	          name = "��Ȼ����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 31,
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
     [1108] = {
	          name = "Ǳ������",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 31,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1109] = {
	          name = "������Ԫ",
	          skill_type = Skill_Type.Heal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.MpHeal,
	                     num_id = 50,
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
     [1110] = {
	          name = "��Ԫ��һ",
	          skill_type = Skill_Type.Heal,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.MpHeal,
	                     num_id = 51,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1111] = {
	          name = "��׻���",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 32,
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
     [1112] = {
	          name = "�׶�����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 33,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
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
     [1113] = {
	          name = "�ض�ɽҡ",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.UnionHit,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 60,
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
     [1114] = {
	          name = "��������",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 41,
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
     [1115] = {
	          name = "������� ",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 22,
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
     [1116] = {
	          name = "����ŭ��",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.At,
	                     num_id = 28,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	                 },
	                 [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
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
     [1117] = {
	          name = "�ط罣",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 60,
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
     [1118] = {
	          name = "�����̹�",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 60,
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
     [1119] = {
	          name = "����",
	          skill_type = Skill_Type.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 60,
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
     [1201] = {
	          name = "�����Ұ",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 48,
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
     [1202] = {
	          name = "�������",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 49,
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
     [1203] = {
	          name = "�콵����",
	          skill_type = Skill_Type.Buff,
	          phase_type = nil,
	          skill = { 
	                 [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 41,
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
 }
