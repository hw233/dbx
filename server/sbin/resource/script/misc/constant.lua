--[[constant.lua
描述�?	实体常量
	--misc.constant脚本下文�?]]
--门派类别
SchoolType = {
	PM          = 0x00,
	QYD         = 0x01,
	JXS         = 0x02,
	ZYM         = 0x03,
	YXG         = 0x04,
	TYD         = 0x05,
	PLG         = 0x06,
}

--����Ա������
PlayerSexType = {
	Females         = 0x00, --Ů��
	Males           = 0x01, --����
}
RightPos4Error = {mapID = 10,x = 200 ,y = 198,}
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

require "misc.EntityConstant"
require "misc.EctypeConstant"
require "misc.ItemConstant"
require "misc.EquipPlayingConstant"
require "misc.HandlerConstant"
require "misc.RideConstant"
require "misc.TeamConstant"
