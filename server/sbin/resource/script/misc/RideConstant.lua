--[[RideConstant .lua
������
	���ﳣ��
	--misc.RideConstant 
]]



-- ������Ĭ������
RideDefaultCapacity = 6
RideMaxCapacity = 24

--������������ƷԦ����,һ������ĸ���
ExpandRideBarItem = 1027001
ExpandRideBarCount = 2

--���������Ҫ����Ʒ����
RideToItem = 1027005

--���������Ҫ����Ʒ������׵�
RideGrowUpItem = 1027004

--10��������1������ֵ
RidingTimeCostVigor = 10

--�������׼�
RideMaxLevel = 9

RideMessageID = {
	RideBarDeficiency = 1,
	RideToItemFailure = 2,
	VigorDeficiency = 3,
}

RideState = 
{
	Ride_State_Fly = 1,
	Ride_State_Ride = 2,
	Ride_State_None = 3,
}

--��������
RideType = 
{
	Apis			= 1,--��ţ
	Fox				= 2,--����
	Lion			= 3,--ʨ��
	Bear			= 4,--��
	Hippo			= 5,--����
	Kylin			= 6,--����
	Crane			= 7,--���
	Leopard			= 8,--��
	Calabash		= 9,--��«
	Scorpion		= 10,--ħЫ
	Spider			= 11--֩��
}

--ÿ�׽��׶�Ӧ������׵�����Ϊ��-
RideGrowToItemCount = {
	[1] = 1,
	[2] = 2,
	[3] = 3,
	[4] = 4,
	[5] = 5,
	[6] = 6,
	[7] = 7,
	[8] = 8,
}

--ÿ�����������׳ɹ���Ϊ
RideGrowToSuccess = {
	[1] = 1,
	[2] = 0.8,
	[3] = 0.65,
	[4] = 0.5,
	[5] = 0.4,
	[6] = 0.3,
	[7] = 0.2,
	[8] = 0.1,
}