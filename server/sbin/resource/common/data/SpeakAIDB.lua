--SpeakAIDB.lua
MonsterSpeakAIDB = {}

MonsterSpeakAIDB[1] = {
	name = '����',
	--type = ConditionType.HPChange,
	doer = {
		defaultWords = "����",
		{
			condition = {["<"] = {"hp",0.8},[">"] = {"hp",0.5},isAnd = true},
			words="�������ˣ�",
		},
		{
			condition = {["<="] = {"hp",0.5},isAnd = true},
			words = "����ǿ��",
		},
		
	},
}

