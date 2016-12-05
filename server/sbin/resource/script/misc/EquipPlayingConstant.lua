--[[EquipPlayingConstant.lua
������
	װ���淨��������
]]

-- װ���淨����
EquipPlaying =
{
	-- װ������
	EquipMake      = 1,
	-- װ�����
	EquipAnalyse   = 2,
	-- װ������
	EquipRemould   = 3,
	-- װ����������
	AttrReset      = 4,
	-- װ������ǿ��
	AttrImprove    = 5,
	-- װ������
	EquipRefining  = 6,
	-- ��Ʒ����
	AdornMake      = 7,
	-- ��Ʒ�ϳ�
	AdornSynthetic = 8,
}

-- װ������ȼ�����
EquipRemouldMaxLevel = 10

--װ�����������ۿ�
EquipDiscount = 0.8

--װ�����������
EquipRemouldType = 
{
	remould = 1,
	rollBack = 2,
}

--װ������������ɫ
EquipRemouldColour = 
{
	null = 0,
	White = 1,
	Blue = 2,
	Pink = 3,
	Gold = 4,
	Green = 5,
}

EquipMakeAddattrType = 
{
	SpellsOutput = 1,
	PhysicalOutput = 2,
	PhysicalNucleus = 3,
	HighSpeedControl = 4,
	Random = 5,
}

EquipRefiningphase = 
{
	win_phase = 1,
	thu_phase = 2,
	ice_phase = 3,
	soi_phase = 4,
	fir_phase = 5,
	poi_phase = 6,
}

--��װ����
Suit = {
	twoPieceSuit	= 2,
	fourPieceSuit	= 4,
	sixPieceSuit	= 6,
}

--װ��������ɫ
EquipAttrColor = {
	-- ��
	Blue   = 1,
	-- ��
	Pink = 2,
	-- ��
	Gold   = 3,
	-- ��
	Green  = 4,
}

--װ������λ�ö���������ɫ
AttrPositionToColor =
{
	[1] = EquipAttrColor.Blue,
	[2] = EquipAttrColor.Blue,
	[3] = EquipAttrColor.Blue,
	[4] = EquipAttrColor.Pink,
	[5] = EquipAttrColor.Gold,
	[6] = EquipAttrColor.Green,
}