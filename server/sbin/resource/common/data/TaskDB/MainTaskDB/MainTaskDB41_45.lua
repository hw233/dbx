--[[MainTaskDB41_45.lua
	��������41��45��(����ϵͳ)
]]

MainTaskDB41_45 = 
{
----------------------����41-42--------------------------------------	
	[1601] =	            --[[Ѱ��Ԭ��--]]
	{
		
		name = "Ѱ��Ԭ��",	--��������
		startNpcID = 21039,	--������ʼnpc
		endNpcID = 21106,	--�������npc
		preTaskData = {1524},	--����ǰ������û����nil
		nextTaskID = 1602,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1608,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --�����ؽ�
			{
				mineIndex = 1,		--��һ����
				scriptID = 451,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1602,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21103, x = 126, y = 40, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21101, x = 123, y = 40, noDelete = true},
					{npcID = 21101, x = 126, y = 43, noDelete = true},
					{npcID = 21102, x = 120, y = 41, noDelete = true},
					{npcID = 21102, x = 124, y = 46, noDelete = true},
				},
				posData = {mapID = 409, x = 126, y = 40}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			      },
	                [2] = {type='Tmine',param =     --��������
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 452,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1604,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21104, x = 111, y = 86, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21101, x = 116, y = 83, noDelete = true},
					{npcID = 21101, x = 109, y = 90, noDelete = true},
					{npcID = 21102, x = 112, y = 90, noDelete = true},
					{npcID = 21102, x = 116, y = 86, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 409, x = 111, y = 86}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			      },
                        [3] = {type='Tmine',param =     --���
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 453,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1606,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 409, x = 155, y = 117}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			      },
	       },		
		triggers = --���񴥷���
		{
		    [TaskStatus.Active]		=      ---������״̬
		        {
			{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 120, x = 168, y = 82, tarMapID = 409, tarX = 140, tarY = 26},--����˽�д������ġ�����
							},
					      },
			},
			{type="createPrivateNpc", ----------�������
					param={
						npcs =
						{
								[1] = {npcID = 21105,mapID = 409, x = 155, y = 117,dir = Direction.WestSouth,},
						},
					      },
			},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="deletePrivateNpc", ----------ɾ�����
				param={
						npcs =
						{
							{npcID = 21039, taskID = {1528}, index = 1}, --ɾ�����
						},
				       },
			},
			{type="deletePrivateNpc", ----------ɾ�����
				param={
						npcs =
						{
							{npcID = 21105, taskID = {1601}, index = 1}, --ɾ�����
						},
				       },
			},
			{type="createPrivateNpc", ----------����������Ի����
					param={
						npcs =
						{
								[1] = {npcID = 21106,mapID = 409, x = 155, y = 117,dir = Direction.WestSouth,},
						},
					     },
			},
			{type="openDialog", param={dialogID = 1608},}, --������Ŀ�����ʱ��һ���Ի���
			}, 
	        },
	},
        [1602] =	            
	{
		
		name = "��սԬ��",	--��������
		startNpcID = 21106,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1601},	--����ǰ������û����nil
		nextTaskID = 1603,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --ԬӪУξ
			{
				mineIndex = 1,		--��һ����
				scriptID = 454,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1610,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21109, x = 219, y = 154, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21107, x = 215, y = 151, noDelete = true},
					{npcID = 21107, x = 223, y = 151, noDelete = true},
					{npcID = 21108, x = 215, y = 156, noDelete = true},
					{npcID = 21108, x = 223, y = 156, noDelete = true},
				},
				posData = {mapID = 409, x = 219, y = 154}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			     },
	                [2] = {type='Tmine',param =     --��������
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 455,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1612,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21110, x = 131, y = 169, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21107, x = 129, y = 172, noDelete = true},
					{npcID = 21107, x = 129, y = 166, noDelete = true},
					{npcID = 21108, x = 125, y = 166, noDelete = true},
					{npcID = 21108, x = 125, y = 172, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 409, x = 131, y = 169}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			     },
                        [3] = {type='Tmine',param =     --Ԭ��
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 456,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1614,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 409, x = 41, y = 141}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			      },
	       },		
		triggers = --���񴥷���
		{
		    [TaskStatus.Active] =
				{
                        {type="createPrivateNpc", ----------����Ԭ��
					param={
						npcs =
						{
								[1] = {npcID = 21111,mapID = 409, x = 41, y = 141,dir = Direction.WestSouth,}, --Ԭ��
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
						     {npcID = 21106, taskID = {1601}, index = 1}, --ɾ��������Ի����
							 {npcID = 21111, taskID = {1602}, index = 1}, --ɾ��Ԭ��
						},
					},
			},
			{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1601, index = 1},--ɾ��˽�д������ġ�����
							},
						},
			},
                        {type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 409, x = 101, y = 199, tarMapID = 120, tarX = 168, tarY = 82},--����˽�д��������-����
							},
					      },
			},
			{type="openDialog", param={dialogID = 1616},}, --���������ʱ��һ���Ի���
			{type="finishTask", param = {recetiveTaskID = 1603}},
			},
	        },
	},
        [1603] =
	{
		name = "��������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20002,	--�������npc
		preTaskData = {1602}, --ǰ������ID 
		nextTaskID = 1604,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1617,	--������Ի�IDû����nil
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
		[1] = {type='Tarea',param = {mapID = 8, x = 134, y = 219, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] =
				{
				},
				[TaskStatus.Done] =
				{
				{type="openDialog", param={dialogID = 1617},},--������Ŀ�����ʱ��һ���Ի���
			    {type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1602, index = 1},--ɾ��˽�д��������-����
							},
					    },
				     },
				},
	     },
	},
        [1604] =
	{
		name = "ǰ������",	--��������
		startNpcID = 20002,	--������ʼnpc
		endNpcID = 20049,	--�������npc
		preTaskData = {1603}, --ǰ������ID 
		nextTaskID = 1605,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1619,	--������Ի�IDû����nil
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
		[1] = {type='Tarea',param = {mapID = 10, x = 46, y = 216, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] = 
				{
				},
				[TaskStatus.Done] =
					{
						{type="openDialog", param={dialogID = 1619},},	--������Ŀ�����ʱ��һ���Ի���		
			                },
	                },
	},
        [1605] =	            
	{
		
		name = "�´����ι�",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1604},	--����ǰ������û����nil
		nextTaskID = 1606,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --���ι��ؽ�
			{
				mineIndex = 1,		--��һ����
				scriptID = 457,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1621,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21114, x = 150, y = 219, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21112, x = 148, y = 216, noDelete = true},
					{npcID = 21112, x = 148, y = 222, noDelete = true},
					{npcID = 21113, x = 148, y = 214, noDelete = true},
					{npcID = 21113, x = 148, y = 224, noDelete = true},
				},
				posData = {mapID = 109, x = 150, y = 219}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			      },
	                [2] = {type='Tmine',param =     --���ιظ���
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 458,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1623,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21115, x = 104, y = 175, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21112, x = 104, y = 172, noDelete = true},
					{npcID = 21112, x = 104, y = 178, noDelete = true},
					{npcID = 21113, x = 100, y = 173, noDelete = true},
					{npcID = 21113, x = 100, y = 177, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 109, x = 104, y = 175}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			      },
                        [3] = {type='Tmine',param =     --���
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 459,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1625,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 109, x = 149, y = 124}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			},
			},		
		triggers = --���񴥷���
		{
		    [TaskStatus.Active] =
				{
			{type="createPrivateNpc", ----------�������
					param={
						npcs =
						{
								[1] = {npcID = 21116,mapID = 109, x = 149, y = 124,dir = Direction.WestNorth,}, --���					
						},
					},
			},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="deletePrivateNpc", ----------ɾ�����
				param={
						npcs =
						{
							{npcID = 21116, taskID = {1605}, index = 1}, --ɾ�����
						},
					},
			},
			{type="openDialog", param={dialogID = 1627},},	--������Ŀ�����ʱ��һ���Ի���		
			{type="finishTask", param = {recetiveTaskID = 1606}},--����������������һ������
			},
	},
	},        
        [1606] =	            
	{
		
		name = "��ɱ��ѫ",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1605},	--����ǰ������û����nil
		nextTaskID = 1607,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --��Ӫ����
			{
				mineIndex = 1,		--��һ����
				scriptID = 460,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1628,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21119, x = 194, y = 108, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21117, x = 191, y = 112, noDelete = true},
					{npcID = 21117, x = 199, y = 104, noDelete = true},
					{npcID = 21118, x = 195, y = 111, noDelete = true},
					{npcID = 21118, x = 198, y = 108, noDelete = true},
				},
				posData = {mapID = 109, x = 194, y = 108}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
	                [2] = {type='Tmine',param =     --��Ӫ��
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 461,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1630,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21120, x = 249, y = 96, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21117, x = 246, y = 95, noDelete = true},
					{npcID = 21117, x = 252, y = 95, noDelete = true},
					{npcID = 21118, x = 244, y = 93, noDelete = true},
					{npcID = 21118, x = 254, y = 93, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 109, x = 249, y = 96}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
                        [3] = {type='Tmine',param =     --��ѫ
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 462,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1632,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 109, x = 256, y = 61}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			},
			},		
		triggers = --���񴥷���
		{
		    [TaskStatus.Active] =
				{
			{type="createPrivateNpc", ----------������ѫ
					param={
						npcs =
						{
								[1] = {npcID = 21121,mapID = 109, x = 256, y = 61,dir = Direction.EastNorth,}, --��ѫ                                                            
						},
					},
			},
			        },
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="deletePrivateNpc", ----------ɾ����ѫ
				param={
						npcs =
						{
							{npcID = 21121, taskID = {1606}, index = 1}, --ɾ����ѫ						       
						},
					},
			},
			{type="finishTask", param = {recetiveTaskID = 1620}},--����������������һ������
			},
	         },
	},   
	[1620] =
	{
		name = "ǰ������",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 20049,	--�������npc
		preTaskData = {1606}, --ǰ������ID 
		nextTaskID = 1607,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1634,	--������Ի�IDû����nil
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
		[1] = {type='Tarea',param = {mapID = 10, x = 46, y = 216, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] = 
				{
				},
				[TaskStatus.Done] =
					{
			 			{type="openDialog", param={dialogID = 1634},},						
					},
			},
	},
        [1607] =
	{
		name = "��Ԯ�ܲ�",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = 21133,	--�������npc
		preTaskData = {1620}, --ǰ������ID 
		nextTaskID = 1608,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1636,	--������Ի�IDû����nil
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
		[1] = {type='Tarea',param = {mapID = 410, x = 55, y = 177, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] = 
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 109, x = 129, y = 243, tarMapID = 410, tarX = 65, tarY = 186},--����˽�д������ι�-����
							},
					      },
			        },
                                   {type="createPrivateNpc", ----------�����ܲ�
					param={
						npcs =
						{
								[1] = {npcID = 21133,mapID = 410, x = 55, y = 173,dir = Direction.EastNorth,}, --�ܲ�                                                          
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
								{taskID = 1607, index = 1},--ɾ��˽�д������ι�-����
							},
						},
			         },
				{type="openDialog", param={dialogID = 1636},},						
	                      },
	                },
	},
        [1608] =
	{
		name = "Э������",	--��������
		startNpcID = 21133,	--������ʼnpc
		endNpcID = 21122,	--�������npc
		preTaskData = {1607}, --ǰ������ID 
		nextTaskID = 1609,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1638,	--������Ի�IDû����nil
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
		[1] = {type='Tarea',param = {mapID = 410, x = 41, y = 151, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] = 
				{
                  {type="createPrivateNpc", ----------��������
					param={
						npcs =
						{
								[1] = {npcID = 21122,mapID = 410, x = 41, y = 151,dir = Direction.EastSouth,}, --����                                                        
						},
					},
			           },
				},
				[TaskStatus.Done] =
				{					
				  {type="deletePrivateNpc",----------ɾ���ܲ�
				      param={
						npcs =
						{
						{npcID = 21133, taskID = {1607}, index = 1}, --ɾ���ܲ�
						},
					  },
				},
			{type="openDialog", param={dialogID = 1638},},	
			},
	   },
	},
        [1609] =	            
	{	
		name = "��ɱ����",	--��������
		startNpcID = 21122,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1608},	--����ǰ������û����nil
		nextTaskID = 1610,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --�����ؽ�
			{
				mineIndex = 1,		--��һ����
				scriptID = 463,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1640,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21125, x = 107, y = 195, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21123, x = 103, y = 196, noDelete = true},
					{npcID = 21123, x = 110, y = 196, noDelete = true},
					{npcID = 21124, x = 104, y = 198, noDelete = true},
					{npcID = 21124, x = 109, y = 198, noDelete = true},
				},
				posData = {mapID = 410, x = 107, y = 195}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
	                [2] = {type='Tmine',param =     --���ϸ���
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 464,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1642,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21126, x = 217, y = 141, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21123, x = 216, y = 144, noDelete = true},
					{npcID = 21123, x = 220, y = 140, noDelete = true},
					{npcID = 21124, x = 214, y = 142, noDelete = true},
					{npcID = 21124, x = 218, y = 138, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 410, x = 217, y = 141}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
                        [3] = {type='Tmine',param =     --����
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 465,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1644,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 410, x = 103, y = 87}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			},
			},		
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
					{type="deletePrivateNpc",----------ɾ���ܲ١�����
					param={
							npcs =
							{
								{npcID = 21133, taskID = {1607}, index = 1}, --ɾ���ܲ�
								{npcID = 21122, taskID = {1608}, index = 2}, --ɾ������
							},
						},
					},
					{type="createFollow", param = {npcs = {21122},},},--�������ʸ���
					{type="createPrivateNpc", ----------��������
						param={
								npcs =
								{
									[1] = {npcID = 21127,mapID = 410, x = 103, y = 87,dir = Direction.East,}, --����
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
							{npcID = 21127, taskID = {1609}, index = 1}, --ɾ������
						},
				      },
			},
			{type="openDialog", param={dialogID = 1646},},	
			{type="finishTask", param = {recetiveTaskID = 1610}},--�������Ŀ���Զ�����
			},
	        },
	},        
        [1610] =	            
	{
		
		name = "��ս����",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 21122,	--�������npc
		preTaskData = {1609},	--����ǰ������û����nil
		nextTaskID = 1611,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1653,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --���϶�ξ
			{
				mineIndex = 1,		--��һ����
				scriptID = 466,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1647,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21130, x = 104, y = 54, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21128, x = 102, y = 53, noDelete = true},
					{npcID = 21128, x = 107, y = 53, noDelete = true},
					{npcID = 21129, x = 101, y = 51, noDelete = true},
					{npcID = 21129, x = 108, y = 51, noDelete = true},
				},
				posData = {mapID = 410, x = 104, y = 54}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
	                [2] = {type='Tmine',param =     --���ϴ�
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 467,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1649,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21131, x = 170, y = 109, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21128, x = 167, y = 110, noDelete = true},
					{npcID = 21128, x = 171, y = 106, noDelete = true},
					{npcID = 21129, x = 169, y = 112, noDelete = true},
					{npcID = 21129, x = 173, y = 108, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 410, x = 170, y = 109}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
                        [3] = {type='Tmine',param =     --����
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 468,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1651,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 410, x = 206, y = 105}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			},
			},		
		triggers = --���񴥷���
		{
		    [TaskStatus.Active] =
	            {  
			{type="createPrivateNpc", ----------��������
					param={
						npcs =
						{
								[1] = {npcID = 21132,mapID = 410, x = 206, y = 105,dir = Direction.EastNorth,}, --����                                                           
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
							{npcID = 21132, taskID = {1610}, index = 1}, --ɾ������					       
						},
				      },
			},
		        {type="deleteFollow", param = {npcs = {21122},},},--ɾ�����ʸ���
			{type="createPrivateNpc", ----------��������
					param={
						npcs =
						{
								[1] = {npcID = 21122,mapID = 410, x = 206, y = 102,dir = Direction.EastNorth,}, --����                                                          
						},
					      },
			},		  
			{type="openDialog", param={dialogID = 1653},}, --���������ʱ��һ���Ի���
			},
	       },
	},        
        [1611] =
	{
		name = "����¬ֲ",	--��������
		startNpcID = 21122,	--������ʼnpc
		endNpcID = 20049,	--�������npc
		preTaskData = {1610}, --ǰ������ID 
		nextTaskID = 1612,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1654,	--������Ի�IDû����nil
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
		[1] = {type='Tarea',param = {mapID = 10, x = 46, y = 216, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 410, x = 158, y = 20, tarMapID = 109, tarX = 129, tarY = 243},--����˽�д���������-���ι�
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
								{taskID = 1611, index = 1},--ɾ��˽�д���������-���ι�
							},
					       },
			                        },
						{type="deletePrivateNpc", ----------ɾ������
		                     param={
						npcs =
						{
							{npcID = 21122, taskID = {1610}, index = 1}, --ɾ������				       
						},
				           },
			                        },
						{type="openDialog", param={dialogID = 1654},},	--������Ŀ�����ʱ��һ���Ի���		
			                },
	                },
	},
        [1612] =	            
	{
		
		name = "�����Ԯ",	--��������
		startNpcID = 20049,	--������ʼnpc
		endNpcID = 21133,	--�������npc
		preTaskData = {1611},	--����ǰ������û����nil
		nextTaskID = 1613,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1662,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --��Ǹ���
			{
				mineIndex = 1,		--��һ����
				scriptID = 469,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1656,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21136, x = 151, y = 64, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21134, x = 153, y = 65, noDelete = true},
					{npcID = 21134, x = 148, y = 65, noDelete = true},
					{npcID = 21135, x = 155, y = 67, noDelete = true},
					{npcID = 21135, x = 145, y = 68, noDelete = true},
				},
				posData = {mapID = 122, x = 151, y = 64}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
	                [2] = {type='Tmine',param =     --����ؽ�
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 470,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1658,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21137, x = 93, y = 107, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21134, x = 90, y = 104, noDelete = true},
					{npcID = 21134, x = 96, y = 110, noDelete = true},
					{npcID = 21135, x = 89, y = 108, noDelete = true},
					{npcID = 21135, x = 93, y = 111, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 122, x = 93, y = 107}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
                        [3] = {type='Tmine',param =     --����
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 471,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1660,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 122, x = 82, y = 146}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			},
			},		
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
					{type="createPrivateNpc", ----------��������
						param={
								npcs =
								{
									[1] = {npcID = 21138,mapID = 122, x = 82, y = 146,dir = Direction.South,}, --����
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
							{npcID = 21138, taskID = {1612}, index = 1}, --ɾ������
						},
					},
			},
		        {type="createPrivateNpc", ----------�����ܲ�
					param={
						npcs =
						{
								[1] = {npcID = 21133,mapID = 122, x = 78, y = 169,dir = Direction.WestSouth,}, --�ܲ�                                                         
						},
					      },
		        },
				{type = "autoTrace", param = {tarMapID	= 122, x = 78, y = 169,npcID = 21133,},}, --Ѱ·���ܲ�
			},
	        },
	},        
       [1613] =	            
	{
		
		name = "Ӫ�ȵ�Τ",	--��������
		startNpcID = 21133,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1612},	--����ǰ������û����nil
		nextTaskID = 1614,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --��Ƕ�ξ
			{
				mineIndex = 1,		--��һ����
				scriptID = 472,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1664,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21139, x = 138, y = 155, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21134, x = 139, y = 152, noDelete = true},
					{npcID = 21134, x = 139, y = 158, noDelete = true},
					{npcID = 21135, x = 141, y = 153, noDelete = true},
					{npcID = 21135, x = 141, y = 157, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 122, x = 134, y = 155}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			      },
	                [2] = {type='Tmine',param =     --���Уξ
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 473,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1666,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21140, x = 135, y = 178, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21134, x = 132, y = 177, noDelete = true},
					{npcID = 21134, x = 138, y = 177, noDelete = true},
					{npcID = 21135, x = 132, y = 180, noDelete = true},
					{npcID = 21135, x = 138, y = 180, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 122, x = 133, y = 174}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			       },
                        [3] = {type='Tmine',param =     --����
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 474,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1668,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 122, x = 128, y = 222}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			      },
	        },		
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
					{type="createPrivateNpc", ----------��������
						param={
								npcs =
								{
									[1] = {npcID = 21141,mapID = 122, x = 128, y = 222,dir = Direction.WestSouth,}, --����
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
							{npcID = 21141, taskID = {1613}, index = 1}, --ɾ������
						},
					},
			},
			{type="finishTask", param = {recetiveTaskID = 1614}},--�������Ŀ���Զ�����
			},
	        },
	},        
        [1614] =
	{
		name = "Ѱ�ҵ�Τ",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1613}, --ǰ������ID 
		nextTaskID = 1615,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
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
		[1] = {type='Tarea',param = {mapID = 122, x = 121, y = 258, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] =
				{
				{type="createPrivateNpc", ----------������Τʬ��
					param={
						npcs =
						{
								[1] = {npcID = 21164,mapID = 122, x = 118, y = 262,dir = Direction.EastSouth,}, --��Τʬ��                                                         
						},
					      },
		        },
				},
				[TaskStatus.Done] =
					{
						{type="openDialog", param={dialogID = 1670},},	--������Ŀ�����ʱ��һ���Ի���
						{type="finishTask", param = {recetiveTaskID = 1615}},--�������Ŀ���Զ�����		
			                },
	                },
	},
        [1615] =	            
	{
		
		name = "�����֮��",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 21133,	--�������npc
		preTaskData = {1614},	--����ǰ������û����nil
		nextTaskID = 1616,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1677,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --��Ӫ����
			{
				mineIndex = 1,		--��һ����
				scriptID = 475,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1671,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21144, x = 194, y = 172, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21142, x = 194, y = 170, noDelete = true},
					{npcID = 21142, x = 196, y = 172, noDelete = true},
					{npcID = 21143, x = 193, y = 168, noDelete = true},
					{npcID = 21143, x = 198, y = 173, noDelete = true},
				},
				posData = {mapID = 122, x = 194, y = 172}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
	                [2] = {type='Tmine',param =     --��Ӫ��
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 476,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1673,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21145, x = 241, y = 143, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21142, x = 241, y = 140, noDelete = true},
					{npcID = 21142, x = 244, y = 143, noDelete = true},
					{npcID = 21143, x = 243, y = 136, noDelete = true},
					{npcID = 21143, x = 248, y = 141, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 122, x = 241, y = 143}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
                        [3] = {type='Tmine',param =     --������
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 477,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1675,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 122, x = 224, y = 89}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			},
			},		
		triggers = --���񴥷���
		{
		    [TaskStatus.Active] =
				{
			{type="createPrivateNpc", ----------����������
					param={
						npcs =
						{
								[1] = {npcID = 21146,mapID = 122, x = 224, y = 89,dir = Direction.EastNorth,}, --������                                                           
						},
					},
			},
			},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 122, x = 53, y = 181, tarMapID = 411, tarX = 109, tarY = 236},--����˽�д��������-��ǳǳ�
							},
					      },
			 },   
			{type="deletePrivateNpc", ----------ɾ��������
				param={
						npcs =
						{
						    {npcID = 21164, taskID = {1614}, index = 1}, --ɾ����Τ		
							{npcID = 21146, taskID = {1615}, index = 1}, --ɾ��������				       
						},
				      },
			},	  
			{type="autoTrace", param = {tarMapID=122, x =78, y = 166,npcID = 21133,},}, --�Զ�Ѱ·���ܲ����
			},
	       },
	},        
       [1616] =	            
	{
		
		name = "������ڼ",	--��������
		startNpcID = 21133,	--������ʼnpc
		endNpcID = 21152,	--�������npc
		preTaskData = {1615},	--����ǰ������û����nil
		nextTaskID = 1617,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1685,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --�س��ؽ�
			{
				mineIndex = 1,		--��һ����
				scriptID = 478,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1679,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21149, x = 117, y = 212, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21147, x = 114, y = 211, noDelete = true},
					{npcID = 21147, x = 120, y = 211, noDelete = true},
					{npcID = 21148, x = 115, y = 209, noDelete = true},
					{npcID = 21148, x = 119, y = 209, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 411, x = 117, y = 212}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			      },
	                [2] = {type='Tmine',param =     --�سǸ���
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 479,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1681,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21150, x = 102, y = 148, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21147, x = 100, y = 151, noDelete = true},
					{npcID = 21147, x = 100, y = 144, noDelete = true},
					{npcID = 21148, x = 98, y = 150, noDelete = true},
					{npcID = 21148, x = 98, y = 147, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 411, x = 102, y = 148}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			       },
                        [3] = {type='Tmine',param =     --��ڼ
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 480,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1683,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 411, x = 146, y = 121}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			      },
	        },		
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
					{type="createPrivateNpc", ----------������ڼ
						param={
								npcs =
								{
									[1] = {npcID = 21151,mapID = 411, x = 146, y = 121,dir = Direction.WestNorth,}, --��ڼ
								},
							},
					},
				},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
		        {type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1615, index = 1},--ɾ��˽�д��������-��ǳǳ�
							},
					       },
		        },
			{type="deletePrivateNpc", ----------ɾ����ڼ
				param={
						npcs =
						{
							{npcID = 21151, taskID = {1616}, index = 1}, --ɾ����ڼ
						},
					},
			},
			{type="createPrivateNpc", ----------�����Ի���ڼ
					param={
						npcs =
						{
								[1] = {npcID = 21152,mapID = 411, x = 146, y = 121,dir = Direction.WestNorth,}, --�Ի���ڼ                                                         
						},
					      },
		        },
			{type="openDialog", param={dialogID = 1685},}, --���������ʱ��һ���Ի���
			},
	        },
	},        
        [1617] =	            
	{
		
		name = "�������",	--��������
		startNpcID = 21152,	--������ʼnpc
		endNpcID = 21158,	--�������npc
		preTaskData = {1616},	--����ǰ������û����nil
		nextTaskID = 1618,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1693,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --��Ӫ�ؽ�
			{
				mineIndex = 1,		--��һ����
				scriptID = 481,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1687,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21155, x = 188, y = 191, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21153, x = 185, y = 194, noDelete = true},
					{npcID = 21153, x = 191, y = 194, noDelete = true},
					{npcID = 21154, x = 185, y = 188, noDelete = true},
					{npcID = 21154, x = 191, y = 188, noDelete = true},
				},
				posData = {mapID = 411, x = 188, y = 191}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
	                [2] = {type='Tmine',param =     --��Ӫ����
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 482,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1689,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21156, x = 189, y = 142, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21153, x = 188, y = 144, noDelete = true},
					{npcID = 21153, x = 191, y = 144, noDelete = true},
					{npcID = 21154, x = 185, y = 146, noDelete = true},
					{npcID = 21154, x = 193, y = 146, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 411, x = 189, y = 142}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
                        [3] = {type='Tmine',param =     --����
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 483,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1691,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 411, x = 203, y = 159}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			},
			},		
		triggers = --���񴥷���
		{
		    [TaskStatus.Active] =
				{
			{type="createPrivateNpc", ----------��������
					param={
						npcs =
						{
								[1] = {npcID = 21157,mapID = 411, x = 203, y = 159,dir = Direction.WestSouth,}, -- ����                                                         
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
							{npcID = 21152, taskID = {1616}, index = 1}, --ɾ���Ի���ڼ
						},
				       },
			  },
			{type="deletePrivateNpc", ----------ɾ������
				param={
						npcs =
						{
							{npcID = 21157, taskID = {1617}, index = 1}, --ɾ������				       
						},
				      },
			},	  
		        {type="createPrivateNpc", ----------�����Ի�����
					param={
						npcs =
						{
								[1] = {npcID = 21158,mapID = 411, x = 203, y = 159,dir = Direction.WestNorth,}, --�Ի�����                                                        
						},
					      },
		        },
			{type="openDialog", param={dialogID = 1693},}, --���������ʱ��һ���Ի���
			},
	       },
	},        
       [1618] =	            
	{
		
		name = "��ɱ����",	--��������
		startNpcID = 21158,	--������ʼnpc
		endNpcID = nil,	--�������npc
		preTaskData = {1617},	--����ǰ������û����nil
		nextTaskID = 1619,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level = {1,150},--�ȼ�����
		rewards = --������û����{}
		{
			[TaskRewardList.player_xp] = 8000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 8000,      --���ﾭ��
			[TaskRewardList.subMoney] = 35000,    --����
			[TaskRewardList.player_pot] = 10500,  	--����Ǳ��
		}, 
		consume =--��������û����{}
		{
		},
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type='Tmine',param =     --����������
			{
				mineIndex = 1,		--��һ����
				scriptID = 484,
				lastMine = false,	--�Ƿ�Ϊ���һ����
				dialogID = 1695,        --���������򿪵ĶԻ���
				npcsData =	        --ˢ��npc����
				{
					{npcID = 21161, x = 76, y = 140, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21159, x = 74, y = 142, noDelete = true},
					{npcID = 21159, x = 78, y = 142, noDelete = true},
					{npcID = 21160, x = 80, y = 144, noDelete = true},
					{npcID = 21160, x = 72, y = 144, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 412, x = 76, y = 140}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			      },
	                [2] = {type='Tmine',param =     --������ħ��
	  		{
			        mineIndex = 2,		--�ڶ�����
			        scriptID = 485,         --�ű�ս��
			        lastMine = false,	--�Ƿ�Ϊ���һ����
			        dialogID = 1697,        --���������򿪵ĶԻ���
			        npcsData =              --ˢ��npc����
			        {
					{npcID = 21162, x = 176, y = 182, noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21159, x = 173, y = 179, noDelete = true},
					{npcID = 21159, x = 179, y = 179, noDelete = true},
					{npcID = 21160, x = 173, y = 185, noDelete = true},
					{npcID = 21160, x = 179, y = 185, noDelete = true},
				},                     --ˢ��npc����
			        posData = {mapID = 412, x = 176, y = 182}, --��������
			        bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			       },
                        [3] = {type='Tmine',param =     --����
			{
			        mineIndex = 3,	        --��һ����
			        scriptID = 486,         --�ű�ս��
			        lastMine = true,	--�Ƿ�Ϊ���һ����
			        dialogID = 1699,        --���������򿪵ĶԻ���
			        npcsData =	        --ˢ��npc����
			        {
			        },
			        posData = {mapID = 412, x = 114, y = 229}, --��������
			        bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			}, 
			      },
	        },		
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 411, x = 202, y = 171, tarMapID = 412, tarX = 25, tarY = 160},--����˽�д�������ǳǳ�-�����
							},
					      },
			 },   
					{type="createPrivateNpc", ----------��������
						param={
								npcs =
								{
									[1] = {npcID = 21163,mapID = 412, x = 114, y = 233,dir = Direction.WestSouth,}, --����
								},
							},
					},
				},
			[TaskStatus.Done]		=      ---���Ŀ��״̬ 
			{
			{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1618, index = 1},--ɾ��˽�д�������ǳǳ�-�����
							},
					},
		     },
			{type="deletePrivateNpc", ----------ɾ������
				param={
						npcs =
						{
							{npcID = 21163, taskID = {1618}, index = 1}, --ɾ������
						},
					},
			},
		        {type="deletePrivateNpc",
				param={
						npcs =
						{
							{npcID = 21158, taskID = {1617}, index = 1}, --ɾ���Ի�����
						},
				       },
			},
			{type="finishTask", param = {recetiveTaskID = 1619}},--�������Ŀ���Զ�����
			},
	        },
	},        
        [1619] =
	{
		name = "�ټ��ܲ�",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = 21133,	--�������npc
		preTaskData = {1618}, --ǰ������ID 
		nextTaskID = nil,	--�����������û����nil
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = 1584,	--������Ի�IDû����nil
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
		[1] = {type='Tarea',param = {mapID = 122, x = 78, y = 169, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{
				[TaskStatus.Active] = 
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 412, x = 102, y = 248, tarMapID = 122, tarX = 53, tarY = 181},--����˽�д���������-���
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
								{taskID = 1618, index = 1},--ɾ��˽�д���������-���
							},
					},
		      },
		     {type="openDialog", param={dialogID = 1584},}, --���������ʱ��һ���Ի���			
			 },
	    },
	},
---------------------------------��������42-43������--------------------------------------
[1701] =
	{
		name = "Ѱ�Ҳ���",	--��������
		startNpcID = 21233,	--������ʼnpc�ܲ�
		endNpcID = nil,	--�������npc
		preTaskData = {1619}, --ǰ������ID ��������һ������ID
		nextTaskID = 1702,	--�����������û����nil
		startDialogID =	1701,	--������Ի�IDû����nil
		endDialogID = 1702,	--������Ի�IDû����nil
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
		[1] = {type='Tarea',param = {mapID = 124, x = 172, y = 59, bor = true},},-------����ָ������
		},
			triggers = --���񴥷���
			{

				[TaskStatus.Active] = 
				{
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21202, mapID = 124, x = 172, y = 59, dir = Direction. WestSouth,}, --����
						},
					},
			},
				},
				[TaskStatus.Done] =
					{
					{type="openDialog", param={dialogID = 1702},},
			},
	},
	},

[1702] =
         {              

		name = "����Σ��",	--��������
		startNpcID = 21202,	--������ʼnpc
		endNpcID = 21210,		--�������npc
		preTaskData = {1701},	--����ǰ������û����nil
		nextTaskID = 1702,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1710,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --͵Ϯ����
			{
			mineIndex = 1,		--��һ����
			scriptID = 501,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1704,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21203, x = 107, y = 63,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21204, x = 104, y = 64,  noDelete = true},
					{npcID = 21205, x = 106, y = 66,  noDelete = true},
					{npcID = 21206, x = 102, y = 64,  noDelete = true},
					{npcID = 21207, x = 106, y = 68,  noDelete = true},
			},
			posData = {mapID = 413, x = 107, y = 63}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --͵ϮͷĿ
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 502,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1706,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21208, x = 154, y = 122,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21204, x = 153, y = 121,  noDelete = true},
					{npcID = 21205, x = 153, y = 124,  noDelete = true},
					{npcID = 21206, x = 152, y = 120,  noDelete = true},
					{npcID = 21207, x = 152, y = 124,  noDelete = true},
			},
			posData = {mapID = 413, x = 155, y = 122}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --�¾�
			{
			mineIndex = 3,		--��������
			scriptID = 503,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1708,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21209, x = 180, y = 157,  noDelete = true},
			                {npcID = 21204, x = 178, y = 155,  noDelete = true},
					{npcID = 21205, x = 178, y = 159,  noDelete = true},
					{npcID = 21206, x = 177, y = 153,  noDelete = true},
					{npcID = 21207, x = 177, y = 161,  noDelete = true},
			},
			posData = {mapID = 413, x = 180, y = 157}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
			{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 124, x = 131, y = 94, tarMapID = 413, tarX = 141, tarY = 19},--����˽�д�����
							},
						},
			},
			{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21210, mapID = 413, x = 176, y = 157, dir = Direction.EastSouth,}, --����

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
						[1] ={npcID = 21202, taskID = {1701}, index = 1}, --ɾ������
						},
					  },
		        },
		        {type="openDialog", param={dialogID = 1710},},
			},
		},
	},
[1703] =
         {              

		name = "�������",	--��������
		startNpcID = 21210,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1702},	--����ǰ������û����nil
		nextTaskID = 1704,	--�����������û����nil
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
		[1] = {type='Tmine',param =     --���ǰ���
			{
			mineIndex = 1,		--��һ����
			scriptID = 504,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1711,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21211, x = 133, y = 167,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21212, x = 132, y = 170,  noDelete = true},
					{npcID = 21213, x = 132, y = 164,  noDelete = true},
					{npcID = 21214, x = 130, y = 166,  noDelete = true},
					{npcID = 21215, x = 130, y = 169,  noDelete = true},
			},
			posData = {mapID = 413, x = 134, y = 167}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --��������
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 505,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1713,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21216, x = 44, y = 125,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21212, x = 47, y = 126,  noDelete = true},
					{npcID = 21213, x = 41, y = 126,  noDelete = true},
					{npcID = 21214, x = 42, y = 128,  noDelete = true},
					{npcID = 21215, x = 45, y = 128,  noDelete = true},
			},
			posData = {mapID = 413, x = 44, y = 124}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --����
			{
			mineIndex = 3,		--��������
			scriptID = 506,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1715,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			 {
			                {npcID = 21217, x = 120, y = 216,  noDelete = true},
			                {npcID = 21212, x = 122, y = 218,  noDelete = true},
					{npcID = 21213, x = 118, y = 218,  noDelete = true},
					{npcID = 21214, x = 116, y = 220,  noDelete = true},
					{npcID = 21215, x = 123, y = 220,  noDelete = true},
			},
			posData = {mapID = 413, x = 120, y = 216}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������cֱ�����
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
						[1] ={npcID = 21210, taskID = {1702}, index = 1}, --ɾ������
						},
					  },
		        },
				{type="createFollow", param = {npcs = {21210},},},--�������ո���
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1702, index = 1},--ɾ��˽�д�����
							},
						},
				},
                                  },
			[TaskStatus.Done] =
			{
			{type="deleteFollow", param = {npcs = {21210},},},--ɾ�����ո���
			{type="createPrivateNpc",  --˽��npc����
				param={
				npcs ={
				   [1] = {npcID = 21210, mapID = 413, x = 120, y = 216, dir = Direction. EastSouth,}, --����
					},
				},
		     },
			
		        {type="openDialog", param={dialogID = 1717},},
			},
		},
	},
[1704] =
         {              

		name = "���ȥ��",	--��������
		startNpcID = 21216,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1703},	--����ǰ������û����nil
		nextTaskID = 1705,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1725,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --�ٴ�ͳ��
			{
			mineIndex = 1,		--��һ����
			scriptID = 507,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1719,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21218, x = 133, y = 77,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21219, x = 130, y = 77,  noDelete = true},
					{npcID = 21220, x = 132, y = 80,  noDelete = true},
					{npcID = 21221, x = 127, y = 77,  noDelete = true},
					{npcID = 21222, x = 131, y = 83,  noDelete = true},
			},
			posData = {mapID = 124, x = 133, y = 77}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --�ٴ����
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 508,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1721,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21223, x = 55, y = 164,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21219, x = 54, y = 167,  noDelete = true},
					{npcID = 21220, x = 52, y = 165,  noDelete = true},
					{npcID = 21221, x = 54, y = 169,  noDelete = true},
					{npcID = 21222, x = 50, y = 165,  noDelete = true},
			},
			posData = {mapID = 124, x = 55, y = 164}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --����
			{
			mineIndex = 3,		--��������
			scriptID = 509,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1723,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21224, x = 146, y = 129,  noDelete = true},
					{npcID = 21219, x = 149, y = 124,  noDelete = true},
					{npcID = 21220, x = 149, y = 129,  noDelete = true},
					{npcID = 21221, x = 151, y = 128,  noDelete = true},
					{npcID = 21222, x = 151, y = 125,  noDelete = true},
			},
			posData = {mapID = 124, x = 146, y = 129}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 413, x = 122, y = 245, tarMapID = 124, tarX = 197, tarY = 45},--����˽�д�����
							},
						},
			},
                                  },
			[TaskStatus.Done]		=
			{
			{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21279, mapID = 124, x = 148, y = 126, dir = Direction. WestNouth,}, --����
						},
					},
			},
			{type="deletePrivateNpc",
				  param={
						npcs =
						{
						[1] ={npcID = 21210, taskID = {1703}, index = 1}, --ɾ������
						},
					        },
				                },
		        {type="openDialog", param={dialogID = 1725},},
			},
		},
	},
[1705] =
         {              

		name = "������",	--��������
		startNpcID = 21279,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1704},	--����ǰ������û����nil
		nextTaskID = 1706,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1733,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --�ٴ�����
			{
			mineIndex = 1,		--��һ����
			scriptID = 510,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1727,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21225, x = 101, y = 213,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21219, x = 101, y = 216,  noDelete = true},
					{npcID = 21220, x = 98, y = 213,  noDelete = true},
					{npcID = 21221, x = 101, y = 218,  noDelete = true},
					{npcID = 21222, x = 96, y = 213,  noDelete = true},
			},
			posData = {mapID = 124, x = 101, y = 213}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --�ٴ�Ѳʷ
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 511,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1729,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21226, x = 167, y = 202,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21219, x = 165, y = 200,  noDelete = true},
					{npcID = 21220, x = 170, y = 200,  noDelete = true},
					{npcID = 21221, x = 164, y = 198,  noDelete = true},
					{npcID = 21222, x = 172, y = 198,  noDelete = true},
			},
			posData = {mapID = 124, x = 167, y = 202}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --Ԭط
			{
			mineIndex = 3,		--��������
			scriptID = 512,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1731,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 124, x = 216, y = 103}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1704, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21227, mapID = 124, x = 216, y = 103, dir = Direction. EastNorth,}, --Ԭط
							[2] = {npcID = 21219, mapID = 124, x = 213, y = 102, dir = Direction. EastNorth,}, --
							[3] = {npcID = 21220, mapID = 124, x = 219, y = 102, dir = Direction. EastNorth,}, --
							[4] = {npcID = 21221, mapID = 124, x = 213, y = 99, dir = Direction. EastNorth,}, --
							[5] = {npcID = 21222, mapID = 124, x = 220, y = 99, dir = Direction. EastNorth,}, --
							[6] = {npcID = 21228, mapID = 124, x = 216, y = 100, dir = Direction. EastNorth,}, --���
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
						[1] ={npcID = 21227, taskID = {1705}, index = 1}, --ɾ��Ԭط
						[2] ={npcID = 21219, taskID = {1705}, index = 2}, --
						[3] ={npcID = 21220, taskID = {1705}, index = 3}, --
						[4] ={npcID = 21221, taskID = {1705}, index = 4}, --
						[5] ={npcID = 21222, taskID = {1705}, index = 5}, --
						[6] ={npcID = 21279, taskID = {1704}, index = 1}, --ɾ������
						[7] ={npcID = 21228, taskID = {1705}, index = 6}, --ɾ�����
						},
					        },
				                },
			{type="createFollow", param = {npcs = {21228},},},--������߸���
		        {type="openDialog", param={dialogID = 1733},},
			{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 124, x = 239, y = 77, tarMapID = 414, tarX = 157, tarY = 21},--����˽�д�����
							},
						},
			},
			},
		},
	},
[1706] =
         {              

		name = "Ԯ�����",	--��������
		startNpcID = 21228,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1705},	--����ǰ������û����nil
		nextTaskID = 1707,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID =1741,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --���¶���
			{
			mineIndex = 1,		--��һ����
			scriptID = 513,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1735,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21229, x = 207, y = 108,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21230, x = 208, y = 110,  noDelete = true},
					{npcID = 21231, x = 205, y = 110,  noDelete = true},
					{npcID = 21232, x = 209, y = 111,  noDelete = true},
					{npcID = 21233, x = 204, y = 111,  noDelete = true},
			},
			posData = {mapID = 414, x = 207, y = 107}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --ǰ��У
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 514,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1737,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21234, x = 101, y = 80,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21230, x = 99, y = 82,  noDelete = true},
					{npcID = 21231, x = 103, y = 82,  noDelete = true},
					{npcID = 21232, x = 99, y = 84,  noDelete = true},
					{npcID = 21233, x = 103, y = 84,  noDelete = true},
			},
			posData = {mapID = 414, x = 101, y = 79}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --��ި
			{
			mineIndex = 3,		--��������
			scriptID = 515,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1739,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 414, x = 221, y = 148}, --��������
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
							[1] = {npcID = 21235, mapID = 414, x = 221, y = 148, dir = Direction. WestSouth,}, --��ި
							[2] = {npcID = 21230, mapID = 414, x = 223, y = 150, dir = Direction. WestSouth,}, --
							[3] = {npcID = 21231, mapID = 414, x = 219, y = 150, dir = Direction. WestSouth,}, --
							[4] = {npcID = 21232, mapID = 414, x = 224, y = 152, dir = Direction. WestSouth,}, --
							[5] = {npcID = 21233, mapID = 414, x = 218, y = 152, dir = Direction. WestSouth,}, --
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
						[1] ={npcID = 21235, taskID = {1706}, index = 1}, --ɾ����ި
						[2] ={npcID = 21230, taskID = {1706}, index = 2}, --
						[3] ={npcID = 21231, taskID = {1706}, index = 3}, --
						[4] ={npcID = 21232, taskID = {1706}, index = 4}, --
						[5] ={npcID = 21233, taskID = {1706}, index = 5}, --
						},
				        },
                         },
			 {type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21280, mapID = 414, x = 221, y = 148, dir = Direction. WestSouth,}, --��ި
						},
					},
			},
		        {type="openDialog", param={dialogID = 1741},},			},
		},
	},
[1707] =
         {              

		name = "������",	--��������
		startNpcID = 21280,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1706},	--����ǰ������û����nil
		nextTaskID = 1708,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1749,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --�Ž��Ž�
			{
			mineIndex = 1,		--��һ����
			scriptID = 516,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1743,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21236, x = 110, y = 201,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21230, x = 108, y = 201,  noDelete = true},
					{npcID = 21231, x = 110, y = 199,  noDelete = true},
					{npcID = 21232, x = 106, y = 201,  noDelete = true},
					{npcID = 21233, x = 110, y = 197,  noDelete = true},
			},
			posData = {mapID = 414, x = 110, y = 201}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --�Ž�����
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 517,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1745,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21237, x = 51, y = 122,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21230, x = 50, y = 119,  noDelete = true},
					{npcID = 21231, x = 50, y = 125,  noDelete = true},
					{npcID = 21232, x = 47, y = 121,  noDelete = true},
					{npcID = 21233, x = 47, y = 124,  noDelete = true},
			},
			posData = {mapID = 414, x = 52, y = 122}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --����
			{
			mineIndex = 3,		--��������
			scriptID = 518,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1747,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 414, x = 55, y = 176}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1705, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21238, mapID = 414, x = 55, y = 176, dir = Direction. WestSouth,}, --����
							[2] = {npcID = 21230, mapID = 414, x = 53, y = 178, dir = Direction. WestSouth,}, --
							[3] = {npcID = 21231, mapID = 414, x = 57, y = 178, dir = Direction. WestSouth,}, --
							[4] = {npcID = 21232, mapID = 414, x = 53, y = 181, dir = Direction. WestSouth,}, --
							[5] = {npcID = 21233, mapID = 414, x = 57, y = 181, dir = Direction. WestSouth,}, --
							[6] = {npcID = 21239, mapID = 414, x = 55, y = 179, dir = Direction. WestSouth,}, --���
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
						[1] ={npcID = 21238, taskID = {1707}, index = 1}, --ɾ������
						[2] ={npcID = 21230, taskID = {1707}, index = 2}, --
						[3] ={npcID = 21231, taskID = {1707}, index = 3}, --
						[4] ={npcID = 21232, taskID = {1707}, index = 4}, --
						[5] ={npcID = 21233, taskID = {1707}, index = 5}, --
						[6] ={npcID = 21239, taskID = {1707}, index = 6}, --ɾ�����
						[7] ={npcID = 21280, taskID = {1706}, index = 1}, --ɾ����ި
						},
				        },
                         },
			{type="createFollow", param = {npcs = {21239},},},--������褸���
		        {type="openDialog", param={dialogID = 1749},},
			},
		},
	},
[1708] =
         {              

		name = "��������",	--��������
		startNpcID = 21239,	--������ʼnpc
		endNpcID = nil,		--�������npc
		preTaskData = {1707},	--����ǰ������û����nil
		nextTaskID = 1709,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1757,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --��������
			{
			mineIndex = 1,		--��һ����
			scriptID = 519,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1751,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21240, x = 54, y = 144,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21241, x = 54, y = 146,  noDelete = true},
					{npcID = 21242, x = 52, y = 144,  noDelete = true},
					{npcID = 21243, x = 50, y = 144,  noDelete = true},
					{npcID = 21244, x = 54, y = 148,  noDelete = true},
			},
			posData = {mapID = 120, x = 54, y = 144}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --�����ؽ�
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 520,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1753,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21245, x = 63, y = 203,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21241, x = 65, y = 205,  noDelete = true},
					{npcID = 21242, x = 61, y = 205,  noDelete = true},
					{npcID = 21243, x = 65, y = 207,  noDelete = true},
					{npcID = 21244, x = 61, y = 207,  noDelete = true},
			},
			posData = {mapID = 120, x = 63, y = 202}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --��˶
			{
			mineIndex = 3,		--��������
			scriptID = 521,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1755,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 120, x = 112, y = 226}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 414, x = 40, y = 149, tarMapID = 120, tarX = 95, tarY = 115},--����˽�д�����
							},
						},
			},
				
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21246, mapID = 120, x = 112, y = 226, dir = Direction. WestSouth,}, --��˶
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
						[1] ={npcID = 21246, taskID = {1708}, index = 1}, --ɾ����˶
						},
				        },
                         },
			 {type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21281, mapID = 120, x = 112, y = 226, dir = Direction. WestSouth,}, --��˶
						},
					},
			},
		        {type="openDialog", param={dialogID = 1757},},
			},
		},
	},
[1709] =
         {              

		name = "��ɱ����",	--��������
		startNpcID = 21281,	--������ʼnpc
		endNpcID = 21239,		--�������npc
		preTaskData = {1708},	--����ǰ������û����nil
		nextTaskID = 1710,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1765,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --Ӫ������
			{
			mineIndex = 1,		--��һ����
			scriptID = 522,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1759,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21247, x = 122, y = 163,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21248, x = 120, y = 161,  noDelete = true},
					{npcID = 21249, x = 124, y = 161,  noDelete = true},
					{npcID = 21250, x = 118, y = 160,  noDelete = true},
					{npcID = 21251, x = 126, y = 160,  noDelete = true},
			},
			posData = {mapID = 120, x = 122, y = 163}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --Ӫ��ͳ��
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 523,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1761,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21252, x = 230, y = 106,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21248, x = 228, y = 105,  noDelete = true},
					{npcID = 21249, x = 232, y = 105,  noDelete = true},
					{npcID = 21250, x = 228, y = 103,  noDelete = true},
					{npcID = 21251, x = 232, y = 103,  noDelete = true},
			},
			posData = {mapID = 120, x = 230, y = 107}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --����
			{
			mineIndex = 3,		--��������
			scriptID = 524,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1763,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 120, x = 178, y = 56}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1708, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21253, mapID = 120, x = 178, y = 56, dir = Direction. EastSouth,}, --����
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
						[1] ={npcID = 21253, taskID = {1709}, index = 1}, --ɾ������
						[2] ={npcID = 21281, taskID = {1708}, index = 1}, --ɾ����˶
						},
				        },
                         },
			{type="deleteFollow", param = {npcs = {21239},},},--ɾ����褸���
			{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21239, mapID = 120, x = 178, y = 56, dir = Direction. WestSouth,}, --���
						},
					},
			},
		        {type="openDialog", param={dialogID = 1765},},
			},
		},
	},
[1710] =
         {              

		name = "��ɱ����",	--��������
		startNpcID = 21239,	--������ʼnpc
		endNpcID = 21239,	--�������npc
		preTaskData = {1709},	--����ǰ������û����nil
		nextTaskID = 1711,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1772,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --ԬӪ��ʿ
			{
			mineIndex = 1,		--��һ����
			scriptID = 525,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1766,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21254, x = 245, y = 115,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21256, x = 243, y = 113,  noDelete = true},
					{npcID = 21257, x = 247, y = 113,  noDelete = true},
					{npcID = 21258, x = 242, y = 111,  noDelete = true},
					{npcID = 21259, x = 249, y = 111,  noDelete = true},
			},
			posData = {mapID = 415, x = 245, y = 115}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --ԬӪ�佫
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 526,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1768,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21255, x = 153, y = 98,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21256, x = 154, y = 100,  noDelete = true},
					{npcID = 21257, x = 151, y = 100,  noDelete = true},
					{npcID = 21258, x = 149, y = 102,  noDelete = true},
					{npcID = 21259, x = 155, y = 102,  noDelete = true},
			},
			posData = {mapID = 415, x = 153, y = 97}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --����
			{
			mineIndex = 3,		--��������
			scriptID = 527,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1770,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 415, x = 178, y = 170}, --��������
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
						[1] ={npcID = 21239, taskID = {1709}, index = 1}, --ɾ�����
						},
				        },
                         },
			        {type="createFollow", param = {npcs = {21239},},},--������褸���
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 120, x = 124, y = 73, tarMapID = 415, tarX = 246, tarY = 154},--����˽�д�����
							},
						},
			},
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21260, mapID = 415, x = 178, y = 170, dir = Direction. WestSouth,}, --����
							[2] = {npcID = 21256, mapID = 415, x = 176, y = 172, dir = Direction. WestSouth,}, --
							[3] = {npcID = 21257, mapID = 415, x = 180, y = 172, dir = Direction. WestSouth,}, --
							[4] = {npcID = 21258, mapID = 415, x = 180, y = 174, dir = Direction. WestSouth,}, --
							[5] = {npcID = 21259, mapID = 415, x = 176, y = 174, dir = Direction. WestSouth,}, --
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
						[1] ={npcID = 21260, taskID = {1710}, index = 1}, --ɾ������
						[2] ={npcID = 21256, taskID = {1710}, index = 2}, --
						[3] ={npcID = 21257, taskID = {1710}, index = 3}, --
						[4] ={npcID = 21258, taskID = {1710}, index = 4}, --
						[5] ={npcID = 21259, taskID = {1710}, index = 5}, --
						},
				        },
                         },
			 {type="deleteFollow", param = {npcs = {21239},},},--ɾ����褸���
			{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21239, mapID = 415, x = 178, y = 170, dir = Direction. WestSouth,}, --���
						},
					},
			},
		        {type="openDialog", param={dialogID = 1772},},
			},
		},
	},
[1711] =
         {              

		name = "��ɱ����",	--��������
		startNpcID = 21239,	--������ʼnpc
		endNpcID = nil,	        --�������npc
		preTaskData = {1710},	--����ǰ������û����nil
		nextTaskID = 1712,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1779,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --Ѳ�߳����ӳ�
			{
			mineIndex = 1,		--��һ����
			scriptID = 528,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1773,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21261, x = 143, y = 206,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21256, x = 142, y = 205,  noDelete = true},
					{npcID = 21257, x = 142, y = 208,  noDelete = true},
					{npcID = 21258, x = 141, y = 204,  noDelete = true},
					{npcID = 21259, x = 141, y = 210,  noDelete = true},
			},
			posData = {mapID = 415, x = 144, y = 206}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --ǧ��
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 529,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1775,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21262, x = 88, y = 190,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21256, x = 86, y = 191,  noDelete = true},
					{npcID = 21257, x = 89, y = 191,  noDelete = true},
					{npcID = 21258, x = 90, y = 192,  noDelete = true},
					{npcID = 21259, x = 85, y = 192,  noDelete = true},
			},
			posData = {mapID = 415, x = 88, y = 189}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --����
			{
			mineIndex = 3,		--��������
			scriptID = 530,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1777,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 415, x = 36, y = 230}, --��������
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
						[1] ={npcID = 21239, taskID = {1710}, index = 1}, --ɾ�����
						},
				        },
                         },
				{type="createFollow", param = {npcs = {21239},},},--������褸���
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1710, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21263, mapID = 415, x = 36, y = 230, dir = Direction. EastSouth,}, --����
							[2] = {npcID = 21256, mapID = 415, x = 34, y = 229, dir = Direction. EastSouth,}, --
							[3] = {npcID = 21257, mapID = 415, x = 34, y = 233, dir = Direction. EastSouth,}, --
							[4] = {npcID = 21258, mapID = 415, x = 32, y = 228, dir = Direction. EastSouth,}, --
							[5] = {npcID = 21259, mapID = 415, x = 32, y = 235, dir = Direction. EastSouth,}, --
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
						[1] ={npcID = 21263, taskID = {1711}, index = 1}, --ɾ������
						[2] ={npcID = 21256, taskID = {1711}, index = 2}, --
						[3] ={npcID = 21257, taskID = {1711}, index = 3}, --
						[4] ={npcID = 21258, taskID = {1711}, index = 4}, --
						[5] ={npcID = 21259, taskID = {1711}, index = 5}, --
						},
				        },
                         },
			 {type="deleteFollow", param = {npcs = {21239},},},--ɾ����褸���
			{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21239, mapID = 415, x = 36, y = 230, dir = Direction. WestSouth,}, --���
						},
					},
			},
		        {type="openDialog", param={dialogID = 1779},},
			{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 415, x = 16, y = 224, tarMapID = 124, tarX = 47, tarY = 192},--����˽�д�����
							},
						},
			},
			},
		},
	},
[1712] =
         {              

		name = "Ѱ��Ԭ��",	--��������
		startNpcID = 21239,	--������ʼnpc
		endNpcID = nil,	        --�������npc
		preTaskData = {1711},	--����ǰ������û����nil
		nextTaskID = 1713,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1786,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --�������
			{
			mineIndex = 1,		--��һ����
			scriptID = 531,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1780,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21264, x = 120, y = 193,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21219, x = 118, y = 193,  noDelete = true},
					{npcID = 21220, x = 120, y = 195,  noDelete = true},
					{npcID = 21221, x = 116, y = 193,  noDelete = true},
					{npcID = 21222, x = 120, y = 197,  noDelete = true},
			},
			posData = {mapID = 124, x = 121, y = 192}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --�ٴ��ؽ�
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 532,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1782,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21265, x = 167, y = 201,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21219, x = 165, y = 199,  noDelete = true},
					{npcID = 21220, x = 169, y = 199,  noDelete = true},
					{npcID = 21221, x = 171, y = 197,  noDelete = true},
					{npcID = 21222, x = 163, y = 197,  noDelete = true},
			},
			posData = {mapID = 124, x = 167, y = 201}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --��ѫ
			{
			mineIndex = 3,		--��������
			scriptID = 533,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1784,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 124, x = 201, y = 122}, --��������
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
						[1] ={npcID = 21239, taskID = {1711}, index = 1}, --ɾ�����
						},
				        },
                         },
			        {type="createFollow", param = {npcs = {21239},},},--������褸���
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21266, mapID = 124, x = 201, y = 122, dir = Direction. EastNorth,}, --��ѫ
							[2] = {npcID = 21219, mapID = 124, x = 199, y = 120, dir = Direction. EastNorth,}, --
							[3] = {npcID = 21220, mapID = 124, x = 203, y = 120, dir = Direction. EastNorth,}, --
							[4] = {npcID = 21221, mapID = 124, x = 197, y = 118, dir = Direction. EastNorth,}, --
							[5] = {npcID = 21222, mapID = 124, x = 205, y = 118, dir = Direction. EastNorth,}, --
						},
					},
			},
                                  },
			[TaskStatus.Done]		=
			{
			{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1711, index = 1},--ɾ��˽�д�����
							},
						},
				},
			{type="deletePrivateNpc",
				  param={
						npcs =
						{
						[1] ={npcID = 21266, taskID = {1712}, index = 1}, --ɾ����ѫ
						[2] ={npcID = 21219, taskID = {1712}, index = 2}, --
						[3] ={npcID = 21220, taskID = {1712}, index = 3}, --
						[4] ={npcID = 21221, taskID = {1712}, index = 4}, --
						[5] ={npcID = 21222, taskID = {1712}, index = 5}, --
						},
				        },
                         },
			 {type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21282, mapID = 124, x = 201, y = 122, dir = Direction. EastNorth,}, --��ѫ
						},
					},
			},
		        {type="openDialog", param={dialogID = 1786},},
			},
		},
	},
[1713] =
         {              

		name = "�´�������",	--��������
		startNpcID = 21282,	--������ʼnpc
		endNpcID = nil,	        --�������npc
		preTaskData = {1712},	--����ǰ������û����nil
		nextTaskID = 1714,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1794,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --���󽫾�
			{
			mineIndex = 1,		--��һ����
			scriptID = 534,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1788,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21267, x = 69, y = 151,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21269, x = 69, y = 153,  noDelete = true},
					{npcID = 21270, x = 67, y = 151,  noDelete = true},
					{npcID = 21271, x = 69, y = 155,  noDelete = true},
					{npcID = 21272, x = 65, y = 151,  noDelete = true},
			},
			posData = {mapID = 416, x = 70, y = 150}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --���󻤷�
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 535,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1790,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21268, x = 97, y = 195,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21269, x = 99, y = 193,  noDelete = true},
					{npcID = 21270, x = 99, y = 197,  noDelete = true},
					{npcID = 21271, x = 101, y = 190,  noDelete = true},
					{npcID = 21272, x = 101, y = 199,  noDelete = true},
			},
			posData = {mapID = 416, x = 97, y = 195}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --��ħ
			{
			mineIndex = 3,		--��������
			scriptID = 536,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1792,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 416, x = 135, y = 159}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="createPrivateTransfer",
					param={
							transfers =
							{
								[1] = {mapID = 124, x = 231, y = 122, tarMapID = 416, tarX = 157, tarY = 39},--����˽�д�����
							},
						},
			},
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21273, mapID = 416, x = 135, y = 159, dir = Direction. EastNorth,}, --��ħ
							[2] = {npcID = 21269, mapID = 416, x = 137, y = 157, dir = Direction. EastNorth,}, --
							[3] = {npcID = 21270, mapID = 416, x = 133, y = 157, dir = Direction. EastNorth,}, --
							[4] = {npcID = 21271, mapID = 416, x = 137, y = 155, dir = Direction. EastNorth,}, --
							[5] = {npcID = 21272, mapID = 416, x = 133, y = 155, dir = Direction. EastNorth,}, --
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
						[1] ={npcID = 21273, taskID = {1713}, index = 1}, --ɾ����ħ
						[2] ={npcID = 21269, taskID = {1713}, index = 2}, --
						[3] ={npcID = 21270, taskID = {1713}, index = 3}, --
						[4] ={npcID = 21271, taskID = {1713}, index = 4}, --
						[5] ={npcID = 21272, taskID = {1713}, index = 5}, --
						[6] ={npcID = 21282, taskID = {1712}, index = 1}, --
						},
				        },
                         },
		        {type="openDialog", param={dialogID = 1794},},
			},
		},
	},
[1714] =
         {              

		name = "��ɱԬ��",	--��������
		startNpcID = nil,	--������ʼnpc
		endNpcID = nil,	        --�������npc
		preTaskData = {1713},	--����ǰ������û����nil
		nextTaskID = 1801,	--�����������û����nil
		startDialogID = nil,	--������Ի�IDû����nil
		endDialogID = 1801,	--������Ի�IDû����nil
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
		[1] = {type='Tmine',param =     --�ױ�ͳ��
			{
			mineIndex = 1,		--��һ����
			scriptID = 537,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1795,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21274, x = 174, y = 101,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21276, x = 172, y = 99,  noDelete = true},
					{npcID = 21277, x = 176, y = 99,  noDelete = true},
					{npcID = 21271, x = 178, y = 97,  noDelete = true},
					{npcID = 21272, x = 170, y = 97,  noDelete = true},
			},
			posData = {mapID = 416, x = 174, y = 101}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[2] = {type='Tmine',param =     --�����ܹ�
			{
			mineIndex = 2,		--�ڶ�����
			scriptID = 538,         --
			lastMine = false,	--�Ƿ�Ϊ���һ����
			dialogID = 1797,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			                {npcID = 21275, x = 187, y = 189,  noDelete = true,},--(���꣬����ID����ЧID��)Ŀ������Ƿ�ɾ��npc��
					{npcID = 21276, x = 185, y = 189,  noDelete = true},
					{npcID = 21277, x = 187, y = 191,  noDelete = true},
					{npcID = 21271, x = 183, y = 189,  noDelete = true},
					{npcID = 21272, x = 187, y = 193,  noDelete = true},
			},
			posData = {mapID = 416, x = 188, y = 188}, --��������
			bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		[3] = {type='Tmine',param =     --Ԭ��
			{
			mineIndex = 3,		--��������
			scriptID = 539,         --
			lastMine = true,	--�Ƿ�Ϊ���һ����
			dialogID = 1799,        --���������򿪵ĶԻ���
			npcsData =			--ˢ��npc����
			{
			},
			posData = {mapID = 416, x = 89, y = 250}, --��������
			bor = true,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
		},
		triggers = --���񴥷���
		{
			[TaskStatus.Active] =
				{
				{type="deletePrivateTransfer",
					param={
							transfers =
							{
								{taskID = 1712, index = 1},--ɾ��˽�д�����
							},
						},
				},
				{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21278, mapID = 416, x = 89, y = 250, dir = Direction. EastSouth,}, --Ԭ��
							[2] = {npcID = 21276, mapID = 416, x = 88, y = 248, dir = Direction. EastSouth,}, --
							[3] = {npcID = 21277, mapID = 416, x = 88, y = 252, dir = Direction. EastSouth,}, --
							[4] = {npcID = 21271, mapID = 416, x = 86, y = 252, dir = Direction. EastSouth,}, --
							[5] = {npcID = 21272, mapID = 416, x = 86, y = 248, dir = Direction. EastSouth,}, --
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
						[1] ={npcID = 21278, taskID = {1714}, index = 1}, --ɾ��Ԭ��
						[2] ={npcID = 21276, taskID = {1714}, index = 2}, --
						[3] ={npcID = 21277, taskID = {1714}, index = 3}, --
						[4] ={npcID = 21271, taskID = {1714}, index = 4}, --
						[5] ={npcID = 21272, taskID = {1714}, index = 5}, --
						},
				        },
                         },
		        {type="deleteFollow", param = {npcs = {21228},},},--ɾ����߸���
			{type="createPrivateNpc",  --˽��npc����
				param={
						npcs =
						{
							[1] = {npcID = 21228, mapID = 416, x = 89, y = 250, dir = Direction. EastSouth,}, --���
						},
					},
			},
		        {type="openDialog", param={dialogID = 1801},},
			
			},
		},
	},

}

table.copy(MainTaskDB41_45, NormalTaskDB)
