--[[SkillConstant.lua
	������
	
--]]
require "attribute.PetAttrDefine"
require "attribute.PlayerAttrDefine"

AttackIncAnger 		= 10 	-- ʹ�ü��ܹ���ʱ���ӵ�ŭ��ֵ
BeAttackIncAnger 	= 10 	-- ������ʱ���ӵ�ŭ��ֵ

FluctuateFactor		= 10	-- ��������,���ڼ��㲨��ֵ
MustCriticalValue	= 233	-- �ض�������ֵ
MustHitValue		= 233	-- �ض�������ֵ

-- ���ݼӳɼ�������
AddType = {
	value 			= 1, 	-- �̶�ֵ
	percent 		= 2, 	-- �ٷֱ�
	mix 			= 3, 	-- {150,35}�Ȱٷֱ�,�ٹ̶�ֵ(���ڼ����˺�����:�̶�������*�ٷֱ�, �����˺�Ϊ�̶�ֵ���²���)
}

-- �������
SchoolType = {
	PM      = 0x00,
	QYD     = 0x01,		-- ǬԪ��
	JXS     = 0x02,		-- ��ϼɽ
	ZYM     = 0x03,		-- ������
	YXG     = 0x04,		-- ������
	TYD     = 0x05,		-- ��Դ��
	PLG     = 0x06,		-- ������
}

PhaseName = {
	[PhaseType.Soil]		= "��",
	[PhaseType.Ice]			= "��",
	[PhaseType.Fire]		= "��",
	[PhaseType.Poison]		= "��",
	[PhaseType.Thunder]		= "��",
	[PhaseType.Wind]		= "��",
	[PhaseType.None]		= "��",
}

-- �������Զ�Ӧ
SchoolPhase = {
	[SchoolType.QYD]	= PhaseType.Fire,
	[SchoolType.JXS]	= PhaseType.Soil,
	[SchoolType.ZYM]	= PhaseType.Wind,
	[SchoolType.YXG]	= PhaseType.Thunder,
	[SchoolType.TYD]	= PhaseType.Poison,
	[SchoolType.PLG]	= PhaseType.Ice,
}

-- �˺�����
DamageType = {
	Wind    	= 1,	-- ��
	Thunder 	= 2,	-- ��
	Ice     	= 3,	-- ��
	Fire    	= 4,	-- ��
	Soil    	= 5,	-- ��
	Poison  	= 6,	-- ��
	None    	= 7,	-- ��
	Physic		= 8,	-- ����
	Magic		= 9,	-- ħ��
}

--���＼������
PetSkillType = {
	Normal 			= 0x001, 		-- ��ͨ�˺�
	Buff 			= 0x002, 		-- buff
	AttrPassive 	= 0x103,		-- ���Ա���
	StatePassive 	= 0x104, 		-- ״̬����
}

--�������� �� �Ӽ���ӳ���(����ӳ��)
SkillTypeEff = {
	[Skill_Type.Normal]		= {1, 2, 3,},  					-- ��ͨ���ܰ������Ӽ���, ���Ⱥ�˳��
	[Skill_Type.Buff]		= {4},							-- Buff����
	[Skill_Type.Heal]		= {5, 6},						-- �ָ�����
	[Skill_Type.Passive]	= {17, 18, 19, 20, 21, 22},		-- ��������
	[Skill_Type.Transport]	= {},							-- ���ͼ���
	[Skill_Type.UnionHit]	= {9},							-- �ϻ�����
	[Skill_Type.ToolMake]	= {},							-- ��������
	[Skill_Type.Ultimate]	= {11, 12, 1, 2, 4, 5},			-- ���ɴ���
	[Skill_Type.Tranform]	= {4, 5},						-- ����
	[Skill_Type.Revival] 	= {13, 5, 6,},					-- ����
	[Skill_Type.BuffDmg] 	= {4, 1, 2},					-- ��buff�˺�
	[Skill_Type.Arrows] 	= {12, 1},						-- ����
	[Skill_Type.Dispel] 	= {14, 2},						-- ��ɢ
	[Skill_Type.ReduceMp] 	= {16},							-- ����
	[Skill_Type.Gathering] 	= {4,1,2},						-- ����
}

--�ķ����Լӳ�����
AttrAddType = {
	At 			= 1,	-- ����������ֵ
	Mt 			= 2,	-- ������������ֵ
	ObsHit 		= 3,	-- �ϰ����м�ֵ
	Defense 	= 4,	-- ȫ����������ֵ
	PhaseDf 	= 5,	-- ȫ���Կ��Լ�ֵ
	AngerAdd 	= 6,	-- ������üӳ�
	MaxHp 		= 7,	-- �������޼�ֵ
}

--��ɫ����
RoleType = {
	Player 	= 1,
	Monster = 2,
	Npc 	= 3,
	Pet 	= 4,
}

AtType = {
	At = 1,
	Mt = 2,
}

SystemSkillType = {	
	Normal 		= 1,	-- ��ͨ����
	Buff 		= 2,	-- Buff����
	Heal 		= 3,	-- �ָ�����
	Ultimate 	= 8,	-- ���ɴ���
	Tranform 	= 9,	-- ����
	BuffDmg 	= 11,	-- ��buff�˺�
	Arrows 		= 12,	-- ����
	Dispel 		= 13,	-- ��ɢ
	ReduceMp 	= 14,	-- ����
}

--��Ч��
SystemSkillEff = {
	At 			= 1,	-- �����˺�
	Mt 			= 2,	-- �����˺�
	Buff 		= 4,	-- buff
	HpHeal 		= 5,	-- �����ָ�
	MpHeal 		= 6,	-- �����ָ�
	ReduceMp 	= 16,	-- ����
	Dispel 		= 14,	-- ������ɢ

	FireAt 		= 17,	-- �𹥻�
	WindAt 		= 18,	-- �繥��
	ThunderAt	= 19,	-- �׹���
	SoilAt 		= 20,	-- ������
	IceAt 		= 21,	-- ������
	PoisonAt 	= 22,	-- ������
}

SystemSkillEffOrder = {
	14, 16, 5, 6, 4, 2, 1,
}

-- ����ӳ��� 1���� 2������ 3������
RestraintMapping = {
	{2, 2, 1, 3, 1, 3, 2},
	{2, 2, 1, 3, 1, 3, 2},
	{3, 3, 2, 1, 2, 3, 2},
	{1, 1, 3, 2, 3, 2, 2},
	{3, 3, 2, 1, 2, 3, 2},
	{1, 1, 3, 2, 3, 2, 2},
	{2, 2, 2, 2, 2, 2, 2},
}

-- ���ƽ��
RestraintType = {
	Restrain 		= 1,	-- ����
	NoneRrestrain	= 2,	-- ������
	BeRestrained	= 3,	-- ������
}

-- ����ϵ��(���ڼ����˺�)
RestraintCoef = {
	[RestraintType.Restrain] 		= 1.2,
	[RestraintType.NoneRrestrain] 	= 1,
	[RestraintType.BeRestrained] 	= 0.8,
}

-- ���ﱻ������Ч��
PetPassiveEffect = {
	--�����ķ�
	AllAt 						= 10001,		-- ȫ��������
	AllDF 						= 10002,		-- ȫ��������
	MaxHp 						= 10003,		-- ���hp
	MaxMp 						= 10004,		-- ���mp
	Speed 						= 10005,		-- �ٶ�
	At 							= 10006,		-- �﹥
	Mt 							= 10007, 		-- ����
	Af 							= 10008,		-- ���
	Mf							= 10009,		-- ����

	Dodge 						= 10010,		-- ����
	AntiCrit 					= 10011, 		-- ����
	CritProb 					= 10012,		-- ��������
	CritDmgRatio 				= 10013,		-- �����˺��ӳ�
	HitProb 					= 10014,		-- ������
	
	--���Թ������ķ�
	FireAt 						= 10101,		--�𹥻�
	WindAt 						= 10102,		--�繥��
	ThunderAt 					= 10103,		--�׹���
	SoilAt 						= 10104,		--������
	IceAt 						= 10105,		--������
	PoisonAt 					= 10106,		--������

	--���Եֿ�
	FireResist 					= 10201,		-- ��
	WindResist 					= 10202,		-- �翹
	ThunderResist 				= 10203,		-- �׿�
	SoilResist 					= 10204,		-- ����
	IceResist 					= 10205,		-- ����
	PoisonResist 				= 10206,		-- ����

	--���ϰ�ϵ�ķ�
	AntiTaunt 					= 10301,		-- ������
	AntiChaos 					= 10302,		-- ������
	AntiFreeze 					= 10303,		-- ������
	AntiPoison 					= 10304,		-- ����
	AntiSilence 				= 10305,		-- ����Ĭ
	Antisopor 					= 10306,		-- ����˯

	-- ��������
	PhysicalPursuit 			= 10401,		-- ��������
	PhysicalATKChangeValue		= 10402,		-- ���������ı���ֵ	
	PhysicalATCritAdd			= 10403,		-- ��������������
	CounterFightImmune			= 10404,		-- ��������
	StrikeBackImmune			= 10405,		-- ��������
	AllATKChangeValue			= 10406,		-- ���й������ı���ֵ	
	MagicalPursuit				= 10407,		-- ��������
	MagicalATCrit				= 10408,		-- �����˺����
	MagicalATDmgChangeValue		= 10409,		-- ���������˺��ı���ֵ
	MagicalATDmgFluctuate		= 10410,		-- ���������˺�����		
	DmgIncORHpHeal				= 10411,		-- �˺��ӳ�or�����ָ�
	HPHealProb 					= 10412,		-- �ָ�Ѫ������
	HPHealValue					= 10413,		-- �ָ�Ѫ����ֵ
	ATDmgIncValue				= 10414,		-- �����˺������ֵ
	
	PATWithBloodSucking			= 10415,		-- ��������Ѫ	
	ATWithBreakDefense 			= 10416,		-- ���������Ʒ�
	BreakDefenseBuff			= 10417,		-- �Ʒ�BUFF
	ATWithInjured 				= 10418,		-- ������������
	InjuredBuff					= 10419,		-- ����BUFF
	ATWithMpSucking 			= 10420,		-- ������ȡ	
	ATWithMpOutflow 			= 10421,		-- ������ʧ

	-- ��������
	NormalStrikeBack 			= 10501,		-- ������
	NormalStrikeBackValue 		= 10502,		-- ��������ֵ	
	MagicalStrikeBack			= 10503,		-- ��������
	MagicalStrikeBackValue 		= 10504,		-- ����������ֵ	
	CounterFight				= 10505,		-- �Զ�����
	CounterFightValue			= 10506,		-- �Զ������˺���ֵ	
	CritImmune					= 10507,		-- ��������
	MagicalATDodge				= 10508,		-- ������������	
	PhysicalATDodge				= 10509,		-- ����������	
	Revival						= 10510,		-- ����
	
	PhysicalDmgReduce			= 10511, 		-- �����˺�����
	MagicalDmgReduce			= 10512, 		-- �����˺�����
	MagicalDmgImmune			= 10513, 		-- �����˺�����
	PhaseDmgReduce	 			= 10514, 		-- �����˺�����
	PhaseDmgImmune				= 10515, 		-- �����˺�����
	
	DmgImmuneConvertToHp		= 10516, 		-- �˺����ߣ��˺�ת��Ѫ��
	DmgConvertToHpValue			= 10517, 		-- �˺�ת��Ѫ����ֵ
	ReplaceHpWithMp				= 10518,		-- �����������	
	ReplaceHpWithMpValue		= 10519,		-- �������������ֵ	
	AcceptAssistRoundAdd		= 10520, 		-- �ܵ��ĸ����෨��Ч�������غ�������
	AcceptHealEffectInc			= 10521,		-- ��������Ч������
	
	-- ����ս��������
	MpConsumeReduce				= 10601,		-- �������ļ���
	MagicalATKChangeValue		= 10602,		-- �����������ı���ֵ
	MagicalDEFChangeValue		= 10603,		-- �����������ı���ֵ
	
	-- �غϴ���
	RoundHpHeal			 		= 10701, 		-- �غϻָ�Ѫ��
	RoundMpHeal					= 10702, 		-- �غϻָ�����
	RoundDeBuffDispel			= 10703, 		-- �غϼ�����ɢ
}

-- ����״̬�������͵���Ӧ״̬���Գ�ʼ����������
PetPassiveType2FuncStr = {
	-- ��������
	[PetPassiveEffect.PhysicalPursuit]			= "pPhysicalPursuit",				-- �����������������������½�
	[PetPassiveEffect.PhysicalATCritAdd]		= "pPhysicalATCrit",				-- ��ɱ���������������
	[PetPassiveEffect.CounterFightImmune]		= "pSBAndCFImmuneWithATKInc", 		-- ͵Ϯ�����𷴻����ߣ��������
	[PetPassiveEffect.MagicalPursuit]			= "pMagicalPursuit",				-- ����������������������
	[PetPassiveEffect.MagicalATCrit] 			= "pMagicalATCrit",					-- �����������м��ʷ����������
	[PetPassiveEffect.MagicalATDmgFluctuate] 	= "pMagicalATDmgFluctuate",			-- �������������������˺�����
	[PetPassiveEffect.DmgIncORHpHeal] 			= "pDmgIncORHpHeal",				-- ���죺�����˺��ӱ������ʻָ�Ѫ������˺�
	
	-- ������������������Ч��
	[PetPassiveEffect.PATWithBloodSucking]		= "pPATWithBloodSucking",			-- ��Ѫ����������Ѫ
	[PetPassiveEffect.ATWithBreakDefense]		= "pATWithBreakDefense",			-- �Ʒ������������Ʒ����Է��з���������ɶ����˺�
	[PetPassiveEffect.ATWithInjured]			= "pATWithInjured",					-- ���ˣ�������������BUFF
	[PetPassiveEffect.ATWithMpSucking]			= "pATWithMpSucking",				-- ������ȡ���������շ���
	[PetPassiveEffect.ATWithMpOutflow] 			= "pATWithMpOutflow",				-- ������ʧ����������������ʧ
	
	-- ��������
	[PetPassiveEffect.NormalStrikeBack]			= "pNormalStrikeBack",				-- ����������ͨ����
	[PetPassiveEffect.MagicalStrikeBack]		= "pMagicalStrikeBack",				-- �����������������ܷ���
	[PetPassiveEffect.CounterFight]				= "pCounterFight",					-- ���𣺼��ʷ���
	[PetPassiveEffect.CritImmune]				= "pCritImmuneAndMATDodge",			-- ���ˣ��������ߣ��м��ʷ�����������
	[PetPassiveEffect.PhysicalATDodge] 			= "pPhysicalATDodge",				-- �мܣ�����������
	[PetPassiveEffect.Revival] 					= "pRevival",						-- ����������ָ�����
	
	-- �����������˺����⡢����
	[PetPassiveEffect.PhysicalDmgReduce]		= "pPhysicalDmgReduce",				-- ��ȡ���ˣ����������˺�
	[PetPassiveEffect.MagicalDmgReduce]			= "pMagicalDmgReduce",				-- ��ȡ���ˣ����ⷨ���˺�
	[PetPassiveEffect.MagicalDmgImmune]			= "pMagicalDmgImmune",				-- �������ߣ��м��ʷ����˺�����
	[PetPassiveEffect.PhaseDmgReduce]			= "pPhaseDmgReduce",				-- ��ȡ�๥�����������˺�
	[PetPassiveEffect.PhaseDmgImmune] 			= "pPhaseDmgImmune",				-- �������ߣ��м��������˺�����
	[PetPassiveEffect.DmgImmuneConvertToHp] 	= "pDmgImmuneConvertToHp",			-- ��Ѫת�����м����˺�����ͬʱת��ΪѪ��
	[PetPassiveEffect.ReplaceHpWithMp] 			= "pReplaceHpWithMp",				-- �Է������������������
	
	-- ������������
	[PetPassiveEffect.AcceptAssistRoundAdd] 	= "pAcceptAssistRoundAdd",			-- ���㣺�ܵ������༼�ܳ����غ�����
	[PetPassiveEffect.AcceptHealEffectInc] 		= "pAcceptHealEffectInc",			-- ���񣺽�������Ч�����

	-- ����ս��������
	[PetPassiveEffect.MpConsumeReduce] 			= "pMpConsumeReduce",				-- �۸����������Ľ���
	[PetPassiveEffect.MagicalATKChangeValue] 	= "pMagicalATKInc",					-- ħ֮�ģ������������
	[PetPassiveEffect.MagicalDEFChangeValue] 	= "pMDEFIncAndPATKReduce",			-- �����ֿ����ֿ������˺���ħ����ߣ��������½�

	-- �غϴ���
	[PetPassiveEffect.RoundHpHeal] 				= "pRoundHpHeal",					-- �������غϻָ�Ѫ��
	[PetPassiveEffect.RoundMpHeal] 				= "pRoundMpHeal",					-- ڤ�룺�غϻָ�����
	[PetPassiveEffect.RoundDeBuffDispel] 		= "pRoundDeBuffDispel",				-- �񼣣��غϼ�����ɢ	
}

--���Ա���������ľ�����������(	������������ )
PetSkillEffect2AttrName = {
	[PetPassiveEffect.WindAt]			= { nil,pet_inc_win_at },
	[PetPassiveEffect.WindResist]		= { nil,pet_inc_win_resist },
	[PetPassiveEffect.ThunderAt]		= { nil,pet_inc_thu_at },
	[PetPassiveEffect.ThunderResist]	= { nil,pet_inc_thu_resist },
	[PetPassiveEffect.IceAt]			= { nil,pet_inc_ice_at },
	[PetPassiveEffect.IceResist]		= { nil,pet_inc_ice_resist },
	[PetPassiveEffect.SoilAt]			= { nil,pet_inc_soi_at },
	[PetPassiveEffect.SoilResist]		= { nil,pet_inc_soi_resist },
	[PetPassiveEffect.FireAt]			= { nil,pet_inc_fir_at },
	[PetPassiveEffect.FireResist]		= { nil,pet_inc_fir_resist },
	[PetPassiveEffect.PoisonAt]			= { nil,pet_inc_poi_at },
	[PetPassiveEffect.PoisonResist]		= { nil,pet_inc_poi_resist },
	
	[PetPassiveEffect.At]				= { pet_add_at,pet_inc_at, },
	[PetPassiveEffect.Mt]				= { pet_add_mt,pet_inc_mt, },
	[PetPassiveEffect.Af]				= { pet_add_af,pet_inc_af, },
	[PetPassiveEffect.Mf]				= { pet_add_mf,pet_inc_mf },
	
	[PetPassiveEffect.MaxHp]			= { pet_add_max_hp,pet_inc_max_hp },
	[PetPassiveEffect.MaxMp]			= { pet_add_max_mp,pet_inc_max_mp },
	[PetPassiveEffect.Speed]			= { pet_add_speed,pet_inc_speed },
	[PetPassiveEffect.CritProb]			= { pet_add_critical,nil },	
	[PetPassiveEffect.CritDmgRatio]		= { pet_inc_critical_effect,pet_inc_critical_effect },
	
	[PetPassiveEffect.HitProb]			= { pet_add_hit, },
	[PetPassiveEffect.Dodge]			= { pet_add_dodge, },
	[PetPassiveEffect.AntiCrit]			= { pet_add_tenacity },
	
	[PetPassiveEffect.AntiTaunt]		= { pet_add_taunt_resist,pet_inc_taunt_resist },
	[PetPassiveEffect.AntiChaos]		= { pet_add_chaos_resist,pet_inc_chaos_resist },
	[PetPassiveEffect.AntiFreeze]		= { pet_add_freeze_resist,pet_inc_freeze_resist },
	[PetPassiveEffect.AntiPoison]		= { pet_add_toxicosis_resist,pet_inc_toxicosis_resist },
	[PetPassiveEffect.AntiSilence]		= { pet_add_silent_resist,pet_inc_silent_resist },
	[PetPassiveEffect.Antisopor]		= { pet_add_sopor_resist,pet_inc_sopor_resist },
}

PetSkillFuncType = {
	basic = 	1, -- ��������
	talent = 	2, -- �츳����
	god = 		3,
	mind = 		4, -- �ķ�����
}

-- ���＼������ �� �Ӽ���ӳ���(����ӳ��)
PetSkillTypeEff = {
	[PetSkillType.Normal]		= {1, 2, 3,},  					-- ��ͨ���ܰ������Ӽ���, ���Ⱥ�˳��
	[PetSkillType.Buff]			= {4,},							-- Buff����
	[PetSkillType.AttrPassive]	= {},							-- ���Ա���
	[PetSkillType.StatePassive]	= {},							-- ״̬����
}

-- ����Ч����Ӧִ�к�����
SkillEffect2ActionMap = {
	[SkillEff.At]			= {"NormalEffect", "doAt", "setNormalResult", "addNormalResultAction"},			-- �����˺�
	[SkillEff.Mt]			= {"NormalEffect", "doMt", "setNormalResult", "addNormalResultAction"},			-- �����˺�
	[SkillEff.Pursue]		= {"NormalEffect", "doPurse", "setNormalResult", "addNormalResultAction"},		-- ׷��
	[SkillEff.Buff]			= {"AddBuffEffect", "doAddBuff", "setBuffResult", "addBuffResultAction"},		-- buff
	[SkillEff.HpHeal]		= {"ResumeEffect", "doHpHeal", "setResumeResult", "addResumeResultAction"},		-- �����ָ�
	[SkillEff.MpHeal]		= {"ResumeEffect", "doMpHeal", "setResumeResult", "addResumeResultAction"},		-- �����ָ�

	[SkillEff.UnionHit]		= {"UnionEffect", "doUnionAt", "setUnionResult"},								-- �ϻ�
	[SkillEff.AddCrit]		= {"NormalEffect", "doAddCrit"},												-- ��������
	[SkillEff.AddHit]		= {"NormalEffect", "doAddHit"},													-- ��������
	[SkillEff.Revival]		= {"RevivalEffect", "doRevival", "setRevivalResult", "addRevivalResultAction"},	-- ����
	[SkillEff.Dispel]		= {"DispelEffect", "doDispel", "setDispelResult", "addDispelResultAction"},		-- ������ɢ
	[SkillEff.ReduceMp]		= {"ResumeEffect", "doMpReduce", "setResumeResult", "addResumeResultAction"},	-- ����

	[PetPassiveEffect.RoundHpHeal]			= {"ResumeEffect", "doHpHeal", "setResumeResult", "addResumeResultAction"},			-- �غ������ָ�
	[PetPassiveEffect.RoundMpHeal]			= {"ResumeEffect", "doMpHeal", "setResumeResult", "addResumeResultAction"},			-- �غϷ����ָ�
	[PetPassiveEffect.RoundDeBuffDispel]	= {"DispelEffect", "doDeBuffDispel", "setDispelResult", "addDispelResultAction"},	-- �غϼ�����ɢ
	[PetPassiveEffect.Revival]				= {"RevivalEffect", "doRevival", "setRevivalResult", "addRevivalResultAction"},		-- ����
	[PetPassiveEffect.HPHealValue]			= {"ResumeEffect", "doHpHeal", "setResumeResult", "addResumeResultAction"},			-- �ָ�����
}

-- ���������������
PetPrimaryMagicalSkills = {104, 110, 118, 126, 134, 142, 150}

-- ����߼���������
PetAdvancedMagicalSkills = {106, 112, 120, 128, 136, 144, 152}

GatheringRound = 1
