--[[PetConstant.lua
	����������ϵͳ����
]]

FightPetLevelParam = 10

-- ����״̬
PetStatus = {
	Rest	= 0,	--��Ϣ
	Ready	= 1,	--����
	Fight	= 2,	--��ս
	Sale	= 3,	--����
	Locked	= 4,	--����
	Store	= 5,	--�洢
}

-- ����ļ��ܵ���������
PetSkillCategory = {
	Basic		= 1,	--��������
	Superior	= 2,	--�߼�����
}

-- ���������ҳ϶�
MaxPetLoyalty = 10000
MaxPetNum				= 3			--Ĭ�ϳ�������С

-- ������������
PetInbornAttrMap = {
	[pet_inborn_str] = "inbornStr",
	[pet_inborn_int] = "inbornInt",
	[pet_inborn_sta] = "inbornSta",
	[pet_inborn_spi] = "inbornSpi",
	[pet_inborn_dex] = "inbornDex",
}

-- ����ɳ�����
PetGrowthAttrs = {
	{ pet_capacity,		pet_capacity_max,	"capacityGrowth" },
	{ pet_at_grow,		pet_at_grow_max,	"atGrowth" },
	{ pet_mt_grow,		pet_mt_grow_max,	"mtGrowth" },
	{ pet_af_grow,		pet_af_grow_max,	"afGrowth" },
	{ pet_mf_grow,		pet_mf_grow_max,	"mfGrowth" },
	{ pet_hp_grow,		pet_hp_grow_max,	"hpGrowth" },
	{ pet_speed_grow,	pet_speed_grow_max,	"speedGrowth" },
}

PetNormalRandom = CreateProbability {
	{0	,25	,0.4},
	{26	,50	,0.4},
	{51	,75	,0.1},
	{76	,100,0.1}
}

PetSpecialRandom = CreateProbability {
	{0	,25	,0.1},
	{26	,50	,0.4},
	{51	,75	,0.4},
	{76	,100,0.1}
}

PetCompoundRandom = CreateProbability {
	{0	,25	,0.1},
	{26	,50	,0.1},
	{51	,75	,0.4},
	{76	,100,0.4}
}

PS_StartID = 1001	-- ���＼�ܿ�ʼID
PS_EndID = 1102		-- ���＼�ܽ���ID
