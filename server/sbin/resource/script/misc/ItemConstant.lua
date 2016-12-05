--[[ItemConstant.lua
������
	��Ʒϵͳ��������
]]

-- ���߷���
ItemClass =
{
	-- װ��
	Equipment  = 1,
	-- ҩƷ������װ������Ϸ���������Ҽ�ʹ�õĵ��߶�����ҩƷ
	Medicament = 2,
	-- ƾ֤������װ������Ϸ�����в����Ҽ�ʹ�õĵ��߶�����ƾ֤
	Warrant    = 3,
}

-- �������࣬���������������Ƿ���������ߣ��Ա�������񱳰����ͻ���������Tips����ʾ��־��
ItemSubClass =
{
	-- ����
	Material   = 1,
	-- ҩƷ
	Medicament = 2,
	-- ���ܵ���
	Function   = 3,
	-- �������
	Task       = 4,
	-- ս��Ʒ
	Trophy     = 5,
	-- ����
	ChangeCard = 6,
	-- ������
	SkillBook  = 7,
	-- ����
	Pack       = 8,
	-- �һ�Ʒ
	Exchange   = 9,
	-- ʳƷ
	Food       = 10,
	-- ��ϡƷ
	Treasure   = 11,
	--ͼֽ
	Drawing    = 12,
	--��ʯ
	Runes	   = 13,
	--��ʯ
	LingShi	   = 14,
	--������
	FlyingFlag = 15,
	--����
	Beast      = 16,
	-- ���絤
	LinglongPill= 17,
	-- �ҳϳ�
	reservePool = 18,
}

-- װ������
EquipmentClass =
{
	-- ����
	Weapon   = 1,
	-- ����
	Armor    = 2,
	-- ��Ʒ
	Adorn    = 3,
	-- ����
	Talisman = 4,
}

-- ��������
WeaponSubClass =
{
	-- ��
	Rod      = 1,
	-- ��
	Knife    = 2,
	-- ��
	Sword    = 3,
	-- ��
	Fan      = 4,
	-- ��
	Crossbow = 5,
	-- ǹ
	Spear    = 6,
}

-- ������������
WeaponSubClassSchool = 
{
	[WeaponSubClass.Knife]		= "ǬԪ��",
	[WeaponSubClass.Spear]		= "��ϼɽ",
	[WeaponSubClass.Crossbow]	= "������",
	[WeaponSubClass.Sword]		= "������",
	[WeaponSubClass.Fan]		= "��Դ��",
	[WeaponSubClass.Rod]		= "������",
}

-- ������������ID
WeaponSubClassSchoolID = 
{
	[WeaponSubClass.Knife]		= SchoolType.QYD,
	[WeaponSubClass.Spear]		= SchoolType.JXS,
	[WeaponSubClass.Crossbow]	= SchoolType.ZYM,
	[WeaponSubClass.Sword]		= SchoolType.YXG,
	[WeaponSubClass.Fan]		= SchoolType.TYD,
	[WeaponSubClass.Rod]		= SchoolType.PLG,
}

-- ��������
ArmorSubClass =
{
	-- ͷ��
	Helmet   = 7,
	-- �¼�
	Clothes  = 8,
	-- Ь��
	Shoes    = 9,
	-- ����
	Trousers = 10,
	-- ����
	Shoulder = 11,
}

-- ��Ʒ����
AdornSubClass =
{
	-- ��ָ
	Ring     = 12,
	-- ����
	Amulet   = 13,
	-- ����
	Necklace = 14,
}

-- װ�����͸�װ������Ʒ��������Ӧ��
EquipType_ItemGrid =
{
	[EquipmentClass.Adorn] =
	{
		[AdornSubClass.Necklace] = 1,
		[AdornSubClass.Amulet] = 2,
		[AdornSubClass.Ring] = {9,10},
	},
	[EquipmentClass.Armor] =
	{
		[ArmorSubClass.Shoulder] = 3,
		[ArmorSubClass.Helmet] = 4,
		[ArmorSubClass.Clothes] = 5,
		[ArmorSubClass.Trousers] = 6,
		[ArmorSubClass.Shoes] = 8,
	},
	[EquipmentClass.Weapon] =
	{
		[WeaponSubClass.Rod] = 7,
		[WeaponSubClass.Knife] = 7,
		[WeaponSubClass.Sword] = 7,
		[WeaponSubClass.Fan] = 7,
		[WeaponSubClass.Crossbow] = 7,
		[WeaponSubClass.Spear] = 7,
	},
}

-- ������Ӧװ�����ĸ�������
WeaponGridIndex = 7

-- װ����ɫ���������Ŀ
EquipBlueAttrMaxNum = 3

-- ���ж��ٳ�ս������һ���;�
ConsumeDurabilityNeedFightTimes = 50

-- װ��δ�����ı�־
EquipNotIdentityFlag = 10000

-- �ֿ��Ǯ�����ֵ
DepotSaveMoneyMax = 999999999

-- ����Ʒ��
ItemQuality =
{
	-- δ����
	NoIdentify = 0,
	-- ��
	White  = 1,
	-- ��
	Blue   = 2,
	-- ��
	Pink = 3,
	-- ��
	Gold   = 4,
	-- ��
	Green  = 5,
}

-- ���߼۸�����
ItemPriceType =
{
	-- ����
	Money		= 1,
	-- ����
	BindMoney	= 2,
	--�ﹱ
	FacContrib	= 3,
}

-- ҩƷ��������
MedicamentReactType =
{
	-- ����Buff
	AddBuff            = 1,
	-- ִ��Lua����
	ExeLuaFun          = 2,
	-- �ı�����
	ChangeHp           = 3,
	-- �ı䷨��
	ChangeMp           = 4,
	-- �ı������ͷ���
	ChangeHpMp         = 5,
	-- �ı�ŭ��
	ChangeAnger        = 6,
	-- �ı�PKֵ
	ChangePk           = 7,
	-- �ı����
	ChangeBindMoney    = 8,
	-- �ı�����
	ChangeMoney        = 9,
	-- �ı侭��
	ChangeExp          = 10,
	-- �ı����
	ChangeCashMoney    = 11,
	-- �ı�Ԫ��
	ChangeGoldCoin     = 12,
	-- �ı����
	ChangeTao          = 13,
	-- �ı�Ǳ��
	ChangePotential    = 14,
	-- �ı�����
	ChangeExpoint      = 15,
	-- �ı�ս��
	ChangeCombatNum    = 16,
	-- �ı�ﹱ
	ChangeContribution = 17,
	-- �ı�����
	ChangeVigor        = 18,
	-- �ı�����ҳ�
	ChangePetLoyalty   = 19,
	-- �ı��������
	ChangePetLife      = 20,
	-- ʹ��������
	UseHpPool          = 21,
	-- ʹ�÷�����
	UseMpPool          = 22,
	-- �򿪿ͻ���UI
	OpenClientUI       = 23,
	-- ȡ��buff
	CancelBuff         = 24,
	-- ��ӳ���
	AddPet             = 25,
	-- �������
	AddRide            = 26,
	-- �������Ե�
	ChangeAllAttr      = 27,
	-- ��������ϴ��
	ChangeAllPhase     = 28,
	-- �ı���������ֵ
	ChangeRideVigor    = 29,
	-- �������,�ٽ�һ��ָ����������
	FinishTask         = 30,
	-- �򿪲ر�ͼ
	OpenTreasure	   = 31,
	-- ��ӳ��＼��
	AddPetSkill		   = 32,
	-- ���һ������
	AddTask			   = 33,
	-- ���һ������
	CompleteTask	   = 34,
	--�ı�����ҳ϶Ȳ����buff
	ChangeLoyaltyAndAddBuff   = 35,
	--�ı����������buff
	ChangeHpAndAddBuff   = 36,
	--�ı䷨�������buff
	ChangeMpAndAddBuff   = 37,
}

-- ҩƷʹ��״̬
MedicamentUseState =
{
	-- ������
	NonUse  = 1,
	-- ��ͨ״̬��
	General = 2,
	-- ս������
	Fight   = 3,
	-- ������
	All     = 4,
}

-- ҩƷ���ö�������
MedicamentReactTarget =
{
	-- �Լ�
	Self   = 1,
	-- ����
	Pet    = 2,
	-- �ѷ���λ
	Friend = 3,
	-- �з���λ
	Enemy  = 4,
	--����
	Ride   = 5,
	--��������
	SelfAndPet = 6,
}

-- ��������ID
PackContainerID =
{
	-- ������
	Packet = 1,
	-- �ֿ���
	Depot  = 2,
	-- װ����
	Equip  = 3,
	-- ���ܻع���
	Shelf  = 4,
	--��ҽ���
	Trade  = 5
}

-- ��ӵ��߽��
AddItemsResult =
{
	-- ��ӵ��߳ɹ�
	Succeed     = 1,
	-- ��ӵ��߳ɹ�����Դ������Ҫ���٣�������
	SucceedPile = 2,
	-- ������Ч
	SrcInvalid  = 3,
	-- λ����Ч
	LocInvalid  = 4,
	-- ��������
	Full        = 5,
	-- ʧ��
	Failed      = 6
}

-- �Ƴ����߽��
RemoveItemsResult =
{
	-- �Ƴ����߳ɹ�
	Succeed      = 1,
	-- �Ƴ����߳ɹ�����Դ������Ҫ���٣�������
	SucceedClean = 2,
	-- �����Ƿ�
	NumInvalid   = 3,
	-- ��Ʒ��Ч
	SrcInvalid   = 4,
	-- ʧ��
	Failed       = 5
}

-- �����İ�������
PacketPackIndex =
{
	-- Ĭ�ϰ���
	Default      = 1,
	-- �ȼ�����
	Level        = 2,
	-- VIP�������¿��û�ר�ð���
	VIP          = 3,
	-- �������
	Horse        = 4,
	-- �������
	Task         = 5,
	-- �������������Ժ���չ��������
	MaxNum       = 6
}

-- ��������Ĭ������
PacketPackDefaultCapacity = 24
-- ���������ȼ�������Ҫ�ĵȼ�
PacketLevelPackNeedLevel = 40

-- �����������ͣ�����Ʒ�������������
PacketPackType =
{
	-- ���������
	Normal = 1,
	-- �������
	Task   = 2,
}

-- �ֿ�İ�������
DepotPackIndex =
{
	-- ��һ������
	First  = 1,
	-- �ڶ�������
	Second = 2,
	-- �������������Ժ���չ��������
	MaxNum = 3
}

--npc����
ShelfPackIndex = 
{
	-- Ĭ�ϰ���
	Default = 1,
}
-- �ֿ��������
DepotMaxCapacity = 84
-- �ֿ�Ĭ������
DepotDefaultCapacity = 24
-- �ֿ�����������������ֿ�����
DepotPackCapacity = 42

--���ܵ��������
ShelfMaxCapacity = 12

--p2p���׻���
TradePackIndex = 
{
	--Ĭ�ϰ���
	Default =1,
}
-- p2p���׵�Ĭ������
TradeDefaultCapacity = 12

-- �ֿ��������ID
DepotExtendItemID = 1026004

-- װ����Ĭ������
EquipDefaultCapacity = 10

-- װ�����İ�������
EquipPackIndex =
{
	-- Ĭ�ϰ���
	Default = 1,
}

Bind = 1
UnBind = 0

