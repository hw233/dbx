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
		preTaskData = nil,	--����ǰ������û����nil
		nextTaskID = nil,
		startDialogID =	nil,	--������Ի�IDû����nil
		endDialogID = nil,	--������Ի�IDû����nil
		taskType2 = TaskType2.Daily,		-- ��������
		content = "<font color ='#FFFFFFFF'>�ۼ�����200ֻ����ȼ����5�����ڵĹ���</font>",		-- ������־����ʾ�ģ���������
		rewards ={						-- ������
			[TaskRewardList.player_xp] 	= 1000,
			[TaskRewardList.player_pot] = 200,
			[TaskRewardList.player_tao]	= 100,
			[TaskRewardList.pet_xp]		= 100,	
			[TaskRewardList.pet_tao]	= 100,	
		},
		consume	=--��������û����{}
		{
			
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type= "TkillMonster",param = {monsterID	= {-5,5},targetCount = 10,currentCount = 0 },tip = "��ɱ200ֻ����ȼ����Ϊ5�Ĺ���"},
		},
		triggers = --���񴥷���
		{
			
		},
	}
}