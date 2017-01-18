--[[SystemSkillDB.lua
������
	
--]]

--ս������
SystemSkillDB = {
	[1] = {
		name = 'ģ��',
		skill_type = Skill_Type.Normal,
		phase_type = PhaseType.Fire,--�����˺�
		cool_round = 2,--��ȴ�غ�
		skill = {
			[1] = {
				type = SkillEff.At, --�Ӽ���
				num_id = 3, --������ֵ
				target_type = TargetType.enemy, --Ŀ������
				target_id = 5,--������ֵ
			},
		},
	},
	[2] = {
		name = '�����﹥',
		skill_type = Skill_Type.Normal,
		skill = {
			[1] = {
				type = SkillEff.At,
				num_id = 3,
				target_type = TargetType.enemy,
			},
		}
	},
	[3] = {
		name = 'Ⱥ���﹥',
		skill_type = Skill_Type.Normal,
		skill = {
			[1] = {
				type = SkillEff.At,
				num_id = 3,
				target_type = TargetType.enemy_g,
				target_id = 3,
			},
		}
	},
	[4] = {
		name = 'Ⱥ��buff',
		skill_type = Skill_Type.Buff,
		skill = {
			[1] = {
				type = SkillEff.Buff,
				num_id = 7,
				target_type = TargetType.enemy_g,
				target_id = 3,
			},
		},
	},
	[5] = {
		name = 'Ⱥ��ָ�hp+mp',
		skill_type = Skill_Type.Heal,
		skill = {
			[1] = {
				type = SkillEff.HpHeal,
				num_id = 8,
				target_type = TargetType.enemy_g,
				target_id = 3,
			},
			[2] = {
				type = SkillEff.MpHeal,
				num_id = 8,
				target_type = TargetType.enemy_g,
				target_id = 3,
			},
		},
	},
	[6] = {
		name = 'Ⱥ����ɢ',
		skill_type = Skill_Type.Dispel,
		skill = {
			[1] = {
				type = SkillEff.Dispel,
				num_id = 15,
				target_type = TargetType.enemy_g,
				target_id = 3,
			},
		}
	},
}