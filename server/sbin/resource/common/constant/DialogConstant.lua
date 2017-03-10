-- common.constant.DialogConstant.lua

--�Ի���������
DialogCondition =
{
	Level = 1,				--�ȼ�����
	HasTask = 2,			--��������
	School = 3,				--��������
	Team = 4,				--�������
	Currency = 5,			--��������
	Attr	= 6,			--ս������
	HasTasks = 7,			--���ж������(�໥֮���ǻ��ϵ)
	Faction = 8,			--��������
	CheckOwner = 9,			--npc���������
	LoopTaskTalk = 10,
	HasFactionTask = 11,
	NotHasFactionTask = 12,
	CheckTaskTeam = 13,
	CheckLoopTask = 14,
	HasTask_1 = 15,
	CheckLoopTasks = 16,
	CheckBeastBless = 17,
	Time	= 18,
	PlayerCountInGoldHuntMap = 19,
	DekaronSchoolActivity = 20,
	HaveActivityTarget = 21,
	DekaronSchoolActivityTarget = 22,
	TkillMonster = 23,
	DailyTaskTimes = 24,
	MatchTaskNpc = 25,
	NoMatchTaskNpc = 26,
	MatchTaskState = 27,

}

--�Ի�����
DialogType =
{
	HasOption	= 1,		--��ѡ��Ի�
	FunctionOption = 2,		--�������ͶԻ�
	NotOption	= 3,		--��ѡ��Ի�
	Error	= 4,			--����Ի�
}

--�Ի�ѡ���
DialogActionType =
{
	SwithScene			= 1,		-- �л�����
	Goto				= 2,		-- ��ת�Ի�
	EnterFight			= 3,		-- ����ս��
	EnterScriptFight	= 4,		-- ����ű�ս��
	EnterEctype			= 5,		-- ���븱��
	RingEctype			= 6,		-- ��������1
	EnterRingEctype		= 7,		-- ��������2
	EnterPVPFight		= 8,		-- ����pvpս��
	FrozenBuff			= 9,		-- ����˫�����鵤
	CancelFrozenBuff	= 10,		-- ȡ������˫�����鵤
	RecetiveTask		= 11,		-- ����һ������
	RequestNpcTrade		= 12,		-- ����Npc���ܽ���
	GetItem				= 13,		-- npc�Ի������Ʒ
	FinishTask			= 14,		-- ģ�⽻����
	DoneTask			= 15,		-- ģ���������
	AutoTrace			= 16,		-- �Զ�Ѱ·
	RecoverMaxHp        = 17,       -- �ָ���ɫ���Ѫ��
	FlyEffect			= 18,       -- �ɽ�����
	CloseDialog			= 19,		-- �رնԻ�
	UITip				= 20,		-- UI��ʾ
	OpenUI              = 21,       -- ��UI
	Gotos				= 22,       -- ��ת��Ի�
	RepairPet			= 23,		-- �޸���ǰ��ս����
	RepairAllPet		= 24,		-- �޸����г���
	PaidItem			= 25,		-- �Ͻ���Ʒ
	PaidPet				= 26,		-- �Ͻɳ���
	MayTaskFight		= 27,		-- ���ܽ���ս���������������
	BuyItem				= 28,		-- �Ի�����Ʒ
	CostMoney			= 29,		-- ���Ѱ����������
	Fight				= 30,		-- ����ս�����������
	DeductMoney			= 31,		-- �Ի��۳���ҽ�Ǯ
	openLookTaskWin		= 32,		-- ѭ������򿪴���
	EnterTreasureFight	= 33,		-- ���б������͵Ľű�ս��
	ShowFactionList		= 34,
	RemoveItem			= 35,		-- �Ƴ���Ʒ
	CreateFaction		= 36,
	EnterCatchPetFight	= 37,		-- ����ս��
	EnterCatchPetMap	= 38,		-- ����ץ�賡��
	EnterFactionScene	= 40,		-- ������ɳ���
	ContributeFaction	= 41,		-- ���ɾ���
	OpenEquipAppraisal	= 42,		-- װ������
	ExchangeProps		= 43,		-- �һ�����
	RecetiveSpecialTask = 44,		-- �����������
	ConsumeRecetiveTask	= 45,		-- ���Ĳ��������� {�������ĵ������ڲ������� type = "money"--����,"subMoney--����"}
	FinishLoopTask		= 46,		-- ���ѭ�����񣬲����ܹ��Զ�������
	AddFollowNpc		= 47,		-- �ı�����״̬
	EnterBeastFight		= 48,		-- 
	EnterGoldHuntZone   = 49,		-- �����Խ�
	GoldHuntFight		= 50,		-- �Խ�ս��
	GoldHuntCommit		= 51,		-- �Խ��ύ����

	GetTheActivity		= 52,		-- ��ȡ�
	GiveUpActivity		= 53,		--�������ɴ��ػ
	DekaronSchoolFight	= 54,		-- ��ս�Ŀ��
	RecetiveTasks		= 55,		-- ͬʱ���ܶ������

	ReceiveBabelTask	= 56,		-- �����������
	EnterBabel			= 57,		-- ����ͨ����
	EnterNextLayer		= 58,		-- ��ս��һ��
	FlyUp				= 59,		-- ����
	ChangeRewardType	= 60,		-- ������������
	ChangeTarget		= 61,		-- �ı�����Ŀ��
	OpenItemRepairWin = 62,			--װ������
}

--�Ի���ͼ������
DialogIcon = {
	Talk            = 0x00, --����(����)
	Help            = 0x01, --����(����)
	Trade           = 0x02, --����(Ǯ����)
	Box             = 0x03, --�ֿ�(����)
	Function        = 0x04, --����NPC����(����)
	Task1           = 0x05, --(�����ظ�)�ɽ�����(��̾��-��ɫ)
	Task2           = 0x06, --(���ظ�)�ɽ�����(��̾��-��ɫ)
	Task3           = 0x07, --���ڽ���(�ѽ�)����(�ʺ�-��ɫ)
	Task4           = 0x08, --(�����)�ɽ�����(�ʺ�-��ɫ)
}
