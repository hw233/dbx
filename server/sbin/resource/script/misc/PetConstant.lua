--[[PetConstant.lua
	����������ϵͳ����
]]

FightPetLevelParam = 10

-- ��������
PetType =
{
	-- Ұ��
	Wild	= 1,
	-- ����
	Baby	= 2,
	-- Ԫ��
	Spirit	= 3,
	-- ����
	Varient	= 4,
	-- ��
	God		= 5,
}

-- ���﹥������
PetAttackType =
{
	Physics = 0, -- ����
	Magic   = 1, -- ����
}

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

MaxPetLoyalty			= 10000		-- ���������ҳ϶�
PetLoyaltyFightParam	= 6000		-- �����ս�����ҳ϶��ٽ�ֵ
PetTalentBox			= 1026005	-- �츳���У�ʹ��֮������һ��������
MaxPetNum				= 3			-- Ĭ�ϳ�������С
MaxPetEnchance			= 9			-- �������ǿ���ȼ�
PetVarientRate			= 10		-- ϴ������������ĸ���
MaxPetTao				= 999999999	-- ����������
PetRepairCostMoney		= 2500		-- �����޸���Ҫ��Ǯ
DeadReducePetTao		= 16		-- �����������ٵĵ���ֵ
PetCombineFailRate		= 1			-- ����ϳ�ʧ�ܵĸ��� �ٷֱ�
PetMinCombineLvl		= 1			-- ����ϳ�����Ҫ����͵ȼ�

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
	{ pet_capacity,			pet_capacity_max,		"capacityGrowth" },
	{ pet_at_grow,			pet_at_grow_max,		"atGrowth" },
	{ pet_mt_grow,			pet_mt_grow_max,		"mtGrowth" },
	{ pet_af_grow,			pet_af_grow_max,		"afGrowth" },
	{ pet_mf_grow,			pet_mf_grow_max,		"mfGrowth" },
	{ pet_hp_grow,			pet_hp_grow_max,		"hpGrowth" },
	{ pet_at_speed_grow,	pet_at_speed_grow_max,	"speedGrowth" },
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

--����ǿ���ɹ�����
PetEnchanceProbability = {
	[0] = 6450,
	[1] = 1000,	
	[2] = 399,
	[3] = 214,
	[4] = 133,
	[5] = 90,
	[6] = 65,
	[7] = 49,
	[8] = 23
} 

PS_StartID = 1001	-- ���＼�ܿ�ʼID
PS_EndID = 1102		-- ���＼�ܽ���ID

-- �Ƿ�Ϊ�߼�����
function PS_IsAdvanced(skillID)
print("**************skillID",type(skillID))
print(debug.traceback())
	-- �������Χ�ڵ�ID���Ǽ���
	if skillID < PS_StartID or skillID > PS_EndID then
		return false,nil
	end
	if skillID % 2 == 0 then
		-- ż���ļ���ID�Ǹ߼�����,ͬʱ���صͼ�����ID
		return true,skillID - 1
	end
	return false,nil
end

-- �Ƿ��ǻ�������
function PS_IsBasic(skillID)
	if skillID < PS_StartID or skillID > PS_EndID then
		return false,nil
	end
	if skillID % 2 == 1 then
		-- �����ļ���ID�ǵͼ�����,ͬʱ���ظ߼�����ID
		return true,skillID + 1
	end
	return false,nil
end

PetTalentBox			= 1026005		--�츳���У�ʹ��֮������һ��������
PetTalentPill			= 1024007		--���ʵ�
PetEnchancePill			= 1024006		--ǿ����
PetRebirthPill			= 1024005		--��ͯ��
PetTaoPill				= 1024004		--���е�
PetEvloutPill			= 1024003		--���׵�
PetLifePill				= 1024002		--��Ԫ��
PetLoyaltyPill			= 1024001		--�ҳϵ�

-- ��ó���ǿ������
function GetEnchanceConsume(pet)
	local count = 1
	return PetEnchancePill,count
end

-- ��ó��ﻹͯ����
function GetRebirthConsume(pet)
	local count = 1
	return 1024005,count
end


