--[[PetSkillDB.lua
���������＼����
	]]

PetSkillDB = {

     [101] = {
	          name = "��������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 11,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [102] = {
	          name = "����ǧ��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 12,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [103] = {
	          name = "��������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 13,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [104] = {
	          name = "���˹���",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 14,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [105] = {
	          name = "�������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 15,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [106] = {
	          name = "ŭ�����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 16,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [107] = {
	          name = "����֮ŭ",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 17,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [108] = {
	          name = "���Ʋо�",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 18,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [109] = {
	          name = "������ӿ",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 19,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [110] = {
	          name = "����ŭ��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 20,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [111] = {
	          name = "�ٷ�����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 21,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [112] = {
	          name = "�糸����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 22,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [113] = {
	          name = "����ͻ��",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.WindAt,
	                     num_id = 5,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [114] = {
	          name = "�������",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.WindResist,
	                     num_id = 5,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [115] = {
	          name = "����һ��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 25,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [116] = {
	          name = "�������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 26,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [117] = {
	          name = "���׼���",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 27,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [118] = {
	          name = "��������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 28,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [119] = {
	          name = "��������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 29,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [120] = {
	          name = "���׶Ͽ�",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 30,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [121] = {
	          name = "�׾���Ϯ",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ThunderAt,
	                     num_id = 5,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [122] = {
	          name = "�������",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ThunderResist,
	                     num_id = 5,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [123] = {
	          name = "�������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 33,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [124] = {
	          name = "�����ʸ",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 34,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [125] = {
	          name = "�������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 35,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [126] = {
	          name = "�����۱�",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 36,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [127] = {
	          name = "����ѩ��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 37,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [128] = {
	          name = "��������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Ice,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 38,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [129] = {
	          name = "����ǧ��",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Ice,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.IceAt,
	                     num_id = 5,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [130] = {
	          name = "��˪�⻷",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Ice,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.IceResist,
	                     num_id = 5,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [131] = {
	          name = "��֮����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 41,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [132] = {
	          name = "�����߽�",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 42,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [133] = {
	          name = "����ӭ��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 43,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [134] = {
	          name = "������ɳ",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 44,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [135] = {
	          name = "����ʳë",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 45,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [136] = {
	          name = "��������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 46,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [137] = {
	          name = "����ۻ��",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.SoilAt,
	                     num_id = 5,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [138] = {
	          name = "������ǽ",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.SoilResist,
	                     num_id = 5,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [139] = {
	          name = "�һ���ԭ",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 49,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [140] = {
	          name = "����ڳ�",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 50,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [141] = {
	          name = "��������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 51,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [142] = {
	          name = "�������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 52,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [143] = {
	          name = "��ζ���",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 53,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [144] = {
	          name = "ҵ�����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 54,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [145] = {
	          name = "ɿ����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.FireAt,
	                     num_id = 5,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [146] = {
	          name = "�˻��һ�",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.FireResist,
	                     num_id = 5,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [147] = {
	          name = "�㶾֮��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 57,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [148] = {
	          name = "��������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 58,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [149] = {
	          name = "���з���",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 59,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [150] = {
	          name = "����Ѭ��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 60,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [151] = {
	          name = "��Ѫ����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 10,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 61,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [152] = {
	          name = "����涾",
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill_type = PetSkillType.Normal,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 62,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [153] = {
	          name = "�����޻�",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PoisonAt,
	                     num_id = 5,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [154] = {
	          name = "��˿����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PoisonResist,
	                     num_id = 5,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1001] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.NormalStrikeBack,
	                     num_id = 65,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.NormalStrikeBackValue,
	                     num_id = 66,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1002] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.NormalStrikeBack,
	                     num_id = 67,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.NormalStrikeBackValue,
	                     num_id = 68,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1003] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.CounterFight,
	                     num_id = 69,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.CounterFightValue,
	                     num_id = 70,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1004] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.CounterFight,
	                     num_id = 71,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.CounterFightValue,
	                     num_id = 72,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1005] = {
	          name = "��������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalStrikeBack,
	                     num_id = 73,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.MagicalStrikeBackValue,
	                     num_id = 74,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1006] = {
	          name = "�߼���������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalStrikeBack,
	                     num_id = 75,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.MagicalStrikeBackValue,
	                     num_id = 76,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1007] = {
	          name = "��Ѫ",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PATWithBloodSucking,
	                     num_id = 77,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1008] = {
	          name = "�߼���Ѫ",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PATWithBloodSucking,
	                     num_id = 78,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1009] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhysicalPursuit,
	                     num_id = 79,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.PhysicalATKChangeValue,
	                     num_id = 80,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1010] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhysicalPursuit,
	                     num_id = 81,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.PhysicalATKChangeValue,
	                     num_id = 82,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1011] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.RoundHpHeal,
	                     num_id = 83,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1012] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.RoundHpHeal,
	                     num_id = 84,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1013] = {
	          name = "ڤ˼",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.RoundMpHeal,
	                     num_id = 85,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1014] = {
	          name = "�߼�ڤ˼",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.RoundMpHeal,
	                     num_id = 86,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1015] = {
	          name = "�۸�",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MpConsumeReduce,
	                     num_id = 87,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1016] = {
	          name = "�߼��۸�",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MpConsumeReduce,
	                     num_id = 88,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1017] = {
	          name = "��ɱ",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhysicalATCritAdd,
	                     num_id = 89,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1018] = {
	          name = "�߼���ɱ",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhysicalATCritAdd,
	                     num_id = 90,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1019] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.CritImmune,
	                     num_id = 91,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1020] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.CritImmune,
	                     num_id = 92,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.MagicalATDodge,
	                     num_id = 93,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1021] = {
	          name = "��",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.RoundDeBuffDispel,
	                     num_id = 94,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1022] = {
	          name = "�߼���",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.RoundDeBuffDispel,
	                     num_id = 95,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1023] = {
	          name = "�м�",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhysicalATDodge,
	                     num_id = 96,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1024] = {
	          name = "�߼��м�",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhysicalATDodge,
	                     num_id = 97,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1025] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.AcceptAssistRoundAdd,
	                     num_id = 98,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1026] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.AcceptAssistRoundAdd,
	                     num_id = 99,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1027] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.Speed,
	                     num_id = 100,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1028] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.Speed,
	                     num_id = 101,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1029] = {
	          name = "ǿ��",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.At,
	                     num_id = 102,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.Mt,
	                     num_id = 103,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1030] = {
	          name = "�߼�ǿ��",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.At,
	                     num_id = 104,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.Mt,
	                     num_id = 105,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1031] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.Af,
	                     num_id = 106,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.Mf,
	                     num_id = 107,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1032] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.Af,
	                     num_id = 108,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.Mf,
	                     num_id = 109,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1033] = {
	          name = "ǿ׳",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MaxHp,
	                     num_id = 110,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1034] = {
	          name = "�߼�ǿ׳",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MaxHp,
	                     num_id = 111,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1035] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MaxMp,
	                     num_id = 112,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1036] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MaxMp,
	                     num_id = 113,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1037] = {
	          name = "͵Ϯ",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.CounterFightImmune,
	                     num_id = 114,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.StrikeBackImmune,
	                     num_id = 115,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [3] = { 
	                     type = PetPassiveEffect.AllATKChangeValue,
	                     num_id = 116,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1038] = {
	          name = "�߼�͵Ϯ",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.CounterFightImmune,
	                     num_id = 117,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.StrikeBackImmune,
	                     num_id = 118,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [3] = { 
	                     type = PetPassiveEffect.AllATKChangeValue,
	                     num_id = 119,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1039] = {
	          name = "ħ֮��",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalATKChangeValue,
	                     num_id = 120,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1040] = {
	          name = "�߼�ħ֮��",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalATKChangeValue,
	                     num_id = 121,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1041] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.Revival,
	                     num_id = 122,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.HPHealValue,
	                     num_id = 123,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1042] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.Revival,
	                     num_id = 124,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.HPHealValue,
	                     num_id = 125,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1043] = {
	          name = "�Ʒ�",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ATWithBreakDefense,
	                     num_id = 126,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.BreakDefenseBuff,
	                     num_id = 64,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [3] = { 
	                     type = PetPassiveEffect.ATDmgIncValue,
	                     num_id = 127,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1044] = {
	          name = "�߼��Ʒ�",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ATWithBreakDefense,
	                     num_id = 128,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.BreakDefenseBuff,
	                     num_id = 64,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [3] = { 
	                     type = PetPassiveEffect.ATDmgIncValue,
	                     num_id = 129,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1045] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ATWithInjured,
	                     num_id = 130,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.InjuredBuff,
	                     num_id = 65,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [3] = { 
	                     type = PetPassiveEffect.AllATKChangeValue,
	                     num_id = 131,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1046] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ATWithInjured,
	                     num_id = 132,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.InjuredBuff,
	                     num_id = 65,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [3] = { 
	                     type = PetPassiveEffect.AllATKChangeValue,
	                     num_id = 133,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1047] = {
	          name = "��������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalPursuit,
	                     num_id = 134,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1048] = {
	          name = "�߼���������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalPursuit,
	                     num_id = 135,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1049] = {
	          name = "��������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalATCrit,
	                     num_id = 136,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.MagicalATDmgChangeValue,
	                     num_id = 137,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1050] = {
	          name = "�߼���������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalATCrit,
	                     num_id = 138,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.MagicalATDmgChangeValue,
	                     num_id = 139,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1051] = {
	          name = "��������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalATDmgFluctuate,
	                     num_id = 140,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1052] = {
	          name = "�߼���������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalATDmgFluctuate,
	                     num_id = 141,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1053] = {
	          name = "�����ֿ�",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalDEFChangeValue,
	                     num_id = 142,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.PhysicalATKChangeValue,
	                     num_id = 143,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1054] = {
	          name = "�߼������ֿ�",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalDEFChangeValue,
	                     num_id = 144,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.PhysicalATKChangeValue,
	                     num_id = 145,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1055] = {
	          name = "�ٶ�",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.Speed,
	                     num_id = 146,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1056] = {
	          name = "�߼��ٶ�",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.Speed,
	                     num_id = 147,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1057] = {
	          name = "�繥",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.WindAt,
	                     num_id = 148,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1058] = {
	          name = "�߼��繥",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.WindAt,
	                     num_id = 149,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1059] = {
	          name = "�׹�",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ThunderAt,
	                     num_id = 150,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1060] = {
	          name = "�߼��׹�",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ThunderAt,
	                     num_id = 151,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1061] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.IceAt,
	                     num_id = 152,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1062] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.IceAt,
	                     num_id = 153,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1063] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.SoilAt,
	                     num_id = 154,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1064] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.SoilAt,
	                     num_id = 155,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1065] = {
	          name = "��",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.FireAt,
	                     num_id = 156,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1066] = {
	          name = "�߼���",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.FireAt,
	                     num_id = 157,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1067] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PoisonAt,
	                     num_id = 158,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1068] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PoisonAt,
	                     num_id = 159,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1069] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.WindResist,
	                     num_id = 160,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1070] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.WindResist,
	                     num_id = 161,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1071] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ThunderResist,
	                     num_id = 162,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1072] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ThunderResist,
	                     num_id = 163,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1073] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.IceResist,
	                     num_id = 164,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1074] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.IceResist,
	                     num_id = 165,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1075] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.SoilResist,
	                     num_id = 166,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1076] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.SoilResist,
	                     num_id = 167,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1077] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.FireResist,
	                     num_id = 168,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1078] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.FireResist,
	                     num_id = 169,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1079] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PoisonResist,
	                     num_id = 170,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1080] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.AttrPassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PoisonResist,
	                     num_id = 171,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1081] = {
	          name = "��������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalDmgImmune,
	                     num_id = 172,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1082] = {
	          name = "�߼���������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalDmgImmune,
	                     num_id = 173,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1083] = {
	          name = "��ȡ����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhysicalDmgReduce,
	                     num_id = 174,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1084] = {
	          name = "�߼���ȡ����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhysicalDmgReduce,
	                     num_id = 175,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1085] = {
	          name = "��ȡ����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalDmgReduce,
	                     num_id = 176,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1086] = {
	          name = "�߼���ȡ����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.MagicalDmgReduce,
	                     num_id = 177,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1087] = {
	          name = "��������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhaseDmgImmune,
	                     num_id = 178,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1088] = {
	          name = "�߼���������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhaseDmgImmune,
	                     num_id = 179,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1089] = {
	          name = "��ȡ�๥",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhaseDmgReduce,
	                     num_id = 180,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1090] = {
	          name = "�߼���ȡ�๥",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.PhaseDmgReduce,
	                     num_id = 181,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1091] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.AcceptHealEffectInc,
	                     num_id = 182,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1092] = {
	          name = "�߼�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.AcceptHealEffectInc,
	                     num_id = 183,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1093] = {
	          name = "��Ѫת��",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.DmgImmuneConvertToHp,
	                     num_id = 184,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.DmgConvertToHpValue,
	                     num_id = 185,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1094] = {
	          name = "�߼���Ѫת��",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.DmgImmuneConvertToHp,
	                     num_id = 186,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.DmgConvertToHpValue,
	                     num_id = 187,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1095] = {
	          name = "������ȡ",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ATWithMpSucking,
	                     num_id = 188,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1096] = {
	          name = "�߼�������ȡ",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ATWithMpSucking,
	                     num_id = 189,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1097] = {
	          name = "������ʧ",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ATWithMpOutflow,
	                     num_id = 190,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1098] = {
	          name = "�߼�������ʧ",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ATWithMpOutflow,
	                     num_id = 191,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1099] = {
	          name = "�Է�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ReplaceHpWithMp,
	                     num_id = 192,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.ReplaceHpWithMpValue,
	                     num_id = 193,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1100] = {
	          name = "�߼��Է�����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.ReplaceHpWithMp,
	                     num_id = 194,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.ReplaceHpWithMpValue,
	                     num_id = 195,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1101] = {
	          name = "����",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.DmgIncORHpHeal,
	                     num_id = 196,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.HPHealProb,
	                     num_id = 197,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [3] = { 
	                     type = PetPassiveEffect.HPHealValue,
	                     num_id = 198,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [4] = { 
	                     type = PetPassiveEffect.ATDmgIncValue,
	                     num_id = 199,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [1102] = {
	          name = "��������",
	          consume_type = nil,
	          skill_type = PetSkillType.StatePassive,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = PetPassiveEffect.DmgIncORHpHeal,
	                     num_id = 200,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = PetPassiveEffect.HPHealProb,
	                     num_id = 201,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [3] = { 
	                     type = PetPassiveEffect.HPHealValue,
	                     num_id = 202,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [4] = { 
	                     type = PetPassiveEffect.ATDmgIncValue,
	                     num_id = 203,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2001] = {
	          name = "�ɻ����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 39,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2002] = {
	          name = "�����ɢ",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 40,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2003] = {
	          name = "������ɢ",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 37,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2004] = {
	          name = "���Ƹ���",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 38,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2005] = {
	          name = "��Ӱ����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 35,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2006] = {
	          name = "�ù�����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 36,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2007] = {
	          name = "�����Ұ",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 48,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2008] = {
	          name = "�������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 49,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2009] = {
	          name = "�콵����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 41,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2010] = {
	          name = "�ƻ���ľ",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 50,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2011] = {
	          name = "������Х",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 46,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2012] = {
	          name = "̫�����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 45,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2013] = {
	          name = "�������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 47,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2014] = {
	          name = "һ�򵱹�",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 42,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2015] = {
	          name = "ʿ������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 44,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2016] = {
	          name = "�Ȼ�֮��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 43,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2017] = {
	          name = "���崺��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 51,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2018] = {
	          name = "���׶Ͽ�",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 52,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2019] = {
	          name = "��������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 53,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2020] = {
	          name = "�����߽�",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 54,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2021] = {
	          name = "�������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 55,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2022] = {
	          name = "���з���",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 56,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2023] = {
	          name = "ϸ��΢��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 57,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2024] = {
	          name = "����Ѹ��",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 58,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2025] = {
	          name = "��˪��ӡ",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 59,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2026] = {
	          name = "���Ϻ���",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 60,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2027] = {
	          name = "�ٻ����",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 61,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [2028] = {
	          name = "ݱ������",
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill_type = PetSkillType.Buff,
	          phase_type = PhaseType.None,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 62,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
 }
