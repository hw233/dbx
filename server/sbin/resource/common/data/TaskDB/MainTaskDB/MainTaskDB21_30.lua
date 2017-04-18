--[[MainTaskDB21_30.lua
	��������21��30��(����ϵͳ)
	player_xp	 = 1,	--��Ҿ���
	pet_xp		= 2,	--���ﾭ��
	money		= 3,	--����
	subMoney	= 4,	--����
	cashMoney	= 5,
	goldCoin	= 6,
]]

MainTaskDB21_30 =
{
-------------------------------------����25-30---------------------------------------------------------------
	[1101] =	--����25-30
	{

		name = "��ȳ¹�",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = 20302,	--�������npc
		preTaskData = {1384},	--����ǰ������û����nil
		nextTaskID = 1102,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1004,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8200,   --��Ҿ���
			[TaskRewardList.player_pot] = 4900,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4100,      --���ﾭ��
			[TaskRewardList.subMoney] = 64000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --������������
			{
				mineIndex = 1,		--��һ����
				scriptID = 161,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1002,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 107, x = 172, y = 46}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=     ---������״̬
			{
			{type="createPrivateNpc", ----------����������Χס�ĳ¹��͵�1����
				param={
						npcs =
						{
							[1] = {npcID = 20305,mapID = 107, x = 173, y = 44,dir = Direction. EastSouth,},--����
							[2] = {npcID = 20303,mapID = 107, x = 174, y = 47,dir = Direction. South,},
							[3] = {npcID = 20304,mapID = 107, x = 177, y = 47,dir = Direction. West,},
							[4] = {npcID = 20310,mapID = 107, x = 179, y = 43,dir = Direction. WestNorth,},
							[5] = {npcID = 20311,mapID = 107, x = 176, y = 41,dir = Direction. EastNorth,},
							[6] = {npcID = 20302,mapID = 107, x = 176, y = 44,dir = Direction. WestNorth,}, --�¹�
						},
					},
				},
		    },
		    [TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
						{npcID = 20305,	taskID = {1101}, index = 1}, --ɾ��˽�к���
						{npcID = 20303,	taskID = {1101}, index = 2}, --ɾ��С��
						{npcID = 20304,	taskID = {1101}, index = 3},
						{npcID = 20310,	taskID = {1101}, index = 4},
						{npcID = 20311,	taskID = {1101}, index = 5},
						},
					},
			},
			{type="openDialog", param={dialogID = 1004},}, --���������ʱ��һ���Ի���
			},
	},
	},
        [1102] =	--����25-30
	{

		name = "��̽�ܲ�����",	--��������
		startNpcID = 20302,	--������ʼnpc
		endNpcID = 20309,	--�������npc
		preTaskData = {1101},	--����ǰ������û����nil
		nextTaskID = 1103,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1008,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8200,   --��Ҿ���
			[TaskRewardList.player_pot] = 4900,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4100,      --���ﾭ��
			[TaskRewardList.subMoney] = 65000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --������������
			{
				mineIndex = 1,		--��һ����
				scriptID = 162,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1006,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20309, x = 184, y = 69,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20306, x = 187, y = 67,  noDelete = true},
					{npcID = 20306, x = 187, y = 64,  noDelete = true},
					{npcID = 20306, x = 184, y = 64,  noDelete = true},
					{npcID = 20306, x = 182, y = 67,  noDelete = true},
				},
				posData = {mapID = 107, x = 184, y = 69}, --��������
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
			{type="deletePrivateNpc",
				param={
						npcs =
						{
						{npcID = 20302,	taskID = {1101}, index = 6}, --ɾ��˽�г¹�
						},
					},
			},
			{type="createPrivateNpc", ----------��������
				param={
						npcs =
						{
						    [1] = {npcID = 20309,mapID = 107, x = 184, y = 69,dir = Direction. WestSouth,},--����
						},
					},
				},
			{type="openDialog", param={dialogID = 1008},}, --���������ʱ��һ���Ի���
			},
	},
	},
        [1103] =	--����25-30  δ����
	{

		name = "��Ȳܲ�",	--��������
		startNpcID = 20309,	--������ʼnpc
		endNpcID = 20313,	--�������npc
		preTaskData = {1102},	--����ǰ������û����nil
		nextTaskID = 1104,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1011 ,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8200,   --��Ҿ���
			[TaskRewardList.player_pot] = 4900,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4100,      --���ﾭ��
			[TaskRewardList.subMoney] = 66000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --����������Խ
			{
				mineIndex = 1,		--��һ����
				scriptID = 163,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1009,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 107, x = 166, y = 97}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=      ---������״̬
			{
			{type="createPrivateNpc", ----------����������Χס�ĲܲٺͶ�Խ����
				param={
						npcs =
						{
							[1] = {npcID = 20312, mapID = 107, x = 166, y = 97,dir = Direction. South,},--��Խ
							[2] = {npcID = 20307, mapID = 107, x = 163, y = 100,dir = Direction. WestSouth,},
							[3] = {npcID = 20319, mapID = 107, x = 166, y = 97,dir = Direction. WestNorth,},
							[4] = {npcID = 20320, mapID = 107, x = 163, y = 94,dir = Direction. EastNorth,},
							[5] = {npcID = 20324, mapID = 107, x = 160, y = 98,dir = Direction. EastSouth,},
							[6] = {npcID = 20313, mapID = 107, x = 163, y = 97,dir = Direction. South,}, --�ܲ�
						},
					},
				},
		    },
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc", ----------ɾ��˽��npc
				param={
						npcs =
						{
							{npcID = 20312,	taskID = {1103}, index = 1},
							{npcID = 20307,	taskID = {1103}, index = 2},
							{npcID = 20319,	taskID = {1103}, index = 3},
							{npcID = 20320,	taskID = {1103}, index = 4},
							{npcID = 20324,	taskID = {1103}, index = 5},
							{npcID = 20309,	taskID = {1102}, index = 1},
						},
					},
				},
			{type="openDialog", param={dialogID = 1011},}, --���������ʱ��һ���Ի���
			},
	},
	},
	[1104] =	--����25-30  δ����
	{

		name = "���Ͳܲ�",	--��������
		startNpcID = 20313,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1103},	--����ǰ������û����nil
		nextTaskID = 1105,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1013,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 5000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 67000,    --����
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
				scriptID = 170,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1051,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20314, x = 109, y = 128,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20306, x = 106, y = 129,  noDelete = true},
					{npcID = 20306, x = 107, y = 131,  noDelete = true},
					{npcID = 20306, x = 110, y = 131,  noDelete = true},
					{npcID = 20306, x = 112, y = 128,  noDelete = true},
				},
				posData = {mapID = 107, x = 109, y = 128}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[2] = {type='Tmine',param =     
			{
				mineIndex = 2,		--�ڶ�����
				scriptID = 171,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1052,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20315, x = 159, y = 165,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20314, x = 154, y = 163,  noDelete = true},
					{npcID = 20314, x = 155, y = 166,  noDelete = true},
					{npcID = 20314, x = 158, y = 169,  noDelete = true},
					{npcID = 20314, x = 161, y = 170,  noDelete = true},
				},
				posData = {mapID = 107, x = 159, y = 165}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[3] = {type='Tmine',param =     
			{
				mineIndex = 3,		--��������
				scriptID = 172,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1053,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20316, x = 125, y = 197,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20315, x = 119, y = 197,  noDelete = true},
					{npcID = 20315, x = 122, y = 197,  noDelete = true},
					{npcID = 20315, x = 125, y = 200,  noDelete = true},
					{npcID = 20315, x = 125, y = 203,  noDelete = true},
				},
				posData = {mapID = 107, x = 125, y = 197}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=  ---������״̬
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20313,	taskID = {1103}, index = 6}, --ɾ��˽�вܲ�
						},
					},
				},
			{type="createFollow", param = {npcs = {20313},}},				--��Ӳܲٸ���
			},
			[TaskStatus.Done]		=   -----���Ŀ��״̬
			{
			{type="openDialog", param={dialogID = 1013},}, --��Ŀ�����ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1105}},
			},
	},
	},
    [1105] =	--����25-30
	{

		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20313,	--�������npc
		preTaskData = {1104},	--����ǰ������û����nil
		nextTaskID = 1106,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1016,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8200,   --��Ҿ���
			[TaskRewardList.player_pot] = 4900,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4100,      --���ﾭ��
			[TaskRewardList.subMoney] = 68000,    --����
		},
		consume =--��������û����{}		
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --������������
			{
				mineIndex = 1,		--��һ����
				scriptID = 164,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1014,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 107, x = 105, y = 215}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			{type="createPrivateNpc", ----------�����ܲٽ�������
				param={
						npcs =
						{
							[1] = {npcID = 20317, mapID = 107, x = 105, y = 215,dir = Direction. South,}, --����
							[2] = {npcID = 20316, mapID = 107, x = 102, y = 213,dir = Direction. South,}, --С��
							[3] = {npcID = 20328, mapID = 107, x = 102, y = 216,dir = Direction. South,}, --С��
							[4] = {npcID = 20329, mapID = 107, x = 104, y = 218,dir = Direction. South,}, --С��
							[5] = {npcID = 20332, mapID = 107, x = 108, y = 216,dir = Direction. South,}, --С��
						},
					},
				},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deleteFollow", param = {npcs = {20313},}}, --�ڽ�����״̬ɾ��ָ��ID��npc����
			{type="createPrivateNpc", ----------�����ܲٽ�������
				param={
						npcs =
						{
							[1] = {npcID = 20313, mapID = 107, x = 105, y = 215,dir = Direction. South,}, --�ܲ�
						},
					},
				},
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20317,	taskID = {1104}, index = 1}, --ɾ������
							{npcID = 20316,	taskID = {1104}, index = 2}, --ɾ��С��
							{npcID = 20328,	taskID = {1104}, index = 3}, --ɾ��С��
							{npcID = 20329,	taskID = {1104}, index = 4}, --ɾ��С��
							{npcID = 20332,	taskID = {1104}, index = 5}, --ɾ��С��
						},
					},
			},
			{type="openDialog", param={dialogID = 1016},}, --��Ŀ�����ʱ��һ���Ի���
			},
		},
	},
    [1106] =	--����25-30  δ����
	{

		name = "��������",	--��������
		startNpcID = 20313,	--������ʼnpc
		endNpcID = 20002,	--�������npc
		preTaskData = {1105},	--����ǰ������û����nil
		nextTaskID = 1107,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1018,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 5000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 69000,    --����
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
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc", ----------ɾ��Ԭ��
				param={
						npcs =
						{
							{npcID = 20313,	taskID = {1105}, index = 1},
						},
					},
			},
			{type="openDialog", param={dialogID = 1018},}, --��Ŀ�����ʱ��һ���Ի���
			},
		},
	},
        [1107] =	--����25-30  δ����
	{

		name = "��̽����",	--��������
		startNpcID = 20318,	--������ʼnpc
		endNpcID = 20313,	--�������npc
		preTaskData = {1106},	--����ǰ������û����nil
		nextTaskID = 1108,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1020,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 5000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 70000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 107 , x = 109, y = 98, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
				{type="createPrivateNpc", ----------����Ԭ��
					param={
							npcs =
							{
								[1] = {npcID = 20318, mapID = 107, x = 109, y = 98,dir = Direction. EastSouth,},--Ԭ��
							},
						},
				},
		    },
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="openDialog", param={dialogID = 1020},}, --��Ŀ�����ʱ��һ���Ի���
			},
		},
	},
	[1108] =	--����25-30  δ����
	{

		name = "�����ܲ�",	--��������
		startNpcID = 20318,	--������ʼnpc
		endNpcID = 20313,	--�������npc
		preTaskData = {1107},	--����ǰ������û����nil
		nextTaskID = 1109,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1022,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 5000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 71000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 109 , x = 274, y = 91, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			{type="createPrivateNpc", ----------�����ܲ�
				param={
						npcs =
						{
							[1] = {npcID = 20313,mapID =109, x = 274, y = 91,dir = Direction. EastSouth,},--�ܲ�
						},
					},
				},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc", ----------ɾ��Ԭ��
				param={
						npcs =
						{
							{npcID = 20318,	taskID = {1107}, index = 1},
						},
					},
			},
			{type="openDialog", param={dialogID = 1022},}, --��Ŀ�����ʱ��һ���Ի���
			},
		},
	},
	[1109] =	--����25-30  δ����
	{

		name = "��Ԯ����",	--��������
		startNpcID = 20313,	--������ʼnpc
		endNpcID = 20322,	--�������npc
		preTaskData = {1108},	--����ǰ������û����nil
		nextTaskID = 1110,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1026,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8200,   --��Ҿ���
			[TaskRewardList.player_pot] = 5000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4100,      --���ﾭ��
			[TaskRewardList.subMoney] = 72000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 165,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1024,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 109, x = 251, y = 96}, --��������
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
								[1] = {npcID = 20322,mapID = 109, x = 251, y = 91,dir = Direction. EastNorth,},--����
								[2] = {npcID = 20321,mapID = 109, x = 250, y = 96,dir = Direction. EastNorth,},--����
								[3] = {npcID = 20338,mapID = 109, x = 246, y = 95,dir = Direction. EastNorth,},--С��
								[4] = {npcID = 20339,mapID = 109, x = 247, y = 97,dir = Direction. EastNorth,},--С��
								[5] = {npcID = 20340,mapID = 109, x = 253, y = 97,dir = Direction. EastNorth,},--С��
								[6] = {npcID = 20341,mapID = 109, x = 254, y = 95,dir = Direction. EastNorth,},--С��
						},
					},
				},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
				{type="deletePrivateNpc",
					param={
							npcs =
							{
								{npcID = 20321,	taskID = {1109}, index = 2}, --ɾ������
								{npcID = 20338,	taskID = {1109}, index = 3}, --ɾ��С��
								{npcID = 20339,	taskID = {1109}, index = 4}, --ɾ��С��
								{npcID = 20340,	taskID = {1109}, index = 5}, --ɾ��С��
								{npcID = 20341,	taskID = {1109}, index = 6}, --ɾ��С��
							},
						},
				},
			{type="openDialog", param={dialogID = 1026},}, --���������ʱ��һ���Ի���
			},
	},
	},
	[1110] =	--����25-30  δ����
	{

		name = "�¾�ն����",	--��������
		startNpcID = 20322,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1109},	--����ǰ������û����nil
		nextTaskID = 1111,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1029,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8200,   --��Ҿ���
			[TaskRewardList.player_pot] = 5100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4100,      --���ﾭ��
			[TaskRewardList.subMoney] = 73000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 166,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1027,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 109, x = 187, y = 106}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
				{type="createFollow", param = {npcs = {20322},}},				--��ӹ���
				{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20322,	taskID = {1109}, index = 1}, --ɾ������
						},
					},
				},
				{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20325,mapID = 109, x = 187, y = 106,dir = Direction. EastSouth,}, --����
								[2] = {npcID = 20323,mapID = 109, x = 185, y = 103,dir = Direction. EastSouth,}, --С��
								[3] = {npcID = 20343,mapID = 109, x = 183, y = 104,dir = Direction. EastSouth,}, --С��
								[4] = {npcID = 20344,mapID = 109, x = 183, y = 108,dir = Direction. EastSouth,}, --С��
								[5] = {npcID = 20345,mapID = 109, x = 185, y = 109,dir = Direction. EastSouth,}, --С��
						},
					},
				},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
				{type="deletePrivateNpc",
					param={
						npcs =
						{
							{npcID = 20325,	taskID = {1109}, index = 1}, --ɾ������
							{npcID = 20323,	taskID = {1109}, index = 2}, --ɾ��С��
							{npcID = 20343,	taskID = {1109}, index = 3}, --ɾ��С��
							{npcID = 20344,	taskID = {1109}, index = 4}, --ɾ��С��
							{npcID = 20345,	taskID = {1109}, index = 5}, --ɾ��С��
						},
					},
				},
				{type="openDialog", param={dialogID = 1029},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1111] =	--����25-30
	{

		name = "����������",	--��������
		startNpcID = nil,	--������ʼnpc22
		endNpcID = 20326,	--�������npc
		preTaskData = {1110},	--����ǰ������û����nil
		nextTaskID = 1112,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1030,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 5100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 74000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 109 , x = 250, y = 94, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=      ---������״̬
			{
				{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20326,mapID = 109, x = 250, y = 94,dir = Direction. EastNorth,}, --��������
								[2] = {npcID = 20327,mapID = 109, x = 252, y = 92,dir = Direction. EastNorth,}, --�����ŷ�
						},
					},
				},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="createFollow", param = {npcs = {20326,20327},}},				--����������ŷɸ���
			{type="deletePrivateNpc",
					param={
						npcs =
						{
							{npcID = 20326,	taskID = {1111}, index = 1}, --ɾ������
							{npcID = 20327,	taskID = {1111}, index = 2}, --ɾ���ŷ�
						},
					},
				},
			{type="openDialog", param={dialogID = 1030},}, --���������ʱ��һ���Ի���
			},
			[TaskStatus.Finished]	=      ---�������״̬
			{
			}
	},
	},
	[1112] =	--����25-30  δ����
	{

		name = "��������",	--��������
		startNpcID = 20326,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1111},	--����ǰ������û����nil
		nextTaskID = 1113,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1034,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8200,   --��Ҿ���
			[TaskRewardList.player_pot] = 5100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4100,      --���ﾭ��
			[TaskRewardList.subMoney] = 75000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 167,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1032,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 109, x = 101, y = 164}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			{type="createPrivateNpc", ----------����˽��Ԭ��
					param={
						npcs =
						{
								[1] = {npcID = 20331,mapID = 109, x = 101, y = 164,dir = Direction. South,}, --��������
								[2] = {npcID = 20330,mapID = 109, x = 95, y = 164,dir = Direction. South,}, --����С��
								[3] = {npcID = 20346,mapID = 109, x = 98, y = 166,dir = Direction. South,}, --����С��
								[4] = {npcID = 20347,mapID = 109, x = 104, y = 166,dir = Direction. South,}, --����С��
								[5] = {npcID = 20348,mapID = 109, x = 108, y = 163,dir = Direction. South,}, --����С��
						},
					},
			},
			{type="createFollow", param = {npcs = {20326,20327},}},				--����������ŷɸ���
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20330,	taskID = {1112}, index = 2}, --ɾ��С��
							{npcID = 20346,	taskID = {1112}, index = 3}, --ɾ��С��
							{npcID = 20347,	taskID = {1112}, index = 4}, --ɾ��С��
							{npcID = 20348,	taskID = {1112}, index = 5}, --ɾ��С��
						},
					},
			},
			{type="openDialog", param={dialogID = 1034},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1113] =	--����25-30  δ����
	{

		name = "��Ӣս����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20335,	--�������npc
		preTaskData = {1112},	--����ǰ������û����nil
		nextTaskID = 1151,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1039,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8200,   --��Ҿ���
			[TaskRewardList.player_pot] = 5100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4100,      --���ﾭ��
			[TaskRewardList.subMoney] = 76000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 168,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1037,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 109, x = 87, y = 291}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
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
								[1] = {npcID = 20335,mapID = 109, x = 87, y = 291,dir = Direction. WestSouth,}, --��������
						},
					},
				},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20335,	taskID = {1113}, index = 1}, --ɾ������
							{npcID = 20331,	taskID = {1112}, index = 1}, --ɾ������
						},
					},
			},
				{type="openDialog", param={dialogID = 1039},},
				{type="finishTask", param = {recetiveTaskID = 1114}},
			},
		},
	},
	[1114] =	--����25-30  δ����
	{

		name = "��սħ������",	--��������
		startNpcID = 20335,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1112},	--����ǰ������û����nil
		nextTaskID = 1114,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1041,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8200,   --��Ҿ���
			[TaskRewardList.player_pot] = 5100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4100,      --���ﾭ��
			[TaskRewardList.subMoney] = 77000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --ħ������
			{
				mineIndex = 1,		--��һ����
				scriptID = 169,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1040,        --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 109, x = 87, y = 291}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
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
								[1] = {npcID = 20342,mapID = 109, x = 87, y = 291,dir = Direction. WestSouth,}, --����ħ������
						},
					},
				},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20342,	taskID = {1113}, index = 1}, --ɾ��ħ������
						},
					},
			},
			{type="createPrivateNpc", ----------����˽��npc
				param={
						npcs =
						{
								[1] = {npcID = 20326,mapID = 109, x = 87, y = 291,dir = Direction. WestSouth,}, --��������
								[1] = {npcID = 20322,mapID = 109, x = 87, y = 291,dir = Direction. WestSouth,}, --��������
								[1] = {npcID = 20327,mapID = 109, x = 87, y = 291,dir = Direction. WestSouth,}, --����չ��
						},
					},
			},
			{type="deleteFollow", param = {npcs = {20322,20326,20327},}}, --�ڽ�����״̬ɾ��ָ��ID��npc����
			{type="openDialog", param={dialogID = 1041},},
			},
		},
	},
	[1115] =	--����25-30  δ����
	{

		name = "�����ܲ�",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20313,	--�������npc
		preTaskData = {1113},	--����ǰ������û����nil
		nextTaskID = 1115,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1043,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 5200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 78000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 109 , x = 274, y = 91, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20326,	taskID = {1114}, index = 1}, --ɾ������
							{npcID = 20322,	taskID = {1114}, index = 2}, --ɾ������
							{npcID = 20327,	taskID = {1114}, index = 3}, --ɾ���ŷ�
						},
					},
			},
			{type="openDialog", param={dialogID = 1043},},
			},
		},
	},

	[1116] =	--����25-30  δ����
	{

		name = "���ض���",	--��������
		startNpcID = 20313,	--������ʼnpc
		endNpcID = 20318,	--�������npc
		preTaskData = {1114},	--����ǰ������û����nil
		nextTaskID = 1117,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1045,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 5200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 79000,    --����
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 107 , x = 110, y = 98, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20318,mapID = 107, x = 110, y = 98,dir = Direction. WestNorth,}, --����Ԭ��
						},
					},
				},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20313,	taskID = {1108}, index = 1}, --ɾ��˽�вܲ�
						},
					},
			},
				{type="openDialog", param={dialogID = 1045},},
			},
		},
	},
	[1117] =	--����25-30  δ����
	{

		name = "�ر�����",	--��������
		startNpcID = 20313,	--������ʼnpc
		endNpcID = 20002,	--�������npc
		preTaskData = {1116},	--����ǰ������û����nil
		nextTaskID = 1118,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1048,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 5200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 80000,    --����
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
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20318,	taskID = {1115}, index = 1}, --ɾ��˽��Ԭ��
						},
					},
			},
				{type="openDialog", param={dialogID = 1048},},
			},
		},
	},
	[1118] =	--����25-30  δ����
	{

		name = "�ﵽ��ʮ��",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20002,	--�������npc
		preTaskData = {1117},	--����ǰ������û����nil
		nextTaskID = 1151,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1050,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 30000,    --����
			[TaskRewardList.player_pot] = 9000,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TattainLevel',param = {level = 30,bor = true},},---�ȼ�����Ŀ��
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬
			{
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20318,	taskID = {1112}, index = 1}, --ɾ��˽��Ԭ��
						},
					},
			},
			{type="openDialog", param={dialogID = 1050},},
			},
		},
	},


}

table.copy(MainTaskDB21_30, NormalTaskDB)