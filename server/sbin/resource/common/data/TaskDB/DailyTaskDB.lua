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
			[1] = {type= "TkillMonster",param = {monsterID	= {-5,5},targetCount = 2,currentCount = 0 },tip = "��ɱ200ֻ����ȼ����Ϊ5�Ĺ���"},
		},
		triggers = --���񴥷���
		{
			
		},
		quitDesc = "������ǰ����������Ƚ���ɾ����ͬʱ����һ�ε��տ���ɴ�������ȷ����",
	}
}