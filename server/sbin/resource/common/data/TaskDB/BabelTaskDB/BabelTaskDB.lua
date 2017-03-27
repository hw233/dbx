--[[BabelTaskDB.lua
	?ͨ������������
--]]
BabelTaskDB = 
{
	[20001] = 
	{
		name = "?ͨ����",
		taskType2 = TaskType2.Babel,
		period = TaskPeriod.day,
		-- ��̬����Ŀ�꣬��������
		targets = --����Ŀ��û����{}(����ǰ����������[1][2][3])
		{
			[1] = {type="TbabelScript", param = {}},
		},
		triggers = 
		{
			[TaskStatus.Active] = 
			{
				{type = "challengeNpcTrace", param = {}},
			},
		},
		maxLayer = 200,
		-- 奖励公式
		formulaRewards =
		{
			[1] = 
			{
				--角色经验
				[TaskRewardList.player_xp] = BabelRewardFormula.addXp,
				-- 宠物
				[TaskRewardList.pet_xp] = BabelRewardFormula.addPetXp,
			},
			[2] =
			{
				--任务道行
				[TaskRewardList.player_tao] = BabelRewardFormula.addTao,
				-- 宠物
				-- 宠物道行
				[TaskRewardList.pet_tao] = BabelRewardFormula.addPetTao,
			},
		},
	},
}