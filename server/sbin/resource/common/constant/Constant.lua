-- common.constant.lua

SchoolType = {
	PM      = 0x00,
	QYD     = 0x01,		-- ǬԪ???
	JXS     = 0x02,		-- ��ϼ???
	ZYM     = 0x03,		-- ����???
	YXG     = 0x04,		-- ����???
	TYD     = 0x05,		-- ��Դ???
	PLG     = 0x06,		-- ����???
}

--����Ա����???
PlayerSexType = {
	Females         = 0x00, --Ů???
	Males           = 0x01, --��???
}

--------------------------------------------------------------------------------
--��������
RewardSelectType = {
	All				=  1, --�Զ�ȫ��ѡ��
	System			=  2, --ϵͳ����ȸ���ѡ
	Player			=  3, --�����ѡ��ѡ����Ч��ϵͳ����ѡ���ȸ��ʣ�
	SysOdds			=  4, --ϵͳ�������oddsΪȨ����ѡ
	Team			=  5,--��Ա����
}

PhaseType =
{
	Wind    = 1, -- ???
	Thunder = 2, -- ???
	Ice     = 3, -- ???
	Fire    = 4, -- ???
	Soil    = 5, -- ???
	Poison  = 6, -- ???
	None    = 7, -- ???
}

-- �������Լӳ���???
MonAttrAddType =
{
	Value = 0, -- ��???
	Coffi = 1, -- �ӳ�
}

require "constant.FightConstant"
require "constant.BuffConstant"
require "constant.DialogConstant"
require "constant.EctypeConstant"
require "constant.ItemConstant"
require "constant.PetConstant"
require "constant.SkillConstant"
require "constant.TaskConstant"
require "constant.TreasureConstant"
require "constant.ExpConstant"
require "constant.ItemChangeAttrDef"
