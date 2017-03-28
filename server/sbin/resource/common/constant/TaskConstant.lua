-- common.constant.TaskConstant.lua

TaskRewardList =
{
	player_xp		= 1,	--��Ҿ���
	pet_xp			= 2,	--���ﾭ��
	money			= 3,	--����
	subMoney		= 4,	--����
	cashMoney		= 5,
	goldCoin		= 6,
	player_tao		= 7,	--�������
	pet_tao			= 8,	--�������
	player_pot		= 9,	--����Ǳ��

	faction_cont	= 10,	--�ﹱ
	faction_money	= 11,	--����ʽ�
	faction_Fame	= 12,	--�������

}

--����״̬
TaskStatus = {
	Active          = 0x01, --���ڽ���
	Done            = 0x02, --���
	Failed          = 0x04, --ʧ��
	Finished        = 0x08, --���,�ѽ���
	Deleted         = 0x10, --ɾ��������
	HalfDone		= 0x20, --Ұ���ͼ�����׵�����״̬
	Collection		= 0x40, --����״̬֮�ɼ�������
}

----����2
TaskType2 = {
	NewBie			= 0x01,		--ָ������
	Main			= 0x02,		--��������
	Faction			= 0x04,		--�������
	Active			= 0x08,		--�����
	Daily			= 0x10,		--ÿ��
	Copy			= 0x20,		--����
	Sub				= 0x40,		--֧��
	Random			= 0x80,		--��������
	SchoolExercise	= 0x100,	--��������
	Master			= 0x200,	--ʦͽ����
	Challenge		= 0x400,	--��ս����
	Trial			= 0x800,	--��������
	Heaven			= 0x1000,	--�������
	Babel			= 0x2000,	--ͨ��������
	Puzzle			= 0x4000,	--ƴͼ����

}

-- ָ��������
GuideType = {
	Talk			= 0x01,		--ָ������
	DoTask			= 0x02,		--��������
}

--ѭ������Ŀ������
LoopTaskTargetType =
{
	script				= 1,		-- �ű�ս��
	talk				= 2,		-- ��NPC�Ի�
	buyItem				= 3,		-- ����
	catchPet			= 4,		-- ��׽����
	partrolScript		= 5,		-- Ѳ��ս��
	escort				= 6,		-- ����
	deliverLetters		= 7,		-- ����
	recovery			= 8,		-- ��̬�ռ�
	partrolTalk			= 9,		-- Ѳ�߶Ի�
	mysteryBus			= 10,		-- ��������
	donate				= 11,		-- ����
	paidEquip			= 12,		-- �Ͻ�װ��
	brightMine			= 13,		-- ����
	-- ���治������
	talkScript			= 14,		-- �Ի�ս��
	itemTalk			= 15,		-- ��Ʒս��

	collectMaterials	= 16,		-- �ռ�����
	puzzle				= 17,		-- ƴͼ�淨
}

CanRecetiveLoopTaskLvl = 
{
	[1] = 20,
	[2] = 30,
	[3] = 40,
}

-- ��������
TeamType =
{
	-- ����
	single = 1,
	-- ���
	team = 2,
	-- ���ˣ���Ӷ�����
	special = 3,
}
