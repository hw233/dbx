--[[constant.lua
������
	ʵ�峣��
	--misc.constant�ű����ļ�
]]
SocialWorldID = 200

RightPos4Error = {mapID = 10,x = 200 ,y = 198,}
PlayerBornPos  = {mapID = 8,x = 95 ,y = 220}
--��ҵ�״̬
PlayerStates =
{
	Normal          = 0x01, --��ͨվ��
	Team            = 0x02, --���
	Follow          = 0x04, --����
	AutoMeet		= 0x08,	--�Զ�����
	Fight           = 0x10, --ս��
	P2NTrade        = 0x20, --����
	P2PTrade		= 0x40,--P2P����
	FightAndTeam	= 0x800,--ս�������
	P2PTradeAndTeam	= 0x100,--P2p���׺����
}

--���ɳ�ʼģ������
SchoolModelSwitch = {
	[PlayerSexType.Females] = {
		[SchoolType.QYD] = 2,
		[SchoolType.JXS] = 8,
		[SchoolType.ZYM] = 6,
		[SchoolType.YXG] = 10,
		[SchoolType.TYD] = 4,
		[SchoolType.PLG] = 12,
	},
	[PlayerSexType.Males] = {
		[SchoolType.QYD] = 1,
		[SchoolType.JXS] = 7,
		[SchoolType.ZYM] = 5,
		[SchoolType.YXG] = 9,
		[SchoolType.TYD] = 3,
		[SchoolType.PLG] = 11,
	},
}

MemCollectPeriod = 60
OnlineReason = {
	Normal = 1,
	Reattach = 2,
	Relogin	 = 3,
}


require "misc.EntityConstant"
require "misc.ActivityConstant"
require "misc.EctypeConstant"
require "misc.ItemConstant"
require "misc.EquipPlayingConstant"
require "misc.HandlerConstant"
require "misc.RideConstant"
require "misc.TeamConstant"
require "misc.TaskConstant"
require "misc.DialogConstant"
require "misc.PKConstant"
require "misc.BuffConstant"
require "misc.TradeConstant"
require "misc.SkillConstant"
require "misc.MindConstant"
require "misc.LifeSkillConstant"
require "misc.TreasureConstant"
require "misc.EffectConstant"
require "misc.FightConstant"
require "misc.PractiseConstant"
require "misc.TransportationConstant"
require "misc.SocialServerConstant"
require "misc.MeetMonsterConstant"
require "misc.PetDepotConstant"
require "misc.ActivityConstant"
require "misc.GoldHuntZoneConstant"





