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
		rewards ={	
			{					-- ������
				type=RewardSelectType.All,
					{
						group ='1',
						{ t = 'pet.xp',v = 500,},
						{ t = 'xp',v = 1000,},
						{ t = 'subMoney',v = 1700,},
					},
			}
		},
		consume	=--��������û����{}
		{
			
		},
		targets	= --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type= "TkillMonster",param = {monsterID	= {-5,5},targetCount = 4,currentCount = 0 },tip = "��ɱ200ֻ����ȼ����Ϊ5�Ĺ���"},
		},
		triggers = --���񴥷���
		{
			
		},
	}
}