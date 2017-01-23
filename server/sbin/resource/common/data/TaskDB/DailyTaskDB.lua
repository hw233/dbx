--[[ DailyTaskDB.lua

    Author: Caesar
    Function: save the data for the DailyTask

]]

DailyTaskDB = 
{
	
	[40001] = 
	{
		name = "����֮·",			-- ��������
		level = {25,150} ,				-- ����ɽӵȼ�(��С�ȼ�--���ȼ�)
		school = nil,					-- ����ɽ�����
		remainCount = 1,
		taskType2 = TaskType2.Daily,		-- ��������
		content = "<font color ='#FFFFFFFF'>�ۼ�����200ֻ����ȼ����5�����ڵĹ��%s/200��</font>",		-- ������־����ʾ�ģ���������
		rewards ={						-- ������
			{
				type=RewardSelectType.All,
				{
					group = '1',
					{ t = 'subMoney',v = 1700,},
					{ t = 'xp',v = 3400,},
				},
			},
		},
		startNpcInfo = {y=134,x=68,name='����',id=10087,mapName='�ϵ���',mapID=34,},--������npc
		endNpcInfo = {y=62,x=188,name='����1',id=20198,mapName='������1',mapID=56,},--������npc
		recdesc ="<font color ='#FFFFFFFF'>�쵽�����Ĺ���ʿ������ȡ����ɣ�ֻ�轻����Ǯ�һ���Ҿ�����ȡ������ɺ��д������顢���н�����</font>",-------������־����ʾ�ģ�����˵���������ֶβ���������ʾ��ģ��
		targets = 
		{
			[1] = {type='TwearEquip',param = {},tip = "װ��12312", doneTip = "��װ����"}, --��һ���ű�ս��(�ű�ս��ID 203������)
			[2] = {type='TwearEquip',param = {},tip = "װ��2",doneTip = "��װ����"},
			[3] = {type='TwearEquip',param = {},tip = "װ��3",doneTip = "��װ����"},
			[4] = {type='TwearEquip',param = {},tip = "װ��4",doneTip = "��װ����"},-------����ָ������
			[5] = {type='TwearEquip',param = {},tip = "װ��5",doneTip = "��װ����"},--ѧϰ�ض����ܵ����ټ�
		},
	}

}