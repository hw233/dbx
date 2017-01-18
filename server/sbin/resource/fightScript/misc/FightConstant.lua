--[[FightConstant .lua
������
	ʵ�峣��
	--misc.FightConstant �ű����ļ�
]]

--ս������
FightType = {
		PVE = 1,
		PVP = 2,
		Script = 3,
}

--ս����������
FightActionType = {
		Auto			= 1,	-- �Զ�
		CommonAttack	= 2,	-- ��ͨ����
		UseCommonSkill	= 3,	-- ʹ�ü���
		Protect			= 4,	-- ����
		Escape			= 5,	-- ����
		UseMaterial		= 6,	-- ʹ����Ʒ
		Catch			= 7,	-- ��׽
		Defense			= 8,	-- ����
		Call			= 9,	-- �ٻ�
		CallBack		= 10,	-- �ٻ�
		System			= 11,   --ϵͳ

		UseUniteSkill	= 20,	-- ʹ�úϻ�����
		UseBuffSkill	= 21,	-- ʹ��Buff����
		UseResumeSkill	= 22,	-- ʹ�ûָ�����
		SystemSkill		= 23,	-- ϵͳ����
		DispelSkill		= 24,	-- ��ɢ����
		Relive			= 25,	-- ����
		Buff 			= 26, 	--buff
}

FightCallType = {
	Monster = 1,
	Pet		= 0,
}

--վλ��ɫ����
StandRoleType = {
			Player = 1,
			Pet = 2,
			Monster = 3,
			Npc	= 4,
}

--��������
monsterType = 
{
	commonMonster	= 1,--��ͨ����
	bossMonster		= 2,--boss����
}
AIType = {
			Config = 1,--��ͨ
			Script = 2,--�ű�
}
--ս������
FightStandMap = {
		[FightType.PVE] = {
					--a�����
					[1] =	{
							--1�����
							[1] = { 
								[StandRoleType.Player] = {8},
								[StandRoleType.Pet] = {6},
								[StandRoleType.Npc] =	{
									  [1] = {11},
									  [2] = {11,3},
									  [3] = {2,4,11},
									},
							       },
							--2�����
							[2] = { 
								[StandRoleType.Player] = {7,4},
								[StandRoleType.Pet] = {5,2},
								[StandRoleType.Npc] =	{
									  [1] = {10},
									  [2] = {10,12},
									  [3] = {10,11,12},
									},
							       },
							--3�������
							[3] = { 
								[StandRoleType.Player] = {7,4,12},
								[StandRoleType.Pet] = {5,2,10},
								[StandRoleType.Npc] =	{
									  [1] = {11},
									  [2] = {11,3},
									  [3] = {11,3,6},
									},
							       },
							--4�������
							[4] = { 
								[StandRoleType.Player] = {7,4,11,16},
								[StandRoleType.Pet] = {5,2,9,14},
								[StandRoleType.Npc] =	{
									  [1] = {4},
									  [2] = {4,5},
									  [3] = {4,5,7},
									  [4] = {4,5,7,8},
									},
							       },
							--5�������
							[5] = { 
								[StandRoleType.Player] = {1,9,10,7,8},
								[StandRoleType.Pet] = {11,4,5,2,3},
								[StandRoleType.Npc] =	{
									  [1] = {6},
									  [2] = {6,12},
									  
									},
							       },
						},
					--b�߹���:[��������]={λ��1��λ��2}
					[2] =	{
							[1] = {26},
							[2] = {25,27},
							[3] = {26,21,29},
							[4] = {22,25,27,30},
							[5] = {26,21,29,23,31},
							[6] = {21,23,26,28,29,31},
							[7] = {21,23,26,28,30,32,33},
							[8] = {21,23,26,28,30,32,33,35},
						},
				
				 },

	[FightType.PVP] = {
					--a�����
					[1] =	{
							--1�����
							[1] = { 
								[StandRoleType.Player] = {8},
								[StandRoleType.Pet] = {6},
								[StandRoleType.Npc] =	{
									  [1] = {11},
									  [2] = {11,3},
									  [3] = {2,4,11},
									},
							       },
							--2�����
							[2] = { 
								[StandRoleType.Player] = {7,4},
								[StandRoleType.Pet] = {5,2},
								[StandRoleType.Npc] =	{
									  [1] = {10},
									  [2] = {10,12},
									  [3] = {10,11,12},
									},
							       },
							--3�������
							[3] = { 
								[StandRoleType.Player] = {7,4,12},
								[StandRoleType.Pet] = {5,2,10},
								[StandRoleType.Npc] =	{
									  [1] = {11},
									  [2] = {11,3},
									  [3] = {11,3,6},
									},
							       },
							 --4�������
							[4] = { 
								[StandRoleType.Player] = {7,4,11,16},
								[StandRoleType.Pet] = {5,2,9,14},
								[StandRoleType.Npc] =	{
									  [1] = {4},
									  [2] = {4,5},
									  [3] = {4,5,7},
									  [4] = {4,5,7,8},
									},
							       },
						},
					--b�����:
					[2] =	{
							--1�����
							[1] = { 
								[StandRoleType.Player] = {25},
								[StandRoleType.Pet] = {27},
								[StandRoleType.Npc] =	{
									  [1] = {25},
									  [2] = {25,17},
									  [3] = {18,16,25},
									},
							       },
							--2�����
							[2] = { 
								[StandRoleType.Player] = {26,21},
								[StandRoleType.Pet] = {28,23},
								[StandRoleType.Npc] =	{
									  [1] = {26},
									  [2] = {26,24},
									  [3] = {26,25,24},
									},
							       },
							--3�������
							[3] = { 
								[StandRoleType.Player] = {26,21,29},
								[StandRoleType.Pet] = {28,23,31},
								[StandRoleType.Npc] =	{
									  [1] = {25},
									  [2] = {25,17},
									  [3] = {25,17,22},
									},
							       },
						         --4�������
							[4] = { 
								[StandRoleType.Player] = {27,22,31,34},
								[StandRoleType.Pet] = {28,23,32,35},
								[StandRoleType.Npc] =	{
									  [1] = {4},
									  [2] = {4,5},
									  [3] = {4,5,7},
									  [4] = {4,5,7,8},
									},
							       },
						},
				
				 },
}
PVPPosMap =
{
	["a->b"]={
		[1]=24,[2]=23,[3]=22,[4]=21,
		[5]=28,[6]=27,[7]=26,[8]=25,
		[9]=32,[10]=31,[11]=30,[12]=29,
		[13]=36,[14]=35,[15]=34,[16]=33,
	},
	["b->a"]={
		[21]=4,[22]=3,[23]=2,[24]=1,
		[25]=8,[26]=7,[27]=6,[28]=5,
		[29]=12,[30]=11,[31]=10,[32]=9,
		[33]=16,[34]=15,[35]=14,[36]=13,
	},
}

FightMapPoses = {a={},b={}}
for posA , posB in pairs(PVPPosMap["a->b"]) do
	FightMapPoses.a[posA] = true
	FightMapPoses.b[posB] = true
end

FightClientDefaultMapID = 2
FightMaxRound = 99
FullMaxHpMpLevel = 25
PunishVigorReduction = 10
PunishDurReductionPerc = 10

FightBussinessType = 
{
	Wild	= 1,--Ұ��
	Excise	= 2,--�д�
	PK		= 3,--PK
	Task	= 4,--����
	Test	= 5,--����
	Collect = 6,--�ɼ�
	Treasure= 7,--�ر�ͼ

}
CallPetLevelNeed = 10
ReadyPetExpOff = 20
PetWinReduceLife = {10,20}