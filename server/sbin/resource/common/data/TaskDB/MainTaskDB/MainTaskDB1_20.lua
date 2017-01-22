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
		startNpcID = 20001,
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
		consume	=
		{
		},
		targets	=
		{
		},
		triggers =
		{
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 8, x = 95, y = 184,npcID = 20001,},},
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
		startDialogID =	103,
		endDialogID = 104,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
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
		nextTaskID = {1004,1009,1014,1019,1024,1029},--�����������û����nil
		startDialogID =	105,	--������Ի�IDû����nil
		endDialogID = 107,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 240,   --��Ҿ���
			--[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 3000,    --����
			[TaskRewardList.player_pot] = 900,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tscript',param = {scriptID	= 100 ,	count =	1, ignoreResult = true,bor = true},}, --��һ���ű�ս��(�ű�ս��ID 100 ����)
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 107},}, --���������ʱ��һ���Ի���
			},
		},
	},
	----------------------------------------------ǬԪ��----------------------------
	[1004] = -----------ǬԪ��
	{

		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1005,	--�����������û����nil
		startDialogID =	108,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
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
	[1005] =	--ǬԪ��
	{

		name = "�򿪰ٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1004},	--����ǰ������û����nil
		nextTaskID = 1006,	--�����������û����nil
		startDialogID =	110,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="getItem", param = {itemID = 1026006, count = 1,}},--�����Ʒ
			},
		},
	},
	[1006] =	--ǬԪ��
	{

		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20004,		--�������npc
		preTaskData = nil,------{1005},	--����ǰ������û����nil
		nextTaskID = 1007,	--�����������û����nil
		startDialogID =	112,	--������Ի�IDû����nil
		endDialogID = 113,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 1 , x = 44, y = 85, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="doSwithScene", param = {tarMapID = 1,	x = 44, y = 85,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 1, x = 26, y = 84,npcID = 20004,},}, --Ѱ·������
			},
		},
	},
	[1007] =	--ǬԪ��
	{

		name = "�����ķ�",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20004,		--�������npc
		preTaskData = {1006},	--����ǰ������û����nil
		nextTaskID = 1034,	--�����������û����nil
		startDialogID =	114,	--������Ի�IDû����nil
		endDialogID = 115,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 20101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 115},},
			},
		},
	},
	[1034] =	--ǬԪ��
	{

		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20004,	--ǬԪ������
		endNpcID = 20021,		--�����ǬԪ������
		preTaskData = {1007},
		nextTaskID = 1036,
		startDialogID =	168,
		endDialogID = 169,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 1, x = 32, y = 76, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 1, x = 32, y	= 76,npcID = 20021,},},
			},
		},
	},
	
	[1036] =	----ǬԪ��
	{

		name = "��׽����",	--��������
		startNpcID = 20021,	--ǬԪ������
		endNpcID = 20021,		--�����ǬԪ������
		preTaskData = {1034},
		nextTaskID = 1037,
		startDialogID =nil	,
		endDialogID = 171,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 1 , x = 61, y = 82, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 1, x = 61, y = 82,}},--��������һ����������
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
	[1037] =	--ǬԪ��
	{

		name = "Ҫ������",	--��������
		startNpcID = 20021,	--����Ӷ���
		endNpcID = 20004,		--ǬԪ������
		preTaskData = {1036},
		nextTaskID = 1038,
		startDialogID =	172,
		endDialogID = 173,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
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
	[1038] =	--ǬԪ��
	{

		name = "ǰ����԰��",	--��������
		startNpcID = 20004,	--ǬԪ������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1037},
		nextTaskID = 1035,
		startDialogID =	116,
		endDialogID = 117,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 94, y = 34, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=
			{
			{type="createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 1, x =132, y =41, tarMapID = 9, tarX = 94, tarY = 34},
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
                {type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1038, index = 1},
							},
						},
				},
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
   [1035] =	--ǬԪ��
	{
		name = "Ѱ������",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1038}, 
		nextTaskID = 1065,
		startDialogID =	360,   --������ӵ�һ���Ի�
		endDialogID = 366,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 101 , x = 224, y = 115, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
					{
						{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20028,	mapID =	101, x = 224, y = 115,dir = WestSouth,},
						},
					},
				},
					},
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 366},}, --���������ʱ��һ���Ի���
			},
		},
	},
	----------------------------------------------��Դ��----------------------------
	[1009] = -----------��Դ��
	{

		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1010,	--�����������û����nil
		startDialogID =	118,	--������Ի�IDû����nil
		endDialogID = 119,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
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
	[1010] =	--��Դ��
	{

		name = "�򿪰ٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1009},	--����ǰ������û����nil
		nextTaskID = 1011,	--�����������û����nil
		startDialogID =	120,	--������Ի�IDû����nil
		endDialogID = 121,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="getItem", param = {itemID = 1026013, count = 1,}},--�����Ʒ
			},
		},
	},
	[1011] =	--��Դ��
	{

		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20005,		--�������npc
		preTaskData = {1010},	--����ǰ������û����nil
		nextTaskID = 1012,	--�����������û����nil
		startDialogID =	122,	--������Ի�IDû����nil
		endDialogID = 123,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 4 , x = 78, y = 70, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="doSwithScene", param = {tarMapID = 4,	x = 78, y = 70,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 4, x = 59, y = 72,npcID = 20005,},}, --Ѱ·������
			},
		},
	},
	[1012] =	--��Դ��
	{

		name = "�����ķ�",	--��������
		startNpcID = 20005,	--������ʼnpc
		endNpcID = 20005,		--�������npc
		preTaskData = {1011},	--����ǰ������û����nil
		nextTaskID = 1039,	--�����������û����nil
		startDialogID =	124,	--������Ի�IDû����nil
		endDialogID = 125,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 50101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 125},},
			},
		},
	},
	[1039] =	--��Դ��
	{

		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20005,	--��Դ������
		endNpcID = 20025,		--�����ׯ�ε�
		preTaskData = {1012},
		nextTaskID = 1040,
		startDialogID =	174,
		endDialogID = 175,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 4, x = 61, y = 93, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 4, x = 61, y	= 93,npcID = 20025,},},
			},
		},
	},
	
	[1040] =	----��Դ��
	{

		name = "��׽����",	--��������
		startNpcID = 20025,	--��Դ������
		endNpcID = 20025,		--�����ׯ�ε�
		preTaskData = {1039},
		nextTaskID = 1042,
		startDialogID =176	,
		endDialogID = 177,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 4 , x = 79, y = 58, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 4, x = 79, y = 58,}},--��������һ����������
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
	[1042] =	--��Դ��
	{

		name = "Ҫ������",	--��������
		startNpcID = 20025,	--�����ׯ�ε�
		endNpcID = 20005,		--��Դ������
		preTaskData = {1040},
		nextTaskID = 1043,
		startDialogID =	178,
		endDialogID = 179,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 4, x = 59, y = 72, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 4, x = 59, y	= 72,npcID = 20005,},},
			},
		},
	},
	[1043] =	--��Դ��
	{

		name = "ǰ����԰��",	--��������
		startNpcID = 20005,	--��Դ������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1042},
		nextTaskID = 1041,
		startDialogID =	126,
		endDialogID = 127,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 94, y = 34, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 4, x = 97, y = 9, tarMapID = 9, tarX = 94, tarY = 34},
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
                {type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1043, index = 1},
							},
						},
				},
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
	  [1041] =	--��Դ��
	{
		name = "Ѱ������",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1043}, 
		nextTaskID = 1065,
		startDialogID =	361,   --������ӵ�һ���Ի�
		endDialogID = 367,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 101 , x = 224, y = 115, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
					{
						{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20028,	mapID =	101, x = 224, y = 115,dir = WestSouth,},
						},
					},
				},
					},
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 367},}, --���������ʱ��һ���Ի���
			},
		},
	},

	----------------------------------------------��ϼɽ----------------------------
	[1014] = -----------��ϼɽ
	{

		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1015,	--�����������û����nil
		startDialogID =	128,	--������Ի�IDû����nil
		endDialogID = 129,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
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
	[1015] =	--��ϼɽ
	{

		name = "�򿪰ٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1014},	--����ǰ������û����nil
		nextTaskID = 1016,	--�����������û����nil
		startDialogID =	130,	--������Ի�IDû����nil
		endDialogID = 131,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="getItem", param = {itemID = 1026020, count = 1,}},--�����Ʒ
			},
		},
	},
	[1016] =	--��ϼɽ
	{

		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20006,		--�������npc
		preTaskData = {1015},	--����ǰ������û����nil
		nextTaskID = 1017,	--�����������û����nil
		startDialogID =	128,	--������Ի�IDû����nil
		endDialogID = 133,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 3 , x = 39, y = 82, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="doSwithScene", param = {tarMapID = 3,	x = 39, y = 82,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 3, x = 26, y = 92,npcID = 20006,},}, --Ѱ·������
			},
		},
	},
	[1017] =	--��ϼɽ
	{

		name = "�����ķ�",	--��������
		startNpcID = 20006,	--������ʼnpc
		endNpcID = 20006,		--�������npc
		preTaskData = {1016},	--����ǰ������û����nil
		nextTaskID = 1044,	--�����������û����nil
		startDialogID =	134,	--������Ի�IDû����nil
		endDialogID = 135,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 10101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 135},},
			},
		},
	},
	[1044] =	--��ϼɽ
	{
		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20006,	--��ϼɽ����
		endNpcID = 20023,		--��������
		preTaskData = {1017},
		nextTaskID = 1045,
		startDialogID =	180,
		endDialogID = 181,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 3, x = 33, y = 111, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 3, x = 33, y	= 111,npcID = 20023,},},
			},
		},
	},
	
	[1045] =	----��ϼɽ
	{

		name = "��׽����",	--��������
		startNpcID = 20023,	----��������
		endNpcID = 20023,		--��������
		preTaskData = {1044},
		nextTaskID = 1047,
		startDialogID =182	,
		endDialogID = 183,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 3 , x = 106, y = 84, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 3, x = 106, y = 84,}},--��������һ����������
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
	[1047] =	--��ϼɽ
	{

		name = "Ҫ������",	--��������
		startNpcID = 20023,	--��������
		endNpcID = 20006,		--��ϼɽ����
		preTaskData = {1045},
		nextTaskID = 1048,
		startDialogID =	184,
		endDialogID = 185,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 3, x = 26, y = 92, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 3, x = 26, y	= 92,npcID = 20006,},},
			},
		},
	},
	[1048] =	--��ϼɽ
	{

		name = "ǰ����԰��",	--��������
		startNpcID = 20006,	--��ϼɽ����
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1047},
		nextTaskID = 1046,
		startDialogID =	136,
		endDialogID = 137,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 94, y = 34, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 3, x = 101, y = 12, tarMapID = 9, tarX = 94, tarY = 34},
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
                {type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1048, index = 1},
							},
						},
				},
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
     [1046] =	--��ϼɽ
	{
		name = "Ѱ������",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1048}, 
		nextTaskID = 1065,
		startDialogID =	362,
		endDialogID = 368,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 101 , x = 224, y = 115, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
					{
						{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20028,	mapID =	101, x = 224, y = 115,dir = WestSouth,},
						},
					},
				},
					},
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 368},}, --���������ʱ��һ���Ի���
			},
		},
	},


	----------------------------------------------������----------------------------
	[1019] = -----------������
	{

		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1020,	--�����������û����nil
		startDialogID =	138,	--������Ի�IDû����nil
		endDialogID = 139,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
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
	[1020] =	--������
	{

		name = "�򿪰ٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1019},	--����ǰ������û����nil
		nextTaskID = 1021,	--�����������û����nil
		startDialogID =	140,	--������Ի�IDû����nil
		endDialogID = 141,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="getItem", param = {itemID = 1026027, count = 1,}},--�����Ʒ
			},
		},
	},
	[1021] =	--������
	{

		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20007,		--�������npc
		preTaskData = {1020},	--����ǰ������û����nil
		nextTaskID = 1022,	--�����������û����nil
		startDialogID =	142,	--������Ի�IDû����nil
		endDialogID = 143,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 2 , x = 86, y = 100, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="doSwithScene", param = {tarMapID = 2,	x = 86, y = 100,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 2, x = 83, y = 125,npcID = 20007,},}, --Ѱ·������
			},
		},
	},
	[1022] =	--������
	{

		name = "�����ķ�",	--��������
		startNpcID = 20007,	--������ʼnpc
		endNpcID = 20007,		--�������npc
		preTaskData = {1021},	--����ǰ������û����nil
		nextTaskID = 1049,	--�����������û����nil
		startDialogID =	144,	--������Ի�IDû����nil
		endDialogID = 145,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 40101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 145},},
			},
		},
	},
	[1049] =	--������
	{

		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20007,	--����������
		endNpcID = 20022,		--���������
		preTaskData = {1022},
		nextTaskID = 1050,
		startDialogID =	186,
		endDialogID = 187,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 2, x = 61, y = 127, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 2, x = 61, y	= 127,npcID = 20022,},},
			},
		},
	},
	
	[1050] =	----������
	{

		name = "��׽����",	--��������
		startNpcID = 20022,	----���������
		endNpcID = 20022,		--���������
		preTaskData = {1049},
		nextTaskID = 1052,
		startDialogID =188	,
		endDialogID = 189,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 2 , x = 19, y = 98, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 2, x = 19, y = 98,}},--��������һ����������
				{type="createMine",
					param =
					{
					{mapID = 2, scriptID ={101,},fightMapID = nil,stepFactor = 0.1,mustCatch = true},
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
	[1052] =	--������
	{

		name = "Ҫ������",	--��������
		startNpcID = 20022,	--���������
		endNpcID = 20007,		--����������
		preTaskData = {1050},
		nextTaskID = 1053,
		startDialogID =	190,
		endDialogID = 191,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 2, x = 83, y = 125, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 2, x = 83, y	= 125,npcID = 20007,},},
			},
		},
	},
	[1053] =	--������
	{

		name = "ǰ����԰��",	--��������
		startNpcID = 20007,	--����������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1052},
		nextTaskID = 1051,
		startDialogID =	146,
		endDialogID = 147,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 94, y = 34, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 2, x = 13, y = 99, tarMapID = 9, tarX = 94, tarY = 34},
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
                {type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1053, index = 1},
							},
						},
				},
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
    [1051] =	--������
	{
		name = "Ѱ������",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1053}, 
		nextTaskID = 1065,
		startDialogID =	363,
		endDialogID = 369,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 101 , x = 224, y = 115, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
					{
						{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20028,	mapID =	101, x = 224, y = 115,dir = WestSouth,},
						},
					},
				},
					},
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 369},}, --���������ʱ��һ���Ի���
			},
		},
	},



	----------------------------------------------������----------------------------
	[1024] = -----------������
	{

		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1025,	--�����������û����nil
		startDialogID =	148,	--������Ի�IDû����nil
		endDialogID = 149,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
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
	[1025] =	--������
	{

		name = "�򿪰ٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1024},	--����ǰ������û����nil
		nextTaskID = 1026,	--�����������û����nil
		startDialogID =	150,	--������Ի�IDû����nil
		endDialogID = 151,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="getItem", param = {itemID = 1026034, count = 1,}},--�����Ʒ
			},
		},
	},
		[1026] =	--������
	{

		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20008,		--�������npc
		preTaskData = {1025},	--����ǰ������û����nil
		nextTaskID = 1027,	--�����������û����nil
		startDialogID =	152,	--������Ի�IDû����nil
		endDialogID = 153,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 6 , x = 72, y = 101, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="doSwithScene", param = {tarMapID = 6,	x = 72, y = 101,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 6, x = 67, y = 135,npcID = 20008,},}, --Ѱ·������
			},
		},
	},
	[1027] =	--������
	{

		name = "�����ķ�",	--��������
		startNpcID = 20008,	--������ʼnpc
		endNpcID = 20008,		--�������npc
		preTaskData = {1026},	--����ǰ������û����nil
		nextTaskID = 1054,	--�����������û����nil
		startDialogID =	154,	--������Ի�IDû����nil
		endDialogID = 155,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 30101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 155},},
			},
		},
	},
	[1054] =	--������
	{

		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20008,	--����������
		endNpcID = 20026,		--����ӵ�ɰ�
		preTaskData = {1027},
		nextTaskID = 1055,
		startDialogID =	192,
		endDialogID = 193,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 6, x = 43, y = 112, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 6, x = 43, y	= 112,npcID = 20026,},},
			},
		},
	},
	
	[1055] =	----������
	{

		name = "��׽����",	--��������
		startNpcID = 20026,	----����ӵ�ɰ�
		endNpcID = 20026,		--����ӵ�ɰ�
		preTaskData = {1054},
		nextTaskID = 1057,
		startDialogID =194	,
		endDialogID = 195,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 6 , x = 114, y = 47, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 6, x = 114, y = 47,}},--��������һ����������
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
	[1057] =	--������
	{

		name = "Ҫ������",	--��������
		startNpcID = 20026,	--����ӵ�ɰ�
		endNpcID = 20008,		--����������
		preTaskData = {1055},
		nextTaskID = 1058,
		startDialogID =	196,
		endDialogID = 197,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 6, x = 67, y = 135, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 6, x = 67, y	= 135,npcID = 20008,},},
			},
		},
	},
	[1058] =	--������
	{

		name = "ǰ����԰��",	--��������
		startNpcID = 20008,	--����������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1057},
		nextTaskID = 1056,
		startDialogID =	156,
		endDialogID = 157,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 94, y = 34, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 6, x = 26, y = 72, tarMapID = 9, tarX = 94, tarY = 34},
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
                {type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1058, index = 1},
							},
						},
				},
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
    [1056] =	--������
	{
		name = "Ѱ������",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1058}, 
		nextTaskID = 1065,
		startDialogID =	364,
		endDialogID = 370,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 101 , x = 224, y = 115, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
					{
						{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20028,	mapID =	101, x = 224, y = 115,dir = WestSouth,},
						},
					},
				},
					},
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 370},}, --���������ʱ��һ���Ի���
			},
		},
	},

	----------------------------------------------������----------------------------
	[1029] = -----------������
	{

		name = "�����½�",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 1030,	--�����������û����nil
		startDialogID =	158,	--������Ի�IDû����nil
		endDialogID = 159,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
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
	[1030] =	--������
	{

		name = "�򿪰ٱ���",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1029},	--����ǰ������û����nil
		nextTaskID = 1031,	--�����������û����nil
		startDialogID =	160,	--������Ի�IDû����nil
		endDialogID = 161,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="getItem", param = {itemID = 1026041, count = 1,}},--�����Ʒ
			},
		},
	},
	[1031] =	--������
	{

		name = "ǰ������",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20009,		--�������npc
		preTaskData = {1030},	--����ǰ������û����nil
		nextTaskID = 1032,	--�����������û����nil
		startDialogID =	162,	--������Ի�IDû����nil
		endDialogID = 163,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 5 , x = 50, y = 90, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="doSwithScene", param = {tarMapID = 5,	x = 50, y = 90,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 5, x = 43, y = 112,npcID = 20009,},}, --Ѱ·������
			},
		},
	},
	[1032] =	--������
	{

		name = "�����ķ�",	--��������
		startNpcID = 20009,	--������ʼnpc
		endNpcID = 20009,		--�������npc
		preTaskData = {1031},	--����ǰ������û����nil
		nextTaskID = 1059,	--�����������û����nil
		startDialogID =	164,	--������Ի�IDû����nil
		endDialogID = 165,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TlearnSkill',param	= {skillID = 60101, tarLevel = 10 , bor = true},},--ѧϰ�ض����ܵ����ټ�
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 165},},
			},
		},
	},
	[1059] =	--������
	{

		name = "Ѱ�Ҵ����",	--��������
		startNpcID = 20009,	--����������
		endNpcID = 20024,		--���������
		preTaskData = {1032},
		nextTaskID = 1060,
		startDialogID =	198,
		endDialogID = 199,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 5, x = 33, y = 77, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 5, x = 33, y	= 77,npcID = 20024,},},
			},
		},
	},
	
	[1060] =	----������
	{

		name = "��׽����",	--��������
		startNpcID = 20024,	----���������
		endNpcID = 20024,		--���������
		preTaskData = {1059},
		nextTaskID = 1062,
		startDialogID =200	,
		endDialogID = 201,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			  [1] = {type='TocatchPet',param	= {petID  = 1001, count = 1 , bor = true},},--��׽һ������
			  [2] = {type='TautoMeet',param = {mapID = 5 , x = 97, y = 25, bor = false},},---����һ�������Զ�����
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 5, x = 97, y = 25,}},--��������һ����������
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
	[1062] =	--������
	{

		name = "Ҫ������",	--��������
	    startNpcID = 20024,	--���������
		endNpcID = 20009,		--����������
		preTaskData = {1060},
		nextTaskID = 1063,
		startDialogID =	202,
		endDialogID = 203,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 5, x = 43, y = 112, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{

				{type="autoTrace", param = {tarMapID	= 5, x = 43, y	= 112,npcID = 20009,},},
			},
		},
	},
	[1063] =	--������
	{

		name = "ǰ����԰��",	--��������
		startNpcID = 20009,	--����������
		endNpcID = 20027,		--����Ԫ��
		preTaskData = {1062},
		nextTaskID = 1061,
		startDialogID =	166,
		endDialogID = 167,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 9 , x = 94, y = 34, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 5, x = 102, y = 103, tarMapID = 9, tarX = 94, tarY = 34},
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
                {type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1063, index = 1},
							},
						},
				},
				{type="autoTrace", param = {tarMapID	= 9, x = 72, y	= 71,npcID = 20027,},},
			},
		},
	},
	[1061] =	--������
	{
		name = "Ѱ������",	--��������       
		startNpcID = 20027,
		endNpcID = 20028,
		preTaskData = {1063}, 
		nextTaskID = 1065,
		startDialogID =	365,
		endDialogID = 371,
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
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 101 , x = 224, y = 115, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
					{
						{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20028,	mapID =	101, x = 224, y = 115,dir = WestSouth,},
						},
					},
				},
					},
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 371},}, --���������ʱ��һ���Ի���
			},
		},
	},



[1065] =
	{

		name = "Ѱ�ҹ���",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20032,		--�������npc
		preTaskData = {condition = "or",{1035,1041,1046,1051,1056,1061}},		--����ǰ������û����nil
		nextTaskID = 1066,	--�����������û����nil
		startDialogID =	205,	--������Ի�IDû����nil
		endDialogID = 208,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
		},
		targets =
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 102,
				dialogID = 206,
				npcsData =			--ˢ��npc����
				{
				},
				posData	= {mapID = 101,	x = 162, y = 50}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
			triggers = --���񴥷���
			{
					[TaskStatus.Active] =
					{
						{type="deletePrivateNpc", ---------ɾ��˽��npc����
					param={
						npcs =
						{
							{npcID = 20028,	taskID = {1035,1041,1046,1051,1056,1061}, index = 1},
						},
					},
				},
						{type="createFollow", param = {npcs = {20028},}},  --��������
						{type="createPrivateNpc", ----------����������Χס�Ĺ���͵�1����
						param={
						npcs =
						{
						    [1] = {npcID = 20031,mapID = 101, x = 162, y = 50,dir = WestNorth,},--����
							[2] = {npcID = 20029,mapID = 101, x = 159, y = 53,dir = WestSouth,},
							[3] = {npcID = 20030,mapID = 101, x = 156, y = 53,dir = South,},
							[4] = {npcID = 20099,mapID = 101, x = 156, y = 47,dir = East,},
							[5] = {npcID = 20100,mapID = 101, x = 159, y = 47,dir = EastNorth,},
							[6] = {npcID = 20032,mapID = 101, x = 159, y = 50,dir = EastSouth,}, --��Χ���Ĺ���
						},
							},
						},
					},
				[TaskStatus.Done] =
				{
						{type="deletePrivateNpc", ----------ɾ������ս����5��npc
							param={
							npcs =
							{
							{npcID = 20031,	taskID = {1065}, index = 1},
							{npcID = 20029,	taskID = {1065}, index = 2},
							{npcID = 20030,	taskID = {1065}, index = 3},
							{npcID = 20099,	taskID = {1065}, index = 4},
							{npcID = 20100,	taskID = {1065}, index = 5},
							},
								},
						},
						{type="openDialog", param={dialogID = 208},}, --���������ʱ��һ���Ի���
				},
		},
	},
[1066] =
	{
		name = "Ѱ���ŷ�",	--��������
		startNpcID = 20032,	--������ʼnpc
		endNpcID = 20037,		--�������npc
		preTaskData = {1065},	--����ǰ������û����nil
		nextTaskID = 1067,	--�����������û����nil
		startDialogID =	208,	--������Ի�IDû����nil
		endDialogID = 213,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
		},
		targets =
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID= 103,
				dialogID = 209,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20033,	x = 109, y = 141, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20034,	x = 107, y = 145, noDelete = true},
					{npcID = 20034,	x = 110, y = 143, noDelete = true},
					{npcID = 20035,	x = 112, y = 141, noDelete = true},
					{npcID = 20035,	x = 114, y = 138, noDelete = true},
				},
				posData	= {mapID = 101,	x = 109, y = 141}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 104,
				dialogID = 211,
				npcsData =			--ˢ��npc����
				{
				},
				posData	= {mapID = 101,	x = 139, y = 201}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
			triggers = --���񴥷���
			{
					[TaskStatus.Active] =
					{
						{type="deletePrivateNpc", ---------ɾ��˽��npc����
					param={
						npcs =
						{
							{npcID = 20032,	taskID = {1065}, index = 6},
						},
					},
				},
						{type="createFollow", param = {npcs = {20032},}},  --�������
						{type="createPrivateNpc", ----------����������Χס���ŷɺ͵�1����
						param={
						npcs =
						{
						    [1] = {npcID = 20036,mapID = 101, x = 139, y = 201,dir = South,},--��Զ
							[2] = {npcID = 20035,mapID = 101, x = 135, y = 202,dir = EastSouth,},
							[3] = {npcID = 20101,mapID = 101, x = 138, y = 205,dir = WestNorth,},
							[4] = {npcID = 20102,mapID = 101, x = 132, y = 206,dir = EastSouth,},
							[5] = {npcID = 20034,mapID = 101, x = 135, y = 207,dir = WestSouth,},
							[6] = {npcID = 20037,mapID = 101, x = 135, y = 205,dir = South,}, --��Χ�����ŷ�
						},
							},
						},
					},

				[TaskStatus.Done] =
				{
						{type="deletePrivateNpc", ----------ɾ������ս����5��npc
							param={
							npcs =
							{
							{npcID = 20036,	taskID = {1066}, index = 1},
							{npcID = 20035,	taskID = {1066}, index = 2},
							{npcID = 20101,	taskID = {1066}, index = 3},
							{npcID = 20102,	taskID = {1066}, index = 4},
							{npcID = 20034,	taskID = {1066}, index = 5},
							},
								},
						},
						{type="openDialog", param={dialogID = 213},}, --���������ʱ��һ���Ի���
				},
			},
	},
[1067] =
	{

		name = "��ɱ����",	--��������
		startNpcID = 20037,	--������ʼnpc
		endNpcID = 20028,		--�������npc
		preTaskData = {1066},	--����ǰ������û����nil
		nextTaskID = 1068,	--�����������û����nil
		startDialogID =	213,	--������Ի�IDû����nil
		endDialogID = 216,	--������Ի�IDû����nil
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
		consume	=--��������û����{}
		{
		},
		targets =
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 105,
				dialogID = 214,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20040,	x = 92, y = 200, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20038,	x = 89, y = 201, noDelete = true},
					{npcID = 20039,	x = 93, y = 197, noDelete = true},
				},
				posData	= {mapID = 101,	x = 92, y = 200}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
			triggers = --���񴥷���
			{
					[TaskStatus.Active] =
					{
							{type="deletePrivateNpc", ---------ɾ��˽��npc�ŷ�
					param={
						npcs =
						{
							{npcID = 20037,	taskID = {1066}, index = 6},
						},
					},
				},
						{type="createFollow", param = {npcs = {20037},}},  --�ŷɸ���
					},
				[TaskStatus.Done] =
				{
						{type="openDialog", param={dialogID = 216},}, --���������ʱ��һ���Ի���
						{type="finishTask", param = {recetiveTaskID = 1068}},--����������������һ������
				},
			},
	},
[1068] =
	{

		name = "��ɱ��־Զ",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1067},	--����ǰ������û����nil
		nextTaskID = 1069,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 13000,    --����
			[TaskRewardList.player_pot] = 3900,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
		},
		targets =
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID= 106,
				dialogID = 217,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20043,	x = 174, y = 111, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20041,	x = 171, y = 109, noDelete = true},
					{npcID = 20041,	x = 176, y = 114, noDelete = true},
					{npcID = 20042,	x = 171, y = 112, noDelete = true},
					{npcID = 20042,	x = 173, y = 114, noDelete = true},
				},
				posData	= {mapID = 102,	x = 174, y = 111}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��2����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 107,
				dialogID = 219,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20044,	x = 122, y = 168, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20041,	x = 120, y = 166, noDelete = true},
					{npcID = 20042,	x = 123, y = 171, noDelete = true},
					{npcID = 20041,	x = 119, y = 169, noDelete = true},
					{npcID = 20042,	x = 121, y = 171, noDelete = true},
				},
				posData	= {mapID = 102,	x = 122, y = 168}, --��������
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
						{type="finishTask", param = {recetiveTaskID = 1069}},--����������������һ������
				},
			},
	},
[1069] =
	{

		name = "�����ű�",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1068},	--����ǰ������û����nil
		nextTaskID = 1070,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 223,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 13000,    --����
			[TaskRewardList.player_pot] = 3900,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
		},
		targets =
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��1����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 108,
				dialogID =221 ,
				npcsData =			--ˢ��npc����    --��ɱ�ű�
				{
					{npcID = 20045,	x = 153, y = 86, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20041,	x = 150, y = 89, noDelete = true},
					{npcID = 20042,	x = 150, y = 91, noDelete = true},
					{npcID = 20041,	x = 154, y = 89, noDelete = true},
					{npcID = 20042,	x = 156, y = 86, noDelete = true},
				},
				posData	= {mapID = 102,	x = 153, y = 86}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
			{
					[TaskStatus.Active] =
					{
						--{"createFollow", param = {npcs = {20037},}},  --�ŷɸ���
					},

				[TaskStatus.Done] =
				{
						{type="openDialog", param={dialogID = 223},}, --���������ʱ��һ���Ի���
						{type="finishTask", param = {recetiveTaskID = 1070}},--����������������һ������
				},
		},
	},
[1070] =
	{
		name = "�ɽ���Ž�",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20028,		--�������npc
		preTaskData = {1069},	--����ǰ������û����nil
		nextTaskID = 1071,	--�����������û����nil
		startDialogID =	223,	--������Ի�IDû����nil
		endDialogID = 232,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 14000,    --����
			[TaskRewardList.player_pot] = 4200,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
		},
		targets =
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��1����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID= 109,
				dialogID =224 ,
				npcsData =			--ˢ��npc����    --��ɱ�ű�
				{
					{npcID = 20046,	x = 100, y = 104, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20041,	x = 97, y = 106, noDelete = true},
					{npcID = 20042,	x = 102, y = 101, noDelete = true},
					{npcID = 20041,	x = 101, y = 99, noDelete = true},
					{npcID = 20042,	x = 98, y = 102, noDelete = true},
				},
				posData	= {mapID = 102,	x = 100, y = 104}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
			[2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��1����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID= 110,
				dialogID =226 ,
				npcsData =			--ˢ��npc����    --��ɱ�ű�
				{
					{npcID = 20047,	x = 66, y = 132, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20041,	x = 62, y = 132, noDelete = true},
					{npcID = 20042,	x = 69, y = 131, noDelete = true},
					{npcID = 20041,	x = 61, y = 131, noDelete = true},
					{npcID = 20042,	x = 72, y = 128, noDelete = true},
				},
				posData	= {mapID = 102,	x = 66, y = 132}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
			[3] = {type='Tmine',param =
			{
				mineIndex = 3,		--��1����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 113,     --�ű��ű�ս��113  û��111 ��112
				dialogID =228 ,
				npcsData =			--ˢ��npc����    --��ɱ�ű�
				{
					{npcID = 20048,	x = 57, y = 163, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
				},
				posData	= {mapID = 102,	x = 57, y = 163}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
	},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
					{
						--{"createFollow", param = {npcs = {20037},}},  --�ŷɸ���
				},
				[TaskStatus.Done] =
				{
				{type="openDialog", param={dialogID = 232},}, --���������ʱ��һ���Ի���
				{type="deleteFollow", param = {npcs = {20028,20032,20037},}}, --�����״̬ɾ��ָ��ID��npc����
				{type="createPrivateNpc", ----------����վ���ڵ�ͼ�����������
				param={
						npcs =
						{
							[1] = {npcID = 20028, mapID = 102, x = 50, y = 160,dir = EastSouth,}, --����
							[2] = {npcID = 20032, mapID = 102, x = 50, y = 162,dir = EastSouth,}, --����
							[3] = {npcID = 20037, mapID = 102, x = 50, y = 164,dir = EastSouth,}, --�ŷ�
					},
				},
			},
		},
	},
},
[1071] =
	{

		name = "�˼���",	--��������
		startNpcID = 20028,	--������ʼnpc
		endNpcID = 20002,	--�������npc
		preTaskData = {1070},	--����ǰ������û����nil
		nextTaskID = 1072,	--�����������û����nil
		startDialogID = 233,	--������Ի�IDû����nil
		endDialogID = 235,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 1500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 14000,    --����
			[TaskRewardList.player_pot] = 4200,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 219, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 102, x = 24, y = 162, tarMapID = 8, tarX = 190, tarY = 143},--�ڽ������Ǵ���˽�д�����
							},
						},
			},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1071, index = 1},  --�ߵ���������֮��ɾ����һ������Ĵ�����
							},
						},
				},
				{type="deletePrivateNpc", ----------ɾ���ű�Χ��
				param={
						npcs =
						{
							{npcID = 20028,	taskID = {1070}, index = 1},
							{npcID = 20032,	taskID = {1070}, index = 2},
							{npcID = 20037,	taskID = {1070}, index = 3},
						},
					},
				},
			--{"autoTrace", param = {tarMapID	= 8, x = 134, y = 219,npcID = 20002,},}, --���͵������֮�� �Զ�Ѱ·�����𴦡�
			{type="openDialog", param={dialogID = 234},}, --���������ʱ��һ���Ի���
			},
		},
	},
[1072] =
	{

		name = "ǰ������",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20049,	--�������npc
		preTaskData = {1071},	--����ǰ������û����nil
		nextTaskID = 1073,	--�����������û����nil
		startDialogID = 236,	--������Ի�IDû����nil
		endDialogID = 238,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 15000,    --����
			[TaskRewardList.player_pot] = 4500,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 10 , x = 115, y = 195, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
				{type="createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 8, x =190, y =143, tarMapID = 10, tarX = 115, tarY = 195},
							},
						},
				},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1072, index = 1},  --�ߵ���������֮��ɾ����һ������Ĵ�����
							},
						},
				},
			{type="autoTrace", param = {tarMapID	= 10, x = 46, y = 216,npcID = 20049,},}, --���͵������֮�� �Զ�Ѱ·�����𴦡�
			},
		},
	},
[1073] =
	{

		name = "նɱ�˶",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1072},	--����ǰ������û����nil
		nextTaskID = 1074,	--�����������û����nil
		startDialogID = 240,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 3500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 15000,    --����
			[TaskRewardList.player_pot] = 4500,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��1����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID= 114,
				dialogID =241 ,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20052,	x = 137, y = 67, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20050,	x = 140, y = 67, noDelete = true},
					{npcID = 20050,	x = 140, y = 70, noDelete = true},
					{npcID = 20051,	x = 134, y = 70, noDelete = true},
					{npcID = 20051,	x = 134, y = 67, noDelete = true},
				},
				posData	= {mapID = 103,	x = 137, y = 67}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��1����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 115,
				dialogID =243 ,
				npcsData =			--ˢ��npc����    --��ɱ�ű�
				{
					{npcID = 20053,	x = 86, y = 144, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20050,	x = 89, y = 144, noDelete = true},
					{npcID = 20050,	x = 83, y = 144, noDelete = true},
					{npcID = 20051,	x = 83, y = 147, noDelete = true},
					{npcID = 20051,	x = 89, y = 147, noDelete = true},
				},
				posData	= {mapID = 103,	x = 86, y = 144}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
				{type="autoTrace", param = {tarMapID	= 103, x = 137, y = 67,npcID = 20052,},},
				{type="createPrivateTransfer", ------����˽�д�����-- ���������͵�����԰
					param={
							transfers =
							{
								[1] = {mapID = 10, x =21, y =230, tarMapID = 103, tarX = 140, tarY = 38},
							},
						},
				},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1073, index = 1},  --�ߵ���������֮��ɾ����һ������Ĵ�����
							},
						},
				},
			--{"openDialog", param={dialogID = 245},}, --����������޸�
			--{"autoTrace", param = {tarMapID	= 10, x = 46, y = 216,npcID = 20049,},}, --���͵������֮�� �Զ�Ѱ·�����𴦡�
			{type="finishTask", param = {recetiveTaskID = 1074}},--����������������һ������
			},
		},
	},
[1074] =
	{

		name = "ŭնʮ����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1073},	--����ǰ������û����nil
		nextTaskID = 1075,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 4000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 4000,      --���ﾭ��
			[TaskRewardList.subMoney] = 16000,    --����
			[TaskRewardList.player_pot] = 4800,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��1����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID= 116,
				dialogID =246 ,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20056,	x = 164, y = 141, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20054,	x = 167, y = 141, noDelete = true},
					{npcID = 20054,	x = 167, y = 138, noDelete = true},
					{npcID = 20055,	x = 161, y = 138, noDelete = true},
					{npcID = 20055,	x = 161, y = 141, noDelete = true},
				},
				posData	= {mapID = 103,	x = 164, y = 141}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��1����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 117,
				dialogID =248 ,
				npcsData =			--ˢ��npc����    --��ɱ�ű�
				{
					{npcID = 20057,	x = 186, y = 43, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20054,	x = 189, y = 43, noDelete = true},
					{npcID = 20054,	x = 189, y = 40, noDelete = true},
					{npcID = 20055,	x = 183, y = 40, noDelete = true},
					{npcID = 20055,	x = 183, y = 43, noDelete = true},
				},
				posData	= {mapID = 103,	x = 186, y = 43}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
				{type="autoTrace", param = {tarMapID	= 103, x = 164, y = 141,npcID = 20056,},}, --Ѱ·����һ�����״�
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			--{"openDialog", param={dialogID = 245},}, --���������ʱ��һ���Ի���
			--{"autoTrace", param = {tarMapID	= 10, x = 46, y = 216,npcID = 20049,},}, --���͵������֮�� �Զ�Ѱ·�����𴦡�
			{type="finishTask", param = {recetiveTaskID = 1075}},--����������������һ������
			},
		},
	},
[1075] =	--����԰Ѱ�ʵ�     --���������� ��ok��
	{

		name = "����԰Ѱ�ʵ�",	--��������
		startNpcID = nil,
		endNpcID = nil,		--����ͷ��֮��ˢ������˽��npc
		preTaskData = {1074},
		nextTaskID = 1076,
		startDialogID =	nil,
		endDialogID = nil,----ɱ��ȥ��¬ֲ
		taskType2 = TaskType2.Main,
		school = nil,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 4000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 4000,      --���ﾭ��
			[TaskRewardList.subMoney] = 16000,    --����
			[TaskRewardList.player_pot] = 4800,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TautoMeet',param = {mapID = 103 , x = 198, y = 141, bor =	false},},
			[2] = {type='Tscript',param = {scriptID	= 118 ,	count =	1, bor = true},}, --��һ���ű�ս��(�ű�ս��ID 203������)
			--[2] =	{type='Tscript',param =	{scriptID = 203	, count	= 2, ignoreResult = true, bor =	true},},--����ʤ��
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="autoTrace", param = {tarMapID	= 103, x = 198, y = 141,}},--��������һ����������
				{type="createMine",
					param =
					{
					{mapID = 103, scriptID = {118},fightMapID = nil,stepFactor = 0.2,mustCatch = false},
					}
				},
			},
			[TaskStatus.Done]		=
			{
				 {type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			      {type = "removeMine", param = {}}, -- �Ƴ�������
				--{"openDialog", param={dialogID = 252},}, --�����Ŀ��֮���Զ��򿪶Ի�
				{type="finishTask", param = {recetiveTaskID = 1076}},--����������������һ������
				{type='Tarea',param = {mapID = 103 , x = 183, y = 198, bor = true},},--����ָ���������

			},
		},
	},
[1076] =
	{

		name = "����¬ֲ",	--��������
		startNpcID = nil,
		endNpcID =20049 ,		--��¬ֲ
		preTaskData = {1075},
		nextTaskID = 1077,
		startDialogID =nil	,
		endDialogID = 255,
		taskType2 = TaskType2.Main,
		school =nil,
		level =	{1,150},--�ȼ�����
			rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 2000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 15000,    --����
			[TaskRewardList.player_pot] = 4500,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 10 , x = 46, y = 216, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 103, x =183, y =198, tarMapID = 10, tarX = 116, tarY = 195},
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
				{type="openDialog", param={dialogID = 255},}, --���������ʱ��һ���Ի���
				{type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1076, index = 1},
							},
						},
				},
			},
		},
},
[1077] =
	{
		name = "��̽��Ϣ",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = 20059,	--�������npc
		preTaskData = {1076},	--����ǰ������û����nil
		nextTaskID = 1078,	--�����������û����nil
		startDialogID = 256,	--������Ի�IDû����nil
		endDialogID = 257,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 2500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 17000,    --����
			[TaskRewardList.player_pot] = 5100,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 10 , x = 45, y = 188, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
				--{"autoTrace", param = {tarMapID	= 10, x = 363 y = 191,npcID = 20060,},},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			--{"openDialog", param={dialogID = 1},}, --���������ʱ��һ���Ի���
			--{"autoTrace", param = {tarMapID	= 10, x = 46, y = 216,npcID = 20049,},}, --���͵������֮�� �Զ�Ѱ·�����𴦡�
			--{"autoTrace", param = {tarMapID	= 10, x = 363, y = 191,npcID = 20060,},},  --�������֮���Զ�Ѱ·��������ߡ�
			--{type='Tarea',param = {mapID = 10 , x = 381, y = 174, bor = true},},--Ѱ·��ָ��������
			{type="openDialog", param={dialogID = 257},}, --���������ʱ��һ���Ի���
			},
		},
	},
[1078] =
	{
		name = "��������",	--��������
		startNpcID = 20059,	--������ʼnpc   --��
		endNpcID = 20060,	--�������npc   --��
		preTaskData = {1077},	--����ǰ������û����nil
		nextTaskID = 1079,	--�����������û����nil
		startDialogID = 258,	--������Ի�IDû����nil
		endDialogID = 262,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 6000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 6000,      --���ﾭ��
			[TaskRewardList.subMoney] = 17000,    --����
			[TaskRewardList.player_pot] = 5100,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{

			--[1] = {type='Tscript',param = {scriptID	= 120 ,	count =	1, bor = true},},
			[1] = {type='Tscript',param = {scriptID	= 120 ,	count =	1, ignoreResult = true,bor = true},}, --��һ���ű�ս��(�ű�ս��ID 120 ����)

		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
				{type="autoTrace", param = {tarMapID	= 10, x = 363, y = 191,npcID = 20060,},},  --���������ʱ���Զ�Ѱ·���������
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			--{"autoTrace", param = {tarMapID	= 10, x = 46, y = 216,npcID = 20049,},}, --���͵������֮�� �Զ�Ѱ·�����𴦡�
			--{type='Tarea',param = {mapID = 10 , x = 381, y = 174, bor = true},},--Ѱ·���������͵��ڷ����ָ��������
			{type="openDialog", param={dialogID = 262},}
			},
		},
	},
[1079] =
	{
		name = "ǰ���ڷ���",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1078},	--����ǰ������û����nil
		nextTaskID = 1080,	--�����������û����nil
		startDialogID = 263,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 7000,      --���ﾭ��
			[TaskRewardList.subMoney] = 18000,    --����
			[TaskRewardList.player_pot] = 5400,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��1����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID= 121,
				dialogID =264 ,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20061,	x = 202, y = 41, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20062,	x = 200, y = 41, noDelete = true},
					{npcID = 20062,	x = 205, y = 39, noDelete = true},
					{npcID = 20063,	x = 198, y = 41, noDelete = true},
					{npcID = 20063,	x = 208, y = 36, noDelete = true},
				},
				posData	= {mapID = 104,	x = 202, y = 41}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��1����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 122,
				dialogID =266 ,
				npcsData =			--ˢ��npc����   --����
				{
					{npcID = 20064,	x = 171, y = 121, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20062,	x = 171, y = 118, noDelete = true},
					{npcID = 20062,	x = 168, y = 124, noDelete = true},
					{npcID = 20063,	x = 166, y = 122, noDelete = true},
					{npcID = 20063,	x = 167, y = 118, noDelete = true},
				},
				posData	= {mapID = 104,	x = 171, y = 121}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		    },
		 },
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="finishTask", param = {recetiveTaskID = 1080}},--����������������һ������
			},
		},
	},
[1080] =
	{
		name = "�����ɽ��",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1079},	--����ǰ������û����nil
		nextTaskID = 1081,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 7000,      --���ﾭ��
			[TaskRewardList.subMoney] = 18000,    --����
			[TaskRewardList.player_pot] = 5400,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��1����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 124,
				dialogID =272 ,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20067,	x = 68, y = 163, noDelete = true,},--����
					{npcID = 20065,	x = 67, y = 161, noDelete = true},
					{npcID = 20065,	x = 64, y = 167, noDelete = true},
					{npcID = 20066,	x = 63, y = 165, noDelete = true},
					{npcID = 20066,	x = 62, y = 163, noDelete = true},
				},
				posData	= {mapID = 104,	x = 68, y = 163}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
				{type="autoTrace", param = {tarMapID	= 104, x = 68, y = 163,npcID = 20061,},},  --���������ʱ���Զ�Ѱ·���������
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
				{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20067,	mapID =	104, x = 68, y = 163,dir = South,},
						},
					},    --���ܵĹ��ﶼҪ����һ��˽�е�npc< ����һ�������ʱ����ɾ����
				},
			--{"autoTrace", param = {tarMapID	= 10, x = 46, y = 216,npcID = 20049,},}, --���͵������֮�� �Զ�Ѱ·�����𴦡�
			{type="finishTask", param = {recetiveTaskID = 1081}},--����������������һ������
			},
		},
	},
[1081] =
	{
		name = "��ս�ڷ�����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1080},	--����ǰ������û����nil
		nextTaskID = {1082,1084,1086,1088,1090,1092},	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 7500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 7500,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��1����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID= 125,
				dialogID =275 ,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20068,	x = 119, y = 148, noDelete = true,},--����
					{npcID = 20065,	x = 116, y = 151, noDelete = true},
					{npcID = 20065,	x = 121, y = 150, noDelete = true},
					{npcID = 20066,	x = 115, y = 154, noDelete = true},
					{npcID = 20066,	x = 119, y = 154, noDelete = true},
				},
				posData	= {mapID = 104,	x = 119, y = 148}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��2����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 126,
				dialogID =277 ,
				lostTransfer = {mapID = 104, x = 195, y = 13},--------�¼ӣ��������ս�����ܣ����͵�ָ����ͼ
				npcsData =			--ˢ��npc����
				{
					{npcID = 20069,	x = 86, y = 191, noDelete = true,},--�ڷ�����
				},
				posData	= {mapID = 104,	x = 86, y = 191}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[3] = {type='Tarea',param = {mapID = 104, x = 195, y = 13, bor = true},},-------����ָ������
			},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
				{type="deletePrivateNpc", ---------ɾ������
				param={
						npcs =
						{
							{npcID = 20067,	taskID = {1080}, index = 1},
						},
					},
				},
			{type="finishTask", param = {recetiveTaskID = {1082,1084,1086,1088,1090,1092}}},--����������������һ������
			},
		},
	},
	----------------------------------------------------ǬԪ��
	[1082] =	--ǬԪ��
	{

		name = "��Ѱ����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20004,		--�������npc
		preTaskData = {1081},	--����ǰ������û����nil
		nextTaskID = 1082,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 280,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 1 , x = 44, y = 85, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="doSwithScene", param = {tarMapID = 1,	x = 44, y = 85,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 1, x = 26, y = 84,npcID = 20004,},}, --Ѱ·������
			},
		},
	},
	[1083] =	--ǬԪ��
	{

		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20004,	--������ʼnpc
		endNpcID = 20070,		--�������npc
		preTaskData = {1082},	--����ǰ������û����nil
		nextTaskID = 1094,	--�����������û����nil
		startDialogID =	281,	--������Ի�IDû����nil
		endDialogID = 283,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 112 , x = 190, y = 142, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 1, x = 132, y = 44, tarMapID = 112, tarX = 190, tarY = 142},--�ڽ������Ǵ���˽�д�����
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer", ----------ɾ��ɾ��˽�д�����
				param={
						transfers =
						{
							{taskID = 1083, index = 1},
						},
					},
			},
			{type="autoTrace", param = {tarMapID	= 112, x = 134, y = 219,npcID = 20070,},}, --Ѱ·����ʦ
			},
		},
	},
	----------------------------------------------------��Դ��
	[1084] =	--��Դ��
	{

		name = "��Ѱ����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20005,		--�������npc
		preTaskData = {1081},	--����ǰ������û����nil
		nextTaskID = 1085,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 284,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 4 , x = 78, y = 70, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
            {type="doSwithScene", param = {tarMapID = 4,	x = 78, y = 70,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 4, x = 60, y = 72,npcID = 20005,},}, --Ѱ·������
			},
		},
	},
	[1085] =	--��Դ��
	{

		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20005,	--������ʼnpc
		endNpcID = 20070,		--�������npc
		preTaskData = {1084},	--����ǰ������û����nil
		nextTaskID = 1094,	--�����������û����nil
		startDialogID =	285,	--������Ի�IDû����nil
		endDialogID = 287,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 112 , x = 190, y = 142, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 4, x = 98, y = 9, tarMapID = 112, tarX = 190, tarY = 142},--�ڽ������Ǵ���˽�д�����
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer", ----------ɾ��ɾ��˽�д�����
				param={
						transfers =
						{
							{taskID = 1085, index = 1},
						},
					},
			},
			{type="autoTrace", param = {tarMapID	= 112, x = 134, y = 219,npcID = 20070,},}, --Ѱ·����ʦ
			},
		},
	},
	----------------------------------------------------��ϼɽ
	[1086] =	--��ϼɽ
	{

		name = "��Ѱ����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20006,		--�������npc
		preTaskData = {1081},	--����ǰ������û����nil
		nextTaskID = 1087,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 288,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 3 , x = 39, y = 82, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="doSwithScene", param = {tarMapID = 3,	x = 39, y = 82,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1086, index = 1},
							},
						},
			},
			{type="autoTrace", param = {tarMapID	= 3, x = 28, y = 92,npcID = 20006,},}, --Ѱ·������
			},
		},
	},
	[1087] =	--��ϼɽ
	{

		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20006,	--������ʼnpc
		endNpcID = 20070,		--�������npc
		preTaskData = {1086},	--����ǰ������û����nil
		nextTaskID = 1094,	--�����������û����nil
		startDialogID =	289,	--������Ի�IDû����nil
		endDialogID = 291,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 112 , x = 190, y = 142, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 3, x = 101, y = 12, tarMapID = 112, tarX = 190, tarY = 142},--�ڽ������Ǵ���˽�д�����
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer", ----------ɾ��ɾ��˽�д�����
				param={
						transfers =
						{
							{taskID = 1087, index = 1},
						},
					},
			},
			{type="autoTrace", param = {tarMapID	= 112, x = 134, y = 219,npcID = 20070,},}, --Ѱ·����ʦ
			},
		},
	},
	----------------------------------------------------������
	[1088] =	--������
	{

		name = "��Ѱ����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20007,		--�������npc
		preTaskData = {1081},	--����ǰ������û����nil
		nextTaskID = 1089,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 292,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 2 , x = 86, y = 100, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="doSwithScene", param = {tarMapID = 2,	x = 86, y = 100,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 2, x = 84, y = 124,npcID = 20007,},}, --Ѱ·������
			},
		},
	},
	[1089] =	--������
	{

		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20007,	--������ʼnpc
		endNpcID = 20070,		--�������npc
		preTaskData = {1088},	--����ǰ������û����nil
		nextTaskID = 1094,	--�����������û����nil
		startDialogID =	293,	--������Ի�IDû����nil
		endDialogID = 295,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 112 , x = 190, y = 142, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 2, x = 14, y = 99, tarMapID = 112, tarX = 190, tarY = 142},--�ڽ������Ǵ���˽�д�����
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer", ----------ɾ��ɾ��˽�д�����
				param={
						transfers =
						{
							{taskID = 1089, index = 1},
						},
					},
			},
			{type="autoTrace", param = {tarMapID	= 112, x = 134, y = 219,npcID = 20070,},}, --Ѱ·����ʦ
			},
		},
	},
	----------------------------------------------------������
	[1090] =	--������
	{

		name = "��Ѱ����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20008,		--�������npc
		preTaskData = {1081},	--����ǰ������û����nil
		nextTaskID = 1091,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 296,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 6 , x = 72, y = 101, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="doSwithScene", param = {tarMapID = 6,	x = 72, y = 101,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 6, x = 67, y = 133,npcID = 20008,},}, --Ѱ·������
			},
		},
	},
	[1091] =	--������
	{

		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20008,	--������ʼnpc
		endNpcID = 20070,		--�������npc
		preTaskData = {1090},	--����ǰ������û����nil
		nextTaskID = 1094,	--�����������û����nil
		startDialogID =	297,	--������Ի�IDû����nil
		endDialogID = 299,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 112 , x = 190, y = 142, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 6, x = 27, y = 72, tarMapID = 112, tarX = 190, tarY = 142},--�ڽ������Ǵ���˽�д�����
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer", ----------ɾ��ɾ��˽�д�����
				param={
						transfers =
						{
							{taskID = 1091, index = 1},
						},
					},
			},
			{type="autoTrace", param = {tarMapID	= 112, x = 134, y = 219,npcID = 20070,},}, --Ѱ·����ʦ
			},
		},
	},
	----------------------------------------------------������
	[1092] =	--������
	{

		name = "��Ѱ����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20009,		--�������npc
		preTaskData = {1081},	--����ǰ������û����nil
		nextTaskID = 1093,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 300,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 5 , x = 50, y = 90, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="doSwithScene", param = {tarMapID = 5,	x = 50, y = 90,}},	--���͵���һ������
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 5, x = 44, y = 111,npcID = 20009,},}, --Ѱ·������
			},
		},
	},
	[1093] =	--������
	{

		name = "�ݷ���Ȫ��",	--��������
		startNpcID = 20009,	--������ʼnpc
		endNpcID = 20070,		--�������npc
		preTaskData = {1092},	--����ǰ������û����nil
		nextTaskID = 1094,	--�����������û����nil
		startDialogID =	301,	--������Ի�IDû����nil
		endDialogID = 303,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 19000,    --����
			[TaskRewardList.player_pot] = 5700,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 112 , x = 190, y = 142, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 5, x = 102, y = 103, tarMapID = 112, tarX = 190, tarY = 142},--�ڽ������Ǵ���˽�д�����
							},
						},
				},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer", ----------ɾ��ɾ��˽�д�����
				param={
						transfers =
						{
							{taskID = 1093, index = 1},
						},
					},
			},
			{type="autoTrace", param = {tarMapID	= 112, x = 134, y = 219,npcID = 20070,},}, --Ѱ·����ʦ
			},
		},
	},
-----------------------------------------------------------------------------------------------
    [1094] =
	{

		name = "�ջ�ǿԮ",	--��������
		startNpcID = 20070,	--������ʼnpc
		endNpcID = 20071,		--�������npc
		preTaskData = {condition = "or",{1083,1085,1087,1089,1091,1093}},		--����ǰ������û����nil
		nextTaskID = 1095,	--�����������û����nil
		startDialogID =	304,	--������Ի�IDû����nil
		endDialogID = 305,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 20000,    --����
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 104 , x = 39, y = 191, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 112, x = 190, y = 141, tarMapID = 104, tarX = 30, tarY = 189},--�ڽ������Ǵ���˽�д�����
							},
						},
				},
			{type="createPrivateNpc", ----------�������
				param={
						npcs =
						{
							[1] = {npcID = 20071, mapID = 104, x = 39,  y = 191,dir = South,}, --���
					},
				},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer", ----------ɾ��ɾ��˽�д�����
				param={
						transfers =
						{
							{taskID = 1094, index = 1},
						},
					},
			},
			{type="openDialog", param={dialogID = 305},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1095] =
	{

		name = "��ս�ڷ�����",	--��������
		startNpcID = 20071,	--������ʼnpc
		endNpcID = 20059,	--�������npc
		preTaskData = {1094},	--����ǰ������û����nil
		nextTaskID = 1096,	--�����������û����nil
		startDialogID = 306,	--������Ի�IDû����nil
		endDialogID = 313,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 7500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 7500,      --���ﾭ��
			[TaskRewardList.subMoney] = 20000,    --����
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		    [1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				scriptID = 127,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 307,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20103, x = 86, y = 191,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
				},
				posData = {mapID = 104, x = 86, y = 191}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20071,	taskID = {1094}, index = 1}, --ɾ��˽�����
						},
					},
				},
			{type="createFollow", param = {npcs = {20071},}},				--�����꯸���
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deleteFollow", param = {npcs = {20071},}}, --�ڽ�����ɾ�����ε�npc����
			{type="createPrivateNpc", ----------�����ڷ�����
				param={
						npcs =
						{
							[1] = {npcID = 20103, mapID = 104, x = 86,  y = 191,dir = WestNorth,}, --�ڷ�����
							[2] = {npcID = 20071, mapID = 104, x = 82,  y = 196,dir = South,},
					},
				},
			},
			{type="createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 104, x =30, y =189, tarMapID = 10, tarX = 202, tarY = 193},
							},
						},
			},
			{type="openDialog", param={dialogID = 311},}, --���������ʱ��һ���Ի���
			},
		},
	},
    [1096] =
	{

		name = "���СͷĿ����",	--��������
		startNpcID = 20059,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1095},		--����ǰ������û����nil
		nextTaskID = 1097,	--�����������û����nil
		startDialogID =	314,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 7500,   --��Ҿ���
			[TaskRewardList.pet_xp] = 7500,      --���ﾭ��
			[TaskRewardList.subMoney] = 20000,    --����
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				scriptID = 128,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 315,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20074, x = 87, y = 141,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20072, x = 85, y = 139,  noDelete = true},
					{npcID = 20072, x = 89, y = 143,  noDelete = true},
					{npcID = 20073, x = 83, y = 143,  noDelete = true},
					{npcID = 20073, x = 85, y = 145,  noDelete = true},
				},
				posData = {mapID = 105, x = 87, y = 141}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 10, x = 228, y = 15, tarMapID = 105, tarX = 183, tarY = 8},--�ڽ������Ǵ���˽�д�����
							},
						},
				},
			{type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1095, index = 1},
							},
						},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateNpc", ----------ɾ����ꯡ��ڷ�����
				param={
						npcs =
						{
							{npcID = 20103,	taskID = {1095}, index = 1},
							{npcID = 20071,	taskID = {1095}, index = 2},
						},
					},
				},
			{type="createPrivateNpc", ----------��������
				param={
						npcs =
						{
							[1] = {npcID = 20074, mapID = 105, x = 87,  y = 141,dir = South,}, --����
					},
				},
			},
			{type="openDialog", param={dialogID = 317},}, --���������ʱ��һ���Ի���
			{type="deletePrivateTransfer", ----------ɾ��ɾ��˽�д�����
				param={
						transfers =
						{
							{taskID = 1096, index = 1},
						},
					},
			},
			{type="finishTask", param = {recetiveTaskID = 1097}},--����������������һ������
			},
		},
	},
	[1097] =
	{

		name = "��ܷ���",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1096},	--����ǰ������û����nil
		nextTaskID = 1098,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 21000,    --����
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				scriptID = 129,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 318,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20075, x = 112, y = 262,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20072, x = 110, y = 265,  noDelete = true},
					{npcID = 20072, x = 115, y = 259,  noDelete = true},
					{npcID = 20073, x = 113, y = 265,  noDelete = true},
					{npcID = 20073, x = 115, y = 262,  noDelete = true},
				},
				posData = {mapID = 105, x = 112, y = 262}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��һ����
				scriptID = 130,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 320,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20076, x = 132, y = 174,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20072, x = 135, y = 171,  noDelete = true},
					{npcID = 20072, x = 130, y = 177,  noDelete = true},
					{npcID = 20073, x = 129, y = 175,  noDelete = true},
					{npcID = 20073, x = 132, y = 171,  noDelete = true},
				},
				posData = {mapID = 105, x = 132, y = 174}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
            [TaskStatus.Active]		=      ---������״̬
			{
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc", ----------ɾ������
				param={
						npcs =
						{
							{npcID = 20074,	taskID = {1096}, index = 1},
						},
					},
				},
			{type="createPrivateNpc", ----------����˽�з���
					param={
						npcs =
						{
								[1] = {npcID = 20076,mapID = 105, x = 132, y = 174,dir = East,},
						},
					},
			},
			{type="openDialog", param={dialogID = 323},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1098}},--����������������һ������
			},
	},
	},
	[1098] =
	{

		name = "�´�����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20059,	--�������npc
		preTaskData = {1097},	--����ǰ������û����nil
		nextTaskID = 1099,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 330,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 21000,    --����
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				scriptID = 131,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 325,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20079, x = 202, y = 166,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20077, x = 205, y = 164,  noDelete = true},
					{npcID = 20077, x = 199, y = 168,  noDelete = true},
					{npcID = 20078, x = 204, y = 168,  noDelete = true},
					{npcID = 20078, x = 201, y = 170,  noDelete = true},
				},
				posData = {mapID = 105, x = 202, y = 166}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��һ����
				scriptID = 132,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 327,     --���������򿪵ĶԻ���
				lostTransfer = {mapID = 10, x = 196, y = 193},--------�¼ӣ��������ս�����ܣ����͵�ָ����ͼ
				npcsData =			--ˢ��npc����
				{
					{npcID = 20080, x = 229, y = 110,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
				},
				posData = {mapID = 105, x = 229, y = 110}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[3] = {type='Tarea',param = {mapID = 10, x = 196, y = 193, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
            [TaskStatus.Active]		=      ---������״̬
			{
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc", ----------ɾ������
				param={
						npcs =
						{
							{npcID = 20076,	taskID = {1097}, index = 1},
						},
					},
			},
			{type="autoTrace", param = {tarMapID	= 10, x = 45, y = 188,npcID = 20059,},}, --Ѱ·���ʸ���
			},
	},
	},
	[1099] =
	{

		name = "�������",	--��������
		startNpcID = 20059,	--������ʼnpc
		endNpcID = 20049,		--�������npc
		preTaskData = {1098},	--����ǰ������û����nil
		nextTaskID = 1100,	--�����������û����nil
		startDialogID =	330,	--������Ի�IDû����nil
		endDialogID = 332,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 4000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 4000,      --���ﾭ��
			[TaskRewardList.subMoney] = 22000,    --����
			[TaskRewardList.player_pot] = 6600,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 10 , x = 43, y = 216, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="autoTrace", param = {tarMapID	= 10, x = 46, y = 216,npcID = 20006,},}, --Ѱ·������
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 332},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1100] =
	{

		name = "����Ⱥ��",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = 20049,	--�������npc
		preTaskData = {1099},	--����ǰ������û����nil
		nextTaskID = 1121,	--�����������û����nil
		startDialogID = 333,	--������Ի�IDû����nil
		endDialogID = 338,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 10000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 10000,      --���ﾭ��
			[TaskRewardList.subMoney] = 22000,    --����
			[TaskRewardList.player_pot] = 6600,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
          [1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				scriptID = 133,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 334,     --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 10, x = 166, y = 245}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
            {type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20083,mapID = 10, x = 166, y = 245,dir = EastSouth,},
						},
				},
			},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="openDialog", param={dialogID = 337},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1121] =
	{

		name = "��������",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1100},	--����ǰ������û����nil
		nextTaskID = 1122,	--�����������û����nil
		startDialogID = 338,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 12000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 12000,      --���ﾭ��
			[TaskRewardList.subMoney] = 23000,    --����
			[TaskRewardList.player_pot] = 6900,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
          [1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				scriptID = 134,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 339,     --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20086, x = 207, y = 140, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
				},
				posData = {mapID = 106, x = 207, y = 140}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			{type="deletePrivateNpc", ----------ɾ���ű�Χ��
				param={
						npcs =
						{
							{npcID = 20083,	taskID = {1100}, index = 1},
						},
					},
			},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20086,mapID = 106, x = 207, y = 140,dir = EastNorth,},
						},
					},
			},
			{type="openDialog", param={dialogID = 337},}, --���������ʱ��һ���Ի���--���޸�
            {type="finishTask", param = {recetiveTaskID = 1122}},--����������������һ������
			},
		},
	},
	[1122] =
	{

		name = "Ӫ��Ԭ��",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20091,	--�������npc
		preTaskData = {1121},	--����ǰ������û����nil
		nextTaskID = 1123,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 345,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 12000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 12000,      --���ﾭ��
			[TaskRewardList.subMoney] = 23000,    --����
			[TaskRewardList.player_pot] = 6900,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		   [1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 135,
				dialogID = 341,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20089, x = 225, y = 78,  noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20087, x = 229, y = 75,  noDelete = true},
					{npcID = 20087, x = 222, y = 81,  noDelete = true},
					{npcID = 20088, x = 222, y = 78,  noDelete = true},
					{npcID = 20088, x = 226, y = 74,  noDelete = true},
				},
				posData	= {mapID = 106, x = 225, y = 78}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
          [2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��һ����
				scriptID = 136,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 343,     --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 106, x = 163, y = 84}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
            {type="createPrivateNpc", ----------����Ԭ�ܱ�С�ְ�Χ
					param={
						npcs =
						{
								[1] = {npcID = 20090,	mapID =	106, x = 163, y = 84,dir = WastSouth,},--���
								[2] = {npcID = 20087,	mapID =	106, x = 166, y = 82,dir = Wast,},
								[3] = {npcID = 20088,	mapID =	106, x = 167, y = 78,dir = WastNorth,},
								[4] = {npcID = 20104,	mapID =	106, x = 161, y = 82,dir = EastSouth,},
								[5] = {npcID = 20105,	mapID =	106, x = 162, y = 78,dir = EastSouth,},
								[6] = {npcID = 20091,	mapID =	106, x = 164, y = 80,dir = EastNouth,},--Ԭ��
						},
					},
			},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc", ----------ɾ��Ԭ��Χ��
				param={
						npcs =
						{
                            {npcID = 20086,	taskID = {1121}, index = 1},----��һ�����񴴽���˽��NPC����
							{npcID = 20090,	taskID = {1122}, index = 1},
							{npcID = 20087,	taskID = {1122}, index = 2},
							{npcID = 20088,	taskID = {1122}, index = 3},
							{npcID = 20104,	taskID = {1122}, index = 4},
							{npcID = 20105,	taskID = {1122}, index = 5},
						},
					},
			},
			{type="openDialog", param={dialogID = 345},}, --���������ʱ��һ���Ի���--���޸�
			},
		},
	},
	[1123] =
	{

		name = "�������",	--��������
		startNpcID = 20091,	--������ʼnpc
		endNpcID = 20091,	--�������npc
		preTaskData = {1122},	--����ǰ������û����nil
		nextTaskID = 1124,	--�����������û����nil
		startDialogID = 346,	--������Ի�IDû����nil
		endDialogID = 351,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 15000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 15000,      --���ﾭ��
			[TaskRewardList.subMoney] = 24000,    --����
			[TaskRewardList.player_pot] = 7200,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		   [1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 137,
				dialogID = 347,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20094, x = 153, y = 184,  noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20092, x = 156, y = 185,  noDelete = true},
					{npcID = 20092, x = 150, y = 184,  noDelete = true},
					{npcID = 20093, x = 153, y = 188,  noDelete = true},
					{npcID = 20093, x = 150, y = 187,  noDelete = true},
				},
				posData	= {mapID = 106, x = 153, y = 184}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
          [2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��һ����
				scriptID = 138,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 349,     --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				    {npcID = 20095, x = 114, y = 195,  noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20092, x = 117, y = 195,  noDelete = true},
					{npcID = 20092, x = 111, y = 195,  noDelete = true},
					{npcID = 20093, x = 116, y = 192,  noDelete = true},
					{npcID = 20093, x = 113, y = 192,  noDelete = true},
				},
				posData = {mapID = 106, x = 114, y = 195}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			{type="deletePrivateNpc", ----------ɾ��Ԭ��
				param={
						npcs =
						{
							{npcID = 20091,	taskID = {1122}, index = 6},
						},
					},
			},
			{type="createFollow", param = {npcs = {20091},}},				--����ָ��npc����(����npcID)
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deleteFollow", param = {npcs = {20091},}}, --�����״̬ɾ��ָ��ID��npc����
			{type="createPrivateNpc", ----------����Ԭ��
					param={
						npcs =
						{
								[1] = {npcID = 20091,	mapID =	106, x = 114, y = 195,dir = EastSouth,},
						},
					},
			},
			{type="openDialog", param={dialogID = 351},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1124] =
	{

		name = "��������",	--��������
		startNpcID = 20091,	--������ʼnpc
		endNpcID = 20091,	--�������npc
		preTaskData = {1123},	--����ǰ������û����nil
		nextTaskID = 1125,	--�����������û����nil
		startDialogID = 352,	--������Ի�IDû����nil
		endDialogID = 357,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 15000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 15000,      --���ﾭ��
			[TaskRewardList.subMoney] = 24000,    --����
			[TaskRewardList.player_pot] = 7200,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		   [1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 140,     --ȱ���ⳡս��ID
				dialogID = 353,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20097, x = 99, y = 148, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20092, x = 99, y = 150, noDelete = true},
					{npcID = 20092, x = 99, y = 145, noDelete = true},
					{npcID = 20093, x = 96, y = 147, noDelete = true},
					{npcID = 20093, x = 96, y = 150, noDelete = true},
				},
				posData	= {mapID = 106, x = 99, y = 148}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
          [2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��һ����
				scriptID = 139,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 355,     --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				    {npcID = 20096, x = 128, y = 81,  noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20092, x = 130, y = 83, noDelete = true},
					{npcID = 20092, x = 126, y = 79, noDelete = true},
					{npcID = 20093, x = 129, y = 78, noDelete = true},
					{npcID = 20093, x = 131, y = 80, noDelete = true},
				},
				posData = {mapID = 106, x = 128, y = 81}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			{type="deletePrivateNpc", ----------ɾ��Ԭ��
				param={
						npcs =
						{
							{npcID = 20091,	taskID = {1123}, index = 1},
						},
					},
			},
			{type="createFollow", param = {npcs = {20091},}},				--����ָ��npc����(����npcID)
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deleteFollow", param = {npcs = {20091},}}, --�����״̬ɾ��ָ��ID��npc����
			{type="createPrivateNpc", ----------����Ԭ��
					param={
						npcs =
						{
								[1] = {npcID = 20091,	mapID =	106, x = 131, y = 83,dir = West,},
						},
					},
			},
			{type="openDialog", param={dialogID = 357},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1125] =
	{

		name = "�ظ�¬ֲ",	--��������
		startNpcID = 20091,	--������ʼnpc
		endNpcID = 20049,		--�������npc
		preTaskData = {1124},	--����ǰ������û����nil
		nextTaskID = 1101,	--�����������û����nil
		startDialogID =	358,	--������Ի�IDû����nil
		endDialogID = 359,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 25000,    --����
			[TaskRewardList.player_pot] = 7500,  	--����Ǳ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 10 , x = 46, y = 216, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 359},}, --���������ʱ��һ���Ի���
			{type="deletePrivateNpc", ----------ɾ��Ԭ��
				param={
						npcs =
						{
							{npcID = 20091,	taskID = {1124}, index = 1},
						},
					},
			},
			},
		},
	},


}

table.copy(MainTaskDB1_20, NormalTaskDB)