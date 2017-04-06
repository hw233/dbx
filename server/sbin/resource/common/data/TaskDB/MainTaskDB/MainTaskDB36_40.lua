--[[MainTaskDB36_40.lua
	��������36��40��(����ϵͳ)
]]

MainTaskDB36_40 = 
{
----------------------����35-36--------------------------------------
	[1301] =	            --����35-36
	{
		
		name = "̽Ѱ��׿����",	--��������
		startNpcID = 20801,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1225},	--����ǰ������û����nil
		nextTaskID = 1302,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8600,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4300,      --���ﾭ��
			[TaskRewardList.subMoney] = 127000,    --����
		}, 
		consume =--��������û����{}
		{},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --ţ��
			{
				mineIndex = 1,		--��һ����
				scriptID = 220,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1302,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20804, x = 98, y = 211, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20802, x = 100, y = 212, noDelete = true},
					{npcID = 20802, x = 96, y = 210, noDelete = true},
					{npcID = 20803, x = 95, y = 213, noDelete = true},
					{npcID = 20803, x = 97, y = 214, noDelete = true},
				},
				posData = {mapID = 116, x = 98, y = 211}, --��������
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
			{type="openDialog", param={dialogID = 1304},}, --���������ʱ��һ���Ի���
			{type="createPrivateNpc", ----------����ţ��
					param={
						npcs =
						{
								[1] = {npcID = 20804,mapID = 116, x = 98, y = 211,dir = Direction.South,},
						},
					},
			},
			{type="deletePrivateNpc", ----------ɾ����������
				param={
						npcs =
						{
							{npcID = 20719,	taskID = {1225}, index = 1},
							{npcID = 20702,	taskID = {1225}, index = 2},
						},
					},
			},
			{type="finishTask", param = {recetiveTaskID = 1302}},--����������������һ������
			},
			[TaskStatus.Finished]	=      ---�������״̬ 
			{
			}
	},
	},
	[1302] =	            --����35-36
	{
		
		name = "Ѱ������",	--��������
		startNpcID = nil,	--������ʼnpc22
		endNpcID = nil,	--�������npc
		preTaskData = {1301},	--����ǰ������û����nil
		nextTaskID = 1303,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8600,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4300,      --���ﾭ��
			[TaskRewardList.subMoney] = 128000,    --����
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 221,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1306,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20809, x = 37, y = 229, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20805, x = 36, y = 233, noDelete = true},
					{npcID = 20805, x = 38, y = 225, noDelete = true},
					{npcID = 20806, x = 33, y = 232, noDelete = true},
					{npcID = 20806, x = 34, y = 228, noDelete = true},
				},
				posData = {mapID = 116, x = 37, y = 229}, --��������
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
			{type="deletePrivateNpc", ----------ɾ��ţ��
				param={
						npcs =
						{
							{npcID = 20804,	taskID = {1301}, index = 1},
						},
					},
			},
			{type="createPrivateNpc", ----------��������
					param={
						npcs =
						{
								[1] = {npcID = 20809,mapID = 116, x = 37, y = 229,dir = Direction.EastSouth,},
						},
					},
			},
			{type="openDialog", param={dialogID = 1308},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1303}},--����������������һ������
			},
			[TaskStatus.Finished]	=      ---�������״̬ 
			{
			}
	},
	},
	[1303] =	            --����35-36
	{
		
		name = "�´�����",	--��������
		startNpcID = nil,	--������ʼnpc22
		endNpcID = nil,	--�������npc
		preTaskData = {1302},	--����ǰ������û����nil
		nextTaskID = 1304,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8600,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4300,      --���ﾭ��
			[TaskRewardList.subMoney] = 129000,    --����
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 222,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1310,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 13, x = 54, y = 98}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		}, 
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=      ---������״̬ 
			{
			{type="createPrivateNpc", ----------��������
					param={
						npcs =
						{
								[1] = {npcID = 20812, mapID = 13, x = 54, y = 98,dir = Direction.WestSouth,},
								[2] = {npcID = 20807, mapID = 13, x = 56, y = 98,dir = Direction.WestSouth,},
								[3] = {npcID = 20808, mapID = 13, x = 52, y = 98,dir = Direction.WestSouth,},
								[4] = {npcID = 20810, mapID = 13, x = 55, y = 101,dir = Direction.WestSouth,},
								[5] = {npcID = 20811, mapID = 13, x = 52, y = 101,dir = Direction.WestSouth,},
						},
					},
			},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="deletePrivateNpc", ----------ɾ������
				param={
						npcs =
						{
							{npcID = 20809,	taskID = {1302}, index = 1},
						},
					},
			},
			{type="openDialog", param={dialogID = 1312},}, --���������ʱ��һ���Ի���
			{type="deletePrivateNpc", ----------ɾ������
				param={
						npcs =
						{
							{npcID = 20812,	taskID = {1303}, index = 1},
							{npcID = 20807,	taskID = {1303}, index = 2},
							{npcID = 20808,	taskID = {1303}, index = 3},
							{npcID = 20810,	taskID = {1303}, index = 4},
							{npcID = 20811,	taskID = {1303}, index = 5},
						},
					},
			},
			{type="finishTask", param = {recetiveTaskID = 1304}},--����������������һ������
			},
			[TaskStatus.Finished]	=      ---�������״̬ 
			{
			}
	},
	},
	[1304] =	            --����35-36
	{
		
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc22
		endNpcID = 20813,	--�������npc
		preTaskData = {1303},	--����ǰ������û����nil
		nextTaskID = 1305,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1315,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8600,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4300,      --���ﾭ��
			[TaskRewardList.subMoney] = 130000,    --����
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 223,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1313,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 13, x = 161, y = 105}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		}, 
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=      ---������״̬ 
			{
			{type="createPrivateNpc", ----------��������
					param={
						npcs =
						{
								[1] = {npcID = 20813, mapID = 13, x = 161, y = 105,dir = Direction.WestSouth,},
						},
					},
			},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="openDialog", param={dialogID = 1315},}, --���������ʱ��һ���Ի���
			},
			[TaskStatus.Finished]	=      ---�������״̬ 
			{
			}
	},
	},
	[1305] =	            --����35-36
	{
		
		name = "���⸴��",	--��������
		startNpcID = 20813,	--������ʼnpc22
		endNpcID = nil,	--�������npc
		preTaskData = {1304},	--����ǰ������û����nil
		nextTaskID = 1306,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8600,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4300,      --���ﾭ��
			[TaskRewardList.subMoney] = 131000,    --����
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --갰�
			{
				mineIndex = 1,		--��һ����
				scriptID = 224,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1317,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20816, x = 148, y = 153, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20814, x = 151, y = 153, noDelete = true},
					{npcID = 20814, x = 145, y = 153, noDelete = true},
					{npcID = 20815, x = 147, y = 150, noDelete = true},
					{npcID = 20815, x = 150, y = 150, noDelete = true},
				},
				posData = {mapID = 115, x = 148, y = 153}, --��������
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
			{type="openDialog", param={dialogID = 1319},}, --���������ʱ��һ���Ի���
			{type="deletePrivateNpc", ----------ɾ������
				param={
						npcs =
						{
							{npcID = 20813,	taskID = {1304}, index = 1},
						},
					},
			},
			{type="finishTask", param = {recetiveTaskID = 1306}},--����������������һ������
			},
			[TaskStatus.Finished]	=      ---�������״̬ 
			{
			}
	},
	},
	[1306] =	            --����35-36
	{
		
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc22
		endNpcID = nil,	--�������npc
		preTaskData = {1305},	--����ǰ������û����nil
		nextTaskID = 1307,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8600,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4300,      --���ﾭ��
			[TaskRewardList.subMoney] = 132000,    --����
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 10004,--�ɼ���ʵ��ID
					scriptID= 225,
					dialogID = 1320,
					npcsData =			--ˢ��npc����
					{
						{npcID = 20817, x = 166, y = 155,},--а��ħ������
				},
						
			}
		},
		[2] = {type='TcontactSeal',param = {sealID = 10004, bor = true},},---����Ŀ�� ���磺�ݻ����ƻ����󷨻��ߴݻٲɼ�����Ʒ
		}, 
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=      ---������״̬ 
			{
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="openDialog", param={dialogID = 1322},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1307}},--����������������һ������
			},
			[TaskStatus.Finished]	=      ---�������״̬ 
			{
			}
	},
	},
	[1307] =	            --����35-36
	{
		
		name = "����Ѱ��",	--��������
		startNpcID = nil,	--������ʼnpc22
		endNpcID = nil,	--�������npc
		preTaskData = {1306},	--����ǰ������û����nil
		nextTaskID = 1308,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8600,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4300,      --���ﾭ��
			[TaskRewardList.subMoney] = 133000,    --����
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		    [1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 226,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1323,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20818, x = 137, y = 123, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20814, x = 140, y = 123, noDelete = true},
					{npcID = 20814, x = 134, y = 123, noDelete = true},
					{npcID = 20815, x = 138, y = 126, noDelete = true},
					{npcID = 20815, x = 135, y = 126, noDelete = true},
				},
				posData = {mapID = 110, x = 137, y = 123}, --��������
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
			{type="openDialog", param={dialogID = 1325},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1308}},--����������������һ������
			},
			[TaskStatus.Finished]	=      ---�������״̬ 
			{
			}
	},
	},
	[1308] =	            --����35-36
	{
		
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc22
		endNpcID = nil,	--�������npc
		preTaskData = {1307},	--����ǰ������û����nil
		nextTaskID = 1309,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8600,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4300,      --���ﾭ��
			[TaskRewardList.subMoney] = 134000,    --����
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 10006,--�ɼ���ʵ��ID
					scriptID = 227,
					dialogID = 1326,
					npcsData =			--ˢ��npc����
					{
						{npcID = 20819, x = 139, y = 149,},--��������
				},
						
			}
		},
		[2] = {type='TcontactSeal',param = {sealID = 10006, bor = false},},---����Ŀ�� ���磺�ݻ����ƻ����󷨻��ߴݻٲɼ�����Ʒ
		}, 
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=      ---������״̬ 
			{
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="openDialog", param={dialogID = 1328},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1309}},--����������������һ������
			},
			[TaskStatus.Finished]	=      ---�������״̬ 
			{
			}
	},
	},
	[1309] =	            --����35-36
	{
		
		name = "������",	--��������
		startNpcID = nil,	--������ʼnpc22
		endNpcID = 20820,	--�������npc
		preTaskData = {1308},	--����ǰ������û����nil
		nextTaskID = {1310,1312,1314,1316,1318,1320},--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1331,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8600,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 4300,      --���ﾭ��
			[TaskRewardList.subMoney] = 135000,    --����
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		    [1] = {type='Tmine',param =     --��˳
			{
				mineIndex = 1,		--��һ����
				scriptID = 228,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1329,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20820, x = 92, y = 222, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20814, x = 90, y = 220, noDelete = true},
					{npcID = 20814, x = 94, y = 224, noDelete = true},
					{npcID = 20815, x = 88, y = 224, noDelete = true},
					{npcID = 20815, x = 90, y = 226, noDelete = true},
				},
				posData = {mapID = 116, x = 92, y = 222}, --��������
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
			{type="openDialog", param={dialogID = 1331},}, --���������ʱ��һ���Ի���
			{type="createPrivateNpc", ----------������˳
					param={
						npcs =
						{
								[1] = {npcID = 20820,mapID = 116, x = 92, y = 222,dir = Direction.South,},
						},
					},
			},
			},
			[TaskStatus.Finished]	=      ---�������״̬ 
			{
			}
	},
	},
----------------------------------------------------ǬԪ��
	[1310] =	--ǬԪ��
	{

		name = "��������",	--��������
		startNpcID = 20820,	--������ʼnpc 
		endNpcID = 20004,		--�������npc    
		preTaskData = {1309},	--����ǰ������û����nil
		nextTaskID = 1311,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1334,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 136000,    --����
		},
		consume	=--��������û����{}
		{
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
				{type="deletePrivateNpc", ----------ɾ����˳
				param={
						npcs =
						{
							{npcID = 20820,	taskID = {1309}, index = 1},
						},
					},
				},
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 1, x = 26, y = 84,npcID = 20004,},}, --Ѱ·������
			},
		},
	},
	[1311] =	--ǬԪ��
	{

		name = "ѯ������",	--��������
		startNpcID = 20004,	--������ʼnpc 
		endNpcID = 20829,		--�������npc    
		preTaskData = {1310},	--����ǰ������û����nil
		nextTaskID = 1322,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1336,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.QYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 137000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 129 , x = 121, y = 34, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 129, x = 80, y = 91,npcID = 20829,},}, --Ѱ·������������ 
			},
		},
	},
	----------------------------------------------------��Դ��
	[1312] =	--��Դ��
	{

		name = "��������",	--��������
		startNpcID = 20820,	--������ʼnpc 
		endNpcID = 20005,		--�������npc    
		preTaskData = {1309},	--����ǰ������û����nil
		nextTaskID = 1313,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1339,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 136000,    --����
		},
		consume	=--��������û����{}
		{
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
				{type="deletePrivateNpc", ----------ɾ����˳
				param={
						npcs =
						{
							{npcID = 20820,	taskID = {1309}, index = 1},
						},
					},
				},
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 4, x = 60, y = 72,npcID = 20005,},}, --Ѱ·������
			},
		},
	},
	[1313] =	--��Դ��
	{

		name = "ѯ������",	--��������
		startNpcID = 20005,	--������ʼnpc 
		endNpcID = 20829,		--�������npc    
		preTaskData = {1312},	--����ǰ������û����nil
		nextTaskID = 1322,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1341,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.TYD,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 137000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 129 , x = 121, y = 34, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 129, x = 80, y = 91,npcID = 20829,},}, --Ѱ·������������ 
			},
		},
	},
	----------------------------------------------------��ϼɽ
	[1314] =	--��ϼɽ
	{

		name = "��������",	--��������
		startNpcID = 20820,	--������ʼnpc 
		endNpcID = 20006,		--�������npc   
		preTaskData = {1309},	--����ǰ������û����nil
		nextTaskID = 1315,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1344,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 136000,    --����
		},
		consume	=--��������û����{}
		{
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
				{type="deletePrivateNpc", ----------ɾ����˳
				param={
						npcs =
						{
							{npcID = 20820,	taskID = {1309}, index = 1},
						},
					},
				},
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 3, x = 28, y = 92,npcID = 20006,},}, --Ѱ·������
			},
		},
	},
	[1315] =	--��ϼɽ
	{

		name = "ѯ������",	--��������
		startNpcID = 20006,	--������ʼnpc 
		endNpcID = 20829,		--�������npc   
		preTaskData = {1314},	--����ǰ������û����nil
		nextTaskID = 1322,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1346,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.JXS,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 137000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 129 , x = 121, y = 34, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 129, x = 80, y = 91,npcID = 20829,},}, --Ѱ·������������ 
			},
		},
	},
	----------------------------------------------------������
	[1316] =	--������
	{

		name = "��������",	--��������
		startNpcID = 20820,	--������ʼnpc 
		endNpcID = 20007,		--�������npc  
		preTaskData = {1309},	--����ǰ������û����nil
		nextTaskID = 1317,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1349,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 136000,    --����
		},
		consume	=--��������û����{}
		{
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
				{type="deletePrivateNpc", ----------ɾ����˳
				param={
						npcs =
						{
							{npcID = 20820,	taskID = {1309}, index = 1},
						},
					},
				},
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 2, x = 84, y = 124,npcID = 20007,},}, --Ѱ·������
			},
		},
	},
	[1317] =	--������
	{

		name = "ѯ������",	--��������
		startNpcID = 20007,	--������ʼnpc 
		endNpcID = 20829,		--�������npc   
		preTaskData = {1316},	--����ǰ������û����nil
		nextTaskID = 1322,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1351,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.PLG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 137000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 129 , x = 121, y = 34, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 129, x = 80, y = 91,npcID = 20829,},}, --Ѱ·������������ 
			},
		},
	},
	----------------------------------------------------������
	[1318] =	--������
	{

		name = "��������",	--��������
		startNpcID = 20820,	--������ʼnpc 
		endNpcID = 20008,		--�������npc  
		preTaskData = {1309},	--����ǰ������û����nil
		nextTaskID = 1319,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1354,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 136000,    --����
		},
		consume	=--��������û����{}
		{
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
				{type="deletePrivateNpc", ----------ɾ����˳
				param={
						npcs =
						{
							{npcID = 20820,	taskID = {1309}, index = 1},
						},
					},
				},
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 6, x = 67, y = 133,npcID = 20008,},}, --Ѱ·������
			},
		},
	},
	[1319] =	--������
	{

		name = "ѯ������",	--��������
		startNpcID = 20008,	--������ʼnpc 
		endNpcID = 20829,		--�������npc    
		preTaskData = {1318},	--����ǰ������û����nil
		nextTaskID = 1322,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1356,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.ZYM,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 137000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 129 , x = 121, y = 34, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 129, x = 80, y = 91,npcID = 20829,},}, --Ѱ·������������ 
			},
		},
	},
	----------------------------------------------------������
	[1320] =	--������
	{

		name = "��������",	--��������
		startNpcID = 20820,	--������ʼnpc 
		endNpcID = 20009,		--�������npc    
		preTaskData = {1309},	--����ǰ������û����nil
		nextTaskID = 1321,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1359,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 136000,    --����
		},
		consume	=--��������û����{}
		{
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
				{type="deletePrivateNpc", ----------ɾ����˳
				param={
						npcs =
						{
							{npcID = 20820,	taskID = {1309}, index = 1},
						},
					},
				}
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 5, x = 44, y = 111,npcID = 20009,},}, --Ѱ·������
			},
		},
	},
	[1321] =	--������
	{

		name = "ѯ������",	--��������
		startNpcID = 20009,	--������ʼnpc 
		endNpcID = 20829,		--�������npc
		preTaskData = {1320},	--����ǰ������û����nil
		nextTaskID = 1322,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1361,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = SchoolType.YXG,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6000,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 137000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 129 , x = 121, y = 34, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
				{type="autoTrace", param = {tarMapID	= 129, x = 80, y = 91,npcID = 20829,},}, --Ѱ·������������ 
			},
		},
	},
	----------------------------------------------------�����ɽ���
	[1322] =	--����35-36
	{

		name = "�������",	--��������
		startNpcID = 20829,	--������ʼnpc 
		endNpcID = 20829,	--�������npc
		preTaskData = {condition = "or",{1311,1313,1315,1317,1319,1321}},		--����ǰ������û����nil
		nextTaskID = 1323,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1363,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 138000,    --����
		},
		consume	= {},--��������û����{}
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 129 , x = 80, y = 91, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1363},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1323] =	            --����35-36
	{
		
		name = "�ɼ�����",	--��������
		startNpcID = 20829,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1322},	--����ǰ������û����nil
		nextTaskID = 1324,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 139000,    --����
		},
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 10005,--�ɼ���ʵ��ID
					scriptID = 229 ,
					dialogID = 1364,
					npcsData =			--ˢ��npc����
					{
						{npcID = 20821, x = 46, y = 127,},--�ػ�����
					},	
				}
		},
		[2] = {type = "TgetItem", param = {itemID = 1041001, count = 1 ,bor = false},}--����Ŀ���ȡ��Ʒ
		}, 
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=      ---������״̬ 
			{
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="openDialog", param={dialogID = 1367},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1324}},--����������������һ������
			},
		},		
	},
	[1324] =	--����35-36
	{

		name = "�ٻ����",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1323},		--����ǰ������û����nil
		nextTaskID = 1325,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 140000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --ţħ
			{
				mineIndex = 1,		--��һ����
				scriptID = 230,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1368,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20822, x = 60, y = 166, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
				},
				posData = {mapID = 104, x = 60, y = 166}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
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
			{type="getItem", param = {itemID = 1041002, count = 1,}},			--���ָ����������Ʒ(������ƷID������)
			{type="openDialog", param={dialogID = 1370},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1325}},--����������������һ������
			},
		},
	},
	[1325] =	            --����35-36
	{
		
		name = "ʧ�����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1324},	--����ǰ������û����nil
		nextTaskID = 1339,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 141000,    --����
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 115, x = 65, y = 186, bor =	false},},-------����ָ������
		}, 
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=      ---������״̬ 
			{
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="openDialog", param={dialogID = 1371},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1339}},--����������������һ������
			},
			[TaskStatus.Finished]	=      ---�������״̬ 
			{
			}
	},
	},
	[1326] =	
	{

		name = "��֪����",	--��������
		startNpcID = 20829,	--������ʼnpc 
		endNpcID = 29030,		--�������npc    
		preTaskData = {1325},	--����ǰ������û����nil
		nextTaskID = 1327,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1378,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 142000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='TautoMeet',param = {mapID = 110 , x = 24, y = 171, bor = false},},---����һ�������Զ�����
			[2] = {type='Tscript',param = {scriptID	= 231,count = 1, bor = false},}, --��һ���ű�ս��(�ű�ս��ID 203������)
			[3] = {type='Tscript',param = {scriptID	= 232,count = 1, bor = true},}, --��һ���ű�ս��(�ű�ս��ID 203������)
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{"createMine",
					param =
					{
					{mapID = 110, scriptID = {231,232},fightMapID = nil,stepFactor = 0.2,mustCatch = false},
					}
			} --���������ף����һ��������һ�ŵ�ͼ�ϣ���Ҫ�����������ף������������׵�����£�д�������
			},
			[TaskStatus.Done]		=
			{
			{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			{type = "removeMine", param = {}}, -- �Ƴ�������
			{type="getItem", param = {itemID = 1041003, count = 1,}},			--���ָ����������Ʒ(������ƷID������)
			{type="createPrivateNpc", ----------����ѩ��ľ
					param={
						npcs =
						{
								[1] = {npcID = 20823,mapID = 110, x = 24, y = 171,dir = Direction.South,},
						},
					},
			},
			{type="openDialog", param={dialogID = 1376},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1327] =	--����35-36
	{

		name = "����ǿ��",	--��������
		startNpcID = 29030,	--������ʼnpc 
		endNpcID = 29030,		--�������npc
		preTaskData = {1326},		--����ǰ������û����nil
		nextTaskID = 1328,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1382,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 143000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --������
			{
				mineIndex = 1,		--��һ����
				scriptID = 233,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1380,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20824, x = 198, y = 47, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 20832, x = 201, y = 44, noDelete = true},
					{npcID = 20832, x = 195, y = 50, noDelete = true},
					{npcID = 20832, x = 195, y = 47, noDelete = true},
					{npcID = 20832, x = 198, y = 44, noDelete = true},
				},
				posData = {mapID = 110, x = 198, y = 47}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="deletePrivateNpc", ----------ɾ��ѩ��ľ
				param={
						npcs =
						{
							{npcID = 20823,	taskID = {1326}, index = 1},
						},
					},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 13, x = 96, y = 71,npcID = 29030,},}, --Ѱ·��֪����
			},
			[TaskStatus.Finished]	=
			{
			{type="getItem", param = {itemID = 1041004, count = 1,}},			--���ָ����������Ʒ(������ƷID������)
			}
		},
	},
	[1328] =	--����35-36
	{

		name = "�����ط�",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = 20829,		--�������npc
		preTaskData = {1327},		--����ǰ������û����nil
		nextTaskID = 1329,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1385,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 144000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			--[1] = {type='Tarea',param = {mapID = 129 , x = 121, y = 34, bor = false},},-------����ָ������
			[1] = {type = "TcommitItem", param = {taskID = 1328,itemsInfo = {{itemID = 1041001, count = 1},{itemID = 1041002, count = 1},{itemID = 1041003, count = 1},{itemID = 1041004, count = 1}} ,bor = true},}

		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				{type="CreateIntemDirect",param = {taskID = 1328,itemsInfo = {{itemID = 1041001, count = 1},{itemID = 1041002, count = 1},{itemID = 1041003, count = 1},{itemID = 1041004, count = 1}}}},
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1385},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1329] =	--����35-36
	{

		name = "���Ƴɹ�",	--��������
		startNpcID = 20829,	--������ʼnpc 
		endNpcID = 20829,		--�������npc
		preTaskData = {1328},		--����ǰ������û����nil
		nextTaskID = 1330,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1387,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 144000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 129 , x = 80, y = 91, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
				
			},
			[TaskStatus.Done]		=
			{
				{type="finishTask", param = {}},
			},
		},
	},
	[1330] =	--����35-36
	{

		name = "�Ƴ���ӡ",	--��������
		startNpcID = 20829,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1329},		--����ǰ������û����nil
		nextTaskID = 1331,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 146000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 10007,--�ɼ���ʵ��ID
					scriptID = 234,
					dialogID = 1389,
					npcsData =			--ˢ��npc����
					{
						{npcID = 20825, x = 64, y = 263,},--��������1
					},	
				}
		},
		[2] = {type='TcontactSeal',param = {sealID = 10007, bor = false},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1391},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1331}},--����������������һ������
			},
		},
	},
	[1331] =	--����35-36
	{

		name = "�Ƴ���ӡ",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1330},		--����ǰ������û����nil
		nextTaskID = 1332,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 147000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 10008,--�ɼ���ʵ��ID
					scriptID = 235,
					dialogID = 1392,
					npcsData =			--ˢ��npc����
					{
						{npcID = 20826, x = 58, y = 190,},--��������2
					},	
				}
		},
		[2] = {type='TcontactSeal',param = {sealID = 10008, bor = false},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1394},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1332}},--����������������һ������
			},
		},
	},
	[1332] =	--����35-36
	{

		name = "�Ƴ���ӡ",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1331},		--����ǰ������û����nil
		nextTaskID = 1333,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 148000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 10009,--�ɼ���ʵ��ID
					scriptID = 236,
					dialogID = 1395,
					npcsData =			--ˢ��npc����
					{
						{npcID = 20827, x = 113, y = 128,},--��������3
					},	
				}
		},
		[2] = {type='TcontactSeal',param = {sealID =10009, bor = false},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1397},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1333}},--����������������һ������
			},
		},
	},
	[1333] =	--����35-36
	{

		name = "�Ƴ���ӡ",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1332},		--����ǰ������û����nil
		nextTaskID = 1334,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 149000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 10010,--�ɼ���ʵ��ID
					scriptID = 237,
					dialogID = 1398,
					npcsData =			--ˢ��npc����
					{
						{npcID = 20828, x = 185, y = 71,},--��������4
					},	
				}
		},
		[2] = {type='TcontactSeal',param = {sealID =10010, bor = false},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1480},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1334}},--����������������һ������
			},
		},
	},
	[1334] =	--����35-36
	{

		name = "��£����",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = 20801,		--�������npc
		preTaskData = {1333},		--����ǰ������û����nil
		nextTaskID = 1335,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1481,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 150000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 116 , x = 154, y = 149, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateNpc", ----------��������
					param={
						npcs =
						{
								[1] = {npcID = 20801,mapID = 116, x = 154, y = 149,dir = Direction.EastSouth,},
						},
					},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1481},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1335] =	--����35-36
	{

		name = "��ս����",	--��������
		startNpcID = 20801,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1334},		--����ǰ������û����nil
		nextTaskID = 1336,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 151000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 238,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1484,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 20830, x = 120, y = 71,noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
				},
				posData = {mapID = 130, x = 120, y = 71}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
		},
		},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="deletePrivateNpc", ----------ɾ������
				param={
						npcs =
						{
							{npcID = 20801,	taskID = {1334}, index = 1},
						},
					},
			},
			{type="createFollow", param = {npcs = {20801},}},				--����ָ��npc����(����npcID)
			{type="createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 113, x =179, y =206, tarMapID = 116, tarX = 216, tarY = 40},
								[2] = {mapID = 116, x =228, y =135, tarMapID = 130, tarX = 127, tarY = 37},
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
								{taskID = 1335, index = 1},
								{taskID = 1335, index = 2},
							},
						},
			},
			{type="openDialog", param={dialogID = 1486},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1336}},--����������������һ������
			},
		},
	},
	[1336] =	--����35-36
	{

		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = 20049,		--�������npc
		preTaskData = {1335},		--����ǰ������û����nil
		nextTaskID = 1337,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1490,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 7000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3500,      --���ﾭ��
			[TaskRewardList.subMoney] = 152000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tmine',param =     --��׿
			{
				mineIndex = 1,		--��һ����
				scriptID = 239,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1487,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
				},
				posData = {mapID = 130, x = 114, y = 140}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
		},
		},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateNpc", ----------������׿�����׵�
					param={
						npcs =
						{
								[1] = {npcID = 20831,mapID = 130, x = 114, y = 145,dir = Direction.WastSouth,},
								[2] = {npcID = 20833,mapID = 130, x = 114, y = 140,dir = Direction.EastSouth,},
						},
					},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="deleteFollow", param = {npcs = {20801},}}, --�����״̬ɾ��ָ��ID��npc����
			{type="deletePrivateNpc", ----------ɾ����׿
				param={
						npcs =
						{
							{npcID = 20831,	taskID = {1336}, index = 1},
						},
					},
			},
			{type="openDialog", param={dialogID = 1489},}, --���������ʱ��һ���Ի���
			{type="createPrivateNpc", ----------��������
					param={
						npcs =
						{
								[1] = {npcID = 20801,mapID = 130, x = 119, y = 138,dir = Direction.WastSouth,},
						},
					},
			},
			{type="createPrivateTransfer", ------����˽�д�����
					param={
							transfers =
							{
								[1] = {mapID = 130, x =125, y =222, tarMapID = 10, tarX = 112, tarY = 196},
							},
						},
			},
			},
		},
	},
	[1337] =	--����35-36
	{

		name = "����Σ��",	--��������
		startNpcID = 20049,	--������ʼnpc 
		endNpcID = 20049,		--�������npc
		preTaskData = {1336},		--����ǰ������û����nil
		nextTaskID = 1338,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1492,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 153000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 46, y = 216, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="deletePrivateNpc", ----------ɾ�����������׵�
				param={
						npcs =
						{
							{npcID = 20833,	taskID = {1336}, index = 2},
							{npcID = 20801,	taskID = {1336}, index = 1},
						},
					},
			},
			{type="deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1336, index = 1},
							},
						},
			},
			},
			[TaskStatus.Done]		=
			{
			},
		},
	},
	[1338] =	--����35-36
	{

		name = "����ʦ��",	--��������
		startNpcID = 20049,	--������ʼnpc 
		endNpcID = 20002,		--�������npc
		preTaskData = {1337},		--����ǰ������û����nil
		nextTaskID = nil,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1493,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 154000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 218, bor =	false},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1493},},
			{type="finishTask", param = {recetiveTaskID =1401}},
			},
		},
	},
	[1339] =	--����35-36
	{

		name = "ѯ������",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = 20829,		--�������npc
		preTaskData = {1325},		--����ǰ������û����nil
		nextTaskID = 1326,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1372,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 3000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6100,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 1500,      --���ﾭ��
			[TaskRewardList.subMoney] = 154000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 129 , x = 80, y = 91, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			},
			[TaskStatus.Done]		=
			{
			{type="autoTrace", param = {tarMapID	= 129, x = 80, y = 91,npcID = 20829,},}, --Ѱ·������������ 
			},
		},
	},
----------------------����37-38--------------------------------------
[1401] =
	{
		name = "����֮��",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20049,	--�������npc
		preTaskData = {1338}, --ǰ������ID 
		nextTaskID = 1402,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1402,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 4000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 155000,    --����

		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 46, y = 216, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1402},},
				},
		},
	},
	[1402] =
	{
		name = "��ԯͼ����",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = 20701,	--�������npc
		preTaskData = {1401}, --ǰ������ID 
		nextTaskID = 1402,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1404,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 4000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 156000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 13 , x = 54, y = 145, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{

			[TaskStatus.Active] =
			{
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1404},},
				},
		},
	},
	[1403] =
	{
		name = "��ʰ�����е�",	--��������
		startNpcID = 20701,	--������ʼnpc
		endNpcID =20901,	--�������npc
		preTaskData = {1402},	--����ǰ������û����nil
		nextTaskID = 1403,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1408,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 10000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 157000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 301,
				dialogID = 1406,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20901,	x = 198, y = 140,noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20902,	x = 196, y = 142,noDelete = true},
					{npcID = 20902,	x = 196, y = 139,noDelete = true},
					{npcID = 20903,	x = 198, y = 142,noDelete = true},
					{npcID = 20903,	x = 198, y = 138,noDelete = true},
				},
					posData	= {mapID = 106,	x = 200, y = 140},
					bor = true,
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]	=
			{
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20901,	mapID =	106, x =198, y = 140,dir = Direction.EastSouth,},
					},
				},
			},
			{type="openDialog", param={dialogID = 1408},},
			},
		},
	},

	[1404] =
	{
		name = "�ݷ���ǫ",	--��������
		startNpcID = 20901,	--������ʼnpc
		endNpcID =20905,	--�������npc
		preTaskData = {1403},	--����ǰ������û����nil
		nextTaskID = 1405,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1412,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 10000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 158000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 302,
				dialogID = 1409,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20905,	x = 39, y = 171,noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20906,	x = 39, y = 173,noDelete = true},
					{npcID = 20906,	x = 37, y = 171,noDelete = true},
					{npcID = 20907,	x = 38, y = 169,noDelete = true},
					{npcID = 20907,	x = 41, y = 172,noDelete = true},
				},
					posData	= {mapID = 118,	x = 41, y = 169},
					bor = true,
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]	=
			{
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20905,	mapID =	118, x =39, y = 171,dir = Direction.EastSouth,},
					},
				},
			},
			{type="openDialog", param={dialogID = 1411},},
			{type="deletePrivateNpc", ----------ɾ��NPC
					param={
						npcs =
						{
                                                {npcID = 20901,	taskID = {1403}, index = 1},
	                                        },
					      },
			},
			},
		},
	},

	[1405] =
	{
		name = "����ĺ",	--��������
		startNpcID = 20905,	--������ʼnpc
		endNpcID =20908,	--�������npc
		preTaskData = {1404},	--����ǰ������û����nil
		nextTaskID = 1406,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1415,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 10000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 159000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 303,
				dialogID = 1413,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20908,	x = 160, y = 56,noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20906,	x = 162, y = 57,noDelete = true},
					{npcID = 20906,	x = 162, y = 55,noDelete = true},
					{npcID = 20907,	x = 160, y = 58,noDelete = true},
					{npcID = 20907,	x = 160, y = 54,noDelete = true},
				},
					posData	= {mapID = 118,	x = 158, y = 57},
					bor = true,
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]	=
			{
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20908,	mapID =	118, x =160, y = 56,dir = Direction.WastNorth,},
					},
				},
			},
			{type="openDialog", param={dialogID = 1415},},
			},
		},
	},

	[1406] =
	{
		name = "��ܲܲ�����",	--��������
		startNpcID = 20908,	--������ʼnpc
		endNpcID =20911,	--�������npc
		preTaskData = {1405},	--����ǰ������û����nil
		nextTaskID = 1425,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1472,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 10000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 160000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 304,
				dialogID = 1416,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20911,	x = 115, y = 206,noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20912,	x = 114, y = 208,noDelete = true},
					{npcID = 20912,	x = 116, y = 208,noDelete = true},
					{npcID = 20913,	x = 113, y = 206,noDelete = true},
					{npcID = 20913,	x = 117, y = 206,noDelete = true},
				},
					posData	= {mapID = 118,	x = 116, y = 204},
					bor = true,
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
				{type="deletePrivateNpc", ----------ɾ����˳
				param={
						npcs =
						{
							{npcID = 20820,	taskID = {1309}, index = 1},
						},
					},
				},
			},
			[TaskStatus.Done]	=
			{
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20313,mapID = 118, x = 149, y = 225,dir = Direction.West,},
					[2] = {npcID = 20911,mapID = 118, x = 115, y = 206,dir = Direction.South,},
					},
				},
			},
			{type="openDialog", param={dialogID = 1472},},
			{type="deletePrivateNpc", ----------ɾ��NPC
					param={
						npcs =
						{
                                                {npcID = 20908,	taskID = {1405}, index = 1},
	                                        },
					      },
			},
			},
		},
	},

	[1425] =
	{
		name = "����ܲ�",	--��������
		startNpcID = 20911,	--������ʼnpc
		endNpcID = 20313,	--�������npc
		preTaskData = {1406}, --ǰ������ID 
		nextTaskID = 1407,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1418,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 4000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 161000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 118 , x = 147, y = 223, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
				{type="deletePrivateNpc", 
				param={
						npcs =
						{
							{npcID = 20820,	taskID = {1309}, index = 1},
						},
					},
				},
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1418},},
				},
		},
	},

	[1407] =
	{
		name = "ѯ�ʳµ�",	--��������
		startNpcID = 20313,	--������ʼnpc
		endNpcID = 20905,	--�������npc
		preTaskData = {1425}, --ǰ������ID 
		nextTaskID = 1408,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1420,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 4000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2000,      --���ﾭ��
			[TaskRewardList.subMoney] = 162000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 118 , x = 41, y = 169, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1420},},
				},
		},
	},

	[1408] =
	{
		name = "̽Ѱ���]",	--��������
		startNpcID = 20905,	--������ʼnpc
		endNpcID =20914,	--�������npc
		preTaskData = {1407},	--����ǰ������û����nil
		nextTaskID = 1409,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1424,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 10000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 163000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 305,
				dialogID = 1422,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20914,	x = 91, y = 198,noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20915,	x = 90, y = 200,noDelete = true},
					{npcID = 20915,	x = 89, y = 199,noDelete = true},
					{npcID = 20916,	x = 92, y = 199,noDelete = true},
					{npcID = 20916,	x = 90, y = 197,noDelete = true},
				},
					posData	= {mapID = 118,	x = 92, y = 197},
					bor = true,
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]=
			{
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20914,mapID = 118, x = 91, y = 198,dir = Direction.South,},
					},
				},
			},
			{type="openDialog", param={dialogID = 1424},},
			},
		},
	},

	[1409] =
	{
		name = "����ͻ",	--��������
		startNpcID = 20914,	--������ʼnpc
		endNpcID =20917,	--�������npc
		preTaskData = {1408},	--����ǰ������û����nil
		nextTaskID = 1410,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1427,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 10000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 164000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 306,
				dialogID = 1425,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20917,	x = 200, y = 73,noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20918,	x = 197, y = 74,noDelete = true},
					{npcID = 20918,	x = 198, y = 71,noDelete = true},
					{npcID = 20919,	x = 198, y = 76,noDelete = true},
					{npcID = 20919,	x = 201, y = 70,noDelete = true},
				},
					posData	= {mapID = 119,	x = 202, y = 74},
					bor = true,
			},
			},
		},
		consume =--��������û����{}
		{
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]=
			{
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20917,mapID = 119, x = 200, y = 73,dir = Direction.South,},
					},
				},
			},
			{type="deletePrivateNpc", ----------ɾ��NPC
					param={
					npcs =
					{
						{npcID = 20914,	taskID = {1408}, index = 1},
	                                },
					},
					},
			{type="openDialog", param={dialogID = 1427},},
			},
		},
	},

	[1410] =
	{
		name = "�´���Ӫ",	--��������
		startNpcID = 20917,	--������ʼnpc
		endNpcID =nil,	--�������npc
		preTaskData = {1409},	--����ǰ������û����nil
		nextTaskID = 1411,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 10000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 165000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = false,
				scriptID= 307,
				dialogID = 1429,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20920,	x = 148, y = 134,noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20921,	x = 146, y = 136,noDelete = true},
					{npcID = 20921,	x = 146, y = 132,noDelete = true},
					{npcID = 20922,	x = 149, y = 137,noDelete = true},
					{npcID = 20922,	x = 149, y = 131,noDelete = true},
				},
					posData	= {mapID = 119,	x = 150, y = 134},
					bor = false,
			},
		},
			[2] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 2,
				lastMine = true,
				scriptID= 308,
				dialogID = 1431,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20923,	x = 78, y = 133,noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20921,	x = 76, y = 135,noDelete = true},
					{npcID = 20921,	x = 76, y = 131,noDelete = true},
					{npcID = 20924,	x = 79, y = 136,noDelete = true},
					{npcID = 20924,	x = 79, y = 130,noDelete = true},
				},
					posData	= {mapID = 119,	x = 80, y = 133},
					bor = true,
			},
		},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]=
			{
			{type="openDialog", param={dialogID = 1433},},
			{type="finishTask", param = {recetiveTaskID =1411}},
			},
		},
	},

	[1411] =
	{
		name = "նɱ���]",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID =nil,	--�������npc
		preTaskData = {1410},	--����ǰ������û����nil
		nextTaskID = 1424,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 10000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6200,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 166000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 309,
				dialogID = 1434,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20925,	x = 24, y = 160,noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20927,	x = 22, y = 158,noDelete = true},
					{npcID = 20927,	x = 22, y = 162,noDelete = true},
					{npcID = 20926,	x = 25, y = 163,noDelete = true},
					{npcID = 20926,	x = 25, y = 157,noDelete = true},
					},
					posData	= {mapID = 119,	x = 26, y = 160},
					bor = true,
			},
		},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]=
			{
			{type="openDialog", param={dialogID = 1473},},
			{type="finishTask", param = {recetiveTaskID =1424}},
			},
		},
	},

	[1424] =
	{
		name = "�ټ��ܲ�",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20313,	--�������npc
		preTaskData = {1411}, --ǰ������ID 
		nextTaskID = 1412,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1436,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 167000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 118, x = 149, y = 225, bor = true},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			},
			[TaskStatus.Done] =
			{
				{type="openDialog", param={dialogID = 1436},},
			},
		},
	},

	[1412] =
	{
		name = "������",	--��������
		startNpcID = 20313,	--������ʼnpc
		endNpcID = 20905,	--�������npc
		preTaskData = {1411}, --ǰ������ID 
		nextTaskID = 1413,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1439,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 168000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 118 , x = 41, y = 169, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20904,mapID = 118, x = 37, y = 169,dir = Direction.South,},
					},
				},
			},
			},
			[TaskStatus.Done] =
			{
				{type="openDialog", param={dialogID = 1438},},
				{type="getItem", param = {itemID = 1041009, count = 1,}},--�����Ʒ��ԯͼ
				{type="deletePrivateNpc", ----------ɾ��NPC
				param={
					npcs =
					{
						{npcID = 20313,	taskID = {1406}, index = 1},
						{npcID = 20911,	taskID = {1406}, index = 2},
	                                },
				},
				},
			},
		},
	},

	[1413] =
	{
		name = "ѯ��¬ֲ",	--��������
		startNpcID = 20705,	--������ʼnpc
		endNpcID = 20049,	--�������npc
		preTaskData = {1412}, --ǰ������ID 
		nextTaskID = 1414,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1441,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 169000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 46, y = 216, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{{"autoTrace", param = {tarMapID= 10 , x = 46, y = 216,npcID = 20049,},},},  --�Զ�Ѱ·
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1441},},
					{type="deletePrivateNpc", ----------ɾ��NPC
					param={
					npcs =
					{
						{npcID = 20905,	taskID = {1404}, index = 1},
						{npcID = 20904,	taskID = {1412}, index = 2},
	                                },
					},
					},
				},
		},
	},

	[1414] =
	{
		name = "Ѱ�����",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = 20944,	--�������npc
		preTaskData = {1413}, --ǰ������ID 
		nextTaskID = 1415,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1443,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 170000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 107 , x = 169, y = 107, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20944,mapID = 107, x = 171, y = 109,dir = Direction.West,},
					},
				},
			},
			{{type="autoTrace", param = {tarMapID= 107 , x = 169, y = 107,npcID = 20938,},},},  --�Զ�Ѱ·
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1443},},
				},
		},
	},

	[1415] =
	{
		name = "����ǿ��",	--��������
		startNpcID = 20944,	--������ʼnpc
		endNpcID =nil,	--�������npc
		preTaskData = {1414},	--����ǰ������û����nil
		nextTaskID = 1426,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 12000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 6000,      --���ﾭ��
			[TaskRewardList.subMoney] = 171000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 310,
				dialogID = 1445,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20930,	x = 82, y = 194,noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20931,	x = 82, y = 198,noDelete = true},
					{npcID = 20931,	x = 81, y = 191,noDelete = true},
					{npcID = 20932,	x = 80, y = 197,noDelete = true},
					{npcID = 20932,	x = 79, y = 194,noDelete = true},
				},
					posData	= {mapID = 107,	x = 87, y = 193},
					bor = true,
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]=
			{
			{type="getItem", param = {itemID = 1041010, count = 1,}},---------�����Ʒ�Ʊ�
			{type="finishTask", param = {recetiveTaskID =1426}},
			},
		},
	},

	[1426] =
	{
		name = "�������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20944,	--�������npc
		preTaskData = {1415}, --ǰ������ID 
		nextTaskID = nil,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1447,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 172000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type = "TcommitItem", param = {taskID = 1426,itemsInfo = {{itemID = 1041010, count = 1},},bor = true},}
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="CreateIntemDirect",param = {taskID = 1426,itemsInfo = {{itemID = 1041010, count = 1},},},},
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1447},},
				},
		},
	},

	[1416] =
	{
		name = "Ѱ�Ҳ���",	--��������
		startNpcID = 20944,	--������ʼnpc
		endNpcID = 20933,	--�������npc
		preTaskData = {1426}, --ǰ������ID 
		nextTaskID = 1417,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1450,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 173000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 185, y = 288, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="deletePrivateNpc", ----------ɾ��NPC
					param={
						npcs =
						{
                                                {npcID = 20944,	taskID = {1414}, index = 1},
	                                        },
					      },
			},
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20933,mapID = 10, x = 183, y = 287,dir = Direction.EastSouth,},
					[2] = {npcID = 20929,mapID = 107, x = 171, y = 109,dir = Direction.West,},
					},
				},
			},
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1450},},
				},
		},
	},

	[1417] =
	{
		name = "��������",	--��������
		startNpcID = 20933,	--������ʼnpc
		endNpcID = 29006,	--�������npc
		preTaskData = {1416}, --ǰ������ID 
		nextTaskID = 1418,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1452,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 174000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 10 , x = 145, y = 214, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1452},},
					{type="deletePrivateNpc", ----------ɾ��NPC
					param={
						npcs =
						{
                                                {npcID = 20933,	taskID = {1416}, index = 1},
	                                        },
					      },
					},
				},
		},
	},

	[1418] =
	{
		name = "��ز���",	--��������
		startNpcID = 29006,	--������ʼnpc
		endNpcID =nil,	--�������npc
		preTaskData = {1417},	--����ǰ������û����nil
		nextTaskID = 1419,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 175000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 311,
				dialogID = 1454,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20934,	x = 237, y = 88,noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20935,	x = 236, y = 86,noDelete = true},
					{npcID = 20935,	x = 238, y = 86,noDelete = true},
					{npcID = 20936,	x = 235, y = 88,noDelete = true},
					{npcID = 20936,	x = 239, y = 88,noDelete = true},
				},
					posData	= {mapID = 106,	x = 236, y = 91},
					bor = true,
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]=
			{
			{type="getItem", param = {itemID = 1041011, count = 1,}},--�����Ʒ����֮��
			{type="openDialog", param={dialogID = 1456},},
			{type="finishTask", param = {recetiveTaskID =1419}},
			},
		},
	},

	[1419] =
	{
		name = "���ϼ���",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID =nil,	--�������npc
		preTaskData = {1418},	--����ǰ������û����nil
		nextTaskID = 1420,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 176000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 312,
				dialogID = 1457,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20937,	x = 237, y = 75,noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20938,	x = 238, y = 78,noDelete = true},
					{npcID = 20938,	x = 234, y = 74,noDelete = true},
					{npcID = 20939,	x = 238, y = 71,noDelete = true},
					{npcID = 20939,	x = 241, y = 73,noDelete = true},
				},
					posData	= {mapID = 107,	x = 233, y = 78},
					bor = true,
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]=
			{
			{type="getItem", param = {itemID = 1041012, count = 1,}},--�����Ʒ����֮��
			{type="openDialog", param={dialogID = 1459},},
			{type="finishTask", param = {recetiveTaskID =1420}},
			},
		},
	},

	[1420] =
	{
		name = "������ͼ",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20049,	--�������npc
		preTaskData = {1419}, --ǰ������ID 
		nextTaskID = 1421,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1462,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 177000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type = "TcommitItem", param = {taskID = 1420,itemsInfo = {{itemID = 1041009, count = 1},{itemID = 1041011, count = 1},{itemID = 1041012, count = 1},} ,bor = true},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="CreateIntemDirect",param = {taskID = 1420,itemsInfo = {{itemID = 1041009, count = 1},{itemID = 1041011, count = 1},{itemID = 1041012, count = 1}}},},
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1460},},
				},
		},
	},

	[1421] =
	{
		name = "��������",	--��������
		startNpcID = 20929,	--������ʼnpc
		endNpcID = 20940,	--�������npc
		preTaskData = {1420},	--����ǰ������û����nil
		nextTaskID = 1422,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1465,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 178000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 313,
				dialogID = 1463,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20940,	x = 168, y = 195,noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 20941,	x = 167, y = 198,noDelete = true},
					{npcID = 20941,	x = 165, y = 196,noDelete = true},
					{npcID = 20942,	x = 169, y = 197,noDelete = true},
					{npcID = 20942,	x = 166, y = 194,noDelete = true},
				},
					posData	= {mapID = 119,	x = 170, y = 194},
					bor = true,
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]=
			{
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20940,mapID = 119, x = 168, y = 195,dir = Direction.South,},
					},
				},
			},
			{type="openDialog", param={dialogID = 1465},},
			},
		},
	},

	[1422] =
	{
		name = "��������",	--��������
		startNpcID = 20940,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1421},	--����ǰ������û����nil
		nextTaskID = 1423,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 179000,    --����
		},
		consume	=--��������û����{}
		{
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,
				lastMine = true,
				scriptID= 314,
				dialogID = 1467,        -------
				npcsData =			--ˢ��npc����
				{
					{npcID = 20943,	x = 94, y = 240,noDelete = true},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
				},
					posData	= {mapID = 119,	x = 95, y = 240},
					bor = true,
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]=
			{
			},
			[TaskStatus.Done]=
			{
			{type="getItem", param = {itemID = 1041013, count = 1,}},--�����Ʒ����֮��
			{type="deletePrivateNpc", ----------ɾ��NPC
					param={
						npcs =
						{
                        {npcID = 20940,	taskID = {1421}, index = 1},
	                    },
				   },
			},
			{type="finishTask", param = {recetiveTaskID =1423}},
			},
		},
	},

	[1423] =
	{
		name = "��ȳ�ɽ",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20929,	--�������npc
		preTaskData = {1422}, --ǰ������ID 
		nextTaskID = 1427,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1469,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 180000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type = "TcommitItem", param = {taskID = 1423,itemsInfo = {{itemID = 1041013, count = 1},} ,bor = true},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="CreateIntemDirect",param = {taskID = 1423,itemsInfo = {{itemID = 1041013, count = 1},}},},
			},
			[TaskStatus.Done] =
				{
					{type="openDialog", param={dialogID = 1469},},
				},
		},
	},

	[1427] =
	{
		name = "�ʵ�����",	--��������
		startNpcID = 20929,	--������ʼnpc
		endNpcID = 20929,	--�������npc
		preTaskData = {1423}, --ǰ������ID 
		nextTaskID = 1501,	--�����������û����nil
		startDialogID =	nil,	--
		endDialogID = 1471,	--
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6300,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 181000,    --����
		},
		consume =
		{
		},
		targets =
		{
		[1] = {type='Tarea',param = {mapID = 131, x = 36, y = 49, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
			{
			{type="createPrivateNpc", ----------����˽��npc
				param={
					npcs =
					{
					[1] = {npcID = 20999,	mapID =	131, x =36, y = 52,dir = Direction.East,},
					[2] = {npcID = 20945,	mapID =	131, x =34, y = 50,dir = Direction.East,},
					},
				},
			},
			},
			[TaskStatus.Done] =
				{
				{type="deletePrivateNpc", ----------ɾ��NPC
					param={
						npcs =
						{
						{npcID = 20929,	taskID = {1416}, index = 1},
						{npcID = 20945,	taskID = {1427}, index = 2},
						{npcID = 20999,	taskID = {1427}, index = 3},
	                                        },
					      },
				},
				{type="createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
						[1] = {npcID = 21000,	mapID =	131, x =36, y = 52,dir = Direction.South,},
						},
						},
				},
				{type="openDialog", param={dialogID = 1471},},
				},
		},
	},
----------------------����39-40--------------------------------------
	[1501] =
	{
		name = "���˺���",	--��������
		startNpcID = 21000,	--������ʼnpc 
		endNpcID = 20002,		--�������npc
		preTaskData = {1427},		--����ǰ������û����nil
		nextTaskID = 1502,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1503,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 182000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tarea',param = {mapID = 8 , x = 134, y = 219, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="createPrivateTransfer",
				param={
					transfers =
						{
						{mapID = 131, x =35, y =10, tarMapID = 10, tarX =43, tarY = 200},--����һ��˽�д�����
						},
					},
			},
			{type="autoTrace", param = {tarMapID	= 8, x = 134, y = 219,npcID = 20002,},}, --Ѱ·����ʦ
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1503},}, --���������ʱ��һ���Ի���
			},
		},
	},
		[1502] =
	{
		name = "��������",	--��������
		startNpcID = 20002,	--������ʼnpc 
		endNpcID = 20049,		--�������npc
		preTaskData = {1501},		--����ǰ������û����nil
		nextTaskID = 1503,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1506,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 183000,    --����
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
			{
			{type="autoTrace", param = {tarMapID	= 10, x = 46, y = 216,npcID = 20049,},}, --Ѱ·��¬ֲ
			},
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer", ------ɾ��˽�д�����
				param={
					transfers =
						{
							{taskID = 1501, index = 1},
						},
					},
			},
			{type="openDialog", param={dialogID = 1506},}, --���������ʱ��һ���Ի���
			},
		},
	},
		[1503] =
	{

		name = "�뷼����",	--��������
		startNpcID = 20049,	--������ʼnpc 
		endNpcID = 21032,		--�������npc
		preTaskData = {1502},		--����ǰ������û����nil
		nextTaskID = 1504,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1511,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 17000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 8500,      --���ﾭ��
			[TaskRewardList.subMoney] = 184000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tscript',param = {scriptID	= 401 ,	count =	1, ignoreResult = true,bor = true},}, --��һ���ű�ս��(�ű�ս��ID 100 ����)	
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", ----------��������
				param={
						npcs = 
						{
							[1] = {npcID = 21001, mapID = 10,x = 185,y = 311,dir = Direction.EastSouth,}, --����
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
							{npcID = 21001,	taskID = {1503}, index = 1}, --ɾ������
						},
					},
				},
			 {type="createPrivateNpc", ----------��������
				param={
						npcs = 
						{
							[1] = {npcID = 21032, mapID = 10,x = 185,y = 311,dir = Direction.EastSouth,}, --����
					},
				},
			},
			{type="openDialog", param={dialogID = 1510},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1504] =
	{

		name = "ʧȥ����",	--��������
		startNpcID = 21032,	--������ʼnpc 
		endNpcID = 21002,		--�������npc
		preTaskData = {1503},		--����ǰ������û����nil
		nextTaskID = 1505,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1515,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 17000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 8500,      --���ﾭ��
			[TaskRewardList.subMoney] = 185000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --�뷼
			{
				mineIndex = 1,		--��һ����
				scriptID = 402,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1512,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 21002, x = 86, y = 191, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21020, x = 84, y = 190, noDelete = true,},
					{npcID = 21020, x = 86, y = 193, noDelete = true,},
				},
				posData = {mapID = 104, x = 86, y = 191}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="autoTrace", param = {tarMapID	= 104, x = 86, y = 191,npcID = 21002,},}, --Ѱ·���뷼
			},
			[TaskStatus.Done]		=
			{
			 {type="createPrivateNpc", ----------�����뷼
				param={
						npcs = 
						{
							[1] = {npcID = 21002, mapID = 104,x = 86,y = 191,dir = Direction.WestSouth,}, --����
					},
				},
			},
			{type="openDialog", param={dialogID = 1514},}, --���������ʱ��һ���Ի���
			{type="deletePrivateNpc", 
				param={
						npcs = 
						{
							{npcID = 21032,	taskID = {1503}, index = 1}, --ɾ������
						},
					},
				},
			},
		},
	},
	[1505] =
	{

		name = "�޻����",	--��������
		startNpcID = 21002,	--������ʼnpc 
		endNpcID = 20049,		--�������npc
		preTaskData = {1504},		--����ǰ������û����nil
		nextTaskID = 1506,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1516,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 186000,    --����
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
			{
			{type="autoTrace", param = {tarMapID	= 10, x = 46, y = 216,npcID = 20049,},}, --Ѱ·��¬ֲ
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1516},}, --���������ʱ��һ���Ի���
			{type="deletePrivateNpc", 
				param={
						npcs = 
						{
							{npcID = 21002,	taskID = {1504}, index = 1}, --ɾ���뷼
						},
					},
				},
			},
		},
	},
	[1506] =
	{

		name = "�Զ��ʧ",	--��������
		startNpcID = 20049,	--������ʼnpc 
		endNpcID = 29030,		--�������npc
		preTaskData = {1505},		--����ǰ������û����nil
		nextTaskID = 1507,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1518,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 187000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 13 , x = 96, y = 71, bor = true},},-------����ָ������
			
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1518},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1507] =
	{

		name = "��սħ��",	--��������
		startNpcID = 29030,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1506},		--����ǰ������û����nil
		nextTaskID = 1508,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 17000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 8500,      --���ﾭ��
			[TaskRewardList.subMoney] = 188000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 403,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1521,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{
					{npcID = 21004, x = 197, y = 48, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21021, x = 194, y = 48, noDelete = true,},
					{npcID = 21021, x = 194, y = 51, noDelete = true,},
				},
				posData = {mapID = 110, x = 197, y = 48}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{},
			[TaskStatus.Done]		=
			{
			{type="finishTask", param = {recetiveTaskID = 1508}},
			},
		},
	},
	[1508] =
	{

		name = "��ԭ֮��",	--��������
		startNpcID =29030,	--������ʼnpc 
		endNpcID = 29030,		--�������npc
		preTaskData = {1507},		--����ǰ������û����nil
		nextTaskID = 1509,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1523,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 189000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tarea',param = {mapID = 13 , x = 96, y = 71, bor = true},},-------����ָ������
			
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1523},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1509] =
	{

		name = "�ռ�����",	--��������
		startNpcID = 29030,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1508},		--����ǰ������û����nil
		nextTaskID = 1510,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 17000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 8500,      --���ﾭ��
			[TaskRewardList.subMoney] = 190000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		[1] = {type='Tmine',param =     --��ɽ����
			{
				mineIndex = 1,		--��һ����
				scriptID = 404,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1526,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{},
				posData = {mapID = 115, x = 48, y = 137}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", ----------������ɽ����
				param={
						npcs = 
						{
							[1] = {npcID = 21005, mapID = 115,x = 48,y = 137,dir = Direction.South,}, --��ɽ����
					},
				},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="getItem", param = {itemID = 1041008, count = 1,}},			--���ָ����������Ʒ(������ƷID������)
			{type="openDialog", param={dialogID = 1528},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1510}},
			},
		},
	},
	[1510] =
	{

		name = "�ռ�����",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1509},		--����ǰ������û����nil
		nextTaskID = 1511,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 17000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 8500,      --���ﾭ��
			[TaskRewardList.subMoney] = 191000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		  [1] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 10001,--�ɼ���ʵ��ID
					scriptID= 405,
					dialogID = 1529,
					npcsData =			--ˢ��npc����
					{
						{npcID = 21006, x = 52, y = 234,},
						{npcID = 21022, x = 51, y = 231,},
						{npcID = 21022, x = 55, y = 234,},
						{npcID = 21023, x = 55, y = 227,},
						{npcID = 21023, x = 59, y = 231,},
					},
						
				}
			},
		  [2] = {type = "TgetItem", param = {itemID = 1041005, count = 1 ,bor = false},}--����Ŀ���ȡ��Ʒ
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1531},}, --���������ʱ��һ���Ի���
			{type="deletePrivateNpc", 
				param={
						npcs = 
						{
							{npcID = 21005,	taskID = {1509}, index = 1}, --ɾ����ɽ����
						},
					},
				},
			{type="finishTask", param = {recetiveTaskID = 1511}},
			},
		},
	},
	[1511] =
	{

		name = "������ԭ",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = 29030,		--�������npc
		preTaskData = {1510},		--����ǰ������û����nil
		nextTaskID = 1512,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1534,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6400,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 2500,      --���ﾭ��
			[TaskRewardList.subMoney] = 192000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	          [1] = {type = "TcommitItem", param = {taskID = 1511,itemsInfo = {{itemID = 1041005, count = 1},{itemID = 1041008, count = 1},} ,bor = true},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="CreateIntemDirect",param = {taskID = 1511,itemsInfo = {{itemID = 1041005, count = 1},{itemID = 1041008, count = 1},},},},
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1534},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1512] =
	{

		name = "�������",	--��������
		startNpcID = 29030,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1511},		--����ǰ������û����nil
		nextTaskID = 1513,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 6000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 193000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	         [1] = {type='Tarea',param = {mapID = 109 , x = 87, y = 289, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", ----------�������ʬ��
				param={
						npcs = 
						{
							[1] = {npcID = 21009, mapID = 109,x = 87,y = 289,dir = Direction.WestSouth,}, --���
					},
				},
			},
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1536},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1513}},
			},
		},
	},
	[1513] =
	{

		name = "�ػ�����",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = 29030,		--�������npc
		preTaskData = {1512},		--����ǰ������û����nil
		nextTaskID = 1514,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1537,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 6000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 194000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	       [1] = {type='Tarea',param = {mapID = 13 , x = 96, y = 71, bor = true},},-------����ָ������
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1537},}, --���������ʱ��һ���Ի���
			{type="deletePrivateNpc", 
				param={
						npcs = 
						{
							{npcID = 21009,	taskID = {1512}, index = 1}, --ɾ�����ʬ��
						},
					},
				},
			},
		},
	},
	[1514] =
	{

		name = "�ռ�ˮ��",	--��������
		startNpcID = 29030,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1513},		--����ǰ������û����nil
		nextTaskID = 1515,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 195000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	     [1] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 10002,--�ɼ���ʵ��ID
					scriptID= 406,
					dialogID = 1540,
					npcsData =			--ˢ��npc����
					{
						{npcID = 21007, x = 173, y = 188,},
						{npcID = 21024, x = 172, y = 186,},
						{npcID = 21024, x = 173, y = 191,},
						{npcID = 21025, x = 169, y = 187,},
						{npcID = 21025, x = 170, y = 194,},
					},
						
				}
			},
		  [2] = {type = "TgetItem", param = {itemID = 1041006, count = 1 ,bor = false},}--����Ŀ���ȡ��Ʒ
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1542},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1515}},
			},
		},
	},
	[1515] =
	{

		name = "�ռ�ҩ��",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = nil,		--�������npc
		preTaskData = {1514},		--����ǰ������û����nil
		nextTaskID = 1516,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 196000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
          [1] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 10003,--�ɼ���ʵ��ID
					scriptID= 407,
					dialogID = 1543,
					npcsData =			--ˢ��npc����
					{
						{npcID = 21008, x = 53, y = 143,},
						{npcID = 21026, x = 49, y = 144,},
						{npcID = 21026, x = 54, y = 146,},
					},
						
				}
			},
		  [2] = {type = "TgetItem", param = {itemID = 1041007, count = 1 ,bor = false},}--����Ŀ���ȡ��Ʒ
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1545},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1516}},
			},
		},
	},
	[1516] =
	{

		name = "�ٻ�����",	--��������
		startNpcID = nil,	--������ʼnpc 
		endNpcID = 29030,		--�������npc
		preTaskData = {1515},		--����ǰ������û����nil
		nextTaskID = 1517,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1576,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 6000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 3000,      --���ﾭ��
			[TaskRewardList.subMoney] = 197000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	         [1] = {type = "TcommitItem", param = {taskID = 1516,itemsInfo = {{itemID = 1041006, count = 1},{itemID = 1041007, count = 1},} ,bor = true},},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			{type="CreateIntemDirect",param = {taskID = 1516,itemsInfo = {{itemID = 1041006, count = 1},{itemID = 1041007, count = 1},},},},
			},
			[TaskStatus.Done]		=
			{
			{type="openDialog", param={dialogID = 1576},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1517}},
			},
		},
	},
	[1517] =
	{

		name = "��������",	--��������
		startNpcID = 29030,	--������ʼnpc 
		endNpcID = 21033,		--�������npc
		preTaskData = {1516},		--����ǰ������û����nil
		nextTaskID = 1518,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1550,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 198000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	      [1] = {type='Tscript',param = {scriptID = 408 ,count =1, ignoreResult = true,bor = true},}, --��һ���ű�ս��(�ű�ս��ID 100 ����)
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", ----------�����������
				param={
						npcs = 
						{
							[1] = {npcID = 21010, mapID = 13,x = 48,y = 99,dir = Direction.EastSouth,}, --�������
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
							{npcID = 21010,	taskID = {1517}, index = 1}, --ɾ���������
						},
					},
				},
			{type="createPrivateNpc", ----------�����������
				param={
						npcs = 
						{
							[1] = {npcID = 21033, mapID = 13,x = 48,y = 99,dir = Direction.EastSouth,}, --�������
					},
				},
			},
			{type="openDialog", param={dialogID = 1550},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1518] =
	{

		name = "ǧ���Χ",	--��������
		startNpcID = 21033,	--������ʼnpc 
		endNpcID = 21034,		--�������npc
		preTaskData = {1517},		--����ǰ������û����nil
		nextTaskID = 1519,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1553,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 199000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	      [1] = {type='Tmine',param =     --����
			{
				mineIndex = 1,		--��һ����
				scriptID = 409,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1551,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{},
				posData = {mapID = 120, x = 221, y = 53}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", ----------�����������
				param={
						npcs = 
						{
							[1] = {npcID = 21011, mapID = 120,x = 221,y = 53,dir = Direction.WestSouth,}, --����
							[2] = {npcID = 21027, mapID = 120,x = 219,y = 56,dir = Direction.WestSouth,}, 
							[3] = {npcID = 21040, mapID = 120,x = 223,y = 54,dir = Direction.WestSouth,}, 
							[4] = {npcID = 21028, mapID = 120,x = 220,y = 60,dir = Direction.WestSouth,}, 
							[5] = {npcID = 21041, mapID = 120,x = 223,y = 58,dir = Direction.WestNorth,}, 
							[6] = {npcID = 21034, mapID = 120,x = 221,y = 57,dir = Direction.WestSouth,}, --���
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
							{npcID = 21011,	taskID = {1518}, index = 1}, 
							{npcID = 21027,	taskID = {1518}, index = 1}, 
							{npcID = 21040,	taskID = {1518}, index = 1}, 
							{npcID = 21028,	taskID = {1518}, index = 1}, 
							{npcID = 21041,	taskID = {1518}, index = 1}, 
							{npcID = 21033,	taskID = {1517}, index = 1}, 
						},
					},
				},
			{type="openDialog", param={dialogID = 1553},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1519] =
	{

		name = "��Ⱥ���",	--��������
		startNpcID = 21034,	--������ʼnpc 
		endNpcID = 21013,		--�������npc
		preTaskData = {1518},		--����ǰ������û����nil
		nextTaskID = 1520,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1556,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 200000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	      [1] = {type='Tmine',param =     --��˶
			{
				mineIndex = 1,		--��һ����
				scriptID = 410,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1554,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{},
				posData = {mapID = 120, x = 229, y = 101}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", ----------�����������
				param={
						npcs = 
						{
							[1] = {npcID = 21012, mapID = 120,x = 229,y = 101,dir = Direction.WestSouth,}, --����
							[2] = {npcID = 21027, mapID = 120,x = 228,y = 105,dir = Direction.EastSouth,}, 
							[3] = {npcID = 21040, mapID = 120,x = 234,y = 103,dir = Direction.WestNorth,}, 
							[4] = {npcID = 21028, mapID = 120,x = 231,y = 102,dir = Direction.WestSouth,}, 
							[5] = {npcID = 21041, mapID = 120,x = 231,y = 106,dir = Direction.WestSouth,}, 
							[6] = {npcID = 21013, mapID = 120,x = 231,y = 104,dir = Direction.WestSouth,}, --����
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
							{npcID = 21012,	taskID = {1519}, index = 1}, 
							{npcID = 21027,	taskID = {1519}, index = 1}, 
							{npcID = 21040,	taskID = {1519}, index = 1}, 
							{npcID = 21028,	taskID = {1519}, index = 1}, 
							{npcID = 21041,	taskID = {1519}, index = 1}, 
							{npcID = 21034,	taskID = {1518}, index = 1}, 
						},
					},
				},
			{type="openDialog", param={dialogID = 1556},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1520] =
	{

		name = "�����ï",	--��������
		startNpcID = 21013,	--������ʼnpc 
		endNpcID = 21035,		--�������npc
		preTaskData = {1519},		--����ǰ������û����nil
		nextTaskID = 1521,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1560,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 201000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	      [1] = {type='Tmine',param =     --�¾�
			{
				mineIndex = 1,		--��һ����
				scriptID = 411,
				lastMine = true,	--�Ƿ�Ϊ���һ����
				dialogID = 1557,    --���������򿪵ĶԻ���
				npcsData =			--ˢ��npc����
				{},
				posData = {mapID = 120, x = 114, y = 220}, --��������
				bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", ----------�����������
				param={
						npcs = 
						{
							[1] = {npcID = 21014, mapID = 120,x = 114,y = 220,dir = Direction.South,}, --�¾�
							[2] = {npcID = 21027, mapID = 120,x = 110,y = 222,dir = Direction.EastNorth,}, 
							[3] = {npcID = 21040, mapID = 120,x = 113,y = 223,dir = Direction.WestNorth,}, 
							[4] = {npcID = 21028, mapID = 120,x = 108,y = 224,dir = Direction.EastSouth,}, 
							[5] = {npcID = 21041, mapID = 120,x = 110,y = 226,dir = Direction.WestSouth,}, 
							[6] = {npcID = 21015, mapID = 120,x = 111,y = 223,dir = Direction.South,}, --��ï
							[7] = {npcID = 21035, mapID = 120,x = 221,y = 57,dir = Direction.South,}, --���	
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
							{npcID = 21014,	taskID = {1520}, index = 1}, 
							{npcID = 21027,	taskID = {1520}, index = 1}, 
							{npcID = 21040,	taskID = {1520}, index = 1}, 
							{npcID = 21028,	taskID = {1520}, index = 1}, 
							{npcID = 21041,	taskID = {1520}, index = 1}, 
							{npcID = 21013,	taskID = {1519}, index = 1}, 
						},
					},
				},
			{type="openDialog", param={dialogID = 1559},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1521] =
	{

		name = "��������",	--��������
		startNpcID = 21035,	--������ʼnpc 
		endNpcID = 21036,		--�������npc
		preTaskData = {1520},		--����ǰ������û����nil
		nextTaskID = 1522,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1565,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 202000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	      [1] = {type='Tscript',param = {scriptID = 412 ,count =1, ignoreResult = true,bor = true},}, --��һ���ű�ս��(�ű�ս��ID 100 ����)
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", 
				param={
						npcs = 
						{
							[1] = {npcID = 21016, mapID = 14,x = 105,y = 44,dir = Direction.WestSouth,}, --�շ�
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
							{npcID = 21016,	taskID = {1521}, index = 1}, 
							{npcID = 21015,	taskID = {1520}, index = 1}, 
							{npcID = 21035,	taskID = {1520}, index = 1}, 
						},
					},
				},
			 {type="createPrivateNpc", 
				param={
						npcs = 
						{
							[1] = {npcID = 21036, mapID = 14,x = 105,y = 44,dir = Direction.WestSouth,}, --�շ�
					},
				},
			},
			{type="openDialog", param={dialogID = 1564},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1522] =
	{

		name = "��ܸ���",	--��������
		startNpcID = 21036,	--������ʼnpc 
		endNpcID = 21037,		--�������npc
		preTaskData = {1521},		--����ǰ������û����nil
		nextTaskID = 1523,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1568,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 203000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	      [1] = {type='Tscript',param = {scriptID = 413 ,count =1, ignoreResult = true,bor = true},}, --��һ���ű�ս��(�ű�ս��ID 100 ����)
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", 
				param={
						npcs = 
						{
							[1] = {npcID = 21017, mapID = 14,x = 102,y = 77,dir = Direction.WestSouth,}, --����
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
							{npcID = 21036,	taskID = {1521}, index = 1}, 
							{npcID = 21017,	taskID = {1522}, index = 1},  
						},
					},
				},
			 {type="createPrivateNpc", 
				param={
						npcs = 
						{
							[1] = {npcID = 21037, mapID = 14,x = 102,y = 77,dir = Direction.WestSouth,}, --����
					},
				},
			},
			{type="openDialog", param={dialogID = 1568},}, --���������ʱ��һ���Ի���
			},
		},
	},
	[1523] =
	{

		name = "���ܲ���",	--��������
		startNpcID = 21037,	--������ʼnpc 
		endNpcID = 21038,		--�������npc
		preTaskData = {1522},		--����ǰ������û����nil
		nextTaskID = 1524,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1572,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 204000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	      [1] = {type='Tscript',param = {scriptID = 414 ,count =1, ignoreResult = true,bor = true},}, --��һ���ű�ս��(�ű�ս��ID 100 ����)
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", 
				param={
						npcs = 
						{
							[1] = {npcID = 21018, mapID = 14,x = 124,y =110,dir = Direction.WestSouth,}, --����
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
							{npcID = 21037,	taskID = {1522}, index = 1}, 
							{npcID = 21018,	taskID = {1523}, index = 1},  
						},
					},
				},
			 {type="createPrivateNpc", 
				param={
						npcs = 
						{
							[1] = {npcID = 21038, mapID = 14,x = 124,y = 110,dir = Direction.WestSouth,}, --����
					},
				},
			},
			{type="openDialog", param={dialogID = 1571},}, --���������ʱ��һ���Ի���
			},
		},
	},
[1524] =
	{

		name = "���ʲ��",	--��������
		startNpcID = 21038,	--������ʼnpc 
		endNpcID = 21039,		--�������npc
		preTaskData = {1523},		--����ǰ������û����nil
		nextTaskID = 1524,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID =1575,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 11000,   --��Ҿ���
			[TaskRewardList.player_pot] = 6500,  	--����Ǳ��
			[TaskRewardList.pet_xp] = 5500,      --���ﾭ��
			[TaskRewardList.subMoney] = 205000,    --����
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
	      [1] = {type='Tscript',param = {scriptID = 415 ,count =1, ignoreResult = true,bor = true},}, --��һ���ű�ս��(�ű�ս��ID 100 ����)
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active]		=
			{
			 {type="createPrivateNpc", 
				param={
						npcs = 
						{
							[1] = {npcID = 21019, mapID = 14,x = 77,y =134,dir = Direction.WestSouth,}, --���
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
							{npcID = 21038,	taskID = {1523}, index = 1}, 
							{npcID = 21019,	taskID = {1524}, index = 1},  
						},
					},
				},
			 {type="createPrivateNpc", 
				param={
						npcs = 
						{
							[1] = {npcID = 21039, mapID = 14,x = 77,y = 134,dir = Direction.WestSouth,}, --���
					},
				},
			},
			{type="openDialog", param={dialogID = 1575},}, --���������ʱ��һ���Ի���
			},
		},
	},




 




----------------------------------------------------------------------------------------------------------------
	
}

table.copy(MainTaskDB36_40, NormalTaskDB)