--[[DialogModelDB.lua
	�Ի�����(�Ի�ϵͳ)
	1-100���Ų���
	100-10000 ���߶Ի�
	10001-20000���� ���ָ����ĶԻ�ID����
	20001-21000���ǹ̶�npc�Լ�Ĭ�϶Ի�
	21001-26000ͨ�����Լ�����
	27001-27100��������
	27101-27150�����Խ�
	30001-35000ѭ������30100-30300 ��������
	35001-35099ץ������
	35100-35199���޽���
	���ڸ����õ���ID��3000 ---3100
	��һ�������������������������ʱ��ע�������
	50100-50199 ÿ������������
]]

DialogModelDB =
{
-------------------�����������⴦��Ի�-----------------------------task---
    [108] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.QYD}},
		},
		speakerID = 20002,
		soundID = nil,
		txt = "�Ҳ������˴������������ţ�������������һ��ǬԪ������̫�������������ţ����㽵����ħ���죡����ȥѰ����ͯ�������·���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1004}},
						},
			}
		},
	},
	 [118] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.TYD}},
		},
		speakerID = 20002,
		soundID = nil,
		txt = "�Ҳ������˴������������ţ�������������һ����Դ������������ʦ�������ţ����㽵����ħ���죡����ȥѰ����ͯ�������·���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1009}},
						},
			}
		},
	},
      [128] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.JXS}},
		},
		speakerID = 20002,
		soundID = nil,
		txt = "�Ҳ������˼䴫�����������ţ�������������һ�ɽ�ϼɽ�����������������ţ����㽵����ħ���죡����ȥѰ����ͯ�������·���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1014}},
						},
			}
		},
	},
       [138] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.PLG}},
		},
		speakerID = 20002,
		soundID = nil,
		txt = "�Ҳ������˼䴫�����������ţ�������������һ�������������Ϻ���Ů�������ţ����㽵����ħ���죡����ȥѰ����ͯ�������·���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1019}},
						},
			}
		},
	},
        [148] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.ZYM}},
		},
		speakerID = 20002,
		soundID = nil,
		txt = "�Ҳ������˼䴫�����������ţ�������������һ�����������Ż��컯�������ţ����㽵����ħ���죡����ȥѰ����ͯ�������·���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1024}},
						},
			}
		},
	},
        [158] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.YXG}},
		},
		speakerID = 20002,
		soundID = nil,
		txt = "�Ҳ������˼䴫�����������ţ�������������һ�����������Ŵ��������������ţ����㽵����ħ���죡����ȥѰ����ͯ�������·���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1029}},
						},
			}
		},
	},

----------------------------31-32����������NPC�󶨶Ի�--------------------------
	[1110] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.HasTask, param = {taskID = 1153, statue = true}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ｫ�����ںδ�������ɱ����Χ��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1153}},
					{action = DialogActionType.RecetiveTask, param = {taskID = 1154}},
					{action = DialogActionType.Goto, param = {dialogID = 1111}},

						},
			}
		},
	},

	[1120] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.HasTask, param = {taskID = 1156, statue = true}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ｫ�������ѽ���λ�������¡�ˡ��ֱ�ԣ��Խ���֮���������Բ��������١�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1156}},
					{action = DialogActionType.RecetiveTask, param = {taskID = 1157}},
					{action = DialogActionType.Goto, param = {dialogID = 1121}},

						},
			}
		},
	},

	[1166] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 0,
		soundID = nil,
		txt = "ͯ�ӣ����ѻ�������޵Ļ��ǣ��������������ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 1168,itemsInfo = {{itemID = 1041018, count = 1},{itemID = 1041019, count = 1},{itemID = 1041020, count = 1},{itemID = 1041021, count = 1}}},},
				},
			},
		},
	},

	[1172] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.HasTask, param = {taskID = 1169, statue = true}},
		},
		speakerID = 20639,
		soundID = nil,
		txt = "С���ޣ�û�뵽�㾹Ȼ���һ�������ξ��������������ˡ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1173}},

						},
			}
		},
	},

	[1177] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.HasTask, param = {taskID = 1171, statue = true}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ƹǽ����������������ѱ���ɱ�����������ƣ���������ħ�����ֵ��ң�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1178}},

						},
			}
		},
	},

--------------------31-32����������NPC�󶨶Ի����------------------------------------

	[1221] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.QYD}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������Ī�ţ�������ʦ���ʲߣ���ʦ�����а취�ɽ�������֮����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1206}},
						},
			}
		},
	},

         [1222] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.TYD}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������Ī�ţ�������ʦ���ʲߣ���ʦ�����а취�ɽ�������֮����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1207}},
						},
			}
		},
	},

         [1223] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.JXS}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������Ī�ţ�������ʦ���ʲߣ���ʦ�����а취�ɽ�������֮����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1208}},
						},
			}
		},
	},

         [1224] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.PLG}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������Ī�ţ�������ʦ���ʲߣ���ʦ�����а취�ɽ�������֮����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1209}},
						},
			}
		},
	},

	 [1225] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.ZYM}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������Ī�ţ�������ʦ���ʲߣ���ʦ�����а취�ɽ�������֮����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1210}},
						},
			}
		},
	},

	[1226] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.YXG}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������Ī�ţ�������ʦ���ʲߣ���ʦ�����а취�ɽ�������֮����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1211}},
						},
			}
		},
	},

	----------------------33-34�����߶Ի�-----------------------
	 [1287] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.QYD}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���²�������ٻ�������������Ԯ����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1210}},
						},
			}
		},
	},
	[1288] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.TYD}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���²�������ٻ�������������Ԯ����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1211}},
						},
			}
		},
	},
	[1289] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.JXS}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���²�������ٻ�������������Ԯ����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1212}},
						},
			}
		},
	},
	[1290] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.PLG}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���²�������ٻ�������������Ԯ����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1213}},
						},
			}
		},
	}, 
	[1291] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.ZYM}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���²�������ٻ�������������Ԯ����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1214}},
						},
			}
		},
	},
	[1292] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.YXG}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���²�������ٻ�������������Ԯ����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1215}},
						},
			}
		},
	},
	[1298] =            -------------��������33-34�������ɽ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.HasTasks, param = {taskIDs = {1217,1224}, statue = true}},	
		},
		speakerID = 20726,
		txt = "���̵��ӣ��ҿ������㵽������",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene , param ={tarMapID  = 13, tarX = 100, tarY = 100}},
				},
			},

		},
	},
	[1299] =            -------------��������33-34�������ɽ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.HasTasks, param = {taskIDs = {1223}, statue = true}},	
		},
		speakerID = 30256,
		txt = "���̵��ӣ��ҿ������㵽����ɽ��",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "����ɽ",
				actions =
				{
					{action = DialogActionType.SwithScene , param ={tarMapID  = 114, tarX = 57, tarY = 113}},
				},
			},

		},
	},
		----------------------------����35-36�Ի����ɷֶ�---------------------
	[1332] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.QYD}},----ǬԪ��
		},
		speakerID = 20820,
		soundID = nil,
		txt = "û����ħ��������ھ��������Զ������ħ����������Ѿ���Ͷ����׿��ħ��������ӡ����ӡ���󷨷ֱ�λ��������ͼ���ĸ���ͬ��λ��ֻ�н�����Ĵ���ӡ�����ܿ���ħ������������ڡ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1333}},
						},
			}
		},
	},
	[1333] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.QYD}},----ǬԪ��
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ֻ�ܻ�ʦ����ʦ��ѯ�����кν���취��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1310}},
						},
			}
		},
	},
	[1337] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.TYD}},--��Դ��
		},
		speakerID = 20820,
		soundID = nil,
		txt = "û����ħ��������ھ��������Զ������ħ����������Ѿ���Ͷ����׿��ħ��������ӡ����ӡ���󷨷ֱ�λ��������ͼ���ĸ���ͬ��λ��ֻ�н�����Ĵ���ӡ�����ܿ���ħ������������ڡ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1338}},
						},
			}
		},
	},
	[1338] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.TYD}},--��Դ��
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ֻ�ܻ�ʦ����ʦ��ѯ�����кν���취��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1312}},
						},
			}
		},
	},
    [1342] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.JXS}},--��ϼɽ
		},
		speakerID = 20820,
		soundID = nil,
		txt = "û����ħ��������ھ��������Զ������ħ����������Ѿ���Ͷ����׿��ħ��������ӡ����ӡ���󷨷ֱ�λ��������ͼ���ĸ���ͬ��λ��ֻ�н�����Ĵ���ӡ�����ܿ���ħ������������ڡ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1343}},
						},
			}
		},
	},
	[1343] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.JXS}},--��ϼɽ
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ֻ�ܻ�ʦ����ʦ��ѯ�����кν���취��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1314}},
						},
			}
		},
	},
    [1347] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.PLG}},--������
		},
		speakerID = 20820,
		soundID = nil,
		txt = "û����ħ��������ھ��������Զ������ħ����������Ѿ���Ͷ����׿��ħ��������ӡ����ӡ���󷨷ֱ�λ��������ͼ���ĸ���ͬ��λ��ֻ�н�����Ĵ���ӡ�����ܿ���ħ������������ڡ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1348}},
						},
			}
		},
	},
	[1348] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.PLG}},--������
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ֻ�ܻ�ʦ����ʦ��ѯ�����кν���취��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1316}},
						},
			}
		},
	},
    [1352] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.ZYM}},--������
		},
		speakerID = 20820,
		soundID = nil,
		txt = "û����ħ��������ھ��������Զ������ħ����������Ѿ���Ͷ����׿��ħ��������ӡ����ӡ���󷨷ֱ�λ��������ͼ���ĸ���ͬ��λ��ֻ�н�����Ĵ���ӡ�����ܿ���ħ������������ڡ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1353}},
						},
			}
		},
	},
	[1353] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.ZYM}},--������
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ֻ�ܻ�ʦ����ʦ��ѯ�����кν���취��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1318}},
						},
			}
		},
	},
    [1357] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.YXG}},--������
		},
		speakerID = 20820,
		soundID = nil,
		txt = "û����ħ��������ھ��������Զ������ħ����������Ѿ���Ͷ����׿��ħ��������ӡ����ӡ���󷨷ֱ�λ��������ͼ���ĸ���ͬ��λ��ֻ�н�����Ĵ���ӡ�����ܿ���ħ������������ڡ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1358}},
						},
			}
		},
	},
	[1358] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.YXG}},--������
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ֻ�ܻ�ʦ����ʦ��ѯ�����кν���취��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1320}},
						},
			}
		},
	},
	---37~38������---------
	[1475] =    -----------����¬ֲ
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 20049,
		txt = "�����������һ�����ˣ�����ʱ���ڻʹ����ѱ��£���Ҳ���ȥ�ɡ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 131, tarX = 35, tarY = 10}},--�л�����
						},
			}
		},
	},
	[1476] =             -------------��������37-38������ID1426���Ͻ���Ʒ�����˲Ʋ���
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		{condition = DialogCondition.HasTask, param = {taskID = 1426, statue = true}},	
		},
		speakerID = 20944,
		soundID = nil,
		txt = "�ҵĶ������ҵ�����",
		options = 
		{
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 1426,itemsInfo = {{itemID = 1041010, count = 1}}},},
				},
			},
		},
	},
	[1477] =             -------------��������37-38������ID1420���Ͻ���Ʒ��������ԯͼ��
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		{condition = DialogCondition.HasTask, param = {taskID = 1420, statue = true}},	
		},
		speakerID = 20929,
		soundID = nil,
		txt = "����֮��������֮�𣬾���������ԯͼ�ر����ϣ��㶼��������",
		options = 
		{
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 1420,itemsInfo = {{itemID = 1041009, count = 1},{itemID = 1041011, count = 1},{itemID = 1041012, count = 1}}},},
				},
			},
		},
	},
	[1478] =             -------------��������37-38������ID1423���Ͻ���Ʒ������֮����
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		{condition = DialogCondition.HasTask, param = {taskID = 1423, statue = true}},	
		},
		speakerID = 20929,
		soundID = nil,
		txt = "����֮���˾��ѱ��µĹؼ�����֮�����ң�ƶ�����з������ѱ��¡�",
		options = 
		{
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 1423,itemsInfo = {{itemID = 1041013, count = 1}}},},
				},
			},
		},
	},
	[1533] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29030,
		soundID = nil,
		txt = "��лӢ������������ȡ�õĲ��Ͻ������⣬�Ϸ�����޸�����Ϊ������������䡣",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 1511,itemsInfo = {{itemID = 1041005, count = 1},{itemID = 1041008, count = 1},},},},
				},
			}
		},
	},
	[1547] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29030,
		soundID = nil,
		txt = "Ӣ�������ˣ������ʩ��Ϊ���ٻ����������꣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 1516,itemsInfo = {{itemID = 1041006, count = 1},{itemID = 1041007, count = 1},},},},
				},
			}
		},
	},
---ѭ������--------------------------------------------------------------
----------�������Ի���ID��4001~4500-----------
	[4001] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25001,
		txt = "�����Ϲ���ħɽ�������걻�������ڷ���̨�ڣ��������ػ����ɣ���Ҫɱ����ʹ�죡",
		options =
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4001,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4002] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25002,
		
		txt = "�����Ϲ���ħ��ԭ������ϧ���ڲ������У���ǿ�����ڷ���̨�£����ն�Ҫ����ѪծѪ����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4002,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4003] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25003,
		txt = "�����Ϲ���ħ���������걻���̷��ڷ���̨�£����ձ�Ҫ���̸������ۣ�",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4003,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4004] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25004,
		txt = "�����Ϲ���ħڤ����������ͦ�ؽ̣�ȴ�����̷��ڷ���̨�£��������Ʒ��������Ҫ���ؽ̸�����̣�",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4004,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4005] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25005,
		txt = "�����Ϲ���ħ���꣬���걻�������ڷ���̨�ڣ��������ػ����ɣ���Ҫɱ����ʹ�죡",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4005,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4006] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25006,
		txt = "�����Ϲ���ħ����������ϧ���ڲ������У���ǿ�����ڷ���̨�£����ն�Ҫ����ѪծѪ����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4006,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4007] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25007,
		txt = "�����Ϲ���ħ���࣬���걻���̷��ڷ���̨�£����ձ�Ҫ���̸������ۣ�",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4007,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4008] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25008,
		txt = "�����Ϲ���ħ���ᣬ������ͦ�ؽ̣�ȴ�����̷��ڷ���̨�£��������Ʒ��������Ҫ���ؽ̸�����̣�",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4008,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4009] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25009,
		txt = "�����Ϲ���ħ�⥣����걻�������ڷ���̨�ڣ��������ػ����ɣ���Ҫɱ����ʹ�죡",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4009,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4010] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25010,
		txt = "�����Ϲ���ħ���ߣ�����ϧ���ڲ������У���ǿ�����ڷ���̨�£����ն�Ҫ����ѪծѪ����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4010,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4011] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25011,
		txt = "�����Ϲ���ħ�ժY�����걻���̷��ڷ���̨�£����ձ�Ҫ���̸������ۣ�",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4011,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4012] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25012,
		txt = "�����Ϲ���ħ��ħ��������ͦ�ؽ̣�ȴ�����̷��ڷ���̨�£��������Ʒ��������Ҫ���ؽ̸�����̣�",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4012,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4013] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25013,
		txt = "�����Ϲ���ħӢ�� �����걻�������ڷ���̨�ڣ��������ػ����ɣ���Ҫɱ����ʹ�죡",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4013,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4014] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25014,
		txt = "�����Ϲ���ħ���𣬵��겻�������ڷ���̨�£����ձ�Ҫ���˼䵷���췭�ظ���",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4014,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4015] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25015,
		txt = "�����Ϲ���ħ��ţ���뺣��ط��꣬���˸����ң�",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4015,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4016] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25016,
		txt = "�����Ϲ���ħ���ţ��ᷨ��ͨ�죬����غ��������ܵУ�",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4016,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4017] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25017,
		txt = "�����Ϲ����޿����������������ֻ��������ȡʳ�ĳ�����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4017,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4018] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25018,
		txt = "�����Ϲ��������ɣ����겻�����̣���ǿ�з��ڷ�ħ̨�£����ն�Ҫ����ʮ�����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4018,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4019] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25019,
		txt = "�����Ϲ���ħ���ԣ����겻�����̣���ǿ�з��ڷ�ħ̨�£����ն�Ҫ����ʮ�����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4019,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4020] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25020,
		txt = "�����Ϲ���ħ��â�����겻�����̣���ǿ�з��ڷ�ħ̨�£����ն�Ҫ����ʮ�����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4020,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4021] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25021,
		txt = "�����Ϲ���ħ��ݣ����������ʯ����ץ�������࣬�����»�û���Ҳ��������£�",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4021,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4022] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25022,
		txt = "�����Ϲ���ħ���������ɱ¾���������������ǿ�ɱ֮������Ϻ��죿",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4022,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4023] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25023,
		txt = "�����Ϲ���ħ��⥣����ɱ¾���������������ǿ�ɱ֮������Ϻ��죿",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4023,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4024] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25024,
		txt = "�����Ϲ���ħ���ʣ����ɱ¾���������������ǿ�ɱ֮������Ϻ��죿",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4024,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4025] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25025,
		txt = "�����Ϲ�����������겻�����̣���ǿ�з��ڷ�ħ̨�£����ն�Ҫ����ʮ�����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4025,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4026] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25026,
		txt = "�����Ϲ����ޱط������겻�����̣���ǿ�з��ڷ�ħ̨�£����ն�Ҫ����ʮ�����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4026,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4027] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25027,
		txt = "�����Ϲ���ħţ�ڣ����겻�����̣���ǿ�з��ڷ�ħ̨�£����ն�Ҫ����ʮ�����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4027,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4028] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25028,
		txt = "�����Ϲ���ħ���ϣ����겻�����̣���ǿ�з��ڷ�ħ̨�£����ն�Ҫ����ʮ�����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4028,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4029] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25029,
		txt = "�����Ϲ���ħخ�ţ����겻�����̣���ǿ�з��ڷ�ħ̨�£����ն�Ҫ����ʮ�����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4029,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4030] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 25030,
		txt = "�����Ϲ���ħ���������겻�����̣���ǿ�з��ڷ�ħ̨�£����ն�Ҫ����ʮ�����",
		options = 
		{
			[1] = {
				showConditions = {{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},tiredness = 1,},},},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4030,mapID = nil,type = "heaven", value = 1,}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "������ö�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4031] =            ------------------���ָ���Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29008,
		soundID = nil,
		txt = "����̨һ��ħ<npcID>�Ʒ���������ױ���Ѫ�����Ҳ���һֱ������������䷢չ����Σ��һ��������ǰ��<mapID,x,y>����նɱ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		              {
				},	
			},
		},
	},
	[4032] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		{condition = DialogCondition.CheckTaskTeam, param = {playerNum = 2,playerLvlRange =10,taskLvlRange = {minLvl = 30,maxLvl =150},errorID=23,},},
		{condition = DialogCondition.CheckTaskTeam, param = {tiredness = 10,errorID=27,},},
		{condition = DialogCondition.HasTask, param = {taskID = 10008, statue = false,errorID = 28}},
		},
		speakerID = 29008,
		txt = "�ؽ��������Ϲ�аħ������Ϊ���˼䣬���������ܽ�����ħ����������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveSpecialTask, param = {taskID = 10008}},
				},
			},
		},
	},
----------ʦ������Ի���ID��4200~5000-----------------------------
----------------------�������ı�-------------------------------
     [4201] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 29040,
		
		txt = "��~ʦ���������Ʋ�������������ȡ��",
		options =
		{},
	},
     [4202] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		{condition = DialogCondition.Level, param = {level = 20, errorID = 29}},
		{condition = DialogCondition.HasTask, param = {taskID = 10001, statue = false, errorID = 30}},
		{condition = DialogCondition.CheckLoopTask, param = {taskID = 10001, errorID = 31}},
		},
		speakerID = 20004,
		soundID = nil,
		txt = "Խ�Ǵ�������ճ�����Խ�࣡���������ã�����������Щ���񽻸���ȥ����Ҳ���㴸�����ĵĴ�û��ᡣ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 10001}},
				},
			},
		},
	},
    [4203] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			
		},
		speakerID = 29041,
		
		txt = "��~ʦ���������Ʋ�������������ȡ��",
		options =
		{},
	},
    [4204] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		{condition = DialogCondition.Level, param = {level = 20, errorID = 29}},
		{condition = DialogCondition.HasTask, param = {taskID = 10002, statue = false, errorID = 30}},
		{condition = DialogCondition.CheckLoopTask, param = {taskID = 10002, errorID = 31}},
		},
		speakerID = 20006,
		
		txt = "Խ�Ǵ�������ճ�����Խ�࣡���������ã�����������Щ���񽻸���ȥ����Ҳ���㴸�����ĵĴ�û��ᡣ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 10002}},
				},
			},
		},
	},
    [4205] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			
		},
		speakerID = 29043,
		
		txt = "��~ʦ���������Ʋ�������������ȡ��",
		options =
		{},
	},
    [4206] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		{condition = DialogCondition.Level, param = {level = 20, errorID = 29}},
		{condition = DialogCondition.HasTask, param = {taskID = 10003, statue = false, errorID = 30}},
		{condition = DialogCondition.CheckLoopTask, param = {taskID = 10003, errorID = 31}},	
		},
		speakerID = 20008,
		
		txt = "Խ�Ǵ�������ճ�����Խ�࣡���������ã�����������Щ���񽻸���ȥ����Ҳ���㴸�����ĵĴ�û��ᡣ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 10003}},
				},
			},
		},
	},
    [4207] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 29042,
		
		txt = "��~ʦ���������Ʋ�������������ȡ��",
		options =
		{},
	},
    [4208] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		{condition = DialogCondition.Level, param = {level = 20, errorID = 29}},
		{condition = DialogCondition.HasTask, param = {taskID = 10004, statue = false, errorID = 30}},
		{condition = DialogCondition.CheckLoopTask, param = {taskID = 10004, errorID = 31}},	
		},
		speakerID = 20009,
		
		txt = "Խ�Ǵ�������ճ�����Խ�࣡���������ã�����������Щ���񽻸���ȥ����Ҳ���㴸�����ĵĴ�û��ᡣ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 10004}},
				},
			},
		},
	},
    [4209] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 29044,
		
		txt = "��~ʦ���������Ʋ�������������ȡ��",
		options =
		{},
	},
    [4210] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		{condition = DialogCondition.Level, param = {level = 20, errorID = 29}},
		{condition = DialogCondition.HasTask, param = {taskID = 10005, statue = false, errorID = 30}},
		{condition = DialogCondition.CheckLoopTask, param = {taskID = 10005, errorID = 31}},	
		},
		speakerID = 20005,
		
		txt = "Խ�Ǵ�������ճ�����Խ�࣡���������ã�����������Щ���񽻸���ȥ����Ҳ���㴸�����ĵĴ�û��ᡣ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 10005}},
				},
			},
		},
	},
    [4211] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 29045,
		
		txt = "��~ʦ���������Ʋ�������������ȡ��",
		options =
		{},
	},
    [4212] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		{condition = DialogCondition.Level, param = {level = 20, errorID = 29}},
		{condition = DialogCondition.HasTask, param = {taskID = 10001, statue = false, errorID = 30}},
	        {condition = DialogCondition.CheckLoopTask, param = {taskID = 10006, errorID = 31}},
		},
		speakerID = 20007,
		
		txt = "Խ�Ǵ�������ճ�����Խ�࣡���������ã�����������Щ���񽻸���ȥ����Ҳ���㴸�����ĵĴ�û��ᡣ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 10006}},
				},
			},
		},
	},
------------------------����ս��------------------------------
	[4230] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "�������ң�����ɽ��Ҳ�������⡣��Ϊ���ŵ��ӣ���Ӧ�Ժ������ɰ�ΣΪ���Ρ��ݵ���������<mapID,x,y>����������һЩ<npcID>����ϣ���������ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
    [4231] =             ------------------ǬԪ������С����20-30����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26001,
		soundID = nil,
		txt = "�ٺٺ٣��в�֪����ķ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4101,mapID = 1}},
				},
			}
		},
	},
    [4232] =             ------------------ǬԪ���ƻ�������30-40����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26003,
		soundID = nil,
		txt = "�ɶ񣡾�Ȼ���㷢���ҵ��ټ����ǾͲ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4102,mapID = 1}},
				},
			}
		},
	},
    [4233] =             ------------------ǬԪ��������å��40-50����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26005,
		soundID = nil,
		txt = "���������ŵ��Ӹ��������Ƿ����Ҿ�Ҫ��������ν�ĵ����к�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4103,mapID = 1}},
				},
			}
		},
	},
    [4234] =             ------------------ǬԪ����ɽ����50-60����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26007,
		soundID = nil,
		txt = "���ű��أ������߾�֮��������ʱ��Ҫ�ó����ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4104,mapID = 1}},
				},
			}
		},
	},
	[4235] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "�������ң�����ɽ��Ҳ�������⡣��Ϊ���ŵ��ӣ���Ӧ�Ժ������ɰ�ΣΪ���Ρ��ݵ���������<mapID,x,y>����������һЩ<npcID>����ϣ���������ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
    [4236] =             ------------------��ϼɽ����С����20-30����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26001,
		soundID = nil,
		txt = "�ٺٺ٣��в�֪����ķ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4101,mapID = 3}},
				},
			}
		},
	},
    [4237] =             ------------------��ϼɽ�ƻ�������30-40����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26003,
		soundID = nil,
		txt = "�ɶ񣡾�Ȼ���㷢���ҵ��ټ����ǾͲ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4102,mapID = 3}},
				},
			}
		},
	},
    [4238] =             ------------------��ϼɽ������å��40-50����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26005,
		soundID = nil,
		txt = "���������ŵ��Ӹ��������Ƿ����Ҿ�Ҫ��������ν�ĵ����к�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4103,mapID = 3}},
				},
			}
		},
	},
    [4239] =             ------------------��ϼɽ��ɽ����50-60����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26007,
		soundID = nil,
		txt = "���ű��أ������߾�֮��������ʱ��Ҫ�ó����ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4104,mapID = 3}},
				},
			}
		},
	},
	[4240] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "�������ң�����ɽ��Ҳ�������⡣��Ϊ���ŵ��ӣ���Ӧ�Ժ������ɰ�ΣΪ���Ρ��ݵ���������<mapID,x,y>����������һЩ<npcID>����ϣ���������ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
    [4241] =             ------------------�����ŵ���С����20-30����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26001,
		soundID = nil,
		txt = "�ٺٺ٣��в�֪����ķ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4101,mapID = 6}},
				},
			}
		},
	},
    [4242] =             ------------------�����Žƻ�������30-40����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26003,
		soundID = nil,
		txt = "�ɶ񣡾�Ȼ���㷢���ҵ��ټ����ǾͲ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4102,mapID = 6}},
				},
			}
		},
	},
    [4243] =             ------------------������������å��40-50����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26005,
		soundID = nil,
		txt = "���������ŵ��Ӹ��������Ƿ����Ҿ�Ҫ��������ν�ĵ����к�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4103,mapID = 6}},
				},
			}
		},
	},
    [4244] =             ------------------�����Ŷ�ɽ����50-60����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26007,
		soundID = nil,
		txt = "���ű��أ������߾�֮��������ʱ��Ҫ�ó����ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4104,mapID = 6}},
				},
			}
		},
	},
	[4245] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "�������ң�����ɽ��Ҳ�������⡣��Ϊ���ŵ��ӣ���Ӧ�Ժ������ɰ�ΣΪ���Ρ��ݵ���������<mapID,x,y>����������һЩ<npcID>����ϣ���������ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
    [4246] =             ------------------����������С����20-30����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26001,
		soundID = nil,
		txt = "�ٺٺ٣��в�֪����ķ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4101,mapID = 5}},
				},
			}
		},
	},
    [4247] =             ------------------�������ƻ�������30-40����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26003,
		soundID = nil,
		txt = "�ɶ񣡾�Ȼ���㷢���ҵ��ټ����ǾͲ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4102,mapID = 5}},
				},
			}
		},
	},
    [4248] =             ------------------������������å��40-50����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26005,
		soundID = nil,
		txt = "���������ŵ��Ӹ��������Ƿ����Ҿ�Ҫ��������ν�ĵ����к�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4103,mapID = 5}},
				},
			}
		},
	},
    [4249] =             ------------------��������ɽ����50-60����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26007,
		soundID = nil,
		txt = "���ű��أ������߾�֮��������ʱ��Ҫ�ó����ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4104,mapID = 5}},
				},
			}
		},
	},
	[4250] =            ------------------��Դ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "�������ң�����ɽ��Ҳ�������⡣��Ϊ���ŵ��ӣ���Ӧ�Ժ������ɰ�ΣΪ���Ρ��ݵ���������<mapID,x,y>����������һЩ<npcID>����ϣ���������ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
    [4251] =             ------------------��Դ������С����20-30����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26001,
		soundID = nil,
		txt = "�ٺٺ٣��в�֪����ķ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4101,mapID = 4}},
				},
			}
		},
	},
    [4252] =             ------------------��Դ���ƻ�������30-40����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26003,
		soundID = nil,
		txt = "�ɶ񣡾�Ȼ���㷢���ҵ��ټ����ǾͲ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4102,mapID = 4}},
				},
			}
		},
	},
    [4253] =             ------------------��Դ��������å��40-50����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26005,
		soundID = nil,
		txt = "���������ŵ��Ӹ��������Ƿ����Ҿ�Ҫ��������ν�ĵ����к�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4103,mapID = 4}},
				},
			}
		},
	},
    [4254] =             ------------------��Դ����ɽ����50-60����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26007,
		soundID = nil,
		txt = "���ű��أ������߾�֮��������ʱ��Ҫ�ó����ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4104,mapID = 4}},
				},
			}
		},
	},
	[4255] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "�������ң�����ɽ��Ҳ�������⡣��Ϊ���ŵ��ӣ���Ӧ�Ժ������ɰ�ΣΪ���Ρ��ݵ���������<mapID,x,y>����������һЩ<npcID>����ϣ���������ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
    [4256] =             ------------------��������С����20-30����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26001,
		soundID = nil,
		txt = "�ٺٺ٣��в�֪����ķ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4101,mapID = 2}},
				},
			}
		},
	},
    [4257] =             ------------------������ƻ�������30-40����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26003,
		soundID = nil,
		txt = "�ɶ񣡾�Ȼ���㷢���ҵ��ټ����ǾͲ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4102,mapID = 2}},
				},
			}
		},
	},
    [4258] =             ------------------������������å��40-50����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26005,
		soundID = nil,
		txt = "���������ŵ��Ӹ��������Ƿ����Ҿ�Ҫ��������ν�ĵ����к�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4103,mapID = 2}},
				},
			}
		},
	},
    [4259] =             ------------------�������ɽ����50-60����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26007,
		soundID = nil,
		txt = "���ű��أ������߾�֮��������ʱ��Ҫ�ó����ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 4104,mapID = 2}},
				},
			}
		},
	},
    [4260] =             ------------------��ؤ�¼�
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 26014,
		soundID = nil,
		txt = "��λӢ�ۣ����кã�����2000�����Է��ɣ�",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "����һ��ʤ���߼�������֧������2000��",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4261}},		
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�ߣ�����������թ��������ս����",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4262}},
				},
			}
		},
	},
	[4261] =            ------------------��ؤ��л
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.Currency, param = {type = "submoney",value =2000, errorID = 32}},
		},
		speakerID = 26014,
		soundID = nil,
		txt = "Ӣ�����Ǻ����ˣ��м���������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                 {
		                 {action = DialogActionType.CostMoney, param = {money = 2000, scriptID = 4141}},
			         },	
		    },
		},		
	},
	[4262] =            ------------------��ؤս���Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26018,
		soundID = nil,
		txt = "��ǧ���������αװû�뵽���Ǳ���ʶ�ƣ������������Ż�ȥ�ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                 {
		                 {action = DialogActionType.Fight, param = {scriptID = 4141}},
			         },	
		    },
		},		
	},
	
------------------------������ս------------------------------
	[4270] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "����<npcID>���ո�ǿ������Ϊ�����ǳ��Ϊʦϣ������ǰ�������д裬ѧϰս�����飬�Ա���������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4271] =            ------------------ǬԪ������ӣ�30-45����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20021,
		txt = "��Ȼ����Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4105,mapID = 1}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4272] =            ------------------ǬԪ��ִ�����ϣ�45-60����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29066,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4111,mapID = 1}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4273] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "����<npcID>���ո�ǿ������Ϊ�����ǳ��Ϊʦϣ������ǰ�������д裬ѧϰս�����飬�Ա���������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4274] =            ------------------��ϼɽ����ӣ�30-45����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20023,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4107,mapID = 3}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4275] =            ------------------��ϼɽִ�����ϣ�45-60����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29068,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4113,mapID = 3}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4276] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "����<npcID>���ո�ǿ������Ϊ�����ǳ��Ϊʦϣ������ǰ�������д裬ѧϰս�����飬�Ա���������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4277] =            ------------------�����Ŵ���ӣ�30-45����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20026,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4109,mapID = 6}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4278] =            ------------------������ִ�����ϣ�45-60����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29070,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4115,mapID = 6}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4279] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "����<npcID>���ո�ǿ������Ϊ�����ǳ��Ϊʦϣ������ǰ�������д裬ѧϰս�����飬�Ա���������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4280] =            ------------------����������ӣ�30-45����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20024,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4110,mapID = 5}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4281] =            ------------------������ִ�����ϣ�45-60����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29071,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4116,mapID = 5}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4282] =            ------------------��Դ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "����<npcID>���ո�ǿ������Ϊ�����ǳ��Ϊʦϣ������ǰ�������д裬ѧϰս�����飬�Ա���������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4283] =            ------------------��Դ������ӣ�30-45����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20025,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4106,mapID = 4}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4284] =            ------------------��Դ��ִ�����ϣ�45-60����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29067,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4112,mapID = 4}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4285] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "����<npcID>���ո�ǿ������Ϊ�����ǳ��Ϊʦϣ������ǰ�������д裬ѧϰս�����飬�Ա���������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4286] =            ------------------���������ӣ�30-45����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20022,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4108,mapID = 2}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4287] =            ------------------������ִ�����ϣ�45-60����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29069,
		txt = "��Ȼ��Ҫͬ���д裬�ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4114,mapID = 2}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
------------------------��������------------------------------
	[4301] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "�е���������<mapID,x,y>������<npcID>��û����ϣ������ȥһ�ˣ��������ǣ�Ϊ�������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
						{action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4302] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "�е���������<mapID,x,y>������<npcID>��û����ϣ������ȥһ�ˣ��������ǣ�Ϊ�������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4303] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "�е���������<mapID,x,y>������<npcID>��û����ϣ������ȥһ�ˣ��������ǣ�Ϊ�������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4304] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "�е���������<mapID,x,y>������<npcID>��û����ϣ������ȥһ�ˣ��������ǣ�Ϊ�������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4305] =            ------------------��Դ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "�е���������<mapID,x,y>������<npcID>��û����ϣ������ȥһ�ˣ��������ǣ�Ϊ�������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4306] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "�е���������<mapID,x,y>������<npcID>��û����ϣ������ȥһ�ˣ��������ǣ�Ϊ�������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4307] =            ------------------�ؽ̼�ϸ��35-45����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26009,
		txt = "���ǲ��̵��ӣ���һ������ɱһ����",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "������������ͷ�ˣ�������ս����",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4117,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��׼������ٻ������㣡",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4308] =            ------------------������ͽ��35-45����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26012,
		txt = "��ż���ؼ�������һ���񹦣�����񹦳��ɣ������»���˭�ܵ��ң�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "������������ͷ�ˣ�������ս����",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4118,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��׼������ٻ������㣡",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[4309] =            ------------------���ִ̿ͣ�45-60����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26011,
		txt = "���ҵĵ��̣���������Ҳ�ø������ţ�û�˿��Է����ң�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "������������ͷ�ˣ�������ս����",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4119,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��׼������ٻ������㣡",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[4310] =            ------------------͵������45-60����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26010,
		txt = "��Ȼ���㷢���ҵĲ������Ǿͱ�����Ż�ȥ�ˣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "������������ͷ�ˣ�������ս����",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4120,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��׼������ٻ������㣡",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
------------------------�Ի�����------------------------------
	[4350] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "ΪʦǰЩ�����и���һЩ�����<npcID>����Ŀǰ��<mapID,x,y>��������ǰȥѯ�ʽ�����Σ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}
					  },	
		    },
			},
		},
	},
	[4351] =            ------------------ǬԪ������ׯ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29005,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4357}},	
		              },	
		    },
		},
	},		
	[4352] =            ------------------ǬԪ�������ŵ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29008,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4357}},	
		              },	
		    },
		},
	},
	[4353] =            ------------------ǬԪ����԰����Ԫ��Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20027,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4357}},	
		              },	
		    },
		},
	},
	[4354] =            ------------------ǬԪ�������ܻ��˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29001,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4357}},	
		              },	
		    },
		},
	},
	[4355] =            ------------------ǬԪ�������������˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20928,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4357}},	
		              },	
		    },
		},
	},
	[4356] =            ------------------ǬԪ����԰��������Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29012,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4357}},	
		              },	
		    },
		},
	},
	[4357] =            ------------------ǬԪ����һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��л��棬��ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
						{action = DialogActionType.FinishLoopTask, param = {taskID = 10001}},
					  },	
		    },	
		    },
		},			
	[4358] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "ΪʦǰЩ�����и���һЩ�����<npcID>����Ŀǰ����<mapID,x,y>��������ǰȥѯ�ʽ�����Σ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
		              },
			},
		},		
	},
	[4359] =            ------------------��ϼɽ����ׯ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29005,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4365}},	
		              },
			},
		},		
	},
	[4360] =            ------------------��ϼɽ�����ŵ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29008,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4365}},	
		              },
			},
		},
	},
	[4361] =            ------------------��ϼɽ��԰����Ԫ��Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20027,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4365}},	
		              },
			},
		},
	},
	[4362] =            ------------------��ϼɽ�����ܻ��˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29001,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4365}},	
		              },
			},
		},
	},
	[4363] =            ------------------��ϼɽ�����������˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20928,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4365}},	
		              },
			},
		},
	},
	[4364] =            ------------------��ϼɽ��԰��������Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29012,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4365}},	
		              },
			},
		},
	},
	[4365] =            ------------------��ϼɽ��һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��л��棬��ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.FinishLoopTask, param = {taskID = 10002}},
		              },
			},
		},		
	},
	[4366] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "ΪʦǰЩ�����и���һЩ�����<npcID>����Ŀǰ����<mapID,x,y>��������ǰȥѯ�ʽ�����Σ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},
	},		
	[4367] =            ------------------����������ׯ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29005,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4373}},	
					  },	
		    },
		},		
	},
	[4368] =            ------------------�����������ŵ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29008,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4373}},	
					  },	
		    },
		},		
	},
	[4369] =            ------------------��������԰����Ԫ��Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20027,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4373}},	
					  },	
		    },
		},	
	},
	[4370] =            ------------------�����������ܻ��˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29001,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4373}},	
					  },	
		    },
		},	
	},
	[4371] =            ------------------�����������������˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20928,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4373}},	
					  },	
		    },
		},	
	},
	[4372] =            ------------------��������԰��������Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29012,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4373}},	
					  },	
		    },
		},	
	},
	[4373] =            ------------------��������һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��л��棬��ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.FinishLoopTask, param = {taskID = 10003}},
			      },	
		    },
		},			
	},
	[4374] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "ΪʦǰЩ�����и���һЩ�����<npcID>����Ŀǰ����<mapID,x,y>��������ǰȥѯ�ʽ�����Σ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4375] =            -------------------����������ׯ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29005,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4381}},		
					  },	
		    },
		},		
	},
	[4376] =            -------------------�����������ŵ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29008,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4381}},		
					  },	
		    },
		},		
	},
	[4377] =            -------------------��������԰����Ԫ��Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20027,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4381}},		
					  },	
		    },
		},
	},
	[4378] =            -------------------�����������ܻ��˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29001,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4381}},		
					  },	
		    },
		},
	},
	[4379] =            -------------------�����������������˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20928,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4381}},		
					  },	
		    },
		},
	},
	[4380] =            -------------------��������԰��������Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29012,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4381}},		
					  },	
		    },
		},
	},
	[4381] =            -------------------��������һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��л��棬��ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
                              {action = DialogActionType.FinishLoopTask, param = {taskID = 10004}},
			      },	
		    },
		},		
	},
	[4382] =            ------------------��Դ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "ΪʦǰЩ�����и���һЩ�����<npcID>����Ŀǰ����<mapID,x,y>��������ǰȥѯ�ʽ�����Σ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},
					  },	
		    },
		},		
	},
	[4383] =            -------------------��Դ������ׯ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29005,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4389}},
					  },	
		    },
		},		
	},
	[4384] =            -------------------��Դ�������ŵ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29008,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4389}},
					  },	
		    },
		},
	},
	[4385] =            -------------------��Դ����԰����Ԫ��Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20027,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4389}},
					  },	
		    },
		},
	},
	[4386] =            -------------------��Դ�������ܻ��˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29001,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4389}},
					  },	
		    },
		},
	},
	[4387] =            -------------------��Դ�������������˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20928,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4389}},
					  },	
		    },
		},
	},
	[4388] =            -------------------��Դ����԰��������Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29012,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4389}},
					  },	
		    },
		},
	},
	[4389] =            -------------------��Դ����һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��л��棬��ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
                              {action = DialogActionType.FinishLoopTask, param = {taskID = 10005}},
			      },	
		    },
		},		
	},
	[4390] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "ΪʦǰЩ�����и���һЩ�����<npcID>����Ŀǰ����<mapID,x,y>��������ǰȥѯ�ʽ�����Σ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},
					  },	
		    },
		},		
	},
	[4391] =            -------------------����������ׯ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29005,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4397}},
					  },	
		    },
		},		
	},
	[4392] =            -------------------�����������ŵ����Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29008,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4397}},
					  },	
		    },
		},
	},
	[4393] =            -------------------��������԰����Ԫ��Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20027,
		soundID = nil,
		txt = "��ʦ��������֮���Ѿ���ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4397}},
					  },	
		    },
		},
	},
	[4394] =            -------------------�����������ܻ��˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29001,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4397}},
					  },	
		    },
		},
	},
	[4395] =            -------------------�����������������˶Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20928,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4397}},
					  },	
		    },
		},
	},
	[4396] =            -------------------��������԰��������Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29012,
		soundID = nil,
		txt = "��ʦ��������֮�»���ҪЩʱ�ղ�����ɣ������ת����ʦ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.Goto, param = {dialogID = 4397}},
					  },	
		    },
		},
	},
	[4397] =            -------------------��������һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��л��棬��ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
			      {action = DialogActionType.FinishLoopTask, param = {taskID = 10006}},
			      },	
		    },
		},		
	},
------------------------��������------------------------------
	[4450] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "Ϊʦ������һ����Ҫ���ţ���Ҫ������һ�����ҽ���<mapID,x,y>��<npcID>����������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4451] =            ------------------ǬԪ������¬ֲ��������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20049,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		              {
		              {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10001, itemID = 1041016, itemsInfo ={count = 1},},},	
			      },	
		        },
		},		
	},
	[4452] =            ------------------ǬԪ���������Ļ���������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 27075,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10001, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4453] =            ------------------ǬԪ������Ǯϲ����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20017,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		        actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10001, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4454] =            ------------------ǬԪ������лة����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29079,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10001, itemsInfo ={{count = 1}}}},	
			      },	
		    },
		},		
	},
	[4455] =            ------------------ǬԪ������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29036,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10001, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4456] =            ------------------ǬԪ������½С����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29034,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10001, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4457] =            ------------------ǬԪ��������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20059,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10001, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4458] =            ------------------ǬԪ������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20701,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10001, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4459] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "Ϊʦ������һ����Ҫ���ţ���Ҫ������һ�����ҽ���<mapID,x,y>��<npcID>����������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4460] =            ------------------��ϼɽ����¬ֲ��������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20049,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10002, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4461] =            ------------------��ϼɽ�������Ļ���������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 27075,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10002, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4462] =            ------------------��ϼɽ����Ǯϲ����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20017,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10002, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4463] =            ------------------��ϼɽ����лة����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29079,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10002, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4464] =            ------------------��ϼɽ����������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29036,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10002, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4465] =            ------------------��ϼɽ����½С����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29034,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10002, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4466] =            ------------------��ϼɽ������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20059,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10002, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4467] =            ------------------��ϼɽ����������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20701,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10002, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4468] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "Ϊʦ������һ����Ҫ���ţ���Ҫ������һ�����ҽ���<mapID,x,y>��<npcID>����������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4469] =            ------------------����������¬ֲ��������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20049,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10003, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4470] =            ------------------�����ų������Ļ���������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 27075,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10003, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4471] =            ------------------����������Ǯϲ����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20017,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10003, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4472] =            ------------------����������лة����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29079,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10003, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4473] =            ------------------�����ų���������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29036,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10003, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4474] =            ------------------�����ų���½С����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29034,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10003, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4475] =            ------------------������������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20059,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10003, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4476] =            ------------------�����ų���������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20701,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10003, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4477] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "Ϊʦ������һ����Ҫ���ţ���Ҫ������һ�����ҽ���<mapID,x,y>��<npcID>����������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4478] =            ------------------����������¬ֲ��������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20049,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10004, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4479] =            ------------------�������������Ļ���������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 27075,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10004, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4480] =            ------------------����������Ǯϲ����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20017,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10004, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4481] =            ------------------����������лة����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29079,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10004, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4482] =            ------------------����������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29036,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10004, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4483] =            ------------------����������½С����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29034,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10004, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4484] =            ------------------������������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20059,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10004, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4485] =            ------------------����������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20701,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10004, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4486] =            ------------------��Դ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "Ϊʦ������һ����Ҫ���ţ���Ҫ������һ�����ҽ���<mapID,x,y>��<npcID>����������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4487] =            ------------------��Դ������¬ֲ��������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20049,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10005, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4488] =            ------------------��Դ���������Ļ���������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 27075,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10005, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4489] =            ------------------��Դ������Ǯϲ����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20017,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10005, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4490] =            ------------------��Դ������лة����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29079,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10005, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4491] =            ------------------��Դ������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29036,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10005, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4492] =            ------------------��Դ������½С����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29034,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10005, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4493] =            ------------------��Դ��������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20059,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10005, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4494] =            ------------------��Դ������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20701,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10005, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4495] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "Ϊʦ������һ����Ҫ���ţ���Ҫ������һ�����ҽ���<mapID,x,y>��<npcID>����������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4496] =            ------------------����������¬ֲ��������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20049,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10006, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4497] =            ------------------�����󳤰����Ļ���������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 27075,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10006, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4498] =            ------------------����������Ǯϲ����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20017,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10006, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4499] =            ------------------����������лة����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29079,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10006, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4500] =            ------------------�����󳤰�������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29036,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10006, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4501] =            ------------------�����󳤰�½С����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 29034,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10006, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4502] =            ------------------������������������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20059,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10006, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},
	[4503] =            ------------------�����󳤰�������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20701,
		soundID = nil,
		txt = "�㽫�Ƿ��Ŵ������ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10006, itemsInfo ={{count = 1}}}},	
					  },	
		    },
		},		
	},

------------------------ץ������------------------------------

	[4550] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "������Խ��Խ׳�󣬵���ҲԽ��Խ���ˡ�����������ʥ�أ���������һ��ȥ<mapID,x,y>����ץһֻ<petID>������ʦ��ʦ�������ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4551] =           ---------------------ǬԪ���Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "��ô��ͻ����������ҵ�����Ҫ�ĳ�������",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.PaidPet, param = {taskID = 10001}},		
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},			
		},
	},
	[4552] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "������Խ��Խ׳�󣬵���ҲԽ��Խ���ˡ�����������ʥ�أ���������һ��ȥ<mapID,x,y>����ץһֻ<petID>������ʦ��ʦ�������ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4553] =             ---------------------��ϼɽ�Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "��ô��ͻ����������ҵ�����Ҫ�ĳ�������",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.PaidPet, param = {taskID = 10002}},		
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},			
		},
	},
	[4554] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "������Խ��Խ׳�󣬵���ҲԽ��Խ���ˡ�����������ʥ�أ���������һ��ȥ<mapID,x,y>����ץһֻ<petID>������ʦ��ʦ�������ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4555] =              ---------------------�������Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "��ô��ͻ����������ҵ�����Ҫ�ĳ�������",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.PaidPet, param = {taskID = 10003}},		
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},			
		},
	},
	[4556] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "������Խ��Խ׳�󣬵���ҲԽ��Խ���ˡ�����������ʥ�أ���������һ��ȥ<mapID,x,y>����ץһֻ<petID>������ʦ��ʦ�������ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4557] =                 ---------------------�������Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "��ô��ͻ����������ҵ�����Ҫ�ĳ�������",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.PaidPet, param = {taskID = 10004}},	
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},			
		},
	},
	[4558] =            ------------------��Դ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "������Խ��Խ׳�󣬵���ҲԽ��Խ���ˡ�����������ʥ�أ���������һ��ȥ<mapID,x,y>����ץһֻ<petID>������ʦ��ʦ�������ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4559] =                  ---------------------��Դ���Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "��ô��ͻ����������ҵ�����Ҫ�ĳ�������",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.PaidPet, param = {taskID = 10005}},		
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},			
		},
	},
	[4560] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "������Խ��Խ׳�󣬵���ҲԽ��Խ���ˡ�����������ʥ�أ���������һ��ȥ<mapID,x,y>����ץһֻ<petID>������ʦ��ʦ�������ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4561] =                ---------------------�������Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "��ô��ͻ����������ҵ�����Ҫ�ĳ�������",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.PaidPet, param = {taskID = 10006}},	
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},			
		},
	},
------------------------�Ͻ�����------------------------------
 	[4600] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "�������µ���Խ��Խ�࣬<itemID>�Ĵ���Ҳ�����ˣ�������һ�˰����Ѽ�1��<itemID>���û��������Ұɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.CloseDialog, param ={}},	
			          },	
		    },
		},		
	},	
	[4601] =            ------------------ǬԪ���Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20004,
		txt = "��ô��ͻ��������ҵ�����Ҫ�ĵ�ҩ����",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10001, itemsInfo = {count = 1},},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
 	[4602] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "�������µ���Խ��Խ�࣬<itemID>�Ĵ���Ҳ�����ˣ�������һ�˰����Ѽ�1��<itemID>���û��������Ұɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
 	[4603] =            ------------------��ϼɽ�Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20006,
		txt = "��ô��ͻ��������ҵ�����Ҫ�ĵ�ҩ����",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10002, itemsInfo = {count = 1},},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
 	[4604] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "�������µ���Խ��Խ�࣬<itemID>�Ĵ���Ҳ�����ˣ�������һ�˰����Ѽ�1��<itemID>���û��������Ұɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
 	[4605] =            ------------------�������Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20008,
		txt = "��ô��ͻ��������ҵ�����Ҫ�ĵ�ҩ����",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10003, itemsInfo = {count = 1},},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
 	[4606] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "�������µ���Խ��Խ�࣬<itemID>�Ĵ���Ҳ�����ˣ�������һ�˰����Ѽ�1��<itemID>���û��������Ұɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
 	[4607] =            ------------------�������Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20009,
		txt = "��ô��ͻ��������ҵ�����Ҫ�ĵ�ҩ����",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10004, itemsInfo = {count = 1},},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
 	[4608] =            ------------------��Դ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "�������µ���Խ��Խ�࣬<itemID>�Ĵ���Ҳ�����ˣ�������һ�˰����Ѽ�1��<itemID>���û��������Ұɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
 	[4609] =            ------------------��Դ���Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20005,
		txt = "��ô��ͻ��������ҵ�����Ҫ�ĵ�ҩ����",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10005, itemsInfo = {count = 1},},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
 	[4610] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "�������µ���Խ��Խ�࣬<itemID>�Ĵ���Ҳ�����ˣ�������һ�˰����Ѽ�1��<itemID>���û��������Ұɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
 	[4611] =            ------------------�������Ͻ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20007,
		txt = "��ô��ͻ��������ҵ�����Ҫ�ĵ�ҩ����",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10006, itemsInfo = {count = 1},},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},

------------------------�Ͻ�װ��------------------------------

----------------------------���------------------------------
	[4701] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "��Ϊ���ŵ��ӣ�Ӧ�Է�ƶ����Ϊ���Σ����Ž������˳ơ�����ʩ����<npcID>��������<mapID,x,y>����ȥ������ʲô�ܹ������æ�İɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4702] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 29079,
		
		txt = "ǧ��ɢ�����������������־�������������ο����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.openLookTaskWin,param = {taskID = 10001}},
				},
			}
		},
	},
	[4703] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "��Ϊ���ŵ��ӣ�Ӧ�Է�ƶ����Ϊ���Σ����Ž������˳ơ�����ʩ����<npcID>��������<mapID,x,y>����ȥ������ʲô�ܹ������æ�İɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4704] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 29079,
		
		txt = "ǧ��ɢ�����������������־�������������ο����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.openLookTaskWin,param = {taskID = 10002}},
				},
			}
		},
	},
	[4705] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "��Ϊ���ŵ��ӣ�Ӧ�Է�ƶ����Ϊ���Σ����Ž������˳ơ�����ʩ����<npcID>��������<mapID,x,y>����ȥ������ʲô�ܹ������æ�İɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4706] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 29079,
		
		txt = "ǧ��ɢ�����������������־�������������ο����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.openLookTaskWin,param = {taskID = 10003}},
				},
			}
		},
	},
	[4707] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "��Ϊ���ŵ��ӣ�Ӧ�Է�ƶ����Ϊ���Σ����Ž������˳ơ�����ʩ����<npcID>��������<mapID,x,y>����ȥ������ʲô�ܹ������æ�İɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4708] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 29079,
		
		txt = "ǧ��ɢ�����������������־�������������ο����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.openLookTaskWin,param = {taskID = 10004}},
				},
			}
		},
	},
	[4709] =            ------------------��Դ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "��Ϊ���ŵ��ӣ�Ӧ�Է�ƶ����Ϊ���Σ����Ž������˳ơ�����ʩ����<npcID>��������<mapID,x,y>����ȥ������ʲô�ܹ������æ�İɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4710] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 29079,
		
		txt = "ǧ��ɢ�����������������־�������������ο����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.openLookTaskWin,param = {taskID = 10005}},
				},
			}
		},
	},
	[4711] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "��Ϊ���ŵ��ӣ�Ӧ�Է�ƶ����Ϊ���Σ����Ž������˳ơ�����ʩ����<npcID>��������<mapID,x,y>����ȥ������ʲô�ܹ������æ�İɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4712] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 29079,
		
		txt = "ǧ��ɢ�����������������־�������������ο����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.openLookTaskWin,param = {taskID = 10006}},
				},
			}
		},
	},
----------------------------Ѳ�ߴ����¼�------------------------------
	[4751] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "�������ң���Ϊ���ŵ��ӣ�Ӧ��и��������ʦ�ţ��ݵ���������<mapID,x,y>������������ʿ��û������ǰ���鿴һ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4752] =            ------------------ǬԪ���������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "�����Ǳߺ����и���ֵ��ˣ���ȥ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		             {action = DialogActionType.Goto, param = {dialogID = 4753}},	
					  },	
		    },
		},		
	},
	[4753] =            ------------------ǬԪ���������¼�
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 26015,
		soundID = nil,
		txt = "��Ӣ����,�ػ���־,������ı���������Խ��Խ������仰�е����ˣ���λ���ѣ������־����ı����Ҫ�أ�",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��Ȼ��־������",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10001},},
				},
				icon = DialogIcon.Talk,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�϶���ı�԰���",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10001},},
				},
				icon = DialogIcon.Talk,
			},
		},
	},
	[4754] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "�������ң���Ϊ���ŵ��ӣ�Ӧ��и��������ʦ�ţ��ݵ���������<mapID,x,y>������������ʿ��û������ǰ���鿴һ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4755] =            ------------------��ϼɽ�������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "�����Ǳߺ����и���ֵ��ˣ���ȥ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		             {action = DialogActionType.Goto, param = {dialogID = 4756}},	
					  },	
		    },
		},		
	},
	[4756] =            ------------------��ϼɽ�������¼�
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 26015,
		soundID = nil,
		txt = "��Ӣ����,�ػ���־,������ı���������Խ��Խ������仰�е����ˣ���λ���ѣ������־����ı����Ҫ�أ�",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��Ȼ��־������",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10002},},
				},
				icon = DialogIcon.Talk,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�϶���ı�԰���",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10002},},
				},
				icon = DialogIcon.Talk,
			},
		},
	},
	[4757] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "�������ң���Ϊ���ŵ��ӣ�Ӧ��и��������ʦ�ţ��ݵ���������<mapID,x,y>������������ʿ��û������ǰ���鿴һ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4758] =            ------------------�������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "�����Ǳߺ����и���ֵ��ˣ���ȥ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		             {action = DialogActionType.Goto, param = {dialogID = 4759}},	
					  },	
		    },
		},		
	},
	[4759] =            ------------------�������������¼�
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 26015,
		soundID = nil,
		txt = "��Ӣ����,�ػ���־,������ı���������Խ��Խ������仰�е����ˣ���λ���ѣ������־����ı����Ҫ�أ�",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��Ȼ��־������",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10003},},
				},
				icon = DialogIcon.Talk,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�϶���ı�԰���",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10003},},
				},
				icon = DialogIcon.Talk,
			},
		},
	},
	[4760] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "�������ң���Ϊ���ŵ��ӣ�Ӧ��и��������ʦ�ţ��ݵ���������<mapID,x,y>������������ʿ��û������ǰ���鿴һ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4761] =            ------------------�������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "�����Ǳߺ����и���ֵ��ˣ���ȥ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		             {action = DialogActionType.Goto, param = {dialogID = 4762}},	
					  },	
		    },
		},		
	},
	[4762] =            ------------------�������������¼�
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 26015,
		soundID = nil,
		txt = "��Ӣ����,�ػ���־,������ı���������Խ��Խ������仰�е����ˣ���λ���ѣ������־����ı����Ҫ�أ�",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��Ȼ��־������",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10004},},
				},
				icon = DialogIcon.Talk,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�϶���ı�԰���",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10004},},
				},
				icon = DialogIcon.Talk,
			},
		},
	},
	[4763] =            ------------------��Դ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "�������ң���Ϊ���ŵ��ӣ�Ӧ��и��������ʦ�ţ��ݵ���������<mapID,x,y>������������ʿ��û������ǰ���鿴һ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4764] =            ------------------��Դ���������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "�����Ǳߺ����и���ֵ��ˣ���ȥ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		             {action = DialogActionType.Goto, param = {dialogID = 4765}},	
					  },	
		    },
		},		
	},
	[4765] =            ------------------��Դ���������¼�
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 26015,
		soundID = nil,
		txt = "��Ӣ����,�ػ���־,������ı���������Խ��Խ������仰�е����ˣ���λ���ѣ��������־����ı����Ҫ�أ�",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��Ȼ��־������",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10005},},
				},
				icon = DialogIcon.Talk,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�϶���ı�԰���",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10005},},
				},
				icon = DialogIcon.Talk,
			},
		},
	},
	[4766] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "�������ң���Ϊ���ŵ��ӣ�Ӧ��и��������ʦ�ţ��ݵ���������<mapID,x,y>������������ʿ��û������ǰ���鿴һ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.CloseDialog, param ={}},	
					  },	
		    },
		},		
	},
	[4767] =            ------------------�������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "�����Ǳߺ����и���ֵ��ˣ���ȥ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		             {action = DialogActionType.Goto, param = {dialogID = 4768}},	
					  },	
		    },
		},		
	},
	[4768] =            ------------------�������������¼�
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 26015,
		soundID = nil,
		txt = "��Ӣ����,�ػ���־,������ı���������Խ��Խ������仰�е����ˣ���λ���ѣ��������־����ı����Ҫ�أ�",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��Ȼ��־������",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10006},},
				},
				icon = DialogIcon.Talk,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�϶���ı�԰���",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10006},},
				},
				icon = DialogIcon.Talk,
			},
		},
	},
	[4769] =            ------------------����������ս��ָ��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 26015,
		soundID = nil,
		txt = "������~˵�ú��е�������Ӱ����������һ<npcID>Զ��<mapID,x,y>,ֻҪ�������ҽ�ѵ�����Ҿͳ����������Ӣ�۵����ţ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions ={},
			}
		},
	},
	[4770] =            ------------------���
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26028,
		txt = "���Ǻ��ˣ��������ز���ʶ����Ϊ�ζ��ҿ����ƣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4771}},
				},
			}
		},
	},
	[4771] =            ------------------��һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		txt = "������~������ô����Ϊ��֤���ҵ�ȷ�Ǹ�Ӣ�ۣ��ҿ���ǧ�������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4772}},
				},
			},
		},
	},
	[4772] =            ------------------���
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26028,
		txt = "......��Ȼ��ˣ��Ǿ����ɣ�Ӯ���������Ӣ�ۣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4142,mapID = nil}},
				},
			}
		},
	},
	[4773] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "���������ķ���<npcID>�ַ������µĲ��ף��׻�˵��Ψʦ����������ʳ���ɹ���������ÿ��Ϊʦ�ų������Ҳ�Ǻ����࣬��ξ���������Ÿ��٣�����ɽȥ����<npcID>���²��ף��ٻ��������Ҹ��ܰɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.CloseDialog, param ={}},	
			          },	
		    },
		},
		
	},
	[4774] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "���������ķ���<npcID>�ַ������µĲ��ף��׻�˵��Ψʦ����������ʳ���ɹ���������ÿ��Ϊʦ�ų������Ҳ�Ǻ����࣬��ξ���������Ÿ��٣�����ɽȥ����<npcID>���²��ף��ٻ��������Ҹ��ܰɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.CloseDialog, param ={}},	
			          },	
		    },
		},
		
	},
	[4775] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "���������ķ���<npcID>�ַ������µĲ��ף��׻�˵��Ψʦ����������ʳ���ɹ���������ÿ��Ϊʦ�ų������Ҳ�Ǻ����࣬��ξ���������Ÿ��٣�����ɽȥ����<npcID>���²��ף��ٻ��������Ҹ��ܰɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.CloseDialog, param ={}},	
			          },	
		    },
		},
		
	},
	[4776] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "���������ķ���<npcID>�ַ������µĲ��ף��׻�˵��Ψʦ����������ʳ���ɹ���������ÿ��Ϊʦ�ų������Ҳ�Ǻ����࣬��ξ���������Ÿ��٣�����ɽȥ����<npcID>���²��ף��ٻ��������Ҹ��ܰɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.CloseDialog, param ={}},	
			          },	
		    },
		},
		
	},
	[4777] =            ------------------��Դ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "���������ķ���<npcID>�ַ������µĲ��ף��׻�˵��Ψʦ����������ʳ���ɹ���������ÿ��Ϊʦ�ų������Ҳ�Ǻ����࣬��ξ���������Ÿ��٣�����ɽȥ����<npcID>���²��ף��ٻ��������Ҹ��ܰɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.CloseDialog, param ={}},	
			          },	
		    },
		},
		
	},
	[4778] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "���������ķ���<npcID>�ַ������µĲ��ף��׻�˵��Ψʦ����������ʳ���ɹ���������ÿ��Ϊʦ�ų������Ҳ�Ǻ����࣬��ξ���������Ÿ��٣�����ɽȥ����<npcID>���²��ף��ٻ��������Ҹ��ܰɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.CloseDialog, param ={}},	
			          },	
		    },
		},		
	},
	[4780] =            ------------------�������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "������~�������� ����ˬ�ڣ������˼伫Ʒ���������ǵ��������أ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.CloseDialog, param ={}},	
			          },	
		    },
		},		
	},
	[4781] =            ------------------ǬԪ����������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20004,
		soundID = nil,
		txt = "ͽ����������ɽ֮�и������ѽ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4782}},
			          },	
		    },
		},		
	},
	[4782] =            ------------------��һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��ɽһ����ʵ�õ��ӳ��˼�ʶ����л���Ŷ��䣬���Ӹ��ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10001}},
			          },	
		    },
		},		
	},
	[4783] =            ------------------��ϼɽ��������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20006,
		soundID = nil,
		txt = "ͽ����������ɽ֮�и������ѽ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4784}},
			          },	
		    },
		},		
	},
	[4784] =            ------------------��һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��ɽһ����ʵ�õ��ӳ��˼�ʶ����л���Ŷ��䣬���Ӹ��ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10002}},
			          },	
		    },
		},		
	},
	[4785] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20008,
		soundID = nil,
		txt = "ͽ����������ɽ֮�и������ѽ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4786}},
			          },	
		    },
		},		
	},
	[4786] =            ------------------��һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��ɽһ����ʵ�õ��ӳ��˼�ʶ����л���Ŷ��䣬���Ӹ��ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10003}},
			          },	
		    },
		},		
	},
	[4787] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20009,
		soundID = nil,
		txt = "ͽ����������ɽ֮�и������ѽ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4788}},
			          },	
		    },
		},		
	},
	[4788] =            ------------------��һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��ɽһ����ʵ�õ��ӳ��˼�ʶ����л���Ŷ��䣬���Ӹ��ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10004}},
			          },	
		    },
		},		
	},
	[4789] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20005,
		soundID = nil,
		txt = "ͽ����������ɽ֮�и������ѽ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4790}},
			          },	
		    },
		},		
	},
	[4790] =            ------------------��һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��ɽһ����ʵ�õ��ӳ��˼�ʶ����л���Ŷ��䣬���Ӹ��ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10005}},
			          },	
		    },
		},		
	},
	[4791] =            ------------------��������������ָ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 20007,
		soundID = nil,
		txt = "ͽ����������ɽ֮�и������ѽ��",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4792}},
			          },	
		    },
		},		
	},
	[4792] =            ------------------��һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "��ɽһ����ʵ�õ��ӳ��˼�ʶ����л���Ŷ��䣬���Ӹ��ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10006}},
			          },	
		    },
		},		
	},
	[4793] =            ------------------ǬԪ��̫������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		 {condition = DialogCondition.School, param = {school = SchoolType.QYD}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "����ˣ�ʹ�þ������ʶ������Ϲ�Ҷ�Ⱦ������ƶ��ɣ������㡢���Ͷ��������������������ο���̫�����ԣ��ҽ�������Ϊ��̫������������ ��λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062213, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4794] =            ------------------��ϼɽ̫������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		 {condition = DialogCondition.School, param = {school = SchoolType.JXS}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "����ˣ�ʹ�þ������ʶ������Ϲ�Ҷ�Ⱦ������ƶ��ɣ������㡢���Ͷ��������������������ο���̫�����ԣ��ҽ�������Ϊ��̫������������ ��λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062214, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4795] =            ------------------������̫������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		 {condition = DialogCondition.School, param = {school = SchoolType.ZYM}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "����ˣ�ʹ�þ������ʶ������Ϲ�Ҷ�Ⱦ������ƶ��ɣ������㡢���Ͷ��������������������ο���̫�����ԣ��ҽ�������Ϊ��̫������������ ��λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062215, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4796] =            ------------------������̫������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		 {condition = DialogCondition.School, param = {school = SchoolType.YXG}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "����ˣ�ʹ�þ������ʶ������Ϲ�Ҷ�Ⱦ������ƶ��ɣ������㡢���Ͷ��������������������ο���̫�����ԣ��ҽ�������Ϊ��̫������������ ��λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062216, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4797] =            ------------------��Դ��̫������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		 {condition = DialogCondition.School, param = {school = SchoolType.TYD}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "����ˣ�ʹ�þ������ʶ������Ϲ�Ҷ�Ⱦ������ƶ��ɣ������㡢���Ͷ��������������������ο���̫�����ԣ��ҽ�������Ϊ��̫������������ ��λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062217, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4798] =            ------------------������̫������������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		 {condition = DialogCondition.School, param = {school = SchoolType.QYD}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "����ˣ�ʹ�þ������ʶ������Ϲ�Ҷ�Ⱦ������ƶ��ɣ������㡢���Ͷ��������������������ο���̫�����ԣ��ҽ�������Ϊ��̫������������ ��λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062218, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4799] =            ------------------ǬԪ���ܲټ�����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.QYD}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�������Ҫԭ��Ϊĸ�����׾ơ���Ʒɫ���������Ũ����Ƥ���������ഫ���꣬�ܽ����ͱ�®�ݣ����������æ�����͹��ȶ��Դ��������ƹ����У��������ڼ��������ҩ�����Ƴ�ҩ�ż����ܽ���ʳ�����Ȼ������ת�����ǣ�����˱��˽�������Ϊ���ܲټ�������λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062219, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4800] =            ------------------��ϼɽ�ܲټ�����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.JXS}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�������Ҫԭ��Ϊĸ�����׾ơ���Ʒɫ���������Ũ����Ƥ���������ഫ���꣬�ܽ����ͱ�®�ݣ����������æ�����͹��ȶ��Դ��������ƹ����У��������ڼ��������ҩ�����Ƴ�ҩ�ż����ܽ���ʳ�����Ȼ������ת�����ǣ�����˱��˽�������Ϊ���ܲټ�������λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062220, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4801] =            ------------------�����Ųܲټ�����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.ZYM}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�������Ҫԭ��Ϊĸ�����׾ơ���Ʒɫ���������Ũ����Ƥ���������ഫ���꣬�ܽ����ͱ�®�ݣ����������æ�����͹��ȶ��Դ��������ƹ����У��������ڼ��������ҩ�����Ƴ�ҩ�ż����ܽ���ʳ�����Ȼ������ת�����ǣ�����˱��˽�������Ϊ���ܲټ�������λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062221, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4802] =            ------------------�������ܲټ�����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.YXG}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�������Ҫԭ��Ϊĸ�����׾ơ���Ʒɫ���������Ũ����Ƥ���������ഫ���꣬�ܽ����ͱ�®�ݣ����������æ�����͹��ȶ��Դ��������ƹ����У��������ڼ��������ҩ�����Ƴ�ҩ�ż����ܽ���ʳ�����Ȼ������ת�����ǣ�����˱��˽�������Ϊ���ܲټ�������λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062222, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4803] =            ------------------��Դ���ܲټ�����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.TYD}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�������Ҫԭ��Ϊĸ�����׾ơ���Ʒɫ���������Ũ����Ƥ���������ഫ���꣬�ܽ����ͱ�®�ݣ����������æ�����͹��ȶ��Դ��������ƹ����У��������ڼ��������ҩ�����Ƴ�ҩ�ż����ܽ���ʳ�����Ȼ������ת�����ǣ�����˱��˽�������Ϊ���ܲټ�������λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062223, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4804] =            ------------------������ܲټ�����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.PLG}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�������Ҫԭ��Ϊĸ�����׾ơ���Ʒɫ���������Ũ����Ƥ���������ഫ���꣬�ܽ����ͱ�®�ݣ����������æ�����͹��ȶ��Դ��������ƹ����У��������ڼ��������ҩ�����Ƴ�ҩ�ż����ܽ���ʳ�����Ȼ������ת�����ǣ�����˱��˽�������Ϊ���ܲټ�������λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062224, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4805] =            ------------------ǬԪ�����Ŷ�������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.QYD}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�����Ŷ���������᲻�ɴݵĽ��Ź����������ഫ����󽫾���ά�����˵����Źء���ʱӪ�б�ƣ����ս����������ۿ����Ź�Σ�ڵ�Ϧ��������ȡ���Խ�����ʮһ��ġ���Ȫ��ˮ����������ĥ�����������󽬡��㽬����ˮ�ȹ��򣬾����������Զ�������ʿ�����Զ���ιս��ʿ����ս������Ѹ�ٵõ��ָ�������֮�󣬽�ά������ǧ�����ʹ�ܵ��ˡ������Ŷ�����������Ҳ���ڴ˵����ˣ���λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062225, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4806] =            ------------------��ϼɽ���Ŷ�������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.JXS}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�����Ŷ���������᲻�ɴݵĽ��Ź����������ഫ����󽫾���ά�����˵����Źء���ʱӪ�б�ƣ����ս����������ۿ����Ź�Σ�ڵ�Ϧ��������ȡ���Խ�����ʮһ��ġ���Ȫ��ˮ����������ĥ�����������󽬡��㽬����ˮ�ȹ��򣬾����������Զ�������ʿ�����Զ���ιս��ʿ����ս������Ѹ�ٵõ��ָ�������֮�󣬽�ά������ǧ�����ʹ�ܵ��ˡ������Ŷ�����������Ҳ���ڴ˵����ˣ���λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062226, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4807] =            ------------------�����Ž��Ŷ�������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.ZYM}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�����Ŷ���������᲻�ɴݵĽ��Ź����������ഫ����󽫾���ά�����˵����Źء���ʱӪ�б�ƣ����ս����������ۿ����Ź�Σ�ڵ�Ϧ��������ȡ���Խ�����ʮһ��ġ���Ȫ��ˮ����������ĥ�����������󽬡��㽬����ˮ�ȹ��򣬾����������Զ�������ʿ�����Զ���ιս��ʿ����ս������Ѹ�ٵõ��ָ�������֮�󣬽�ά������ǧ�����ʹ�ܵ��ˡ������Ŷ�����������Ҳ���ڴ˵����ˣ���λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062227, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4808] =            ------------------���������Ŷ�������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.YXG}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�����Ŷ���������᲻�ɴݵĽ��Ź����������ഫ����󽫾���ά�����˵����Źء���ʱӪ�б�ƣ����ս����������ۿ����Ź�Σ�ڵ�Ϧ��������ȡ���Խ�����ʮһ��ġ���Ȫ��ˮ����������ĥ�����������󽬡��㽬����ˮ�ȹ��򣬾����������Զ�������ʿ�����Զ���ιս��ʿ����ս������Ѹ�ٵõ��ָ�������֮�󣬽�ά������ǧ�����ʹ�ܵ��ˡ������Ŷ�����������Ҳ���ڴ˵����ˣ���λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062228, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4809] =            ------------------��Դ�����Ŷ�������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.TYD}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�����Ŷ���������᲻�ɴݵĽ��Ź����������ഫ����󽫾���ά�����˵����Źء���ʱӪ�б�ƣ����ս����������ۿ����Ź�Σ�ڵ�Ϧ��������ȡ���Խ�����ʮһ��ġ���Ȫ��ˮ����������ĥ�����������󽬡��㽬����ˮ�ȹ��򣬾����������Զ�������ʿ�����Զ���ιս��ʿ����ս������Ѹ�ٵõ��ָ�������֮�󣬽�ά������ǧ�����ʹ�ܵ��ˡ������Ŷ�����������Ҳ���ڴ˵����ˣ���λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062229, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4810] =            ------------------�������Ŷ�������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.PLG}},
		},
		speakerID = 26029,
		soundID = nil,
		txt = "�����Ŷ���������᲻�ɴݵĽ��Ź����������ഫ����󽫾���ά�����˵����Źء���ʱӪ�б�ƣ����ս����������ۿ����Ź�Σ�ڵ�Ϧ��������ȡ���Խ�����ʮһ��ġ���Ȫ��ˮ����������ĥ�����������󽬡��㽬����ˮ�ȹ��򣬾����������Զ�������ʿ�����Զ���ιս��ʿ����ս������Ѹ�ٵõ��ָ�������֮�󣬽�ά������ǧ�����ʹ�ܵ��ˡ������Ŷ�����������Ҳ���ڴ˵����ˣ���λС�ѣ���ȥ��Ʒ�����Ҽ��Ҽ�Ʒ���ɣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.BuyItem, param = {itemID = 1062230, itemNum = 1}},
			          },	
		    },
		},		
	},
	[4811] =            ------------------ǬԪ�������¼�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26021,
		soundID = nil,
		txt = "��λӢ�ۣ���������������Ҳ����Ŀ����֮�ˣ��ܷ��СŮ��һ��Сæ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4812}},
			          },	
		    },
		},		
	},
	[4812] =            ------------------ǬԪ�������¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "���ﲻ��˵���������������ܷ�ﵽ�㣡",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.AddFollowNpc, param = {taskID = 10001, followNpcID = 26021}},
			          },	
		    },
		},		
	},
	[4813] =            ------------------��ϼɽ�����¼�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26021,
		soundID = nil,
		txt = "��λӢ�ۣ���������������Ҳ����Ŀ����֮�ˣ��ܷ��СŮ��һ��Сæ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4814}},
			          },	
		    },
		},		
	},
	[4814] =            ------------------��ϼɽ�����¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "���ﲻ��˵���������������ܷ�ﵽ�㣡",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.AddFollowNpc, param = {taskID = 10002, followNpcID = 26021}},
			          },	
		    },
		},		
	},
	[4815] =            ------------------�����Ż����¼�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26021,
		soundID = nil,
		txt = "��λӢ�ۣ���������������Ҳ����Ŀ����֮�ˣ��ܷ��СŮ��һ��Сæ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4816}},
			          },	
		    },
		},		
	},
	[4816] =            ------------------�����Ż����¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "���ﲻ��˵���������������ܷ�ﵽ�㣡",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.AddFollowNpc, param = {taskID = 10003, followNpcID = 26021}},
			          },	
		    },
		},		
	},
	[4817] =            ------------------�����������¼�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26021,
		soundID = nil,
		txt = "��λӢ�ۣ���������������Ҳ����Ŀ����֮�ˣ��ܷ��СŮ��һ��Сæ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4818}},
			          },	
		    },
		},		
	},
	[4818] =            ------------------�����������¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "���ﲻ��˵���������������ܷ�ﵽ�㣡",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                   {action = DialogActionType.AddFollowNpc, param = {taskID = 10004, followNpcID = 26021}},
			          },	
		    },
		},		
	},
	[4819] =            ------------------��Դ�������¼�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26021,
		soundID = nil,
		txt = "��λӢ�ۣ���������������Ҳ����Ŀ����֮�ˣ��ܷ��СŮ��һ��Сæ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4820}},
			          },	
		    },
		},		
	},
	[4820] =            ------------------��Դ�������¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "���ﲻ��˵���������������ܷ�ﵽ�㣡",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.AddFollowNpc, param = {taskID = 10005, followNpcID = 26021}},
			          },	
		    },
		},		
	},
	[4821] =            ------------------���������¼�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26021,
		soundID = nil,
		txt = "��λӢ�ۣ���������������Ҳ����Ŀ����֮�ˣ��ܷ��СŮ��һ��Сæ����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Goto, param = {dialogID = 4822}},
			          },	
		    },
		},		
	},
	[4822] =            ------------------��Դ�������¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 0,
		soundID = nil,
		txt = "���ﲻ��˵���������������ܷ�ﵽ�㣡",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.AddFollowNpc, param = {taskID = 10006, followNpcID = 26021}},
			          },	
		    },
		},		
	},
	[4823] =            ------------------�����¼���;��Ů�ظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26021,
		soundID = nil,
		txt = "ǰ���գ��������<npcID>���ͬ�Σ�˭����;����ɢ�ˣ��������Լ����<mapID,x,y>���棬�κ�СŮ�������ز��죬����Ӣ����Ϊ�Ҵ���·����",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.CloseDialog, param ={}},
			          },	
		    },
		},		
	},
	[4824] =            ------------------�����¼���;��Ů�ظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{},
		speakerID = 26021,
		soundID = nil,
		txt = "��лӢ�۴�·��������Ϳ�����,�������Ҫ�ҵ��ˣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.Gotos, param = {dialogIDs = {4825,4826,4827,4828,4829,4830}}},
			          },	
		    },
		},		
	},
	[4825] =            ------------------ǬԪ�������¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		 {condition = DialogCondition.School, param = {school = SchoolType.QYD}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ﱣ�أ���ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10001}},
			          },	
		    },
		},		
	},
	[4826] =            ------------------��ϼɽ�����¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.JXS}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ﱣ�أ���ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10002}},
			          },	
		    },
		},		
	},
	[4827] =            ------------------�����Ż����¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.ZYM}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ﱣ�أ���ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10003}},
			          },	
		    },
		},		
	},
	[4828] =            ------------------�����¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.YXG}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ﱣ�أ���ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10004}},
			          },	
		    },
		},		
	},
	[4829] =            ------------------�����¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.TYD}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ﱣ�أ���ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10005}},
			          },	
		    },
		},		
	},
	[4830] =            ------------------�����¼���һظ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.School, param = {school = SchoolType.PLG}},
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ﱣ�أ���ǣ�",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		         actions =
		                  {
		                  {action = DialogActionType.FinishLoopTask, param = {taskID = 10006}},
			          },	
		    },
		},		
	},
	[4850] =            ------------------ǬԪ�������¼���̫����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "̫��������",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4793}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4851] =            ------------------��ϼɽ�����¼���̫����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "̫��������",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4794}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4852] =            ------------------�����ų����¼���̫����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "̫��������",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4795}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4853] =            ------------------�����������¼���̫����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "̫��������",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4796}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4854] =            ------------------��Դ�������¼���̫����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "̫��������",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4797}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4855] =            ------------------����������¼���̫����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "̫��������",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4798}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4856] =            ------------------ǬԪ�������¼����ܲټ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "�ܲټ�",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4799}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4857] =            ------------------��ϼɽ�����¼����ܲټ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "�ܲټ�",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4800}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4858] =            ------------------�����ų����¼����ܲټ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "�ܲټ�",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4801}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4859] =            ------------------�����������¼����ܲټ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "�ܲټ�",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4802}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4860] =            ------------------��Դ�������¼����ܲټ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "�ܲټ�",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4803}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4861] =            ------------------����������¼����ܲټ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "�ܲټ�",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4804}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4862] =            ------------------ǬԪ�������¼������Ŷ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "���Ŷ���",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4805}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4863] =            ------------------��ϼɽ�����¼������Ŷ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "���Ŷ���",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4806}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4864] =            ------------------�����ų����¼������Ŷ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "���Ŷ���",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4807}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4865] =            ------------------�����������¼������Ŷ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "���Ŷ���",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4808}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4866] =            ------------------��Դ�������¼������Ŷ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "���Ŷ���",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4809}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
	[4867] =            ------------------����������¼������Ŷ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 26029,
		soundID = nil,
		txt = "֪������˭���ҿ��Ǵ�˵�еĳ�����һֱ�������о��µĲ��ף���Ȼ������Ե�ڴ�������Ǿ������æ���Կ�ζ�ɣ���ô����Ĳ�����......",
		options =
		{
			[1] =
			{
				showConditions = 
				{},
				optionTxt = "���Ŷ���",
				actions =
				{
                                {action = DialogActionType.Goto, param = {dialogID = 4810}},
				},
				icon = DialogIcon.Talk,
			},
		},		
	},
------------------------�˵�����������֮�أ��벻Ҫ�����Ҵ�----------------------------------
---------------------------------����ս��---40-44��----------------------------------
------------------------------------1-50��----------------------------------
    [5001] =             -----------------����ս��-��׿�൳
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27001,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5001,mapID = nil}},
				},
			}
		},
	},
	[5002] =             -----------------����ս��-�ƽ��൳
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27002,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5002,mapID = nil}},
				},
			}
		},
	},
	[5003] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27003,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5003,mapID = nil}},
				},
			}
		},
	},
	[5004] =             -----------------����ս��-ǿ��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27004,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5004,mapID = nil}},
				},
			}
		},
	},
	[5005] =             -----------------����ս��-��å
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27005,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5005,mapID = nil}},
				},
			}
		},
	},
	[5006] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27006,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5006,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---40-44��----------------------------------
------------------------------------50-100��----------------------------------
	[5007] =             -----------------����ս��-���
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27007,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5007,mapID = nil}},
				},
			}
		},
	},
	[5008] =             -----------------����ս��-��Ȫ����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27008,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5008,mapID = nil}},
				},
			}
		},
	},
	[5009] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27009,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5009,mapID = nil}},
				},
			}
		},
	},
	[5010] =             -----------------����ս��-�����鳤
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27010,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5010,mapID = nil}},
				},
			}
		},
	},
	[5011] =             -----------------����ս��-�ƽ�����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27011,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5011,mapID = nil}},
				},
			}
		},
	},
	[5012] =             -----------------����ս��-��Į����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27012,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5012,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---40-44��----------------------------------
------------------------------------100-150��----------------------------------
	[5013] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27013,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5013,mapID = nil}},
				},
			}
		},
	},
	[5014] =             -----------------����ս��-ɽ��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27014,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5014,mapID = nil}},
				},
			}
		},
	},
	[5015] =             -----------------����ս��-ˮ��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27015,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5015,mapID = nil}},
				},
			}
		},
	},
	[5016] =             -----------------����ս��-��������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27016,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5016,mapID = nil}},
				},
			}
		},
	},
	[5017] =             -----------------����ս��-�ƽ����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27017,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5017,mapID = nil}},
				},
			}
		},
	},
	[5018] =             -----------------����ս��-��ɽ��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27018,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5018,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---40-44��----------------------------------
------------------------------------150-200��----------------------------------
	[5019] =             -----------------����ս��-а���൳
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27019,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5019,mapID = nil}},
				},
			}
		},
	},
	[5020] =             -----------------����ս��-�˾��ѵ�
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27020,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5020,mapID = nil}},
				},
			}
		},
	},
	[5021] =             -----------------����ս��-а���ͽ
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27021,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5021,mapID = nil}},
				},
			}
		},
	},
	[5022] =             -----------------����ս��-а�����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27022,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5022,mapID = nil}},
				},
			}
		},
	},
	[5023] =             -----------------����ս��-�����ʦ
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27023,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5023,mapID = nil}},
				},
			}
		},
	},
	[5024] =             -----------------����ս��-�ؽ���ͽ
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27024,
		soundID = nil,
		txt = "û�뵽��Ȼ���㷢���ˣ��Ǿͱ�����ǲ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5024,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---45-49��----------------------------------
------------------------------------1-50��----------------------------------
	[5025] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27025,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5025,mapID = nil}},
				},
			}
		},
	},
	[5026] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27026,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5026,mapID = nil}},
				},
			}
		},
	},
	[5027] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27027,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5027,mapID = nil}},
				},
			}
		},
	},
	[5028] =             -----------------����ս��-��ʯ
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27028,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5028,mapID = nil}},
				},
			}
		},
	},
	[5029] =             -----------------����ս��-��а
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27029,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5029,mapID = nil}},
				},
			}
		},
	},
	[5030] =             -----------------����ս��-�鼧
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27030,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5030,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---45-49��----------------------------------
------------------------------------50-100��----------------------------------
	[5031] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27031,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5031,mapID = nil}},
				},
			}
		},
	},
	[5032] =             -----------------����ս��-�뷼
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27032,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5032,mapID = nil}},
				},
			}
		},
	},
	[5033] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27033,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5033,mapID = nil}},
				},
			}
		},
	},
	[5034] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27034,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5034,mapID = nil}},
				},
			}
		},
	},
	[5035] =             -----------------����ս��-Ԭ��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27035,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5035,mapID = nil}},
				},
			}
		},
	},
	[5036] =             -----------------����ս��-���
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27036,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5036,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---45-49��----------------------------------
------------------------------------100-150��----------------------------------
	[5037] =             -----------------����ս��-�Ƴ���
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27037,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5037,mapID = nil}},
				},
			}
		},
	},
	[5038] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27038,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5038,mapID = nil}},
				},
			}
		},
	},
	[5039] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27039,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5039,mapID = nil}},
				},
			}
		},
	},
	[5040] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27040,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5040,mapID = nil}},
				},
			}
		},
	},
	[5041] =             -----------------����ս��-���
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27041,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5041,mapID = nil}},
				},
			}
		},
	},
	[5042] =             -----------------����ս��-���
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27042,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5042,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---45-49��----------------------------------
------------------------------------150-200��----------------------------------
	[5043] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27043,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5043,mapID = nil}},
				},
			}
		},
	},
	[5044] =             -----------------����ս��-���˰�
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27044,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5044,mapID = nil}},
				},
			}
		},
	},
	[5045] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27045,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5045,mapID = nil}},
				},
			}
		},
	},
	[5046] =             -----------------����ս��-��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27046,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5046,mapID = nil}},
				},
			}
		},
	},
	[5047] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27047,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5047,mapID = nil}},
				},
			}
		},
	},
	[5048] =             -----------------����ս��-����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27048,
		soundID = nil,
		txt = "�����½�������ħ�̵ģ�������Ⱥ���˻������ɱ���ǣ���ֱ�������롣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5048,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---50-54��----------------------------------
------------------------------------1-50��----------------------------------
	[5049] =             -----------------����ս��-������ʿ��Ѫ
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27049,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5049,mapID = nil}},
				},
			}
		},
	},
	[5050] =             -----------------����ս��-а��ħ������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27050,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5050,mapID = nil}},
				},
			}
		},
	},
	[5051] =             -----------------����ս��-ħ���׾�
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27051,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5051,mapID = nil}},
				},
			}
		},
	},
	[5052] =             -----------------����ս��-ħ����ǧ��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27052,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5052,mapID = nil}},
				},
			}
		},
	},
	[5053] =             -----------------����ս��-�������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27053,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5053,mapID = nil}},
				},
			}
		},
	},
	[5054] =             -----------------����ս��-��������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27054,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5054,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---50-54��----------------------------------
------------------------------------50-100��----------------------------------
	[5055] =             -----------------����ս��-ħ������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27055,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5055,mapID = nil}},
				},
			}
		},
	},
	[5056] =             -----------------����ս��-ħ��������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27056,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5056,mapID = nil}},
				},
			}
		},
	},
	[5057] =             -----------------����ս��-ǧ������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27057,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5057,mapID = nil}},
				},
			}
		},
	},
	[5058] =             -----------------����ս��-����½��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27058,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5058,mapID = nil}},
				},
			}
		},
	},
	[5059] =             -----------------����ս��-а������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27059,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5059,mapID = nil}},
				},
			}
		},
	},
	[5060] =             -----------------����ս��-��ʿ����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27060,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5060,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---50-54��----------------------------------
------------------------------------100-150��----------------------------------
	[5061] =             -----------------����ս��-ħ������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27061,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5061,mapID = nil}},
				},
			}
		},
	},
	[5062] =             -----------------����ս��-ħ������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27062,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5062,mapID = nil}},
				},
			}
		},
	},
	[5063] =             -----------------����ս��-�����ܱ�
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27063,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5063,mapID = nil}},
				},
			}
		},
	},
	[5064] =             -----------------����ս��-а������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27064,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5064,mapID = nil}},
				},
			}
		},
	},
	[5065] =             -----------------����ս��-��ʿ����
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27065,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5065,mapID = nil}},
				},
			}
		},
	},
	[5066] =             -----------------����ս��-Ѧ��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27066,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5066,mapID = nil}},
				},
			}
		},
	},
---------------------------------����ս��---50-54��----------------------------------
------------------------------------150-200��----------------------------------
	[5067] =             -----------------����ս��-������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27067,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5067,mapID = nil}},
				},
			}
		},
	},
	[5068] =             -----------------����ս��-�ྫ��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27068,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5068,mapID = nil}},
				},
			}
		},
	},
	[5069] =             -----------------����ս��-ѩ������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27069,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5069,mapID = nil}},
				},
			}
		},
	},
	[5070] =             -----------------����ս��-ˮ��ͯ��
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27070,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5070,mapID = nil}},
				},
			}
		},
	},
	[5071] =             -----------------����ս��-ħ������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 27071,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5071,mapID = nil}},
				},
			}
		},
	},
	[5072] =             -----------------����ս��-��������
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		}, 
		speakerID = 27072,
		soundID = nil,
		txt = "��Ⱦ��Ҵ�ϱ���ʩ�������������Լ����̫���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 5072,mapID = nil}},
				},
			}
		},
	},
---------------------------------��ս����---�����Ƶȼ����޻�������----------------------------------
	[5073] =            -----------------��ս����-����-¬ֲ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 20049}},
		},
		speakerID = 20049,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5073,mapID = 10}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5074] =            -----------------��ս����-����-����ʦ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 30320}},
		},
		speakerID = 30320,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5074,mapID = 10}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5075] =            -----------------��ս����-����-�ʸ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 20059}},
		},
		speakerID = 20059,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5075,mapID = 10}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5076] =            -----------------��ս����-����-��ά��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 29008}},
		},
		speakerID = 29008,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5076,mapID = 10}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5077] =            -----------------��ս����-��԰-��ɭ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 27073}},
		},
		speakerID = 27073,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5077,mapID = 9}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5078] =            -----------------��ս����-��԰-����Ǭ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 27074}},
		},
		speakerID = 27074,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5078,mapID = 9}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5079] =            -----------------��ս����-����-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 20701}},
		},
		speakerID = 20701,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5079,mapID = 13}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5080] =            -----------------��ս����-����-���Ļ�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 27075}},
		},
		speakerID = 27075,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5080,mapID = 13}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5081] =            -----------------��ս����-����-֣��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 27076}},
		},
		speakerID = 27076,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5081,mapID = 14}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5082] =            -----------------��ս����-����-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 27077}},
		},
		speakerID = 27077,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5082,mapID = 14}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5083] =            -----------------��ս����-ǬԪ��-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 20021}},
		},
		speakerID = 20021,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5083,mapID = 1}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5084] =            -----------------��ս����-������-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 20022}},	
		},
		speakerID = 20022,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5084,mapID = 2}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5085] =            -----------------��ս����-��ϼɽ-���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 20023}},	
		},
		speakerID = 20023,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5085,mapID = 3}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5086] =            -----------------��ս����-��Դ��-ׯ�ε�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 20025}},
		},
		speakerID = 20025,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5086,mapID = 4}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5087] =            -----------------��ս����-������-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 20024}},	
		},
		speakerID = 20024,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5087,mapID = 5}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5088] =            -----------------��ս����-������-��ɰ�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.brightMine,npcID = 20026}},	
		},
		speakerID = 20026,
		txt = "����Ҫ��ս��ô���ǾͿ�ʼ�ɣ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5088,mapID = 6}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---40-44��----------------------------------
------------------------------------1-50��----------------------------------------------
	[5089] =            -----------------�������-�ڷ�С��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27078}},
		},
		speakerID = 27078,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5089,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5090] =            -----------------�������-��ħ˫����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27079}},
		},
		speakerID = 27079,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5090,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5091] =            -----------------�������-ħ��Ů�̿�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27080}},
		},
		speakerID = 27080,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5091,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5092] =            -----------------�������-ħ����ū
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27081}},	
		},
		speakerID = 27081,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5092,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5093] =            -----------------�������-������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27082}},	
		},
		speakerID = 27082,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5093,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5094] =            -----------------�������-а�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27083}},
		},
		speakerID = 27083,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5094,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---40-44��----------------------------------
------------------------------------50-100��----------------------------------------------
	[5095] =            -----------------�������-��������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27084}},	
		},
		speakerID = 27084,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5095,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5096] =            -----------------�������-ħ�ɻ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27085}},
		},
		speakerID = 27085,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5096,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5097] =            -----------------�������-���к���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27086}},
		},
		speakerID = 27086,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5097,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5098] =            -----------------�������-���亲��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27087}},
		},
		speakerID = 27087,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5098,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5099] =            -----------------�������-������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27088}},
		},
		speakerID = 27088,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5099,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5100] =            -----------------�������-��ħ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27089}},
		},
		speakerID = 27089,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5100,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---40-44��----------------------------------
------------------------------------100-150��----------------------------------------------
	[5101] =            -----------------�������-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27090}},
		},
		speakerID = 27090,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5101,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5102] =            -----------------�������-��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27091}},
		},
		speakerID = 27091,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5102,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5103] =            -----------------�������-��ͷ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27092}},
		},
		speakerID = 27092,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5103,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5104] =            -----------------�������-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27093}},	
		},
		speakerID = 27093,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5104,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5105] =            -----------------�������-�ǲݼ�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27094}},	
		},
		speakerID = 27094,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5105,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5106] =            -----------------�������-�ں���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27095}},	
		},
		speakerID = 27095,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5106,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---40-44��----------------------------------
------------------------------------150-200��----------------------------------------------
	[5107] =            -----------------�������-�׺���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27096}},
		},
		speakerID = 27096,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5107,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5108] =            -----------------�������-�ü�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27097}},
		},
		speakerID = 27097,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5108,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5109] =            -----------------�������-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27098}},
		},
		speakerID = 27098,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5109,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5110] =            -----------------�������-������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27099}},	
		},
		speakerID = 27099,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5110,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5111] =            -----------------�������-���鼧
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27100}},
		},
		speakerID = 27100,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5111,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5112] =            -----------------�������-��˫���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 270101}},	
		},
		speakerID = 27101,
		txt = "�����˹��������ˣ��Ǿͱ������",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5112,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---45-49��----------------------------------
------------------------------------1-50��----------------------------------------------
	[5113] =            -----------------�������-ħ�̴󻤷�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27102}},
		},
		speakerID = 27102,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5113,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5114] =            -----------------�������-а��Ů��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27103}},
		},
		speakerID = 27103,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5114,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5115] =            -----------------�������-ħ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27104}},
		},
		speakerID = 27104,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5115,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5116] =            -----------------�������-�ƽ�ħ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27105}},
		},
		speakerID = 27105,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5116,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5117] =            -----------------�������-��ʯ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27106}},
		},
		speakerID = 27106,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5117,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5118] =            -----------------�������-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27107}},	
		},
		speakerID = 27107,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5118,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---45-49��----------------------------------
------------------------------------50-100��----------------------------------------------
	[5119] =            -----------------�������-Ѫħ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27108}},
		},
		speakerID = 27108,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5119,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5120] =            -----------------�������-Ѫ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27109}},	
		},
		speakerID = 27109,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5120,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5121] =            -----------------�������-����Ӱ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27110}},
		},
		speakerID = 27110,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5121,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5122] =            -----------------�������-������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27111}},
		},
		speakerID = 27111,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5122,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5123] =            -----------------�������-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27112}},
		},
		speakerID = 27112,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5123,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5124] =            -----------------�������-�����¥��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27113}},
		},
		speakerID = 27113,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5124,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---45-49��----------------------------------
------------------------------------100-150��----------------------------------------------
	[5125] =            -----------------�������-ѩ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27114}},	
		},
		speakerID = 27114,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5125,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5126] =            -----------------�������-ħ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27115}},
		},
		speakerID = 27115,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5126,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5127] =            -----------------�������-�������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27116}},	
		},
		speakerID = 27116,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5127,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5128] =            -----------------�������-�Ÿ�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27117}},	
		},
		speakerID = 27117,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5128,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5129] =            -----------------�������-ҹħ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27118}},	
		},
		speakerID = 27118,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5129,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5130] =            -----------------�������-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27119}},	
		},
		speakerID = 27119,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5130,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---45-49��----------------------------------
------------------------------------150-200��----------------------------------------------
	[5131] =            -----------------�������-Ѫ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27120}},
		},
		speakerID = 27120,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5131,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5132] =            -----------------�������-�ز���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27121}},
		},
		speakerID = 27121,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5132,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5133] =            -----------------�������-ѩ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27122}},
		},
		speakerID = 27122,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5133,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5134] =            -----------------�������-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27123}},
		},
		speakerID = 27123,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5134,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5135] =            -----------------�������-��Ԩ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27124}},	
		},
		speakerID = 27124,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5135,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5136] =            -----------------�������-�Ȼ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27125}},	
		},
		speakerID = 27125,
		txt = "û�뵽��Ȼ���㷢�����ҵ����䣬�Ǿͱ���Ҳ�������ֻ�����˲��ܱ������ܡ�",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5136,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---50-54��----------------------------------
------------------------------------1-50��----------------------------------------------
	[5137] =            -----------------�������-ħ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27126}},
		},
		speakerID = 27126,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5137,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5138] =            -----------------�������-ţħ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27127}},
		},
		speakerID = 27127,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5138,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5139] =            -----------------�������-��������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27128}},	
		},
		speakerID = 27128,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5139,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5140] =            -----------------�������-а�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27129}},
		},
		speakerID = 27129,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5140,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5141] =            -----------------�������-Ѫ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27130}},
		},
		speakerID = 27130,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5141,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5142] =            -----------------�������-ħ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27131}},	
		},
		speakerID = 27131,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5142,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---50-54��----------------------------------
------------------------------------50-100��----------------------------------------------
	[5143] =            -----------------�������-��ħ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27132}},	
		},
		speakerID = 27132,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5143,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5144] =            -----------------�������-��ɲ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27133}},
		},
		speakerID = 27133,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5144,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5145] =            -----------------�������-��ħ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27134}},
		},
		speakerID = 27134,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5145,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5146] =            -----------------�������-˫ͷħ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27135}},
		},
		speakerID = 27135,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5146,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5147] =            -----------------�������-��Ѫħ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27136}},	
		},
		speakerID = 27136,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5147,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5148] =            -----------------�������-��Ѫ����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27137}},	
		},
		speakerID = 27137,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5148,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---50-54��----------------------------------
------------------------------------100-150��----------------------------------------------
	[5149] =            -----------------�������-��ɲŮ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27138}},	
		},
		speakerID = 27138,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5149,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5150] =            -----------------�������-�����ʦ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27139}},	
		},
		speakerID = 27139,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5150,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5151] =            -----------------�������-Ѫ����ħ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27140}},	
		},
		speakerID = 27140,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5151,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5152] =            -----------------�������-ħ��Ȯ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27141}},	
		},
		speakerID = 27141,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5152,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5153] =            -----------------�������-ħū
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27142}},
		},
		speakerID = 27142,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5153,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5154] =            -----------------�������-ħ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27143}},
		},
		speakerID = 27143,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5154,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
---------------------------------�������---50-54��----------------------------------
------------------------------------150-200��----------------------------------------------
	[5155] =            -----------------�������-����ͯ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27144}},
		},
		speakerID = 27144,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5155,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5156] =            -----------------�������-ǹħ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27145}},
		},
		speakerID = 27145,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5156,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5157] =            -----------------�������-�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27146}},	
		},
		speakerID = 27146,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5157,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5158] =            -----------------�������-����ĸ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27147}},	
		},
		speakerID = 27147,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5158,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5159] =            -----------------�������-������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27148}},	
		},
		speakerID = 27148,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5159,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[5160] =            -----------------�������-�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		--{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.script,npcID = 27149}},
		},
		speakerID = 27149,
		txt = "��ƾ�㻹����ɱ�ң���ֱ�ǳ������롣",
		options =
        {
			[1] = {
				showConditions = {},
				optionTxt = "����ս��",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 5160,mapID = nil}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
--------------------------������Ի�------------------------------------------
	[5161] =           -----------------����ս��
	{
		dialogType = DialogType.NotOption,
		conditions ={},
		speakerID = 27150,
		soundID = nil,
		txt = "������´��ң�����ǿ�������к����գ�����<mapID,x,y>������<npcID>���Ĵ����ң�����ǰȥ��ѯ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
						},
			}
		},
	},
	[5162] =           -----------------��ս����--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={},
		speakerID = 27150,
		soundID = nil,
		txt = "�������Ϊ���˼䣬������ǿ��������Լ���ǰȥ<mapID,x,y>����ս<npcID>��ѧϰս�����顣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
						},
			}
		},
	},
	[5163] =           -----------------�������--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={},
		speakerID = 27150,
		soundID = nil,
		txt = "��̽����������<mapID,x,y>����������<npcID>���֣�ɱ��ƽ����գ�ǰȥ������ɱ�� ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
						},
			}
		},
	},
	[5164] =           -----------------�Ի�--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={},
		speakerID = 27150,
		soundID = nil,
		txt = "ǰ��<mapID,x,y>����Ѱ��<npcID>ѯ�ʵ��������Ǻ����ơ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
						},
			}
		},
	},
	[5165] =           -----------------����--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={},
		speakerID = 27150,
		soundID = nil,
		txt = "�¸��³�һ�Ǹ����գ�������ż�����<mapID,x,y>�����͸�<npcID>����������һ�ۡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
						},
			}
		},
	},
	[5166] =           -----------------�Ͻ�����--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={},
		speakerID = 27150,
		soundID = nil,
		txt = "ǰȥ<mapID,x,y>����һ��<itemID>��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
						},
			}
		},
	},
	[5167] =           -----------------�Ͻ�����--------------------
	{
		dialogType = DialogType.NotOption,
	    conditions ={},
		speakerID = 27150,
		soundID = nil,
		txt = "�������<petID>��Щ�쳣������ǰȥ����ץ��������<npcID>����ѯ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
						},
			}
		},
	},
-----------------------------------�Ի�����------------------------------
	[5168] =           -----------------�Ի�����--¬ֲ--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 20049}},
		},
		speakerID = 20049,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5169] =           -----------------�Ի�����--����ʦ--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 30320}},
		},
		speakerID = 30320,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
    [5170] =           -----------------�Ի�����--�ʸ���--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 20059}},
		},
		speakerID = 20059,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5171] =           -----------------�Ի�����--��ά��--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 29008}},
		},
		speakerID = 29008,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5172] =           -----------------�Ի�����--��ɭ--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 27073}},
		},
		speakerID = 27073,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5173] =           -----------------�Ի�����--����Ǭ--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 27074}},
		},
		speakerID = 27074,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		                {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5174] =           -----------------�Ի�����--����--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 20701}},
		},
		speakerID = 20701,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5175] =           -----------------�Ի�����--���Ļ�--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 27075}},
		},
		speakerID = 27075,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5176] =           -----------------�Ի�����--֣��--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 27076}},
		},
		speakerID = 27076,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5177] =           -----------------�Ի�����--����--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 27077}},
		},
		speakerID = 27077,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5178] =           -----------------�Ի�����--����--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 20021}},
		},
		speakerID = 20021,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5179] =           -----------------�Ի�����--����--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 20022}},
		},
		speakerID = 20022,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5180] =           -----------------�Ի�����--���--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 20023}},
		},
		speakerID = 20023,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		              {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5181] =           -----------------�Ի�����--ׯ�ε�--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 20025}},
		},
		speakerID = 20025,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5182] =           -----------------�Ի�����--����--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 20024}},
		},
		speakerID = 20024,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
	[5183] =           -----------------�Ի�����--��ɰ�--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.talk, npcID = 20026}},
		},
		speakerID = 20026,
		soundID = nil,
		txt = "�������������У����µ��Ӷ���Ŭ����������ȡ���ճ�ħ������",
		options =
		{
			{
			 showConditions = {},
			 optionTxt = "",
		     actions =
		              {
		               {action = DialogActionType.FinishLoopTask, param = {taskID = 10007}},
					  },	
		    },
		},
	},
-------------------------------- ����-----------------------
    [5184] =           -----------------��������--¬ֲ--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 20049}},
		},
		speakerID = 20049,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5185] =           -----------------��������--����ʦ--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 30320}},
		},
		speakerID = 30320,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5186] =           -----------------��������--�ʸ���--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 20059}},
		},
		speakerID = 20059,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5187] =           -----------------��������--��ά��--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 29008}},
		},
		speakerID = 29008,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5188] =           -----------------��������--��ɭ--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 27073}},
		},
		speakerID = 27073,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5189] =           -----------------��������--����Ǭ--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 27074}},
		},
		speakerID = 27074,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5190] =           -----------------��������--����--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 20701}},
		},
		speakerID = 20701,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5191] =           -----------------��������--���Ļ�--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 27075}},
		},
		speakerID = 27075,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5192] =           -----------------��������--֣��--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 27076}},
		},
		speakerID = 27076,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5193] =           -----------------��������--����--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 27077}},
		},
		speakerID = 27077,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5194] =           -----------------��������--����--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 20021}},
		},
		speakerID = 20021,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5195] =           -----------------��������--����--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 20022}},
		},
		speakerID = 20022,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5196] =           -----------------��������--���--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 20023}},
		},
		speakerID = 20023,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5197] =           -----------------��������--ׯ�ε�--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 20025}},
		},
		speakerID = 20025,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5198] =           -----------------��������--����--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 20024}},
		},
		speakerID = 20024,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
	[5199] =           -----------------��������--��ɰ�--------------------
	{
		dialogType = DialogType.HasOption,
		conditions ={
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.deliverLetters, npcID = 20026}},
		},
		speakerID = 20026,
		soundID = nil,
		txt = "�������㽫�����ҵ����ţ�������ô��",
		options =
		{
			[1] = {
			 showConditions = {},
			 optionTxt = "�����ż�",
		     actions =
		              {
		             {action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo ={count = 1},},},	
					  },	
		    },
		},
	},
-------------------------------- �Ͻ���Ʒ-----------------------
    [5200] =           -----------------�Ͻ���Ʒ--¬ֲ--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 20049}},
		},
		speakerID = 20049,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},

		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5201] =           -----------------�Ͻ���Ʒ--����ʦ--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 30320}},
		},
		speakerID = 30320,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5202] =           -----------------�Ͻ���Ʒ--�ʸ���--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 20059}},
		},
		speakerID = 20059,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5203] =           -----------------�Ͻ���Ʒ--��ά��--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 29008}},
		},
		speakerID = 29008,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5204] =           -----------------�Ͻ���Ʒ--��ɭ--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 27073}},
		},
		speakerID = 27073,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5205] =           -----------------�Ͻ���Ʒ--����Ǭ--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 27074}},
		},
		speakerID = 27074,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5206] =           -----------------�Ͻ���Ʒ--����--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 20701}},
		},
		speakerID = 20701,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5207] =           -----------------�Ͻ���Ʒ--���Ļ�--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 27075}},
		},
		speakerID = 27075,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5208] =           -----------------�Ͻ���Ʒ--֣��--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 27076}},
		},
		speakerID = 27076,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5209] =           -----------------�Ͻ���Ʒ--����--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 27077}},
		},
		speakerID = 27077,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5210] =           -----------------�Ͻ���Ʒ--����--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 20021}},
		},
		speakerID = 20021,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5211] =           -----------------�Ͻ���Ʒ--����--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 20022}},
		},
		speakerID = 20022,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5212] =           -----------------�Ͻ���Ʒ--���--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 20023}},
		},
		speakerID = 20023,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5213] =           -----------------�Ͻ���Ʒ--ׯ�ε�--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 20025}},
		},
		speakerID = 20025,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5214] =           -----------------�Ͻ���Ʒ--����--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 20024}},
		},
		speakerID = 20024,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5215] =           -----------------�Ͻ���Ʒ--��ɰ�--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.buyItem,npcID = 20026}},
		},
		speakerID = 20026,
		soundID = nil,
		txt = "��λ���������ҵ�����Ҫ�Ķ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ���Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10007, itemsInfo = {count = 1},},},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	-------------------------------- �Ͻɳ���-----------------------
    [5216] =           -----------------�Ͻɳ���--¬ֲ--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 20049}},
		},
		speakerID = 20049,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5217] =           -----------------�Ͻɳ���--����ʦ--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 30320}},
		},
		speakerID = 30320,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5218] =           -----------------�Ͻɳ���--�ʸ���	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 20059}},
		},
		speakerID = 20059,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5219] =           -----------------�Ͻɳ���--��ά��	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 29008}},
		},
		speakerID = 29008,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5220] =           -----------------�Ͻɳ���--��ɭ	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 27073}},
		},
		speakerID = 27073,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5221] =           -----------------�Ͻɳ���--����Ǭ	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 27074}},
		},
		speakerID = 27074,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5222] =           -----------------�Ͻɳ���--����	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 20701}},
		},
		speakerID = 20701,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5223] =           -----------------�Ͻɳ���--���Ļ�	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 27075}},
		},
		speakerID = 27075,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5224] =           -----------------�Ͻɳ���--֣��	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 27076}},
		},
		speakerID = 27076,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5225] =           -----------------�Ͻɳ���--����	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 27077}},
		},
		speakerID = 27077,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5226] =           -----------------�Ͻɳ���--����	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 20021}},
		},
		speakerID = 20021,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5227] =           -----------------�Ͻɳ���--����	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 20022}},
		},
		speakerID = 20022,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5228] =           -----------------�Ͻɳ���--���	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 20023}},
		},
		speakerID = 20023,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5229] =           -----------------�Ͻɳ���--ׯ�ε�	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 20025}},
		},
		speakerID = 20025,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5230] =           -----------------�Ͻɳ���--����	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 20024}},
		},
		speakerID = 20024,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5231] =           -----------------�Ͻɳ���--��ɰ�	--------------------
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,taskType = LoopTaskTargetType.catchPet,npcID = 20026}},
		},
		speakerID = 20026,
		soundID = nil,
		txt = "��������׽���쳣�ĳ�����ô��",
		options = 
		{
		[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10007}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[5232] =           -----------------�Ͻ����߽ӶԻ�2--------------------
	{
		dialogType = DialogType.NotOption,
		conditions ={},
		speakerID = 27150,
		soundID = nil,
		txt = "���򵽵���Ʒ����<mapID,x,y>��<npcID>����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
						},
			}
		},
	},
----------------------------------------��������ֶ���ϣ���������������---------------------------------------------
----------------------------���Ƿָ��ߣ����������߶Ի���������npc�Ի�-----------------------------------
	----------------------------��������ID�滮��20001~20150-------------------
	[20001] =    ----�����̵�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20012,
		txt = "���������ص���Ʒ�󶼿����������򵽣��͹�Ҫ��Ҫ��������",
		options =
		{
		[1] = {
				showConditions = {},
				optionTxt = "������ɶ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 1},},
				},
				icon = DialogIcon.Trade,
			},
		[2] = {
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20002] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20013,
		txt = "������صĵ��߶������������ﹺ��",
		options =
		{
		[1] = {
				showConditions = {},
				optionTxt = "������ɶ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 20},},
				},
				icon = DialogIcon.Trade,
			},
		[2] = {
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20003] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20014,
		txt = "������ר�ų������⹦����Ʒ���͹�Ҫ��Ҫ��������",
		options =
		{
		[1] = {
				showConditions = {},
				optionTxt = "������ɶ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 3},},
				},
				icon = DialogIcon.Trade,
			},
		[2] = {
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20004] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20015,
		txt = "������������ĳ����Լ���ص��ߣ��͹�Ҫ��Ҫ��������",
		options =
		{
		[1] = {
				showConditions = {},
				optionTxt = "������ɶ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 4},},
				},
				icon = DialogIcon.Trade,
			},
		[2] = {
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20005] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20016,
		txt = "������ݵ������Ϊ��ʡ�����ʱ�䣬������еıر����ߡ�",
		options =
		{
		[1] = {
				showConditions = {},
				optionTxt = "������ɶ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 5},},
				},
				icon = DialogIcon.Trade,
			},
		[2] = {
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20006] =             --�����������紫��npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID =20018 ,
		txt = "������������",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��԰��",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 9, tarX = 81, tarY = 91}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "����",   --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 118, tarX = 80, tarY = 156}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 13, tarX = 107, tarY = 93}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��¹",  --Ұ���ͼ
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 101, tarX = 93, tarY = 200}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "�ɽ",   --Ұ���ͼ2016/7/27
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 102, tarX = 136, tarY = 118}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "�ڷ���",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 104, tarX = 87, tarY = 191}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "�d��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 106, tarX = 77, tarY = 147}},--�л�����
				},
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 107, tarX = 167, tarY = 99}},--�л�����
				},
			},
			[9] =
			{
				showConditions = {},
				optionTxt = "���ι�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 109, tarX = 186, tarY = 106}},--�л�����
				},
			},
			[10] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 110 , tarX = 80, tarY = 129}},--�л�����
				},
			},
			[11] =
			{
				showConditions = {},
				optionTxt = "��ɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 115, tarX = 149, tarY = 128}},--�л�����
				},
			},
			[12] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 116, tarX = 227, tarY = 135}},--�л�����
				},
			},
			[13] = {
				showConditions = {},
				optionTxt = "��ʱ����",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		}
	},
	[20007] =             --�����������紫��npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID =30250 ,
		txt = "������������",
		options =
		{

		    [1] =
			{
				showConditions = {},
				optionTxt = "���",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 122, tarX = 161, tarY = 153}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�ٴ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 124, tarX = 175, tarY = 59}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "�ӱ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 126, tarX = 147, tarY = 140}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��ԯ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 127, tarX = 133, tarY = 228}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "�ٶ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 128, tarX = 92, tarY = 205}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 119, tarX = 164, tarY = 134}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 14, tarX = 94, tarY = 73}},--�л�����
				},
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 120, tarX = 114, tarY = 151}},--�л�����
				},
			},
			[9] = {
				showConditions = {},
				optionTxt = "��ʱ����",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20008] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20017,
		txt = "���϶���̫���ˣ��ҿ�����Ѱ�͹ٱ���Ǯ����Ʒ��", 
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.deliverLetters, npcID = 20017}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4453}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.deliverLetters, npcID = 20017}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4462}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.deliverLetters, npcID = 20017}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4471}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.deliverLetters, npcID = 20017}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4480}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.deliverLetters, npcID = 20017}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4489}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.deliverLetters, npcID = 20017}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4498}},
				},
			},			
			[7] =
			{
				showConditions = {},
				optionTxt = "�����Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "DepotWin"},},--����Ʒ�ֿ�
				},
				icon = DialogIcon.Box,
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "��ų���",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "PetDepotWin"},},--�򿪳���ֿ�
				},
				icon = DialogIcon.Box,
			},
		},
	},
	[20009] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20106,
		txt = "������Щ�����˻��úö����ְ��赶Ūǹ��˵����ʲôʱ��ͻ����ˣ�Ҫ�ǵö�׼��Щ��ҩ����ѽ��",
		options =
		{
		[1] = {
				showConditions = {},
				optionTxt = "������ɶ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 2},},
				},
				icon = DialogIcon.Trade,
			},
		[2] = {
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20010] =           ----------------------------������㣬�ӻ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20107,
		txt = "��ӭ���٣�������Ʒ��ȫ�����������������ѡ����",
		options =
		{
		[1] = {
				showConditions = {},
				optionTxt = "������ɶ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 1},},
				},
				icon = DialogIcon.Trade,
			},
		[2] = {
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20011] =         --------------------------��������������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20108,
		txt = "��Ǯ�Ҿ�����ɡ�",
		options =
		{
		[1] = {
				showConditions = {},
				optionTxt = "������ɶ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 5},},
				},
				icon = DialogIcon.Trade,
			},
		[2] = {
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20012] =        --------����Ԫ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29046,
		txt = "����Ԫ�����ˣ���������������������Ʒ��",
		options =
		{
		[1] = {
				showConditions = {},
				optionTxt = "������ɶ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 17},},
				},
				icon = DialogIcon.Trade,
			},
		[2] = {
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20013] =             --�������ɴ���npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29056,
		txt = "���̵��ӣ��ҿ������㵽�������ɡ�",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��ϼɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 3, tarX = 132, tarY = 70}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 2, tarX = 84, tarY = 31}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "ǬԪ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 1, tarX = 85, tarY = 64}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��Դ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 4, tarX = 108, tarY = 62}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 5, tarX = 51, tarY = 58}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 6, tarX = 103, tarY = 61}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 8, tarX = 101, tarY = 142}},--�л�����
				},
			},
			[8] = {
				showConditions = {},
				optionTxt = "�һ�������",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20014] =            -------------�����ǳ�������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20060,
		txt = "���¼�Ϊ�����ۼң����������������Գ��̵ĵ��̡�",
		options =
		{
			[1] = {
				showConditions = {
				{condition = DialogCondition.HasTask, param = {taskID = 1078, statue = true}},	
				},
				optionTxt = "�������ң���������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 259}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "ǿ����ѹ��ͷ�ߣ���������",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20015] =    -----------�����ʸ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20059,
		txt = "����ʧ�������µ������ܰ�Σ�����ߣ�Ψ�����",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.deliverLetters, npcID = 20059}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4457}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.deliverLetters, npcID = 20059}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4466}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.deliverLetters, npcID = 20059}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4475}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.deliverLetters, npcID = 20059}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4484}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.deliverLetters, npcID = 20059}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4493}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.deliverLetters, npcID = 20059}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4502}},
				},
			},
			[7] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 20059}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5075,5170,5186,5202,5218}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5170,5186,5202,5218}}},
				},
			},
			[8] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20016] =    -----------����¬ֲ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20049,
		txt = "��˪�Ա��ľ֮�ԣ�Σ�Ҷ�������֮�ڡ����´��ҡ������ҵ���ʶ֮ʿΪ������֮ʱ��",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.HasTask, param = {taskID = 1427, statue = true}},	
				},
				optionTxt = "�ʵ����ѣ���������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 1475}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.deliverLetters, npcID = 20049}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4451}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.deliverLetters, npcID = 20049}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4460}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.deliverLetters, npcID = 20049}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4469}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.deliverLetters, npcID = 20049}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4478}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.deliverLetters, npcID = 20049}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4487}},
				},
			},
			[7] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.deliverLetters, npcID = 20049}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4496}},
				},
			},
			[8] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 20049}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5073,5168,5184,5200,5216 }}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5168,5184,5200,5216 }}},
				},
			},
			[9] =
			{
				showConditions = {},
				optionTxt = "¬����������֮ʿ�����������",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
				icon = DialogIcon.Talk,
			},
		},
	},
	[20017] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29001,
		txt = "�Ϻõ��������͹�Ҫ��Ҫ��������",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.talk,npcID = 29001}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4354}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.talk,npcID = 29001}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4362}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.talk,npcID = 29001}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4370}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.talk,npcID = 29001}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4378}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.talk,npcID = 29001}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4386}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.talk,npcID = 29001}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4394}},
				},
			},
			[7] = {
				showConditions = {},
				optionTxt = "������ʲô����",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 6},},
				},
				icon = DialogIcon.Trade,
			},
			[8] ={
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20018] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29002,
		txt = "���´���Ļ��ף��͹�Ҫ��Ҫ��������",
		options =
		{
			[1] ={
				showConditions = {},
				optionTxt = "������ʲô����",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 7},},
				},
				icon = DialogIcon.Trade,
			},
			[2] ={
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20019] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29003,
		txt = "��Ҫʲô������",
		options =
		{
			[1] ={
				showConditions = {},
				optionTxt = "������ʲô��Ʒ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 8},},
				},
				icon = DialogIcon.Trade,
			},
			[2] ={
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20020] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29004,
		txt = "���Ǽ�԰�۹ܣ���ʲô����",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20021] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29005,
		txt = "��ϲ���о����¸�������������ܣ��ҿ��Խ��ҵ��о��������㣬��������ȡ�ķ��ÿɲ���Ŷ�������㻹�úķ�һ���ľ��顣�ҵ��о���͵ʦ������ᣬ��˴�������ѧϰ�����������ܵȼ��ǲ��ᳬ���������з����ĵȼ��ģ�",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.talk,npcID = 29005}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4351}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.talk,npcID = 29005}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4359}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.talk,npcID = 29005}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4367}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.talk,npcID = 29005}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4375}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.talk,npcID = 29005}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4383}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.talk,npcID = 29005}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4391}},
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "ѧϰ�����",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "LifeSkillStudyWin",show = 1,},},--������ֿܲ�
				},
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "���ٿ���",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20022] =
	{
		dialogType = DialogType.HasOption,
		conditions = {},
		speakerID = 29006,
		txt = "��ν·����ƽ���ε�������������û��ʱ�����������ˣ�",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "·����ƽһ�������������������ã�",
				actions =
				{
					{action = DialogActionType.FrozenBuff, param = {},},
				},
				icon = DialogIcon.Talk,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�´�����",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
				icon = DialogIcon.Talk,
			},
		}
	},
	[20023] =
	{
		dialogType = DialogType.HasOption,
		conditions = {},
		speakerID = 29007,
		txt = "������ֵ�������������ʶ���ȱ���ھ�����ԶԶ�������������п��������ǣ����ڵķ���Խ�ߣ�����Ҳ��Խ�á�",
		options =
		{
			[1] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.escort, npcID = 29007}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[2] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.escort, npcID = 29007}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[3] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.escort, npcID = 29007}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[4] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.escort, npcID = 29007}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[5] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.escort, npcID = 29007}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[6] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.escort, npcID = 29007}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "�������������������ã�",
				actions =
				{
					{action = DialogActionType.FrozenBuff, param = {},},
				},
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "�´�����",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		}
	},
	[20024] =            -------------�����ŵ������������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29008,
		txt = "�����Ž��ƻ�����̨��ʹ��аħ���������´��ң����ѿ���ʱ�����ҵ�һ��֮����Ϊ�������նɱаħ��",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.talk,npcID = 29008}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4352}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.talk,npcID = 29008}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4360}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.talk,npcID = 29008}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4368}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.talk,npcID = 29008}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4376}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.talk,npcID = 29008}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4384}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.talk,npcID = 29008}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4392}},
				},
			},			
			[7] = {
				showConditions = 
				{
				 {condition = DialogCondition.Level, param = {level = 30}},
				},
				optionTxt = "�����������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4032}},
				},
			},
			[8] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 29008}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5076,5171,5187,5203,5219}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5171,5187,5203,5219}}},
				},
			},
			[9] =
			{
				showConditions = {},
				optionTxt = "����û��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20025] =
	{
		dialogType = DialogType.HasOption,
		conditions = {},
		speakerID = 29065,
		txt = "���߱���ϱ����������������࣬�κζ�����������Ҷ���һ�ۿ�����١�",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "����װ��",
				actions =
				{
					{action = DialogActionType.OpenEquipAppraisal, param = {},},
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "��װ�����������ã�",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "�´�����",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		}
	},
	[20026] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{},
		speakerID = 29079,
		txt = "���´�������Ϊ�棬ĸ����������ʧ����ԸΪ���²���ɢ��ǧ�𣬵��ѿ�ԸΪ���²�����һ������",
		options = 
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.deliverLetters, npcID = 29079}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4454}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.deliverLetters, npcID = 29079}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4463}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.deliverLetters, npcID = 29079}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4472}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.deliverLetters, npcID = 29079}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4481}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.deliverLetters, npcID = 29079}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4490}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.deliverLetters, npcID = 29079}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4499}},
				},
			},	
			[7] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.donate}},
				},
				optionTxt = "��ƶ������ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4702}},
				},
			},
			[8] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.donate}},
				},
				optionTxt = "��ƶ������ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4704}},
				},
			},
			[9] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.donate}},
				},
				optionTxt = "��ƶ������ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4706}},
				},
			},
			[10] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.donate}},
				},
				optionTxt = "��ƶ������ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4708}},
				},
			},
			[11] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.donate}},
				},
				optionTxt = "��ƶ������ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4710}},
				},
			},
			[12] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.donate}},
				},
				optionTxt = "��ƶ������ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4712}},
				},
			},
			[13] =
			{
				showConditions = {},
				optionTxt = "���´�����",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20027] =            -----------------����-½��Ȼ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,countRing = 2,statue = true,errorID = 26}},
		{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = false,errorID = 25}},
		{condition = DialogCondition.Level, param = {level = 40,errorID = 22},},	
		},
		speakerID = 27150,
		txt = "���������ǿ�����˼���Ұ��գ���Ҫǿ����Ӣ��ǰȥնɱ��Щ����ǿ���������������һ����������������Ϊ�����Ƿ���ܴ�����",
		options =
        {
			[1] = {
				showConditions = {
				},
				optionTxt = "�������񣨻���10000������",
				actions =
				{
				  {action = DialogActionType.ConsumeRecetiveTask ,param = {type  = "money", value = 10000, taskID = 10007}},--����һ����Ǯ��������
				--{action = DialogActionType.RecetiveTask, param = {taskID = 10007}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5161,5163,5164,5165,5166,5167 }}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ���˵",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},

		},
	},
	[20028] =            -----------------����-½��Ȼ
	{
		dialogType = DialogType.HasOption,
		conditions = {},
		speakerID = 27150,
		soundID = nil,
		txt = "��ز��ʣ�������Ϊۻ�����������������У����д���Ҳ��",
		options = 
		{
			[1] = {
				showConditions = {
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 20027},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "����¡�������������������",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
    [20029] =            -----------------����-��������
	{
		dialogType = DialogType.HasOption,
		conditions = {},
		speakerID = 20928,
		soundID = nil,
		txt = "�������ش�����ˮ�������������򴦾���֮�У����С����ݸ��ء�֮�ơ�",
		options = 
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001,taskType = LoopTaskTargetType.talk,npcID = 20928}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4355}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002,taskType = LoopTaskTargetType.talk, npcID = 20928}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4363}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.talk,npcID = 20928}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4371}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.talk,npcID = 20928}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4379}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.talk,npcID = 20928}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4387}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006,taskType = LoopTaskTargetType.talk, npcID = 20928}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4395}},
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "�ܽ��ˣ����ȸ�ǡ�",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20030] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29080,
		txt = "��ϲ���о����¸�������������ܣ��ҿ��Խ��ҵ��о��������㣬��������ȡ�ķ��ÿɲ���Ŷ�������㻹�úķ�һ���ľ��顣�ҵ��о���͵ʦ������ᣬ��˴�������ѧϰ�����������ܵȼ��ǲ��ᳬ���������з����ĵȼ��ģ�",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "ѧϰ�����",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "LifeSkillStudyWin",show = 2,},},--������ֿܲ�
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "���ٿ���",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20031] =    ----��������npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20011,
		txt = "������Ʒ��������",
		options =
		{
		[1] = {
				showConditions = {},
				optionTxt = "������ɶ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 21},},
				},
				icon = DialogIcon.Trade,
			},
		[2] = {
				showConditions = {},
				optionTxt = "ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		[3] =
			{
				showConditions = {},
				optionTxt = "����ս����",
				actions =
				{
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 4001}},
				},
			},
		},
	},
	--------------------------------��԰��Ի�ID�滮��20151~20250------
	[20151] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20019,
		txt = "������԰�򳵷�",
		options =
		{

			[1] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "����",   --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 118, tarX = 80, tarY = 156}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 13, tarX = 107, tarY = 93}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��¹",  --Ұ���ͼ
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 101, tarX = 93, tarY = 200}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "�ɽ",   --Ұ���ͼ2016/7/27
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 102, tarX = 136, tarY = 118}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "�ڷ���",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 104, tarX = 87, tarY = 191}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "�d��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 106, tarX = 77, tarY = 147}},--�л�����
				},
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 107, tarX = 167, tarY = 99}},--�л�����
				},
			},
			[9] =
			{
				showConditions = {},
				optionTxt = "���ι�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 109, tarX = 186, tarY = 106}},--�л�����
				},
			},
			[10] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 110 , tarX = 80, tarY = 129}},--�л�����
				},
			},
			[11] =
			{
				showConditions = {},
				optionTxt = "��ɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 115, tarX = 149, tarY = 128}},--�л�����
				},
			},
			[12] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 116, tarX = 227, tarY = 135}},--�л�����
				},
			},
			[13] =
			{
				showConditions = {},
				optionTxt = "����תת",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20152] =             --��԰�����紫��npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID =30256 ,   ---�����
		txt = "������԰�򳵷�",
		options =
		{
			 [1] =
			{
				showConditions = {},
				optionTxt = "���",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 122, tarX = 161, tarY = 153}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�ٴ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 124, tarX = 175, tarY = 59}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "�ӱ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 126, tarX = 147, tarY = 140}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��ԯ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 127, tarX = 133, tarY = 228}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "�ٶ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 128, tarX = 92, tarY = 205}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 119, tarX = 164, tarY = 134}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 14, tarX = 94, tarY = 73}},--�л�����
				},
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 120, tarX = 114, tarY = 151}},--�л�����
				},
			},
			[9] =
			{
				showConditions = {},
				optionTxt = "����תת",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		}
	},
	[20153] =        --------��԰����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29009,
		txt = "����С�꣬�������������ʮ�ַ����������ﳬ��ֵ��",
		options =
		{
			[1]={
				showConditions = {},
				optionTxt = "������ʲô����",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 9},},
				},
				icon = DialogIcon.Trade,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "��ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20154] =        --------��԰��ҩ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29010,
		txt = "���߽���������ʲôʱ������˵ģ��౸Щҩ��׼û��",
		options =
		{
			[1] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.escort, npcID = 29010}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[2] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.escort, npcID = 29010}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[3] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.escort, npcID = 29010}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[4] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.escort, npcID = 29010}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[5] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.escort, npcID = 29010}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[6] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.escort, npcID = 29010}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "����ҩ��",
				actions =
				{
				{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 10},},
				},
				icon = DialogIcon.Trade,
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "��ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20155] =        --------��԰���������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29011,
		txt = "�������ۣ������������ܲ����׻��ף��͹�Ҫ��Ҫ������������������Ҫ����Ʒ��",
		options =
		{
			[1]={
				showConditions = {},
				optionTxt = "������ʲô����",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 11},},
				},
				icon = DialogIcon.Trade,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "��ֻ��·��",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20156] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29012,
		txt = "�����ǿ�ջС��������֪�����¿ɶ��ˣ�����֪��ʲô��",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.talk,npcID = 29012}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4356}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.talk,pcID = 29012}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4364}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.talk,npcID = 29012}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4372}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.talk,npcID = 29012}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4380}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.talk,npcID = 29012}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4388}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.talk,npcID = 29012}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4396}},
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "�´�������",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20157] =    -----------��԰���ջ�ϰ�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29013,
		txt = "��԰��羰��������԰��ջ������Ϣ�ľ��ѵط����͹�Ҫ��Ҫ��Ϣһ�£�",
		options =
		{
			[1] ={
				showConditions = {},
				optionTxt = "�ɵ�����",
				actions =
				{
				{action = DialogActionType.FlyEffect,  param= {flyEffectID = 73}},
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "��ʱ����",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20158] =        --------��԰���ӻ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29014,
		txt = "�ҵ���С������������Ʒ���෱�࣬˵������������Ҫ�ģ�",
		options =
		{
			[1]={
				showConditions = {},
				optionTxt = "������ʲô��Ʒ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 14},},
				},
				icon = DialogIcon.Trade,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "��ʱ����",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20159] =   ------------��԰�����ҽ��
	{
		dialogType = DialogType.HasOption,
		conditions = {},
		speakerID = 29015,
		txt = "���ǳ���ҽ���������˵ĳ��ﶼ���������ң���ɫ20��ǰ��ѣ�20�����շ������Ľ�Ǯ����Ҫ������",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�޸���ǰ��ս����",
				actions =
				{
					{action = DialogActionType.RepairPet, param = {},},
				},
				icon = DialogIcon.Talk,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�޸����г���",
				actions =
				{
					{action = DialogActionType.RepairAllPet, param = {},},
				},
				icon = DialogIcon.Talk,
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "û�£�������",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		}
	},
	[20160] =    -----------��԰����Ԫ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20027,
		txt = "������԰������Ԫ���⸽������ʲô�¶��������ҡ�",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.talk,npcID = 20027}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4353}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.talk,npcID = 20027}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4361}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.talk,npcID = 20027}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4369}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.talk,npcID = 20027}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4377}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.talk,npcID = 20027}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4385}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.talk,npcID = 20027}},	
				},
				optionTxt = "�ݷã�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4393}},
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "���",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		},
	},
	[20161] =    -----------��԰-��ɭ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 27073,
		txt = "���������У��������Ǻã�",
		options =
		{
		    [1] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 27073}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5077,5172,5188,5204,5220}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5172,5188,5204,5220}}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			}
		},
	},
	[20162] =    -----------��԰-����Ǭ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 27074,
		txt = "���´��ƣ����д��������ᣡ",
		options =
		{
		    [1] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 27074}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5078,5173,5189,5205,5221}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5173,5189,5205,5221}}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			}
		},
	},
	-----------------��������ID�滮��20251~20350---------
	[20251] =             --�������紫��npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID =30252 ,
		txt = "������������",
		options =
		{
		[1] =
			{
				showConditions = {},
				optionTxt = "��԰��",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 9, tarX = 81, tarY = 91}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "����",   --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 118, tarX = 80, tarY = 156}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 13, tarX = 107, tarY = 93}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��¹",  --Ұ���ͼ
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 101, tarX = 93, tarY = 200}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "�ɽ",   --Ұ���ͼ2016/7/27
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 102, tarX = 136, tarY = 118}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "�ڷ���",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 104, tarX = 87, tarY = 191}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "�d��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 106, tarX = 77, tarY = 147}},--�л�����
				},
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 107, tarX = 167, tarY = 99}},--�л�����
				},
			},
			[9] =
			{
				showConditions = {},
				optionTxt = "���ι�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 109, tarX = 186, tarY = 106}},--�л�����
				},
			},
			[10] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 110 , tarX = 80, tarY = 129}},--�л�����
				},
			},
			[11] =
			{
				showConditions = {},
				optionTxt = "��ɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 115, tarX = 149, tarY = 128}},--�л�����
				},
			},
			[12] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 116, tarX = 227, tarY = 135}},--�л�����
				},
			},
			[13] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		}
	},
	[20252] =             --�������紫��npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID =30253 ,
		txt = "������������",
		options =
		{

			[1] =
			{
				showConditions = {},
				optionTxt = "���",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 122, tarX = 161, tarY = 153}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�ٴ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 124, tarX = 175, tarY = 59}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "�ӱ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 126, tarX = 147, tarY = 140}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��ԯ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 127, tarX = 133, tarY = 228}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "�ٶ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 128, tarX = 92, tarY = 205}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 119, tarX = 164, tarY = 134}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 120, tarX = 114, tarY = 151}},--�л�����
				},
			},
			[9] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		}
	},
	[20253] =   ------------��������ҽ��
	{
		dialogType = DialogType.HasOption,
		conditions = {},
		speakerID = 29018,
		txt = "���ǳ���ҽ���������˵ĳ��ﶼ���������ң���ɫ20��ǰ��ѣ�20�����շ������Ľ�Ǯ����Ҫ������",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�޸���ǰ��ս����",
				actions =
				{
					{action = DialogActionType.RepairPet, param = {},},
				},
				icon = DialogIcon.Talk,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�޸����г���",
				actions =
				{
					{action = DialogActionType.RepairAllPet, param = {},},
				},
				icon = DialogIcon.Talk,
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "û�£�������",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
				icon = DialogIcon.Talk,
			},
		}
	},
	[20254] =    -----------����������ʦ
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29019,
		txt = "�Ϸ����������ô���꣬��û�������ⷽ������賬���ҵġ�",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20255] =        --------�����ӻ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29020,
		txt = "��������������Ķ�������ȫ�ģ��͹�Ҫ��Ҫ��������",
		options =
		{
			[1]={
				showConditions = {},
				optionTxt = "������ʲô��Ʒ",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 12},},
				},
				icon = DialogIcon.Trade,
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20256] =        --------����ҩ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29021,
		txt = "�������߽�������ҪС��һЩ���ǵö౸Щҩ�ģ��Է����Ⱑ��",
		options =
		{
			[1]={
				showConditions = {},
				optionTxt = "����ҩ��",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 2},},
				},
				icon = DialogIcon.Trade,
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20257] =    -----------����Ǯׯ�ϰ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29022,
		txt = "���ǿ��԰������Ǯ�ơ�",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20258] =    -----------�����Ƶ��ϰ�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29023,
		txt = "�������������Ψһ�ľƵꡣ",
		options =
		{
			[1] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.escort, npcID = 29023}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[2] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.escort, npcID = 29023}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[3] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.escort, npcID = 29023}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[4] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.escort, npcID = 29023}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[5] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.escort, npcID = 29023}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[6] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.escort, npcID = 29023}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[7] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20259] =    -----------������������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29057,
		txt = "û��һ�׺õķ��ߣ�����ô��ȫ�Լ����͹��������ɣ��Ҷ��ҵķ������㹻�����ġ�",
		options =
		{
			[1]={
				showConditions = {},
				optionTxt = "������ʲô����",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 19},},
				},
				icon = DialogIcon.Trade,
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20260] =        --------������������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29058,
		txt = "����С�꣬�������������ʮ�ַ����������ﳬ��ֵ��",
		options =
		{
			[1]={
				showConditions = {},
				optionTxt = "������ʲô����",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 18},},
				},
				icon = DialogIcon.Trade,
			},
			[2] = {
				showConditions = {},
				optionTxt = "��ֻ��·��",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20261] =    -----------����-֣��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 27076,
		txt = "�����������ܶ���֣����Ҳ�����Ǻ��ˣ�",
		options =
		{
		 [1] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 27076}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5081,5176,5192,5208,5224}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5176,5192,5208,5224}}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			}
		},
	},
	[20262] =    -----------����-����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 27077,
		txt = "���˶����Ͻ���������Ҳ�����Ǻ��ˣ�",
		options =
		{
		[1] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 27077}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5082,5177,5193,5209,5225}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5177,5193,5209,5225}}},
				},
			},
		[2] = {
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	---------------�������ǶԻ�ID�滮��20351~20450--------
	[20351] =             --�����������紫��npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID =30256 ,
		txt = "���ǳ�������",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��԰��",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 9, tarX = 81, tarY = 91}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "����",   --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 118, tarX = 80, tarY = 156}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��¹",  --Ұ���ͼ
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 101, tarX = 93, tarY = 200}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "�ɽ",   --Ұ���ͼ2016/7/27
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 102, tarX = 136, tarY = 118}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "�ڷ���",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 104, tarX = 87, tarY = 191}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "�d��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 106, tarX = 77, tarY = 147}},--�л�����
				},
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 107, tarX = 167, tarY = 99}},--�л�����
				},
			},
			[9] =
			{
				showConditions = {},
				optionTxt = "���ι�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 109, tarX = 186, tarY = 106}},--�л�����
				},
			},
			[10] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 110 , tarX = 80, tarY = 129}},--�л�����
				},
			},
			[11] =
			{
				showConditions = {},
				optionTxt = "��ɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 115, tarX = 149, tarY = 128}},--�л�����
				},
			},
			[12] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 116, tarX = 227, tarY = 135}},--�л�����
				},
			},
			[13] = {
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		}
	},
	[20352] =             --�������紫��npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID =30257 ,
		txt = "���ǳ�������",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "���",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 122, tarX = 161, tarY = 153}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�ٴ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 124, tarX = 175, tarY = 59}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "�ӱ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 126, tarX = 147, tarY = 140}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��ԯ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 127, tarX = 133, tarY = 228}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "�ٶ�",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 128, tarX = 92, tarY = 205}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 119, tarX = 164, tarY = 134}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 14, tarX = 94, tarY = 73}},--�л�����
				},
			},
			[8] =
			{
				showConditions = {},
				optionTxt = "����",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 120, tarX = 114, tarY = 151}},--�л�����
				},
			},
			[9] = {
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		}
	},
	[20353] =    -----------��������ϰ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29029,
		txt = "����ս������㣬��֤�������ʣ��͹��費��Ҫ��һ����",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20354] =    -----------������������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29030,
		txt = "㎿�ֱ�ϣ����ֽ��ѣ��ٻ��������ң������������졣",
		options =
        {
			[1] = {
				showConditions = {
				{condition = DialogCondition.HasTask, param = {taskID = 1326, statue = true}},	
				},
				optionTxt = "��֪���䣨��������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 1378}},
				},
			},
			[2] = {
				showConditions = {
				{condition = DialogCondition.HasTask, param = {taskID = 1327, statue = true}},	
				},
				optionTxt = "����ǿ������������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 1383}},
				},
			},
			[3] = {
				showConditions = {
				{condition = DialogCondition.HasTask, param = {taskID = 1511, statue = true}},	
				},
				optionTxt = "������ԭ����������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 1532}},
				},
			},
			[4] = {
				showConditions = {
				{condition = DialogCondition.HasTask, param = {taskID = 1516, statue = true}},	
				},
				optionTxt = "�ٻ����飨��������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 1546}},
				},
			},
			[5] = {
				showConditions = {
				{condition = DialogCondition.HasTask, param = {taskID = 1509, statue = true}},	
				},
				optionTxt = "�ռ����ۣ���������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 1524}},
				},
			},
			[6] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20355] =    -----------������������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29031,
		txt = "�д����������߹�һ�����Դ�����ˡ�",
		options =
		{
			[1] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.escort, npcID = 29031}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[2] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.escort, npcID = 29031}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[3] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.escort, npcID = 29031}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[4] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.escort, npcID = 29031}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[5] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.escort, npcID = 29031}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[6] =
			{
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.escort, npcID = 29031}},
				},
				optionTxt = "��;��Ů��ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4824}},
				},
			},
			[7] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20356] =    -----------�����Ƶ��ϰ�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29032,
		txt = "������ǳ��������õľƵ꣬�͹�Ҫ��Ҫ����������",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20357] =   ------------��������ҽ��
	{
		dialogType = DialogType.HasOption,
		conditions = {},
		speakerID = 29033,
		txt = "���ǳ���ҽ���������˵ĳ��ﶼ���������ң���ɫ20��ǰ��ѣ�20�����շ������Ľ�Ǯ����Ҫ������",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�޸���ǰ��ս����",
				actions =
				{
					{action = DialogActionType.RepairPet, param = {},},
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�޸����г���",
				actions =
				{
					{action = DialogActionType.RepairAllPet, param = {},},
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "û�£�������",
				actions =
				{
					{action = DialogActionType.CloseDialog, param = {},},
				},
			},
		}
	},
	[20358] =    -----------������ʦ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29034,
		txt = "����������һ�У���Ҫ���ڵ�����ı����׼����",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.deliverLetters, npcID = 29034}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4456}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.deliverLetters, npcID = 29034}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4465}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.deliverLetters, npcID = 29034}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4474}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.deliverLetters, npcID = 29034}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4483}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.deliverLetters, npcID = 29034}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4492}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.deliverLetters, npcID = 29034}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4501}},
				},
			},
			[7] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20359] =    -----------�����ӻ���
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29035,
		txt = "�ڳ����������������������࣬һ���п͹�ϲ������Ʒ",
		options =
		{
			[2] ={
				showConditions = {},
				optionTxt = "������ʲô����",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 13},},
				},
				icon = DialogIcon.Trade,
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20360] =    -----------������ͷ���ϰ�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29036,
		txt = "������ͷ��������ֺţ���֤������ζ��",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.deliverLetters, npcID = 29036}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4455}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.deliverLetters, npcID = 29036}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4464}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.deliverLetters, npcID = 29036}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4473}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.deliverLetters, npcID = 29036}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4482}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.deliverLetters, npcID = 29036}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4491}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.deliverLetters, npcID = 29036}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4500}},
				},
			},
			[7] = {
				showConditions = {},
				optionTxt = "�´�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20361] =    -----------������������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29037,
		txt = "���������ϼѵ���������֤�㹻������",
		options =
		{
			[1]={
				showConditions = {},
				optionTxt = "������ʲô����",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 15},},
				},
				icon = DialogIcon.Trade,
			},
			[2] = {
				showConditions = {},
				optionTxt = "�´�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20362] =    -----------������������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29038,
		txt = "û��һ�׺õķ��ߣ�����ô��ȫ�Լ����͹��������ɣ��Ҷ��ҵķ������㹻�����ġ�",
		options =
		{
			[1]={
				showConditions = {},
				optionTxt = "������ʲô����",
				actions =
				{
					{action = DialogActionType.RequestNpcTrade , param = {npcPackID = 16},},
				},
				icon = DialogIcon.Trade,
			},
			[2] = {
				showConditions = {},
				optionTxt = "�´�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20363] =        ---�����ֿ����Ա
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29039,
		txt = "�������������׸̫�࣬�͹ٿ��Դ�һЩ�������",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�����Ʒ",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "DepotWin"},},--����Ʒ�ֿ�
				},
				icon = DialogIcon.Box,
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "��ų���",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {},},--�򿪳���ֿ�
				},
				icon = DialogIcon.Box,
			},
		},
	},
	[20364] =    -----------��������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20701,
		txt = "��ϥ�Ҽ�Ϊ��������ƽ¥�»ټ鳼��Ϊ���²�������˾ͽ����Ը��һ��֮�������ֺ�����",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.deliverLetters, npcID = 20701}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4458}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.deliverLetters, npcID = 20701}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4467}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.deliverLetters, npcID = 20701}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4476}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.deliverLetters, npcID = 20701}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4485}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.deliverLetters, npcID = 20701}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4494}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.deliverLetters, npcID = 20701}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4503}},
				},
			},
			 [7] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 20701}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5079,5174,5190,5206,5222}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5174,5190,5206,5222}}},
				},
			},
			[8] = {
				showConditions = {},
				optionTxt = "�������������ȸ��ˡ�",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20365] =    -----------����-���Ļ�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 27075,
		txt = "���´��ƣ��־ñغϣ��Ͼñط֣�",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.deliverLetters, npcID = 27075}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4452}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.deliverLetters, npcID = 27075}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4461}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.deliverLetters, npcID = 27075}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4470}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.deliverLetters, npcID = 27075}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4479}},
				},
			},
			[5] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.deliverLetters, npcID = 27075}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4488}},
				},
			},
			[6] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.deliverLetters, npcID = 27075}},
				},
				optionTxt = "���ŵ��ţ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4497}},
				},
			},
			[7] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 27075}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5080,5175,5191,5207,5223}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5175,5191,5207,5223}}},
				},
			},
			[8] = {
				showConditions = {},
				optionTxt = "�Ժ�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	------------------������npc�Ի��滮��20451~20500------------
	[20451] =             --����������ͯ�Ӵ���npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20003,
		txt = "���̵��ӣ��ҿ��������·���",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��ϼɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 3, tarX = 132, tarY = 70}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 2, tarX = 84, tarY = 31}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "ǬԪ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 1, tarX = 85, tarY = 64}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��Դ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 4, tarX = 108, tarY = 62}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 5, tarX = 51, tarY = 58}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 6, tarX = 103, tarY = 61}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
			[8] = {
				showConditions = {
				{condition = DialogCondition.HasTask, param = {taskID = 1168, statue = true}},	
				},
				optionTxt = "����飨��������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 1166}},
				},
			},
			[9] = {
				showConditions = {},
				optionTxt = "�һ�Ҫ������",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20452] =    -----------Ԫʼ����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 20002,
		txt = "���ߣ��۽�����֮�޼�ʥ�ڣ�����������ͨ������ʥ������������������������֮�У����޼����գ�����֮�������棬�������������񣬻���ǧ��٣�̫������Ӧ�ȣ��޼�ʥ��ʼ��̫����",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20453] =    -----------�׺�ͯ��
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 20001,
		txt = "Ԫ�ߣ���Ҳ��ʼ�ߣ���Ҳ������֮��Ҳ��������Ϊ��������֮�ˣ���Ϊ�̹ţ���Ϊ�������֮�棬��ΪԪʼ����ʦ���ڿ���֮ʼ����Ϊʦ��ѡ��֮�ˣ����й���֮����",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	---------ǬԪ��npc�Ի�ID�滮��20501~20550
	[20501] =             --ǬԪ�����ɴ���npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29050,
		txt = "ǬԪ����������������Ĵ�����һ������Ҫ�뿪�ҿ�������һ��",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��ϼɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 3, tarX = 132, tarY = 70}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 2, tarX = 84, tarY = 31}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��Դ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 4, tarX = 108, tarY = 62}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 5, tarX = 51, tarY = 58}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 6, tarX = 103, tarY = 61}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 8, tarX = 101, tarY = 142}},--�л�����
				},
			},
			[8] = {
				showConditions = {},
				optionTxt = "����תת",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20502] =    -----------ǬԪ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20004,
		txt = "����系���»���������Ӱ�����ơ���ս����˭�˵У���а��ħδ���¡�",
		options =
		{
			[1] = {
				showConditions = 
				{	
				 {condition = DialogCondition.School, param = {school = SchoolType.QYD}},
				},
				optionTxt = "ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4202}},
				},
			},
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.catchPet, npcID = 20004}},
				},
				optionTxt = "�Ͻ����ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4551}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.buyItem, npcID = 20004}},
				},
				optionTxt = "�Ͻ����ߣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4601}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001, taskType = LoopTaskTargetType.itemTalk, npcID = 20004}},
				},
				optionTxt = "��ɽ֮�У�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4781}},
				},
			},
			[5] = {
				showConditions = {},
				optionTxt = "����������",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20503] =    -----------ǬԪ������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29059,
		txt = "��Ϊ���ɵ��ӣ���һ��������ն����ħ���Կ�����Ϊ���Σ������������¡�",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20504] =    -----------ǬԪ�������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20021,
		txt = "�޵�����̤ʵ�أ��в��ɼ�����������û�����Ϊ��Ҫ��",
		options =
		{
			[1] = {
				showConditions = {
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001,taskType = LoopTaskTargetType.brightMine,npcID = 20021}},	
				},
				optionTxt = "��ս����ӣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4271}},
				},
			},
			[2] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 20021}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5083,5178,5194,5210,5226}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5178,5194,5210,5226}}},
				},
			},
			[3] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},

	[20505] =    -----------ǬԪ��ִ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29066,
		txt = "Ҫ����ɱ�����ղ��ɲ�����ƽʱҪ��ĥ���Լ����У�",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10001,taskType = LoopTaskTargetType.brightMine,npcID = 29066}},
				},
				optionTxt = "��ս���ϣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4272}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20506] =    -----------ǬԪ����Ӣ����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29072,
		txt = "����ǬԪ��������ʼ����ͳ�졣ǬԪ��Ϊ���£�ǬԪ���ӵ�Ϊ���¶�ս��",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	---------��Դ��npc�Ի�ID�滮��20551~20600-----------
	[20551] =             --��Դ�����ɴ���npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29051,
		txt = "��Դ����������֮�ϣ����ǲ����������㲻���Ĵ�תת����Ҫ�뿪���ҿ�������һ�̡�",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��ϼɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 3, tarX = 132, tarY = 70}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 2, tarX = 84, tarY = 31}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "ǬԪ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 1, tarX = 85, tarY = 64}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 5, tarX = 51, tarY = 58}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 6, tarX = 103, tarY = 61}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 8, tarX = 101, tarY = 142}},--�л�����
				},
			},
			[8] = {
				showConditions = {},
				optionTxt = "��Ҫ��תת",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20552] =    -----------��Դ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20005,
		txt = "�ȶ�������ɽ������ˮ���ƺμ��������ؿհ�����������������ң̾��",
		options =
		{
			[1] = {
				showConditions = 
				{
				 {condition = DialogCondition.School, param = {school = SchoolType.TYD}},
				},
				optionTxt = "ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4210}},
				},
			},			
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.catchPet, npcID = 20005}},
				},
				optionTxt = "�Ͻ����ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4559}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.buyItem, npcID = 20005}},
				},
				optionTxt = "�Ͻ����ߣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4609}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005, taskType = LoopTaskTargetType.itemTalk, npcID = 20005}},
				},
				optionTxt = "��ɽ֮�У�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4789}},
				},
			},
			[5] = {
				showConditions = {},
				optionTxt = "�����ȸ���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20553] =    -----------��Դ������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29060,
		txt = "��Ϊ���ɵ��ӣ���һ��������ն����ħ���Կ�����Ϊ���Σ������������¡�",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20554] =    -----------��Դ�������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20025,
		txt = "���е�����ΪӪ�����𼱹���������������֮������",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005,taskType = LoopTaskTargetType.brightMine,npcID = 20025}},
				},
				optionTxt = "��ս����ӣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4283}},
				},
			},			 
			 [2] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 20025}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5086,5181,5197,5213,5229}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5181,5197,5213,5229}}},
				},
			},
			[3] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20555] =    -----------��Դ��ִ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29067,
		txt = "��Դ���������ޱȣ�����������֮�ϣ����������м��мǡ�",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10005,taskType = LoopTaskTargetType.brightMine,npcID = 29067}},
				},
				optionTxt = "��ս���ϣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4284}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20556] =    -----------��Դ����Ӣ����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29073,
		txt = "��Դ�����������������ϸ��ĥ������ʶ�������",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	---------��ϼɽnpc�Ի�ID�滮��20601~20650-----------
	[20601] =             --��ϼɽ���ɴ���npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29052,
		txt = "��Į���硢�������յķ��ܲ�һ���ɣ��п���ɵ�����������Ҫ�뿪�ҿ�������һ�̡�",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 2, tarX = 84, tarY = 31}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "ǬԪ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 1, tarX = 85, tarY = 64}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��Դ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 4, tarX = 108, tarY = 62}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 5, tarX = 51, tarY = 58}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 6, tarX = 103, tarY = 61}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 8, tarX = 101, tarY = 142}},--�л�����
				},
			},
			[8] = {
				showConditions = {},
				optionTxt = "��Ҫ��תת",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20602] =    -----------��ϼɽ����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20006,
		txt = "��ǹһ�ᶯɽ�ӣ����������Ǭ�����ﾡ��а��ϼ�壬����ݽ���������",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.School, param = {school = SchoolType.JXS}},
				},
				optionTxt = "ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4204}},
				},
			},			
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.catchPet, npcID = 20006}},
				},
				optionTxt = "�Ͻ����ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4553}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.buyItem, npcID = 20006}},
				},
				optionTxt = "�Ͻ����ߣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4603}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002, taskType = LoopTaskTargetType.itemTalk, npcID = 20006}},
				},
				optionTxt = "��ɽ֮�У�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4783}},
				},
			},
			[5] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20603] =    -----------��ϼɽ����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29061,
		txt = "��Ϊ���ɵ��ӣ���һ��������ն����ħ���Կ�����Ϊ���Σ������������¡�",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20604] =    -----------��ϼɽ�����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20023,
		txt = "���е�����ΪӪ�����𼱹���������������֮������",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002,taskType = LoopTaskTargetType.brightMine,npcID = 20023}},	
				},
				optionTxt = "��ս����ӣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4274}},
				},
			},			 
			[2] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 20023}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5085,5180,5196,5212,5228}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5180,5196,5212,5228}}},
				},
			},
			[3] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20605] =    -----------��ϼɽִ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29068,
		txt = "���ڽ�ϼɽɽ�£����޾�����ʬ֮�࣬��ս��ɳ��Ϊ�١�",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10002,taskType = LoopTaskTargetType.brightMine,npcID = 29068}},
				},
				optionTxt = "��ս���ϣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4275}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20606] =    -----------��ϼɽ��Ӣ����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29074,
		txt = "���ɱ�����ǹΪ����������ɱ����ѡ������",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	---------������npc�Ի�ID�滮��20651~20700-----------
	[20651] =             --���������ɴ���npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29053,
		txt = "������ɫ��ׯ���������һ������Ҫ�뿪���ҿ�������һ�̡�",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��ϼɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 3, tarX = 132, tarY = 70}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "ǬԪ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 1, tarX = 85, tarY = 64}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��Դ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 4, tarX = 108, tarY = 62}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 5, tarX = 51, tarY = 58}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 6, tarX = 103, tarY = 61}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 8, tarX = 101, tarY = 142}},--�л�����
				},
			},
			[8] = {
				showConditions = {},
				optionTxt = "��Ҫ��תת",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20652] =    -----------����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20007,
		txt = "��˪�����ղ׺�����˿����ѩ���¡�����������������ҽ�����ɶ��˼䡣",
		options =
		{
			[1] = {
				showConditions = 
				{
			        {condition = DialogCondition.School, param = {school = SchoolType.PLG}},
				},
				optionTxt = "ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4212}},
				},
			},			
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.catchPet, npcID = 20007}},
				},
				optionTxt = "�Ͻ����ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4561}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.buyItem, npcID = 20007}},
				},
				optionTxt = "�Ͻ����ߣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4611}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006, taskType = LoopTaskTargetType.itemTalk, npcID = 20007}},
				},
				optionTxt = "��ɽ֮�У�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4791}},
				},
			},
			[5] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20653] =    -----------��������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29062,
		txt = "��Ϊ���ɵ��ӣ���һ��������ն����ħ���Կ�����Ϊ���Σ������������¡�",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20654] =    -----------����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20022,
		txt = "���е�����ΪӪ�����𼱹���������������֮������",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006,taskType = LoopTaskTargetType.brightMine,npcID = 20022}},
				},
				optionTxt = "��ս����ӣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4286}},
				},
			},
		    [2] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 20022}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5084,5179,5195,5211,5227}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5179,5195,5211,5227}}},
				},
			},
			[3] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20655] =    -----------������ִ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29069,
		txt = "ҽ�ߣ��ƿɾȻ�һ������ɶ���������ǲ����ô���",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10006,taskType = LoopTaskTargetType.brightMine,npcID = 29069}},
				},
				optionTxt = "��ս���ϣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4287}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20656] =    -----------������Ӣ����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29075,
		txt = "�������Ծ�������Ϊ���Σ���ʩ���Ʒ����Ҹ���ġ�",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	---------������npc�Ի�ID�滮��20701~20750-----------
	[20701] =             --���������ɴ���npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29054,
		txt = "�����ž���Ⱥɽ֮�У������䣬��·���У���Ҫ�뿪���ҿ�������һ�̡�",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��ϼɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 3, tarX = 132, tarY = 70}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 2, tarX = 84, tarY = 31}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "ǬԪ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 1, tarX = 85, tarY = 64}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��Դ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 4, tarX = 108, tarY = 62}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 5, tarX = 51, tarY = 58}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 8, tarX = 101, tarY = 142}},--�л�����
				},
			},
			[8] = {
				showConditions = {},
				optionTxt = "��Ҫ��תת",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20702] =    -----------����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20008,
		txt = "һ����������ݣ�������պϰ˻ġ������ķ����±ܣ���ɢ�����˼�š�",
		options =
		{
			[1] = {
				showConditions = 
				{
				 {condition = DialogCondition.School, param = {school = SchoolType.ZYM}},
				},
				optionTxt = "ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4206}},
				},
			},			
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.catchPet, npcID = 20008}},
				},
				optionTxt = "�Ͻ����ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4555}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.buyItem, npcID = 20008}},
				},
				optionTxt = "�Ͻ����ߣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4605}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003, taskType = LoopTaskTargetType.itemTalk, npcID = 20008}},
				},
				optionTxt = "��ɽ֮�У�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4785}},
				},
			},
			[5] = {
				showConditions = {},
				optionTxt = "���Ӹ���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20703] =    -----------�����ų���
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29063,
		txt = "��Ϊ���ɵ��ӣ���һ��������ն����ħ���Կ�����Ϊ���Σ������������¡�",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20704] =    -----------�����Ŵ����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20026,
		txt = "���е�����ΪӪ�����𼱹���������������֮������",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003,taskType = LoopTaskTargetType.brightMine,npcID = 20026}},
				},
				optionTxt = "��ս����ӣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4277}},
				},
			},			 
			 [2] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 20026}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5088,5183,5199,5215,5231}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5183,5199,5215,5231}}},
				},
			},
			[3] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20705] =    -----------������ִ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29070,
		txt = "��������������˫���ٲ�����Ҳ���ڻ��¡�",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10003,taskType = LoopTaskTargetType.brightMine,npcID = 29070}},
				},
				optionTxt = "��ս���ϣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4278}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20706] =    -----------�����ž�Ӣ����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29076,
		txt = "������ר�ڹ���֮����ȡ���׼���ǧ��֮�⡣",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	-----------������npc�Ի�ID�滮��20751~20800
	[20751] =             --���������ɴ���npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29055,
		txt = "��������ɽ�������羰����һ����ζ������Ե������ߡ���Ҫ�뿪���ҿ�������һ�̡�",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��ϼɽ",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 3, tarX = 132, tarY = 70}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 2, tarX = 84, tarY = 31}},--�л�����
				},
			},
			[3] =
			{
				showConditions = {},
				optionTxt = "ǬԪ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 1, tarX = 85, tarY = 64}},--�л�����
				},
			},
			[4] =
			{
				showConditions = {},
				optionTxt = "��Դ��",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 4, tarX = 108, tarY = 62}},--�л�����
				},
			},
			[5] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
			[6] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 6, tarX = 103, tarY = 61}},--�л�����
				},
			},
			[7] =
			{
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 8, tarX = 101, tarY = 142}},--�л�����
				},
			},
			[8] = {
				showConditions = {},
				optionTxt = "��Ҫ��תת",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20752] =    -----------����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 20009,
		txt = "�����ǳ��j��ã�������컪���������������������У�ȴЦ��԰�����С�",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.School, param = {school = SchoolType.YXG}},
				},
				optionTxt = "ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4208}},
				},
			},			
			[2] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.catchPet, npcID = 20009}},
				},
				optionTxt = "�Ͻ����ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4557}},
				},
			},
			[3] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.buyItem, npcID = 20009}},
				},
				optionTxt = "�Ͻ����ߣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4607}},
				},
			},
			[4] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004, taskType = LoopTaskTargetType.itemTalk, npcID = 20009}},
				},
				optionTxt = "��ɽ֮�У�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4787}},
				},
			},
			[5] = {
				showConditions = {},
				optionTxt = "���Ӹ���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20753] =    -----------����������
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29064,
		txt = "��Ϊ���ɵ��ӣ���һ��������ն����ħ���Կ�����Ϊ���Σ������������¡�",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	[20754] =    -----------�����������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20024,
		txt = "���е�����ΪӪ�����𼱹���������������֮������",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004,taskType = LoopTaskTargetType.brightMine,npcID = 20024}},
				},
				optionTxt = "��ս����ӣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4280}},
				},
			},			 
			 [2] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 20024}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5087,5182,5198,5214,5230}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5182,5198,5214,5230}}},
				},
			},
			[3] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20755] =    -----------������ִ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29071,
		txt = "�������������ģ���֮���򣬽�����ָ���򹥵�����ʤ��",
		options =
		{
			[1] = {
				showConditions = 
				{
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10004,taskType = LoopTaskTargetType.brightMine,npcID = 29071}},
				},
				optionTxt = "��ս���ϣ�ʦ������",
				actions =
				{
				{action = DialogActionType.Goto, param = {dialogID = 4281}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20756] =    -----------��������Ӣ����
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29077,
		txt = "�����������������ף���������ħ���ң��������Ӳ���������ɽ��",
		options =
		{
			{
				showConditions = {},
				actions =
				{
				},
			}
		},
	},
	--------------------��������npc�Ի�ID��20801~20850
	[20801] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
			{condition = DialogCondition.Faction, param = {factionDBID = 1}},
		},
		speakerID = 29048,
		txt = "����Ϊ�ף��ε����ա�������ּ���������ģ�����Ϊ�أ�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "�����ҵİ������",
				actions =
				{
					{action = DialogActionType.EnterFactionScene , param ={tarX = 86, tarY = 68}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20802] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
			{condition = DialogCondition.Faction, param = {factionDBID = 0}},
		},
		speakerID = 29048,
		txt = "����Ϊ�ף��ε����ա�������ּ���������ģ�����Ϊ�أ�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "�����°���",
				actions =
				{
					{action = DialogActionType.CreateFaction , param = {v = "FactionCreateWin"},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�鿴�����б�",
				actions =
				{
					{action = DialogActionType.ShowFactionList , param = {v = "FactionListWin"},},
				},
			},
			[3] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20803] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
			
		},
		speakerID = 29049,
		txt = "TP����",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "���͵�������",
				actions =
				{
					{action = DialogActionType.SwithScene , param ={tarMapID  = 10, tarX = 134, tarY = 204}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20804] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
			
		},
		speakerID = 29078,
		txt = "лл�㳤����ô˧������",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "������",
				actions =
				{
					{action = DialogActionType.ContributeFaction , param ={v = "FactionContributeWin"}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	--------------------��������npc�Ի�ID��20851~21000--------
	[20851] =             --����35-36���ɽ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20834,
		txt = "�ҿ���������ȥ������ȷ��Ҫȥô��",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "����",  --����
				actions =
				{
					{action = DialogActionType.SwithScene ,param = {tarMapID  = 10, tarX = 200, tarY = 200}},--�л�����
				},
			},
		},
	},
	[20852] =            -------------��������35-36�������ɽ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.HasTasks, param = {taskIDs = {1311,1313,1315,1317,1319,1321,1328,1339}, statue = true}},	
		},
		speakerID = 29055,
		txt = "���̵��ӣ��ҿ������㵽���ɽ��",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "���ɽ",
				actions =
				{
					{action = DialogActionType.SwithScene , param ={tarMapID  = 129, tarX = 121, tarY = 34}},
				},
			},

		},
	},
	[20853] =             -------------��������35-36������ID1328���Ͻ���Ʒ��
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		{condition = DialogCondition.HasTask, param = {taskID = 1328, statue = true}},	
		},
		speakerID = 20829,
		soundID = nil,
		txt = "���ҵ������ط��Ĳ�����ô��",
		options = 
		{
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 1328,itemsInfo = {{itemID = 1041001, count = 1},{itemID = 1041002, count = 1},{itemID = 1041003, count = 1},{itemID = 1041004, count = 1}}},},
				},
			},
		},
	},
	[20854] =             -------------��������33-34������ID1328���Ͻ���Ʒ��
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		{condition = DialogCondition.HasTask, param = {taskID = 1223, statue = true}},	
		},
		speakerID = 20711,
		soundID = nil,
		txt = "������õ���ɽѩ����",
		options = 
		{
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�����",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 1223,itemsInfo = {{itemID = 1041014, count = 1}}},},
				},
			},
		},
	},
	----���ɴ��ػ

	[20860] =    -----------���ɴ���ʹ��
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 50050,
		txt = "���������ɴ��ػ����ӱ�������Ʊصõ��������Ź�ͬ�ν������ѿ�Ҫһ�ԣ�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "������׼����ȫ������������",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�ҾͿ������֡�",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20861] =    -----------ǬԪ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 50051,
		txt = "�ػ�ɽ�Ű�ȫ�����ұ����֡�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��ͽ�",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20862] =    -----------ǬԪ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 50052,
		txt = "�ػ�ɽ�Ű�ȫ�����ұ����֡�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��ͽ�",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20863] =    -----------ǬԪ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 50053,
		txt = "�ػ�ɽ�Ű�ȫ�����ұ����֡�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��ͽ�",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20864] =    -----------ǬԪ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 50054,
		txt = "�ػ�ɽ�Ű�ȫ�����ұ����֡�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��ͽ�",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20865] =    -----------ǬԪ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 50055,
		txt = "�ػ�ɽ�Ű�ȫ�����ұ����֡�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��ͽ�",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[20866] =    -----------ǬԪ������
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 50056,
		txt = "�ػ�ɽ�Ű�ȫ�����ұ����֡�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��ͽ�",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
----------------------------���Ǹ����ָ��ߣ������ǳ�פNPC�Ի��������Ǹ���-----------------------------------
	[3000] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30001,
		soundID = 26142 ,
		txt = "�˵���������أ���Ҫ�������ˣ��ȹ�����أ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3001}},
				},
			}

		},
	},
	[3001] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26143 ,
		txt = "�ҵı�����࣬������ؽ���ɱ�˶�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3001 ,mapID =600},},
				},
			}

		},
	},
	[3002] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30006,
		soundID =26146 ,
		txt = "���Ҵ��������˴�ƣ������ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3003}},
				},
			}

		},
	},
	[3003] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26147 ,
		txt = "�Ȼ�ɱ��ȣ���ȥ��ɱ��࣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3002 ,mapID =600},},
				},
			}

		},
	},
	[3004] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30011,
		soundID =26150 ,
		txt = "�˵���������أ���Ҫ�������ˣ��ȹ�����أ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3005}},
				},
			}

		},
	},
	[3005] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26151 ,
		txt = "���Ĳ��ģ��Ǿ��Ȼ�ɱ���㣬��ȥ��������ˣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3003 ,mapID =600},},
				},
			}

		},
	},
	[3006] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30016,
		soundID =26154 ,
		txt = "���Ҵ���������פ��֮�أ������ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3007}},
				},
			}

		},
	},
	[3007] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26155 ,
		txt = "��྿���ںδ���˵���������㲻����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3004 ,mapID =600},},
				},
			}

		},
	},
	[3008] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30021,
		soundID =26158 ,
		txt = "�����˸�����������ڼ������������ƻ�!",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3009}},
				},
			}

		},
	},
	[3009] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26159 ,
		txt = "�ҵı�����࣬�����ÿ�!",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3005 ,mapID =600},},
				},
			}

		},
	},
	[3010] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30026,
		soundID =26162 ,
		txt = "С�������������Ҹ���������׿��ƣ����ձؽ�������ʬ��Σ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3011}},
				},
			}

		},
	},
	[3011] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26163 ,
		txt = "��Ȼ���븴���������֮�ˣ���������������Ը��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3006 ,mapID =600},},
				},
			}

		},
	},
	[3012] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 20019,
		txt = "�޸�����Ҫ���İ����ͽ�Ǯ��Ŷ",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�޸���ǰ��ս����",
				actions =
				{
					{action = DialogActionType.RepairPet ,param = {}},--�л�����
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "�޸����г���",
				actions =
				{
					{action = DialogActionType.RepairAllPet, param = {}},
				},
			}
		},
	},

	[3013] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30070,
		soundID =26168 ,
		txt = "ʲô��!�������˵��ƻ�������˵ļƻ�!�������!",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3014}},
				},
			}

		},
	},
	[3014] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26169 ,
		txt = "�ҵı��ǹ���!���������������,���㲻��!",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3007 ,mapID =602},},
				},
			}

		},
	},
	[3015] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30075,
		soundID =26172 ,
		txt = "���Ҵ��뵽����ɽ�������������ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3016}},
				},
			}

		},
	},
	[3016] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26173 ,
		txt = "�Ȼ�ɱ�����ǣ���ȥ����ɱ���ᣡ",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3008 ,mapID =602},},
				},
			}

		},
	},
	[3017] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30080,
		soundID =26176 ,
		txt = "�б����ڴ�פ������ɽ������С���ݵ����ţ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3018}},
				},
			}

		},
	},
	[3018] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26177 ,
		txt = "���ĺã���˵�����᾿���ںδ���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3009 ,mapID =602},},
				},
			}

		},
	},
	[3019] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30085,
		soundID =26180 ,
		txt = "��������С������Ȼ������ֹ������˴�ƣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3020}},
				},
			}

		},
	},
	[3020] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26181 ,
		txt = "�й������ٳ���������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3010 ,mapID =602},},
				},
			}

		},
	},
	[3021] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30090,
		soundID =26184 ,
		txt = "��������������˻�ɱ������㣬�������ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3022}},
				},
			}

		},
	},
	[3022] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26185 ,
		txt = "ֻ����һЩС���������������᲻�����Թ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3011 ,mapID =602},},
				},
			}

		},
	},
	[3023] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30095,
		soundID =26188 ,
		txt = "�����㣬���Ż��Һ��£����յ�����ֹ�Ҹ��������ƻ��������������ɢ��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3024}},
				},
			}

		},
	},
	[3024] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26189 ,
		txt = "���ᣬ������ִ�Բ��򣬽����ұ������е���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3012 ,mapID =602},},
				},
			}

		},
	},

-------------------------------------------------------

	[3060] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30181,
		soundID =26194 ,
		txt = "ħ����˷������פ��֮�أ�����������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3061}},
				},
			}

		},
	},
	[3061] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26195 ,
		txt = "�ҵı��Ƿ����������ٳ���������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3017 ,mapID =606},},
				},
			}

		},
	},

[3063] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30160,
		soundID =26198 ,
		txt = "�������������ڴ˻������ô���ɱ��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3064}},
				},
			}

		},
	},
	[3064] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26199 ,
		txt = "�����ںδ����������������㲻����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3018 ,mapID =606},},
				},
			}

		},
	},

[3065] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30165,
		soundID =26202 ,
		txt = "���˷������ӳ���Ҳ�����Ǻ��ˣ������ô��������פ��֮�أ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3066}},
				},
			}

		},
	},
	[3066] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26203 ,
		txt = "������ںδ��������������㲻����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3019 ,mapID =606},},
				},
			}

		},
	},

[3067] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30170,
		soundID =26206 ,
		txt = "���������ڴ˷���������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3068}},
				},
			}

		},
	},
	[3068] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26207 ,
		txt = "����ֻ��������������������󱲽�����ؽ�����ɱ��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3020 ,mapID =606},},
				},
			}

		},
	},

[3069] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30175,
		soundID =26210 ,
		txt = "վס���㾹�������ƻ�������˴�ƣ����ն������㣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3070}},
				},
			}

		},
	},
	[3070] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26211 ,
		txt = "��������ұ���ɱ�����������ÿ���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3021 ,mapID =606},},
				},
			}

		},
	},


[3071] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30180,
		soundID =26214 ,
		txt = "С������Ȼ�����Ҹ���������׿��ƣ����ն�Ҫ������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3072}},
				},
			}

		},
	},
	[3072] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26215 ,
		txt = "�������Ȼ����ͼ���׿Ϊ���˼䣬�����ұ������е���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3022 ,mapID =606},},
				},
			}

		},
	},
		---Ǳ����

[3075] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30321,
		soundID =26220 ,
		txt = "�������פ��֮�أ����˲����ô���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3076}},
				},
			}

		},
	},
[3076] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26221 ,
		txt = "�ҵľ������壬���ն�Ҫ�����ȶ������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3025 ,mapID =607},},
				},
			}

		},
	},

[3077] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30329,
		soundID =26224 ,
		txt = "��ŭ������˿�û�кù��ӳԣ�ʶ��ľ͹Թ��뿪���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3078}},
				},
			}

		},
	},
[3078] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26225 ,
		txt = "����������ͷ�ҷ�ȡ���ɣ����������������Ī���������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3026 ,mapID =607},},
				},
			}

		},
	},

[3079] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30337,
		soundID =26228 ,
		txt = "С������ͼ����������ˣ���������뿪�˴���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3080}},
				},
			}

		},
	},
[3080] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26229 ,
		txt = "�����������������������Ȼ��Ҵ���ʴʣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3027 ,mapID =607},},
				},
			}

		},
	},

[3081] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30345,
		soundID =26232 ,
		txt = "��������������ȫ��˭����в��������������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3082}},
				},
			}

		},
	},
[3082] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26233 ,
		txt = "�۵������޲��ɼ���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3028 ,mapID =607},},
				},
			}

		},
	},


[3083] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30353,
		soundID =26236 ,
		txt = "�����������˵��������Ȼ����Ϸ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3084}},
				},
			}

		},
	},
[3084] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26237 ,
		txt = "�Ǳ�����������������֣�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3029 ,mapID =607},},
				},
			}

		},
	},


[3085] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30361,
		soundID =26240 ,
		txt = "�����������ӣ����ն�Ҫ��������ҷ���������ͷ֮�ޣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=3086}},
				},
			}

		},
	},
[3086] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26241 ,
		txt = "���壬�������ͷ���ѿ���֮����������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3030 ,mapID =607},},
				},
			}

		},
	},

---------------------------------------------�������Ͽ�Ի�����--------------------
[10001] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30428,
		soundID =26246 ,
		txt = "վס�����Ǻ��ˣ����Ҵ�����Ͽ����ò��ͷ��ˣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10002}},
				},
			}

		},
	},
	[10002] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26247 ,
		txt = "�������ǲ������ӣ��������ٳ���������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3031 },},
				},
			}

		},
	},
[10003] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30428,
		soundID =26248 ,
		txt = "���˸������Ͽ��Ұ����ɱ���ģ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10004}},
				},
			}

		},
	},
	[10004] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26249 ,
		txt = "��֮͢��ƽ����ȣ������ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3032 },},
				},
			}

		},
	},
[10005] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30436,
		soundID =26250 ,
		txt = "��͢ӥȮ�����Ҵ������פ�أ���Ѱ��·��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10006}},
				},
			}

		},
	},
	[10006] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26251 ,
		txt = "����С�����������ң�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3033 },},
				},
			}

		},
	},
[10007] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30444,
		soundID =26252 ,
		txt = "�ƽ�����ڴˣ���������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10008}},
				},
			}

		},
	},
	[10008] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26253 ,
		txt = "һȺ�ں�֮�ھ��ҿ�ͣ�ɱ������ɱ��������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3034 },},
				},
			}

		},
	},
[10009] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30452,
		soundID =26254 ,
		txt = "�ҵȷ�����������ˣ����죡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10010}},
				},
			}

		},
	},
	[10010] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26255 ,
		txt = "���Ų��ںδ������ٵ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3035 },},
				},
			}

		},
	},
[10012] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30460,
		soundID =26256 ,
		txt = "����С�������������гɣ������м�����ɣ��������ٹ齵��̫ƽ����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10013}},
				},
			}

		},
	},
	[10013] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26257 ,
		txt = "������������������˵���棬����������ͷһ�ã�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3036 },},
				},
			}

		},
	},


------------------------�̲��������Ի�����-------------------------

[10014] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30510,
		soundID =26260 ,
		txt = "���˻ƽ����פ��֮�أ����ô���ɱ��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10015}},
				},
			}

		},
	},
	[10015] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26261 ,
		txt = "�������ںδ��������������㲻����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3037 ,mapID =609},},
				},
			}

		},
	},
[10016] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30518,
		soundID =26262 ,
		txt = "���Ǻ��ˣ������ô������صأ��������پ��ܣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10017}},
				},
			}

		},
	},
	[10017] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26263 ,
		txt = "��������������������������˿��������ݹ��ҵ������飡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3038 ,mapID =609},},
				},
			}

		},
	},
[10018] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30526,
		soundID =26264 ,
		txt = "վס���㾹�Ҵ���������󣬽��ն�Ҫ�����Ȫ��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10019}},
				},
			}

		},
	},
	[10019] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26265 ,
		txt = "�����ƽ��������ҿ�����˭�����ң�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3039 ,mapID =609},},
				},
			}

		},
	},
[10020] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30534,
		soundID =26266 ,
		txt = "ӥȮצ��������ɱ�ҽ�ʿ���ұؽ�����ʬ��Σ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10021}},
				},
			}

		},
	},
	[10021] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26267 ,
		txt = "�ں�֮�ڣ��θ����£������ߣ�ɱ���⣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3040 ,mapID =609},},
				},
			}

		},
	},
[10022] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30542,
		soundID =26268 ,
		txt = "ĳ�ҷ�������ڴ����أ����˸��������â��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10023}},
				},
			}

		},
	},
	[10023] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26269 ,
		txt = "����ЩС�����ӣ������ɺβ�����ǰ�����ѵ������б��в�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3041 ,mapID =609},},
				},
			}

		},
	},
[10024] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30550,
		soundID =26270 ,
		txt = "���˻ƽ������������Ҳ�������񹦸�ɣ�������Ҫ��Ѱ��·��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10025}},
				},
			}

		},
	},
	[10025] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26271 ,
		txt = "�������񣡽��ն�Ҫ����ն�ڵ��£�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3042 ,mapID =609},},
				},
			}

		},
	},

------------------------����ԭ�����Ի�����-------------------------

[10030] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30650,
		soundID =26274 ,
		txt = "�˴�Ϊ�һƽ��פ�أ�����ֹ�����ô���ɱ��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10031}},
				},
			}

		},
	},
	[10031] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26275 ,
		txt = "��������ȡ������������ƥ��ɸҳ���һս��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3045 ,mapID =610},},
				},
			}

		},
	},
[10032] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30658,
		soundID =26276 ,
		txt = "���˸Ҿ����Ž�������֮�أ��������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10033}},
				},
			}

		},
	},
	[10033] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26277 ,
		txt = "�������С�����������ң�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3046 ,mapID =610},},
				},
			}

		},
	},
[10034] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30526,
		soundID =26278 ,
		txt = "����������������ڴ˻���������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10035}},
				},
			}

		},
	},
	[10035] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26279 ,
		txt = "����������̶��ѨҲҪ��һ����������ë֮���кξ��գ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3047 ,mapID =610},},
				},
			}

		},
	},
[10036] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30534,
		soundID =26280 ,
		txt = "�����ô��ұ���ԭ����֪���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10037}},
				},
			}

		},
	},
	[10037] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26281 ,
		txt = "�����ֵ���Σ�ɱ�ľ����㣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3048 ,mapID =610},},
				},
			}

		},
	},
[10038] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30542,
		soundID =26282 ,
		txt = "��͢�߹���Ҫ�������������һ�أ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10039}},
				},
			}

		},
	},
	[10039] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26283 ,
		txt = "�ã���ɱ���㣬��ȥȡ�����๷����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3049 ,mapID =610},},
				},
			}

		},
	},
[10040] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30550,
		soundID =26284 ,
		txt = "С������ɱ�ҽ�ʿ�������������˳𲻹����죡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10041}},
				},
			}

		},
	},
	[10041] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26285 ,
		txt = "�������������ɱ���ӣ��޶����������������е���������ȣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3050 ,mapID =610},},
				},
			}

		},
	},
--------------------------ħ�޷帱������-------------------------
[10045] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30740,
		soundID =26288 ,
		txt = "վס�����˻ƽ���صأ�����˵���ɱ���⣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10046}},
				},
			}

		},
	},
	[10046] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26289 ,
		txt = "�Žǽ��ںδ�����ʵ���������㲻����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3055 ,mapID =611},},
				},
			}

		},
	},
[10047] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30748,
		soundID =26290 ,
		txt = "���Ǻ��ˣ�����ħ�޷���Ұ����������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10048}},
				},
			}

		},
	},
	[10048] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26291 ,
		txt = "һȺ�ں�֮�ڣ�ɱ������̽��ȡ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3056 ,mapID =611},},
				},
			}

		},
	},
[10049] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30756,
		soundID =26292 ,
		txt = "��͢ӥȮ�����һƽ�����˺������ն�Ҫ���㿪���ƶǣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10050}},
				},
			}

		},
	},
	[10050] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26293 ,
		txt = "����һȺ������å��������գ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3057 ,mapID =611},},
				},
			}

		},
	},
[10051] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30764,
		soundID =26294 ,
		txt = "�����ڴ����أ��������ײ���˷��ݣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10052}},
				},
			}

		},
	},
	[10052] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26295 ,
		txt = "�����Ҷ�Ҫ���Ž������ҷ�����ʬ���޴棬˭�����ң���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3058 ,mapID =611},},
				},
			}

		},
	},
[10053] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30772,
		soundID =26296 ,
		txt = "���δ�ɵ�С����������ͼ������ʦ�������ʹ������еĵ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10054}},
				},
			}

		},
	},
	[10054] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26297 ,
		txt = "����ͽ�����ҽ����ɱ��Ƭ�ײ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3059 ,mapID =611},},
				},
			}

		},
	},
[10055] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30780,
		soundID =26298 ,
		txt = "С�����������ã���������ȱ���ݼ�Ʒ�����ձ��ö����������������񹦣��������죡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10056}},
				},
			}

		},
	},
	[10056] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26299 ,
		txt = "�Žǣ��㵹����ʩ�������ӯ�������ҷ��������ֲ���������������а�񣬶�Ҫ��ʬ�ǲ��棬��ٲ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3060 ,mapID =611},},
				},
			}

		},
	},


---------------а��ɽ�������ã�������ô�ȵģ�����200��------------------------------


[10057] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30825,
		soundID =26288 ,
		txt = "���ߺ��ˣ����Ҵ���а��ɽ������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10058}},
				},
			}

		},
	},
	[10058] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26289 ,
		txt = "�������ںδ��������������㲻����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3061 ,mapID =612},},
				},
			}

		},
	},
[10059] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30833,
		soundID =26290 ,
		txt = "ʲô�˾��Ҵ�����������פ�أ��������־��ܣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10060}},
				},
			}

		},
	},
	[10060] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26291 ,
		txt = "��������ǰ�����ң���Ȼ���㲻�ã�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3062 ,mapID =612},},
				},
			}

		},
	},
[10061] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30841,
		soundID =26292 ,
		txt = "�ҷ��֮���ڴ����أ�˭�Ҵ��أ���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10062}},
				},
			}

		},
	},
	[10062] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26293 ,
		txt = "�����Ҷ�Ҫնɱ���٣�����������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3063 ,mapID =612},},
				},
			}

		},
	},
[10063] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30849,
		soundID =26294 ,
		txt = "�󵨹�����������ͼ�Խ������������ն������㣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10064}},
				},
			}

		},
	},
	[10064] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26295 ,
		txt = "�������޵����࣬ɱ�ľ�������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3064 ,mapID =612},},
				},
			}

		},
	},
[10065] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30857,
		soundID =26296 ,
		txt = "������������¿��䣬���»�������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10066}},
				},
			}

		},
	},
	[10066] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26297 ,
		txt = "��������֮���������ǰ������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3065 ,mapID =612},},
				},
			}

		},
	},
[10067] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30865,
		soundID =26298 ,
		txt = "��ĳ���ڴˣ����˸������Ҽ�������ƣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10068}},
				},
			}

		},
	},
	[10068] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26299 ,
		txt = "�ҳ����ӣ�������ͼ��ɽ�����ҿ�����������ѱ����������ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3066 ,mapID =612},},
				},
			}

		},
	},
------------------------------------------------�����帱���Ի�--------------------

[10069] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30890,
		soundID =26317 ,
		txt = "����������Ѳɽ�����Ǻ��ˣ����Ҷ�������Ϊ���£�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10070}},
				},
			}

		},
	},
	[10070] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26318 ,
		txt = "�ҷ�����������ţ������������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3070 ,mapID =613},},
				},
			}

		},
	},
[10071] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30898,
		soundID =26319 ,
		txt = "��ǰ���ˣ����Ҵ�����������פ��֮�أ��������־��ܣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10072}},
				},
			}

		},
	},
	[10072] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26320 ,
		txt = "ţ�����ںδ�����ʵ������������һ����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3071 ,mapID =613},},
				},
			}

		},
	},
[10073] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30906,
		soundID =26321 ,
		txt = "����ţ�����´󽫺��������Ⱦ��Ҵ����������פ�أ����ҽ���������㣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10074}},
				},
			}

		},
	},
	[10074] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26322 ,
		txt = "�����ӣ����ҿڳ����ԣ����������������������һ",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3072 ,mapID =613},},
				},
			}

		},
	},
[10075] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30914,
		soundID =26323 ,
		txt = "�˵���ţ�����˱չ�֮�أ���Сֹ��������ն���ģ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10076}},
				},
			}

		},
	},
	[10076] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26324 ,
		txt = "���˾���Ҫɱ��ţ��������˭���ң���ɱ˭��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3073 ,mapID =614},},
				},
			}

		},
	},
[10077] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30922,
		soundID =26325 ,
		txt = "�ҷ�������ʾ�ǰ����ɱ�㣬��������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10078}},
				},
			}

		},
	},
	[10078] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26326 ,
		txt = "˵��ɱţ������Ҫɱţ�����������˶�û�ã�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3074 ,mapID =614},},
				},
			}

		},
	},
[10079] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 30930,
		soundID =26327 ,
		txt = "ɱ�ҽ�ʿ�����Ҵ��£�С��֪��������ôд��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10080}},
				},
			}

		},
	},
	[10080] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26328 ,
		txt = "���ղ���Ҫɱ�㽫ʿ��������£���Ҫȡ�㹷�����������ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3075 ,mapID =614},},
				},
			}

		},
	},


------------------------------------------------���칬�����Ի�--------------------

[10081] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31020,
		soundID =26331 ,
		txt = "���Ǻ��ˣ�����������פ��֮�أ����������˿���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10082}},
				},
			}

		},
	},
	[10082] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26332 ,
		txt = "���ľ��Ǵ˴�������Ҫ���ǻ���ƥ�����ˣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3076 ,mapID =615},},
				},
			}

		},
	},
[10083] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31028,
		soundID =26333 ,
		txt = "��ǰ���ˣ��˵������������صأ�����������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10084}},
				},
			}

		},
	},
	[10084] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26334 ,
		txt = "�������ںδ������ٵ��������㲻����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3077 ,mapID =615},},
				},
			}

		},
	},
[10085] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31036,
		soundID =26335 ,
		txt = "���Ҵ����Ҿ��صأ��������������ǲ��ã�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10086}},
				},
			}

		},
	},
	[10086] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26336 ,
		txt = "�������û���ƥ��Ĺ�����ʶȤ��һ��ȥ����ʶȤ����������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3078 ,mapID =615},},
				},
			}

		},
	},
[10087] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31044,
		soundID =26337 ,
		txt = "�ҷ�����ڴ����أ��ô���ɱ���⣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10088}},
				},
			}

		},
	},
	[10088] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26338 ,
		txt = "��һ��ɱ���⣡����������˭ɱ˭��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3079 ,mapID =616},},
				},
			}

		},
	},
[10089] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31052,
		soundID =26339 ,
		txt = "���Ӵ󵨣����Ҿ��Ž�����������Ȼ���˾ͱ����ߣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10090}},
				},
			}

		},
	},
	[10090] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26340 ,
		txt = "��ƥ���޵�����ЩϺ��з��ǰ�������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3080 ,mapID =616},},
				},
			}

		},
	},
[10091] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31060,
		soundID =26341 ,
		txt = "С������Ҫ�����Ҽ��������˴�ƣ�Ҳ�����������Լ��������ҵ�������ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10092}},
				},
			}

		},
	},
	[10092] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26342 ,
		txt = "��ƥ��Ҳ�ҳ��ۣ�����ȡ�㹷���������ƣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3081 ,mapID =616},},
				},
			}

		},
	},
------------------------------------------------����븱���Ի�--------------------------------------------------------------------

[10093] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31110,
		soundID =26325 ,
		txt = "���ߺ��ˣ����ҿ�̽��������פ�أ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10094}},
				},
			}

		},
	},
	[10094] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26326 ,
		txt = "��׿ħ����ںδ�����ʵ�����������ǲ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3082 ,mapID =618},},
				},
			}

		},
	},
[10095] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31118,
		soundID =26325 ,
		txt = "��С֮ͽ�����Ҵ���ڤ��ԭ����Ȼ���ˣ��ͱ����ߣ�������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10096}},
				},
			}

		},
	},
	[10096] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26326 ,
		txt = "�ҽ���Ϊ�Ƕ�׿���������ǲ����ҵ�����Ȼ���£��������ң��ݹ����������飡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3083 ,mapID =618},},
				},
			}

		},
	},
[10097] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31126,
		soundID =26325 ,
		txt = "Ӫ��ʮ�����������֮�أ�˭��̤ǰһ����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10098}},
				},
			}

		},
	},
	[10098] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26326 ,
		txt = "���ն�׿�ҷ�ɱ���ɣ�����������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3084 ,mapID =618},},
				},
			}

		},
	},
[10099] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31134,
		soundID =26325 ,
		txt = "�ҷ����ڴ����ض�ʱ�������㾪��������ݣ��������ٽ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10100}},
				},
			}

		},
	},
	[10100] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26326 ,
		txt = "¹��˭�ֻ���֪���أ���˵���ã��ֵ��¼����°ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3085 ,mapID =617},},
				},
			}

		},
	},
[10101] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31142,
		soundID =26325 ,
		txt = "������ͼ�ƻ�������ƣ����ն�Ҫ��������ң�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10102}},
				},
			}

		},
	},
	[10102] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26326 ,
		txt = "�����ҳ����ӣ����˵ö���֮�������ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3086 ,mapID =617},},
				},
			}

		},
	},
[10103] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31150,
		soundID =26325 ,
		txt = "���˶�׿�������ƿ�С�������������Ҹ��˴�ƣ����վ�Ҫ����ǧ����У�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10104}},
				},
			}

		},
	},
	[10104] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26326 ,
		txt = "������������ζ�Ҫ��������ɢ������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3087 ,mapID =617},},
				},
			}

		},
	},
----------------------------------------------------------------�칫ɽ-------------------------------------------------------------------------------------------
[10105] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31190,
		soundID =0 ,
		txt = "վס�������칫�����Ž�����֮��������˵���ɱ���⣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10106}},
				},
			}

		},
	},
	[10106] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =0 ,
		txt = "�Ž��������ģ�����ʵ�����������㲻����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3093 ,mapID =622},},
				},
			}

		},
	},
[10107] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31198,
		soundID =0 ,
		txt = "�����칫ɽ��ɽ�󽫣��˵����ݶ���С��������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10108}},
				},
			}

		},
	},
	[10108] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =0 ,
		txt = "�����Žǣ����Ի���ȥ��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3094 ,mapID =622},},
				},
			}

		},
	},
[10109] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31206,
		soundID =0 ,
		txt = "�ŽǴ������Ͼ�Ҫ���������ˣ�С�ӣ����������������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10110}},
				},
			}

		},
	},
	[10110] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =0 ,
		txt = "�Ž�����������;ĩ·����������ڻ����пɻ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3095 ,mapID =622},},
				},
			}

		},
	},
[10111] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31214,
		soundID =0 ,
		txt = "�칫�������´�����ڴˣ��б����ڣ�˭Ҳ���뾪���ŽǴ��˵�������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10112}},
				},
			}

		},
	},
	[10112] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =0 ,
		txt = "�����Žǳ������ң��㲻���Ҷ��֣�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3096 ,mapID =622},},
				},
			}

		},
	},
[10113] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31222,
		soundID =0 ,
		txt = "С�ӣ����Ż��������£�ɱ���ڶ���֣�ʵ�ǿɺޣ����ձ�����Ҫ��������ң�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10114}},
				},
			}

		},
	},
	[10114] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =0 ,
		txt = "�Žǣ�������������ǰ�������ؽ��������ˣ������ҿ������������ӣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3097 ,mapID =622},},
				},
			}

		},
	},

---------------------------------�����֣��������װ���-----------------------------------------------------------------------
[10115] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31250,
		soundID =0 ,
		txt = "���˳�Զ־��˧����֮�أ����ô��߽�ɱ���⣡",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10116}},
				},
			}

		},
	},
	[10116] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =0 ,
		txt = "��ֻ�ҳ�Զ־���ˣ����������ÿ��пɻ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3088 ,mapID =620},},
				},
			}

		},
	},
[10117] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31258,
		soundID =0 ,
		txt = "����������С�����������˵ش����ҼҴ�˧��������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10118}},
				},
			}

		},
	},
	[10118] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =0 ,
		txt = "������ԣ��г�Զ־����ǰ��������",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3089 ,mapID =620},},
				},
			}

		},
	},
[10119] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31266,
		soundID =0 ,
		txt = "վס���㾹�Ҵ��ų̴�˧���������������ն�ȡ��С����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=100120}},
				},
			}

		},
	},
	[10120] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =0 ,
		txt = "��Զ־�ҽ�����ɱ���ˣ��ҵ�����һ����ɱ��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3090 ,mapID =620},},
				},
			}

		},
	},
[10121] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31274,
		soundID =0 ,
		txt = "���˻ƽ�󽫺�����Ҳ�����Զ־��˧���ڴ������ʱ�������ɣ�",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10122}},
				},
			}

		},
	},
	[10122] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =0 ,
		txt = "��������ʱ�򣬵�ʡ�����ҵĹ���",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3091 ,mapID =620},},
				},
			}

		},
	},
[10123] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 31282,
		soundID =0 ,
		txt = "С����������ƣ��Ŵλ���˧���£����վͺ����һ��ս��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID=10124}},
				},
			}

		},
	},
	[10124] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =0 ,
		txt = "��Զ־���ϴ�ֻ�����������������㾹�ָ����ˣ������Ҿ����㳹�׻����ɢ��",
		options =
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 3092 ,mapID =620},},
				},
			}

		},
	},


	[20000] =
	{
		dialogType = DialogType.HasOption,
		conditions = {},
		speakerID = 30320,
		txt = "��̽�ӻر����Ž��������½����������ڹ��Ͽ�������롢Ѫħ����ħ�޷�һ������ħ��������ҳ���ħ��δ�ɣ����Ž����������࣬�����ɣ����ŵ���նɱ��",
		options =
		{
			[1] =
			{
				showConditions = {
				{condition = DialogCondition.Level, param = {level = 45 ,maxLevel = 55}},
				},
				optionTxt = "���뾭�鸱����45����",
				actions =
				{
					{action = DialogActionType.EnterRingEctype , param = {ringEctypeID = 1},},
				},
				icon = DialogIcon.Talk,
			},
			[2] =
			{
				showConditions = {
				{condition = DialogCondition.Level, param = {level = 35 ,maxLevel = 45}},
				},
				optionTxt = "����Ǳ�ܸ�����35����",
				actions =
				{
					{action = DialogActionType.EnterRingEctype , param = {ringEctypeID = 2},},
				},
				icon = DialogIcon.Talk,
			},
			[3] = {
				showConditions = 
				{
				--{condition = DialogCondition.HasTask, param = {taskID = 10007, statue = true}},	
				{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10007,npcID = 30320}},
				},
				optionTxt = "��������",
				actions =
				{
				{action = DialogActionType.Gotos, param = {dialogIDs = {5074,5169,5185,5201,5217}}},
				--{action = DialogActionType.Gotos, param = {dialogIDs = {5169,5185,5201,5217}}},
				},
			},
		}
	},

----------------------��������  ��ʼ----------------------------

	[27001] =					--�����ٻ�����1
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.CheckOwner, param = {taskID = 101}},    -----��������ֻ���ٻ�������ս
		{condition = DialogCondition.Team, param = {statue = false}},	------�޶����������״̬��
		},
		speakerID = 39001,
		soundID =nil ,
		txt = "�Ⱥ����ʱ�ˣ�������������������ע���Ķ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "�������ʶһ���ҵ�������",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 7001},},
				},
			}

		},
	},
	[27002] =					--�����ٻ�����2
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.CheckOwner, param = {taskID = 102}},    -----��������ֻ���ٻ�������ս
		{condition = DialogCondition.Team, param = {statue = false}},	------�޶����������״̬��
		},
		speakerID = 39002,
		soundID =nil ,
		txt = "�Ⱥ����ʱ�ˣ�������������ţ����ע���Ķ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "�������ʶһ���ҵ�������",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 7002},},
				},
			}
		},
	},
	[27003] =					--�����ٻ�����3
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.CheckOwner, param = {taskID = 103}},    -----��������ֻ���ٻ�������ս
		{condition = DialogCondition.Team, param = {statue = false}},	------�޶����������״̬��
		},
		speakerID = 39003,
		soundID =nil ,
		txt = "�Ⱥ����ʱ�ˣ������ҽ�����������ע���Ķ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "�������ʶһ���ҵ�������",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 7003},},
				},
			}
		},
	},
	[27004] =					--�����ٻ�����4
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.CheckOwner, param = {taskID = 104}},    -----��������ֻ���ٻ�������ս
		{condition = DialogCondition.Team, param = {statue = false}},	------�޶����������״̬��
		},
		speakerID = 39004,
		soundID =nil ,
		txt = "�Ⱥ����ʱ�ˣ�������ҹ����������ע���Ķ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "�������ʶһ���ҵ�������",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 7004},},
				},
			}
		},
	},
	[27005] =					--�����ٻ�����5
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.CheckOwner, param = {taskID = 105}},    -----��������ֻ���ٻ�������ս
		{condition = DialogCondition.Team, param = {statue = false}},	------�޶����������״̬��
		},
		speakerID = 39005,
		soundID =nil ,
		txt = "�Ⱥ����ʱ�ˣ�������Ӱ������ע���Ķ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "�������ʶһ���ҵ�������",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 7005},},
				},
			}
		},
	},
	[27006] =					--�����ٻ�����6
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.CheckOwner, param = {taskID = 106}},    -----��������ֻ���ٻ�������ս
		{condition = DialogCondition.Team, param = {statue = false}},	------�޶����������״̬��
		},
		speakerID = 39006,
		soundID =nil ,
		txt = "�Ⱥ����ʱ�ˣ������Ҿ޸�ħ������ע���Ķ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "�������ʶһ���ҵ�������",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 7006},},
				},
			}
		},
	},
	[27007] =					--�����ٻ�����7
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.CheckOwner, param = {taskID = 107}},    -----��������ֻ���ٻ�������ս
		{condition = DialogCondition.Team, param = {statue = false}},	------�޶����������״̬��
		},
		speakerID = 39007,
		soundID =nil ,
		txt = "�Ⱥ����ʱ�ˣ������ұ���ħ������ע���Ķ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "�������ʶһ���ҵ�������",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 7007},},
				},
			}
		},
	},
	[27008] =					--�����ٻ�����8
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.CheckOwner, param = {taskID = 108}},    -----��������ֻ���ٻ�������ս
		{condition = DialogCondition.Team, param = {statue = false}},	------�޶����������״̬��
		},
		speakerID = 39008,
		soundID =nil ,
		txt = "�Ⱥ����ʱ�ˣ���������ʿ����ע���Ķ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "�������ʶһ���ҵ�������",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 7008},},
				},
			}
		},
	},
	[27009] =					--�����ٻ�����9
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.HasTask, param = {taskID = 109, statue = true}},  -----���Ų�����������
		{condition = DialogCondition.Team, param = {statue = false}},	------�޶����������״̬��
		},
		speakerID = 39009,
		soundID =nil ,
		txt = "�Ⱥ����ʱ�ˣ�������ͼ����ʿ����ע���Ķ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "�������ʶһ���ҵ�������",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 7009},},
				},
			}
		},
	},
	[27010] =					--�����ٻ�����10
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		{condition = DialogCondition.HasTask, param = {taskID = 110, statue = true}},  -----���Ų�����������
		{condition = DialogCondition.Team, param = {statue = false}},	------�޶����������״̬��
		},
		speakerID = 39010,
		soundID =nil ,
		txt = "�Ⱥ����ʱ�ˣ����������ħ������ע���Ķ�����",
		options =
		{
			{
				showConditions = {},
				optionTxt = "�������ʶһ���ҵ�������",
				actions =
				{
					{action = DialogActionType.EnterScriptFight , param = {scriptID = 7010},},
				},
			}
		},
	},
	[27011] =					--������ͳһ��ת�Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		--{condition = DialogCondition.HasTask, param = {statue = false}},	
		},
		speakerID = 0,
		soundID =nil ,
		txt = "û��ר����������Ǵ򲻹����ģ����ǸϿ��뿪��",
		options =
		{
		},
	},
	[27012] =					--���ͳһ��ת�Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		{condition = DialogCondition.Team, param = {statue = true}},	------�޶��������״̬��	
		},
		speakerID = 0,
		soundID =nil ,
		txt = "�������츳������Ψ�е�����ս���併�����ܼ�Ԧ",
		options =
		{
		},
	},
	[27090] =					--������npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 39000,
		soundID =nil ,
		txt = "�����´��ң���͢��������ħ�Ĵ����У����㵽��35���Ժ�Ϊ������һЩ�����ؼ����ҿ���Ϊ������������Щ���޵���������ɹ��������ޱ�ɳ�Ϊ�������",
		options =
		{
			[1] = {
				showConditions = {
				{condition = DialogCondition.Level, param = {level = 35}},
				},
				optionTxt = "�һ������ٻ���",
				actions =
				{
					{action = DialogActionType.ExchangeProps , param = {},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��ѯ�ٻ����������",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 27091}},
				},
			},
			[3] = {
				showConditions = {},
				optionTxt = "���´�����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	[27091] =					--������npc
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 39000,
		soundID =nil ,
		txt = "ÿ�������ٻ������Ҫ���Ļ�������Ϊ������x20����ȸ��x20���׻���x20�������x20����Ӷ����ٻ�����x1���ܺϳ�һ�����������",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��������",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 27090}},
				},
			},
		},
	},
	[27092] =					--�����ӽ��������Ի�
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 39000,
		soundID =nil ,
		txt = "����������Ѿ����������޵��ټ������ȥ������",
		options =
		{
		},
	},
------------------------------��������   ����-------------------
------------------------------------------------------�����Խ𳡻��ʼ
	[27101] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		
		},
		speakerID = 39050,
		soundID =0,
		txt = "�Ϸ�����֮�ط���һ���Ϲ��ż����ż���ʢ��һ���ϹŽ𾧣�����Ҫ�ľ������ʣ���͢��Ҫ������־֮ʿǰ�������Ը�⣿",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "ǰ�������Խ�",
				actions =
				{
					{action = DialogActionType.EnterGoldHuntZone , param = {x = 103, y = 283},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���Ժ�����",
				actions =
				{
					{action = DialogActionType.CloseDialog , param ={}},
				},
			},
		},
	},
	[27102] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		
		},
		speakerID = 39051,
		soundID =0,
		txt = "��������������ҵ�������������ף�����������׬û�������𾧿��������",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "�Ͻ��ɼ��Ľ𾧿�",
				actions =
				{
					{action = DialogActionType.GoldHuntCommit , param = {},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "���Ժ�����",
				actions =
				{
					{action = DialogActionType.CloseDialog , param ={}},
				},
			},
		},
	},
	[27103] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		
		},
		speakerID = 39052,
		soundID =0,
		txt = "�˴�����פ�أ��κ�������ͨ��",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "˭�����˾���˭��",
				actions =
				{
					{action = DialogActionType.GoldHuntFight , param = {scriptID = 6001 ,mapID =909},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�������",
				actions =
				{
					{action = DialogActionType.CloseDialog , param ={}},
				},
			},
		},
	},
	[27104] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		
		},
		speakerID = 39053,
		soundID =0,
		txt = "�˴�����פ�أ��κ�������ͨ��",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "˭�����˾���˭��",
				actions =
				{
					{action = DialogActionType.GoldHuntFight , param = {scriptID = 6002 ,mapID =909},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�������",
				actions =
				{
					{action = DialogActionType.CloseDialog , param ={}},
				},
			},
		},
	},


-- ǬԪ��ʦ�����񷢷��ˣ���һ��Ի�
[30001] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			
		},
		speakerID = 29040,
		
		txt = "ѭ������NPC�����ˣ������������ȡѭ������",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "����ʦ������",
				actions =
				{
				    {action = DialogActionType.RecetiveTask, param = {taskID = 10020}},
					--{action = DialogActionType.Goto, param = {dialogID = 30011}},
				},
			},
			[2] =
			{
				showConditions = 
				{
					{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10020, taskType = LoopTaskTargetType.escort, npcID = 29040}},
				},
				optionTxt = "��ɻ�������",
				actions =
				{
					{action = DialogActionType.FinishLoopTask, param = {taskID = 10020}},
				}
			},
		},
	},

-- �ű�ս��ID
[30003] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		
		txt = "�����������ýؽ����ɣ������Ƕ�׿Ϊ�񣡽����ұ�Ҫ�����е���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 100, mapID = 111}},
					},
			}
		},
	},

-- �Ͻ���Ʒ
[30004] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10020, taskType = LoopTaskTargetType.buyItem, npcID = 40003}},
		},
		speakerID = 0,
		
		txt = "�����򵽵���Ʒ��������Ʒ������ɴ������񣬹���������!",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10020, itemsInfo = {count = 1},},},
				},
			}
		},
	},
-- �Ի���̸
[30005] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10020, taskType = LoopTaskTargetType.talk, npcID = 40004}},
		},
		speakerID = 0,
		
		txt = "�Ի��������Ҫ��!",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 10020}},
					{action = DialogActionType.RecetiveTask, param = {taskID = 10020}},
				},
			}
		},
	},

-- �Ͻɳ���NPC
[30006] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10020, taskType = LoopTaskTargetType.catchPet, npcID = 40005}},
		},
		speakerID = 0,
		
		txt = "��ʱ��Ҫ�Ͻ�������׽�ĳ�����ܻ�ȡ��ǰѭ������Ľ������Ͽ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.PaidPet, param = {taskID = 10020}},
				},
			}
		},
	},

[30007] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 20079,
		
		txt = "�п���ֱ����������п��ܴ�����һ��ս��������������أ�",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "��������",
				actions =
				{
					{action = DialogActionType.MayTaskFight , param = {taskID = 10020},},
				},
				icon = DialogIcon.Talk,
			},
		},
	},

[30008] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 20079,
		
		txt = "�����ﹺ����һ���Ľ�Ǯ����������ߣ��Ҽ�ʹ����������п���ֱ���������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.BuyItem, param = {itemID = 1062212, itemNum = 1}},
				},
			}
		},
	},
-- С͵�Ի�
[30009] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
		},
		speakerID = 20079,
		
		txt = "���ѽ�Ǯ������������ս����",
		options = 
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "�ķ��������������(1000)",
				actions =
				{
					{action = DialogActionType.CostMoney, param = {money = 1000, scriptID = 100}},
				},
			},
			[2] =
			{
				showConditions = {},
				optionTxt = "����ս�����������",
				actions =
				{
					{action = DialogActionType.Fight, param = {scriptID = 100}},
				},
			}
		},
	},

	
-- ѭ����������������ֵĶԻ�
[30010] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
			{condition = DialogCondition.School, param = {school = SchoolType.QYD}},
		},
		speakerID = 20079,
		
		txt = "�����Ͽ��ȡ���ѵ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 10020}},
				},
			},
		},
	},
	[30011] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10020, taskType = LoopTaskTargetType.deliverLetters, npcID = 40009}},
		},
		speakerID = 40009,
		
		txt = "�Ͻ������ͳ�ȥ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10020, itemsInfo = {{count = 1}}},},
				},
			}
		},
	},

	[30012] = 
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.LoopTaskTalk, param = {taskID = 10020, taskType = LoopTaskTargetType.donate, npcID = 60217}},
		},
		speakerID = 0,
		
		txt = "ɧ����ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "���--------------111",
				actions =
				{
					{action = DialogActionType.openLookTaskWin,param = {taskID = 10020}},
				},
			}
		},
	},
	-- ���׶Ի�ָ���Ľű�ս��
	[30013] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		txt = "�����������ýؽ����ɣ������Ƕ�׿Ϊ�񣡽����ұ�Ҫ�����е���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 100, mapID = 111}},
					},
			}
		},
	},

	[30014] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		txt = "�Ի�����Ͻ�β��NPC���ܹ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 10020}},
					--{action = DialogActionType.RecetiveTask, param = {taskID = 10020}},
				},
			}
		},
	},
	[30015] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20004,
		txt = "���ִ˶Ի����������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishLoopTask, param = {taskID = 10020}},
					},
			}
		},
	},
	[30016] =
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20004,
		txt = "����Ի����β��NPC���ı�����״̬",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.AddFollowNpc, param = {taskID = 10020, followNpcID = 20702}},
				},
			}
		},
	},
	[30017] =
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.Level, param = {level = 30}},
			{condition = DialogCondition.HasTask_1, param = {taskIDs = {10030}}},
			--{condition =  DialogCondition.CheckLoopTasks, param = {taskIDs = {10030,10031}, errorID = 31}},
		},
		speakerID = 20004,
		txt = "������",
		options = 
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "�Ͻ�5���׻������10����ȸ��",
					actions =
					{
						{action = DialogActionType.RecetiveTask, param = {taskID = 10030}},
						{action = DialogActionType.Goto, param = {dialogID=30018}},
					},
				}, 
		},
	},

	[30018] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
			{condition = DialogCondition.HasTask, param = {taskID = 10001}},
			--{condition =  DialogCondition.CheckLoopTask, param = {taskID = 10030, errorID = 31}},
		},
		speakerID = 20913,
		
		txt = "xxxxxxxxxxxxxxx",
		options = 
		{
			[1] = {
				showConditions = {},
				optionTxt = "�Ͻ�5���׻���",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10001, itemsInfo ={{itemID = 1051021,count = 5},{itemID = 1051022,count = 10}}}},
				},
			},
		}
	},

	[30019] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
			
		},
		speakerID = 20913,
		
		txt = "��Ʒ���������㣬�����������",
		options = 
		{
			[1] = {
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog ,param = {}},
				},
			},
		}
	},
--------------------------------���������Ͻ�װ��---------------------
	--���հ������
	[30100] = 
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{
			{condition = DialogCondition.NotHasFactionTask, param = {taskID = 10009}},
		},
		speakerID = 30817,
		txt = "�������������ǲ����ã��������Ǻã�",
		options = 
		{
			[1] = {
				showConditions = {
				},
				optionTxt = "���������񡿾�������",
				actions =
				{
					
					{action = DialogActionType.RecetiveTask, param = {taskID = 10009}},
					
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��ֻ��·����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
	--�Ͻ��������
	[30101] = 
	{
		dialogType = DialogType.HasOption,
		conditions = 
		{{condition = DialogCondition.HasFactionTask, param = {taskID = 10009}},
		},
		speakerID = 30817,
		
		txt = "�������������ǲ����ã��������Ǻã�",
		options = 
		{
			[1] = {
				showConditions = {},
				optionTxt = "��������񡿾�������",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10009, itemsInfo ={{count = 1}}}},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��ֻ��·����",
				actions =
				{
				{action = DialogActionType.CloseDialog, param ={}},
				},
			},
		},
	},
----------------------ץ���淨��35001����36000��
	[35001] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60000,
		txt = "ר����ץ���ͼ���ȼ���30��������Ĳ������ƿ��Խ��볡���ڲ�׽��ϲ���ĳ�����м�����ˢ��Ԫ����ĳ��ﲶ׽���������ս����������",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "�鿴��ͼ����",
					actions =
					{
						{action = DialogActionType.Goto, param = {dialogID=35002}},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "���ͽ��볡��",
					actions =
					{
						{action = DialogActionType.Goto, param = {dialogID=35003}},
					},
				},
			[3] = 
				{
					showConditions = {},
					optionTxt = "ֻ����㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
		},
	},
	[35002] = 
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 60000,
		txt = "30����ͼ�ܲ�׽����������ƽ������������ħ�����������������顢�ſ͡��������������ܡ��̿͡��ؽ��������֡���������ԭ����<br>40����ͼ�ܲ�׽�ĳ�����������������η���ʦ��ħȮ�����֡�����������<br>50����ͼ�ܲ�׽������������顢��ħŮ����ʿ�����塢������ıʿ��ţͷ�����桢���ý���ħ����",
		options =
		{
		},
	},
	[35003] = 
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60000,
		txt = "ֻҪ����ʵ��������ѡ����ս����ȼ���ͼץ��",
		options =
		{
			[1] =
				{
					showConditions = {},
					optionTxt = "30��ץ���ͼ",
					actions =
					{
						{action = DialogActionType.EnterCatchPetMap , param ={mapID = 901, x = 35, y = 157, itemID = 1025001, itemNum = 1}},
					},
				},
			[2] =
				{
					showConditions = {},
					optionTxt = "40��ץ���ͼ",
					actions =
					{
						{action = DialogActionType.EnterCatchPetMap , param ={mapID = 902, x = 35, y = 157, itemID = 1025001, itemNum = 1}},
					},
				},
			[3] =
				{
					showConditions = {},
					optionTxt = "50��ץ���ͼ",
					actions =
					{
						{action = DialogActionType.EnterCatchPetMap , param ={mapID = 903, x = 35, y = 157, itemID = 1025001, itemNum = 1}},
					},
				},
			[4] =
				{
					showConditions = {},
					optionTxt = "60��ץ���ͼ",
					actions =
					{
						{action = DialogActionType.EnterCatchPetMap , param ={mapID = 904, x = 35, y = 157, itemID = 1025001, itemNum = 1}},
					},
				},
		},
	},
	[35004] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60001,
		txt = "�������ˣ����Ҵ��ͳ�ȥ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "���ͳ�����",
					actions =
					{
						{action = DialogActionType.SwithScene , param ={tarMapID  = 10, tarX = 185, tarY = 131}},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35005] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60002,
		txt = "�������ˣ����Ҵ��ͳ�ȥ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "���ͳ�����",
					actions =
					{
						{action = DialogActionType.SwithScene , param ={tarMapID  = 10, tarX = 185, tarY = 131}},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35006] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60003,
		txt = "�������ˣ����Ҵ��ͳ�ȥ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "���ͳ�����",
					actions =
					{
						{action = DialogActionType.SwithScene , param ={tarMapID  = 10, tarX = 185, tarY = 131}},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35007] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60004,
		txt = "�������ˣ����Ҵ��ͳ�ȥ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "���ͳ�����",
					actions =
					{
						{action = DialogActionType.SwithScene , param ={tarMapID  = 10, tarX = 185, tarY = 131}},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35021] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60011,
		txt = "�˵���������أ���Ҫ��ȥ���ȹ�����أ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "С������",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35001 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35022] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60012,
		txt = "���˻����ߣ�������ؽ�������ڴˣ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "������������",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35002 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35023] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60013,
		txt = "��Ȼ�������Ҵ�������Ϊ����������������Ը��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35003 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35024] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60014,
		txt = "ʲô��!�������˵���Ұ���������!",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35004 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35025] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60015,
		txt = "���Ҵ��뵽�������ˣ�������ų�ȥ���������ɣ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35005 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "�Ͻ�����",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35026] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60016,
		txt = "�д�ү���ڴ�פ�أ�����С���ݵ����ţ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ʰ��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35006 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35027] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60017,
		txt = "��������С������Ȼ�������������̵úô���",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "��Ӯ��˵",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35007 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35028] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60018,
		txt = "���������ڴ˻������ô���ɱ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35008 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35029] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60019,
		txt = "һ�����������ߣ����ڶ�������������ɱ������һ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35009 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35030] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60020,
		txt = "�۵������޲��ɼ���",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35010 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35031] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60021,
		txt = "�����������ӣ����ն�Ҫ��������ҷ���������ͷ֮�ޣ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35011 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35032] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60022,
		txt = "���˻����ߣ�������ؽ�������ڴˣ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "������������",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35012 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35033] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60023,
		txt = "��Ȼ�������Ҵ�������Ϊ����������������Ը��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35013 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35034] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60024,
		txt = "ʲô��!�������˵���Ұ���������!",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35014 ,mapID =901},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35035] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60025,
		txt = "���Ҵ��뵽�������ˣ�������ų�ȥ���������ɣ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35015 ,mapID =902},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35036] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60026,
		txt = "�д�ү���ڴ�פ�أ�����С���ݵ����ţ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ʰ��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35016 ,mapID =902},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35037] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60027,
		txt = "��������С������Ȼ�������������̵úô���",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "��Ӯ��˵",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35017 ,mapID =902},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35038] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60028,
		txt = "���������ڴ˻������ô���ɱ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35018 ,mapID =902},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35039] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60029,
		txt = "һ�����������ߣ����ڶ�������������ȡ���׼���һ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35019 ,mapID =902},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35040] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60030,
		txt = "���������ڴ˻������ô���ɱ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35020 ,mapID =902},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35041] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60031,
		txt = "�۵������޲��ɼ���",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35021 ,mapID =902},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35042] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60032,
		txt = "�����������ӣ����ն�Ҫ��������ҷ���������ͷ֮�ޣ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35022 ,mapID =902},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35043] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60033,
		txt = "�˵���������أ���Ҫ��ȥ���ȹ�����أ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35023 ,mapID =902},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35044] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60034,
		txt = "���˻����ߣ�������ؽ�������ڴˣ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "С������",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35024 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35045] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60035,
		txt = "��Ȼ�������Ҵ�������Ϊ����������������Ը��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35025 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35046] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60036,
		txt = "ʲô��!�������˵���Ұ���������!",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35026 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35047] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60037,
		txt = "���Ҵ��뵽�������ˣ�������ų�ȥ���������ɣ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35027 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35048] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60038,
		txt = "�д�ү���ڴ�פ�أ�����С���ݵ�����",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35028 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35049] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60039,
		txt = "һ�����������ߣ����ڶ�������������ȡ���׼���һ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35029 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35050] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60040,
		txt = "��������С������Ȼ�������������̵úô�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35030 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35051] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60041,
		txt = "���������ڴ˻������ô���ɱ��",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35031 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35052] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60041,
		txt = "һ�����������ߣ����ڶ�������������ɱ������һ�棬���Ѿ���������",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35032 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35053] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60041,
		txt = "�۵������޲��ɼ���",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35033 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},
	[35054] =        --------ץ���淨
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 60041,
		txt = "�����������ӣ����ն�Ҫ��������ҷ���������ͷ֮�ޣ�",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "����ս��",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 35034 ,mapID =903},},
						},
					},
			[2] = 
				{
					showConditions = {},
					optionTxt = "��㿴��",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
			},
		},

------------���޴͸�------------------------------------
	[35101] =        --------����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 25501,
		txt = "��Ҫ�콵���󣬾͵ý����ҵ���ս������ҵ���ʶ��������ȻҲ�ٲ����㣬����ذ��ջ��ᣡ",
		options =
		{
			[1] =   {
					showConditions = {},
					optionTxt = "��ָ��һ����",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 7102 ,mapID =nil},},
					},
				},
			[2] =	{
					showConditions = {},
					optionTxt = "׼��������",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
		},
	},
	[35102] =        --------�׻�
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 25502,
		txt = "��Ҫ�콵���󣬾͵ý����ҵ���ս������ҵ���ʶ��������ȻҲ�ٲ����㣬����ذ��ջ��ᣡ",
		options =
		{
			[1] =   {
					showConditions = {},
					optionTxt = "��ָ��һ����",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 7103 ,mapID =nil},},
					},
				},
			[2] =	{
					showConditions = {},
					optionTxt = "׼��������",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
		},
	},
	[35103] =        --------��ȸ
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 25503,
		txt = "��Ҫ�콵���󣬾͵ý����ҵ���ս������ҵ���ʶ��������ȻҲ�ٲ����㣬����ذ��ջ��ᣡ",
		options =
		{
			[1] =   {
					showConditions = {},
					optionTxt = "��ָ��һ����",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 7104 ,mapID =nil},},
					},
				},
			[2] =	{
					showConditions = {},
					optionTxt = "׼��������",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
		},
	},
	[35104] =        --------����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 25504,
		txt = "��Ҫ�콵���󣬾͵ý����ҵ���ս������ҵ���ʶ��������ȻҲ�ٲ����㣬����ذ��ջ��ᣡ",
		options =
		{
			[1] =   {
					showConditions = {},
					optionTxt = "��ָ��һ����",
					actions =
					{
						{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 7105 ,mapID =nil},},
					},
				},
			[2] =	{
					showConditions = {},
					optionTxt = "׼��������",
					actions =
					{
						{action = DialogActionType.CloseDialog , param ={}},
					},
				},
		},
	},

 -------�ڱ�����
	[39996] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26159 ,
		txt = "�㣬���������ʵ�ѪҺ��������������",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��Ҫ�£�������",
				actions =
				{
					{action = DialogActionType.EnterTreasureFight , param = {scriptID = 40001 ,mapID =600},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��Ӯ����",
				actions =
				{
					{action = DialogActionType.CloseDialog , param ={}},
				},
			},

		},
	},
	[39997] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26159 ,
		txt = "�����������ػ�������˭�������ٽ����ң�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��Ҫ�£�������",
				actions =
				{
					{action = DialogActionType.EnterTreasureFight , param = {scriptID = 40002 ,mapID =600},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��Ӯ����",
				actions =
				{
					{action = DialogActionType.CloseDialog , param ={}},
				},
			},

		},
	},
	[39998] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26159 ,
		txt = "����������Ҫ��ɱ�䣡",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��Ҫ�£�������",
				actions =
				{
					{action = DialogActionType.EnterTreasureFight , param = {scriptID = 40003 ,mapID =600},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��Ӯ����",
				actions =
				{
					{action = DialogActionType.CloseDialog , param ={}},
				},
			},

		},
	},

	[39999] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 0,--
		soundID =26159 ,
		txt = "�˼�����ô����ζ����Ҳ�����ȥ�ˣ�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "��Ҫ�£�������",
				actions =
				{
					{action = DialogActionType.EnterTreasureFight , param = {scriptID = 40004 ,mapID =600},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "��Ӯ����",
				actions =
				{
					{action = DialogActionType.CloseDialog , param ={}},
				},
			},

		},
	},
---�ڱ�����
	[40002] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
			{condition = DialogCondition.Faction, param = {hasFaction = 1}},
		},
		speakerID = 29048,
		soundID =1,
		txt = "����Ϊ�ף��ε����ա�������ּ���������ģ�����Ϊ�أ�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "�鿴�����б�",
				actions =
				{
					{action = DialogActionType.ShowFactionList , param = {v = "FactionListWin"},},
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�����ҵİ������",
				actions =
				{
					{action = DialogActionType.SwithScene , param ={tarMapID  = 7, tarX = 86, tarY = 68}},
				},
			},

		},
	},
	[40003] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
			{condition = DialogCondition.Faction, param = {hasFaction = 0}},
		},
		speakerID = 29048,
		soundID =1,
		txt = "����Ϊ�ף��ε����ա�������ּ���������ģ�����Ϊ�أ�",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "�鿴�����б�",
				actions =
				{
					{action = DialogActionType.ShowFactionList , param = {v = "FactionListWin"},},
				},
			},
		},
	},
	[40004] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
			
		},
		speakerID = 29048,
		soundID =26159,
		txt = "TP����",
		options =
		{
			[1] = {
				showConditions = {},
				optionTxt = "���͵�������",
				actions =
				{
					{action = DialogActionType.SwithScene , param ={tarMapID  = 10, tarX = 133, tarY = 210}},
				},
			},

		},
	},
	[40005] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		
		},
		speakerID = 20001,
		soundID =26159,
		txt = "���԰��Ի�",
		options =
		{
			[1] = {
				showConditions = {
				{condition = DialogCondition.HasTask, param = {taskID = 10002, statue = false}},
				{condition = DialogCondition.Level, param = {level = 30}},	
				},
				optionTxt = "���ܰ������",
				actions =
				{
					{action = DialogActionType.SwithScene , param ={tarMapID  = 10, tarX = 133, tarY = 210}},
				},
			},
			[2] = {
				showConditions = {{condition = DialogCondition.HasTask, param = {taskID = 10002, statue = true}},},
				optionTxt = "�ύ�������",
				actions =
				{
					{action = DialogActionType.SwithScene , param ={tarMapID  = 10, tarX = 133, tarY = 210}},
				},
			},

		},
	},

	[40006] =        --------ץ���淨����
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29046,
		txt = "ץ�����",
		options =
		{
			[1] = 
				{
					showConditions = {},
					optionTxt = "�鿴��ͼ����",
					actions =
					{
						{},
					},
				},
			[2] = 
				{
					showConditions = {},
					optionTxt = "���ͳ���",
					actions =
					{
						{action = DialogActionType.Goto, param = {dialogID=40007}},
					},
				},
		},
	},
	[40007] = 
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		},
		speakerID = 29046,
		txt = "ץ����������<br>30����ͼ��ץ����xx1��xx2,<br>40����ͼ��ץ����xxx1��xxx2,<br>50����ͼ��ץ����x1��x2,<br>60����ͼ��ץ����xxxx1��xxxx2",
		options =
		{
		},
	},
	[40008] = 
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		},
		speakerID = 29046,
		txt = "ץ�����",
		options =
		{
			[1] =
				{
					showConditions = {},
					optionTxt = "30��ץ���ͼ",
					actions =
					{
						{action = DialogActionType.EnterCatchPetMap , param ={mapID = 901, x = 100, y = 100, itemID = 1025001, itemNum = 1}},
					},
				},
			[2] =
				{
					showConditions = {},
					optionTxt = "40��ץ���ͼ",
					actions =
					{
						{},
					},
				},
			[3] =
				{
					showConditions = {},
					optionTxt = "50��ץ���ͼ",
					actions =
					{
						{},
					},
				},
			[4] =
				{
					showConditions = {},
					optionTxt = "60��ץ���ͼ",
					actions =
					{
						{},
					},
				},
		},
	},
	[40009] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
			
		},
		speakerID = 29048,
		soundID =26159,
		txt = "�����룬�Ѷ���������",
		options =
		{
			[1] =
			{
				showConditions = {},
				optionTxt = "���Ҷ���",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin"},},--����Ʒ�ֿ�
					{action = DialogActionType.OpenUI ,param = {v = "ItemEquipWin"},},--0
				},
			},
			[2] = {
				showConditions = {},
				optionTxt = "�����룬��û����Ҫ�ĵĶ���",
				actions =
				{
					{action = DialogActionType.CloseDialog , param ={}},
				},
			},

		},
	},
	[50001] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		
		},
		speakerID = 20001,
		soundID =26159,
		txt = "�����ս����",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "����ս����������",
				actions =
				{
					{action = DialogActionType.EnterCatchPetFight , param = {scriptID = 100 ,mapID =600},},
				},
			},
		},
	},

------------------------------�ճ�����----------------------------------------------------------------------------------------------------------------------------
---------------------------------------ÿ��ɱ�ּ���---------------------------------------------------------------------------------------------------
	[50101] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		
		},
		speakerID = 20001,
		soundID =26159,
		txt = "����֮·����һ�ն�����ֻ�д��ȸ�����ƽʱ��ĥ���Լ���ÿ��������ɱ�з�Ϊ������",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "����֮·����������",
				actions =
				{
					{action = DialogActionType.Gotos , param = {dialogIDs = {50102,50103,50104}},},
				},
			},
			[2] = 
			{
				showConditions = {},
				optionTxt = "����֮·���������",
				actions =
				{
					{action = DialogActionType.Gotos , param = {dialogIDs = {50105,50106}}},
				},
			},
			[3] = 
			{
				showConditions = {},
				optionTxt = "�һ����£����",
				actions =
				{
					{action = DialogActionType.CloseDialog , param = {},},
				},
			},
		},
	},
	[50102] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
		
		},
		speakerID = 20001,
		soundID =26159,
		txt = "Ҫ����ɱ�����ղ��ɲ�����ƽʱҪ��ĥ���Լ����У������ɣ����ڽ���֮����������200ֻ����ȼ����5�����ڵ��������֣������������յ�ͬʱ������Ȼ����㽱����Ϊ���꣬�ǲ��Ǻܻ��㰡��",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "�����ȥ�������",
				actions =
				{
					{action = DialogActionType.RecetiveTask , param = {taskID = 40001}},
				},
			},
			[2] = 
			{
				showConditions = {},
				optionTxt = "�һ����£����",
				actions =
				{
					{action = DialogActionType.CloseDialog , param = {},},
				},
			},
		},
	},
	[50103] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		
		},
		speakerID = 20001,
		soundID =26159,
		txt = "�������ڵ��������������ԶԿ���Щ���µ����֣����ȥ������25���ٻ������Ұɣ�",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog , param = {},},
				},
			},
		},
	},
	[50104] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		
		},
		speakerID = 20001,
		soundID =26159,
		txt = "����֮·Ҫѭ�򽥽���������һ������������Ѿ������㹻��������ˣ������ٹ����ɣ�",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog , param = {},},
				},
			},
		},
	},
	[50105] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		
		},
		speakerID = 20001,
		soundID =26159,
		txt = "�ܺã�����ɵò�����Щ���Ǹ���Ľ���������ǵû�Ҫ����������񰡣�",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask , param = {taskID = 40001},},
				},
			},
		},
	},
	[50106] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		
		},
		speakerID = 20001,
		soundID =26159,
		txt = "�����û����200ֻ����ɣ����ٽ������ɣ�",
		options =
		{
			[1] = 
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog , param = {},},
				},
			},
		},
	},
---------------------------------------ÿ�յ��߼���---------------------------------------------------------------------------------------------------
	[50110] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{},
		speakerID = 29081,
		soundID =nil,
		txt = "���ƽ����˷����ˣ���������Ϊ̫��֮λ�������������������⻼����",
		options =
		{
			[1] = 
			{
				showConditions = 
				{
				{condition = DialogCondition.Level, param = {level = 30,},},
                                {condition = DialogCondition.HasTask, param = {taskID = 10030, statue = false}},
				},
				optionTxt = "��ʵ����",
				actions =
				{
				{action = DialogActionType.RecetiveTask , param = {taskID = 10030}},
                                {action = DialogActionType.Goto, param = {dialogID = 50111}},
				},
			},
			[2] = 
			{
				showConditions = 
				{
				{condition = DialogCondition.HasTask, param = {taskID = 10030, statue = true}},
				},
				optionTxt = "�Ͻ�ͷ��",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10030, itemsInfo ={{itemID = 1051021,count = 5},{itemID = 1051022,count = 10}}}},
				},
			},
			[3] = 
			{
				showConditions = {},
				optionTxt = "�һ����£����",
				actions =
				{
				{action = DialogActionType.CloseDialog , param = {},},
				},
			},
		},
	},
	[50111] =
	{
		dialogType = DialogType.HasOption,
		conditions =
		{
                {condition = DialogCondition.CheckLoopTask, param = {taskID = 10030, errorID = 38}},
		},
		speakerID = 29081,
		soundID =nil,
		txt = "<myName>�����������á����͢�������㣬����һ��װ��������������Ҽ���10��ͷ����20��ͷ����Ƭ����Ϊ�����һ���㽱������ס������ͷ��ֻ��������ȼ����5�����ڵ�ս���л�ã���ÿ���ܹ����������Ͻ�10�Σ�֪���˾Ϳ�ȥ�ɣ�",
		options =
		{
			[1] = 
			{
				showConditions = 
				{},
				optionTxt = "�Ͻ�����",
				actions =
				{
				{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin",taskID = 10030, itemsInfo ={{itemID = 1051021,count = 5},{itemID = 1051022,count = 10}}}},
				},
			},
			[2] = 
			{
				showConditions = {},
				optionTxt = "�����ȥ�ռ�",
				actions =
				{
				{action = DialogActionType.CloseDialog , param = {},},
				},
			},
		},
	},
	[50112] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{},
		speakerID = 29081,
		txt = "����Ҫ����10��ͷ������20��ͷ����Ƭ�����ύ���ҵĵ��߲����ϰ���",
		options = 
		{
			[1] = {
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.CloseDialog ,param = {}},
				},
			},
		}
	},


--------------------------------------------------------------------------------------------------------------------------------


	[100001] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		
		},
		speakerID = 20002,
		soundID = nil,
		txt = "�Ҳ������˴������������ţ�������������һ��<npcID>�����ţ����㽵����ħ���죡����ȥ<mapID,x,y>�����·���",
		options =
		{
			
		},
	},
	[100002] =
	{
		dialogType = DialogType.NotOption,
		conditions =
		{
		
		},
		speakerID = 20002,
		soundID = nil,
		txt = "�Ҳ������˴������������ţ�������������һ��<npcID>�����ţ����㽵����ħ���죡����ȥ<mapID,x,y>�����·���",
		options =
		{
			
		},
	},

	--���ܰ������
	[10000001] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
			{condition = DialogCondition.NotHasFactionTask, param = {taskID = 10001}},
		},
		speakerID = 0,
		
		txt = "���ܰ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					
					{action = DialogActionType.RecetiveTask, param = {taskID = 10009}},
					
				},
			}
		},
	},

	--�Ͻ��������
	[10000002] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
			{condition = DialogCondition.HasFactionTask, param = {taskID = 10009}},
		},
		speakerID = 0,
		
		txt = "��װ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.OpenUI ,param = {v = "SubmitItemWin", taskID = 10001,equipFlag = true, itemsInfo = {count = 1},},},
				},
			}
		},
	},
}