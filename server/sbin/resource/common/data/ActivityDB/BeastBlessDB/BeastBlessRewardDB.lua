--[[BeastBlessRewardDB.lua
���޽���
]]
--[[
	playerExp	��ɫ����
	playerTao	��ɫ����
	subMoney	����
	pot			Ǳ��
	combatNum	ս��
	
	petExp		���ﾭ��
	petTao		�������
]]

tBeastBlessRewardDB = 
{	
	[1] = 
	{
		valueRewards = {
			playerExp = 100,
			money = 120,
			subMoney = 200,
			playerTao = 200,
			combatNum = 200,
			pot = 300,
			petExp = 300,
			petTao = 300,
		},
		items = {
			{itemID = 3031006, weight = 10},
			{itemID = 3062101, weight = 10},
		},
		specialItem = {itemID = 3062101}, --���影����Ʒ
	}
}