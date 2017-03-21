--[[MainTaskDB1_20.lua
	��������1��20��(����ϵͳ)
]]

MainTaskDB1_20 =
{
	[10086] =
	{
		a = 2,
		g = {1,2,3,{t = 5}}
	},
	------------------------------1-25��----------------
	[1001] =
	{
		name = "�����ɾ�",
		startNpcID = nil,
		endNpcID = 20001,
		preTaskData = nil,
		nextTaskID = 1002,
		startDialogID =	100,
		endDialogID = 101,
		taskType2 = TaskType2.Main,
		school = nil,
		level =	{1,150},
		rewards	=
		{
			[TaskRewardList.player_xp] = 100,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 1000,    --����
			[TaskRewardList.player_pot] = 300,  	--����Ǳ��
		},
		consume	={},
		targets	={},
		triggers =
		{
			[TaskStatus.Done]		=
			{
			},
		},
	},
	[1002] =
	{
		name = "�ݼ�Ԫʼ",
		startNpcID = 20001,
		endNpcID = 20002,
		preTaskData = {1001},
		nextTaskID = 1003,
		startDialogID =	nil,
		endDialogID = 103,
		taskType2 = TaskType2.Main,
		school = nil,
		level =	{1,150},
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 110,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 2000,    --����
			[TaskRewardList.player_pot] = 600,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 219, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 8, x = 134, y	= 219,npcID = 20002,},},
			},
		},
	},
	[1003] =
	{
		name = "ͨ������",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20002,		--�������npc
		preTaskData = {1002},	--����ǰ������û����nil
		nextTaskID = {1004,1014,1024,1034,1044,1054},--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 107,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 240,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 3000,    --����
			[TaskRewardList.player_pot] = 900000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tscript',param = {scriptID	= 100 ,	count =1, ignoreResult = true,bor = true},}, --��һ���ű�ս��(�ű�ս��ID 100 ����)
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 107},}, --���������ʱ��һ���Ի���
			},
		},
	},
----------------------------------------------��ʼ������--------------------------------------
----------------------------------------------ǬԪ��--------------------------------------
	[1004] = -----------ǬԪ��
	{
		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1006,	--�����������û����nil
		startDialogID =nil,--452	--������Ի�IDû����nil
		endDialogID = 109,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 130,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 4000,    --����
			[TaskRewardList.player_pot] = 1200,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8, x = 148, y = 72, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 8, x = 148, y	= 72,npcID = 20003,},},
			},
		},
	},
	--[[[1005] =	--ǬԪ��
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1004},	--����ǰ������û����nil
		nextTaskID = 1006,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 111,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type = "TgetItem", param = {itemID = 1026006, count = 1 ,bor = true},}--����Ŀ���ȡ��Ʒ
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="getItem", param = {itemID = 1026006, count = 1,}},--�����Ʒ
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 111},},--���������ʱ��һ���Ի���
			},
		},
	},]]
	[1006] =	--ǬԪ��
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1004},	--����ǰ������û����nil
		nextTaskID = 1007,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 113,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		--����ָ����Ʒ��װ��Ŀ�꣨����д�����
		[1] = {type='TwearEquip',param = {equipID	= 2001086, bor = false},},--����
		[2] = {type='TwearEquip',param = {equipID	= 2001091, bor = false},},--����
		[3] = {type='TwearEquip',param = {equipID	= 2001092, bor = false},},--ͷ��
		[4] = {type='TwearEquip',param = {equipID	= 2001093, bor = false},},--ս��
		[5] = {type='TwearEquip',param = {equipID	= 2001094, bor = false},},--����
		[6] = {type='TwearEquip',param = {equipID	= 2001095, bor = false},},--Ь��
		},
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=
			{
			{type="getItem", param = {itemID = 1026006, count = 1,}},--�����Ʒ
			},
			[TaskStatus.Done]		=
			{
			{type = "openDialog", param={dialogID = 113},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1007] =	--ǬԪ��
	{
		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20004,		--�������npc
		preTaskData = {1006},------{1005},	--����ǰ������û����nil
		nextTaskID = 1008,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 116,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 1 , x = 26, y = 84, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type = "flyEffect", param = {flyEffectID = 101}},--�ɽ�����
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 1, x = 26, y = 84,npcID = 20004,},}, --Ѱ·������
			},
		},
	},
	[1008] =	--ǬԪ��
	{
		name = "�����ķ�",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20004,		--�������npc
		preTaskData = {1007},	--����ǰ������û����nil
		nextTaskID = 1009,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 118,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 600,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 7000,    --����
			[TaskRewardList.player_pot] = 2100,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 20101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 118},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1009] =	--ǬԪ��
	{
		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20004,	--ǬԪ������
		endNpcID = 20021,		--�����ǬԪ������
		preTaskData = {1008},--����ǰ������û����nil
		nextTaskID = 1010,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 120,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.QYD,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 8000,    --����
			[TaskRewardList.player_pot] = 2400,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 1, x = 32, y = 76, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 120},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1010] =	----ǬԪ��
	{
		name = "��׽����",	--��������
		startNpcID = 20021,	--ǬԪ������
		endNpcID = 20021,		--�����ǬԪ������
		preTaskData = {1009},--����ǰ������û����nil
		nextTaskID = 1011,--�����������û����nil
		startDialogID =nil,--������Ի�IDû����nil
		endDialogID = 122,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.QYD,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 9000,    --����
			[TaskRewardList.player_pot] = 2700,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 1 , x = 65, y = 97, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 1, x = 65, y = 97,}},--��������һ����������
				{type="createMine",
					param =
					{
					{mapID = 1, scriptID = {101,},fightMapID = nil,stepFactor = 0.1,mustCatch = true},
					}
				},
			},
			[TaskStatus.Done]		=
			{
				{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			    {type = "removeMine", param = {}}, -- �Ƴ�������
			},
		},
    },
	[1011] =	--ǬԪ��
	{
		name = "Ҫ������",	--��������
		startNpcID = 20021,	--����Ӷ���
		endNpcID = 20004,		--ǬԪ������
		preTaskData = {1010},--����ǰ������û����nil
		nextTaskID = 1012,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 124,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.QYD,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 1, x = 26, y = 84, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 1, x = 26, y	= 84,npcID = 20004,},},
			},
		},
	},
	[1012] =	--ǬԪ��
	{
		name = "ǰ����԰��",	--��������
		startNpcID = 20004,	--ǬԪ������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1011},--����ǰ������û����nil
		nextTaskID = 1013,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 127,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.QYD,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 72, y = 71, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
   [1013] =	--ǬԪ��
	{
		name = "��ֶ��",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1012}, --����ǰ������û����nil
		nextTaskID = 1064,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 129,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.QYD,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1000,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 88, y = 66, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 9, x = 88, y = 66,dir = Direction.EastNorth,},
						},
					},
			    },
			},
		},
	},
-------------------------------ǬԪ������--------------------------------------
----------------------------------------------��Դ��--------------------------------------
	[1014] = -----------��Դ��
	{
		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1016,	--�����������û����nil
		startDialogID =	nil,	--453--������Ի�IDû����nil
		endDialogID = 131,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 130,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 4000,    --����
			[TaskRewardList.player_pot] = 1200,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8, x = 148, y = 72, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 8, x = 148, y	= 72,npcID = 20003,},},
			},
		},
	},
	--[[[1015] =	--��Դ��
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1014},	--����ǰ������û����nil
		nextTaskID = 1016,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 133,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type = "TgetItem", param = {itemID = 1026013, count = 1 ,bor = true},}--����Ŀ���ȡ��Ʒ
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="getItem", param = {itemID = 1026013, count = 1,}},--�����Ʒ
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 133},},--���������ʱ��һ���Ի���
			},
		},
	},]]
	[1016] =	--��Դ��
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1014},	--����ǰ������û����nil
		nextTaskID = 1017,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 135,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		--����ָ����Ʒ��װ��Ŀ�꣨����д�����
		[1] = {type='TwearEquip',param = {equipID	= 2001088, bor = false},},--����
		[2] = {type='TwearEquip',param = {equipID	= 2001091, bor = false},},--����
		[3] = {type='TwearEquip',param = {equipID	= 2001092, bor = false},},--ͷ��
		[4] = {type='TwearEquip',param = {equipID	= 2001093, bor = false},},--ս��
		[5] = {type='TwearEquip',param = {equipID	= 2001094, bor = false},},--����
		[6] = {type='TwearEquip',param = {equipID	= 2001095, bor = false},},--Ь��
		},
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=
			{
				{type="getItem", param = {itemID = 1026013, count = 1,}},--�����Ʒ
			},
			[TaskStatus.Done]		=
			{
			{type = "openDialog", param={dialogID = 135},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1017] =	--��Դ��
	{
		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20005,		--�������npc
		preTaskData = {1016},------{1005},	--����ǰ������û����nil
		nextTaskID = 1018,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 138,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 4 , x = 59, y = 72, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type = "flyEffect", param = {flyEffectID = 102}},--�ɽ�����
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 4, x = 59, y = 72,npcID = 20005,},}, --Ѱ·������
			},
		},
	},
	[1018] =	--��Դ��
	{
		name = "�����ķ�",	--��������
		startNpcID = 20005,	--������ʼnpc
		endNpcID = 20005,		--�������npc
		preTaskData = {1017},	--����ǰ������û����nil
		nextTaskID = 1019,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 140,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 600,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 7000,    --����
			[TaskRewardList.player_pot] = 2100,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 50101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 140},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1019] =	--��Դ��
	{
		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20005,	--ǬԪ������
		endNpcID = 20025,		--�����ǬԪ������
		preTaskData = {1018},--����ǰ������û����nil
		nextTaskID = 1020,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 142,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.TYD,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 8000,    --����
			[TaskRewardList.player_pot] = 2400,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 4, x = 61, y = 93, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 142},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1020] =	----��Դ��
	{
		name = "��׽����",	--��������
		startNpcID = 20025,	--ǬԪ������
		endNpcID = 20025,		--�����ǬԪ������
		preTaskData = {1019},--����ǰ������û����nil
		nextTaskID = 1021,--�����������û����nil
		startDialogID =nil,--������Ի�IDû����nil
		endDialogID = 144,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.TYD,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 9000,    --����
			[TaskRewardList.player_pot] = 2700,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 4 , x = 136, y = 63, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 4, x = 136, y = 63,}},--��������һ����������
				{type="createMine",
					param =
					{
					{mapID = 4, scriptID = {101,},fightMapID = nil,stepFactor = 0.1,mustCatch = true},
					}
				},
			},
			[TaskStatus.Done]		=
			{
				{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			    {type = "removeMine", param = {}}, -- �Ƴ�������
			},
		},
    },
	[1021] =	--��Դ��
	{
		name = "Ҫ������",	--��������
		startNpcID = 20025,	--����Ӷ���
		endNpcID = 20005,		--ǬԪ������
		preTaskData = {1020},--����ǰ������û����nil
		nextTaskID = 1022,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 146,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.TYD,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 4, x = 59, y = 72, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 4, x = 59, y = 72,npcID = 20005,},},
			},
		},
	},
	[1022] =	--��Դ��
	{
		name = "ǰ����԰��",	--��������
		startNpcID = 20005,	--ǬԪ������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1021},--����ǰ������û����nil
		nextTaskID = 1023,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 149,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.TYD, 
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 72, y = 71, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
   [1023] =	--��Դ��
	{
		name = "��ֶ��",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1022}, --����ǰ������û����nil
		nextTaskID = 1064,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 151,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.TYD,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1000,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 88, y = 66, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 9, x = 88, y = 66,dir = Direction.EastNorth,},
						},
					},
			    },
			},
		},
	},
-------------------------------��Դ������--------------------------------------
----------------------------------------------��ϼɽ--------------------------------------
	[1024] = -----------��ϼɽ
	{
		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1026,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 153,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 130,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 4000,    --����
			[TaskRewardList.player_pot] = 1200,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8, x = 148, y = 72, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 8, x = 148, y	= 72,npcID = 20003,},},
			},
		},
	},
	--[[[1025] =	--��ϼɽ
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1024},	--����ǰ������û����nil
		nextTaskID = 1026,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 155,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type = "TgetItem", param = {itemID = 1026020, count = 1 ,bor = true},}--����Ŀ���ȡ��Ʒ
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="getItem", param = {itemID = 1026020, count = 1,}},--�����Ʒ
			},
			[TaskStatus.Done]		=
			{
			{type = "openDialog", param={dialogID = 155},}, --���������ʱ��һ���Ի���
			},
		},
	},]]
	[1026] =	--��ϼɽ
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1024},	--����ǰ������û����nil
		nextTaskID = 1027,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 157,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		--����ָ����Ʒ��װ��Ŀ�꣨����д�����
		[1] = {type='TwearEquip',param = {equipID	= 2001090, bor = false},},--����
		[2] = {type='TwearEquip',param = {equipID	= 2001091, bor = false},},--����
		[3] = {type='TwearEquip',param = {equipID	= 2001092, bor = false},},--ͷ��
		[4] = {type='TwearEquip',param = {equipID	= 2001093, bor = false},},--ս��
		[5] = {type='TwearEquip',param = {equipID	= 2001094, bor = false},},--����
		[6] = {type='TwearEquip',param = {equipID	= 2001095, bor = false},},--Ь��
		},
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=
			{
			{type="getItem", param = {itemID = 1026020, count = 1,}},--�����Ʒ
			},
			[TaskStatus.Done]		=
			{
			{type = "openDialog", param={dialogID = 157},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1027] =	--��ϼɽ
	{
		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20006,		--�������npc
		preTaskData = {1026},------{1005},	--����ǰ������û����nil
		nextTaskID = 1028,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 160,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 3 , x = 26, y = 92, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type = "flyEffect", param = {flyEffectID = 103}},--�ɽ�����
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 3, x = 26, y = 92,npcID = 20006,},}, --Ѱ·������
			},
		},
	},
	[1028] =	--��ϼɽ
	{
		name = "�����ķ�",	--��������
		startNpcID = 20006,	--������ʼnpc
		endNpcID = 20006,		--�������npc
		preTaskData = {1027},	--����ǰ������û����nil
		nextTaskID = 1029,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 162,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 600,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 7000,    --����
			[TaskRewardList.player_pot] = 2100,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 10101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 162},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1029] =	--��ϼɽ
	{
		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20006,	--ǬԪ������
		endNpcID = 20023,		--�����ǬԪ������
		preTaskData = {1028},--����ǰ������û����nil
		nextTaskID = 1030,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 164,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.JXS,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 8000,    --����
			[TaskRewardList.player_pot] = 2400,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 3, x = 33, y = 111, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 164},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1030] =	----��ϼɽ
	{
		name = "��׽����",	--��������
		startNpcID = 20023,	--ǬԪ������
		endNpcID = 20023,		--�����ǬԪ������
		preTaskData = {1029},--����ǰ������û����nil
		nextTaskID = 1031,--�����������û����nil
		startDialogID =nil,--������Ի�IDû����nil
		endDialogID = 166,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.JXS,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 9000,    --����
			[TaskRewardList.player_pot] = 2700,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 3 , x = 88, y = 124, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 3, x = 88, y = 124,}},--��������һ����������
				{type="createMine",
					param =
					{
					{mapID = 3, scriptID = {101,},fightMapID = nil,stepFactor = 0.1,mustCatch = true},
					}
				},
			},
			[TaskStatus.Done]		=
			{
				{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			    {type = "removeMine", param = {}}, -- �Ƴ�������
			},
	    },
    },
	[1031] =	--��ϼɽ
	{

		name = "Ҫ������",	--��������
		startNpcID = 20023,	--����Ӷ���
		endNpcID = 20006,		--ǬԪ������
		preTaskData = {1030},--����ǰ������û����nil
		nextTaskID = 1032,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 168,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.JXS,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 3, x = 26, y = 92, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 3, x = 26, y = 92,npcID = 20006,},},
			},
		},
	},
	[1032] =	--��ϼɽ
	{
		name = "ǰ����԰��",	--��������
		startNpcID = 20006,	--ǬԪ������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1031},--����ǰ������û����nil
		nextTaskID = 1033,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 171,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.JXS, 
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 72, y = 71, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
   [1033] =	--��ϼɽ
	{
		name = "��ֶ��",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1032}, --����ǰ������û����nil
		nextTaskID = 1064,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 173,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.JXS,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1000,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 88, y = 66, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 9, x = 88, y = 66,dir = Direction.EastNorth,},
						},
					},
			    },
			},
		},
	},
-------------------------------��ϼɽ����--------------------------------------
----------------------------------------------������--------------------------------------
	[1034] = -----------������
	{
		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1036,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 175,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 130,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 4000,    --����
			[TaskRewardList.player_pot] = 1200,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8, x = 148, y = 72, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 8, x = 148, y	= 72,npcID = 20003,},},
			},
		},
	},
	--[[[1035] =	--������
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1034},	--����ǰ������û����nil
		nextTaskID = 1036,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 177,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type = "TgetItem", param = {itemID = 1026027, count = 1 ,bor = true},}--����Ŀ���ȡ��Ʒ
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="getItem", param = {itemID = 1026027, count = 1,}},--�����Ʒ
			},
		},
	},]]
	[1036] =	--������
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1034},	--����ǰ������û����nil
		nextTaskID = 1037,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 179,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		--����ָ����Ʒ��װ��Ŀ�꣨����д�����
		[1] = {type='TwearEquip',param = {equipID	= 2001085, bor = false},},--����
		[2] = {type='TwearEquip',param = {equipID	= 2001091, bor = false},},--����
		[3] = {type='TwearEquip',param = {equipID	= 2001092, bor = false},},--ͷ��
		[4] = {type='TwearEquip',param = {equipID	= 2001093, bor = false},},--ս��
		[5] = {type='TwearEquip',param = {equipID	= 2001094, bor = false},},--����
		[6] = {type='TwearEquip',param = {equipID	= 2001095, bor = false},},--Ь��
		},
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=
			{
			{type="getItem", param = {itemID = 1026027, count = 1,}},--�����Ʒ
			},
			[TaskStatus.Done]		=
			{
			{type = "openDialog", param={dialogID = 179},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1037] =	--������
	{
		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20007,		--�������npc
		preTaskData = {1036},------{1005},	--����ǰ������û����nil
		nextTaskID = 1038,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 182,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 2 , x = 83, y = 125, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type = "flyEffect", param = {flyEffectID = 104}},--�ɽ�����
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 2, x = 83, y = 125,npcID = 20007,},}, --Ѱ·������
			},
		},
	},
	[1038] =	--������
	{
		name = "�����ķ�",	--��������
		startNpcID = 20007,	--������ʼnpc
		endNpcID = 20007,		--�������npc
		preTaskData = {1037},	--����ǰ������û����nil
		nextTaskID = 1039,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 184,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 600,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 7000,    --����
			[TaskRewardList.player_pot] = 2100,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 40101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 184},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1039] =	--������
	{
		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20007,	--ǬԪ������
		endNpcID = 20022,		--�����ǬԪ������
		preTaskData = {1038},--����ǰ������û����nil
		nextTaskID = 1040,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 186,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.PLG,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 8000,    --����
			[TaskRewardList.player_pot] = 2400,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 2, x = 61, y = 127, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 186},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1040] =	----������
	{
		name = "��׽����",	--��������
		startNpcID = 20022,	--ǬԪ������
		endNpcID = 20022,		--�����ǬԪ������
		preTaskData = {1039},--����ǰ������û����nil
		nextTaskID = 1041,--�����������û����nil
		startDialogID =nil,--������Ի�IDû����nil
		endDialogID = 188,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.PLG,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 9000,    --����
			[TaskRewardList.player_pot] = 2700,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 2 , x = 125, y = 54, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 2, x = 125, y = 54,}},--��������һ����������
				{type="createMine",
					param =
					{
					{mapID = 2, scriptID = {101,},fightMapID = nil,stepFactor = 0.1,mustCatch = true},
					}
				},
			},
			[TaskStatus.Done]		=
			{
				{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			    {type = "removeMine", param = {}}, -- �Ƴ�������
			},
		},
    },
	[1041] =	--������
	{
		name = "Ҫ������",	--��������
		startNpcID = 20022,	--����Ӷ���
		endNpcID = 20007,		--ǬԪ������
		preTaskData = {1040},--����ǰ������û����nil
		nextTaskID = 1042,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 190,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.PLG,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 2, x = 83, y = 125, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 2, x = 83, y = 125,npcID = 20007,},},
			},
		},
	},
	[1042] =	--������
	{
		name = "ǰ����԰��",	--��������
		startNpcID = 20007,	--ǬԪ������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1041},--����ǰ������û����nil
		nextTaskID = 1043,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 193,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.PLG, 
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 72, y = 71, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
   [1043] =	--������
	{
		name = "��ֶ��",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1042}, --����ǰ������û����nil
		nextTaskID = 1064,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 195,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.PLG,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1000,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 88, y = 66, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 9, x = 88, y = 66,dir = Direction.EastNorth,},
						},
					},
			    },
			},
		},
	},
-------------------------------���������--------------------------------------
----------------------------------------------������--------------------------------------
	[1044] = -----------������
	{
		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1046,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 197,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 130,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 4000,    --����
			[TaskRewardList.player_pot] = 1200,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8, x = 148, y = 72, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 8, x = 148, y	= 72,npcID = 20003,},},
			},
		},
	},
	--[[[1045] =	--������
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1044},	--����ǰ������û����nil
		nextTaskID = 1046,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 199,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type = "TgetItem", param = {itemID = 1026034, count = 1 ,bor = true},}--����Ŀ���ȡ��Ʒ
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="getItem", param = {itemID = 1026034, count = 1,}},--�����Ʒ
			},
		},
	},]]
	[1046] =	--������
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1044},	--����ǰ������û����nil
		nextTaskID = 1047,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 201,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		--����ָ����Ʒ��װ��Ŀ�꣨����д�����
		[1] = {type='TwearEquip',param = {equipID	= 2001089, bor = false},},--����
		[2] = {type='TwearEquip',param = {equipID	= 2001091, bor = false},},--����
		[3] = {type='TwearEquip',param = {equipID	= 2001092, bor = false},},--ͷ��
		[4] = {type='TwearEquip',param = {equipID	= 2001093, bor = false},},--ս��
		[5] = {type='TwearEquip',param = {equipID	= 2001094, bor = false},},--����
		[6] = {type='TwearEquip',param = {equipID	= 2001095, bor = false},},--Ь��
		},
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=
			{
			{type="getItem", param = {itemID = 1026034, count = 1,}},--�����Ʒ
			},
			[TaskStatus.Done]		=
			{
			{type = "openDialog", param={dialogID = 201},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1047] =	--������
	{
		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20008,		--�������npc
		preTaskData = {1046},------{1005},	--����ǰ������û����nil
		nextTaskID = 1048,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 204,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 6 , x = 67, y = 135, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type = "flyEffect", param = {flyEffectID = 105}},--�ɽ�����
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 6, x = 67, y = 135,npcID = 20008,},}, --Ѱ·������
			},
		},
	},
	[1048] =	--������
	{
		name = "�����ķ�",	--��������
		startNpcID = 20008,	--������ʼnpc
		endNpcID = 20008,		--�������npc
		preTaskData = {1047},	--����ǰ������û����nil
		nextTaskID = 1049,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 206,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 600,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 7000,    --����
			[TaskRewardList.player_pot] = 2100,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 30101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 206},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1049] =	--������
	{
		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20008,	--ǬԪ������
		endNpcID = 20026,		--�����ǬԪ������
		preTaskData = {1048},--����ǰ������û����nil
		nextTaskID = 1050,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 208,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.ZYM,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 8000,    --����
			[TaskRewardList.player_pot] = 2400,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 6, x = 43, y = 112, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 208},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1050] =	----������
	{
		name = "��׽����",	--��������
		startNpcID = 20026,	--ǬԪ������
		endNpcID = 20026,		--�����ǬԪ������
		preTaskData = {1049},--����ǰ������û����nil
		nextTaskID = 1051,--�����������û����nil
		startDialogID =nil,--������Ի�IDû����nil
		endDialogID = 210,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.ZYM,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 9000,    --����
			[TaskRewardList.player_pot] = 2700,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 6 , x = 131, y = 80, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 6, x = 131, y = 80,}},--��������һ����������
				{type="createMine",
					param =
					{
					{mapID = 6, scriptID = {101,},fightMapID = nil,stepFactor = 0.1,mustCatch = true},
					}
				},
			},
			[TaskStatus.Done]		=
			{
				{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			    {type = "removeMine", param = {}}, -- �Ƴ�������
			},
		},
    },
	[1051] =	--������
	{
		name = "Ҫ������",	--��������
		startNpcID = 20026,	--����Ӷ���
		endNpcID = 20008,		--ǬԪ������
		preTaskData = {1050},--����ǰ������û����nil
		nextTaskID = 1052,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 212,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.ZYM,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 6, x = 67, y = 135, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 6, x = 67, y = 135,npcID = 20008,},},
			},
		},
	},
	[1052] =	--������
	{
		name = "ǰ����԰��",	--��������
		startNpcID = 20008,	--ǬԪ������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1051},--����ǰ������û����nil
		nextTaskID = 1053,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 215,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.ZYM, 
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 72, y = 71, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
   [1053] =	--������
	{
		name = "��ֶ��",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1052}, --����ǰ������û����nil
		nextTaskID = 1064,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 217,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.ZYM,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1000,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 88, y = 66, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 9, x = 88, y = 66,dir = Direction.EastNorth,},
						},
					},
			    },
			},
		},
	},
-------------------------------�����Ž���--------------------------------------
----------------------------------------------������--------------------------------------
	[1054] = -----------������
	{
		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1056,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 219,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 130,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 4000,    --����
			[TaskRewardList.player_pot] = 1200,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8, x = 148, y = 72, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 8, x = 148, y	= 72,npcID = 20003,},},
			},
		},
	},
	--[[[1055] =	--������
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1054},	--����ǰ������û����nil
		nextTaskID = 1056,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 221,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type = "TgetItem", param = {itemID = 1026041, count = 1 ,bor = true},}--����Ŀ���ȡ��Ʒ
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="getItem", param = {itemID = 1026041, count = 1,}},--�����Ʒ
			},
		},
	},]]
	[1056] =	--������
	{
		name = "��ðٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1054},	--����ǰ������û����nil
		nextTaskID = 1057,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 223,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 280,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 5000,    --����
			[TaskRewardList.player_pot] = 1500,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		--����ָ����Ʒ��װ��Ŀ�꣨����д�����
		[1] = {type='TwearEquip',param = {equipID	= 2001087, bor = false},},--����
		[2] = {type='TwearEquip',param = {equipID	= 2001091, bor = false},},--����
		[3] = {type='TwearEquip',param = {equipID	= 2001092, bor = false},},--ͷ��
		[4] = {type='TwearEquip',param = {equipID	= 2001093, bor = false},},--ս��
		[5] = {type='TwearEquip',param = {equipID	= 2001094, bor = false},},--����
		[6] = {type='TwearEquip',param = {equipID	= 2001095, bor = false},},--Ь��
		},
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=
			{
			{type="getItem", param = {itemID = 1026041, count = 1,}},--�����Ʒ
			},
			[TaskStatus.Done]		=
			{
			{type = "openDialog", param={dialogID = 223},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1057] =	--������
	{
		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20009,		--�������npc
		preTaskData = {1056},------{1005},	--����ǰ������û����nil
		nextTaskID = 1058,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 226,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 5 , x = 43, y = 112, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type = "flyEffect", param = {flyEffectID = 106}},--�ɽ�����
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 5, x = 43, y = 112,npcID = 20009,},}, --Ѱ·������
			},
		},
	},
	[1058] =	--������
	{
		name = "�����ķ�",	--��������
		startNpcID = 20009,	--������ʼnpc
		endNpcID = 20009,		--�������npc
		preTaskData = {1057},	--����ǰ������û����nil
		nextTaskID = 1059,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 228,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 600,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 7000,    --����
			[TaskRewardList.player_pot] = 2100,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 60101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 228},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1059] =	--������
	{
		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20009,	--ǬԪ������
		endNpcID = 20024,		--�����ǬԪ������
		preTaskData = {1058},--����ǰ������û����nil
		nextTaskID = 1060,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 230,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.YXG,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 8000,    --����
			[TaskRewardList.player_pot] = 2400,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 5, x = 33, y = 77, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 230},},--���������ʱ��һ���Ի���
			},
		},
	},
	[1060] =	----������
	{
		name = "��׽����",	--��������
		startNpcID = 20024,	--ǬԪ������
		endNpcID = 20024,		--�����ǬԪ������
		preTaskData = {1059},--����ǰ������û����nil
		nextTaskID = 1061,--�����������û����nil
		startDialogID =nil,--������Ի�IDû����nil
		endDialogID = 232,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.YXG,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 9000,    --����
			[TaskRewardList.player_pot] = 2700,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 5 , x = 118, y = 44, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 5, x = 118, y = 44,}},--��������һ����������
				{type="createMine",
					param =
					{
					{mapID = 5, scriptID = {101,},fightMapID = nil,stepFactor = 0.1,mustCatch = true},
					}
				},
			},
			[TaskStatus.Done]		=
			{
				{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			    {type = "removeMine", param = {}}, -- �Ƴ�������
			},
		},
    },
	[1061] =	--������
	{
		name = "Ҫ������",	--��������
		startNpcID = 20024,	--����Ӷ���
		endNpcID = 20009,		--ǬԪ������
		preTaskData = {1060},--����ǰ������û����nil
		nextTaskID = 1062,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 234,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.YXG,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 5, x = 43, y = 112, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 5, x = 43, y = 112,npcID = 20009,},},
			},
		},
	},
	[1062] =	--������
	{
		name = "ǰ����԰��",	--��������
		startNpcID = 20009,	--ǬԪ������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1061},--����ǰ������û����nil
		nextTaskID = 1063,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 237,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.YXG, 
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 900,   --��Ҿ���
			[TaskRewardList.pet_xp] = 900,      --���ﾭ��
			[TaskRewardList.subMoney] = 10000,    --����
			[TaskRewardList.player_pot] = 3000,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 72, y = 71, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
   [1063] =	--������
	{
		name = "��ֶ��",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1062}, --����ǰ������û����nil
		nextTaskID = 1064,--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		endDialogID = 239,--������Ի�IDû����nil
		taskType2 = TaskType2.Main,
		school = SchoolType.YXG,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1000,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 88, y = 66, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 9, x = 88, y = 66,dir = Direction.EastNorth,},
						},
					},
			    },
			},
		},
	},
-------------------------------����������--------------------------------------
-------------------------------�����ɽ���--------------------------------------
    [1064] =
	{
		name = "˵���ŷ�",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20037,		--�������npc
		preTaskData = {condition = "or",{1013,1023,1033,1043,1053,1063}},		--����ǰ������û����nil
		nextTaskID = 1065,	--�����������û����nil
		startDialogID =	nil,--������Ի�IDû����nil
		--startDialogID =	{130,152,174,196,218,240},	--���������Ի�ID
		endDialogID = 241,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 84, y = 112, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="createPrivateNpc", ----------����˽��NPC�ŷ�
				param={
					npcs =
					{
						[1] = {npcID = 20037,mapID = 9, x = 84, y = 112,dir = Direction.EestSouth,},--�ŷ�
					},
				},
			},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc����
				param={
					npcs =
						{
							{npcID = 20028,	taskID = {1013,1023,1033,1043,1053,1063}, index = 1},
						},
					 },
				 },
			{type="openDialog", param={dialogID = 241},}, --���������ʱ��һ���Ի���
		},
	},
    },
    [1065] =
	{
		name = "Ѱ������",	--��������
		startNpcID = 20037,	--������ʼnpc
		endNpcID = 20029,		--�������npc
		preTaskData = {1064},	--����ǰ������û����nil
		nextTaskID = 1066,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 243,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 31, y = 97, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="createPrivateNpc", ----------����˽��NPC����
			param={
				npcs =
					{
					[1] = {npcID = 20029,mapID = 9, x = 31, y = 97,dir = Direction.South,},--��Զ
					},
				},
			},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc�ŷ�
			param={
				npcs =
					{
					{npcID = 20037,	taskID = {1064}, index = 1},
					},
				},
			},
		{type="openDialog", param={dialogID = 243},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1066] =
	{
		name = "�ظ��ŷ�",	--��������
		startNpcID = 20029,	--������ʼnpc
		endNpcID = 20037,		--�������npc
		preTaskData = {1065},	--����ǰ������û����nil
		nextTaskID = 1067,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 245,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 84, y = 112, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="createPrivateNpc", ----------����˽��NPC�ŷ�
				param={
					npcs =
					{
						[1] = {npcID = 20037,mapID = 9, x = 84, y = 112,dir = Direction.EestSouth,},--�ŷ�
					},
				},
			},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc����
			param={
				npcs =
					{
					{npcID = 20029,	taskID = {1065}, index = 1},
					},
				},
			},
		{type="openDialog", param={dialogID = 245},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1067] =
	{
		name = "��������",	--��������
		startNpcID = 20037,	--������ʼnpc
		endNpcID = 20032,		--�������npc
		preTaskData = {1066},	--����ǰ������û����nil
		nextTaskID = 1068,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 249,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
		{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 102,
				dialogID = 247,
				npcsData =			--ˢ��npc����
				{},
				posData	= {mapID = 9, x = 146, y	= 91}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="createPrivateNpc", ----------����˽��NPC����
				param={
					npcs =
					{
						[1] = {npcID = 20032,mapID = 9, x = 146, y = 91,dir = Direction.WestSouth,},--����
					},
				},
			},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc�ŷ�
			param={
				npcs =
					{
					{npcID = 20037,	taskID = {1066}, index = 1},
					},
				},
			},
		{type="openDialog", param={dialogID = 249},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1068] =
	{
		name = "���İ����",	--��������
		startNpcID = 20032,	--������ʼnpc
		endNpcID = 20030,		--�������npc
		preTaskData = {1067},	--����ǰ������û����nil
		nextTaskID = 1069,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 252,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
		{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 103,
				dialogID = 250,
				npcsData =			--ˢ��npc����
				{},
				posData	= {mapID = 9, x = 81, y	= 148}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="createPrivateNpc", ----------����˽��NPCİ����
				param={
					npcs =
					{
						[1] = {npcID = 20030,mapID = 9, x = 81, y = 148,dir = Direction.South,},--İ����
					},
				},
			},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc����
			param={
				npcs =
					{
					{npcID = 20032,	taskID = {1067}, index = 1},
					},
				},
			},
		{type="openDialog", param={dialogID = 252},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1069] =
	{
		name = "��֪����",	--��������
		startNpcID = 20030,	--������ʼnpc
		endNpcID = 20028,		--�������npc
		preTaskData = {1068},	--����ǰ������û����nil
		nextTaskID = 1070,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 255,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 88, y = 66, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
			{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 9, x = 88, y = 66,dir = Direction.EastNorth,},
						},
					},
			  },
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npcİ����
			param={
				npcs =
					{
					{npcID = 20030,	taskID = {1068}, index = 1},
					},
				},
			},
		{type="openDialog", param={dialogID = 255},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1070] =
	{
		name = "Ѱ��Ԯ��",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20037,		--�������npc
		preTaskData = {1069},	--����ǰ������û����nil
		nextTaskID = 1071,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 257,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 84, y = 112, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
			{type="createPrivateNpc", ----------����˽���ŷ�
				param={
					npcs =
						{
						[1] = {npcID = 20037,mapID = 9, x = 84, y = 112,dir = Direction.EestSouth,},--�ŷ�
						},
					},
			  },
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc����
			param={
				npcs =
					{
					{npcID = 20028,	taskID = {1069}, index = 1},
					},
				},
			},
		{type="openDialog", param={dialogID = 257},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1071] =
	{
		name = "��Ѱ����",	--��������
		startNpcID = 20037,	--������ʼnpc
		endNpcID = 20032,		--�������npc
		preTaskData = {1070},	--����ǰ������û����nil
		nextTaskID = 1072,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 259,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 146, y = 91, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
			{type="createPrivateNpc", ----------����˽�й���
				param={
					npcs =
						{
						[1] = {npcID = 20032,mapID = 9, x = 146, y = 91,dir = Direction.WestSouth,},--����
						},
					},
			  },
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc�ŷ�
			param={
				npcs =
					{
					{npcID = 20037,	taskID = {1070}, index = 1},
					},
				},
			},
		{type="openDialog", param={dialogID = 259},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1072] =
	{
		name = "��������",	--��������
		startNpcID = 20032,	--������ʼnpc
		endNpcID = 20028,		--�������npc
		preTaskData = {1071},	--����ǰ������û����nil
		nextTaskID = 1073,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 262,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 88, y = 66, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
			{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 9, x = 88, y = 66,dir = Direction.EastNorth,},
						},
					},
			  },
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc����
			param={
				npcs =
					{
					{npcID = 20032,	taskID = {1071}, index = 1},
					},
				},
			},
		{type="openDialog", param={dialogID = 262},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1073] =
	{
		name = "���ֻ��",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20037,		--�������npc
		preTaskData = {1072},	--����ǰ������û����nil
		nextTaskID = 1074,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 264,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 400 , x = 74, y = 38, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc����
			param={
				npcs =
				{
				{npcID = 20028,taskID = {1072}, index = 1},
				},
			},
		},
		{type = "createFollow", param = {npcs = {20028},}},				--����ָ��npc��������
		{type = "createPrivateTransfer", ------����˽�д�����--
			param={
				transfers =
					{
					[1] = {mapID = 9, x =121, y =120, tarMapID = 400, tarX = 91, tarY = 28},
					},
			},
		},
		{type="createPrivateNpc", ----------����˽�й����ŷ�
				param={
					npcs =
						{
						[1] = {npcID = 20037, mapID = 400, x = 74, y = 38,dir = Direction.South,},
						[2] = {npcID = 20032, mapID = 400, x = 72, y = 38,dir = Direction.South,},
						},
					},
			  },
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
		        param={
			        transfers =
				    {
				    {taskID = 1073, index = 1},
				    },
			   },
		},
		{type="openDialog", param={dialogID = 264},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1074] =
	{
		name = "�Ը��ű�",	--��������
		startNpcID = 20037,	--������ʼnpc
		endNpcID = 20028,		--�������npc
		preTaskData = {1073},	--����ǰ������û����nil
		nextTaskID = 1075,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 269,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 104,
				dialogID = 267,
				npcsData =			--ˢ��npc����
				{},
				posData	= {mapID = 400, x = 45, y = 74}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc�����ŷ�
			param={
				npcs =
				{
				{npcID = 20037,taskID = {1073}, index = 1},
				{npcID = 20032,taskID = {1073}, index = 2},
				},
			},
		},
		{type = "createFollow", param = {npcs = {20037,20032},}},				--����ָ��npc�����ŷɸ���
		{type="createPrivateNpc", ----------����˽���ű�����
				param={
					npcs =
						{
						[1] = {npcID = 20031, mapID = 400, x = 45, y = 74,dir = Direction. South,},--�ű�
						[2] = {npcID = 20033, mapID = 400, x = 46, y = 76,dir = Direction. South,},
						[3] = {npcID = 20034, mapID = 400, x = 43, y = 73,dir = Direction. South,},
						[4] = {npcID = 20035, mapID = 400, x = 41, y = 76,dir = Direction. South,},
						[5] = {npcID = 20036, mapID = 400, x = 43, y = 78,dir = Direction. South,},
						},
					},
			  },
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc�ű�����
			param={
				npcs =
				{
				{npcID = 20031,taskID = {1074}, index = 1},
				{npcID = 20033,taskID = {1074}, index = 2},
				{npcID = 20034,taskID = {1074}, index = 3},
				{npcID = 20035,taskID = {1074}, index = 4},
				{npcID = 20036,taskID = {1074}, index = 5},
				},
			},
		},
		{type = "deleteFollow", param = {npcs = {20028,20032,20037},}}, --�����״̬ɾ��ָ��ID��npc����
		{type="createPrivateNpc", ----------����˽��������
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 400, x = 42, y = 77,dir = Direction. South,},--����
						[2] = {npcID = 20032, mapID = 400, x = 39, y = 78,dir = Direction. South,},--����
						[3] = {npcID = 20037, mapID = 400, x = 42, y = 80,dir = Direction. South,},--�ŷ�
						},
				},
		},
		{type = "playAnimation", param = {playID = 1002, sceneID = 1,},},				--����ָ��ID�Ľű�����(��������)
		--{type = "openUI", param={v = "SkillBoard"},}  --�����������һ��UI
		{type="openDialog", param={dialogID = 269},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1075] =
	{
		name = "��̽�ű�����",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20038,		--�������npc
		preTaskData = {1074},	--����ǰ������û����nil
		nextTaskID = 1076,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 273,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 105,
				dialogID = 271,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20038, x = 196, y	= 104, noDelete =	true},
				{npcID = 20039, x = 197, y	= 106, noDelete =	true},
				{npcID = 20039, x = 195, y	= 102, noDelete =	true},
				{npcID = 20039, x = 193, y	= 105, noDelete =	true},
				{npcID = 20039, x = 194, y	= 107, noDelete =	true},
				},
				posData	= {mapID = 101, x = 196, y = 104}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 400, x =98, y =29, tarMapID = 9, tarX = 121, tarY = 118},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc������
			param={
				npcs =
				{
				{npcID = 20028,taskID = {1074}, index = 1},
				{npcID = 20032,taskID = {1074}, index = 2},
				{npcID = 20037,taskID = {1074}, index = 3},
				},
			},
		},
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1075, index = 1},
						},
				},
		},
		{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20038, mapID = 101, x = 196, y = 104,dir = Direction. South,},--����
						},
				},
		},
		{type="openDialog", param={dialogID = 273},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1076] =
	{
		name = "����Э��",	--��������
		startNpcID = 20038,	--������ʼnpc
		endNpcID = 20028,		--�������npc
		preTaskData = {1075},	--����ǰ������û����nil
		nextTaskID = 1077,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 277,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 106,
				dialogID = 275,
				npcsData =			--ˢ��npc����
				{},
				posData	= {mapID = 101, x = 115, y = 119}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="createPrivateNpc", ----------����˽��������Χ
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 101, x = 115, y = 119,dir = Direction. EastSouth,},--����
						[2] = {npcID = 20044, mapID = 101, x = 112, y = 120,dir = Direction. EastSouth,},--����
						[3] = {npcID = 20040, mapID = 101, x = 114, y = 116,dir = Direction. East,},
						[4] = {npcID = 20041, mapID = 101, x = 118, y = 116,dir = Direction. North,},
						[5] = {npcID = 20042, mapID = 101, x = 118, y = 120,dir = Direction. WestNorth,},
						[6] = {npcID = 20043, mapID = 101, x = 114, y = 122,dir = Direction. WestSouth,},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20038,taskID = {1075}, index = 1},--����
				{npcID = 20044,taskID = {1076}, index = 2},--���ಿ��
				{npcID = 20040,taskID = {1076}, index = 3},
				{npcID = 20041,taskID = {1076}, index = 4},
				{npcID = 20042,taskID = {1076}, index = 5},
				{npcID = 20043,taskID = {1076}, index = 6},
				},
			},
		},
		{type="openDialog", param={dialogID = 277},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1077] =
	{
		name = "֧Ԯ�ŷ�",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20037,		--�������npc
		preTaskData = {1076},	--����ǰ������û����nil
		nextTaskID = 1078,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 281,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 107,
				dialogID = 279,
				npcsData =			--ˢ��npc����
				{},
				posData	= {mapID = 101, x = 140, y = 150}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20028,taskID = {1076}, index = 1},--����
				},
			},
		},
		{type = "createFollow", param = {npcs = {20028},}},				--������������
		{type="createPrivateNpc", ----------����˽���ŷɰ�Χ
				param={
					npcs =
						{
						[1] = {npcID = 20037, mapID = 101, x = 140, y = 150,dir = Direction. EastSouth,},--�ŷ�
						[2] = {npcID = 20045, mapID = 101, x = 143, y = 151,dir = Direction. West,},--��Զ
						[3] = {npcID = 20040, mapID = 101, x = 139, y = 153,dir = Direction. WestSouth,},
						[4] = {npcID = 20041, mapID = 101, x = 137, y = 151,dir = Direction. EastSouth,},
						[5] = {npcID = 20042, mapID = 101, x = 139, y = 147,dir = Direction. East,},
						[6] = {npcID = 20043, mapID = 101, x = 143, y = 147,dir = Direction. North,},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20045,taskID = {1077}, index = 2},--��Զ����
				{npcID = 20040,taskID = {1077}, index = 3},
				{npcID = 20041,taskID = {1077}, index = 4},
				{npcID = 20042,taskID = {1077}, index = 5},
				{npcID = 20043,taskID = {1077}, index = 6},
				},
			},
		},
		{type="openDialog", param={dialogID = 281},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1078] =
	{
		name = "֧Ԯ����",	--��������
		startNpcID = 20037,	--������ʼnpc
		endNpcID = 20032,		--�������npc
		preTaskData = {1077},	--����ǰ������û����nil
		nextTaskID = 1079,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 284,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 108,
				dialogID = 282,
				npcsData =			--ˢ��npc����
				{},
				posData	= {mapID = 101, x = 156, y = 185}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20037,taskID = {1077}, index = 1},--�ŷ�
				},
			},
		},
		{type = "createFollow", param = {npcs = {20037},}},				--�����ŷɸ���
		{type="createPrivateNpc", ----------����˽�й����Χ
				param={
					npcs =
						{
						[1] = {npcID = 20032, mapID = 101, x = 156, y = 185,dir = Direction. South,},--����
						[2] = {npcID = 20046, mapID = 101, x = 153, y = 188,dir = Direction. South,},--����
						[3] = {npcID = 20040, mapID = 101, x = 153, y = 184,dir = Direction. East,},
						[4] = {npcID = 20041, mapID = 101, x = 157, y = 181,dir = Direction. EastNorth,},
						[5] = {npcID = 20042, mapID = 101, x = 160, y = 184,dir = Direction. WestNorth,},
						[6] = {npcID = 20043, mapID = 101, x = 157, y = 188,dir = Direction. West,},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20046,taskID = {1077}, index = 2},--���ֲ���
				{npcID = 20040,taskID = {1077}, index = 3},
				{npcID = 20041,taskID = {1077}, index = 4},
				{npcID = 20042,taskID = {1077}, index = 5},
				{npcID = 20043,taskID = {1077}, index = 6},
				},
			},
		},
		{type="openDialog", param={dialogID = 284},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1079] =
	{
		name = "�������",	--��������
		startNpcID = 20032,	--������ʼnpc
		endNpcID = 20032,		--�������npc
		preTaskData = {1078},	--����ǰ������û����nil
		nextTaskID = 1080,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 288,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 109,
				dialogID = 286,
				npcsData =			--ˢ��npc����
				{},
				posData	= {mapID = 401, x = 41, y = 51}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20032,taskID = {1078}, index = 1},--����
				},
			},
		},
		{type = "createFollow", param = {npcs = {20032},}},				--�����������
		{type="createPrivateNpc", ----------����˽���ű�
				param={
					npcs =
						{
						[1] = {npcID = 20031, mapID = 401, x = 41, y = 51,dir = Direction. WestSouth,},--�ű�
						},
				},
		},
		{type = "createPrivateTransfer", ------����˽�д�����--���ܹ���
				param={
						transfers =
						{
						[1] = {mapID = 101, x =91, y =252, tarMapID = 401, tarX = 51, tarY = 8},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20031,taskID = {1079}, index = 1},--�ű�
				},
			},
		},
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
			param={
					transfers =
					{
					{taskID = 1079, index = 1},
					},
				},
		},
		--{type = "openUI", param={v = "SkillBoard"},}  --�����������һ��UI
		{type = "deleteFollow", param = {npcs = {20028,20032,20037},}}, --�����״̬ɾ��ָ��ID��npc����
		{type="createPrivateNpc", ----------����˽��������--���ܹ���
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 401, x = 41, y = 51,dir = Direction. WestSouth,},--����
						[2] = {npcID = 20032, mapID = 401, x = 43, y = 53,dir = Direction. WestSouth,},--����
						[3] = {npcID = 20037, mapID = 401, x = 38, y = 53,dir = Direction. WestSouth,},--�ŷ�
						},
				},
		},
		{type="openDialog", param={dialogID = 288},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1080] =
	{
		name = "̽Ѱ�ɽ",	--��������
		startNpcID = 20032,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1079},	--����ǰ������û����nil
		nextTaskID = 1081,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 110,
				dialogID = 291,
				npcsData =			--ˢ��npc����
				{},
				posData = {mapID = 102, x = 178, y = 91}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20028,taskID = {1079}, index = 1},--����
				{npcID = 20032,taskID = {1079}, index = 2},--����
				{npcID = 20037,taskID = {1079}, index = 3},--�ŷ�
				},
			},
		},
		{type = "createFollow", param = {npcs = {20028,20032,20037},}},	--���������Ÿ���
		{type = "createPrivateTransfer", ------����˽�д�����--���ܹ�������¹
				param={
						transfers =
						{
						[1] = {mapID = 401, x =51, y =8, tarMapID = 101, tarX = 91, tarY = 252},
						},
				},
		},
		{type="createPrivateNpc", ----------����˽�г�־Զ����
				param={
					npcs =
						{
						[1] = {npcID = 20047, mapID = 102, x = 178, y = 91,dir = Direction. WestSouth,},--��־Զ
						[2] = {npcID = 20040, mapID = 102, x = 175, y = 91,dir = Direction. WestSouth,},
						[3] = {npcID = 20041, mapID = 102, x = 181, y = 91,dir = Direction. WestSouth,},
						[4] = {npcID = 20042, mapID = 102, x = 176, y = 94,dir = Direction. WestSouth,},
						[5] = {npcID = 20043, mapID = 102, x = 179, y = 94,dir = Direction. WestSouth,},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20047,taskID = {1080}, index = 1},--��־Զ
				{npcID = 20040,taskID = {1080}, index = 2},
				{npcID = 20041,taskID = {1080}, index = 3},
				{npcID = 20042,taskID = {1080}, index = 4},
				{npcID = 20043,taskID = {1080}, index = 5},
				},
			},
		},
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
			param={
					transfers =
					{
					{taskID = 1080, index = 1},
					},
				},
		},
		{type = "openDialog", param={dialogID = 293},}, --���������ʱ��һ���Ի���
		{type = "finishTask", param = {recetiveTaskID = 1081}},--����������������һ������
		},
	},
    },
	[1081] =
	{
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1080},	--����ǰ������û����nil
		nextTaskID = 1082,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 102 , x = 129, y = 100, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		},
		[TaskStatus.Done] =
		{
		{type="openDialog", param={dialogID = 294},}, --���������ʱ��һ���Ի���
		{type = "finishTask", param = {recetiveTaskID = 1082}},--����������������һ������
		},
	},
    },
	[1082] =
	{
		name = "��ʼ����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1081},	--����ǰ������û����nil
		nextTaskID = 1083,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 111,
				dialogID = 296,
				npcsData =			--ˢ��npc����
				{},
				posData = {mapID = 402, x = 25, y = 30}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateTransfer", ------����˽�д�����--ʧ����
				param={
						transfers =
						{
						[1] = {mapID = 102, x =146, y =87, tarMapID = 402, tarX = 29, tarY = 7, magicID = 6002,},
						},
				},
		},
		{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20048, mapID = 402, x = 25, y = 30,dir = Direction. WestSouth,},--����
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20048,taskID = {1082}, index = 1},--����
				},
			},
		},
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
			param={
					transfers =
					{
					{taskID = 1081, index = 1},
					},
				},
		},
		{type = "createPrivateTransfer", ------����˽�д�����--Ѫ����
				param={
						transfers =
						{
						[1] = {mapID = 402, x =9, y =29, tarMapID = 403, tarX = 39, tarY = 13},
						},
				},
		},
		{type="openDialog", param={dialogID = 298},}, --���������ʱ��һ���Ի���
		{type = "finishTask", param = {recetiveTaskID = 1083}},--����������������һ������
		},
	},
    },
	[1083] =
	{
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1081},	--����ǰ������û����nil
		nextTaskID = 1083,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 112,
				dialogID = 299,
				npcsData =			--ˢ��npc����
				{},
				posData = {mapID = 403, x = 39, y = 45}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="createPrivateNpc", ----------����˽��ˮ��
				param={
					npcs =
						{
						[1] = {npcID = 20051, mapID = 403, x = 39, y = 45,dir = Direction. WestSouth,},--ˮ��
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20051,taskID = {1083}, index = 1},--����
				},
			},
		},
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
			param={
					transfers =
					{
					{taskID = 1082, index = 1},
					},
				},
		},
		{type = "createPrivateTransfer", ------����˽�д�����--�ɻ���
				param={
						transfers =
						{
						[1] = {mapID = 403, x =58, y =45, tarMapID = 404, tarX = 12, tarY = 43},
						},
				},
		},
		{type="openDialog", param={dialogID = 301},}, --���������ʱ��һ���Ի���
		{type = "finishTask", param = {recetiveTaskID = 1084}},--����������������һ������
		},
	},
    },
	[1084] =
	{
		name = "������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1083},	--����ǰ������û����nil
		nextTaskID = 1085,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 113,
				dialogID = 302,
				npcsData =			--ˢ��npc����
				{},
				posData = {mapID = 404, x = 44, y = 38}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="createPrivateNpc", ----------����˽��ˮ��
				param={
					npcs =
						{
						[1] = {npcID = 20053, mapID = 404, x = 44, y = 38,dir = Direction. WestNorth,},--ˮ��
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20053,taskID = {1084}, index = 1},--����
				},
			},
		},
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
			param={
					transfers =
					{
					{taskID = 1083, index = 1},
					},
				},
		},
		{type = "createPrivateTransfer", ------����˽�д�����--������
				param={
						transfers =
						{
						[1] = {mapID = 404, x =40, y =63, tarMapID = 405, tarX = 51, tarY = 22},
						},
				},
		},
		{type="openDialog", param={dialogID = 304},}, --���������ʱ��һ���Ի���
		{type = "finishTask", param = {recetiveTaskID = 1085}},--����������������һ������
		},
	},
    },
	[1085] =
	{
		name = "��ɱ����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1084},	--����ǰ������û����nil
		nextTaskID = 1086,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 114,
				dialogID = 305,
				npcsData =			--ˢ��npc����
				{},
				posData = {mapID = 405, x = 27, y = 27}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="createPrivateNpc", ----------����˽������
				param={
					npcs =
						{
						[1] = {npcID = 20055, mapID = 405, x = 27, y = 27,dir = Direction. EastSouth,},--����
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20055,taskID = {1085}, index = 1},--����
				},
			},
		},
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
			param={
					transfers =
					{
					{taskID = 1084, index = 1},
					},
				},
		},
		{type = "createPrivateTransfer", ------����˽�д�����--����̨
				param={
						transfers =
						{
						[1] = {mapID = 405, x =18, y =28, tarMapID = 406, tarX = 64, tarY = 14},
						},
				},
		},
		{type="openDialog", param={dialogID = 425},}, --���������ʱ��һ���Ի���
		{type = "finishTask", param = {recetiveTaskID = 1086}},--����������������һ������
		},
	},
    },
	[1086] =
	{
		name = "��ֹ�Ž�",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1085},	--����ǰ������û����nil
		nextTaskID = 1087,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 406 , x = 40, y = 65, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type="createPrivateNpc", ----------����˽���Ž�
				param={
					npcs =
						{
						[1] = {npcID = 20056, mapID = 406, x = 34, y = 64,dir = Direction. EastSouth,},--�Ž�
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
			param={
					transfers =
					{
					{taskID = 1085, index = 1},
					},
				},
		},
		--{type = "openUI", param={v = "SkillBoard"},}  --�����������һ��UI
		{type = "finishTask", param = {recetiveTaskID = 1087}},--����������������һ������
		},
	},
    },
	[1087] =
	{
		name = "��ֹδ��",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20028,		--�������npc
		preTaskData = {1086},	--����ǰ������û����nil
		nextTaskID = {1088,1090,1092,1094,1096,1098},--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 307,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 115,
				dialogID = 426,
				npcsData =			--ˢ��npc����
				{},
				posData = {mapID = 406, x = 34, y = 64}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		},
		[TaskStatus.Done] =
		{
		{type="deletePrivateNpc", ---------ɾ��˽��npc
			param={
				npcs =
				{
				{npcID = 20056,taskID = {1086}, index = 1},--�Ž�
				},
			},
		},
		{type = "deleteFollow", param = {npcs = {20028,20032,20037},}}, --�����״̬ɾ��ָ��ID��npc����
		{type="createPrivateNpc", ----------����˽��������
				param={
					npcs =
						{
						[1] = {npcID = 20028, mapID = 406, x = 34, y = 64,dir = Direction. EastSouth,},
						[2] = {npcID = 20032, mapID = 406, x = 33, y = 62,dir = Direction. EastSouth,},
						[3] = {npcID = 20037, mapID = 406, x = 33, y = 66,dir = Direction. EastSouth,},
						},
				},
		},
		{type = "openDialog", param={dialogID = 307},}, --���������ʱ��һ���Ի���
		},
	},
    },
----------------------------------------------��ʼ������--------------------------------------
----------------------------------------------ǬԪ��--------------------------------------
    [1088] =	--ǬԪ��
	{
		name = "��������",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20004,		--�������npc
		preTaskData = {1087},------{1005},	--����ǰ������û����nil
		nextTaskID = 1089,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 309,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 1 , x = 26, y = 84, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 1, x = 85, y = 63,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="deletePrivateNpc", ---------ɾ��˽��������
			param={
				npcs =
				{
				{npcID = 20028,taskID = {1087}, index = 1},
				{npcID = 20032,taskID = {1087}, index = 2},
				{npcID = 20037,taskID = {1087}, index = 3},
				},
			},
		},
		{type="autoTrace", param = {tarMapID	= 1, x = 26, y = 84,npcID = 20004,},}, --Ѱ·������
		},
	},
	},
	[1089] =	--ǬԪ��
	{
		name = "�˼���",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20002,		--�������npc
		preTaskData = {1088},------{1005},	--����ǰ������û����nil
		nextTaskID = 1100,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 428,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 219, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 8, x = 134, y = 219,npcID = 20002,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------��Դ��--------------------------------------
    [1090] =	--��Դ��
	{
		name = "��������",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20005,		--�������npc
		preTaskData = {1087},------{1005},	--����ǰ������û����nil
		nextTaskID = 1091,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 311,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 4 , x = 59, y = 72, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 4, x = 108, y = 70,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="deletePrivateNpc", ---------ɾ��˽��������
		param={
			npcs =
				{
				{npcID = 20028,taskID = {1087}, index = 1},
				{npcID = 20032,taskID = {1087}, index = 2},
				{npcID = 20037,taskID = {1087}, index = 3},
				},
			},
		},
		{type="autoTrace", param = {tarMapID	= 4, x = 59, y = 72,npcID = 20005,},}, --Ѱ·������
		},
	},
	},
	[1091] =	--��Դ��
	{
		name = "�˼���",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20002,		--�������npc
		preTaskData = {1090},------{1005},	--����ǰ������û����nil
		nextTaskID = 1100,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 430,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 219, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 8, x = 134, y = 219,npcID = 20002,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------��ϼɽ--------------------------------------
    [1092] =	--��ϼɽ
	{
		name = "��������",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20006,		--�������npc
		preTaskData = {1087},------{1005},	--����ǰ������û����nil
		nextTaskID = 1093,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 313,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 3 , x = 26, y = 92, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 3, x = 134, y = 70,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="deletePrivateNpc", ---------ɾ��˽��������
		param={
			npcs =
				{
				{npcID = 20028,taskID = {1087}, index = 1},
				{npcID = 20032,taskID = {1087}, index = 2},
				{npcID = 20037,taskID = {1087}, index = 3},
				},
			},
		},
		{type="autoTrace", param = {tarMapID	= 3, x = 26, y = 92,npcID = 20006,},}, --Ѱ·������
		},
	},
	},
	[1093] =	--��ϼɽ
	{
		name = "�˼���",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20002,		--�������npc
		preTaskData = {1092},------{1005},	--����ǰ������û����nil
		nextTaskID = 1100,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 432,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 219, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 8, x = 134, y = 219,npcID = 20002,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------������--------------------------------------
    [1094] =	--������
	{
		name = "��������",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20007,		--�������npc
		preTaskData = {1087},------{1005},	--����ǰ������û����nil
		nextTaskID = 1095,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 315,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 2 , x = 83, y = 125, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 2, x = 86, y = 32,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="deletePrivateNpc", ---------ɾ��˽��������
		param={
			npcs =
				{
				{npcID = 20028,taskID = {1087}, index = 1},
				{npcID = 20032,taskID = {1087}, index = 2},
				{npcID = 20037,taskID = {1087}, index = 3},
				},
			},
		},
		{type="autoTrace", param = {tarMapID	= 2, x = 83, y = 125,npcID = 20007,},}, --Ѱ·������
		},
	},
	},
	[1095] =	--������
	{
		name = "�˼���",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20002,		--�������npc
		preTaskData = {1094},------{1005},	--����ǰ������û����nil
		nextTaskID = 1100,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 434,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 219, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 8, x = 134, y = 219,npcID = 20002,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------������--------------------------------------
    [1096] =	--������
	{
		name = "��������",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20008,		--�������npc
		preTaskData = {1087},------{1005},	--����ǰ������û����nil
		nextTaskID = 1097,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 317,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 6 , x = 67, y = 135, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 6, x = 103, y = 61,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="deletePrivateNpc", ---------ɾ��˽��������
		param={
			npcs =
				{
				{npcID = 20028,taskID = {1087}, index = 1},
				{npcID = 20032,taskID = {1087}, index = 2},
				{npcID = 20037,taskID = {1087}, index = 3},
				},
			},
		},
		{type="autoTrace", param = {tarMapID	= 6, x = 67, y = 135,npcID = 20008,},}, --Ѱ·������
		},
	},
	},
	[1097] =	--������
	{
		name = "�˼���",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20002,		--�������npc
		preTaskData = {1096},------{1005},	--����ǰ������û����nil
		nextTaskID = 1100,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 436,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 219, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 8, x = 134, y = 219,npcID = 20002,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------������--------------------------------------
    [1098] =	--������
	{
		name = "��������",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20009,		--�������npc
		preTaskData = {1087},------{1005},	--����ǰ������û����nil
		nextTaskID = 1099,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 319,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 5 , x = 43, y = 112, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 5, x = 52, y = 54,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="deletePrivateNpc", ---------ɾ��˽��������
		param={
			npcs =
				{
				{npcID = 20028,taskID = {1087}, index = 1},
				{npcID = 20032,taskID = {1087}, index = 2},
				{npcID = 20037,taskID = {1087}, index = 3},
				},
			},
		},
		{type="autoTrace", param = {tarMapID	= 5, x = 43, y = 112,npcID = 20009,},}, --Ѱ·������
		},
	},
	},
	[1099] =	--������
	{
		name = "�˼���",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20002,		--�������npc
		preTaskData = {1096},------{1005},	--����ǰ������û����nil
		nextTaskID = 1100,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 438,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 219, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 8, x = 134, y = 219,npcID = 20002,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------�����ɽ���--------------------------------------
    [1100] =
	{
		name = "ǰ������",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20049,		--�������npc
		preTaskData = {condition = "or",{1089,1091,1093,1095,1097,1099}},		--����ǰ������û����nil
		nextTaskID = 1351,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		--startDialogID =	{429,431,433,435,437,439},	--���������Ի�ID
		endDialogID = 323,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 46, y = 216, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		},
		[TaskStatus.Done] =
		{
		{type="autoTrace", param = {tarMapID	= 10, x = 46, y = 216,npcID = 20049,},}, --Ѱ·������
		},
	},
    },
	[1351] =
	{
		name = "��Ѱ�˶",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1100},	--����ǰ������û����nil
		nextTaskID = 1352,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --����԰ͳ��
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 116,
				dialogID = 325,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20060, x = 45, y = 156, noDelete = true},
				{npcID = 20057, x = 45, y = 153, noDelete = true},
				{npcID = 20057, x = 45, y = 159, noDelete = true},
				{npcID = 20058, x = 47, y = 154, noDelete = true},
				{npcID = 20058, x = 47, y = 157, noDelete = true},
				},
				posData	= {mapID = 15, x = 45, y = 156}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[2] = {type='Tmine',param = --�˶����
			{
				mineIndex = 2,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 117,
				dialogID = 327,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20061, x = 81, y = 128, noDelete = true},
				{npcID = 20057, x = 79, y = 127, noDelete = true},
				{npcID = 20057, x = 83, y = 129, noDelete = true},
				{npcID = 20058, x = 81, y = 125, noDelete = true},
				{npcID = 20058, x = 83, y = 126, noDelete = true},
				},
				posData	= {mapID = 15, x = 81, y = 128}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[3] = {type='Tmine',param = --�˶
			{
				mineIndex = 3,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 118,
				dialogID = 329,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20062, x = 114, y = 102, noDelete = true},
				{npcID = 20057, x = 111, y = 102, noDelete = true},
				{npcID = 20057, x = 117, y = 102, noDelete = true},
				{npcID = 20058, x = 112, y = 104, noDelete = true},
				{npcID = 20058, x = 115, y = 104, noDelete = true},
				},
				posData	= {mapID = 15, x = 114, y = 102}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateTransfer", ------����˽�д�����--
			param={
					transfers =
					{
					[1] = {mapID = 10, x =31, y =201, tarMapID = 15, tarX = 27, tarY = 170},
					},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
			param={
					transfers =
					{
					{taskID = 1351, index = 1},
					},
				},
		},
		{type="openDialog", param={dialogID = 331},}, --���������ʱ��һ���Ի���
		{type = "finishTask", param = {recetiveTaskID = 1352}},--����������������һ������
		},
	},
    },
	[1352] =
	{
		name = "����ĩ��",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20067,		--�������npc
		preTaskData = {1351},	--����ǰ������û����nil
		nextTaskID = 1353,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 338,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --�˵�ͷĿ
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 119,
				dialogID = 332,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20065, x = 105, y = 153, noDelete = true},
				{npcID = 20063, x = 102, y = 153, noDelete = true},
				{npcID = 20063, x = 108, y = 153, noDelete = true},
				{npcID = 20064, x = 103, y = 155, noDelete = true},
				{npcID = 20064, x = 106, y = 155, noDelete = true},
				},
				posData	= {mapID = 15, x = 105, y = 153}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[2] = {type='Tmine',param = --��������
			{
				mineIndex = 2,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 120,
				dialogID = 334,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20066, x = 100, y = 209, noDelete = true},
				{npcID = 20063, x = 100, y = 206, noDelete = true},
				{npcID = 20063, x = 100, y = 212, noDelete = true},
				{npcID = 20064, x = 102, y = 207, noDelete = true},
				{npcID = 20064, x = 102, y = 210, noDelete = true},
				},
				posData	= {mapID = 15, x = 100, y = 209}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[3] = {type='Tmine',param = --����
			{
				mineIndex = 3,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 121,
				dialogID = 336,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20067, x = 136, y = 233, noDelete = true},
				{npcID = 20063, x = 133, y = 233, noDelete = true},
				{npcID = 20063, x = 139, y = 233, noDelete = true},
				{npcID = 20064, x = 134, y = 235, noDelete = true},
				{npcID = 20064, x = 137, y = 235, noDelete = true},
				},
				posData	= {mapID = 15, x = 136, y = 233}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] ={},
		[TaskStatus.Done] =
		{
		{type = "createPrivateNpc", ----------����˽������
			param={
				npcs =
				{
				[1] = {npcID = 20067,mapID = 15, x = 136, y = 233,dir = Direction. WestSouth,},
				},
			},
		},
		{type="openDialog", param={dialogID = 338},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1353] =
	{
		name = "����԰Ѱ�ʵ�",	--��������
		startNpcID = 20067,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1352},	--����ǰ������û����nil
		nextTaskID = 1354,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 15 , x = 178, y = 28, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "autoTrace", param = {tarMapID	= 15, x = 178, y = 28,},}, --Ѱ·��ָ���ص�
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateNpc", ----------ɾ���ű�Χ��
				param={
						npcs =
						{
							{npcID = 20067,	taskID = {1352}, index = 1},
						},
				},
		},
		{type="openDialog", param={dialogID = 340},}, --���������ʱ��һ���Ի���
		{type = "finishTask", param = {recetiveTaskID = 1354}},--����������������һ������
		},
	},
    },
	[1354] =
	{
		name = "��ϸ�Ѳ�",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20049,		--�������npc
		preTaskData = {1353},	--����ǰ������û����nil
		nextTaskID = 1355,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 341,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='TautoMeet',param = {mapID = 15 , x = 178, y = 28, bor =	false},},
		[2] = {type='Tscript',param = {scriptID	= 122 ,	count = 1, bor = true},}, --��һ���ű�ս��(�ű�ս��ID 203������)
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createMine",
			param =
				{
				{mapID = 15, scriptID = {122},fightMapID = nil,stepFactor = 0.2,mustCatch = false},
				}
		}, --���������ף����һ��������һ�ŵ�ͼ�ϣ���Ҫ�����������ף������������׵�����£�д�������
		},
		[TaskStatus.Done] =
		{
		{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
		{type = "removeMine", param = {}}, -- �Ƴ�������
		{type = "createPrivateTransfer", ------����˽�д�����--
			param={
				transfers =
				{
				[1] = {mapID = 15, x =27, y =170, tarMapID = 10, tarX = 31, tarY = 201},
				},
			},
		},
		{type = "autoTrace", param = {tarMapID = 10, x = 46, y = 216,npcID = 20049,},}, --Ѱ·��¬ֲ
		},
	},
    },
	[1355] =
	{
		name = "ѯ�ʻʸ���",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = 20059,		--�������npc
		preTaskData = {1354},	--����ǰ������û����nil
		nextTaskID = 1356,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 343,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 45, y = 188, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] ={},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
			param={
					transfers =
					{
					{taskID = 1354, index = 1},
					},
				},
		},
		{type = "openDialog", param={dialogID = 343},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1356] =
	{
		name = "�������",	--��������
		startNpcID = 20059,	--������ʼnpc
		endNpcID = 20059,		--�������npc
		preTaskData = {1355},	--����ǰ������û����nil
		nextTaskID = 1357,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 346,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tride',param = {rideID = 134, bor = false},}, ------�����������Ŀ��
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "getRide", param = {rideID = 134, count = 1,}},	--���ָ����������
		},
		[TaskStatus.Done] =
		{
		{type = "openDialog", param={dialogID = 346},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1357] =
	{
		name = "��������",	--��������
		startNpcID = 20059,	--������ʼnpc
		endNpcID = 20070,		--�������npc
		preTaskData = {1356},	--����ǰ������û����nil
		nextTaskID = 1358,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 350,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 123,
				dialogID = 348,
				npcsData =			--ˢ��npc����
				{},
				posData	= {mapID = 10, x	= 361, y	= 191}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateNpc", ----------����˽��npc
			param={
				npcs =
					{
					[1] = {npcID = 20070,	mapID =	10, x = 361, y = 191,dir = Direction. South,},
					},
			},
		},
		},
		[TaskStatus.Done] =
		{
		{type = "openDialog", param={dialogID = 350},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1358] =
	{
		name = "̽Ѱ�ڷ���",	--��������
		startNpcID = 20070,	--������ʼnpc
		endNpcID = 20071,		--�������npc
		preTaskData = {1357},	--����ǰ������û����nil
		nextTaskID = 1359,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 352,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='TautoMeet',param = {mapID = 104 , x = 205, y = 50, bor =	false},},
		[2] = {type='Tscript',param = {scriptID	= 124 ,	count = 1, bor = true},}, --��һ���ű�ս��(�ű�ս��ID 203������)
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createMine",
			param =
				{
				{mapID = 104, scriptID = {124},fightMapID = nil,stepFactor = 0.2,mustCatch = false},
				}
		}, --���������ף����һ��������һ�ŵ�ͼ�ϣ���Ҫ�����������ף������������׵�����£�д�������
		},
		[TaskStatus.Done] =
		{
		{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
		{type = "removeMine", param = {}}, -- �Ƴ�������
		{type = "deletePrivateNpc", ----------ɾ������
			param={
					npcs =
					{
					{npcID = 20070,	taskID = {1357}, index = 1},
					},
				},
		},
		{type = "createPrivateNpc", ----------����̽��
			param={
					npcs =
					{
					[1] = {npcID = 20071,	mapID =	104, x = 205, y = 50,dir = Direction. WestSouth,},
					},
			    },
		},
		{type = "openDialog", param={dialogID = 352},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1359] =
	{
		name = "��ս����",	--��������
		startNpcID = 20071,	--������ʼnpc
		endNpcID = 20076,		--�������npc
		preTaskData = {1358},	--����ǰ������û����nil
		nextTaskID = 1360,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 360,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --�ڷ�ɽ����
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 125,
				dialogID = 354,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20074, x = 180, y	= 112, noDelete =	true},
				{npcID = 20072, x = 182, y	= 114, noDelete =	true},
				{npcID = 20072, x = 178, y	= 110, noDelete =	true},
				{npcID = 20073, x = 177, y	= 113, noDelete =	true},
				{npcID = 20073, x = 179, y	= 115, noDelete =	true},
				},
				posData	= {mapID = 104, x	= 180, y	= 112}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[2] = {type='Tmine',param = --�ڷ�ɽ����
			{
				mineIndex = 2,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 126,
				dialogID = 356,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20075, x = 116, y	= 131, noDelete =	true},
				{npcID = 20072, x = 116, y	= 128, noDelete =	true},
				{npcID = 20072, x = 116, y	= 134, noDelete =	true},
				{npcID = 20073, x = 113, y	= 131, noDelete =	true},
				{npcID = 20073, x = 113, y	= 134, noDelete =	true},
				},
				posData	= {mapID = 104, x	= 116, y	= 131}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[3] = {type='Tmine',param = --����
			{
				mineIndex = 3,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 127,
				dialogID = 358,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20076, x = 84, y	= 191, noDelete =	true},
				{npcID = 20072, x = 82, y	= 189, noDelete =	true},
				{npcID = 20072, x = 86, y	= 193, noDelete =	true},
				{npcID = 20073, x = 81, y	= 192, noDelete =	true},
				{npcID = 20073, x = 83, y	= 194, noDelete =	true},
				},
				posData	= {mapID = 104, x	= 84, y	= 191}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateNpc", ----------ɾ��̽��
			param={
					npcs =
					{
					{npcID = 20071,	taskID = {1358}, index = 1},
					},
				},
		},
		{type = "createPrivateNpc", ----------��������
			param={
					npcs =
					{
					[1] = {npcID = 20076,	mapID =	104, x = 84, y = 191,dir = Direction. South,},
					},
			    },
		},
		{type = "openDialog", param={dialogID = 360},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1360] =
	{
		name = "����ڷ綴",	--��������
		startNpcID = 20076,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1359},	--����ǰ������û����nil
		nextTaskID = {1361,1363,1365,1367,1369,1371,},--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 12000,    --����
			[TaskRewardList.player_pot] = 3600,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --�ڷ�ɽ����
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 128,
				dialogID = 362,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20077, x = 30, y	= 44, noDelete =	true},
				},
				posData	= {mapID = 407, x	= 30, y	= 44}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[2] =	{type='Tscript',param =	{scriptID = 128	, count	= 1, ignoreResult = true, bor =	true},},--����ʤ��
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateTransfer", ------����˽�д�����
					param={
							transfers =
							{
								[1] = {mapID = 104, x =28, y =180, tarMapID = 407, tarX = 69, tarY = 35},
							},
						},
				},
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateNpc", ----------ɾ������
			param={
					npcs =
					{
					{npcID = 20076,	taskID = {1359}, index = 1},
					},
				},
		},
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1360, index = 1},
							},
						},
				},
		{type = "finishTask", param = {recetiveTaskID = {1361,1363,1365,1367,1369,1371,}}},--���������������¶������
		},
	},
    },
----------------------------------------------��ʼ������--------------------------------------
----------------------------------------------ǬԪ��--------------------------------------
    [1361] =	--ǬԪ��
	{
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20004,		--�������npc
		preTaskData = {1360},------{1005},	--����ǰ������û����nil
		nextTaskID = 1362,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 364,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 1 , x = 26, y = 84, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 1, x = 85, y = 63,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 1, x = 26, y = 84,npcID = 20004,},}, --Ѱ·������
		},
	},
	},
	[1362] =	--ǬԪ��
	{
		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20078,		--�������npc
		preTaskData = {1361},------{1005},	--����ǰ������û����nil
		nextTaskID = 1373,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 440,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 112 , x = 80, y = 91, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 112, x = 80, y = 91,npcID = 20078,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------��Դ��--------------------------------------
    [1363] =	--��Դ��
	{
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20005,		--�������npc
		preTaskData = {1360},------{1005},	--����ǰ������û����nil
		nextTaskID = 1364,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 366,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 4 , x = 59, y = 72, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 4, x = 108, y = 70,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 4, x = 59, y = 72,npcID = 20005,},}, --Ѱ·������
		},
	},
	},
	[1364] =	--��Դ��
	{
		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20078,		--�������npc
		preTaskData = {1363},------{1005},	--����ǰ������û����nil
		nextTaskID = 1373,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 448,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 112 , x = 80, y = 91, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 112, x = 80, y = 91,npcID = 20078,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------��ϼɽ--------------------------------------
    [1365] =	--��ϼɽ
	{
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20006,		--�������npc
		preTaskData = {1360},------{1005},	--����ǰ������û����nil
		nextTaskID = 1366,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 368,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 3 , x = 26, y = 92, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 3, x = 134, y = 70,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 3, x = 26, y = 92,npcID = 20006,},}, --Ѱ·������
		},
	},
	},
	[1366] =	--��ϼɽ
	{
		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20078,		--�������npc
		preTaskData = {1365},------{1005},	--����ǰ������û����nil
		nextTaskID = 1373,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 444,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 112 , x = 80, y = 91, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 112, x = 80, y = 91,npcID = 20078,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------������--------------------------------------
    [1367] =	--������
	{
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20007,		--�������npc
		preTaskData = {1360},------{1005},	--����ǰ������û����nil
		nextTaskID = 1368,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 370,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 2 , x = 83, y = 125, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 2, x = 86, y = 32,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 2, x = 83, y = 125,npcID = 20007,},}, --Ѱ·������
		},
	},
	},
	[1368] =	--������
	{
		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20078,		--�������npc
		preTaskData = {1367},------{1005},	--����ǰ������û����nil
		nextTaskID = 1373,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 446,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 112 , x = 80, y = 91, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 112, x = 80, y = 91,npcID = 20078,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------������--------------------------------------
    [1369] =	--������
	{
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20008,		--�������npc
		preTaskData = {1360},------{1005},	--����ǰ������û����nil
		nextTaskID = 1370,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 372,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 6 , x = 67, y = 135, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 6, x = 103, y = 61,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 6, x = 67, y = 135,npcID = 20008,},}, --Ѱ·������
		},
	},
	},
	[1370] =	--������
	{
		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20078,		--�������npc
		preTaskData = {1369},------{1005},	--����ǰ������û����nil
		nextTaskID = 1373,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 448,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 112 , x = 80, y = 91, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 112, x = 80, y = 91,npcID = 20078,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------������--------------------------------------
    [1371] =	--������
	{
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20009,		--�������npc
		preTaskData = {1360},------{1005},	--����ǰ������û����nil
		nextTaskID = 1372,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 374,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 5 , x = 43, y = 112, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
		{
		{type="doSwithScene", param = {tarMapID = 5, x = 52, y = 54,}},	--���͵���һ������
		},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 5, x = 43, y = 112,npcID = 20009,},}, --Ѱ·������
		},
	},
	},
	[1372] =	--������
	{
		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20078,		--�������npc
		preTaskData = {1371},------{1005},	--����ǰ������û����nil
		nextTaskID = 1373,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 450,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 300,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 6000,    --����
			[TaskRewardList.player_pot] = 1800,  	--����Ǳ��
		},
		consume	={},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 112 , x = 80, y = 91, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		={},
		[TaskStatus.Done]		=
		{
		{type="autoTrace", param = {tarMapID	= 112, x = 80, y = 91,npcID = 20078,},}, --Ѱ·������
		},
	},
	},
----------------------------------------------�����ɽ���--------------------------------------
    [1373] =
	{
		name = "�ջ�ǿԮ",	--��������
		startNpcID = 20078,	--������ʼnpc
		endNpcID = 20079,		--�������npc
		preTaskData = {condition = "or",{1362,1364,1366,1368,1370,1372}},		--����ǰ������û����nil
		nextTaskID = 1374,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		--startDialogID =	{441,443,445,447,449,451},	--���������Ի�ID
		endDialogID = 378,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 104 , x = 35, y = 192, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateNpc", ----------����˽��npc
			param={
						npcs =
						{
						[1] = {npcID = 20079,	mapID =	104, x = 35, y = 192,dir = Direction. South,},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type="autoTrace", param = {tarMapID	= 104, x = 35, y = 192,npcID = 20079,},}, --Ѱ·������
		},
	},
    },
	[1374] =
	{
		name = "��ս�ڷ�����",	--��������
		startNpcID = 20079,	--������ʼnpc
		endNpcID = 20079,		--�������npc
		preTaskData = {1373},	--����ǰ������û����nil
		nextTaskID = 1375,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 382,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --�ڷ�����
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 129,
				dialogID = 380,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20077, x = 30, y	= 44, noDelete =	true},
				},
				posData	= {mapID = 407, x	= 30, y	= 44}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateTransfer", ------����˽�д�����
			param={
						transfers =
						{
						[1] = {mapID = 104, x =28, y =180, tarMapID = 407, tarX = 69, tarY = 35},
						},
				},
		},
		{type = "deletePrivateNpc", ----------ɾ��ͯ��
			param={
						npcs =
						{
						{npcID = 20079,	taskID = {1373}, index = 1},
						},
				},
		},
		{type = "createFollow", param = {npcs = {20079},}},				--����ָ��npc����(����npcID)
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
				param={
						transfers =
						{
						{taskID = 1374, index = 1},
						},
				},
		},
		{type = "deleteFollow", param = {npcs = {20079},}}, --�����״̬ɾ��ָ��ID��npc����
		{type = "createPrivateNpc", ----------����˽��npc
				param={
						npcs =
						{
						[1] = {npcID = 20079,	mapID =	407, x = 31, y = 47,dir = Direction. South,},
						[2] = {npcID = 20077,	mapID =	407, x = 30, y = 44,dir = Direction. EastSouth,},
						},
				},
		},
		{type = "openDialog", param={dialogID = 382},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1375] =
	{
		name = "���߻ʸ���",	--��������
		startNpcID = 20079,	--������ʼnpc
		endNpcID = 20059,		--�������npc
		preTaskData = {1374},	--����ǰ������û����nil
		nextTaskID = 1376,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 384,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 45, y = 188, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateTransfer", ------����˽�д�����
			param={
						transfers =
						{
						[1] = {mapID = 407, x =69, y =35, tarMapID = 104, tarX = 28, tarY = 180},
						},
				},
		},
		{type = "deletePrivateNpc", ----------ɾ��ͯ�ӡ��ڷ�����
			param={
						npcs =
						{
						{npcID = 20079,	taskID = {1374}, index = 1},
						{npcID = 20077,	taskID = {1374}, index = 2},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
				param={
						transfers =
						{
						{taskID = 1375, index = 1},
						},
				},
		},
		{type = "openDialog", param={dialogID = 384},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1376] =
	{
		name = "��ܷ���",	--��������
		startNpcID = 20059,	--������ʼnpc
		endNpcID = 20084,		--�������npc
		preTaskData = {1375},	--����ǰ������û����nil
		nextTaskID = 1377,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 392,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --��Ӫ��
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 130,
				dialogID = 386,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20082, x = 226, y	= 142, noDelete =	true},
				{npcID = 20080, x = 229, y	= 142, noDelete =	true},
				{npcID = 20080, x = 223, y	= 142, noDelete =	true},
				{npcID = 20081, x = 225, y	= 139, noDelete =	true},
				{npcID = 20081, x = 228, y	= 139, noDelete =	true},
				},
				posData	= {mapID = 106, x	= 226, y	= 142}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[2] = {type='Tmine',param = --����
			{
				mineIndex = 2,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 131,
				dialogID = 388,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20083, x = 217, y	= 73, noDelete =	true},
				{npcID = 20080, x = 220, y	= 70, noDelete =	true},
				{npcID = 20080, x = 215, y	= 76, noDelete =	true},
				{npcID = 20081, x = 214, y	= 74, noDelete =	true},
				{npcID = 20081, x = 217, y	= 70, noDelete =	true},
				},
				posData	= {mapID = 106, x	= 217, y	= 73}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[3] = {type='Tmine',param = --����
			{
				mineIndex = 3,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 132,
				dialogID = 390,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20084, x = 164, y	= 78, noDelete =	true},
				{npcID = 20080, x = 167, y	= 78, noDelete =	true},
				{npcID = 20080, x = 161, y	= 78, noDelete =	true},
				{npcID = 20081, x = 162, y	= 80, noDelete =	true},
				{npcID = 20081, x = 165, y	= 80, noDelete =	true},
				},
				posData	= {mapID = 106, x	= 164, y	= 78}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] ={},
		[TaskStatus.Done] =
		{
		{type = "createPrivateNpc", ----------����˽��npc
				param={
						npcs =
						{
						[1] = {npcID = 20084,	mapID =	106, x = 164, y = 78,dir = Direction. WestSouth,},
						},
				},
		},
		{type = "openDialog", param={dialogID = 392},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1377] =
	{
		name = "��������",	--��������
		startNpcID = 20084,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1376},	--����ǰ������û����nil
		nextTaskID = 1378,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --����ħ��
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 133,
				dialogID = 394,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20087, x = 162, y	= 154, noDelete =	true},
				{npcID = 20085, x = 165, y	= 154, noDelete =	true},
				{npcID = 20085, x = 159, y	= 154, noDelete =	true},
				{npcID = 20086, x = 160, y	= 156, noDelete =	true},
				{npcID = 20086, x = 163, y	= 156, noDelete =	true},
				},
				posData	= {mapID = 106, x	= 162, y	= 154}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[2] = {type='Tmine',param = --�d������
			{
				mineIndex = 2,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 134,
				dialogID = 396,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20088, x = 114, y	= 202, noDelete =	true},
				{npcID = 20085, x = 111, y	= 205, noDelete =	true},
				{npcID = 20085, x = 117, y	= 199, noDelete =	true},
				{npcID = 20086, x = 111, y	= 202, noDelete =	true},
				{npcID = 20086, x = 114, y	= 199, noDelete =	true},
				},
				posData	= {mapID = 106, x	= 114, y	= 202}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[3] = {type='Tmine',param = --����
			{
				mineIndex = 3,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 135,
				dialogID = 398,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20089, x = 95, y	= 148, noDelete =	true},
				},
				posData	= {mapID = 106, x	= 95, y	= 148}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[4] =	{type='Tscript',param =	{scriptID = 135	, count	= 1, ignoreResult = true, bor =	true},},--����ʤ��
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] ={},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateNpc", ----------ɾ��NPC
			param={
						npcs =
						{
						{npcID = 20084, taskID = {1376}, index = 1},
						},
				},
		},
		{type = "doSwithScene", param = {tarMapID = 106,	x = 172, y = 189,}},	--���͵���һ������
		{type = "finishTask", param = {recetiveTaskID = 1378}},--����������������һ������
		},
	},
    },
	[1378] =
	{
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20002,		--�������npc
		preTaskData = {1377},	--����ǰ������û����nil
		nextTaskID = 1379,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 400,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 219, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "autoTrace", param = {tarMapID	= 8, x = 134, y = 219,npcID = 20002,},}, --Ѱ·������
		},
		[TaskStatus.Done] =
		{
		{type = "openDialog", param={dialogID = 400},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1379] =
	{
		name = "����Ⱥ��",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20049,		--�������npc
		preTaskData = {1378},	--����ǰ������û����nil
		nextTaskID = 1380,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 402,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 46, y = 216, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] ={},
		[TaskStatus.Done] =
		{
		{type = "openDialog", param={dialogID = 402},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1380] =
	{
		name = "�������",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = 20095,		--�������npc
		preTaskData = {1379},	--����ǰ������û����nil
		nextTaskID = 1381,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 410,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --����ͳ��
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 136,
				dialogID = 404,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20093, x = 250, y	= 98, noDelete =	true},
				{npcID = 20090, x = 253, y	= 98, noDelete =	true},
				{npcID = 20090, x = 247, y	= 98, noDelete =	true},
				{npcID = 20092, x = 251, y	= 101, noDelete =	true},
				{npcID = 20092, x = 248, y	= 101, noDelete =	true},
				},
				posData	= {mapID = 408, x	= 250, y	= 98}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[2] = {type='Tmine',param = --��������
			{
				mineIndex = 2,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 137,
				dialogID = 406,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20094, x = 184, y	= 105, noDelete =	true},
				{npcID = 20090, x = 184, y	= 108, noDelete =	true},
				{npcID = 20090, x = 185, y	= 102, noDelete =	true},
				{npcID = 20092, x = 181, y	= 104, noDelete =	true},
				{npcID = 20092, x = 181, y	= 107, noDelete =	true},
				},
				posData	= {mapID = 408, x	= 184, y	= 105}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		[3] = {type='Tmine',param = --����
			{
				mineIndex = 3,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 138,
				dialogID = 408,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20095, x = 87, y	= 286, noDelete =	true},
				{npcID = 20090, x = 90, y	= 286, noDelete =	true},
				{npcID = 20090, x = 84, y	= 286, noDelete =	true},
				{npcID = 20092, x = 85, y	= 288, noDelete =	true},
				{npcID = 20092, x = 88, y	= 288, noDelete =	true},
				},
				posData	= {mapID = 408, x	= 87, y	= 286}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateTransfer", ------����˽�д�����
			param={
						transfers =
						{
						[1] = {mapID = 109, x =221, y =68, tarMapID = 408, tarX = 311, tarY = 79},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
				param={
						transfers =
						{
						{taskID = 1380, index = 1},
						},
				},
		},
		{type = "createPrivateNpc", ----------����˽��npc
				param={
						npcs =
						{
						[1] = {npcID = 20095,	mapID =	408, x = 87, y = 286,dir = Direction. WestSouth,},
						},
				},
		},
		{type = "openDialog", param={dialogID = 410},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1381] =
	{
		name = "Ӫ��Ԭ��",	--��������
		startNpcID = 20095,	--������ʼnpc
		endNpcID = 20091,		--�������npc
		preTaskData = {1380},	--����ǰ������û����nil
		nextTaskID = 1382,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 414,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 139,
				dialogID = 412,
				npcsData =			--ˢ��npc����
				{},
				posData	= {mapID = 110, x	= 201, y	= 111}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateTransfer", ------����˽�д�����
			param={
						transfers =
						{
						[1] = {mapID = 408, x =311, y =79, tarMapID = 109, tarX = 221, tarY = 68},
						},
				},
		},
		{type = "createPrivateNpc", ----------������ɰ�ΧԬ��
				param={
						npcs =
						{
						[1] = {npcID = 20091,	mapID = 110, x = 201, y = 111,dir = Direction. WestNorth,},--Ԭ��
						[2] = {npcID = 20098,	mapID = 110, x = 197, y = 111,dir = Direction. EastSouth,},--���
						[3] = {npcID = 20096,	mapID = 110, x = 199, y = 108,dir = Direction. EastNorth,},
						[4] = {npcID = 20097,	mapID = 110, x = 203, y = 108,dir = Direction. North,},
						[5] = {npcID = 20111,	mapID = 110, x = 198, y = 114,dir = Direction. South,},
						[6] = {npcID = 20112,	mapID = 110, x = 201, y = 114,dir = Direction. WestSouth,},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateTransfer", ------ɾ��˽�д�����
				param={
						transfers =
						{
						{taskID = 1381, index = 1},
						},
				},
		},
		{type = "deletePrivateNpc", ----------ɾ��NPC
			param={
						npcs =
						{
						{npcID = 20095, taskID = {1380}, index = 1},
						{npcID = 20098, taskID = {1381}, index = 2},
						{npcID = 20096, taskID = {1381}, index = 3},
						{npcID = 20097, taskID = {1381}, index = 4},
						{npcID = 20111, taskID = {1381}, index = 5},
						{npcID = 20112, taskID = {1381}, index = 6},
						},
				},
		},
		{type = "openDialog", param={dialogID = 414},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1382] =
	{
		name = "����Ԭ��",	--��������
		startNpcID = 20091,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1381},	--����ǰ������û����nil
		nextTaskID = 1383,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --����
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 140,
				dialogID = 416,
				npcsData =			--ˢ��npc����
				{
				{npcID = 20101, x = 142, y	= 121, noDelete =	true},
				{npcID = 20099, x = 140, y	= 119, noDelete =	true},
				{npcID = 20099, x = 144, y	= 123, noDelete =	true},
				{npcID = 20100, x = 141, y	= 124, noDelete =	true},
				{npcID = 20100, x = 139, y	= 122, noDelete =	true},
				},
				posData	= {mapID = 110, x	= 142, y	= 121}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "deletePrivateNpc", ----------ɾ��NPC
			param={
						npcs =
						{
						{npcID = 20091, taskID = {1381}, index = 1},
						},
				},
		},
		{type = "createFollow", param = {npcs = {20091},}},				--����ָ��npc����(����npcID)
		},
		[TaskStatus.Done] =
		{
		{type = "openDialog", param={dialogID = 418},}, --���������ʱ��һ���Ի���
		{type = "finishTask", param = {recetiveTaskID = 1383}},--����������������һ������
		},
	},
    },
	[1383] =
	{
		name = "��ȫ����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20091,		--�������npc
		preTaskData = {1382},	--����ǰ������û����nil
		nextTaskID = 1384,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 422,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tmine',param = --���F
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID = 141,
				dialogID = 420,
				npcsData =			--ˢ��npc����
				{},
				posData	= {mapID = 110, x	= 77, y	= 130}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] =
		{
		{type = "createPrivateNpc", ----------�������F�ع�
				param={
						npcs =
						{
						[1] = {npcID = 20109,	mapID = 110, x = 77, y = 130,dir = Direction. EastSouth,},--���F
						[2] = {npcID = 20102,	mapID = 110, x = 77, y = 127,dir = Direction. EastSouth,},
						[3] = {npcID = 20103,	mapID = 110, x = 77, y = 133,dir = Direction. EastSouth,},
						[4] = {npcID = 20104,	mapID = 110, x = 75, y = 129,dir = Direction. EastSouth,},
						[5] = {npcID = 20105,	mapID = 110, x = 75, y = 132,dir = Direction. EastSouth,},
						},
				},
		},
		},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateNpc", ----------ɾ��NPC
			param={
						npcs =
						{
						{npcID = 20109, taskID = {1383}, index = 1},
						{npcID = 20102, taskID = {1383}, index = 1},
						{npcID = 20103, taskID = {1383}, index = 1},
						{npcID = 20104, taskID = {1383}, index = 1},
						{npcID = 20105, taskID = {1383}, index = 1},
						},
				},
		},
		{type = "deleteFollow", param = {npcs = {20091},}}, --�����״̬ɾ��ָ��ID��npc����
		{type = "createPrivateNpc", ----------����Ԭ��
				param={
						npcs =
						{
						[1] = {npcID = 20091,	mapID = 110, x = 77, y = 130,dir = Direction. EastSouth,},--Ԭ��
						},
				},
		},
		{type = "openDialog", param={dialogID = 422},}, --���������ʱ��һ���Ի���
		},
	},
    },
	[1384] =
	{
		name = "�ظ�¬ֲ",	--��������
		startNpcID = 20091,	--������ʼnpc
		endNpcID = 20049,		--�������npc
		preTaskData = {1383},	--����ǰ������û����nil
		nextTaskID = 1101,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 424,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 11000,    --����
			[TaskRewardList.player_pot] = 3300,  	--����Ǳ��
		},
		consume	={},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 46, y = 216, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active] ={},
		[TaskStatus.Done] =
		{
		{type = "deletePrivateNpc", ----------ɾ���ű�Χ��
				param={
						npcs =
						{
							{npcID = 20091,	taskID = {1383}, index = 1},
						},
				},
		},
		{type = "openDialog", param={dialogID = 424},}, --���������ʱ��һ���Ի���
		},
	},
    },
-----------------------------------------------------------------------------------------------------

}

table.copy(MainTaskDB1_20, NormalTaskDB)