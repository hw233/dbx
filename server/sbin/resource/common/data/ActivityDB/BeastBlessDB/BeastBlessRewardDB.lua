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
		valueRewards =    ---����������ֵ������BeastBlessUtils.luaʵ�ֹ�ʽ���ã�����ҵȼ��йأ�
		{
			playerExp = 12500,
			subMoney = 25000,
			playerTao = 15,
			pot = 2500,
			petExp = 9500,
			petTao = 17,
		},
		items =   --��������״̬�µĸ߼����߽����������¼������һ��
		{
			{itemID = 1071018, weight = 10},
			{itemID = 1071040, weight = 10},
			{itemID = 3120003, weight = 10},
			{itemID = 3110143, weight = 10},
		},
		specialItem = {itemID = 3022002}, --��Ʊ�����影����Ʒ�����5������������ֻ�ܻ�����影����
	}
}