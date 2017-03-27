--[[LoopTaskDB.lua
	ѭ����������(����ϵͳ)
]]

--ѭ������
LoopTaskDB = 
{
	-- ʦ������
	[10001] = 
	{
		name = "ʦ������",
		startDialogID = nil,
		-- ������ʦ������
		taskType2 = TaskType2.Master,
		level = {20, 150},
		school = SchoolType.QYD,
		startNpcID = 20004,
		loop =10,
		-- �����ȷ����ÿ�գ�����ÿ�ܵġ�
		period = TaskPeriod.day,
		-- �����ʾ����
		levelFlag = true,
		targetLevelSection =
		{
			[1] = {1, 30},
			[2] = {31, 40},
			[3] = {41, 50},
			[4] = {51, 150},
		},
		targets = 
		{
			-- 1- 30��
			[1] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 0,
				[LoopTaskTargetType.talk] = 60,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 0,
				[LoopTaskTargetType.mysteryBus] = 0,
				[LoopTaskTargetType.donate] = 50,
			},
			-- 31 - 40 ��
			[2] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 30,
				[LoopTaskTargetType.mysteryBus] = 50,
				[LoopTaskTargetType.donate] = 50,
			},
			--41- 50��
			[3] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 40,
				[LoopTaskTargetType.mysteryBus] = 40,
				[LoopTaskTargetType.donate] = 40,
			},
			--51- 150��
			[4] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 60,
				[LoopTaskTargetType.talk] = 30,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 50,
				[LoopTaskTargetType.mysteryBus] = 30,
				[LoopTaskTargetType.donate] = 40,
			},
		},
		-- ��ʽ����
		formulaRewards =
		{
                        --��ɫ����
			[TaskRewardList.player_xp] = MasterRewardFormula.addXp,
			--�������
			[TaskRewardList.player_tao] = MasterRewardFormula.addTao,
			--����Ǳ��
			[TaskRewardList.player_pot] = MasterRewardFormula.addPot,
			--����
			[TaskRewardList.subMoney] = MasterRewardFormula.addSubMoney,
		},
		-- ��Ʒ����
		itemRewards =
		{
			-- �ȼ�����
			[1] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[2] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[3] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[4] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
		},
	},
	[10002] = 
	{
		name = "ʦ������",
		startDialogID = nil,
		-- ������ʦ������
		taskType2 = TaskType2.Master,
		level = {20, 150},
		school = SchoolType.JXS,
		startNpcID = 20006,
		loop = 10,
		-- �����ȷ����ÿ�գ�����ÿ�ܵġ�
		period = TaskPeriod.day,
		-- �����ʾ����
		levelFlag = true,
		targetLevelSection =
		{
			[1] = {1, 30},
			[2] = {31, 40},
			[3] = {41, 50},
			[4] = {51, 150},
		},
		targets = 
		{
			-- 1- 30��
			[1] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 0,
				[LoopTaskTargetType.talk] = 60,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 0,
				[LoopTaskTargetType.mysteryBus] = 0,
				[LoopTaskTargetType.donate] = 50,
			},
			-- 31 - 40 ��
			[2] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 30,
				[LoopTaskTargetType.mysteryBus] = 50,
				[LoopTaskTargetType.donate] = 50,
			},
			--41- 50��
			[3] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 40,
				[LoopTaskTargetType.mysteryBus] = 40,
				[LoopTaskTargetType.donate] = 40,
			},
			--51- 150��
			[4] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 60,
				[LoopTaskTargetType.talk] = 30,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 50,
				[LoopTaskTargetType.mysteryBus] = 30,
				[LoopTaskTargetType.donate] = 40,
			},
		},
		-- ��ʽ����
		formulaRewards =
		{
                        --��ɫ����
			[TaskRewardList.player_xp] = MasterRewardFormula.addXp,
			--�������
			[TaskRewardList.player_tao] = MasterRewardFormula.addTao,
			--����Ǳ��
			[TaskRewardList.player_pot] = MasterRewardFormula.addPot,
			--����
			[TaskRewardList.subMoney] = MasterRewardFormula.addSubMoney,
		},
		-- ��Ʒ����
		itemRewards =
		{
			-- �ȼ�����
			[1] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[2] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[3] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[4] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
		},
	},
	[10003] = 
	{
		name = "ʦ������",
		startDialogID = nil,
		-- ������ʦ������
		taskType2 = TaskType2.Master,
		level = {20, 150},
		school = SchoolType.ZYM,
		startNpcID = 20008,
		loop = 10,
		-- �����ȷ����ÿ�գ�����ÿ�ܵġ�
		period = TaskPeriod.day,
		-- �����ʾ����
		levelFlag = true,
		targetLevelSection =
		{
			[1] = {1, 30},
			[2] = {31, 40},
			[3] = {41, 50},
			[4] = {51, 150},
		},
		targets = 
		{
			-- 1- 30��
			[1] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 0,
				[LoopTaskTargetType.talk] = 60,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 0,
				[LoopTaskTargetType.mysteryBus] = 0,
				[LoopTaskTargetType.donate] = 50,
			},
			-- 31 - 40 ��
			[2] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 30,
				[LoopTaskTargetType.mysteryBus] = 50,
				[LoopTaskTargetType.donate] = 50,
			},
			--41- 50��
			[3] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 40,
				[LoopTaskTargetType.mysteryBus] = 40,
				[LoopTaskTargetType.donate] = 40,
			},
			--51- 150��
			[4] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 60,
				[LoopTaskTargetType.talk] = 30,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 50,
				[LoopTaskTargetType.mysteryBus] = 30,
				[LoopTaskTargetType.donate] = 40,
			},
		},
		-- ��ʽ����
		formulaRewards =
		{
                        --��ɫ����
			[TaskRewardList.player_xp] = MasterRewardFormula.addXp,
			--�������
			[TaskRewardList.player_tao] = MasterRewardFormula.addTao,
			--����Ǳ��
			[TaskRewardList.player_pot] = MasterRewardFormula.addPot,
			--����
			[TaskRewardList.subMoney] = MasterRewardFormula.addSubMoney,
		},
		-- ��Ʒ����
		itemRewards =
		{
			-- �ȼ�����
			[1] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[2] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[3] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[4] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
		},
	},
	[10004] = 
	{
		name = "ʦ������",
		startDialogID = nil,
		-- ������ʦ������
		taskType2 = TaskType2.Master,
		level = {20, 150},
		school = SchoolType.YXG,
		startNpcID = 20009,
		loop = 10,
		-- �����ȷ����ÿ�գ�����ÿ�ܵġ�
		period = TaskPeriod.day,
		-- �����ʾ����
		levelFlag = true,
		targetLevelSection =
		{
			[1] = {1, 30},
			[2] = {31, 40},
			[3] = {41, 50},
			[4] = {51, 150},
		},
		targets = 
		{
			-- 1- 30��
			[1] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 0,
				[LoopTaskTargetType.talk] = 60,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 0,
				[LoopTaskTargetType.mysteryBus] = 0,
				[LoopTaskTargetType.donate] = 50,
			},
			-- 31 - 40 ��
			[2] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 30,
				[LoopTaskTargetType.mysteryBus] = 50,
				[LoopTaskTargetType.donate] = 50,
			},
			--41- 50��
			[3] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 40,
				[LoopTaskTargetType.mysteryBus] = 40,
				[LoopTaskTargetType.donate] = 40,
			},
			--51- 150��
			[4] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 60,
				[LoopTaskTargetType.talk] = 30,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 50,
				[LoopTaskTargetType.mysteryBus] = 30,
				[LoopTaskTargetType.donate] = 40,
			},
		},
		-- ��ʽ����
		formulaRewards =
		{
                        --��ɫ����
			[TaskRewardList.player_xp] = MasterRewardFormula.addXp,
			--�������
			[TaskRewardList.player_tao] = MasterRewardFormula.addTao,
			--����Ǳ��
			[TaskRewardList.player_pot] = MasterRewardFormula.addPot,
			--����
			[TaskRewardList.subMoney] = MasterRewardFormula.addSubMoney,
		},
		-- ��Ʒ����
		itemRewards =
		{
			-- �ȼ�����
			[1] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[2] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[3] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[4] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
		},
	},
	[10005] = 
	{
		name = "ʦ������",
		startDialogID = nil,
		-- ������ʦ������
		taskType2 = TaskType2.Master,
		level = {20, 150},
		school = SchoolType.TYD,
		startNpcID = 20005,
		loop = 10,
		-- �����ȷ����ÿ�գ�����ÿ�ܵġ�
		period = TaskPeriod.day,
		-- �����ʾ����
		levelFlag = true,
		targetLevelSection =
		{
			[1] = {1, 30},
			[2] = {31, 40},
			[3] = {41, 50},
			[4] = {51, 150},
		},
		targets = 
		{
			-- 1- 30��
			[1] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 0,
				[LoopTaskTargetType.talk] = 60,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 0,
				[LoopTaskTargetType.mysteryBus] = 0,
				[LoopTaskTargetType.donate] = 50,
			},
			-- 31 - 40 ��
			[2] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 30,
				[LoopTaskTargetType.mysteryBus] = 50,
				[LoopTaskTargetType.donate] = 50,
			},
			--41- 50��
			[3] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 40,
				[LoopTaskTargetType.mysteryBus] = 40,
				[LoopTaskTargetType.donate] = 40,
			},
			--51- 150��
			[4] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 60,
				[LoopTaskTargetType.talk] = 30,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 50,
				[LoopTaskTargetType.mysteryBus] = 30,
				[LoopTaskTargetType.donate] = 40,
			},
		},
		-- ��ʽ����
		formulaRewards =
		{
                        --��ɫ����
			[TaskRewardList.player_xp] = MasterRewardFormula.addXp,
			--�������
			[TaskRewardList.player_tao] = MasterRewardFormula.addTao,
			--����Ǳ��
			[TaskRewardList.player_pot] = MasterRewardFormula.addPot,
			--����
			[TaskRewardList.subMoney] = MasterRewardFormula.addSubMoney,
		},
		-- ��Ʒ����
		itemRewards =
		{
			-- �ȼ�����
			[1] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[2] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[3] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[4] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
		},
	},
	[10006] = 
	{
		name = "ʦ������",
		startDialogID = nil,
		-- ������ʦ������
		taskType2 = TaskType2.Master,
		level = {20, 150},
		school = SchoolType.PLG,
		startNpcID = 20007,
		loop = 10,
		-- �����ȷ����ÿ�գ�����ÿ�ܵġ�
		period = TaskPeriod.day,
		-- �����ʾ����
		levelFlag = true,
		targetLevelSection =
		{
			[1] = {1, 30},
			[2] = {31, 40},
			[3] = {41, 50},
			[4] = {51, 150},
		},
		targets = 
		{
			-- 1- 30��
			[1] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 0,
				[LoopTaskTargetType.talk] = 60,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 0,
				[LoopTaskTargetType.mysteryBus] = 0,
				[LoopTaskTargetType.donate] = 50,
			},
			-- 31 - 40 ��
			[2] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 60,
				[LoopTaskTargetType.partrolScript] = 50,
				[LoopTaskTargetType.escort] = 0,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 30,
				[LoopTaskTargetType.mysteryBus] = 50,
				[LoopTaskTargetType.donate] = 50,
			},
			--41- 50��
			[3] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 40,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 40,
				[LoopTaskTargetType.partrolTalk] = 40,
				[LoopTaskTargetType.mysteryBus] = 40,
				[LoopTaskTargetType.donate] = 40,
			},
			--51- 150��
			[4] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 60,
				[LoopTaskTargetType.talk] = 30,
				[LoopTaskTargetType.buyItem] = 40,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 60,
				[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 50,
				[LoopTaskTargetType.mysteryBus] = 30,
				[LoopTaskTargetType.donate] = 40,
			},
		},
		-- ��ʽ����
		formulaRewards =
		{
                        --��ɫ����
			[TaskRewardList.player_xp] = MasterRewardFormula.addXp,
			--�������
			[TaskRewardList.player_tao] = MasterRewardFormula.addTao,
			--����Ǳ��
			[TaskRewardList.player_pot] = MasterRewardFormula.addPot,
			--����
			[TaskRewardList.subMoney] = MasterRewardFormula.addSubMoney,
		},
		-- ��Ʒ����
		itemRewards =
		{
			-- �ȼ�����
			[1] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[2] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[3] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
			[4] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1051015, itemNum = 1},
				},
			},
		},
	},
	-- ��������
	[10007] = 
	{
		name = "��������",
		startDialogID = nil,
		taskType2 = TaskType2.Trial,
		level = {40, 150},
		school = nil,
		startNpcID = 27150,
		loop = 200,
		-- �����ȷ����ÿ�գ�����ÿ�ܵġ�
		period = TaskPeriod.week,
		targets = 
		{
			[1] =
			{
			    -- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 60,		            -- ����ս��
				[LoopTaskTargetType.talk] = 40, 		            -- ��NPC�Ի�
				[LoopTaskTargetType.buyItem] = 50,		            -- �Ͻ���Ʒ
				[LoopTaskTargetType.catchPet] = 50,		            -- ��׽����
				[LoopTaskTargetType.partrolScript] = 60,	        -- ����ս��
				[LoopTaskTargetType.deliverLetters] = 40,		    -- ����
				[LoopTaskTargetType.brightMine] = 60,		        -- ��ս����
				--[LoopTaskTargetType.puzzle]		=100,
			}
		},
		-- ��ʽ����
		formulaRewards =
		{
                        --��ɫ����
			[TaskRewardList.player_xp] = TrialRewardFormula.addXp,
			--��ɫ����
			[TaskRewardList.player_tao] = TrialRewardFormula.addTao,
			--��ɫǱ��
			[TaskRewardList.player_pot] = TrialRewardFormula.addPot,
			--����
			[TaskRewardList.subMoney] = TrialRewardFormula.addSubMoney,
			--���ﾭ��
			[TaskRewardList.pet_xp] = TrialRewardFormula.addPetXp,
			--�������
			[TaskRewardList.pet_tao] = TrialRewardFormula.addPetTao
		},
		-- ��Ʒ����
		itemRewards =
		{
			-- �ȼ�����
			[1] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[20] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[30] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[40] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[50] = 
				{
					[1] = {itemID = 1031011, itemNum = 1},----������
				},
				[60] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[70] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[80] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[90] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[100] = 
				{
					[1] = {itemID = 1031011, itemNum = 1},----������
				},
				[110] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[120] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[130] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[140] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[150] = 
				{
					[1] = {itemID = 1031011, itemNum = 1},----������
				},
				[160] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[170] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[180] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[190] = 
				{
					[1] = {itemID = 1031010, itemNum = 1},----ͭ����
				},
				[200] = 
				{
					[1] = {itemID = 1031012, itemNum = 1},----����
				},
			},
		},
	},
	-- �������
	[10008] = 
	{
		name = "�������",
		startDialogID = nil,
		taskType2 = TaskType2.Heaven,
		level = {30, 150},
		teamType = TeamType.team,
		condition = {teamerCount = 2, levelDiff = 10},
		school = nil,
		startNpcID = 29008,		
		loop = 10,
		period = TaskPeriod.day,
		targetLevelSection =
		{
			[1] = {1, 150},
		},
		targets = 
		{
			[1] =
			{
				[LoopTaskTargetType.script] = 50,		            -- ����ս��
			},
		},
		itemRewards =
		{
			-- �ȼ�����
			[1] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1031013, itemNum = 1},
				},
			},
		}
	},
	-- �������
	[10009] = 
	{
		name = "�������",
		startDialogID = nil,
		taskType2 = TaskType2.Faction,
		level = {20, 60},
		--team = false,
		school = nil,
		startNpcID = 30817,		
		loop = 10,
		period = TaskPeriod.day,
		targetLevelSection =
		{
			[1] = {1, 150},
		},
		targets = 
		{
			[1] =
			{
				[LoopTaskTargetType.paidEquip] = 100,
			},
		},
		normalRewards =
		{
			-- �ﹱ����
			[TaskRewardList.faction_cont] = 50,
			-- ����ʽ�
			[TaskRewardList.faction_money] = 50,
			-- �������
			[TaskRewardList.faction_Fame] = 50
		},
		formulaRewards =
		{	-- ���� ��ʽ
			[TaskRewardList.player_tao] = FactionRewardFormula.addTao,
			-- Ǳ�� ��ʽ
			[TaskRewardList.player_pot] = FactionRewardFormula.addPot,
			-- ����
			[TaskRewardList.pet_tao] = FactionRewardFormula.addTao,
		},
	},

	[10020] = 
	{
		name = "ʦ������",
		startDialogID = nil,
		-- ������ʦ������
		taskType2 = TaskType2.Master,
		level = {20, 150},
		school = SchoolType.QYD,
		startNpcID = 29040,
		loop = 10,
		-- �����ȷ����ÿ�գ�����ÿ�ܵġ�
		period = TaskPeriod.day,
		-- �����ʾ����
		levelFlag = true,
		targetLevelSection =
		{
			[1] = {1, 50},
			[2] = {51, 100},
			[3] = {101, 150},
		},
		targets = 
		{
			-- 1- 50��
			[1] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				--[LoopTaskTargetType.script] = 50,
				--[LoopTaskTargetType.talk] = 50,
				--[LoopTaskTargetType.buyItem] = 50,
				--[LoopTaskTargetType.catchPet] = 50,
				--[LoopTaskTargetType.partrolScript] = 50,
				--[LoopTaskTargetType.escort] = 50,
				--[LoopTaskTargetType.deliverLetters] = 50,
				--[LoopTaskTargetType.partrolTalk] = 50,
				[LoopTaskTargetType.mysteryBus] = 50,
				--[LoopTaskTargetType.donate] = 50,

			},
			-- 50 - 100 ��
			[2] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 50,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 50,
				--[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 50,
				[LoopTaskTargetType.mysteryBus] = 50,
				[LoopTaskTargetType.donate] = 50,
			},
			--100- 160��
			[3] =
			{
				-- ���������Եȼ��ֶε�Ȩ��
				[LoopTaskTargetType.script] = 50,
				[LoopTaskTargetType.talk] = 50,
				[LoopTaskTargetType.buyItem] = 50,
				[LoopTaskTargetType.catchPet] = 50,
				[LoopTaskTargetType.partrolScript] = 50,
				--[LoopTaskTargetType.escort] = 50,
				[LoopTaskTargetType.deliverLetters] = 50,
				[LoopTaskTargetType.partrolTalk] = 50,
				[LoopTaskTargetType.mysteryBus] = 50,
				[LoopTaskTargetType.donate] = 50,
			}
		},
		-- ��ʽ����
		formulaRewards =
		{
			[TaskRewardList.player_xp] = RewardFormula.addXp,
		},
		-- ��Ʒ����
		itemRewards =
		{
			-- �ȼ�����
			[1] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1012018, itemNum = 1},
				},
			},
		},
		--�̶�����
		normalRewards =
		{
			[TaskRewardList.player_tao] = 1000,
		},
	},

	-- ѹ�����ר��
	[1] = 
	{
		name = "ѹ������",
		startDialogID = nil,
		taskType2 = TaskType2.Master,
		level = {1, 150},
		school = nil,
		startNpcID = 1,
		loop =1000,
		-- �����ȷ����ÿ�գ�����ÿ�ܵġ�
		period = TaskPeriod.day,
		-- �����ʾ����
		levelFlag = true,
		targetLevelSection =
		{
			[1] = {1, 150},
		},
		targets = 
		{
			[1] =
			{
				[LoopTaskTargetType.brightMine] = 100,		            -- ����ս��
			},
		},
		itemRewards =
		{}
	},

	[10010] =
	{
		name = "��������",
		taskType2 = TaskType2.Heaven,
		-- �ȼ����ƣ�
		level = {35, 150},
		-- ���Ե��ˣ��������
		teamType = TeamType.special,
		-- ��ӵȼ���
		condition = {levelDiff = 10},
		startNpcID = 29008,		
		loop = 10,
		period = TaskPeriod.day,
		targetLevelSection =
		{
			[1] = {1, 150},
		},
		targets = 
		{
			[1] =
			{
				[LoopTaskTargetType.script] = 50,		            -- ����ս��
			},
		},

		-- ��Ʒ����
		itemRewards =
		{
			-- �ȼ�����
			[1] =
			{	
				-- ����
				[10] = 
				{
					-- ֧�ֶ�����Ʒ,�͸���
					[1] = {itemID = 1012018, itemNum = 1},
				},
			},
		},
	},
}