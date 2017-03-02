--[[MainTaskDB.lua
	��������(����ϵͳ)
]]
--{type='Tarea',param =	{mapID = 2 , x = 2, y =	3, bor = true},},
--{type='Tscript',param	= {scriptID = 203 , count = 2, bor = true},},
--{type = "npcEscape",	param =	{npcs =	{{npcID	= 3, x = 50, y = 50}},}}, --npc���ܵ�Ŀ�����ʧ
--preTaskData =	{2001},
--preTaskData =	{condition = "and",{2002,2003}},
--preTaskData =	{condition = "or",{2002,2003}},
--preTaskData =	nil,

INIT_DIALOGID =	100 --�����Ի�
INIT_TASKID =	1001 --�����Ի�
NormalTaskDB =
{
	[2002] =
	{

		name = "��������1",	--��������
		startNpcID = 22562,	--������ʼnpc
		endNpcID = 20056,	--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 2003,	--�����������û����nil
		startDialogID =	1,	--������Ի�IDû����nil
		endDialogID = 51,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 300,    --����
			[TaskRewardList.player_pot] = 300,  	--����Ǳ��
			--[TaskRewardList.money] = 200,       --����
			--[TaskRewardList.cashMoney] = 400, --��Ԫ��
			--[TaskRewardList.goldCoin] = 500,  --��Ԫ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			--[1] = {type='TautoMeet',param = {mapID = 1 , x = 120, y = 47, bor =	false},},---����һ�������Զ�����
			--[1] =	{type='Tscript',param =	{scriptID = 203	, count	= 1, ignoreResult = true, bor =	true},},--����ʤ��
			--lostTransfer = {mapID = , x = , y =},
			[1] = {type='Tscript',param = {scriptID	= 203 ,	count =	1, bor = true},}, --��һ���ű�ս��(�ű�ս��ID 203������)
			[2] = {type='Tmine',param = --���߲���Ŀ��
			{
				mineIndex = 1,		--��һ����
				lastMine = false,	--�Ƿ�Ϊ���һ����
				scriptID = 203,
				dialogID = 1,
				npcsData =			--ˢ��npc����
				{
					{npcID = 20, x = 98, y = 78, noDelete = true,},--(���꣬����ID����ЧID�����������򿪵ĶԻ���(��һ������))Ŀ������Ƿ�ɾ��npc��
					{npcID = 21, x = 99, y = 78, noDelete = true},
				},
				posData	= {mapID = 2, x	= 96, y	= 78}, --��������
				bor = false,	--���Ϊtrue����ɴ�Ŀ������ֱ�����
			},
			},
			[3] = {type='Tmine',param =
			{
				mineIndex = 2,
				lastMine = true,
				scriptID = 203 ,
				dialogID = 1,
				--lostTransfer = {mapID = , x = , y =},--------�¼ӣ��������ս�����ܣ����͵�ָ����ͼ
				npcsData =
				{
					{npcID = 20, x = 198, y	= 178, noDelete =	true,},
					{npcID = 21, x = 199, y	= 178, noDelete =	true},
				},
				posData	= {mapID = 2, x	= 196, y = 178},
				bor = false,
			},
			},
			[4] = {type='Tarea',param = {mapID = 2 , x = 164, y = 72, bor =	false},},-------����ָ������
			[5] = {type='TlearnSkill',param	= {skillID = 164, tarLevel = 2 , bor = false},},--ѧϰ�ض����ܵ����ټ�
			--[6] = {type='TobtainPet',param	= {petID  = xx, count = 1 , bor = false},},--ѧϰ�ض����ܵ����ټ�  bor= true ֻҪ���һ������Ŀ�� ���������ɡ�
			--[[[7] = {type='TcollectGuard',param =   ---�ɼ���Ʒս��
				{
					mpwID = 2008,--�ɼ���ʵ��ID
					scriptID= 405,
					dialogID = 2202,
					npcsData =			--ˢ��npc����
					{
						{npcID = 20804, x = 187, y = 105, },
						{npcID = 20805, x = 187, y = 105, },
						{npcID = 20806, x = 187, y = 105, },
					},
						
				}
			}]]
			--[8] = {type = "TgetItem", param = {itemID = 1051013, count = 1 ,bor = true},}--����Ŀ���ȡ��Ʒ
			--[9] = {type='TcontactSeal',param = {sealID = xxx�� bor = false},},---����Ŀ�� ���磺�ݻ����ƻ����󷨻��ߴݻٲɼ�����Ʒ
			--[10] = {type='TattainLevel',param = {level = 30,bor = true},},---�ȼ�����Ŀ��
			--[11] = {type='Tride',param = {rideID = 10, bor = false},}, ------�����������Ŀ��

		},
		triggers = --���񴥷���
		{
			--�����м�npc���䵽�Ի���
			[TaskStatus.Active] =
			{
				{type = "createFollow", param = {npcs = {1,2,3},}},				--����ָ��npc����(����npcID)
				{type = "getItem", param = {itemID = 100225, count = 5,}},			--���ָ����������Ʒ(������ƷID������)
			--	{type = "doSwithScene", param = {tarMapID = 2,	x = 5, y = 5,}},	--���͵���һ������
			--	{type = "getRide", param = {rideID = 2, count = 5,}},				--���ָ����������
			--	{type = "getPet", param = {petID = 2, count = 5,}},				--���ָ����������
			--	{type = "enterScriptFight", param = {scriptID = 203, mapID = 2}},	--����ű�ս��
			--	{type = "enterEctype",	param =	{ectypeID = 5,}},					--���븱��
			--	{type = "autoTrace", param = {tarMapID	= 3, x = 28, y = 92,npcID = 20006,},}, --Ѱ·������
			--	{type = "playAnimation", param = {playID = 1002, sceneID = 1,},},				--����ָ��ID�Ľű�����(��������)
			--	{type = "flyEffect", param = {flyEffectID = 1}},--�ɽ�����
			--	{type = "createCage", param = {position = {mapID = ,x = ,y =},}},	--��������

			{type = "createMine",
					param =
					{
						{mapID = 2, scriptID = 203},
						{mapID = 3, scriptID = 208},
					}
				},	--���������ף�����һ�������������ŵ�ͼ�������ŵ�ͼ���ϵ�д�������
			{type = "createMine",
					param =
					{
					{mapID = 103, scriptID = {118,119},fightMapID = nil,stepFactor = 0.2,mustCatch = false},
					}
				} --���������ף����һ��������һ�ŵ�ͼ�ϣ���Ҫ�����������ף������������׵�����£�д�������
			},
			[TaskStatus.Done]		=
			{
				{type = "createPrivateNpc", ----------����˽��npc
					param={
						npcs =
						{
								[1] = {npcID = 20029,	mapID =	101, x = 88, y = 218,dir = Direction.WestSouth,},
						},
					},
				},
				{type = "deletePrivateNpc", ----------ɾ���ű�Χ��
				param={
						npcs =
						{
							{npcID = 20029,	taskID = {1035}, index = 1},
						},
					},
				},
				{type = "createPrivateTransfer", ------����˽�д�����--
					param={
							transfers =
							{
								[1] = {mapID = 101, x =41, y =234, tarMapID = 102, tarX = 65, tarY = 172},
							},
						},
				},
				{type = "deletePrivateTransfer", ------ɾ��˽�д�����
					param={
							transfers =
							{
								{taskID = 1036, index = 1},
							},
						},
				},
				{type = "deleteFollow", param = {npcs = {3},}}, --�����״̬ɾ��ָ��ID��npc����
				{type = "npcEscape", param = {npcs = {{npcID =	3, x = 50, y = 50}},}},	--npc���ܵ�Ŀ�����ʧ
				--{type = "finishTask", param = {}},--�����������
				--{type = "recetiveTask", param = {taskIDs = {1}}},--������������,�ĳɱ�
				--�����޸ĳ�
				--{type = "finishTask", param = {recetiveTaskID = 1103}},--����������������һ������
				--{type = "finishTask", param = {recetiveTaskID = {1082,1084,1086,1088,1090,1092}}},--���������������¶������
				--{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
			    --{type = "removeMine", param = {}}, -- �Ƴ�������
				--{type = "enterScriptFight", param = {scriptID = 100, mapID = 8}}, --��������ʱֱ�ӽ���ս��
			},
			[TaskStatus.Finished]	=
			{
				{type = "openDialog", param={dialogID = 1},}, --���������ʱ��һ���Ի���
				{type = "openUI", param={v = "SkillBoard"},}  --�����������һ��UI
			}
		}
	},



---[1] = {type='Tarea',param = {}, location={mapID=101,x=245,y=109}, tip = "Ѱ������",linkTip = "����",count = 1,}, �ͻ���ָ��
---[2] = {type='Tride',param = {},tip = "��������"}�ͻ��˻����������Ŀ��

	[935] = 
	{
		name = "��������2",	--��������
		startNpcID = 22562,	--������ʼnpc
		endNpcID = 20056,	--�������npc
		preTaskData = {1003},	--����ǰ������û����nil
		nextTaskID = 2003,	--�����������û����nil
		startDialogID =	1,	--������Ի�IDû����nil
		endDialogID = 51,	--������Ի�IDû����nil
		taskType2 = TaskType2.Main,--��������
		school = nil,	--��������û����nil
		level =	{1,150},--�ȼ�����
		rewards	= --������û����{}
		{
			[TaskRewardList.player_xp] = 5000,   --��Ҿ���
			[TaskRewardList.pet_xp] = 5000,      --���ﾭ��
			[TaskRewardList.subMoney] = 300,    --����
			[TaskRewardList.player_pot] = 300,  	--����Ǳ��
			--[TaskRewardList.money] = 200,       --����
			--[TaskRewardList.cashMoney] = 400, --��Ԫ��
			--[TaskRewardList.goldCoin] = 500,  --��Ԫ��
		},
		consume	=--��������û����{}
		{
			["money"] = 100,
			["xp"] = 100,
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
		    --����ָ����Ʒ��װ��Ŀ�꣨����д�����
			[1] = {type='TwearEquip',param = {equipID	= 2001085, bor = false},},--����
			[2] = {type='TwearEquip',param = {equipID	= 2001091, bor = false},},--����
			[3] = {type='TwearEquip',param = {equipID	= 2001092, bor = false},},--ͷ��
			[4] = {type='TwearEquip',param = {equipID	= 2001093, bor = false},},--ս��
			[5] = {type='TwearEquip',param = {equipID	= 2001094, bor = false},},--����
			[6] = {type='TwearEquip',param = {equipID	= 2001094, bor = false},},--Ь��
		},
		triggers = --���񴥷���
		{
			
		},
	}

}