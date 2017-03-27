--[[ DailyTaskDB.lua

    Author: Caesar
    Function: save the data for the DailyTask

]]

DailyTaskDB = 
{
	
	[40001] = 
	{
		name = "ƽ������",			-- ��������
		level = {25,150} ,				-- ����ɽӵȼ�(��С�ȼ�--���ȼ�)
		school = nil,					-- ����ɽ�����
		startNpcID = 29081,	--������ʼnpc
		endNpcID = 29081,	--�������npc
		endNpcInfo = {name = "���꽫��",mapID = 10 ,x = 52,y = 230 },
		preTaskData = nil,	--����ǰ������û����nil
		nextTaskID = nil,
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Daily,		-- ��������
		content = "<font color ='#FFFFFFFF'>�ۼ�����200ֻ����ȼ����5�����ڵĹ���,��ǰ�ѻ�ɱ��%d/%dֻ��</font>",		-- ������־����ʾ�ģ���������
		rewards ={	
			[TaskRewardList.player_xp] 	= 1000,
			[TaskRewardList.pet_xp]		= 100,	
			[TaskRewardList.pet_tao]	= 100,	
		},
		consume	=--��������û����{}
		{
			
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type= "TkillMonster",param = {monsterID	= {-5,5},targetCount = 20,currentCount = 0 },tip = "��ɱ200ֻ����ȼ����Ϊ5�Ĺ���"},
		},
		triggers = --���񴥷���
		{
			
		},
		quitDesc = "������ǰ����������Ƚ���ɾ����ͬʱ����һ�ε��տ���ɴ�������ȷ����",
	},
	[40002] = 
	{
		name = "���������ս",			-- ��������
		level = {1,150},				-- ����ɽӵȼ�(��С�ȼ�--���ȼ�)
		school = nil,					-- ����ɽ�����
		startNpcID = 40016,	--������ʼnpc
		endNpcID = {40011,40012,40013,40014,40015},	--�������npc���������Ϊ����Ϊ�˸���Ȩ�ز������
		endNpcInfo = {name = "����",mapID = 13 ,x = 52,y = 145 },
		preTaskData = nil,	--����ǰ������û����nil
		nextTaskID = 40003,
		startDialogID =	30102,	--������Ի�IDû����nil�������������Ϊ�˸��ݶԻ���Ȩ�ز������
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Daily,		-- ��������
		content = "<font color ='#FFFFFFFF'>��%s�Ի���������ս..............</font>",		-- ������־����ʾ�ģ���������
		rewards ={	
			[TaskRewardList.player_xp] 	= 1000,
			[TaskRewardList.pet_xp]		= 100,	
			[TaskRewardList.pet_tao]	= 100,	
		},
		consume	=--��������û����{}
		{
			
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = 
			{
				type= "TrandomFightScript",param = {count = 0},
			}
		},
		triggers = --���񴥷���
		{
			
		},
		quitDesc = "������ǰ����������Ƚ���ɾ����ͬʱ����һ�ε��տ���ɴ�������ȷ����",
	},
	[40003] = 
	{
		name = "���������ս",			-- ��������
		level = {1,150},				-- ����ɽӵȼ�(��С�ȼ�--���ȼ�)
		school = nil,					-- ����ɽ�����
		startNpcID = nil,	--������ʼnpc
		endNpcID = 40016,	--�������npc���������Ϊ����Ϊ�˸���Ȩ�ز������
		endNpcInfo = {name = "����",mapID = 13 ,x = 52,y = 145 },
		preTaskData = 40002,	--����ǰ������û����nil
		nextTaskID = nil,
		startDialogID =	30102,	--������Ի�IDû����nil�������������Ϊ�˸��ݶԻ���Ȩ�ز������
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Daily,		-- ��������
		content = "<font color ='#FFFFFFFF'>ǰ�������ǣ�������ս���</font>",		-- ������־����ʾ�ģ���������
		rewards ={	
			[TaskRewardList.player_xp] 	= 1000,
			[TaskRewardList.pet_xp]		= 100,	
			[TaskRewardList.pet_tao]	= 100,	
		},
		consume	=--��������û����{}
		{
			
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = 
			{
				type= "TrandomFightScript",param = {count = 0},tip = "��ɱ200ֻ����ȼ����Ϊ5�Ĺ���",
			}
		},
		triggers = --���񴥷���
		{
			
		},
		quitDesc = "������ǰ����������Ƚ���ɾ����ͬʱ����һ�ε��տ���ɴ�������ȷ����",
	},
	
}