--[[MainTaskDB31_35.lua
	��������31��35��(����ϵͳ)
]]

MainTaskDB31_35 =
{
-----------31-32��������-----------
	[1151] ={                  --[[��̽�������--]]

		name = "��̽�������",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20601,		--�������npc
		preTaskData = {1118},	--����ǰ������û����nil
		nextTaskID = 1152,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1104,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 30000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 30000,    --����
			[TaskRewardList.player_pot] = 9000,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{   
		[1] = {type='Tmine',param =     --����
			{
			mineIndex = 1,		--��һ����
			scriptID = 175,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1102,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			{npcID = 20601, x = 142, y = 191, noDelete = true},
			{npcID = 20603, x = 145, y = 189, noDelete = true},
			{npcID = 20603, x = 145, y = 193, noDelete = true},
			},
			posData = {mapID = 110, x = 142, y = 191}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Done]		=
			{
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20601, mapID = 110, x = 142, y = 191, dir = Direction. North,}, --����
						},
					},
			},
			{type="openDialog", param={dialogID = 1105},},
			{type="finishTask", param = {recetiveTaskID = 1152}},
		        },
		},
	},
	[1152] =
	{

		name = "�������",	--��������
		startNpcID = 20601,	--������ʼnpc
		endNpcID = 20625,		--�������npc
		preTaskData = {1151},	--����ǰ������û����nil
		nextTaskID = 1153,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1109,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		    	[TaskRewardList.player_xp] = 30000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --�
			{
			mineIndex = 1,		--��һ����
			scriptID = 176,
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1106,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 110, x = 201, y = 109}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20602, mapID = 110, x = 201, y = 109, dir = Direction. WestSouth,}, --�����
							[2] = {npcID = 20625, mapID = 110, x = 200, y = 107, dir = Direction. EastNorth,}, --�������
							[3] = {npcID = 20604, mapID = 110, x = 198, y = 108, dir = Direction. EastSouth,}, --�������ذ�������1
							[4] = {npcID = 20629, mapID = 110, x = 199, y = 105, dir = Direction. East,}, --�������ذ�������2
							[5] = {npcID = 20630, mapID = 110, x = 202, y = 105, dir = Direction. North,}, --�������ذ�������3
							[6] = {npcID = 20631, mapID = 110, x = 202, y = 108, dir = Direction. West,}, --�������ذ�������4

						},
					},
			},
			},
			[TaskStatus.Done]		=
			{
				{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20601, taskID = {1151}, index = 1}, --ɾ������
							{npcID = 20602, taskID = {1152}, index = 1}, --ɾ���
							{npcID = 20604, taskID = {1152}, index = 3}, --ɾ��С��
							{npcID = 20629, taskID = {1152}, index = 4}, --ɾ��С��
							{npcID = 20630, taskID = {1152}, index = 5}, --ɾ��С��
							{npcID = 20631, taskID = {1152}, index = 6}, --ɾ��С��
						},
					},
				},
				{type="openDialog", param={dialogID = 1108},},
			},
		},
	},

	[1153] =
	{
		name = "������",	--��������
		startNpcID = 20625,	--������ʼnpc���
		endNpcID = 20606,	--�������npc��ï
		preTaskData = {1152}, --ǰ������ID
		nextTaskID = 1154,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1110,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 110 , x = 200, y = 111, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
				{
				{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20625, taskID = {1152}, index = 1}, --ɾ�����
						},
					},
				},
				{type="createPrivateNpc",
				param={
						npcs =
						{
						[1] = {npcID = 20606, mapID = 110, x = 200, y = 107, dir = Direction. EastNorth,}, --������ï
						},
					},
				},
				},
				[TaskStatus.Done] =
				{
				{type="openDialog", param={dialogID = 1110},},
				},
			},
	},
	[1154] =
	{
		name = "������ˮ��",	--��������
		startNpcID = 20606,	--������ʼnpc
		endNpcID = 20641,		--�������npc
		preTaskData = {1153},	--����ǰ������û����nil
		nextTaskID = 1155,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1114,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		    	[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --����
			{
			mineIndex = 1,		--��������
			scriptID = 177,
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1112,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{},
			posData = {mapID = 110, x = 168, y = 98}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},	
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateNpc",
				param={
						npcs =
						{
						[1] = {npcID = 20605, mapID = 110, x = 168, y = 98, dir = Direction. EastSouth,}, --����
						[2] = {npcID = 20641, mapID = 110, x = 166, y = 101, dir = Direction. EastSouth,}, --���
						[3] = {npcID = 20632, mapID = 110, x = 164, y = 99, dir = Direction. East,}, --С��1
						[4] = {npcID = 20633, mapID = 110, x = 162, y = 102, dir = Direction. EastSouth,}, --С��2
						[5] = {npcID = 20634, mapID = 110, x = 165, y = 105, dir = Direction. WestSouth,}, --С��3
						[6] = {npcID = 20635, mapID = 110, x = 169, y = 101, dir = Direction. WestNorth,}, --С��4
						},
					},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20605, taskID = {1154}, index = 1}, --ɾ������
							{npcID = 20606, taskID = {1153}, index = 1}, --ɾ����ï
							{npcID = 20632, taskID = {1154}, index = 3}, --ɾ��С��1
							{npcID = 20633, taskID = {1154}, index = 4}, --ɾ��С��2
							{npcID = 20634, taskID = {1154}, index = 5}, --ɾ��С��3
							{npcID = 20635, taskID = {1154}, index = 6}, --ɾ��С��4
						},
					},
			},
			{type="openDialog", param={dialogID = 1114},},
			{type="finishTask", param = {recetiveTaskID = 1155}},
			},
		},
	},
	[1155] =
	{
		name = "Ӫ�������⾰",	--��������
		startNpcID = 20641,	--������ʼnpc
		endNpcID = 20607,		--�������npc
		preTaskData = {1154},	--����ǰ������û����nil
		nextTaskID = 1156,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1119,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
            [1] = {type='Tmine',param =     --�ܺ�
			{
			    mineIndex = 1,		--�ڶ�����
			    scriptID = 178,
			    lastMine = true,	--�Ƿ�Ϊ���һ����
			    dialogID = 1117,        --���������򿪵ĶԻ���
			    npcsData =			--ˢ��npc����
			{
			        {npcID = 20609, x = 136, y =121, noDelete = true},
			        {npcID = 20604, x = 134, y =118, noDelete = true},
				{npcID = 20604, x = 134, y =124, noDelete = true},
			        {npcID = 20604, x = 131, y =119, noDelete = true},
				{npcID = 20604, x = 131, y =123, noDelete = true},
			 },
			    posData = {mapID = 110, x = 137, y = 119}, --��������
			    bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},	
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20607, mapID = 110, x = 132, y = 121, dir = Direction. EastSouth,}, --����
							[2] = {npcID = 20608, mapID = 110, x = 130, y = 121, dir = Direction. EastSouth,}, --�⾰
						},
					},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20641, taskID = {1154}, index = 1}, --ɾ�����
						},
					},
			},
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20646, mapID = 110, x = 169, y = 94, dir = Direction. EastSouth,}, --�������
						},
					},
			},
			{type="autoTrace", param = {tarMapID=110, x =135, y = 121,npcID = 20607,},}, --�Զ�Ѱ·���������
			{type="openDialog", param={dialogID = 1119},},
			{type="finishTask", param = {recetiveTaskID = 1156}},
			},
		},
	},
	[1156] =
	{
		name = "�������",	--��������
		startNpcID = 20607,	--������ʼnpc���
		endNpcID = 20646,	--�������npc��ï
		preTaskData = {1155}, --ǰ������ID
		nextTaskID = 1157,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1121,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 110 , x = 169, y = 94, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
				{
				},
				[TaskStatus.Done] =
				{
				{type="openDialog", param={dialogID = 1120},},
				},
			},
	},
	[1157] =
	{
		name = "̽Ѱ�Ƹ�",	--��������
		startNpcID = 20646,	--������ʼnpc
		endNpcID = 20610,		--�������npc
		preTaskData = {1155},	--����ǰ������û����nil
		nextTaskID = 1157,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1124,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				scriptID = 179 ,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1122,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20610, x = 97, y = 123, noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20611, x = 96, y = 120, noDelete = true},
					{npcID = 20611, x = 96, y = 126, noDelete = true},
					{npcID = 20611, x = 94, y = 122, noDelete = true},
					{npcID = 20611, x = 94, y = 125, noDelete = true},
				},
				posData = {mapID = 110, x = 97, y = 123}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20607, taskID = {1155}, index = 1}, --ɾ������
							{npcID = 20608, taskID = {1155}, index = 2}, --ɾ���⾰
						},
					},
				},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20646, taskID = {1155}, index = 1}, --ɾ�����
						},
					},
			},
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20610, mapID = 110, x = 97, y = 123, dir = Direction. EastSouth,}, --��ϰ
						},
					},
			},
			 {type="openDialog", param={dialogID = 1124},},
			 {type="finishTask", param = {recetiveTaskID = 1158}},
		},
	},
	},
	[1158] =
	{

		name = "Ӫ�ȻƸ�",	--��������
		startNpcID = 20610,	--������ʼnpc
		endNpcID = 20626,		--�������npc
		preTaskData = {1156},	--����ǰ������û����nil
		nextTaskID = 1158,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1130,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID= 180,
				dialogID = 1126,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20612, x = 82, y = 129, actionID = 5, magicID = 1004, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20603, x = 81, y = 125, actionID = 5, magicID = 1004, noDelete = true},
					{npcID = 20603, x = 81, y = 133, actionID = 5, magicID = 1004, noDelete = true},
					{npcID = 20603, x = 79, y = 127, actionID = 5, magicID = 1004, noDelete = true},
					{npcID = 20603, x = 79, y = 131, actionID = 5, magicID = 1004, noDelete = true},
				},
				posData	= {mapID = 110,	x = 82, y = 129}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[2] = {type='Tmine',param =
			{
				mineIndex = 2,		--��2����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 181,
				dialogID = 1128,
				npcsData =			--ˢ��npc����
				{
				},
				posData	= {mapID = 110,	x = 27, y = 162}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20613, mapID = 110, x = 26, y = 166, dir = Direction. South,}, --����
							[2] = {npcID = 20626, mapID = 110, x = 24, y = 164, dir = Direction. EastSouth,}, --�Ƹ�
							[3] = {npcID = 20614, mapID = 110, x = 24, y = 162, dir = Direction. EastNorth,}, --�Ƹǿ���
							[4] = {npcID = 20638, mapID = 110, x = 23, y = 168, dir = Direction. WestSouth,}, --�Ƹǿ���
						},
					},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20613, taskID = {1157}, index = 1}, --ɾ������
							{npcID = 20614, taskID = {1157}, index = 3}, --ɾ���Ƹǿ���
							{npcID = 20638, taskID = {1157}, index = 4}, --ɾ���Ƹǿ���
						},
					},
				},
			{type="autoTrace", param = {tarMapID=110, x =24, y = 164,npcID = 20626,},}, --�Զ�Ѱ·���Ƹ����
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20610, taskID = {1156}, index = 1}, --ɾ����ϰ
						},
					},
				},
			{type="openDialog", param={dialogID = 1130},}, --��һ���Ի���
			},
		},
	},
	[1159] =
	{

		name = "����֮��",	--��������
		startNpcID = 20626,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1158},	--����ǰ������û����nil
		nextTaskID = 1160,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1136,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='TautoMeet',param = {mapID = 110 , x = 201, y = 110, bor =	false},},
		[2] = {type='Tscript',param = {scriptID	= 182 ,	count =	1, bor = true},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createMine",
				param =
				{
				{mapID = 110, scriptID = {182,},fightMapID = nil,stepFactor = 0.2,mustCatch = false},
				}
			},
			},
			[TaskStatus.Done]		=
			{
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20615, mapID = 110, x = 201, y = 110, dir = Direction. WestSouth,}, --�ż�
						},
					},
			},
			 {type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			 {type = "removeMine", param = {}}, -- �Ƴ�������
			{type="openDialog", param={dialogID = 1137},}, --��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1160}},
			},
		},
	},
	[1160] =
	{

		name = "�����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1159},	--����ǰ������û����nil
		nextTaskID = 1161,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tmine',param =
			{
				mineIndex = 1,		--��һ����
				lastMine = true,	--�Ƿ�Ϊ���һ����
				scriptID= 183,
				dialogID = 1138,
				npcsData =			--ˢ��npc����
				{
				},
				posData	= {mapID = 110,	x = 207, y = 60}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20617, mapID = 110, x = 207, y = 60, dir = Direction. North,}, --�ź�
							[2] = {npcID = 20618, mapID = 110, x = 205, y = 58, dir = Direction. North,}, --�����ؽ�1
							[3] = {npcID = 20637, mapID = 110, x = 209, y = 58, dir = Direction. North,}, --�����ؽ�2
						},
					},
			},
			{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 110, x = 177, y = 39, tarMapID = 111, tarX = 53, tarY = 17},--����˽�д�����
							},
						},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20617, taskID = {1160}, index = 1}, --ɾ���ź�
							{npcID = 20618, taskID = {1160}, index = 2}, --ɾ�������ؽ�1
							{npcID = 20637, taskID = {1160}, index = 3}, --ɾ�������ؽ�2
							{npcID = 20626, taskID = {1158}, index = 2}, --ɾ���Ƹ�
							{npcID = 20615, taskID = {1159}, index = 1}, --ɾ���ż�
					},
			},
			},
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20640, mapID = 110, x = 207, y = 60, dir = Direction. EastSouth,}, --�����ź�
						},
					},
			},
			{type="openDialog", param={dialogID = 1140},}, --��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1161}},
			},
		},
	},
	[1161] =
	{

		name = "̽������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1160},	--����ǰ������û����nil2016/10/31
		nextTaskID = 1162,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		     [1] = {type='Tmine',param =     --��������
			{
			    mineIndex = 1,		--��һ����
			    scriptID = 184,
			    lastMine = true,	--�Ƿ�Ϊ���һ����
			    dialogID = 1142,        --���������򿪵ĶԻ���
			    npcsData =			--ˢ��npc����
			{
			 },
			    posData = {mapID = 111, x = 34, y = 32}, --��������
			    bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20619, mapID = 111, x = 34, y = 32, dir = Direction. West,}, --��������������
						},
					},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateNpc",
				param={
					npcs =
					{
						{npcID = 20619, taskID = {1161}, index = 1}, --ɾ����������
						{npcID = 20640, taskID = {1160}, index = 1}, --ɾ���ź�
					},
					},
				},
			{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1160, index = 1},--ɾ��˽�д�����
							},
						},
				},
			{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 111, x = 53, y = 17, tarMapID = 8, tarX = 148, tarY = 81},--����˽�д�����
							},
						},
			},
			{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20639, mapID = 111, x = 34, y = 32, dir = Direction. West,}, --��������������
						},
					},
			},
			{type="openDialog", param={dialogID = 1144},}, --��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1162}},
			},
		},
	},		
	[1162] =
	{

		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20002,		--�������npc
		preTaskData = {1161},	--����ǰ������û����nil
		nextTaskID = 1163,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1146,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 216, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1161, index = 1},--ɾ��˽�д�����
							},
						},
				},
			{type="openDialog", param={dialogID = 1146},},
			},
		},
	},
	[1163] =
	{

		name = "����֮��",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20003,		--�������npc
		preTaskData = {1162},	--����ǰ������û����nil
		nextTaskID = 1164,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1149,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 31000,    --����
			[TaskRewardList.player_pot] = 9300,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 8 , x = 148, y = 75, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1149},},
			},
	},
	},
   [1164] =
	{

		name = "���֮��",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1163},	--����ǰ������û����nil
		nextTaskID = 1165,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			 [1] = {type='Tmine',param =     --���
			{
			    mineIndex = 1,		--��һ����
			    scriptID = 185,
			    lastMine = true,	--�Ƿ�Ϊ���һ����
			    dialogID = 1153,        --���������򿪵ĶԻ���
			    npcsData =			--ˢ��npc����
			{
				{npcID = 20620, x = 210, y = 71, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
			 },
			    posData = {mapID = 106, x = 210, y = 71}, --��������
			    bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="getItem", param = {itemID = 1041018, count = 1,}},
			{type="openDialog", param={dialogID = 1155},}, --��һ���Ի���
			{type="finishTask", param = {recetiveTaskID =1165}},
			},
		},
	}, 
   [1165] =
	{

		name = "��֦֮��",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1164},	--����ǰ������û����nil
		nextTaskID = 1166,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='TautoMeet',param = {mapID = 106 , x = 131, y = 231, bor =	false},},
		[2] = {type='Tscript',param = {scriptID	= 186 ,	count =	1, bor = true},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createMine",
				param =
				{
				{mapID = 106, scriptID = {186,},fightMapID = nil,stepFactor = 0.2,mustCatch = false},
				}
			},
			},
			[TaskStatus.Done]		=
			{
			{type="getItem", param = {itemID = 1041019, count = 1,}},
			 {type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			 {type = "removeMine", param = {}}, -- �Ƴ�������
			{type="openDialog", param={dialogID = 1159},}, --��һ���Ի���
			{type="finishTask", param = {recetiveTaskID =1166}},
			},
		},
	}, 
	   [1166] =
	{

		name = "���֮��",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1165},	--����ǰ������û����nil
		nextTaskID = 1167,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			 [1] = {type='Tmine',param =     --���
			{
			    mineIndex = 1,		--��һ����
			    scriptID = 187,
			    lastMine = true,	--�Ƿ�Ϊ���һ����
			    dialogID = 1160,        --���������򿪵ĶԻ���
			    npcsData =			--ˢ��npc����
			{
				{npcID = 20622, x = 169, y = 159, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
			 },
			    posData = {mapID = 107, x = 169, y = 159}, --��������
			    bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="getItem", param = {itemID = 1041020, count = 1,}},
			{type="openDialog", param={dialogID = 1162},}, --��һ���Ի���
			{type="finishTask", param = {recetiveTaskID =1167}},
			},
		},
	}, 
	[1167] =
	{

		name = "��»֮��",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1166},	--����ǰ������û����nil
		nextTaskID = 1168,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			 [1] = {type='Tmine',param =     --��»
			{
			    mineIndex = 1,		--��һ����
			    scriptID = 188,
			    lastMine = true,	--�Ƿ�Ϊ���һ����
			    dialogID = 1163,        --���������򿪵ĶԻ���
			    npcsData =			--ˢ��npc����
			{
				{npcID = 20623, x = 241, y = 91, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
			 },
			    posData = {mapID = 109, x = 241, y = 91}, --��������
			    bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="getItem", param = {itemID = 1041021, count = 1,}},
			{type="openDialog", param={dialogID = 1165},}, --��һ���Ի���
			{type="finishTask", param = {recetiveTaskID =1168}},
			},
		},
	}, 
	[1168] =
	{
		name = "�����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20003,	--�������npc
		preTaskData = {1167}, --ǰ������ID
		nextTaskID = 1169,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1168,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =
		{
		},
		targets =
		{
		--[1] = {type='Tarea',param = {mapID = 8 , x = 148, y = 75, bor = true},},-------����ָ������
		[1] = {type = "TcommitItem", param = {taskID = 1168,itemsInfo = {{itemID = 1041018, count = 1},{itemID = 1041019, count = 1},{itemID = 1041020, count = 1},{itemID = 1041021, count = 1}} ,bor = true},}

		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				{type="CreateIntemDirect",param = {taskID = 1168,itemsInfo = {{itemID = 1041018, count = 1},{itemID = 1041019, count = 1},{itemID = 1041020, count = 1},{itemID = 1041021, count = 1}}}},
				},
				[TaskStatus.Done] =
				{
				{type="getItem", param = {itemID = 1041022, count = 1,}},
				{type="openDialog", param={dialogID = 1167},},
				},
			},
	},
	[1169] =
	{
		name = "�Ƴ�����",	--��������
		startNpcID = 20003,	--������ʼnpc
		endNpcID = 20619,	--�������npc
		preTaskData = {1168}, --ǰ������ID
		nextTaskID = 1170,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1173,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 111 , x = 30, y = 32, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
					{type="doSwithScene", param = {tarMapID = 110,	x = 200, y = 111,}},	--���͵���һ������
					{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 110, x = 177, y = 39, tarMapID = 111, tarX = 53, tarY = 17},--����˽�д�����
							},
						},
			},
				},
				[TaskStatus.Done] =
				{
				{type="openDialog", param={dialogID = 1172},},
				},
			},
	},
	[1170] =
	{
		name = "ս����",	--��������
		startNpcID = 20619,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1169}, --ǰ������ID
		nextTaskID = 1171,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = nil,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =
		{
		},
		targets =
			{
			[1]={type='Tscript',param = {scriptID	= 189 ,	count =	1,bor = true},},
			},
		triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				{type="openDialog", param={dialogID = 1174},},
				{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20624, mapID = 111, x = 34, y = 32, dir = Direction. WestNorth,}, --����
						},
					},
				},
				{type="deletePrivateNpc",
				param={
					npcs =
					{
						{npcID = 20639, taskID = {1161}, index = 1}, --ɾ����������
					},
					},
				},
				},
				[TaskStatus.Done] =
				{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1169, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="deletePrivateNpc",
				param={
					npcs =
					{
						{npcID = 20624, taskID = {1169}, index = 1}, --ɾ������
					},
					},
				},
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 111, x = 53, y = 17, tarMapID = 110, tarX = 183, tarY = 50},--����˽�д�����
							},
						},
				},
				{type="openDialog", param={dialogID = 1176},},
				{type="finishTask", param = {recetiveTaskID =1171}},
				},
			},
	},
	[1171] =
	{
		name = "����Ƹ�",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20627,	--�������npc
		preTaskData = {1170}, --ǰ������ID
		nextTaskID = 1172,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1178,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 110 , x = 169, y = 94, bor = false},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{	
				{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20627, mapID = 110, x = 169, y = 94, dir = Direction. EastSouth,}, --�����Ƹ�
						},
					},
				},

				},
				[TaskStatus.Done] =
				{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1170, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="openDialog", param={dialogID = 1177},},
				},
			},
	},
	[1172] =
	{
		name = "��������",	--��������
		startNpcID = 20627,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1171}, --ǰ������ID
		nextTaskID = 1173,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = nil,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tmine',param =     --����
			{
			    mineIndex = 1,		--��һ����
			    scriptID = 190,
			    lastMine = true,	--�Ƿ�Ϊ���һ����
			    dialogID = 1181,        --���������򿪵ĶԻ���
			    npcsData =			--ˢ��npc����
			{
			},
			    posData = {mapID = 110, x = 56, y = 198}, --��������
			    bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
		},
		},
		triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				{type="createPrivateNpc",
				param={
						npcs =
						{
							[1] = {npcID = 20605, mapID = 110, x = 56, y = 198, dir = Direction. WestSouth,}, --����
							[2] = {npcID = 20642, mapID = 110, x = 59, y = 197, dir = Direction. WestSouth,}, --���󾫱�1
							[3] = {npcID = 20643, mapID = 110, x = 53, y = 197, dir = Direction. WestSouth,}, --���󾫱�2
							[4] = {npcID = 20644, mapID = 110, x = 57, y = 200, dir = Direction. WestSouth,}, --�����ؽ�1
							[5] = {npcID = 20645, mapID = 110, x = 54, y = 200, dir = Direction. WestSouth,}, --�����ؽ�2
						},
					},
			},
				},
				[TaskStatus.Done] =
				{
				{type="deletePrivateNpc",
				param={
					npcs =
					{
						{npcID = 20605, taskID = {1172}, index = 1}, --ɾ������
						{npcID = 20642, taskID = {1172}, index = 2}, --ɾ�����󾫱�1
						{npcID = 20643, taskID = {1172}, index = 3}, --ɾ�����󾫱�2
						{npcID = 20644, taskID = {1172}, index = 4}, --ɾ�������ؽ�1
						{npcID = 20645, taskID = {1172}, index = 5}, --ɾ�������ؽ�2
					},
					},
				},
				{type="finishTask", param = {recetiveTaskID =1173}},
				},
			},
	},
	[1173] =
	{

		name = "�����Ƹ�",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20627,		--�������npc
		preTaskData = {1172},	--����ǰ������û����nil
		nextTaskID = 1174,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1183,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 110 , x = 169, y = 94, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
			{
			{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1164, index = 1},--ɾ��˽�д�����
							},
						},
				},
			{type="autoTrace", param = {tarMapID=110, x = 169, y = 94,npcID = 20627,},},  --�Զ�Ѱ·���Ƹ����
			},
		[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1183},}, --��һ���Ի���
			},
		},
		},
	[1174] =
	{
		name = "ת��¬ֲ",	--��������
		startNpcID = 20627,	--������ʼnpc
		endNpcID = 20049,		--�������npc
		preTaskData = {1171},	--����ǰ������û����nil
		nextTaskID = 1200,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1187,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 32000,    --����
			[TaskRewardList.player_pot] = 9600,  	--����Ǳ��
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 46, y = 216, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
		[TaskStatus.Active]		=
			{
			},
		[TaskStatus.Done]		=
			{
			{type="deletePrivateNpc",
			param={
			        npcs =
					{
					   {npcID = 20627, taskID = {1171}, index = 1}, --�Ƹ�
					},
					},
				},
			{type="openDialog", param={dialogID = 1187},}, --��һ���Ի���
			},
		},
		},


---------------------------------��������33-35������--------------------------------------
[1200] =
	{
		name = "�Ի�����",	--��������
		startNpcID = 20049,	--������ʼnpc¬ֲ
		endNpcID = 20701,	--�������npc
		preTaskData = {1174}, --ǰ������ID ��������һ������ID
		nextTaskID = 1201,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1201,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 33000,    --����
                [TaskRewardList.player_pot] = 9900,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 13, x = 55, y = 141, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] = nil,
				{
				},
				[TaskStatus.Done] =
					{
						{type="openDialog", param={dialogID = 1201},},
						
			},
	},
	},
[1201] =
         {                  --[[��������--]]

		name = "��������",	--��������
		startNpcID = 20701,	--������ʼnpc
		endNpcID = 20701,		--�������npc
		preTaskData = {1200},	--����ǰ������û����nil
		nextTaskID = 1202,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1205,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 33000,    --����
                [TaskRewardList.player_pot] = 9900,  	--����Ǳ��
	 
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{   
		[1] = {type='Tmine',param =     --����
			{
			mineIndex = 1,		--��һ����
			scriptID = 200,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1203,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 20704, x = 54, y = 98,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20737, x = 52, y = 97,  noDelete = true},
					{npcID = 20739, x = 56, y = 97,  noDelete = true},
					{npcID = 20736, x = 52, y = 95,  noDelete = true},
					{npcID = 20738, x = 56, y = 95,  noDelete = true},
			},
			posData = {mapID = 13, x = 54, y = 99}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
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
			{type="autoTrace", param = {tarMapID=13, x =55, y = 141,npcID = 20701,},}, --�Զ�Ѱ·���������
		        },
		},
	},
[1202] =
         {                  --[[��ս����--]]

		name = "��ս����",	--��������
		startNpcID = 20701,	--������ʼnpc
		endNpcID = 20701,		--�������npc
		preTaskData = {1201},	--����ǰ������û����nil
		nextTaskID = 1203,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1208,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 33000,    --����
                [TaskRewardList.player_pot] = 9900,  	--����Ǳ��
	 
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{   
		[1] = {type='Tmine',param =     --����
			{
			mineIndex = 1,		--��һ����
			scriptID = 201,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1206,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 20720, x = 164, y = 96,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20740, x = 167, y = 97,  noDelete = true},
					{npcID = 20742, x = 161, y = 97,  noDelete = true},
					{npcID = 20741, x = 165, y = 99,  noDelete = true},
					{npcID = 20743, x = 162, y = 99,  noDelete = true},
			},
			posData = {mapID = 13, x = 164, y = 95}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{	
                                  },

			[TaskStatus.Done]		=
			{ 
			{type="autoTrace", param = {tarMapID=13, x =55, y = 141,npcID = 20701,},}, --�Զ�Ѱ·���������
		},
	},
	},

[1203] =
	{
		name = "Ѱ������",	--��������
		startNpcID = 20701,	--������ʼnpc����
		endNpcID = 20702,	--�������npc
		preTaskData = {1202}, --ǰ������ID ��������һ������ID
		nextTaskID = 1204,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1209,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 33000,    --����
                [TaskRewardList.player_pot] = 9900,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 106, x = 220, y = 120, bor = true},},-------����ָ������
		},
			
		triggers = --���񴥷���
		{

			[TaskStatus.Active] =
				{
				{type="createPrivateNpc",                                         --˽��npc����
				param={ 
						npcs =
						{
							[1] = {npcID = 20702, mapID = 106, x = 218, y = 119, dir = Direction. EastSouth,}, --����
							[2] = {npcID = 20703, mapID = 106, x = 216, y = 118, dir = Direction. EastSouth,}, --�n��
						},
					},
				},
				},
			[TaskStatus.Done] =
				{
				{type="openDialog", param={dialogID = 1209},},	
				},
	          },
	},

[1204] =
         {                  --[[�뿪˽Է--]]

		name = "�뿪˽Է",	--��������
		startNpcID = 20702,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1203},	--����ǰ������û����nil
		nextTaskID = 1205,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 33000,    --����
                [TaskRewardList.player_pot] = 9900,  	--����Ǳ��
	 
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{   
		[1] = {type='Tmine',param =     --�n��
			{
			mineIndex = 1,		--��һ����
			scriptID = 202,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1212,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 106, x = 220, y = 120}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				},
			[TaskStatus.Done]		=
			{
			
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20702, taskID = {1203}, index = 1}, --ɾ������
						},
					},
				},
			{type="createFollow", param = {npcs = {20702},},},--������������
			{type="openDialog", param={dialogID = 1213},},
			{type="finishTask", param = {recetiveTaskID = 1205},},
			
			},
		},
	},
	
[1205] =
         {                  --[[�������--]]

		name = "�������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20702,		--�������npc
		preTaskData = {1204},	--����ǰ������û����nil
		nextTaskID = 1206,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1217,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 33000,    --����
                [TaskRewardList.player_pot] = 9900,  	--����Ǳ��
	 
		},
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{   
		[1] = {type='Tmine',param =     --ħ������
			{
			mineIndex = 1,		--��һ����
			scriptID = 203,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1214,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 106, x = 162, y = 86}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="autoTrace", param = {tarMapID=106, x =163, y = 85,npcID = 20707,},}, --�Զ�Ѱ·���������
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20707, mapID = 106, x = 161, y = 87, dir = Direction. WestSouth,}, --ħ������
						},
					},
			},
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20703, taskID = {1203}, index = 1}, --ɾ���n��
						},
					},
				},
				},
			[TaskStatus.Done]		=
			{
			{type="deleteFollow", param = {npcs = {20702},},},
			{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20702, mapID = 106, x = 161, y = 86, dir = Direction. WestSouth,}, --����
						},
					},
			},
                        {type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20707, taskID = {1205}, index = 1}, --ɾ������
						},
					},
				},
		        {type="openDialog", param={dialogID = 1217},},
			},
		},
	},
[1206] =
	{
		name = "��������",	--��������
		startNpcID = 20702,	--������ʼnp
		endNpcID = 20701,	--�������npc
		preTaskData = {1205}, --ǰ������ID 
		nextTaskID = 1207,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1218,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 33000,    --����
                [TaskRewardList.player_pot] = 9900,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 13, x = 55, y = 141, bor = true},},-------����ָ������
			},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] = 
				{
				},
				[TaskStatus.Done] =
					{
				                {type="deletePrivateNpc",
				  param={
						npcs =
						{
							{npcID = 20702, taskID = {1205}, index = 1}, --ɾ������
						},
					        },
				                },
				                {type="openDialog", param={dialogID = 12018},},
						
			},
	},
	},
[1207] =
         {                  --[[��̽����--]]

		name = "��̽����",	--��������
		startNpcID = 20701,	--������ʼnpc
		endNpcID = 20752,		--�������npc
		preTaskData = {1206},	--����ǰ������û����nil
		nextTaskID = 1208,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1238,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 33000,    --����
                [TaskRewardList.player_pot] = 9900,  	--����Ǳ��
	 
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{   
		[1] = {type='Tmine',param =     --����
			{
			mineIndex = 1,		--��һ����
			scriptID = 204,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1236,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 20729, x = 132, y = 119,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20745, x = 130, y = 118,  noDelete = true},
					{npcID = 20747, x = 135, y = 118,  noDelete = true},
					{npcID = 20744, x = 131, y = 116,  noDelete = true},
					{npcID = 20746, x = 134, y = 116,  noDelete = true},
			},
			posData = {mapID = 13, x = 132, y = 120}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
                                  },
			[TaskStatus.Done]		=
			{
			{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20752, mapID = 13, x = 132, y = 119, dir = Direction. EastSouth,}, --����
						},
					},
			},
		        {type="openDialog", param={dialogID = 1238},},
			},
		},
	},
	
[1208] =
         {                  --[[���ʲ���--]]

		name = "���ʲ���",	--��������
		startNpcID = 20752,	--������ʼnpc
		endNpcID = 20731,		--�������npc
		preTaskData = {1207},	--����ǰ������û����nil
		nextTaskID = 1209,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1241,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 33000,    --����
                [TaskRewardList.player_pot] = 9900,  	--����Ǳ��
	 
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{   
		[1] = {type='Tmine',param =     --����
			{
			mineIndex = 1,		--��һ����
			scriptID = 205,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1239,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
		
			},
			posData = {mapID = 13, x = 87, y = 65}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20710, mapID = 13, x = 85, y = 65, dir = Direction. EastSouth,}, --����
							[2] = {npcID = 20721, mapID = 13, x = 83, y = 68, dir = Direction. EastSouth,}, --��Ӫ�ؽ�
							[3] = {npcID = 20753, mapID = 13, x = 83, y = 63, dir = Direction. EastSouth,}, --��ӪС��
							[4] = {npcID = 20722, mapID = 13, x = 80, y = 64, dir = Direction. EastSouth,}, --��Ӫ�ؽ�
							[5] = {npcID = 20754, mapID = 13, x = 80, y = 68, dir = Direction. EastSouth,}, --��ӪС��
						},
					},
			},
			},
			[TaskStatus.Done]		=
			{
                        {type="deletePrivateNpc",
				  param={
						npcs =
						{
							{npcID = 20710, taskID = {1208}, index = 1}, --ɾ������
							{npcID = 20721, taskID = {1208}, index = 2}, --ɾ������
							{npcID = 20722, taskID = {1208}, index = 3}, --ɾ������
							{npcID = 20753, taskID = {1208}, index = 4}, --ɾ������
							{npcID = 20754, taskID = {1208}, index = 5}, --ɾ������
							{npcID = 20752, taskID = {1207}, index = 1}, --ɾ������
						},
					        },
				                },
			{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20731, mapID = 13, x = 85, y = 65, dir = Direction. EastSouth,}, --����
						},
					},
			},
		    {type="openDialog", param={dialogID = 1241},},
			},
		},
	},
	
[1209] =
         {                  --[[������ʤ--]]

		name = "������ʤ",	--��������
		startNpcID = 20710,	--������ʼnpc
		endNpcID = 20709,		--�������npc
		preTaskData = {1208},	--����ǰ������û����nil
		nextTaskID = {1210,1211,1212,1213,1214,1215},	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1245,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{   
		[1] = {type='Tmine',param =     --����
			{
			mineIndex = 1,		--��һ����
			scriptID = 206,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1242,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 20709, x = 98, y = 135,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20756, x = 96, y = 139,  noDelete = true},
					{npcID = 20758, x = 96, y = 132,  noDelete = true},
					{npcID = 20755, x = 95, y = 135,  noDelete = true},
					{npcID = 20757, x = 95, y = 137,  noDelete = true},
			},
			posData = {mapID = 13, x = 99, y = 135}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
			},
			[TaskStatus.Done]		=
			{
			{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20730, mapID = 13, x = 98, y = 135, dir = Direction. EstSouth,}, --��ʤ
						},
					},
			},
		        {type="openDialog", param={dialogID = 1245},},
			
			},
		},
	},
	
[1210] =
	{
		name = "������Ԯ",	--��������
		startNpcID = 0,	--������ʼnpc
		endNpcID = 20004,	--�������npc
		preTaskData ={1209}, --ǰ������ID 
		nextTaskID = 1216,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1246,	--
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 1 , x = 26, y = 84, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
				{
				},
				[TaskStatus.Done] =
				{
			        {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 1, x = 59, y = 111, tarMapID = 114, tarX = 59, tarY = 113},--����˽�д�����
							},
			 			},
			             },
				{type="openDialog", param={dialogID = 1246},},
			        },
		},
	},
[1211] =
	{
		name = "������Ԯ",	--��������
		startNpcID = 0,	--������ʼnpc
		endNpcID = 20005,	--�������npc
		preTaskData ={1209}, --ǰ������ID 
		nextTaskID = 1226,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1247,	--
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 4 , x = 59, y = 72, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
				{
				},
				[TaskStatus.Done] =
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 4, x = 64, y = 134, tarMapID = 114, tarX = 59, tarY = 113},--����˽�д�����
							},
			 			},
			             },
				{type="openDialog", param={dialogID = 1247},},
			        },
		},
	},

[1212] =
	{
		name = "������Ԯ",	--��������
		startNpcID =0,	--������ʼnpc
		endNpcID = 20006,	--�������npc
		preTaskData ={1209}, --ǰ������ID 
		nextTaskID = 1227,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1248,	--
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 3 , x = 26, y = 92, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
				{
				},
				[TaskStatus.Done] =
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 3, x = 99, y = 93, tarMapID = 114, tarX = 59, tarY = 113},--����˽�д�����
							},
			 			},
			             },
				{type="openDialog", param={dialogID = 1248},},
			        },
	},
	},
[1213] =
	{
		name = "������Ԯ",	--��������
		startNpcID = 0,	--������ʼnpc
		endNpcID = 20007,	--�������npc
		preTaskData ={1209}, --ǰ������ID 
		nextTaskID = 1228,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1249,	--
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 2 , x = 83, y = 125, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
				{
				},
				[TaskStatus.Done] =
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 2, x = 16, y = 99, tarMapID = 114, tarX = 59, tarY = 113},--����˽�д�����
							},
			 			},
			             },
		                {type="openDialog", param={dialogID = 1249},},
		      	        },
	                  },
	},
[1214] =
	{
		name = "������Ԯ",	--��������
		startNpcID = 0,	--������ʼnpc
		endNpcID = 20008,	--�������npc
		preTaskData ={1209}, --ǰ������ID 
		nextTaskID = 1229,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1250,	--
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 6 , x = 67, y = 135, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
				{
				},
				[TaskStatus.Done] =
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 6, x = 57, y = 48, tarMapID = 114, tarX = 59, tarY = 113},--����˽�д�����
							},
			 			},
			             },
				{type="openDialog", param={dialogID = 1250},},
			        },
	                  },
	},
[1215] =
	{
		name = "������Ԯ",	--��������
		startNpcID = 0,	--������ʼnpc
		endNpcID = 20009,	--�������npc
		preTaskData ={1209}, --ǰ������ID 
		nextTaskID = 1230,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1251,	--
		taskType2 = TaskType2.Main, --��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 5 , x = 43, y = 112, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
				{
				},
				[TaskStatus.Done] =
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 5, x = 119, y = 64, tarMapID = 114, tarX = 59, tarY = 113},--����˽�д�����
							},
			 			},
			             },
				{type="openDialog", param={dialogID = 1251},},
			        },
	                  },
	},
[1216] =
	{
		name = "ǰ������ɽ",	--��������
		startNpcID = 20004,	--������ʼ
		endNpcID = 20711,	--�������npc
		preTaskData = {1210},--ǰ������ID 
		nextTaskID = 1217,	--�����������û����nil
		startDialogID =nil,	--
		endDialogID = 1258,	--
		taskType2 = TaskType2.Main,--��������
		school =SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 114 , x = 20, y = 125, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				
				},
				[TaskStatus.Done] =
					{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1210, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="openDialog", param={dialogID = 1258},},	
			},
	},
	},
[1226] =
	{
		name = "ǰ������ɽ",	--��������
		startNpcID = 20005,	--������ʼ
		endNpcID = 20711,	--�������npc
		preTaskData = {1211}, --ǰ������ID 
		nextTaskID = 1217,	--�����������û����nil
		startDialogID =nil,	--
		endDialogID = 1293,	--
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 114 , x = 20, y = 125, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				
				},
				[TaskStatus.Done] =
					{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1211, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="openDialog", param={dialogID = 1293},},	
			},
	},
	},
[1227] =
	{
		name = "ǰ������ɽ",	--��������
		startNpcID = 20006,	--������ʼ
		endNpcID = 20711,	--�������npc
		preTaskData = {1212},--ǰ������ID 
		nextTaskID = 1217,	--�����������û����nil
		startDialogID =nil, 	--
		endDialogID = 1294,	--
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 114 , x = 20, y = 125, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				
				},
				[TaskStatus.Done] =
					{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1212, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="openDialog", param={dialogID = 1294},},	
			},
	},
	},
[1228] =
	{
		name = "ǰ������ɽ",	--��������
		startNpcID = 20007,	--������ʼ
		endNpcID = 20711,	--�������npc
		preTaskData = {1213}, --ǰ������ID 
		nextTaskID = 1217,	--�����������û����nil
		startDialogID =nil, 	--
		endDialogID = 1295,	--
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 114 , x = 20, y = 125, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				
				},
				[TaskStatus.Done] =
					{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1213, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="openDialog", param={dialogID = 1295},},	
			},
	},
	},
[1229] =
	{
		name = "ǰ������ɽ",	--��������
		startNpcID = 20008,	--������ʼ
		endNpcID = 20711,	--�������npc
		preTaskData = {1214}, --ǰ������ID 
		nextTaskID = 1217,	--�����������û����nil
		startDialogID =nil,	--
		endDialogID = 1296,	--
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 114 , x = 20, y = 125, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				
				},
				[TaskStatus.Done] =
					{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1214, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="openDialog", param={dialogID = 1296},},	
			},
	},
	},
[1230] =
	{
		name = "ǰ������ɽ",	--��������
		startNpcID = 20009,	--������ʼ
		endNpcID = 20711,	--�������npc
		preTaskData = {1215},--ǰ������ID 
		nextTaskID = 1217,	--�����������û����nil
		startDialogID =nil, 	--
		endDialogID = 1297,	--
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 114 , x = 20, y = 125, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				
				},
				[TaskStatus.Done] =
					{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1215, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="openDialog", param={dialogID = 1297},},	
			},
	},
	},

 [1217] =
	{
		name = "��ɽѰѩ��",	--��������
		startNpcID = 20711,	--������ʼ
		endNpcID = 20714,	--�������npc
		preTaskData =  {condition = "or",{1216,1226,1227,1228,1229,1230}},      --ǰ������ID 
		nextTaskID = 1218,	--�����������û����nil
		startDialogID =nil,	--
		endDialogID = 1293,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 115 , x = 73, y = 194, bor = true},},-------����ָ������
		},		
		triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				{type="deletePrivateNpc",
				  param={
						npcs =
						{
						[1] ={npcID = 20730, taskID = {1209}, index = 1}, --ɾ����ʤ
						},
					        },
				                },
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20714, mapID = 115, x = 72, y = 193, dir = Direction. EastSouth,}, --��ɽС��
						        [2] = {npcID = 20712, mapID = 115, x = 66, y = 188, dir = Direction. EastSouth,}, --��ɽ��ħ
						},
					},
		           	},
				},
				[TaskStatus.Done] =
					{
					{type="openDialog", param={dialogID = 1293},},		
			},
	},
	},
[1218] =
         {                  --[[ѩ���ټ�--]]

		name = "ѩ���ټ�",	--��������
		startNpcID = 20714,	--������ʼnpc
		endNpcID = 20714,		--�������npc
		preTaskData = {1217},	--����ǰ������û����nil
		nextTaskID = 1219,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1262,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{ 
		[1] = {type='Tmine',param =     --��ɽ��ħ
			{
			mineIndex = 1,		--��һ����
			scriptID = 207,         --�ű�ս��
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1260,        --���������򿪵ĶԻ���
			npcsData =
			{
			},                       --ˢ��npc����
			posData = {mapID = 115, x = 68, y = 188}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
                                  },
			[TaskStatus.Done]		=
			{
			{type="deletePrivateNpc",
				  param={
						npcs =
						{
						[1] ={npcID = 20712, taskID = {1217}, index = 1}, --ɾ����ɽ��ħ
						},
					 },
                          },
		        {type="openDialog", param={dialogID = 1262},},
			},
		},
	},
	
[1219] = 
	{                      --[[ѩ������--]]     

		name = "ѩ������",	--��������
		startNpcID = 20714,	--������ʼ
		endNpcID = 20713,	--�������npc
		preTaskData = {1217},       --ǰ������ID 
		nextTaskID = 1219,	--�����������û����nil
		startDialogID =nil,	--
		endDialogID = 1267,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
          	[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tmine',param =     --ѩ������
			{
			mineIndex = 1,		--��һ����
			scriptID = 208,         --�ű�ս��
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1265,        --���������򿪵ĶԻ���
			npcsData =     
			{
			                {npcID = 20713, x = 118, y = 148,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20762, x = 115, y = 146,  noDelete = true},
					{npcID = 20763, x = 115, y = 151,  noDelete = true},
			},                       --ˢ��npc����
			posData = {mapID = 115, x = 120, y = 148}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
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
					{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20764, mapID = 115, x = 118, y = 148, dir = Direction. EastSouth,}, --ѩ������
						},
					},
		           	},
					{type="openDialog", param={dialogID = 1267},},	
			},
	},
	},
[1220] = 
	{                      --[[��ܶ���ո�--]]     

		name = "��ܶ���ո�",	--��������
		startNpcID = 20713,	--������ʼ
		endNpcID = 20715,	--�������npc
		preTaskData = {1219},       --ǰ������ID 
		nextTaskID = 1221,	--�����������û����nil
		startDialogID =nil,	--
		endDialogID = 1270,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tmine',param =     --����ո�
			{
			mineIndex = 1,		--��һ����
			scriptID = 209,         --�ű�ս��
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1268,        --���������򿪵ĶԻ���
			npcsData =     
			{
			                {npcID = 20715, x = 207, y = 80,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20723, x = 211, y = 78,  noDelete = true},
					{npcID = 20760, x = 203, y = 78,  noDelete = true},
					{npcID = 20759, x = 205, y = 76,  noDelete = true},
					{npcID = 20761, x = 209, y = 76,  noDelete = true},
			},                       --ˢ��npc����
			posData = {mapID = 115, x = 207, y = 81}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
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
					{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20733, mapID = 115, x = 207, y = 80, dir = Direction. EastNorth,}, --����ո�
						},
					},
		           	},
					{type="openDialog", param={dialogID = 1270},},	
			},
	},
	},
	
[1221] = 
	{                      --[[���޷粨--]]     

		name = "���޷粨",	--��������
		startNpcID = 20715,	--������ʼ
		endNpcID = 20718,	--�������npc
		preTaskData = {1220},       --ǰ������ID 
		nextTaskID = 1222,	--�����������û����nil
		startDialogID =nil,	--
		endDialogID = 1274,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tmine',param =     --����
			{
			mineIndex = 1,		--��һ����
			scriptID = 210,         --�ű�ս��
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1271,        --���������򿪵ĶԻ���
			npcsData =     
			{
			{npcID = 20716, x = 90, y = 96, actionID = 5, magicID = 115, noDelete = true},
			{npcID = 20748, x = 87, y = 96, actionID = 5, magicID = 115, noDelete = true},
			{npcID = 20749, x = 89, y = 99, actionID = 5, magicID = 115, noDelete = true},
			},                       --ˢ��npc����
			posData = {mapID = 115, x =91, y = 95}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --����
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 211,         --�ű�ս��
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1273,        --���������򿪵ĶԻ���
			npcsData =     
			{
			{npcID = 20717, x = 79, y = 105, actionID = 5, magicID = 115, noDelete = true},
			{npcID = 20748, x = 76, y = 105, actionID = 5, magicID = 115, noDelete = true},
			{npcID = 20749, x = 79, y = 108, actionID = 5, magicID = 115, noDelete = true},
			},                       --ˢ��npc����
			posData = {mapID = 115, x = 80, y = 104}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
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
					{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20734, mapID = 115, x = 75, y =108, dir = Direction. South,}, --����
						},
					},
		           	},
				{type="deletePrivateNpc",
				  param={
						npcs =
						{
						[1] ={npcID = 20733, taskID = {1220}, index = 1}, --ɾ������ո�
						},
					        },
				                },
					{type="openDialog", param={dialogID = 1274},},		
			},
	},
	},
	
[1222] = 
	{                      --[[�õ���ɽѩ��--]]     

		name = "�õ���ɽѩ��",	--��������
		startNpcID = 20718,	--������ʼ
		endNpcID = 20718,	--�������npc
		preTaskData = {1221},       --ǰ������ID 
		nextTaskID = 1223,	--�����������û����nil
		startDialogID =nil,	--
		endDialogID = 1278,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tmine',param =     --��Ӱħ�
			{
			mineIndex = 1,		--��һ����
			scriptID = 212,         --�ű�ս��
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1275,        --���������򿪵ĶԻ���
			npcsData =     
			{
			                {npcID = 20718, x = 48, y = 137,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20724, x = 49, y = 140,  noDelete = true},
					{npcID = 20727, x = 45, y = 136,  noDelete = true},
					{npcID = 20750, x = 46, y = 141,  noDelete = true},
					{npcID = 20751, x = 44, y = 139,  noDelete = true},
			},                       --ˢ��npc����
			posData = {mapID = 115, x = 49, y = 136}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
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
					{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20735, mapID = 115, x = 48, y = 137, dir = Direction. South,}, --��Ӱħ�
						},
					},
		           	},
				        {type="getItem", param = {itemID = 1041014, count = 1,}},			--���ָ����������Ʒ(������ƷID������)
					{type="openDialog", param={dialogID = 1278},},	
			},
	},
	},
[1223] =
         {                  --[[��ħ��--]]

		name = "��ħ��",	--��������
		startNpcID = 20718,	--������ʼnpc
		endNpcID = 20711,		--�������npc
		preTaskData = {1222},	--����ǰ������û����nil
		nextTaskID = 1224,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1279,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{ 
		--[1] = {type='Tarea',param = {mapID = 114, x = 18, y = 125, bor = true},},-------����ָ������
		[1] = {type = "TcommitItem", param = {taskID = 1223,itemsInfo = {{itemID = 1041014, count = 1}},bor = true},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
                               {type="CreateIntemDirect",param = {taskID = 1223,itemsInfo = {{itemID = 1041014, count = 1}}},},
			       {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 115, x = 86, y = 139, tarMapID = 114, tarX = 59, tarY = 113},--����˽�д�����
							},
			 			},
			             },
				},
			[TaskStatus.Done]		=
			{		
			{type="deletePrivateNpc",
				  param={
						npcs =
						{
						[1] ={npcID = 20735, taskID = {1222}, index = 1}, --ɾ����Ӱħ�
						},
					        },
				                },
			{type="getItem", param = {itemID = 1041015, count = 1,}},			--���ָ����������Ʒ(������ƷID������)
		        {type="openDialog", param={dialogID = 1279},}, 
			},
		},
	},
[1224] =
         {                  --[[�������--]]

		name = "�������",	--��������
		startNpcID = 20711,	--������ʼnpc
		endNpcID = 20702,		--�������npc
		preTaskData = {1223},	--����ǰ������û����nil
		nextTaskID = 1225,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1281,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{ 
		[1] = {type='Tarea',param = {mapID = 116, x = 174, y = 160, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 20702, mapID = 116, x = 173, y = 160, dir = Direction. EastSouth,}, --����
						},
					},
			         },
			},
			[TaskStatus.Done]=
			{
			{type="openDialog", param={dialogID = 1281},},
			},
		},
	},
[1225] = 
	{                      --[[����ħ������--]]     

		name = "����ħ������",	--��������
		startNpcID = 20702,	--������ʼ
		endNpcID = 20719,	--�������npc
		preTaskData = {1224},       --ǰ������ID 
		nextTaskID = 1301,	--�����������û����nil
		startDialogID =nil,	--
		endDialogID = 1286,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
		[TaskRewardList.player_xp] = 8000,   --��Ҿ���
                [TaskRewardList.pet_xp] = 5000,      --���ﾭ��
                [TaskRewardList.subMoney] = 34000,    --����
                [TaskRewardList.player_pot] = 10200,  	--����Ǳ��
	 
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tmine',param =     --ħ������
			{
			mineIndex = 1,		--��һ����
			scriptID = 213,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1283,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 116, x = 155, y = 149}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20702, taskID = {1224}, index = 1}, --ɾ������
						},
					},
				},
				{type="createFollow", param = {npcs = {20702},},},--������������
				{type="createPrivateNpc",  --˽��npc����
				param={
				npcs ={
				   [1] = {npcID = 20707, mapID = 116, x = 154, y = 149, dir = Direction. EastSouth,}, --ħ������
					},
					},
			        },
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 20707, taskID = {1225}, index = 1}, --ɾ��ħ������
						 },
					         },
				                 },  
			{type="deleteFollow", param = {npcs = {20702},},},
			{type="createPrivateNpc",  --˽��npc����
				param={
				npcs ={
				   [1] = {npcID = 20719, mapID = 116, x = 154, y = 149, dir = Direction. EastSouth,}, --����
				   [2] = {npcID = 20702, mapID = 116, x = 155, y = 146, dir = Direction. EastSouth,}, --����
					},
				},
		     },
			{type="openDialog", param={dialogID = 1285},},
			},
	},
	},

}
table.copy(MainTaskDB31_35, NormalTaskDB)