--[[FactionEctypeDB.lua
	��ḱ������
--]]
-- ��ḱ�����ñ�
tFactionEctypeDB =
{
	[1] =
	{
		-- �����Ӹ���, �����ܼ�ѡ����Ǹ�����
		tAllEctypes =
		{
			-- ��1���Ӹ���
			[1] =
			{
				-- ��Ӧ�ĸ���ID
				EctypeID = 3001,
			},
			-- ��2���Ӹ���
			[2] =
			{
				-- ��Ӧ�ĸ���ID
				EctypeID = 3001,
			},
			-- ��3���Ӹ���
			[3] =
			{
				-- ��Ӧ�ĸ���ID
				EctypeID = 3001,
			},
			-- ��4���Ӹ���
			[4] =
			{
				-- ��Ӧ�ĸ���ID
				EctypeID = 3001,
			},
			[5] =
			{
				-- ��Ӧ�ĸ���ID
				EctypeID = 3001,
			},
			[6] =
			{
				-- ��Ӧ�ĸ���ID
				EctypeID = 3001,
			},
			[7] =
			{
				-- ��Ӧ�ĸ���ID
				EctypeID = 3001,
			},
		},
	},

}

for i = 1, table.getn(tFactionEctypeDB) do
	local factionEctypeGroup = tFactionEctypeDB[i].tAllEctypes
	for index = 1, table.getn(factionEctypeGroup) do
		local ectypeID = factionEctypeGroup[index].EctypeID
		if tEctypeDB[ectypeID] then
			tEctypeDB[ectypeID].factionEctypeID = i
		else
			-- ���õ��Ӹ���ID��tEctypeDB���Ҳ���
			local szErrorDes = "�����������Ӹ���ID���ô�����������ID = "..i.."����"..j.."�������飬��"..index.."���Ӹ���"
			print(szErrorDes)
		end
	end 
end