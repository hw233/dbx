--[[NormalDialogModelDB.lua  --������
	�Ի����ã��Ի�ϵͳ��
]]

NormalDialogModelDB = 
{
	[100] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ף�����ʲô�ط����ѵ��Ҵ�Խ�ˣ�ǰ���и��ˣ���ȥ���ʿ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1001}},
					},
			}
		},
	},
[101] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20001,
		soundID = nil,
		txt = "�˴���Ϊ��ʮ�����������죬������ʦ�����ʥ��Ԫʼ�������������������Ǳ���ʦ���Դ��������˵ء�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 102}},
					},
			}
		},
	},
[102] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ǰ���Ū������Ҫ��ʲô��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1001}},
				    {action = DialogActionType.Goto, param = {dialogID = 103}},
			},
			}
		},
	},
[103] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20001,
		soundID = nil,
		txt = "���غ��£�ʦ�����ڵ��㣬����ȥ�ݼ������˼ұ�֪��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1002}},
					},
			}
		},
	},
[104] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20002,
		soundID = nil,
		txt = "��ʱ�½����Ƕ���ĩ�꣬�˼䶯������ħ���ҡ������ˣ�����Ӧ�����������������²���������֮����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1002}},
				    {action = DialogActionType.Goto, param = {dialogID = 105}},
			},
			}
		},
	},
[105] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������²�������Ը�⾡һ��֮����������ɶ�����ᡣ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 106}},
					},
			}
		},
	},
[106] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20002,
		soundID = nil,
		txt = "�޷���������㴫��һ�е������죬��Ӧ����ħа��������ʹ���кͱ������µ�������һս�����ܻ��������������մ��о��衣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1003}},
				{action = DialogActionType.EnterScriptFight, param = {scriptID = 100,mapID = 8}},
					{action = DialogActionType.UITip, param = {v = 1,p = 1}},
				},
			}
		},
	},
[107] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ѳɹ����������񽫣���֪��ʦ���кηԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1003}},
				    {action = DialogActionType.Gotos, param = {dialogIDs = {108,118,128,138,148,158}}},
					},
			}
		},
	},
[109] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ҷ�Ԫʼ��ʦ�Ը�������Ѱ���·���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1004}},
				    {action = DialogActionType.Goto, param = {dialogID = 110}},
			},
			}
		},
	},
[110] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����֪ʦ��Ը���ʦ�������Ὣ�˰ٱ���ת�����㣬�˴���װ����ҩ���£����������˼���������ɴ�һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1005}},
				{action = DialogActionType.UITip, param = {v = 15,p = 1}},
				},
			}
		},
	},
[111] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "�˰ٱ���ÿ10����ɿ���һ�Σ��ɻ������������С�ı�Ū���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1005}},
				    {action = DialogActionType.Goto, param = {dialogID = 112}},
			},
			}
		},
	},
[112] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����������뷲�������������齣���������·�ȥ�ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1006}},
					},
			}
		},
	},
[113] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����Ԫʼ��ʦ֮��������������ѧϰ�ɵ����죬��������ħ���ȼò������գ���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1006}},
				    {action = DialogActionType.Goto, param = {dialogID = 114}},
			},
			}
		},
	},
[114] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20004,
		soundID = nil,
		txt = "����뱾�ţ�Ϊʦ������������ķ����ķ�����һ���ȼ���������ܡ����ҳ��Խ��������ķ�����ʮ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1007}},
				{action = DialogActionType.UITip, param = {v = 9,p = 1}},
				},
			}
		},
	},
[115] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���Ѳ����Ż����ķ��ˣ������ŷԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1007}},
				    {action = DialogActionType.Goto, param = {dialogID = 168}},
			},
			}
		},
	},
[116] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20004,
		soundID = nil,
		txt = "�����Žǵýؽ��洫����ƽ�����ң�ı�Ẻ�ҽ�ɽ��������������λ������֮Ӣ������Ϊ�����������ŷɣ���������Դ�򡣴����������غ��������ˣ����ݰ����ʧ������ǰ������Դ������Ԫ���̽�������䡣������ȫ����ͬ�ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1038}},
					},
			}
		},
	},
[117] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ǬԪ�����ӣ��ط�ʦ��ǰ������̽�����������ŷ��������䣬���������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1038}},
				    {action = DialogActionType.Goto, param = {dialogID = 360}},
			},
			}
		},
	},
[119] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ҷ�Ԫʼ��ʦ�Ը�������Ѱ���·���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1009}},
				    {action = DialogActionType.Goto, param = {dialogID = 120}},
			},
			}
		},
	},
[120] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����֪ʦ��Ը���ʦ�������Ὣ�˰ٱ���ת�����㣬�˴���װ����ҩ���£����������˼���������ɴ�һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1010}},
				{action = DialogActionType.UITip, param = {v = 15,p = 1}},
				},
			}
		},
	},
[121] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "�˰ٱ���ÿ10����ɿ���һ�Σ��ɻ������������С�ı�Ū���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1010}},
				    {action = DialogActionType.Goto, param = {dialogID = 122}},
			},
			}
		},
	},
[122] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����������뷲�������������齣���������·�ȥ�ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1011}},
					},
			}
		},
	},
[123] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����Ԫʼ��ʦ֮��������������ѧϰ�ɵ����죬��������ħ���ȼò������գ���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1011}},
				    {action = DialogActionType.Goto, param = {dialogID = 124}},
			},
			}
		},
	},
[124] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20005,
		soundID = nil,
		txt = "����뱾�ţ�Ϊʦ������������ķ����ķ�����һ���ȼ���������ܡ����ҳ��Խ��������ķ�����ʮ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1012}},
				{action = DialogActionType.UITip, param = {v = 9,p = 1}},
				},
			}
		},
	},
[125] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���Ѳ����Ż����ķ��ˣ������ŷԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1012}},
				    {action = DialogActionType.Goto, param = {dialogID = 174}},
			},
			}
		},
	},
[126] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20005,
		soundID = nil,
		txt = "�����Žǵýؽ��洫����ƽ�����ң�ı�Ẻ�ҽ�ɽ��������������λ������֮Ӣ������Ϊ�����������ŷɣ���������Դ�򡣴����������غ��������ˣ����ݰ����ʧ������ǰ������Դ������Ԫ���̽�������䡣������ȫ����ͬ�ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1043}},
					},
			}
		},
	},
[127] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������Դ�����ӣ��ط�ʦ��ǰ������̽�����������ŷ��������䣬���������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1043}},
				    {action = DialogActionType.Goto, param = {dialogID = 361}},
			},
			}
		},
	},
[129] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ҷ�Ԫʼ��ʦ�Ը�������Ѱ���·���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1014}},
				    {action = DialogActionType.Goto, param = {dialogID = 130}},
			},
			}
		},
	},
[130] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����֪ʦ��Ը���ʦ�������Ὣ�˰ٱ���ת�����㣬�˴���װ����ҩ���£����������˼���������ɴ�һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1015}},
				{action = DialogActionType.UITip, param = {v = 15,p = 1}},
				},
			}
		},
	},
[131] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "�˰ٱ���ÿ10����ɿ���һ�Σ��ɻ������������С�ı�Ū���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1015}},
				    {action = DialogActionType.Goto, param = {dialogID = 132}},
			},
			}
		},
	},
[132] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����������뷲�������������齣���������·�ȥ�ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1016}},
					},
			}
		},
	},
[133] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����Ԫʼ��ʦ֮��������������ѧϰ�ɵ����죬��������ħ���ȼò������գ���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1016}},
				    {action = DialogActionType.Goto, param = {dialogID = 134}},
			},
			}
		},
	},
[134] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20006,
		soundID = nil,
		txt = "����뱾�ţ�Ϊʦ������������ķ����ķ�����һ���ȼ���������ܡ����ҳ��Խ��������ķ�����ʮ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1017}},
				{action = DialogActionType.UITip, param = {v = 9,p = 1}},
				},
			}
		},
	},
[135] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���Ѳ����Ż����ķ��ˣ������ŷԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1017}},
				    {action = DialogActionType.Goto, param = {dialogID = 180}},
			},
			}
		},
	},
[136] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20006,
		soundID = nil,
		txt = "�����Žǵýؽ��洫����ƽ�����ң�ı�Ẻ�ҽ�ɽ��������������λ������֮Ӣ������Ϊ�����������ŷɣ���������Դ�򡣴����������غ��������ˣ����ݰ����ʧ������ǰ������Դ������Ԫ���̽�������䡣������ȫ����ͬ�ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1048}},
					},
			}
		},
	},
[137] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���˽�ϼɽ���ӣ��ط�ʦ��ǰ������̽�����������ŷ��������䣬���������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1048}},
				    {action = DialogActionType.Goto, param = {dialogID = 362}},
			},
			}
		},
	},
[139] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ҷ�Ԫʼ��ʦ�Ը�������Ѱ���·���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1019}},
				    {action = DialogActionType.Goto, param = {dialogID = 140}},
			},
			}
		},
	},
[140] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����֪ʦ��Ը���ʦ�������Ὣ�˰ٱ���ת�����㣬�˴���װ����ҩ���£����������˼���������ɴ�һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1020}},
				{action = DialogActionType.UITip, param = {v = 15,p = 1}},
				},
			}
		},
	},
[141] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "�˰ٱ���ÿ10����ɿ���һ�Σ��ɻ������������С�ı�Ū���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1020}},
				    {action = DialogActionType.Goto, param = {dialogID = 142}},
			},
			}
		},
	},
[142] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����������뷲�������������齣���������·�ȥ�ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1021}},
					},
			}
		},
	},
[143] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����Ԫʼ��ʦ֮��������������ѧϰ�ɵ����죬��������ħ���ȼò������գ���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1021}},
				    {action = DialogActionType.Goto, param = {dialogID = 144}},
			},
			}
		},
	},
[144] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20007,
		soundID = nil,
		txt = "����뱾�ţ�Ϊʦ������������ķ����ķ�����һ���ȼ���������ܡ����ҳ��Խ��������ķ�����ʮ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1022}},
				{action = DialogActionType.UITip, param = {v = 9,p = 1}},
				},
			}
		},
	},
[145] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���Ѳ����Ż����ķ��ˣ������ŷԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1022}},
				    {action = DialogActionType.Goto, param = {dialogID = 186}},
			},
			}
		},
	},
[146] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20007,
		soundID = nil,
		txt = "�����Žǵýؽ��洫����ƽ�����ң�ı�Ẻ�ҽ�ɽ��������������λ������֮Ӣ������Ϊ�����������ŷɣ���������Դ�򡣴����������غ��������ˣ����ݰ����ʧ������ǰ������Դ������Ԫ���̽�������䡣������ȫ����ͬ�ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1053}},
					},
			}
		},
	},
[147] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������������ӣ��ط�ʦ��ǰ������̽�����������ŷ��������䣬���������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1053}},
				    {action = DialogActionType.Goto, param = {dialogID = 363}},
			},
			}
		},
	},
[149] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ҷ�Ԫʼ��ʦ�Ը�������Ѱ���·���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1024}},
				    {action = DialogActionType.Goto, param = {dialogID = 150}},
			},
			}
		},
	},
[150] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����֪ʦ��Ը���ʦ�������Ὣ�˰ٱ���ת�����㣬�˴���װ����ҩ���£����������˼���������ɴ�һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1025}},
				{action = DialogActionType.UITip, param = {v = 15,p = 1}},
				},
			}
		},
	},
[151] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "�˰ٱ���ÿ10����ɿ���һ�Σ��ɻ������������С�ı�Ū���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1025}},
				    {action = DialogActionType.Goto, param = {dialogID = 152}},
			},
			}
		},
	},
[152] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����������뷲�������������齣���������·�ȥ�ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1026}},
					},
			}
		},
	},
[153] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����Ԫʼ��ʦ֮��������������ѧϰ�ɵ����죬��������ħ���ȼò������գ���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1026}},
				    {action = DialogActionType.Goto, param = {dialogID = 154}},
			},
			}
		},
	},
[154] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20008,
		soundID = nil,
		txt = "����뱾�ţ�Ϊʦ������������ķ����ķ�����һ���ȼ���������ܡ����ҳ��Խ��������ķ�����ʮ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1027}},
				{action = DialogActionType.UITip, param = {v = 9,p = 1}},
				},
			}
		},
	},
[155] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���Ѳ����Ż����ķ��ˣ������ŷԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1027}},
				    {action = DialogActionType.Goto, param = {dialogID = 192}},
			},
			}
		},
	},
[156] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20008,
		soundID = nil,
		txt = "�����Žǵýؽ��洫����ƽ�����ң�ı�Ẻ�ҽ�ɽ��������������λ������֮Ӣ������Ϊ�����������ŷɣ���������Դ�򡣴����������غ��������ˣ����ݰ����ʧ������ǰ������Դ������Ԫ���̽�������䡣������ȫ����ͬ�ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1058}},
					},
			}
		},
	},
[157] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���������ŵ��ӣ��ط�ʦ��ǰ������̽�����������ŷ��������䣬���������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1058}},
				    {action = DialogActionType.Goto, param = {dialogID = 364}},
			},
			}
		},
	},
[159] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ҷ�Ԫʼ��ʦ�Ը�������Ѱ���·���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1029}},
				    {action = DialogActionType.Goto, param = {dialogID = 160}},
			},
			}
		},
	},
[160] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����֪ʦ��Ը���ʦ�������Ὣ�˰ٱ���ת�����㣬�˴���װ����ҩ���£����������˼���������ɴ�һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1030}},
				{action = DialogActionType.UITip, param = {v = 15,p = 1}},
				},
			}
		},
	},
[161] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "�˰ٱ���ÿ10����ɿ���һ�Σ��ɻ������������С�ı�Ū���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1030}},
				    {action = DialogActionType.Goto, param = {dialogID = 162}},
			},
			}
		},
	},
[162] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "����������뷲�������������齣���������·�ȥ�ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1031}},
					},
			}
		},
	},
[163] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����Ԫʼ��ʦ֮��������������ѧϰ�ɵ����죬��������ħ���ȼò������գ���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1031}},
				    {action = DialogActionType.Goto, param = {dialogID = 164}},
			},
			}
		},
	},
[164] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20009,
		soundID = nil,
		txt = "����뱾�ţ�Ϊʦ������������ķ����ķ�����һ���ȼ���������ܡ����ҳ��Խ��������ķ�����ʮ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1032}},
				{action = DialogActionType.UITip, param = {v = 9,p = 1}},
				},
			}
		},
	},
[165] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���Ѳ����Ż����ķ��ˣ������ŷԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1032}},
				    {action = DialogActionType.Goto, param = {dialogID = 198}},
			},
			}
		},
	},
[166] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20009,
		soundID = nil,
		txt = "�����Žǵýؽ��洫����ƽ�����ң�ı�Ẻ�ҽ�ɽ��������������λ������֮Ӣ������Ϊ�����������ŷɣ���������Դ�򡣴����������غ��������ˣ����ݰ����ʧ������ǰ������Դ������Ԫ���̽�������䡣������ȫ����ͬ�ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1063}},
					},
			}
		},
	},
[167] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������������ӣ��ط�ʦ��ǰ������̽�����������ŷ��������䣬���������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1063}},
				    {action = DialogActionType.Goto, param = {dialogID = 365}},
			},
			}
		},
	},
[168] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20004,
		soundID = nil,
		txt = "Ϊʦ����������µ���������˵�����������������������ǰȥѰΪʦ���´���ӣ���̽���¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1034}},
					},
			}
		},
	},
[169] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣�ʦ��������ѯ����������һ�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1034}},
				    {action = DialogActionType.Goto, param = {dialogID = 170}},
			},
			}
		},
	},
[170] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20021,
		soundID = nil,
		txt = "�������������ɶ��Ϸ�������͵�ܳ������ֵ�С��������ǰȥѰ�Ҳ���׽�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1036}},
					},
			}
		},
	},
[171] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣��������Ѳ�׽���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1036}},
				    {action = DialogActionType.Goto, param = {dialogID = 172}},
			},
			}
		},
	},
[172] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20021,
		soundID = nil,
		txt = "�ܺã���С�������������ɣ��ڽ��������У���С�����Ϊ����������������ʦ����Ҫ�����̣�����ǰȥʦ����ѯ�ʡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1037}},
				{action = DialogActionType.UITip, param = {v = 18,p = 1}},
			{action = DialogActionType.UITip, param = {v = 19,p = 1}},
				},
			}
		},
	},
[173] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ���кηԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1037}},
				    {action = DialogActionType.Goto, param = {dialogID = 116}},
			},
			}
		},
	},
[174] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20005,
		soundID = nil,
		txt = "Ϊʦ����������µ���������˵�����������������������ǰȥѰΪʦ���´���ӣ���̽���¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1039}},
					},
			}
		},
	},
[175] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣�ʦ��������ѯ����������һ�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1039}},
				    {action = DialogActionType.Goto, param = {dialogID = 176}},
			},
			}
		},
	},
[176] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20025,
		soundID = nil,
		txt = "����������͵�ܳ������ֵ�С��������ǰȥ��׽�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1040}},
					},
			}
		},
	},
[177] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣��������Ѳ�׽���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1040}},
				    {action = DialogActionType.Goto, param = {dialogID = 178}},
			},
			}
		},
	},
[178] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20025,
		soundID = nil,
		txt = "�ܺã���С�������������ɣ��ڽ��������У���С�����Ϊ����������������ʦ����Ҫ�����̣�����ǰȥʦ����ѯ�ʡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1042}},
				{action = DialogActionType.UITip, param = {v = 18,p = 1}},
			{action = DialogActionType.UITip, param = {v = 19,p = 1}},
				},
			}
		},
	},
[179] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ���кηԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1042}},
				    {action = DialogActionType.Goto, param = {dialogID = 126}},
			},
			}
		},
	},
[180] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20006,
		soundID = nil,
		txt = "Ϊʦ����������µ���������˵�����������������������ǰȥѰΪʦ���´���ӣ���̽���¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1044}},
					},
			}
		},
	},
[181] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣�ʦ��������ѯ����������һ�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1044}},
				    {action = DialogActionType.Goto, param = {dialogID = 182}},
			},
			}
		},
	},
[182] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20023,
		soundID = nil,
		txt = "����������͵�ܳ������ֵ�С��������ǰȥ��׽�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1045}},
					},
			}
		},
	},
[183] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣��������Ѳ�׽���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1045}},
				    {action = DialogActionType.Goto, param = {dialogID = 184}},
			},
			}
		},
	},
[184] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20023,
		soundID = nil,
		txt = "�ܺã���С�������������ɣ��ڽ��������У���С�����Ϊ����������������ʦ����Ҫ�����̣�����ǰȥʦ����ѯ�ʡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1047}},
				{action = DialogActionType.UITip, param = {v = 18,p = 1}},
			{action = DialogActionType.UITip, param = {v = 19,p = 1}},
				},
			}
		},
	},
[185] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ���кηԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1047}},
				    {action = DialogActionType.Goto, param = {dialogID = 136}},
			},
			}
		},
	},
[186] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20007,
		soundID = nil,
		txt = "Ϊʦ����������µ���������˵�����������������������ǰȥѰΪʦ���´���ӣ���̽���¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1049}},
					},
			}
		},
	},
[187] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣�ʦ��������ѯ����������һ�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1049}},
				    {action = DialogActionType.Goto, param = {dialogID = 188}},
			},
			}
		},
	},
[188] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20022,
		soundID = nil,
		txt = "����������͵�ܳ������ֵ�С��������ǰȥ��׽�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1050}},
					},
			}
		},
	},
[189] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣��������Ѳ�׽���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1050}},
				    {action = DialogActionType.Goto, param = {dialogID = 190}},
			},
			}
		},
	},
[190] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20022,
		soundID = nil,
		txt = "�ܺã���С�������������ɣ��ڽ��������У���С�����Ϊ����������������ʦ����Ҫ�����̣�����ǰȥʦ����ѯ�ʡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1052}},
				{action = DialogActionType.UITip, param = {v = 18,p = 1}},
			{action = DialogActionType.UITip, param = {v = 19,p = 1}},
				},
			}
		},
	},
[191] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ���кηԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1052}},
				    {action = DialogActionType.Goto, param = {dialogID = 146}},
			},
			}
		},
	},
[192] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20008,
		soundID = nil,
		txt = "Ϊʦ����������µ���������˵�����������������������ǰȥѰΪʦ���´���ӣ���̽���¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1054}},
					},
			}
		},
	},
[193] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣�ʦ��������ѯ����������һ�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1054}},
				    {action = DialogActionType.Goto, param = {dialogID = 194}},
			},
			}
		},
	},
[194] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20026,
		soundID = nil,
		txt = "����������͵�ܳ������ֵ�С��������ǰȥ��׽�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1055}},
					},
			}
		},
	},
[195] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣��������Ѳ�׽���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1055}},
				    {action = DialogActionType.Goto, param = {dialogID = 196}},
			},
			}
		},
	},
[196] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20026,
		soundID = nil,
		txt = "�ܺã���С�������������ɣ��ڽ��������У���С�����Ϊ����������������ʦ����Ҫ�����̣�����ǰȥʦ����ѯ�ʡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1057}},
				{action = DialogActionType.UITip, param = {v = 18,p = 1}},
			{action = DialogActionType.UITip, param = {v = 19,p = 1}},
				},
			}
		},
	},
[197] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ���кηԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1057}},
				    {action = DialogActionType.Goto, param = {dialogID = 156}},
			},
			}
		},
	},
[198] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20009,
		soundID = nil,
		txt = "Ϊʦ����������µ���������˵�����������������������ǰȥѰΪʦ���´���ӣ���̽���¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1059}},
					},
			}
		},
	},
[199] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣�ʦ��������ѯ����������һ�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1059}},
				    {action = DialogActionType.Goto, param = {dialogID = 200}},
			},
			}
		},
	},
[200] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20024,
		soundID = nil,
		txt = "����������͵�ܳ������ֵ�С��������ǰȥ��׽�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1060}},
					},
			}
		},
	},
[201] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�֣��������Ѳ�׽���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1060}},
				    {action = DialogActionType.Goto, param = {dialogID = 202}},
			},
			}
		},
	},
[202] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20024,
		soundID = nil,
		txt = "�ܺã���С�������������ɣ��ڽ��������У���С�����Ϊ����������������ʦ����Ҫ�����̣�����ǰȥʦ����ѯ�ʡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1062}},
				{action = DialogActionType.UITip, param = {v = 18,p = 1}},
			{action = DialogActionType.UITip, param = {v = 19,p = 1}},
				},
			}
		},
	},
[203] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ���кηԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1062}},
				    {action = DialogActionType.Goto, param = {dialogID = 166}},
			},
			}
		},
	},
[205] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20028,
		soundID = nil,
		txt = "ԭ�������ŵ��ӣ���ĳ����λ�ֵܹ����ŷ�ǰ������ƽ����������������Ž��������������ƴ�����Χ����������λ�ֵ�ȴ���ű�����������Χ����ǰ��������Ӣ����������ɱ����Χ��ɱ�������һ�������λ�ֵ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1065}},
					},
			}
		},
	},
[206] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20031,
		soundID = nil,
		txt = "�����������¸������࣬�ڴ˵Ⱥ��ʱ���������Ȼ�������������ɡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 207}},
					},
			}
		},
	},
[207] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20028,
		soundID = nil,
		txt = "���࣡�����������Ҷ��ܣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 102,mapID = 101}},
				},
			}
		},
	},
[208] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20032,
		soundID = nil,
		txt = "��л����Ӣ����ȣ���ĳ��̽����������������Žǵ���һ���ƽ����Զ������Χ����ǰ�����ҵ���ȥ�����ܻ�ϣ�նɱ��Զ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1065}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1066}},
			},
			}
		},
	},
[209] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20033,
		soundID = nil,
		txt = "վס���ҷ��Զ����֮����ش˵أ��κ��˶�����ͨ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 210}},
					},
			}
		},
	},
[210] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20032,
		soundID = nil,
		txt = "����������Ѱ�����ܣ����ǲ�֪���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 103,mapID = 101}},
				},
			}
		},
	},
[211] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20036,
		soundID = nil,
		txt = "��⣡��Щ��Ͱ����Ȼ������ɱ�������������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 212}},
					},
			}
		},
	},
[212] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���Ī�ţ��������նɱ�������������  ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 104,mapID = 101}},
				},
			}
		},
	},
[213] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20037,
		soundID = nil,
		txt = "��л�������Ӣ����ȣ�����������ǰ�����������ǰ����ɱ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1066}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1067}},
			},
			}
		},
	},
[214] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������㾹�����Ž�������ݱ�������������ҵȱ�Ҫ�����³�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 215}},
					},
			}
		},
	},
[215] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20040,
		soundID = nil,
		txt = "û�϶��Ⱦ��ܴ����˵ء�Ҳ�գ�����һ���������Ǿ��ñ����Ͷ�����·�ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 105,mapID = 101}},
				},
			}
		},
	},
[216] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20028,
		soundID = nil,
		txt = "ллӢ�����������������Ž����ƻ�����̨������̨��Ԫʼ�����������޽���ѹ��ǧ��ħ�ĵط���������̨���ƣ������´��ң�����������룬����������ǰ������̨��ֹ�� ",
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
[217] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20043,
		soundID = nil,
		txt = "���������Ž�֮����ش˵أ���������ӽ�����̨���������������£�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 218}},
					},
			}
		},
	},
[218] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ݵò��񣬿�����ô��ʰ�㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 106,mapID = 102}},
				},
			}
		},
	},
[219] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20044,
		soundID = nil,
		txt = "�ƽ��Ͻ���Զ־�ڴˣ��������������ط���̨���������ߣ�ɱ���⣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 220}},
					},
			}
		},
	},
[220] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20028,
		soundID = nil,
		txt = "��Զ־����������У����ձ���������ڣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 107,mapID = 102}},
				},
			}
		},
	},
[221] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���˺��ˣ��Ž��������ںδ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 222}},
					},
			}
		},
	},
[222] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20045,
		soundID = nil,
		txt = "�����Ž�֮���ű������ֳ��ѳɹ��⿪����̨�ķ�ӡ��ֻҪ���Ƴ�����̨�����һ����ӡ����ʱ��ħȺ���������¾��ǰ��ƽ�����ˣ����Ǽ���֪�������ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 108,mapID = 102}},
				},
			}
		},
	},
[223] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20028,
		soundID = nil,
		txt = "����������նɱ�ű������Ž����������ڷ���̨��һ������̨���һ����ӡ���Ž����ƣ��ؽ���ħȺ�������´��ң��ҵ��������̨����Ҫ��ֹ�Ž����ˣ�",
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
[224] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ž��������ںδ���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 225}},
					},
			}
		},
	},
[225] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20046,
		soundID = nil,
		txt = "����칫�����ŽǴ����ȴ����������˵��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 109,mapID = 102}},
				},
			}
		},
	},
[226] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20047,
		soundID = nil,
		txt = "�ƽ���������ڴˣ�������׷���ᣬ�뻵����������£���Ҫ���������ڴ˵أ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 227}},
					},
			}
		},
	},
[227] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ΪŰ�����аɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 110,mapID = 102}},
				},
			}
		},
	},
[228] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20028,
		soundID = nil,
		txt = "�Ž�������������ס�֣�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 229}},
					},
			}
		},
	},
[229] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20048,
		soundID = nil,
		txt = "�������������ˣ�����̨�����һ�������Ͼ�Ҫ�������Ƶ�����ǧ��ħȺ�������¼������ң��������⽭ɽ�������ҵģ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 113,mapID = 102}},
				},
			}
		},
	},
[230] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20048,
		soundID = nil,
		txt = "����̨��ӡ���ƣ������ѳɹ����ʹ�����㲻�ٷ����ˣ����ȥҲ��������ڣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[231] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20028,
		soundID = nil,
		txt = "��⣡����̨��ӡ�ѱ��Ž������ƻ�����ħ�����������˵ط�˵��֮�����������뿪�˵أ��ӳ����飡",
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
[232] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20028,
		soundID = nil,
		txt = "��⣡����̨��ӡ�ѱ��Ž������ƻ�����ħ�����������Ҵ�����Σ�ӣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1070}},
				    {action = DialogActionType.Goto, param = {dialogID = 233}},
			},
			}
		},
	},
[233] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����̨֮�·�ͬС�ɣ�����㷵���������콫���¸�֪Ԫʼ���� ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1071}},
					},
			}
		},
	},
[234] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "Ԫʼ��ʦ������̨���Ž��ƻ���ǧ����ħ�����ķ���������Ǻã�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 235}},
					},
			}
		},
	},
[235] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20002,
		soundID = nil,
		txt = "������֪Ϥ����̨֮�£�ڤڤ���ѭ�����˼�ע��Ҫ��һ��Ⱥ�۷�����������֮�������ѣ����з���̨����֮�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1071}},
				    {action = DialogActionType.Goto, param = {dialogID = 236}},
			},
			}
		},
	},
[236] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20002,
		soundID = nil,
		txt = "����֮�������跨�շ���ħ���������ɴ˴�١������½�ǰ��������������̨һ�¸�֪���ҳ�͢���ó�͢�������㡣���ź��ҳ�͢����¬ֲ�����м���֮־������ǰȥ����̽�ִ��¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1072}},
				    {action = DialogActionType.Goto, param = {dialogID = 237}},
			},
			}
		},
	},
[237] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������������ȥ������",
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
[238] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "¬���ˣ��ɽ����̨���ŽǴݻ٣�������ħ�Ӵ��ķ���������Σ�ӡ�������͢ǲ����շ���ħ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1072}},
				    {action = DialogActionType.Goto, param = {dialogID = 240}},
			},
			}
		},
	},
[239] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "��������������������ʥ�ϣ�����������κ����˻�ʮ���̻��Һ󹬣���������������д󳼸����޷�������¡�ֻ�г���ʮ���̣����ɵ�����͢���ӡ�",
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
[240] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "��������������������ʥ�ϣ�����������κ����˻�ʮ���̻��Һ󹬣���������������д󳼸����޷�������¡�ֻ�г���ʮ���̣����ɵ�����͢���ӡ����־�ͳ���˶����ʮ����ͷĿ�����ĸ���Ҫ��ʮ���̣����ȳ����˶��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1073}},
					},
			}
		},
	},
[241] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20052,
		soundID = nil,
		txt = "�ô�����԰��������Ϊ���Ѳ�������ı����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 242}},
					},
			}
		},
	},
[242] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ݵ����ң��˶���������������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 114,mapID = 103}},
				},
			}
		},
	},
[243] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20053,
		soundID = nil,
		txt = "�˶�ڴˣ�����������԰��Σ����ǻ�Ĳ��ͷ��ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 244}},
					},
			}
		},
	},
[244] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�˶�����ͬ�˻�ʮ��������������£���ŪȨ�������ձ�Ҫ�������˳�����˻�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 115,mapID = 103}},
				},
			}
		},
	},
[245] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�˶�ѳ�����ͼ���ǰ�л�ɱ���á�",
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
[246] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20056,
		soundID = nil,
		txt = "վס�����ô�������ô�����԰��ɱ���⣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 247}},
					},
			}
		},
	},
[247] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��Ҫ�����ã����������ÿ����ұ�������һ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 116,mapID = 103}},
				},
			}
		},
	},
[248] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ã������ҵ����ˣ������ʥ���Ѿã�����ʥ�ϲ����˺δ�����������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 249}},
					},
			}
		},
	},
[249] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20057,
		soundID = nil,
		txt = "ʥ�����������ۼң��ۼҶ�ʥ��Ҳ�����Ĺ������������֮˵��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 117,mapID = 103}},
				},
			}
		},
	},
[250] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��˵�����¾����ںδ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 251}},
					},
			}
		},
	},
[251] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20057,
		soundID = nil,
		txt = "Ӣ������������������������԰��Է��Ӣ�ۿ�ǰ����̽��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[252] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ʵ�Ϊ�β�������԰��Է��Ī�Ǳ��˸������˲��ɣ�",
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
[253] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������Ϊ��ǰ������Ϊ�ι������ʵ�ʧ���ǲ��Ǻ������йأ��������ٱ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[254] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20058,
		soundID = nil,
		txt = "���ñ������ˣ����ӣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[255] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "¬ֲ���ˣ���ǰ������԰��̽�������䣬���ֻ���ʧ���ˣ���������԰���ּ�ð����ǰ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1076}},
				    {action = DialogActionType.Goto, param = {dialogID = 256}},
			},
			}
		},
	},
[256] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "�����Ǻη���ħ����°�߱��£����ܾ��������ɳ�͢�󽫻ʸ��Ը�������������������У����ǰȥѰ������̽���������з�����ħ�ټ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1077}},
					},
			}
		},
	},
[257] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ʸ�����������ǰ���ձ�һ��ħǱ�빬��ץ���ˣ��ҷ�¬ֲ����֮���ǰ����̽���£�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1077}},
				    {action = DialogActionType.Goto, param = {dialogID = 258}},
			},
			}
		},
	},
[258] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20059,
		soundID = nil,
		txt = "��ð����ǰ��������ʹ�����ǰ����ͳ�������Ѳ��˹�ϵ���ܿ��ܺʹ����йأ������������ǳ�����ǰȥ������̽���¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1078}},
					},
			}
		},
	},
[259] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ð����ǰ��������ʹ����ǲ������ڱ��󵷹�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 260}},
					},
			}
		},
	},
[260] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20060,
		soundID = nil,
		txt = "��Ȼ����֪�����ǾͲ�������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 120,mapID = 10}},
				},
			}
		},
	},
[261] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20060,
		soundID = nil,
		txt = "Ӣ����������һʱ��Ϳ�������˺ڷ�ɽ����������򣬲�������Щ�˻���ʹ��ġ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[262] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��˵�����������δ����к�ͼı��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1078}},
				    {action = DialogActionType.Goto, param = {dialogID = 263}},
			},
			}
		},
	},
[263] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20060,
		soundID = nil,
		txt = "�����˵����Žǵ��״����ӣ���ͨ��ǿ���Ž��ƻ�����̨֮��������һȺ��ɽ����ռ���̾�ڷ�ɽΪ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1079}},
					},
			}
		},
	},
[264] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20061,
		soundID = nil,
		txt = "ʲô�ˣ����ô��Һڷ�ɽ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 265}},
					},
			}
		},
	},
[265] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������ںδ�������ʵ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 121,mapID = 104}},
				},
			}
		},
	},
[266] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20064,
		soundID = nil,
		txt = "�����������´�������Ҳ����ƾ��Ҳ�������������ˣ��ȿ�����û��������£�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 267}},
					},
			}
		},
	},
[267] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ǿ��������㣬�������ࡣ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 122,mapID = 104}},
				},
			}
		},
	},
[268] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20065,
		soundID = nil,
		txt = "վס�����˸Ҵ����Һڷ�ɽ֮�أ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[269] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������˶���ʲô�ط��������ʵ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[270] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20066,
		soundID = nil,
		txt = "�Ҽ��Ŵ������Ҫ������ô�ɽ��֮�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 271}},
					},
			}
		},
	},
[271] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������˹��������������Ҽ��ˣ���Ȼ�����й�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 123,mapID = 104}},
				},
			}
		},
	},
[272] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20067,
		soundID = nil,
		txt = "���˻ƽ��������Ҳ�������׷���ᣬ����������Ϊ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 273}},
					},
			}
		},
	},
[273] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������������ң��ɼ�ð����ǰ��������ʹ����ʵ�ʧ���ǲ�����°�ߵģ��������ٵ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 124,mapID = 104}},
				},
			}
		},
	},
[274] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20067,
		soundID = nil,
		txt = "�����������ˣ�Ӣ����Ҫ�ٴ򡣻ʵ�ʧ����ǰ���ĺڷ�������Ϊ���ڷ������Ķ����ڷ綴����ǰ����Զ����С�ʵ�Ҳȷʵ����ץ�ߵģ��������һ�С�ʵۣ�����ȥ�������˱�ã����º����޹ء�",
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
[275] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20068,
		soundID = nil,
		txt = "ʲô�ˣ����ô��Һڷ綴��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 276}},
					},
			}
		},
	},
[276] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���кڷ������Թ԰ѵ���ʥ�Ͻ����������򶨽�������������֮�أ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 125,mapID = 104}},
				},
			}
		},
	},
[277] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20069,
		soundID = nil,
		txt = "���Ⱦ����ô���ɽ�ţ�ɱ�ҵ��ӣ��ɺޣ����ձ����涨Ҫ��������ʬ��Σ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 278}},
					},
			}
		},
	},
[278] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ڷ���������ѻʵ۱��²������ˣ���콻����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 126,mapID = 104}},
				},
			}
		},
	},
[279] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ǻڷ��������и���������ܶԸ����ɱ�����������ڴ������У��ǾȲ��ɣ�����㷵��ʦ������ʦ����",
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
[280] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ�𣬻ʵ۱��±��ڷ�����ץ�ߣ�������ȣ��κδ������������ܶԸ�������ʦ����ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1082}},
				    {action = DialogActionType.Goto, param = {dialogID = 281}},
			},
			}
		},
	},
[281] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20004,
		soundID = nil,
		txt = "�˺ڷ�������ǧ��������ΪʦҲδ��������֣�Ϊʦ�������ǰ����Ȫɽ���ݼ��Ҳ��̽�����������ʦ������ʦ�������㽵���ڷ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1083}},
					},
			}
		},
	},
[283] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ����������˼�Ϊ��Ⱥ��һʵۣ�ȴ�����ںڷ�������������ʦ���ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1083}},
				    {action = DialogActionType.Goto, param = {dialogID = 304}},
			},
			}
		},
	},
[284] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ�𣬻ʵ۱��±��ڷ�����ץ�ߣ�������ȣ��κδ������������ܶԸ�������ʦ����ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1084}},
				    {action = DialogActionType.Goto, param = {dialogID = 285}},
			},
			}
		},
	},
[285] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20005,
		soundID = nil,
		txt = "�˺ڷ�������ǧ��������ΪʦҲδ��������֣�Ϊʦ�������ǰ����Ȫɽ���ݼ��Ҳ��̽�����������ʦ������ʦ�������㽵���ڷ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1085}},
					},
			}
		},
	},
[287] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ����������˼�Ϊ��Ⱥ��һʵۣ�ȴ�����ںڷ�������������ʦ���ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1085}},
				    {action = DialogActionType.Goto, param = {dialogID = 304}},
			},
			}
		},
	},
[288] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ�𣬻ʵ۱��±��ڷ�����ץ�ߣ�������ȣ��κδ������������ܶԸ�������ʦ����ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1086}},
				    {action = DialogActionType.Goto, param = {dialogID = 289}},
			},
			}
		},
	},
[289] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20006,
		soundID = nil,
		txt = "�˺ڷ�������ǧ��������ΪʦҲδ��������֣�Ϊʦ�������ǰ����Ȫɽ���ݼ��Ҳ��̽�����������ʦ������ʦ�������㽵���ڷ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1087}},
					},
			}
		},
	},
[291] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ����������˼�Ϊ��Ⱥ��һʵۣ�ȴ�����ںڷ�������������ʦ���ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1087}},
				    {action = DialogActionType.Goto, param = {dialogID = 304}},
			},
			}
		},
	},
[292] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ�𣬻ʵ۱��±��ڷ�����ץ�ߣ�������ȣ��κδ������������ܶԸ�������ʦ����ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1088}},
				    {action = DialogActionType.Goto, param = {dialogID = 293}},
			},
			}
		},
	},
[293] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20007,
		soundID = nil,
		txt = "�˺ڷ�������ǧ��������ΪʦҲδ��������֣�Ϊʦ�������ǰ����Ȫɽ���ݼ��Ҳ��̽�����������ʦ������ʦ�������㽵���ڷ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1089}},
					},
			}
		},
	},
[295] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ����������˼�Ϊ��Ⱥ��һʵۣ�ȴ�����ںڷ�������������ʦ���ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1089}},
				    {action = DialogActionType.Goto, param = {dialogID = 304}},
			},
			}
		},
	},
[296] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ�𣬻ʵ۱��±��ڷ�����ץ�ߣ�������ȣ��κδ������������ܶԸ�������ʦ����ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1090}},
				    {action = DialogActionType.Goto, param = {dialogID = 297}},
			},
			}
		},
	},
[297] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20008,
		soundID = nil,
		txt = "�˺ڷ�������ǧ��������ΪʦҲδ��������֣�Ϊʦ�������ǰ����Ȫɽ���ݼ��Ҳ��̽�����������ʦ������ʦ�������㽵���ڷ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1091}},
					},
			}
		},
	},
[299] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ����������˼�Ϊ��Ⱥ��һʵۣ�ȴ�����ںڷ�������������ʦ���ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1091}},
				    {action = DialogActionType.Goto, param = {dialogID = 304}},
			},
			}
		},
	},
[300] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ�𣬻ʵ۱��±��ڷ�����ץ�ߣ�������ȣ��κδ������������ܶԸ�������ʦ����ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1092}},
				    {action = DialogActionType.Goto, param = {dialogID = 301}},
			},
			}
		},
	},
[301] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20009,
		soundID = nil,
		txt = "�˺ڷ�������ǧ��������ΪʦҲδ��������֣�Ϊʦ�������ǰ����Ȫɽ���ݼ��Ҳ��̽�����������ʦ������ʦ�������㽵���ڷ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1093}},
					},
			}
		},
	},
[303] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʦ����������˼�Ϊ��Ⱥ��һʵۣ�ȴ�����ںڷ�������������ʦ���ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1093}},
				    {action = DialogActionType.Goto, param = {dialogID = 304}},
			},
			}
		},
	},
[304] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20070,
		soundID = nil,
		txt = "�˺ڷ������˴ӷ���̨�ӳ���һͷ�ϹŴ�����������һͽ��Ϊ���������ꯣ������ޱߣ���������շ��ڷ����������Ұ��������ڷ�ɽȥ����������ǲ��ͽ�½������ϣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1094}},
					},
			}
		},
	},
[305] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20071,
		soundID = nil,
		txt = "������ꯣ�����ʦ֮���ڴ˾ú��ʱ�����������ڷ綴���շ��ڷ������ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1094}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1095}},
			},
			}
		},
	},
[306] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ǿ��������ɳ����ˣ�",
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
[307] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20103,
		soundID = nil,
		txt = "��֪�����С�ӣ��ϴ��������ˣ���Ȼ������������ο��㻹��ô�ܣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 308}},
					},
			}
		},
	},
[308] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20071,
		soundID = nil,
		txt = "�ڷ���������ʶ������ꯣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 127,mapID = 104}},
				},
			}
		},
	},
[309] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20103,
		soundID = nil,
		txt = "����ˣ�������Ͷ�����ǣ������������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[310] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20071,
		soundID = nil,
		txt = "�˼�ʵ�������ںδ�����������������п�����һ�棡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[311] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20103,
		soundID = nil,
		txt = "��ץ���˼�ʵۣ�ʵ����������׿֮�У����ʵ��ѱ���ǲ�����赽�˶�׿���У�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 312}},
					},
			}
		},
	},
[312] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20071,
		soundID = nil,
		txt = "�ڷ������ѽ����ʵ�����Ҳ�Ѳ��壬������㷵����磬С�ѿ�ȥ�Ѵ���Ϣ���ں���֮�ˣ��跨Ӫ�Ȼʵ۰ɣ�",
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
[313] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ʸ����������ѴӺڷ��������е�֪������ʥ���ѱ��ڷ�����������������׿֮�֣�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1095}},
				    {action = DialogActionType.Goto, param = {dialogID = 314}},
			},
			}
		},
	},
[314] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20059,
		soundID = nil,
		txt = "��׿��������Ұ�Ĳ��������˽��°�߻ʵ۱��£����Ŀ�������Ƕ�׿�����פ��Ҫ�أ�����ǰ��������̽��׿���䡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1096}},
					},
			}
		},
	},
[315] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���֪����פ��Ҫ�صĶ�����С�ʵ۵����䣬��ʵ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 316}},
					},
			}
		},
	},
[316] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20074,
		soundID = nil,
		txt = "���˳���Ӫǰ������������ƾ��Ҳ���ʸ��̽�ҳ�����פ��Ҫ�أ���������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 128,mapID = 105}},
				},
			}
		},
	},
[317] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20074,
		soundID = nil,
		txt = "�ʵ۵��������²�֪�������˵صĵķ����Ƕ�׿�ĸ��󽫣����϶�֪����",
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
[318] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20075,
		soundID = nil,
		txt = "�Ҷ�����Ӫ���������ô��ģ�С���ǣ����������´��ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 319}},
					},
			}
		},
	},
[319] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ȶ�׿�߹������������๼��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 129,mapID = 105}},
				},
			}
		},
	},
[320] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20076,
		soundID = nil,
		txt = "���Ǻ��ˣ��޹ʴ��Ҿ�Ӫ��ɱ�ҽ�ʿ���Ա��������ƣ�������Ϊ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 321}},
					},
			}
		},
	},
[321] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����������˽��°�ߵ�����£��ҽ��ձ��������������˵ģ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 130,mapID = 105}},
				},
			}
		},
	},
[322] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20076,
		soundID = nil,
		txt = "Ӣ��������С�������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[323] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��׿����������ʥ�ϲ����˺δ�����������ʵ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 324}},
					},
			}
		},
	},
[324] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20076,
		soundID = nil,
		txt = "��׿����һ�����ܱ����ڳ����ϱߣ�ʥ�ϱ��Ǳ���׿���ڴ˵أ�Ӣ����ҪӪ��ʥ�ϣ���ȥ�����ϱ�һ̽������ ",
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
[325] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20079,
		soundID = nil,
		txt = "�������Ҽ�������׿�����صأ��㾹���ô������ǻ����ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 326}},
					},
			}
		},
	},
[326] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ݵ����ң��ʵ����ģ���������ʵ�飡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 131,mapID = 105}},
				},
			}
		},
	},
[327] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ʵ��ǲ��ǲ��ڴ˳���֮�أ��������ѻʵ۽�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 328}},
					},
			}
		},
	},
[328] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20080,
		soundID = nil,
		txt = "�����ϹŴ�ħ��������֪���ʵ۵����䣬���㱾����Σ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 132,mapID = 105}},
				},
			}
		},
	},
[329] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��⣡��ħͷ��������������������֧���������Ķ��֣����ջ�������Ϊ�ϣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
						},
			}
		},
	},
[330] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ˣ���ǰ��������̽�ʵ����䣬���������ϹŴ�ħ�����������ԭ���ӷ���̨�ӳ���һЩ��ħ����Ѿ�Ͷ����׿������Щ������������׿ʵ�����ǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1098}},
				    {action = DialogActionType.Goto, param = {dialogID = 331}},
			},
			}
		},
	},
[331] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20059,
		soundID = nil,
		txt = "�����¹���Ҫ������ǰ������ѯ��¬ֲ���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1099}},
					},
			}
		},
	},
[332] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "¬���ˣ����Ѳ���ץ�߱��µ�������������׿������¬�����ܹ�ǲ����ַ���׿������������Ӫ�ȱ��£�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1099}},
				    {action = DialogActionType.Goto, param = {dialogID = 333}},
			},
			}
		},
	},
[333] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "��԰УξԬ�������������Ը���׿���������ٻ�����Ӣ���ַ���׿������Ⱥ�۱ض�Ӧ�����ơ�Ԭ��������������Ԭ���У�����ǰ��Ѱ��Ԭ���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1100}},
					},
			}
		},
	},
[334] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��Ⱥ��ˣ�Ϊ�γ�����Ԭ�ܸ��У�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 335}},
					},
			}
		},
	},
[335] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20083,
		soundID = nil,
		txt = "���˶�׿����κ����Ҳ������ǰ��׽��Ԭ�ܣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 336}},
					},
			}
		},
	},
[336] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ԭ���Ƕ�׿�����£������ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 133,mapID = 10}},
				},
			}
		},
	},
[337] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20083,
		soundID = nil,
		txt = "Ӣ��������Ԭ�ܲ����Ҽ�������׿�ƿس�͢���Ҽ����������ҵ�ǰ��׽��Ԭ�ܣ�����Ԭ�������ߡ�������Ҽ����������ɳ�����׷��Χ��Ԭ�ܡ�",
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
[338] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "��⣡Ԭ�ܴ�����ش˿̴����ǳ�Σ�գ���׿������d����һ֧פ����פ��ͷ���������Ƕ�׿�ĸ��󽫡����ܹ��������ˣ�����֪��Ԭ�ܵ����䡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1100}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1121}},
			},
			}
		},
	},
[339] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20086,
		soundID = nil,
		txt = "���˶�̫ʦ����פ�ش�������Ҳ�����Ǻ��ˣ�����˷�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 340}},
					},
			}
		},
	},
[340] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��֪Ԭ������ںδ�������ʵ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 134,mapID = 106}},
				},
			}
		},
	},
[341] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20089,
		soundID = nil,
		txt = "���˸��ô����d���Ӫ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 342}},
					},
			}
		},
	},
[342] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "Ԭ�ܱ���Ѻ��������˵�������㲻����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 135,mapID = 106}},
				},
			}
		},
	},
[343] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "Ԭ����Ī�ţ�����������㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 344}},
					},
			}
		},
	},
[344] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20090,
		soundID = nil,
		txt = "������С����Ҫ��Ԭ�ܵģ��������ã�������Ҫ׽�ü���Ԭ��ͬ��ȥ�Ҷ�̫ʦ�����أ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 136,mapID = 106}},
				},
			}
		},
	},
[345] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "Ԭ�������Ҵ˷����㣬��������������Ԭ����������֮������������Ⱥ�ۣ�������׿��Ӫ��ʥ�ϣ�������ҡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1122}},
				    {action = DialogActionType.Goto, param = {dialogID = 346}},
			},
			}
		},
	},
[346] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20091,
		soundID = nil,
		txt = "Ԭĳ�����ַ�����֮�ģ��ʲű������ܡ����Ŷ�׿��ǲ�����´󽫶���ǰ�����Ԭĳ���d�룬����Ӣ��ɱ��׷��������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1123}},
					},
			}
		},
	},
[347] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20094,
		soundID = nil,
		txt = "Ԭ�����ܣ������̫ʦ֮��ǰ��׽�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 348}},
					},
			}
		},
	},
[348] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ڴˣ��������붯Ԭ��һ����ë��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 137,mapID = 106}},
				},
			}
		},
	},
[349] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20095,
		soundID = nil,
		txt = "Ԭ�ܣ������������ܣ��������־��ܣ��һ����ڶ�̫ʦ��ǰ�������Լ��䣬����һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 350}},
					},
			}
		},
	},
[350] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20091,
		soundID = nil,
		txt = "����������죬��Ԭ�ܺ����Ĳ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 138,mapID = 106}},
				},
			}
		},
	},
[351] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20091,
		soundID = nil,
		txt = "��лӢ�ۣ���Ҫ��������Ⱥ���ֶ����ұ����ӳ��d���Ӫ��������ζ�׿�ɳ�ͬ��ܶ���ǰ�������d��س��ڣ�����Ӣ�ۻ��˶����������뿪�d���Ӫ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1123}},
				    {action = DialogActionType.Goto, param = {dialogID = 352}},
			},
			}
		},
	},
[352] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "Ԭ�������ģ��ұػ�ƽ����������d���Ӫ�ģ�������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1124}},
					},
			}
		},
	},
[353] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20097,
		soundID = nil,
		txt = "վס�������Ǻ��ˣ���������d���Ӫ�����صأ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 354}},
					},
			}
		},
	},
[354] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ҷ���Ҫ���˹أ���������ÿ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 140,mapID = 106}},
				},
			}
		},
	},
[355] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20096,
		soundID = nil,
		txt = "Ԭ�ܣ����������ʱ�ˣ���̫ʦ����������Ҫ׽�㣬���ձ����������ȥ���ͣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 356}},
					},
			}
		},
	},
[356] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ڴˣ������㶯Ԭ�����ֺ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 139,mapID = 106}},
				},
			}
		},
	},
[357] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20091,
		soundID = nil,
		txt = "�d����ѹ���ǰ��������Ԭ�ҵ��̣���׿�������κ�Ԭĳ����лӢ��һ·���ͣ�Ԭĳ�˷���ȥ����Ȼ��������Ⱥ�ۣ������ֶ����죡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1124}},
				    {action = DialogActionType.Goto, param = {dialogID = 358}},
			},
			}
		},
	},
[358] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��Ԭ������ӱ����ˣ�����㷵��������Ѱ¬ֲ���˸�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1125}},
					},
			}
		},
	},
[359] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "¬���ˣ����ѽ�Ԭ�ܻ��ͳ��d���Ӫ���������㽫��������Ⱥ�۹��������ַ���׿��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1125}},
				    {action = DialogActionType.Goto, param = {dialogID = 1001}},
			},
			}
		},
	},
[360] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20027,
		soundID = nil,
		txt = "Ӣ��������һ�����������������ŷ�������ǰ����¹�ַ��Žǣ�Ӣ�ۿ���ȥ��¹�������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1035}},
					},
			}
		},
	},
[361] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20027,
		soundID = nil,
		txt = "Ӣ��������һ�����������������ŷ�������ǰ����¹�ַ��Žǣ�Ӣ�ۿ���ȥ��¹�������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1041}},
					},
			}
		},
	},
[362] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20027,
		soundID = nil,
		txt = "Ӣ��������һ�����������������ŷ�������ǰ����¹�ַ��Žǣ�Ӣ�ۿ���ȥ��¹�������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1046}},
					},
			}
		},
	},
[363] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20027,
		soundID = nil,
		txt = "Ӣ��������һ�����������������ŷ�������ǰ����¹�ַ��Žǣ�Ӣ�ۿ���ȥ��¹�������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1051}},
					},
			}
		},
	},
[364] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20027,
		soundID = nil,
		txt = "Ӣ��������һ�����������������ŷ�������ǰ����¹�ַ��Žǣ�Ӣ�ۿ���ȥ��¹�������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1056}},
					},
			}
		},
	},
[365] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20027,
		soundID = nil,
		txt = "Ӣ��������һ�����������������ŷ�������ǰ����¹�ַ��Žǣ�Ӣ�ۿ���ȥ��¹�������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1061}},
					},
			}
		},
	},
[366] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ǬԪ�����ӣ��ط�Ϊʦ̫������֮��ǰ�������������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1035}},
				    {action = DialogActionType.Goto, param = {dialogID = 205}},
			},
			}
		},
	},
[367] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������Դ�����ӣ��ط�Ϊʦ������ʦ֮��ǰ�������������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1041}},
				    {action = DialogActionType.Goto, param = {dialogID = 205}},
			},
			}
		},
	},
[368] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���˽�ϼɽ���ӣ��ط�Ϊʦ������֮��ǰ�������������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1046}},
				    {action = DialogActionType.Goto, param = {dialogID = 205}},
			},
			}
		},
	},
[369] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������������ӣ��ط�Ϊʦ�Ϻ���Ů֮��ǰ�������������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1051}},
				    {action = DialogActionType.Goto, param = {dialogID = 205}},
			},
			}
		},
	},
[370] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���������ŵ��ӣ��ط�Ϊʦ���컯֮��ǰ�������������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1056}},
				    {action = DialogActionType.Goto, param = {dialogID = 205}},
			},
			}
		},
	},
[371] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������������ӣ��ط�Ϊʦ��������֮��ǰ�������������ַ��Žǡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1061}},
				    {action = DialogActionType.Goto, param = {dialogID = 205}},
			},
			}
		},
	},
[372] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ѳɹ����������񽫣���֪��ʦ���кηԸ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1003}},
				    {action = DialogActionType.Goto, param = {dialogID = 118}},
			},
			}
		},
	},
[1001] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "Ԭ������ƽ��������ҪѰ����һλӢ�۲ܲ�������׿�ٿس�������ɱ��׿ʧ�ܣ������ɱ�׷ɱ���������ڶ���������Ӣ�ۻ���ǰ����������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1101}},
					},
			}
		},
	},
[1002] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20302,
		soundID = nil,
		txt = "Ӣ�۾��ң����˲ܲ�ͬ�飬���ұ��ܣ���֪���ܲ����ںδ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1003}},
					},
			}
		},
	},
[1003] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20305,
		soundID = nil,
		txt = "��׽��һ���ܲ�ͬ�û������һ��������һ����׽�˽��趭̫ʦ�빦��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 161,mapID = 107}},
				},
			}
		},
	},
[1004] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20302,
		soundID = nil,
		txt = "���˶�׿����ıʿ�¹���������ܲ�Ϊ�ˣ��ʱ�����׿����Ȳܲ������˵أ�ȴ������ɱɢ����δ���׷ɱ���ǵ��Ƕ�����������ֻҪ�ҵ����ˣ�����֪���ܽ������䣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1101}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1102}},
		    {action = DialogActionType.Goto, param = {dialogID = 1005}},
				},
			}
		},
	},
[1005] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������������Ҫ�ҵ���������̽���ܽ������䣡",
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
[1006] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20309,
		soundID = nil,
		txt = "վס�����Ⱦ���Ӫ�������ܲ٣��õ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1007}},
					},
			}
		},
	},
[1007] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܲ��ǲ����Ѿ������������У�����ʵ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 162,mapID = 107}},
				},
			}
		},
	},
[1008] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20309,
		soundID = nil,
		txt = "Ӣ���������ǲܲ��ѱ��Ҿ�ץס�ˣ����ͱ���Ѻ��ǰ����Ӫ��ɴ󽫶�Խ���أ�Ӣ��Ҫ�Ȳܲ٣�������Ӫ���Ƕ�Խ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1102}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1103}},
			},
			}
		},
	},
[1009] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܽ����ݻţ�����������㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1010}},
					},
			}
		},
	},
[1010] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20312,
		soundID = nil,
		txt = "����һ�������ģ�Ҳ�գ�������һ�����½��ɶ�̫ʦ���ã�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 163,mapID = 107}},
				},
			}
		},
	},
[1011] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܽ������Ҵ˷����㣬��������������֮������������Ⱥ�۹��ֶ�׿��Ӫ�����ӣ�������ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1103}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1104}},
		    {action = DialogActionType.Goto, param = {dialogID = 1012}},
				},
			}
		},
	},
[1012] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20313,
		soundID = nil,
		txt = "��ĳҲ���д��ģ��κ����������վ��������ӻ��ϼ���������л�������ֶ����졣��ȥ����������ؿ��ɶ����󽫳���פ�أ�·�Ͽ��»��ж�������������Ӣ�������뿪������",
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
[1013] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20313,
		soundID = nil,
		txt = "������ǰ�����Ƕ����ؿڣ�����ֻҪ��������ɱ�������뿪������",
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
[1014] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20317,
		soundID = nil,
		txt = "�ܲ٣��㾹�ұ��Ѷ�̫ʦ������˱����ĵ��̣�������������ȥ���ͣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1015}},
					},
			}
		},
	},
[1015] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ϻ���˵�������ÿ���·���пɻ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 164,mapID = 107}},
				},
			}
		},
	},
[1016] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20313,
		soundID = nil,
		txt = "�����ؿ��ѹ�����ĳ��ƽ�����£���лӢ��һ·���ͣ���ĳ�˷���ȥ��������̺��ٸ���Ⱥ�ۣ�����������׿��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1105}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1106}},
		    {action = DialogActionType.Goto, param = {dialogID = 1017}},
				},
			}
		},
	},
[1017] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܽ������ౣ�أ������з����Ͻ�����������",
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
[1018] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "Ԫʼ��ʦ�����ѳɹ�Ѱ��Ԭ�ܡ��ܲٶ��ˣ������������Ⱥ�ۣ����ֶ�׿��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1106}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1107}},
		    {action = DialogActionType.Goto, param = {dialogID = 1019}},
				},
			}
		},
	},
[1019] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20002,
		soundID = nil,
		txt = "���Ԭ�ܡ��ܲٶ����Ѻ�������ʮ��·������׿��Ȼ��׿�ýؽ���ħ����������ʮ��·���転�ι��⣬�粽���С��������½�ȥ�����������Ԭ�ܣ������ƵС�",
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
[1020] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "Ԭ�����������������絽����ʮ��·���ֶ�׿�����ط���ǰ�������ƵС�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1107}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1108}},
		    {action = DialogActionType.Goto, param = {dialogID = 1021}},
				},
			}
		},
	},
[1021] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20318,
		soundID = nil,
		txt = "���˾����Ƕ����Ѽ�����ս��ֻ���Ƕ�׿������һԱ�ͽ����ۣ�����򲻵�֮�£���ն�Ҿ���Ա�󽫡����ܲ����ʾ�ǰ���Ը����ۣ��ҿ�����ʧ������Ӣ��ǰȥ����һ��֮����",
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
[1022] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܽ������ҷ�Ԭ����֮�ǰ������Ը��Ƕ����ͽ����ۡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1108}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1109}},
		    {action = DialogActionType.Goto, param = {dialogID = 1023}},
				},
			}
		},
	},
[1023] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20313,
		soundID = nil,
		txt = "��ĳ������ս���ۣ�ȴ������̽����������һ�Գƹ����Ӣ�ۣ�������һ��ɱ�뻢�ιأ�����Ҫȡ������ͷ���ҵ��Ĵ�����ʧ������Ӣ��ǰ�����ι�Ѱ����������",
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
[1024] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����磬����������һ��֮����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1025}},
					},
			}
		},
	},
[1025] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20322,
		soundID = nil,
		txt = "�������ã���ĳ���뻢�ιأ�ȴ������������ס���������նɱ���ˣ���ȡ����������ͷ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 165,mapID = 109}},
				},
			}
		},
	},
[1026] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20322,
		soundID = nil,
		txt = "����ɱ��ʹ�죡�������ǰ����ɱ���ۣ�Ϊ�˾������׹���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1109}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1110}},
			},
			}
		},
	},
[1027] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20325,
		soundID = nil,
		txt = "�����ڴˣ��������������ģ�Ҳ�գ�������������������·��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1028}},
					},
			}
		},
	},
[1028] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ۣ��ݵò������ǽ��ձ���ȡ��������ͷ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 166,mapID = 109}},
				},
			}
		},
	},
[1029] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20322,
		soundID = nil,
		txt = "��ĳ�˷����Ǻ�����λ�ֵ��������ŷɷ�ͷ�ж�������λ�ֵ�����Ǳ�뻢�ι��ڣ����û�������֮��Ϯռ���ιأ�������ȥ���ι������ǻ�ϣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1110}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1111}},
			},
			}
		},
	},
[1030] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����磬�����ѱ�նɱ���������ң��β��ô�����ɱ�붭Ӫ����ռ���ιأ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1111}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1112}},
		    {action = DialogActionType.Goto, param = {dialogID = 1031}},
				},
			}
		},
	},
[1031] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20326,
		soundID = nil,
		txt = "���ܺ�С�ѹ�Ȼ�����湦һ��������ڻ��ι������صģ����Ƕ��������ɣ���������������ɱ���ɣ�Ϯռ���ιأ�",
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
[1032] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20331,
		soundID = nil,
		txt = "�����ڴˣ������һ��ι���Ұ�����ǻ�ò��ͷ��ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1033}},
					},
			}
		},
	},
[1033] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20326,
		soundID = nil,
		txt = "�������ɴ������ո�ǿ�����С��Ӧ����ֻҪ������ɣ����ιؾ����˾����ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 167,mapID = 109}},
				},
			}
		},
	},
[1034] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20331,
		soundID = nil,
		txt = "����ĳ��Ը�׹أ����Ƕ�׿�����������ڻ��ιض�ս�������˸����ͽ���Ҫ��ζԸ������Ϳ���λ�ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1035}},
					},
			}
		},
	},
[1035] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20326,
		soundID = nil,
		txt = "���������˳����µ�һ�ͽ����������ڴ��عأ������ֵ����˸�����Ǻá�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1036}},
					},
			}
		},
	},
[1036] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20327,
		soundID = nil,
		txt = "ʲô���µ�һ�����ֵ����˻��������ɣ��������ȥɱ����Ƭ�ײ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1112}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1113}},
			},
			}
		},
	},
[1037] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20335,
		soundID = nil,
		txt = "�����ڴˣ����˸���һս��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1038}},
					},
			}
		},
	},
[1038] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20327,
		soundID = nil,
		txt = "���ռ�ū���ߣ�����������ڴˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 168,mapID = 109}},
				},
			}
		},
	},
[1039] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20335,
		soundID = nil,
		txt = "���޵�һ��ħ����������ʹ�ù��������������������ҵ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1040}},
					},
			}
		},
	},
[1040] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20326,
		soundID = nil,
		txt = "���ã�������Ҳ������ħ�������С�ģ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 169,mapID = 109}},
				},
			}
		},
	},
[1041] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20326,
		soundID = nil,
		txt = "����������Ϊ���µ�һ�ͽ����������ֻ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1114}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1115}},
		    {action = DialogActionType.Goto, param = {dialogID = 1042}},
				},
			}
		},
	},
[1042] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20326,
		soundID = nil,
		txt = "����۷���������ӣ����ιز������ƣ�Ӣ�ۿ�ȥ����������ܲ١�",
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
[1043] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܽ�������������������Ҳ�Ѱ��ߣ����ιز������ƣ����뷢�����������в���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1115}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1116}},
		    {action = DialogActionType.Goto, param = {dialogID = 1044}},
				},
			}
		},
	},
[1044] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20313,
		soundID = nil,
		txt = "Ӣ�����ո�ǿ�������˾��ƹأ�ʵ�ڸм�������Ӣ�۷��ض�������֪�������ι����ƣ�������ʦ�������Ͷ�׿��ս��",
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
[1045] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�μ����������ι����ƣ���������������Ҳ���������������ֻ��ˣ����ܲܽ������У�ǰ�������ʱ�����������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1116}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1117}},
		    {action = DialogActionType.Goto, param = {dialogID = 1046}},
				},
			}
		},
	},
[1046] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20318,
		soundID = nil,
		txt = "û��Ӣ�۾�������˸����湦��Ԭĳ���㷢�������ʦ�������붭����һ��ս��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1047}},
					},
			}
		},
	},
[1047] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������㷵���Ͻ磬������ʦ������",
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
[1048] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�����ѳɹ����²ܲٽ�����Ҳ�����乥�ƻ��ιأ�����Ԭ�ܴ���Ѿ���ʦ���У����ֶ����ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1117}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1118}},
		    {action = DialogActionType.Goto, param = {dialogID = 1049}},
				},
			}
		},
	},
[1049] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20002,
		soundID = nil,
		txt = "������֪�����£����������Ϊ��δ�ﵽһ���߶ȣ��в���մմ��ϲ������㻹���ǿ����������������ʮ���������Ұɣ�",
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
[1050] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ�棬�����Ѿ������ɹ�����ָʾ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1118}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1151}},
		    {action = DialogActionType.Goto, param = {dialogID = 1101}},
				},
			}
		},
	},
[1051] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20314,
		soundID = nil,
		txt = "�ܲ����ߣ������ץ���ȥ�빦��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 170,mapID = 109}},
				},
			}
		},
	},
[1052] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20315,
		soundID = nil,
		txt = "�ܲ٣��㻹�����ӳ��������Ҷ�׽���ȥ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 171,mapID = 109}},
				},
			}
		},
	},
[1053] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20316,
		soundID = nil,
		txt = "�ܲ٣����ٽ�һ����ɱ���⣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 172,mapID = 109}},
				},
			}
		},
	},
[1101] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20002,
		soundID = nil,
		txt = "��������ܣ�����׿��Ȼ�ƴ���񷥶��������һӢ����������˶�׿������������أ����˹�ϵ���պ���������֮���ƣ�������ʧ�������½������ش�ȴ��ˣ�����������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1151}},
					},
			}
		},
	},
[1102] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20601,
		soundID = nil,
		txt = "�����ô������صأ��к�ͼı��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1103}},
					},
			}
		},
	},
[1103] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��Ὣ�����ںδ�����������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 175,mapID = 110}},
				},
			}
		},
	},
[1105] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20601,
		soundID = nil,
		txt = "Ӣ�����������������ѱ��Ҿ����ܣ����������Ѻ�ͣ�����ǰ����Զ����",
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
[1106] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ͣ�£�������ｫ�����ұ�����һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1107}},
					},
			}
		},
	},
[1107] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20602,
		soundID = nil,
		txt = "�ô�Ŀ������ҵ�Ҫ�������м��ֱ��£�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 176,mapID = 110}},
				},
			}
		},
	},
[1108] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ｫ���������ˣ����ԣ��㲻���ｫ�������Ǻ��ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1152}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1153}},
		    {action = DialogActionType.Goto, param = {dialogID = 1109}},
				},
			}
		},
	},
[1109] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20606,
		soundID = nil,
		txt = "������ï���˽������£������ｫ��ֻΪ����׷����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1110}},
					},
			}
		},
	},
[1111] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20606,
		soundID = nil,
		txt = "�������ҷ�ͷͻΧ����֪�Ƿ�ͻΧ�ɹ�����Ҫ����Ӣ��ǰ����ȣ��м�������",
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
[1112] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ǿ�����ｫ�����ұ������ǲ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1113}},
					},
			}
		},
	},
[1113] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20605,
		soundID = nil,
		txt = "�������Ļƿ�С�������Ҵ��Բ��ѣ������ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 177,mapID = 110}},
				},
			}
		},
	},
[1114] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20625,
		soundID = nil,
		txt = "��лӢ�۾���֮������ĳ�м�������Ӣ�ۣ���ĳ������Ա�����Ρ��⾰������ǰ���������������´��ܺ�Ѻ�ͣ�����Ӣ����ǰ����ȡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1154}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1155}},
		    {action = DialogActionType.Goto, param = {dialogID = 1116}},
				},
			}
		},
	},
[1116] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ｫ���������ڴ�ЪϢ�������ȥ���¶�λ������",
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
[1117] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20609,
		soundID = nil,
		txt = "�ƿ�С����û�뵽�㾹�����������˵أ��Ǿͱ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1118}},
					},
			}
		},
	},
[1118] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ڳ����ԣ���Ҫ�ҵ������Ϳ�����û����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 178,mapID = 110}},
				},
			}
		},
	},
[1119] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20607,
		soundID = nil,
		txt = "��лӢ�۾ȳ����ǣ�������ȥ�ظ��ｫ����",
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
[1121] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20625,
		soundID = nil,
		txt = "Ӣ��������֪�������پ���ƾ�ն�����ħ��ħ������������������ʮ�����Σ�������ǲ�Ƹǽ���ǰ��̽�飬�����δ�飬Ӣ�ۿɷ����̽Ѱһ������ĳ�м�������",
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
[1122] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20610,
		soundID = nil,
		txt = "�����ڴ��ε�������������ȥ���Ѳ��������Ѿ�̽�ӡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1123}},
					},
			}
		},
	},
[1123] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ƽ����޼���Ѱ������Լ������������Ǿ����°ɡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 179,mapID = 110}},
				},
			}
		},
	},
[1124] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���������Ƹǽ��������䣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1125}},
					},
			}
		},
	},
[1125] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20610,
		soundID = nil,
		txt = "Ӣ���������ƽ������Ҿ����ܣ�����Ѻ�ڱ�����Ӫ�������˽�����Ѻ��",
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
[1126] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20612,
		soundID = nil,
		txt = "���ߺ��ˣ������ô��������صأ���֪����ô��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1127}},
					},
			}
		},
	},
[1127] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ݵò��񣬿�������������ںδ����ٽ�������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 180,mapID = 110}},
				},
			}
		},
	},
[1128] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���������ڳ����ˣ����ٷ��˻Ƹǽ������ұ����㲻����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1129}},
					},
			}
		},
	},
[1129] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20613,
		soundID = nil,
		txt = "�����ҷ��˻Ƹǣ��Ϳ�����û����������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 181,mapID = 110}},
				},
			}
		},
	},
[1130] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ƽ�����������Ὣ��֮�У��������㡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1158}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1159}},
		    {action = DialogActionType.Goto, param = {dialogID = 1131}},
				},
			}
		},
	},
[1131] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20626,
		soundID = nil,
		txt = "��лӢ�۾���֮�����������ղ�̽����Ӫ��ħ�����������Ϸ���Ӣ�ۿ�ǰ��һ̽������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1133}},
					},
			}
		},
	},
[1133] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ǰȥ��̽����������ȥ���ｫ����ϡ�",
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
[1137] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20615,
		soundID = nil,
		txt = "�Ҿ��е�ħ��ħ�������Դ˴����Ϸ���һ�����������Ŷ�׿��ǲ�����´��ź���������",
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
[1138] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20617,
		soundID = nil,
		txt = "�����źᣬ���ߺ��ˣ��ô�������ɱ���⣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1139}},
					},
			}
		},
	},
[1139] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ҽ���ƫҪ��̽���������������ÿ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 183,mapID = 110}},
				},
			}
		},
	},
[1140] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20640,
		soundID = nil,
		txt = "Ӣ��������̫ʦ�����ڴ˰�������ڣ�Ϊ����������������ħ��ħ�����Ǵ�����֮�в����ġ�",
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
[1142] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20619,
		soundID = nil,
		txt = "�����ô����󣬼�Ȼ���ˣ����������е�һֻ�»�ɡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1160}},
				    {action = DialogActionType.Goto, param = {dialogID = 1143}},
			},
			}
		},
	},
[1143] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������������ݵò��񣬿��ҽ��վ��������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 184,mapID = 111}},
				},
			}
		},
	},
[1144] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20639,
		soundID = nil,
		txt = "����������֪С��������Ϸ����̫���˰ɣ��Ϸ��˲���֮���������ҺΣ������ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1145}},
					},
			}
		},
	},
[1145] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ã��������������ɱ�����ܸ��������ս���������ȳ���Ѱ�ҽ���취������������Ϊ����˹��죬ɱҲɱ�������������Ǻã��������ǵ�ȥ������ʦ������ô���£�",
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
[1146] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�������½緢��һ��������������һ�������ˣ��ͷ�ħ���к����գ�����ǰȥ��֮��սһ����ȴ�޷�ɱ�������ˣ�������ʦ��֪�������ɱ�����ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1161}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1162}},
		    {action = DialogActionType.Goto, param = {dialogID = 1147}},
				},
			}
		},
	},
[1147] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20002,
		soundID = nil,
		txt = "��������֪��������ǰȥѰ�ұ�����������ͯ�ӣ������֪�������ɱ�����ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1148}},
					},
			}
		},
	},
[1148] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��л���������ȥ��",
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
[1149] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ͯ�ӣ��ҷ�����֮�����������ֽ̣��Ҹ����ɱ�����������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1150}},
					},
			}
		},
	},
[1150] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "�����������ϹŽؽ����ˣ��䷨����ǿ�������ܲ���������ɱ�Ĺ����������Ļ��󣬶����������йŹ֡�������һ����������ƴ��󣬵����鷨��ȱʧ����Ҫ���䷨��������ǰȥ�ռ��������֦���������»�����޵Ļ��ǣ�����������飬�����ƴ�������ɱ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1163}},
					},
			}
		},
	},
[1151] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��лͯ��ָ����������½硣������������֦�����d��һ����û����ȥ�d�������ҿ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1163}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1164}},
			},
			}
		},
	},
[1153] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20620,
		soundID = nil,
		txt = "û�뵽���������������������ҾͲ����������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1154}},
					},
			}
		},
	},
[1154] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��Ҫ�ҵ������Ǿ͵ÿ�����û�����ʵ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 185,mapID = 106}},
				},
			}
		},
	},
[1155] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�˽�������������ɷ��û�뵽��ô����һ��������������õ�����ǰȥѰ�ҽ�֦����˵�˽�֦���Ի��Σ��Ϳ�ľ�������֣���������ϸ���ҡ�",
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
[1159] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����֦��Ȼ�����������������ɱ��������������ȥ�һ�������Ż���ڶ���һ���������߾Ͷ���ǰ��Ѱ�ң�",
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
[1160] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20622,
		soundID = nil,
		txt = "���ߺ��ˣ��˵������ҵĵ��̣��㾹���ô��˵أ���Ҫ������!",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1161}},
					},
			}
		},
	},
[1161] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������к����գ��ð��������������վͽ���ն�ף�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 187,mapID = 107}},
				},
			}
		},
	},
[1162] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ѱ���ɱ����ʣ���һ����»�ˣ�����»Ӧ�ö���ڻ��ι�����ǰȥѰ�ҡ�",
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
[1163] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��»�������ҵ����ˣ�����񴦴�Ϊ�����ң����վ�Ҫ������ɱ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1164}},
					},
			}
		},
	},
[1164] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20623,
		soundID = nil,
		txt = "��Ҫ��ɱ�ң��Ǿ͵ÿ�����û��������£�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 188,mapID = 109}},
				},
			}
		},
	},
[1165] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��»�ѱ���ɱ�������Ҳ���ռ�������ĸ����޻��Ƕ����ռ���ɣ��Ͻ���ȥ������ͯ�ӣ���������飬��ɱ������",
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
[1167] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "���ĺܺã��������������飬����նɱ����������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1168}},
					},
			}
		},
	},
[1168] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20003,
		soundID = nil,
		txt = "�������������ɣ�������������������ʹ�ã�������Ƴ�����Ч�������������ǰ�����أ�Ϊ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1169}},
					},
			}
		},
	},
[1169] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��лͯ�ӣ��������ȥ����նɱ����������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1168}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1169}},
			},
			}
		},
	},
[1173] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����������������ʲô����������ͷ�ˣ���������Ƴ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1169}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1170}},
		    {action = DialogActionType.Goto, param = {dialogID = 1174}},
				},
			}
		},
	},
[1174] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20624,
		soundID = nil,
		txt = "��Ȼ������飡û�뵽��Ͳ��̻��й�ϵ����������Ϊ���ܴ���ҵ�����ô�����ǰ������Σ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1175}},
					},
			}
		},
	},
[1175] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ϻ���˵�������ұؽ�����ɱ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 189,mapID = 111}},
				},
			}
		},
	},
[1176] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���������ѱ���ɱ���������ħ�����֣�ǰȥ������Ϣ���߻Ƹǽ�����",
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
[1178] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20626,
		soundID = nil,
		txt = "��лӢ�����������Ҿ���ͷ�󻼡������ȥ���پ��ӣ�ȡ�����ٹ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1171}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1172}},
		    {action = DialogActionType.Goto, param = {dialogID = 1179}},
				},
			}
		},
	},
[1179] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ƽ��������Ҵ��콫ʿ���������񣬿���ȥɱ�������١�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1180}},
					},
			}
		},
	},
[1180] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20626,
		soundID = nil,
		txt = "Ӣ�����ո�ǿ������նɱ�����٣�����Ӣ�ۣ�����С�ġ�",
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
[1181] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������������վ���������ڣ�������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1182}},
					},
			}
		},
	},
[1182] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20605,
		soundID = nil,
		txt = "ԭ������������ƿ�С�����ڳ����ԣ���Ҫ�ҵ������Ϳ�����û��������£�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 190,mapID = 110}},
				},
			}
		},
	},
[1183] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20626,
		soundID = nil,
		txt = "Ӣ��ս����Σ������١�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1184}},
					},
			}
		},
	},
[1184] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ĻƸǽ�����һ��˳�����������Ѿ�����նɱ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1173}},
				    {action = DialogActionType.Goto, param = {dialogID = 1185}},
			},
			}
		},
	},
[1185] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20626,
		soundID = nil,
		txt = "�ã���������ȻӢ�۳����꣬�ǻ���Ӣ��ǰ����������̫��¬ֲ����������پ��ӡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1186}},
					},
			}
		},
	},
[1186] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ã��ƽ�����������һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1174}},
					},
			}
		},
	},
[1187] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����̫�أ���Ὣ���ѱ����£�ͬ�еĻ��лƸ������⾰����λ�����������Ѿ����ơ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1174}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1200}},
		    {action = DialogActionType.Goto, param = {dialogID = 1200}},
				},
			}
		},
	},
[1200] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "�񶭾���ܣ�����׿�Ѳ��䣬��֪���٣������ҳ������֮�أ����䳹�ײ�����˾ͽ���ʱ�����Ͷ��������ʵ�˺�������֮�������־�ס�ڳ������ڣ����ȥ����������׿���䡣",
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
[1201] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ˣ���Ϊ��׿����������������˺����������ɷ񽫶�׿�����֪���ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1200}},
				    {action = DialogActionType.Goto, param = {dialogID = 1202}},
			},
			}
		},
	},
[1202] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20701,
		soundID = nil,
		txt = "��׿�ϼ�޻�������Ŀǰ�Ƕ�׿�������Ƶĵ��̣��������ŵ��ڶ���ߣ�������ȥ���������������������ҵ����࣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1201}},
					},
			}
		},
	},
[1203] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20704,
		soundID = nil,
		txt = "�����ô��������к��£�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1204}},
					},
			}
		},
	},
[1204] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ⶭ׿���߹���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 200,mapID = 13}},
				},
			}
		},
	},
[1205] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20701,
		soundID = nil,
		txt = "�����ѳ������Ǵ�����ģ��������໹�Ƕ��������䱸��������ȥ���Ϸ�ɱ����׿�������ѣ������Ա���������ġ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1201}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1202}},
			},
			}
		},
	},
[1206] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20720,
		soundID = nil,
		txt = "�������Ļ�С�ӣ��ҵ�����ү�ĵ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1207}},
					},
			}
		},
	},
[1207] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ѣ��ҽ����Ҫȡ��Ĺ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 201,mapID = 13}},
				},
			}
		},
	},
[1208] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20701,
		soundID = nil,
		txt = "Ӣ�ۺõ����������������Ȼ��֪��׿����ȥ��������ǲ��Ů����Ǳ���ڶ�׿�����Ϊ��Ӧ��������ѻ�׿���ţ��������d�룬���ǰȥѰ��������׿����Ϣ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1202}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1203}},
			},
			}
		},
	},
[1209] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������ҷ����常����֮����˴�̽��׿���䣬��Ϊ���³���,�������֪���ҡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1203}},
				    {action = DialogActionType.Goto, param = {dialogID = 1210}},
			},
			}
		},
	},
[1210] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20702,
		soundID = nil,
		txt = "��Ҳ��֪��׿������ںδ����������ѳɹ���䶭׿�������������Ĺ�ϵ��ʹ�����Զ�׿�������ġ��ҽ���ԭ������Լ�����d��˽�ۣ��κ��ұ���׿�����n�������޷�������Ӣ������նɱ�n����ǰȥ�������������֪����׿���䡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1204}},
				    {action = DialogActionType.Goto, param = {dialogID = 1211}},
			},
			}
		},
	},
[1211] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20703,
		soundID = nil,
		txt = "��������̫ʦ���㲻����Ϊ�������Ҫ�ʹ˷�������˽�ӣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1212}},
					},
			}
		},
	},
[1212] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��׿����ݱ�����£������������룬�����ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 202,mapID = 106}},
				},
			}
		},
	},
[1213] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����������n���ѳ�����ɰ��Ļ�������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1204}},
					},
			}
		},
	},
[1214] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20702,
		soundID = nil,
		txt = "��������������������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1205}},
				    {action = DialogActionType.Goto, param = {dialogID = 1215}},
			},
			}
		},
	},
[1215] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20707,
		soundID = nil,
		txt = "���Ǻ��ˣ��������ű��������������������ʰ�㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1216}},
					},
			}
		},
	},
[1216] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����С�ģ������ƺ����ǲ��壬�ϲ��������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 203,mapID = 106}},
				},
			}
		},
	},
[1217] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20702,
		soundID = nil,
		txt = "����������ǿ��ң����Ҷ��ϲ������ˣ����������ݺ������Ǿ�ʧ��������ȥ���������常����Ѱ�ҽⶾ֮������ȥ�����������ټ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1205}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1206}},
			},
			}
		},
	},
[1218] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����������ħ�����ģ�����������û��ʲôüĿ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1206}},
				    {action = DialogActionType.Goto, param = {dialogID = 2019}},
			},
			}
		},
	},
[1219] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20701,
		soundID = nil,
		txt = "�һ����Ƕ�׿��������������ʲô�ֽš���׿���ĸ�����������ڳ������ڣ��Ӵ������ϻ�����Ե�֪��Ϣ��",
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
[1236] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20708,
		soundID = nil,
		txt = "���Ǻ��ˣ���Ȼ�ô���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1237}},
					},
			}
		},
	},
[1237] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��˵����׿�������ںη���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 204,mapID = 13}},
				},
			}
		},
	},
[1238] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20752,
		soundID = nil,
		txt = "��ʵ��׿һֱ�������Ĵ滳�ɣ��������µĴ󽫲�����ʵ���Ƕ�׿������������ߵļ�ϸ���Ӳ��Դ�����֪��ԭ�򣬲��������ڳ�������ȥѰ���ɡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1207}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1208}},
			},
			}
		},
	},
[1239] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20710,
		soundID = nil,
		txt = "˭�˴��Ҿ�Ӫ�����¶�̫ʦ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1240}},
					},
			}
		},
	},
[1240] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ԣ���������Ϊ�����Ǿ�ʧ���ǲ������ڱ��󵷵Ĺ�����������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 205,mapID = 13}},
				},
			}
		},
	},
[1241] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20731,
		soundID = nil,
		txt = "Ӣ����������ʵ��׿���Ѳ����������������֮�£�ǰЩ���Ӷ�׿��һ��������ʤ����һ��ҩ��ǰ��Ѱ������������������ʳ���¶�����������ڳ�����δ�뿪��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1208}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1209}},
			},
			}
		},
	},
[1242] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʤ����������������ʳ���¶���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1243}},
					},
			}
		},
	},
[1243] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20709,
		soundID = nil,
		txt = "��������Σ��������Ͼ͸�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1244}},
					},
			}
		},
	},
[1244] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ͷ���ڹ�磬���ٵ���ʵ�飡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 206,mapID = 13}},
				},
			}
		},
	},
[1245] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20730,
		soundID = nil,
		txt = "������ʳ�������µ��Ϲ�ħ���������Ǿ�ʧ����ɱ���ԣ�ֻ�������ڶ�׿һ�ˣ���ħ���˽ؽ̽������ͣ������ޱȣ�������ֻ����ҩ�ɽ⡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1209}},
				    {action = DialogActionType.Gotos, param = {dialogIDs = {1287,1288,1289,1290,1291,1292}}},
					},
			}
		},
	},
[1246] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ������������񱻶�׿�Խؽ��Ϲ�ħ��������������Ǿ�ʧ����֪ʦ�����а취�ܽ�˶���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1210}},
				    {action = DialogActionType.Goto, param = {dialogID = 1252}},
			},
			}
		},
	},
[1247] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ������������񱻶�׿�Խؽ��Ϲ�ħ��������������Ǿ�ʧ����֪ʦ�����а취�ܽ�˶���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1211}},
				    {action = DialogActionType.Goto, param = {dialogID = 1253}},
			},
			}
		},
	},
[1248] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ������������񱻶�׿�Խؽ��Ϲ�ħ��������������Ǿ�ʧ����֪ʦ�����а취�ܽ�˶���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1212}},
				    {action = DialogActionType.Goto, param = {dialogID = 1254}},
			},
			}
		},
	},
[1249] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ������������񱻶�׿�Խؽ��Ϲ�ħ��������������Ǿ�ʧ����֪ʦ�����а취�ܽ�˶���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1213}},
				    {action = DialogActionType.Goto, param = {dialogID = 1255}},
			},
			}
		},
	},
[1250] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ������������񱻶�׿�Խؽ��Ϲ�ħ��������������Ǿ�ʧ����֪ʦ�����а취�ܽ�˶���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1214}},
				    {action = DialogActionType.Goto, param = {dialogID = 1256}},
			},
			}
		},
	},
[1251] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ������������񱻶�׿�Խؽ��Ϲ�ħ��������������Ǿ�ʧ����֪ʦ�����а취�ܽ�˶���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1215}},
				    {action = DialogActionType.Goto, param = {dialogID = 1257}},
			},
			}
		},
	},
[1252] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20004,
		soundID = nil,
		txt = "�ǽؽ�ħ����һ���˿ɽ⣬�Ҳ��̽��ɴȺ�����ǰ����ͨ��ҩ֮���������а취�ɽ�����֮�����㼴��ǰ��������ɽѰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1216}},
					},
			}
		},
	},
[1253] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20005,
		soundID = nil,
		txt = "�ǽؽ�ħ����һ���˿ɽ⣬�Ҳ��̽��ɴȺ�����ǰ����ͨ��ҩ֮���������а취�ɽ�����֮�����㼴��ǰ��������ɽѰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1226}},
					},
			}
		},
	},
[1254] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20006,
		soundID = nil,
		txt = "�ǽؽ�ħ����һ���˿ɽ⣬�Ҳ��̽��ɴȺ�����ǰ����ͨ��ҩ֮���������а취�ɽ�����֮�����㼴��ǰ��������ɽѰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1227}},
					},
			}
		},
	},
[1255] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20007,
		soundID = nil,
		txt = "�ǽؽ�ħ����һ���˿ɽ⣬�Ҳ��̽��ɴȺ�����ǰ����ͨ��ҩ֮���������а취�ɽ�����֮�����㼴��ǰ��������ɽѰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1228}},
					},
			}
		},
	},
[1256] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20008,
		soundID = nil,
		txt = "�ǽؽ�ħ����һ���˿ɽ⣬�Ҳ��̽��ɴȺ�����ǰ����ͨ��ҩ֮���������а취�ɽ�����֮�����㼴��ǰ��������ɽѰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1229}},
					},
			}
		},
	},
[1257] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20009,
		soundID = nil,
		txt = "�ǽؽ�ħ����һ���˿ɽ⣬�Ҳ��̽��ɴȺ�����ǰ����ͨ��ҩ֮���������а취�ɽ�����֮�����㼴��ǰ��������ɽѰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1230}},
					},
			}
		},
	},
[1258] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ⱥ�ǰ�������������нؽ��Ϲ�ħ���������޷��ɽ⣬����ǰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1216}},
				    {action = DialogActionType.Goto, param = {dialogID = 1259}},
			},
			}
		},
	},
[1293] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ⱥ�ǰ�������������нؽ��Ϲ�ħ���������޷��ɽ⣬����ǰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1226}},
				    {action = DialogActionType.Goto, param = {dialogID = 1259}},
			},
			}
		},
	},
[1294] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ⱥ�ǰ�������������нؽ��Ϲ�ħ���������޷��ɽ⣬����ǰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1227}},
				    {action = DialogActionType.Goto, param = {dialogID = 1259}},
			},
			}
		},
	},
[1295] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ⱥ�ǰ�������������нؽ��Ϲ�ħ���������޷��ɽ⣬����ǰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1228}},
				    {action = DialogActionType.Goto, param = {dialogID = 1259}},
			},
			}
		},
	},
[1296] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ⱥ�ǰ�������������нؽ��Ϲ�ħ���������޷��ɽ⣬����ǰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1229}},
				    {action = DialogActionType.Goto, param = {dialogID = 1259}},
			},
			}
		},
	},
[1297] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ⱥ�ǰ�������������нؽ��Ϲ�ħ���������޷��ɽ⣬����ǰ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1230}},
				    {action = DialogActionType.Goto, param = {dialogID = 1259}},
			},
			}
		},
	},
[1259] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20711,
		soundID = nil,
		txt = "Ҫ���ǽؽ��Ϲ�ħ������������һζҩ�ģ���ɽѩ���������ǰ���½磬����ɽ��̽��ɽѩ�������䣬ȡ�����ң��������нⶾ֮����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1217}},
					},
			}
		},
	},
[1293] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20714,
		soundID = nil,
		txt = "Ӣ����������������ɽһ��С����������ɽ���治�Ͼ�����ħ׷������������·���ӣ�����Ӣ���ܾ���������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1217}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1218}},
			},
			}
		},
	},
[1260] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20712,
		soundID = nil,
		txt = "��������ȥ·�������˿���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1261}},
					},
			}
		},
	},
[1261] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����Ҿ���������ֻ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 207,mapID = 115}},
				},
			}
		},
	},
[1262] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20714,
		soundID = nil,
		txt = "���˵ľ���֮����С��û���������������к����󾡹��ᣡ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1263}},
					},
			}
		},
	},
[1263] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����������У����˴�Ѱ����ɽѩ��������֪������ɷ��֪��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1218}},
				    {action = DialogActionType.Goto, param = {dialogID = 1264}},
			},
			}
		},
	},
[1264] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20714,
		soundID = nil,
		txt = "��ɽѩ��������ɽ���棬��һλ��ħ���꿴���ţ����˿�ȥѰ�ҡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1219}},
					},
			}
		},
	},
[1265] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20713,
		soundID = nil,
		txt = "��ƾ��Ҳ����ɽѩ�������⣬���ǲ�֪���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1266}},
					},
			}
		},
	},
[1266] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ô�Ŀ����������������ʵ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 208,mapID = 115}},
				},
			}
		},
	},
[1267] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20764,
		soundID = nil,
		txt = "����ǰǼ��һ���ж���ո���˴����Ҳ���ѩ�������ˣ�Ӣ�ۿ�����ȥѰ�ҡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1219}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1220}},
			},
			}
		},
	},
[1268] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20715,
		soundID = nil,
		txt = "Ǽ���峤����ո��ڴˣ������ô�Ǽ����أ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1269}},
					},
			}
		},
	},
[1269] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ո꣬��ʵ������ɽѩ�������������У�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 209,mapID = 115}},
				},
			}
		},
	},
[1270] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20733,
		soundID = nil,
		txt = "��ɽѩ�����ѽ���������ɽ��ǧ��������Ӱħ�ԣ���Ӱħ�Գ���ɧ��Ǽ�����ˣ�ϣ�����˱����Ի�������ƽ������Ӱħ���������������ޣ����޺����ޣ���������ɱ�����µ��������ޣ��������ػ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1220}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1221}},
			},
			}
		},
	},
[1271] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20716,
		soundID = nil,
		txt = "���ˣ������ô����أ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1272}},
					},
			}
		},
	},
[1272] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��Ӱħ���ںδ����������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 210,mapID = 115}},
				},
			}
		},
	},
[1273] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20717,
		soundID = nil,
		txt = "Ҫ������������ȹ�������أ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 211,mapID = 115}},
				},
			}
		},
	},
[1274] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20734,
		soundID = nil,
		txt = "Ӣ���������ҼҴ�������ǰ����Ӣ�ۼ���ǰ���ɼ����Ҽ����ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1221}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1222}},
			},
			}
		},
	},
[1275] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20718,
		soundID = nil,
		txt = "���ˣ�������ɽ���ޣ�������ȡ��Ҳ̫���������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1276}},
					},
			}
		},
	},
[1276] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���֣��������������㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1277}},
				    {action = DialogActionType.Goto, param = {dialogID = 1277}},
			},
			}
		},
	},
[1277] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20718,
		soundID = nil,
		txt = "�Ǻǣ����У�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 212,mapID = 115}},
				},
			}
		},
	},
[1278] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20735,
		soundID = nil,
		txt = "û�뵽���侹���ܴ����ķ��ˣ�ѩ���ڴˣ���ȥ�ա�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1222}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1223}},
			},
			}
		},
	},
[1279] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ˣ���ɽѩ���ѽ����㣬�������ʩ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1280}},
					},
			}
		},
	},
[1280] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20711,
		soundID = nil,
		txt = "��ħ���Ѿ����ɣ���ȥ�½���������ã����ѵ�֪�����������ҵ���������ǰȥѰ�ҡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1223}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1224}},
			},
			}
		},
	},
[1281] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������������õ���ħ�𵤣����������������Σ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1282}},
					},
			}
		},
	},
[1282] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20702,
		soundID = nil,
		txt = "��������ħ���У��ҵ��������ٴӳ����顣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1224}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1225}},
			},
			}
		},
	},
[1283] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20707,
		soundID = nil,
		txt = "�����ڴˣ��󱲿ɸ�һս��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1284}},
					},
			}
		},
	},
[1284] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������㱻ħ�������в���֪�������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 213,mapID = 116}},
				},
			}
		},
	},
[1285] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ˣ��㱻��׿ħ�����������Ǿ�ʧ�����������������ħ�������¸о��ɺã�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1286}},
					},
			}
		},
	},
[1286] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20719,
		soundID = nil,
		txt = "��лӢ����ȣ�������֪��׿���䡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1225}},
				    {action = DialogActionType.Goto, param = {dialogID = 1301}},
			},
			}
		},
	},
[1301] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20801,
		soundID = nil,
		txt = "��ĳҲ��֪��׿���ںδ�����׿��һŮ����Ϊţ��������������פ�أ����˱ض�֪����׿���䣬���ȥѰ����̽��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1301}},
					},
			}
		},
	},
[1302] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20804,
		soundID = nil,
		txt = "���˶�̫ʦŮ��ţ����Ҳ��˭���ڴ���Ұ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1303}},
					},
			}
		},
	},
[1303] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ţ�������ٽ�����׿���˵����䣬�����㲻����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 220,mapID = 116}},
				},
			}
		},
	},
[1304] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��׿������ںδ���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1305}},
					},
			}
		},
	},
[1305] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20804,
		soundID = nil,
		txt = "��׿�������ĳ������ħ����ֻ�����ʦ�����֪���ڣ�������Ҳ�Ѷ�������������������һ���ĸ��������������פ�������������Ѱ���˴����������䡣",
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
[1306] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20809,
		soundID = nil,
		txt = "���ߺ��ˣ������ô��ҳ²�֮�أ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1307}},
					},
			}
		},
	},
[1307] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���飬���������ڣ��������ٵ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 221,mapID = 116}},
				},
			}
		},
	},
[1308] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��˵����������ںδ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1309}},
					},
			}
		},
	},
[1309] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20809,
		soundID = nil,
		txt = "�������Ͷ���ڳ������У������涭׿�ƿس�͢���ơ���������������ж�׿���´��������ر�פ�أ���λҪ�����壬���ȵöԸ���������",
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
[1310] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20812,
		soundID = nil,
		txt = "���˶�̫ʦ���´�������Ҳ���б����ڴˣ����ݶ����ڳ����Ƿ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1311}},
					},
			}
		},
	},
[1311] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������������Ƕ����ⳤ���ǵĳ��ֹ��У�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 222,mapID = 13}},
				},
			}
		},
	},
[1312] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���������������ǰ��Ѱ�����壡",
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
[1313] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20813,
		soundID = nil,
		txt = "�����ڴˣ����������Լ������������ݹ��Ҳ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1314}},
					},
			}
		},
	},
[1314] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���壬��׿����������ںδ����������������㲻����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 223,mapID = 13}},
				},
			}
		},
	},
[1315] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��׿������ںδ�����ʵ������������һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1304}},
				    {action = DialogActionType.Goto, param = {dialogID = 1316}},
			},
			}
		},
	},
[1316] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20813,
		soundID = nil,
		txt = "��׿������ɽ�������һ��ħ������������������ħ������ħ����������ڣ��ֱ�λ����ɽ�����ء��������ɶ�׿����갰ԡ����ᡢ��˳��Ա�����أ���ֻ��һ���������ġ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1305}},
					},
			}
		},
	},
[1317] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20816,
		soundID = nil,
		txt = "վס���˵ز�����������ĵط���������ȥ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1318}},
					},
			}
		},
	},
[1318] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ȥ���Ǿ͵ÿ�����û�����ʵ���ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 224,mapID = 115}},
				},
			}
		},
	},
[1319] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "갰��ѱ���ɱ���ף�ǰ���и��������ǲ��ǲ�����أ�ǰȥ�����£�",
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
[1320] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20817,
		soundID = nil,
		txt = "���ߺ��ˣ��˵����Ƕ������ô���ô��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1321}},
					},
			}
		},
	},
[1321] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��˵�����ǲ���ħ��������ڡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 225,mapID = 115}},
				},
			}
		},
	},
[1322] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "û�뵽����������Ǽٵģ���ȥ���ؿ�һ���ǲ�����ġ�",
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
[1323] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20818,
		soundID = nil,
		txt = "�����ڴˣ���ȴ������ر����صأ�������Ϊ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1324}},
					},
			}
		},
	},
[1324] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������Ѱħ������ڣ������ÿ����п�����һ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 226,mapID = 110}},
				},
			}
		},
	},
[1325] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ѱ���ɱ��ǰ�������������ˣ���֪�Ƿ�����ģ�ǰȥ��̽�¡�",
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
[1326] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20819,
		soundID = nil,
		txt = "û�뵽�������˴���������˾ͱ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1327}},
					},
			}
		},
	},
[1327] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ƾ���Ȼ���ȡ��������ͷ���������Σ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 227,mapID = 110}},
				},
			}
		},
	},
[1328] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "û�뵽���������Ҳ�Ǽٵģ���ʣ�����������ڣ��ǿ϶������������ˣ����ҵ�ǰȥ�鿴��",
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
[1329] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20820,
		soundID = nil,
		txt = "��˳�ڴˣ���Ȱ�㻹��������ȥ����ĳ�п�����һ�棬�����ô�����֮�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1330}},
					},
			}
		},
	},
[1330] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��˳����׿���Ƕ����ӯ�����ڽ��������в�֪���򣡻������Ͷ��������ǰȥ��ɱ��׿������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 228,mapID = 116}},
				},
			}
		},
	},
[1331] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������������׿�����ħ��������ǲ��Ǿ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1309}},
				    {action = DialogActionType.Gotos, param = {dialogIDs = {1332,1337,1342,1347,1352,1357}}},
					},
			}
		},
	},
[1334] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ�������ħ������ڱ�ħ��������ӡ���������Ĵ���ӡ���ܿ�����������ڡ����кν���취ô��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1310}},
				    {action = DialogActionType.Goto, param = {dialogID = 1335}},
			},
			}
		},
	},
[1335] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20004,
		soundID = nil,
		txt = "����Ϊʦ�������ϣ�����ȥ���ɽѰ�Ҳ��̽���ǰ����������������������ǰ����ͨ�Ƿ����϶��а취�����ӡ֮�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1311}},
					},
			}
		},
	},
[1336] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ʦ���ҷ�ʦ��ǰ����Ԯ��������ʦ�����ҽ��ħ��������ӡ��ħ������ڣ�������׿��������¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1311}},
				    {action = DialogActionType.Goto, param = {dialogID = 1362}},
			},
			}
		},
	},
[1339] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ�������ħ������ڱ�ħ��������ӡ���������Ĵ���ӡ���ܿ�����������ڡ����кν���취ô��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1312}},
				    {action = DialogActionType.Goto, param = {dialogID = 1340}},
			},
			}
		},
	},
[1340] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20005,
		soundID = nil,
		txt = "����Ϊʦ�������ϣ�����ȥ���ɽѰ�Ҳ��̽���ǰ����������������������ǰ����ͨ�Ƿ����϶��а취�����ӡ֮�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1313}},
					},
			}
		},
	},
[1341] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ʦ���ҷ�ʦ��ǰ����Ԯ��������ʦ�����ҽ��ħ��������ӡ��ħ������ڣ�������׿��������¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1313}},
				    {action = DialogActionType.Goto, param = {dialogID = 1362}},
			},
			}
		},
	},
[1344] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ�������ħ������ڱ�ħ��������ӡ���������Ĵ���ӡ���ܿ�����������ڡ����кν���취ô��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1314}},
				    {action = DialogActionType.Goto, param = {dialogID = 1345}},
			},
			}
		},
	},
[1345] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20006,
		soundID = nil,
		txt = "����Ϊʦ�������ϣ�����ȥ���ɽѰ�Ҳ��̽���ǰ����������������������ǰ����ͨ�Ƿ����϶��а취�����ӡ֮�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1315}},
					},
			}
		},
	},
[1346] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ʦ���ҷ�ʦ��ǰ����Ԯ��������ʦ�����ҽ��ħ��������ӡ��ħ������ڣ�������׿��������¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1315}},
				    {action = DialogActionType.Goto, param = {dialogID = 1362}},
			},
			}
		},
	},
[1349] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ�������ħ������ڱ�ħ��������ӡ���������Ĵ���ӡ���ܿ�����������ڡ����кν���취ô��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1316}},
				    {action = DialogActionType.Goto, param = {dialogID = 1350}},
			},
			}
		},
	},
[1350] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20007,
		soundID = nil,
		txt = "����Ϊʦ�������ϣ�����ȥ���ɽѰ�Ҳ��̽���ǰ����������������������ǰ����ͨ�Ƿ����϶��а취�����ӡ֮�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1317}},
					},
			}
		},
	},
[1351] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ʦ���ҷ�ʦ��ǰ����Ԯ��������ʦ�����ҽ��ħ��������ӡ��ħ������ڣ�������׿��������¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1317}},
				    {action = DialogActionType.Goto, param = {dialogID = 1362}},
			},
			}
		},
	},
[1354] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ�������ħ������ڱ�ħ��������ӡ���������Ĵ���ӡ���ܿ�����������ڡ����кν���취ô��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1318}},
				    {action = DialogActionType.Goto, param = {dialogID = 1355}},
			},
			}
		},
	},
[1355] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20008,
		soundID = nil,
		txt = "����Ϊʦ�������ϣ�����ȥ���ɽѰ�Ҳ��̽���ǰ����������������������ǰ����ͨ�Ƿ����϶��а취�����ӡ֮�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1319}},
					},
			}
		},
	},
[1356] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ʦ���ҷ�ʦ��ǰ����Ԯ��������ʦ�����ҽ��ħ��������ӡ��ħ������ڣ�������׿��������¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1319}},
				    {action = DialogActionType.Goto, param = {dialogID = 1362}},
			},
			}
		},
	},
[1359] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ�������ħ������ڱ�ħ��������ӡ���������Ĵ���ӡ���ܿ�����������ڡ����кν���취ô��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1320}},
				    {action = DialogActionType.Goto, param = {dialogID = 1360}},
			},
			}
		},
	},
[1360] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20009,
		soundID = nil,
		txt = "����Ϊʦ�������ϣ�����ȥ���ɽѰ�Ҳ��̽���ǰ����������������������ǰ����ͨ�Ƿ����϶��а취�����ӡ֮�¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1321}},
					},
			}
		},
	},
[1361] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ʦ���ҷ�ʦ��ǰ����Ԯ��������ʦ�����ҽ��ħ��������ӡ��ħ������ڣ�������׿��������¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1321}},
				    {action = DialogActionType.Goto, param = {dialogID = 1362}},
			},
			}
		},
	},
[1362] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20829,
		soundID = nil,
		txt = "Ҫ�ƽ�ħ������ڵķ�ӡ������Ҫ���ֲ��������ĵ��ط��������ֲ��Ϸֱ������ɽ�����Ѫ�ݡ��ڷ�ɽ��Ѫӧʯ�衢��ɽ������ɳ������֪�����������ɰ������ǰȥ��Ѱ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1322}},
				    {action = DialogActionType.Goto, param = {dialogID = 1363}},
			},
			}
		},
	},
[1363] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ǣ�������ʦ���������ǰȥѰ�ҡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1322}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1323}},
			},
			}
		},
	},
[1364] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20821,
		soundID = nil,
		txt = "���Ǻ��ˣ�Ϊ�����˲ɼ����ػ�����ݣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1365}},
					},
			}
		},
	},
[1365] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���Ƿ�������ʦ֮�����˲ɼ���Ѫ�ݣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1366}},
					},
			}
		},
	},
[1366] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20821,
		soundID = nil,
		txt = "ԭ����ˣ�������սʤ�ң���ݱ�����㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 229,mapID = 127}},
				},
			}
		},
	},
[1367] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��Ѫ�������õ��ˣ�ǰȥ�ڷ�ɽѰ��Ѫӧʯ��ɣ�",
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
[1368] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20822,
		soundID = nil,
		txt = "���ߺ��ˣ�Ϊ���ô��ҵ���أ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1369}},
					},
			}
		},
	},
[1369] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������Ϊ�����ң����˵ö���֮��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 230,mapID = 104}},
				},
			}
		},
	},
[1370] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "û�뵽��Ѫӧʯ����������������ϣ�����ȫ���ѹ���ǰ����ɽѰ�ҵ���������ѩ��ľ��",
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
[1371] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ôѩ��ľ�����ˣ�ȥ������ʦ��������ѩ��ľȥ���˰ɡ�",
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
[1372] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ʦ����ȥ��ɽ��ʱ����ѩ��ľ�����ˣ�����֪�����ںδ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1339}},
				    {action = DialogActionType.Goto, param = {dialogID = 1373}},
			},
			}
		},
	},
[1373] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20829,
		soundID = nil,
		txt = "������֪������ѩ��ľ���Ǿ���ǧ��������Ȼ�ɾ����ֶ��������֮�У�ѩ��ľ�ճɾ�����̰�棬��ǰȥ�����ϻ���ɽ����ֻ�������ϵ�һ��ѩ��ľ���У����ؽ���Ͼ�ɱ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1326}},
					},
			}
		},
	},
[1374] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���Ƿ�������ʦ�������ͻ���ɽ��Ҳϣ�����ܸ���һ��ѩ��ľ���У�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1375}},
					},
			}
		},
	},
[1375] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20823,
		soundID = nil,
		txt = "��Ҫѩ��ľô�����Ӯ�Ҿ͸��㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 232,mapID = 110}},
				},
			}
		},
	},
[1376] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20823,
		soundID = nil,
		txt = "ѩ��ľ�����ˣ�����ȥ��һ�ᣬ��һ�¾ͻ���ɽ���㲻Ҫ��������ʦ˵����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1377}},
					},
			}
		},
	},
[1377] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���Ǹ���Ƥ�ĺ��ӡ�����ѩ��ľҲ�����ˣ���ǰȥ�ҳ���֪����ѯ�����һ�����������ɰ�ɣ�",
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
[1378] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ҷ�������ʦ֮�ǰ������ѯ�������ɰ���䡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1326}},
				    {action = DialogActionType.Goto, param = {dialogID = 1379}},
			},
			}
		},
	},
[1379] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 29030,
		soundID = nil,
		txt = "����֪�����£���������ɰ���������ϣ���Ҫ�õ������ɰ��Ҫͨ���ҵĿ��顣���������ش���ǿ���������Ĵ����ң���ǰȥ���������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1327}},
					},
			}
		},
	},
[1380] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20824,
		soundID = nil,
		txt = "���˸��ô���ɽկ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1381}},
					},
			}
		},
	},
[1381] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ڴ˵��Ĵ����ҡ��������գ����˵ö���֮��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 233,mapID = 110}},
				},
			}
		},
	},
[1382] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ѽ��������Ĵ����ҵ�ǿ����������ɱ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1383}},
					},
			}
		},
	},
[1383] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 29030,
		soundID = nil,
		txt = "�������Ѿ�ͨ�����飬�����ɰ�͸���ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1327}},
				    {action = DialogActionType.Goto, param = {dialogID = 1384}},
			},
			}
		},
	},
[1384] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��л���������ڶ��ռ��ˣ���ȥ��������ʦ�����ط��ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1328}},
					},
			}
		},
	},
[1385] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ʦ�����Ѿ������ֲ���ȫ���ռ��ˣ��ѽ��������У�������ʼ�����ط��ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1328}},
				    {action = DialogActionType.Goto, param = {dialogID = 1386}},
			},
			}
		},
	},
[1386] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20829,
		soundID = nil,
		txt = "���Ĳ��������Ѿ��ռ�������㿪ʼ�����ط���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1329}},
					},
			}
		},
	},
[1387] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20829,
		soundID = nil,
		txt = "�ط���������ɣ�����ǰȥ�Ƴ���ӡ�ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1329}},
				    {action = DialogActionType.Goto, param = {dialogID = 1388}},
			},
			}
		},
	},
[1388] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��л��ʦ��������½��Ƴ�ħ������ڷ�ӡ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1330}},
					},
			}
		},
	},
[1389] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20825,
		soundID = nil,
		txt = "վס���˷�ӡ���ǽ��أ��ô���ɱ���⣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1390}},
					},
			}
		},
	},
[1390] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ݵö��ԣ������ɡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 234,mapID = 116}},
				},
			}
		},
	},
[1391] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��һ����ӡ���Ƴ���ǰȥ�Ƴ��ڶ�����ӡ��",
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
[1392] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20826,
		soundID = nil,
		txt = "վס���˷�ӡ�������أ�˭Ҳ�������룡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1393}},
					},
			}
		},
	},
[1393] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���շ�ӡ�ұ��Ƴ���˭Ҳ�����赲�ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 235,mapID = 116}},
				},
			}
		},
	},
[1394] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ڶ�����ӡҲ���Ƴ���ǰȥ��������ӡ��",
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
[1395] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20827,
		soundID = nil,
		txt = "�����ô���ӡ֮�أ�������Ѱ��·��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1396}},
					},
			}
		},
	},
[1396] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����Դ������ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 236,mapID = 116}},
				},
			}
		},
	},
[1397] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������ӡҲ���Ƴ�����ʣ�����һ����ӡ����ǰȥ���Ĵ���ӡ��ڴ���",
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
[1398] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20828,
		soundID = nil,
		txt = "���ߺ��ˣ��˵����Ƿ�ӡ֮�أ����Ƕ������ô��ģ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1399}},
					},
			}
		},
	},
[1399] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����Ҵ����ˣ������ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 237,mapID = 116}},
				},
			}
		},
	},
[1480] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ĵ���ӡȫ���Ƴ���֮ǰ����˳˵ħ��������ħ�������ڴ����أ�������һ�������Դ��������׿�������������书�ǳ���ǿ��ǰȥ����һ��Ը���׿��",
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
[1481] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������������ҵ���׿�����ħ�����ˣ���������ħ���������أ�����һ�����Ǵ򲻹������ģ�ϣ���������ܺ���һ�������������ɱ��׿��������¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1482}},
				    {action = DialogActionType.FinishTask, param = {taskID = 1334}},
			},
			}
		},
	},
[1482] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20801,
		soundID = nil,
		txt = "�Դ����常��׿ʹ��ħ��֮���Ҿ����������������������ҵ������ϳ�����ĳԸ����һ��ǰ����ɱ��׿������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1483}},
					},
			}
		},
	},
[1483] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ǾͶ�л�������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1335}},
					},
			}
		},
	},
[1484] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20830,
		soundID = nil,
		txt = "��������ڴ˻�����˭�Ҿ��Ŷ�̫ʦ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1485}},
					},
			}
		},
	},
[1485] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����������Ƕ�׿�Ǳ�Ϊ�飬�����ӯ����������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 238,mapID = 126}},
				},
			}
		},
	},
[1486] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20801,
		soundID = nil,
		txt = "�˷����ѱ������ɱ�������ǰ��Ѱ�Ҷ�׿���ȳ��ʵ۱��¡�",
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
[1487] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��׿���������ҵ����ˣ�û���㾹��������У����ջʵ۱��µ�����֮������ħ�����������ס�֣�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1488}},
					},
			}
		},
	},
[1488] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20831,
		soundID = nil,
		txt = "�������ʵ�С��������֮���ѱ��Ϸ�������ֻҪ�Ϸ�������Щ����֮�����޳�ħ��֮�壬���Ƕ������Ϸ�Ķ��֣�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 239,mapID = 126}},
				},
			}
		},
	},
[1489] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20801,
		soundID = nil,
		txt = "��׿�ѱ���ɱ���ɻʵ۱��»��Բ��ѣ�������ȥ��Ѱ¬ֲ������������������ͽ��ʵ۱����ͻػʹ���",
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
[1490] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "¬ֲ���ˣ������������ѽ���׿��ɱ���Ȼػʵ۱��¡��������ֻʵ۱���һֱ���Բ��ѣ��������Ǻá�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1336}},
				    {action = DialogActionType.Goto, param = {dialogID = 1491}},
			},
			}
		},
	},
[1491] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "�����Ϸ���֪����������׿�������ϵ�����֮���������������𣬻��Բ��ѣ�����ͨҩʯ���Σ���֪����Ǻã�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1337}},
				    {action = DialogActionType.Goto, param = {dialogID = 1492}},
			},
			}
		},
	},
[1492] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "¬����Ī��������㷵���Ͻ磬����Ԫʼʦ����ߣ������˼ұ��з����α��¡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1337}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1338}},
			},
			}
		},
	},
[1493] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ�棬����׵۱���׿��������֮����������𣬻��Բ��ѣ�������ʦ���Ҿ���֮����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1338}},
				    {action = DialogActionType.Goto, param = {dialogID = 1401}},
			},
			}
		},
	},
[1401] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20002,
		soundID = nil,
		txt = "������ԯ�Ƶ����»�������Ӧ�������˼�����һ������֮����ֻ��Ѱ�ã�ע�뺺�׵����ڣ����ʹ�临�ա�����½��̽����Ϣ��",
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
[1402] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "¬���ˣ���ʦ��˵��������ԯ�Ƶ����»�������Ӧ��������һ������֮�����˼䣬ֻ�轫������֮��ע��������ڣ�������������ѣ���֪¬�����Ƿ�֪���й�Ӧ���������ԯ�Ƶ۵���Ϣ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1403}},
					},
			}
		},
	},
[1403] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "������˾ͽ����������һ��ԯͼ����ͼ����ԯ�Ƶ������˼�ı�����������������ǰ����������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1401}},
					},
			}
		},
	},
[1404] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ˣ���������������һ����ԯͼ�������¹ص�����°�Σ����֪�ɷ����һ�ã�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1405}},
					},
			}
		},
	},
[1405] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20701,
		soundID = nil,
		txt = "�����¹��ش�������ԯͼ���ڲ������������Ϊ�˶Ը��������Ϸ�������ͼ���������µĶ�쿣�����ս�ܺ󣬴���Ӧ�������d�룬���ǰȥѰ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1402}},
					},
			}
		},
	},
[1406] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ʸ��¿��Ƕ�쿣���ԯͼ���������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1407}},
					},
			}
		},
	},
[1407] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20901,
		soundID = nil,
		txt = "��Ҫ֪����ԯ��ͼ�����䣬��Ҫ��������û���Ȿ���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 301,mapID = 106}},
				},
			}
		},
	},
[1408] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20901,
		soundID = nil,
		txt = "����ʮ��·����ַ���׿ʱ���ұ�������ǫ�����´�ܣ���ԯ��ͼҲ�����ߣ������ԯ��ͼӦ������ǫ���У����ȥ��������������ԯ��ͼ�����䡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1403}},
					},
			}
		},
	},
[1409] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20905,
		soundID = nil,
		txt = "վס�����ݳǽ����ڼ䣬���˲������룡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1410}},
					},
			}
		},
	},
[1410] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���м���Ҫ���մ��ˣ���Ȼ����һ���������������е����ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 302,mapID = 118}},
				},
			}
		},
	},
[1411] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����˲��̵��ӣ��˴�ǰ�����մ��ˣ��˹غ�������°�Σ֮�£��������ܴ���ȥ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1412}},
					},
			}
		},
	},
[1412] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20905,
		soundID = nil,
		txt = "ԭ�������ŵ��ӣ������ܲ�Ϊ���������ĺ�������ݣ���������Ѳ�ľ�Ա�����������˵���ĺ�˱����������ݰ��գ���Ը�������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1404}},
					},
			}
		},
	},
[1413] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ĺ��������ֹͣ�������ݣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1414}},
					},
			}
		},
	},
[1414] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20908,
		soundID = nil,
		txt = "�㾹�Ҵ��Ҿ�Ӫ����������ֹͣ���������ǲ�֪���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 303,mapID = 118}},
				},
			}
		},
	},
[1415] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20908,
		soundID = nil,
		txt = "����Ҳ�ǳ��ˣ�����ν�����������������ӣ��������˵�����������������˱����������˱��������ݹ��������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1405}},
					},
			}
		},
	},
[1416] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20911,
		soundID = nil,
		txt = "���˸Ҵ���Ӫ����֪���ǵ���ة��ľ�Ӫ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1417}},
					},
			}
		},
	},
[1417] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ܽ����˾�ʱ������Ҫ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 304,mapID = 118}},
				},
			}
		},
	},
[1418] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܽ���������һ�ǰ��պ����޹����������˱�Ϊ�ϡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1419}},
					},
			}
		},
	},
[1419] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20313,
		soundID = nil,
		txt = "��ĳ���ⲻ�����ݣ�������δ������ĳ�����˱�������Ӣ�����Ҿ��ѣ���ȥ��֪��ǫ������Ҫ��ĳ�˱������ǽ����������]�����������ݣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1425}},
					},
			}
		},
	},
[1420] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�´��ˣ��ܲ��Ѿ��������ң�ֻҪ��������ɱ���������]���������˱���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1421}},
					},
			}
		},
	},
[1421] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20905,
		soundID = nil,
		txt = "�����]ɱ�˲ܲ�֮��������Ʊ��������Ӧ�û������ݽ�Ұ�ڣ�����Ӣ���������]���������ݰ��գ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1407}},
					},
			}
		},
	},
[1422] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20914,
		soundID = nil,
		txt = "վס���˴��������]�Ŵ��˵���أ����������·Ǯ��������ͱ������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1423}},
					},
			}
		},
	},
[1423] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ԭ�������]�����£�����������]�����ģ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 305,mapID = 118}},
				},
			}
		},
	},
[1424] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20914,
		soundID = nil,
		txt = "���]���Ѳ������ݣ������²ܲٱ����Ѿ���ȥ������Ӣ�ۿ�ǰ������Ѱ�ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1408}},
					},
			}
		},
	},
[1425] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20917,
		soundID = nil,
		txt = "��һ���ƽ�пܣ���̫ʷ�Ƚ����Ҫ�����е�����ɱ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1426}},
					},
			}
		},
	},
[1426] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ס�֣��ҷǻƽ�е���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 306,mapID = 119}},
				},
			}
		},
	},
[1427] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������ˣ����˲��̵��ӣ��˴�������������ץ�����]���Խ�����֮Χ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1428}},
					},
			}
		},
	},
[1428] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20917,
		soundID = nil,
		txt = "ԭ�������ŵ��ӣ�������³ç�ˣ��������������ˡ���������Ѱ�����]����ȥ������Ӫ�ܺ��ǿ������ڱ����������]����ĵط���Ҳ��ֻ�������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1409}},
					},
			}
		},
	},
[1429] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20920,
		soundID = nil,
		txt = "�󵨣����Ҵ��Ҿ�Ӫ�������������ܽ����빦��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1430}},
					},
			}
		},
	},
[1430] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������Ҫ�ҵ����]��˭�����ң��ұ�ɱ˭��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 307,mapID = 119}},
				},
			}
		},
	},
[1431] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20923,
		soundID = nil,
		txt = "���]������Ӫ���������Ҳû�������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1432}},
					},
			}
		},
	},
[1432] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ǿͽ����Ҿ���ɱ�㣬��ɱ���]��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 308,mapID = 119}},
				},
			}
		},
	},
[1433] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���]����Ӧ��������ұ�������ҳ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1410}},
					},
			}
		},
	},
[1434] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20925,
		soundID = nil,
		txt = "�㾹Ȼ������׷���ᣬ�ǽ������Ǿ�ƴ���������ƺ��ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1435}},
					},
			}
		},
	},
[1435] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���]��������ı�ƺ�������������㳥��֮ʱ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 309,mapID = 119}},
				},
			}
		},
	},
[1436] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܽ��������ѽ����]��ɱ�����뽫�����س�ŵ���������˱���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1437}},
					},
			}
		},
	},
[1437] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20313,
		soundID = nil,
		txt = "��Ȼ���]�������Ҵ���ѱ���Ӣ�ۿ�ת����ǫ����ĳ��������˱���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1411}},
					},
			}
		},
	},
[1438] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20905,
		soundID = nil,
		txt = "���������£��������ݰ��գ��˶�û����������λ���������������մ��ˣ������������󣬱��������˵�ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1439}},
				    {action = DialogActionType.FinishTask, param = {taskID = 1412}},
			},
			}
		},
	},
[1439] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�´��ˣ��մ��ˣ�������»��Բ��ѣ�������ԯͼһ�ã������մ��˽���ͼ�����֪���ҡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1440}},
					},
			}
		},
	},
[1440] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20904,
		soundID = nil,
		txt = "ʵ������������ԯͼ��������ĳ���У����������д������ͼ���������ˣ����ڴ������ٴ��漣���Ȼر��¡�",
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
[1441] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "¬���ˣ���ԯͼ���Ѿ�ȡ������֪���Ƿ�֪�����Ѱ������֮����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1442}},
					},
			}
		},
	},
[1442] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "�ݼ��أ�Ҫʹ����ԯͼ���轫�������󷽿�ʹ�ã���ϧ�Ҳ���֪����������������������һ���ˣ�������ȣ�����Գ�������Ѱ������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1413}},
					},
			}
		},
	},
[1443] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��λǰ������֪���Ƿ�֪��һλ����ȵĸ��ˣ���������ס�ڴ˵ء�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1444}},
					},
			}
		},
	},
[1444] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20928,
		soundID = nil,
		txt = "�������ˣ��ҵĲƱ�����һ��ǿ�������ˣ�������ܰ��Ұѱ����һ�������Ҳ���ܸ��������������ʲô�ط���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1414}},
					},
			}
		},
	},
[1445] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20930,
		soundID = nil,
		txt = "վס���˵����ҵĵ��̣��κ��˵ȣ���Ҫ�������뿪���͹ԹԵ�������·Ǯ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1446}},
					},
			}
		},
	},
[1446] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����������������˼ҵĶ����ˣ����������Ķ����������������ݹ��������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 310,mapID = 107}},
				},
			}
		},
	},
[1447] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���˼ң���ı����Ұ����һ����ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1448}},
				    {action = DialogActionType.FinishTask, param = {taskID = 1426}},
			},
			}
		},
	},
[1448] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20929,
		soundID = nil,
		txt = "������ԯ��ͼ����ԯ�Ƶ����µı��������������֮�����������������Ĵ����֮�˵õ�����֮��������������롣������ȣ������������װ����������㣬�����뿴�����Ƿ����ʸ�ʹ������ԯ��ͼ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1449}},
					},
			}
		},
	},
[1449] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20929,
		soundID = nil,
		txt = "Ҫ��������ԯ��ͼ�������������ֲ��ϣ���һΪ����֮������һΪ����֮�������ǰȥ�������Ұ���ͨ����֪����������ںδ�Ѱ�ҡ�",
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
[1450] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ͨǰ���������ڼ������ֲ��ϣ�һ������֮������Ϊ����֮������������ֲ��ϵ���Ϣ��֪���ҡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1451}},
					},
			}
		},
	},
[1451] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20933,
		soundID = nil,
		txt = "���������ʶ����ˣ�����֮���������������������У�����һ��������֮�����ڶ����������Ѫħ�����У������������������Ҫ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1416}},
					},
			}
		},
	},
[1452] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܴ��ˣ���������������һ����֮�����¹ص�����°�Σ���ܷ���������ң�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1453}},
					},
			}
		},
	},
[1453] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 29006,
		soundID = nil,
		txt = "ԭ����ˣ�����ϧ�������֮���������������ǰ��·���d��ʱ������֮����һ���������������Ӧ�û����d�봦��������ҵ���������֮��������������������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1417}},
					},
			}
		},
	},
[1454] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ǰ�������������һ����֮����ʶ��ľ������ϰ����û����������ݹ��������ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1455}},
					},
			}
		},
	},
[1455] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20934,
		soundID = nil,
		txt = "ԭ��������������֮�����ⶫ����ȷ���������Ҫ������û�����û�ȥ�ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 311,mapID = 106}},
				},
			}
		},
	},
[1456] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����֮���ѵã�����ȥ����Ѱ������֮��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1418}},
					},
			}
		},
	},
[1457] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20937,
		soundID = nil,
		txt = "��һ������������֮�����ϵģ������㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1458}},
					},
			}
		},
	},
[1458] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��Ű�޵����к����գ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 312,mapID = 107}},
				},
			}
		},
	},
[1459] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ֲ����Ҷ��õ�����ʱ���ȥ��������ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1419}},
					},
			}
		},
	},
[1460] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����������֮��������֮���Ҷ��ѵõ���������������������ԯͼ��Ѱ������֮����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1461}},
					},
			}
		},
	},
[1461] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20929,
		soundID = nil,
		txt = "�����Ժ�ƶ������������ͼ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1462}},
					},
			}
		},
	},
[1462] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20929,
		soundID = nil,
		txt = "��ԯͼ�����������Ϸ���֪����ͼ��ʾ����֮���ĵط�λ�ڱ������㼴��ǰȥ������̽����֮������Ϣ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1420}},
					},
			}
		},
	},
[1463] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20940,
		soundID = nil,
		txt = "�ڱ�����û�˲�ʶ��˾ͽ�ϵģ�ʶ��ľͰ����ϵĲ��ﶼ������������󵶿��ǲ����۾��ģ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1464}},
					},
			}
		},
	},
[1464] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ɷ������������������޴�־������Ϊ��һ�������ﵱ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 313,mapID = 119}},
				},
			}
		},
	},
[1465] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���㻹�лڹ�֮�ģ���ξͷŹ��㡣�����㣬���ڱ���������û�п���һЩ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1466}},
					},
			}
		},
	},
[1466] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20940,
		soundID = nil,
		txt = "лӢ�۲�ɱ֮����˵������С�˼ǵ��ڱ����������������˸��Ӣ�ۿ���ǰȥ�鿴��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1421}},
					},
			}
		},
	},
[1467] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ǻû����˵�����֮���������»��Բ��ѣ�������������֮��һ�á�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1468}},
					},
			}
		},
	},
[1468] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20943,
		soundID = nil,
		txt = "Ҫ���ҵ�����֮������ɱ���Һ��죿���������꣬�ò����ײ��ܻû����ˣ���������óѣ������Ҷ�Ҫɱ�㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 314,mapID = 119}},
				},
			}
		},
	},
[1469] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����������֮���ѵû�����ǰ�����������ȱ��£�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1470}},
					},
			}
		},
	},
[1470] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20929,
		soundID = nil,
		txt = "ƶ������������֮��������ǰȥ���������ǣ�ƶ������׼�������͵���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1423}},
					},
			}
		},
	},
[1471] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20929,
		soundID = nil,
		txt = "����������ѣ�ƶ�����ȥҲ����Ӣ�ۺ���Ϊ֮���ٿ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1427}},
				    {action = DialogActionType.Goto, param = {dialogID = 1501}},
			},
			}
		},
	},
[1472] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20911,
		soundID = nil,
		txt = "�ҿ�Ӣ��Ҳ�Ǵ��ˣ��Ҽ���������ǰ����Ӣ�ۿ���ȥ������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1406}},
					},
			}
		},
	},
[1473] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���]������Ҫ��ȥ��ܲ��˱��ˡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1411}},
					},
			}
		},
	},
[1474] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����֮���ѵã�����Ҫ�������������֮��ע��ʵ������ˡ�",
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
[1501] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21000,
		soundID = nil,
		txt = "��лӢ����ȡ����׿���������������������ķ����ѣ��㸲�ڼ����������˺��ң��κ�������������Ӣ�۴ͽ̡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1501}},
				    {action = DialogActionType.Goto, param = {dialogID = 1502}},
			},
			}
		},
	},
[1502] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������ǣ�����㷵���Ͻ磬����Ԫʼ��ʦ��̸��˺���֮�ߡ�",
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
[1503] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "ʦ�棬���ܺ��һʵ�֮�У���ǰ����̸��˺���֮�ߡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1501}},
				    {action = DialogActionType.Goto, param = {dialogID = 1504}},
			},
			}
		},
	},
[1504] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20002,
		soundID = nil,
		txt = "��׿������ʩ��ʹ��������˥�ܡ��˼���һ�������������������ۻ����ˣ�����跨Ѱ�ã������������ˣ��������������ݡ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1502}},
				    {action = DialogActionType.Goto, param = {dialogID = 1505}},
			},
			}
		},
	},
[1505] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������½�Ѱ¬ֲ���˴�̽��",
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
[1506] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "¬���ˣ�����ʦ��ָ�㣬ҪѰ�����������������������ˣ���֪���˿�֪�˱����䡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1502}},
				    {action = DialogActionType.Goto, param = {dialogID = 1507}},
			},
			}
		},
	},
[1507] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "��������ԭΪ��͢���У��κζ�׿֮���У����ش˱������ֽ����뷼��˽�Դ˱�Ǳ�ӣ����������������������������Ӣ�ۿ�ǰȥѰ���˴�̽�뷼���䡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1503}},
					},
			}
		},
	},
[1508] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ڣ��뷼˽�Դ�������Ǳ�ӣ����ǲ���ͬı�����������ʵ�����뷼�����䣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1509}},
					},
			}
		},
	},
[1509] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21001,
		soundID = nil,
		txt = "�ߣ����Ǻ��ˣ��ܴ���ұ�����㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 401,mapID = 10}},
				},
			}
		},
	},
[1510] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�뷼������ںδ���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1511}},
					},
			}
		},
	},
[1511] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21032,
		soundID = nil,
		txt = "�������Ƿ뷼��庺��׷���䶪ʧ����֮�������Ѿ������ڷ�ɽ��Ӣ�ۿ�ǰ���ڷ�ɽѰ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1503}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1504}},
			},
			}
		},
	},
[1512] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�뷼�����������ǲ����������У������콻������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1513}},
					},
			}
		},
	},
[1513] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21002,
		soundID = nil,
		txt = "��ƾ�����ëС��ҲҪ�����������䣬�ȹ�����أ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 402,mapID = 104}},
				},
			}
		},
	},
[1514] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�뷼��������콻���������䣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1515}},
					},
			}
		},
	},
[1515] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21002,
		soundID = nil,
		txt = "Ӣ�����������������ȷʵ���������ϡ�����ʮ��·���ս�ң�����ƴ�������������κ������Ա���������ᡣ��������ȴ�����䲻����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1504}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1505}},
			},
			}
		},
	},
[1516] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "¬���ˣ��ݷ뷼����������������ѱ���������ᣬ�����������䲻�������޲ߣ������ָ�㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1517}},
					},
			}
		},
	},
[1517] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 20049,
		soundID = nil,
		txt = "������ʵ��ͬС�ɣ������ų�������һ����������Ϊ��������ͨ���˳��ᢡ���Ҳ��������������䣬�����ȥ���������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1505}},
					},
			}
		},
	},
[1518] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܴ��ˣ����Ŵ����������Σ�ѣ���ȱһ����������ѹ���ˡ��Ǵ��������������������䲻�������������ܹ�����������������䡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1519}},
					},
			}
		},
	},
[1519] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 29030,
		soundID = nil,
		txt = "�ϵ���ȷ����Ҫ�������㡣�κ�ǰ���գ�������һ������������ռ��ʱ��������ʧ��������������ҪѪϴ�����ǣ�Ψ�н�Ӣ��֮����������Ծȳ����������һ�����³�֮���ϵ�����ȫ���������㡣",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1520}},
					},
			}
		},
	},
[1520] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ȥ���˺������ˡ�",
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
[1521] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21004,
		soundID = nil,
		txt = "��˭���Ҵ�����������Ұ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1522}},
					},
			}
		},
	},
[1522] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���䣬����Ϊ�����Ϲ�ħ������Ȼ������Ϊ���������ҽ����ҪΪ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 403,mapID = 110}},
				},
			}
		},
	},
[1523] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܴ��ˣ����ѽ��Ǻ�����ɱ�������������س�ŵ����һ��֮����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1508}},
				    {action = DialogActionType.Goto, param = {dialogID = 1524}},
			},
			}
		},
	},
[1524] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 29030,
		soundID = nil,
		txt = "Ӣ��������֪������������������ռ��ʱ��ռ���õ����̱��Ƿ�ŭ���������顣���Ҫ��ԭ�����̣�ֻ��ȡ����ɽ�ġ����ۡ��������ġ�������ʯ���������޸����̡�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1525}},
					},
			}
		},
	},
[1525] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܴ���Ī�ţ������ǰ����ɽ��������Ϊ��ȡ�����޸����̵��زġ�",
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
[1526] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21005,
		soundID = nil,
		txt = "վס�������Դ�����ɽ��������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1527}},
					},
			}
		},
	},
[1527] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�������ۣ��������㲻����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 404,mapID = 115}},
				},
			}
		},
	},
[1528] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����Ѿ�ȡ�ã���������ȥ����Ѱ�ǡ�������ʯ���ˡ�",
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
[1529] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21006,
		soundID = nil,
		txt = "���Ǻ��ˣ��������°����صأ����Ƕ���������ĵط���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1530}},
					},
			}
		},
	},
[1530] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "����ÿ��������������ӣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 405,mapID = 116}},
				},
			}
		},
	},
[1531] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������ʯ�Ѿ�ȡ�ã���ȥ�ҹܴ��˸����ˣ�",
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
[1532] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܴ��ˣ����Ѿ��޸�������Ҫ���ز��Ѽ���ϣ����޸����̰ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1533}},
					},
			}
		},
	},
[1534] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 29030,
		soundID = nil,
		txt = "����������������Ӧ��λ�ڻ��ιط������ǰȥ��̽��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1511}},
				    {action = DialogActionType.Goto, param = {dialogID = 1535}},
			},
			}
		},
	},
[1535] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��������뻢�ι�Ѱ����ࡣ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1512}},
					},
			}
		},
	},
[1536] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "û�������Ҳ���˰��㣬����Ҳ��֪���١����֮�ƻ��ûس����ҹܴ���������",
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
[1537] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܴ��ˣ������뻢�ιأ�������������˰���������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1538}},
					},
			}
		},
	},
[1538] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 29030,
		soundID = nil,
		txt = "������ţ�ֻҪ��Ϊ��Ѱ���d��ġ�ͨ��ˮ���������صġ��ػ�ݡ������Ϊ��ʩ�ûػ�󷨣��ٻ��������ꡣ",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1539}},
					},
			}
		},
	},
[1539] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�����ȥ�ռ��زģ�",
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
[1540] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21007,
		soundID = nil,
		txt = "վס�����ô����d���Ӫ��������Ϊ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1541}},
					},
			}
		},
	},
[1541] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���ÿ��������ݹ��Ҳ�������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 406,mapID = 106}},
				},
			}
		},
	},
[1542] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��ͨ��ˮ�����Ѿ��õ�����������ȥ���زɼ����ػ�ݡ��ˣ�",
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
[1543] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21008,
		soundID = nil,
		txt = "վס�����ش�Ӫ�������������ĵط���������ɱ�����Ż�ȥ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1544}},
					},
			}
		},
	},
[1544] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�Ǿ��������汾�°ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 407,mapID = 110}},
				},
			}
		},
	},
[1545] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ز��Ѿ��ռ���ϣ��û�ȥ�����ҹܴ��˸����ˣ�",
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
[1546] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ܴ��ˣ����Ѽ���ʩչ�ػ�󷨵��زģ���ܴ���ʩ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1547}},
					},
			}
		},
	},
[1548] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21010,
		soundID = nil,
		txt = "��˭���ٻ��Ҵ��������ޣ��ҿɲ������׷Ź�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1549}},
					},
			}
		},
	},
[1549] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��࣬����ǰ������������������콻�����䣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 408,mapID = 13}},
				},
			}
		},
	},
[1550] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21033,
		soundID = nil,
		txt = "�ᵱ���ڻ��ιأ����ұ�����ᰵɱ������Ҳ�������ᡣ�������񷥶�����������£�������������ġ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1517}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1518}},
			},
			}
		},
	},
[1551] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21011,
		soundID = nil,
		txt = "˭�ҵĻ�ëС�ӣ����������һ���ĺ��£�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1552}},
					},
			}
		},
	},
[1552] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������������Ὣ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 409,mapID = 120}},
				},
			}
		},
	},
[1553] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21034,
		soundID = nil,
		txt = "��лӢ����ȣ���֪��˷�ǰ��Ѱ��֮�⡣���������������캫������ï�������������ͬ����Χ����������Ϊ���㣬������֮���ˣ�����Ӣ��ǰ����ȣ��³����Ե������������֪���㣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1518}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1519}},
			},
			}
		},
	},
[1554] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21012,
		soundID = nil,
		txt = "��˶�ڴˣ����ҷ�����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1555}},
					},
			}
		},
	},
[1555] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��˶�����������˺���������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 410,mapID = 120}},
				},
			}
		},
	},
[1556] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21013,
		soundID = nil,
		txt = "��лӢ�۰ε�������������һ������ï�������Χ���ڽ����Ա�������Ӣ��ǰ����ȣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1519}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1520}},
			},
			}
		},
	},
[1557] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21014,
		soundID = nil,
		txt = "С�ӣ������������裬�ǻ������֮���£��������Ͷ���������㲻����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1558}},
					},
			}
		},
	},
[1558] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ϻ���˵��������������ï������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 411,mapID = 120}},
				},
			}
		},
	},
[1559] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21015,
		soundID = nil,
		txt = "��лӢ����ȣ���Ὣ������ǰ�������Ѱ�����ͣ�",
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
[1560] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "�ｫ�������ѳɹ�������������£������ܸ�֪�������䣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1520}},
				    {action = DialogActionType.Goto, param = {dialogID = 1561}},
			},
			}
		},
	},
[1561] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21035,
		soundID = nil,
		txt = "ʵ�������������������������ģ�����������������ڻ����У������ѱ�һ�����������ᡣ�������������ǻ���������������������ȥ��",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.RecetiveTask, param = {taskID = 1521}},
					},
			}
		},
	},
[1562] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21016,
		soundID = nil,
		txt = "���˺��ˣ���������䱸ɭ�ϣ��갲���ô���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1563}},
					},
			}
		},
	},
[1563] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��˴ν�������������Ҫ׷�����������䣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 412,mapID = 14}},
				},
			}
		},
	},
[1564] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "������콻���������䣡",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1565}},
					},
			}
		},
	},
[1565] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21036,
		soundID = nil,
		txt = "���������Ǳ��������������ᣬ���������������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1521}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1522}},
			},
			}
		},
	},
[1566] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "���������ö�������ʵ�˴��治����������콻�������������㲻����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1567}},
					},
			}
		},
	},
[1567] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21017,
		soundID = nil,
		txt = "�ǵÿ����ܲ��ܹ�����һ���ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 413,mapID = 14}},
				},
			}
		},
	},
[1568] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21037,
		soundID = nil,
		txt = "���������������ʵ�����ܵ�����ؽ�����Ϊ������������������Ѿ����������У�Ӣ�ۿ�ǰ��Ѱ��Ҫ��������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1522}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1523}},
			},
			}
		},
	},
[1569] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21018,
		soundID = nil,
		txt = "����製���֮�������������������������������ҹ䣬������콻�����ɣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1570}},
					},
			}
		},
	},
[1570] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��˷�������������Ҫ�Ҳ�裣�������콻������λ�ã�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 414,mapID = 14}},
				},
			}
		},
	},
[1571] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��˵������������εأ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1572}},
					},
			}
		},
	},
[1572] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21038,
		soundID = nil,
		txt = "�������������������Ӣ�ۿ�����ǰ��Ѱ����",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1523}},
				    {action = DialogActionType.RecetiveTask, param = {taskID = 1524}},
			},
			}
		},
	},
[1573] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��裣���˽�����������Ǵ��治����������콻������",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1574}},
					},
			}
		},
	},
[1574] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21019,
		soundID = nil,
		txt = "�������Ƕ��Ȼ�ëС����Ⱦָ�ģ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.EnterScriptFight, param = {scriptID = 415,mapID = 14}},
				},
			}
		},
	},
[1575] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 21039,
		soundID = nil,
		txt = "�����Ͷ����Ԭ����Ϊ����øУ�Ϊ��������������������ѱ�����Ԭ�����У�Ӣ�ۿ�ǰ��Ѱ�����ˣ�",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.FinishTask, param = {taskID = 1524}},
					},
			}
		},
	},
[1576] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 29030,
		soundID = nil,
		txt = "Ӣ�ۣ������Ϊ���ٻ���������飬�����λ�ڳ������������صĳ��Ŵ��·��������鲻ϲ���������ţ�����м�С�İ���",
		options = 
		{
			{
				showConditions = {},
				optionTxt = "",
				actions =
				{
					{action = DialogActionType.Goto, param = {dialogID = 1577}},
					},
			}
		},
	},
[1577] = 
	{
		dialogType = DialogType.NotOption,
		conditions = 
		{
		},
		speakerID = 0,
		soundID = nil,
		txt = "��л�ܴ��ˣ������ǰ��������ˣ�",
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
}


table.copy(NormalDialogModelDB,DialogModelDB)
