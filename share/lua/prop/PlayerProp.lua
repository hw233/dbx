--[[PlayerProp.lua
	玩家同步属性定义
]]

-- 格式
-- { propName,dataType,defaultValue,isPublic,isSync },
local PlayerProps = {
	{"PLAYER_SEX",					"BYTE",		0,		1,	0},	-- 玩家性别
	{"PLAYER_SCHOOL",				"BYTE",		0,		1,	0},	-- 玩家门派
	{"PLAYER_ACTION_STATE",			"SHORT",	0,		1,	0},	-- 图标
	{"PLAYER_EQUIP_WEAPON",			"STRING",	"",		1,	0},	-- 武器
	{"PLAYER_SEX",					"SHORT",	0,		1,	0},	-- 性别
	{"PLAYER_RIDE_INFO",			"STRING",	"",		1,	0},	-- 坐骑信息

	{"PLAYER_LEVEL",				"INT",		0,		1,	0},	-- 玩家等级
	{"PLAYER_XP",					"INT",		0,		0,	0},	-- 经验
	{"PLAYER_NEXT_XP",				"INT",		0,		0,	0},	-- 升级经验

	{"PLAYER_HP",					"INT",		0,		1,	0},	-- 生命
	{"PLAYER_MP",					"INT",		0,		1,	0},	-- 法力
	{"PLAYER_MAX_HP",				"INT",		0,		1,	0},	-- 最大生命
	{"PLAYER_MAX_MP",				"INT",		0,		1,	0},	-- 最大法力

	{"PLAYER_INC_MAX_HP",			"INT",		0,		1,	0},	-- 生命值上限加成
	{"PLAYER_INC_MAX_MP",			"INT",		0,		1,	0},	-- 法力值上限加成
	{"PLAYER_INC_MAX_HM",			"INT",		0,		1,	0},	-- 红蓝上限加成
	
	{"PLAYER_STR",					"INT",		0,		0,	0},	-- 武力
	{"PLAYER_INT",					"INT",		0,		0,	0},	-- 智力
	{"PLAYER_STA",					"INT",		0,		0,	0},	-- 根骨
	{"PLAYER_SPI",					"INT",		0,		0,	0},	-- 敏锐
	{"PLAYER_DEX",					"INT",		0,		0,	0},	-- 身法

	{"PLAYER_ATTR_POINT",			"INT",		0,		0,	0},	-- 玩家属性点
	{"PLAYER_PHASE_POINT",			"INT",		0,		0,	0},	-- 玩家相性点

	{"PLAYER_STR_POINT",			"INT",		0,		0,	0},	-- 武力加点
	{"PLAYER_INT_POINT",			"INT",		0,		0,	0},	-- 智力加点
	{"PLAYER_STA_POINT",			"INT",		0,		0,	0},	-- 根骨加点
	{"PLAYER_SPI_POINT",			"INT",		0,		0,	0},	-- 敏锐加点
	{"PLAYER_DEX_POINT",			"INT",		0,		0,	0},	-- 身法加点

	{"PLAYER_AT",					"INT",		0,		1,	0},	-- 物理攻击
	{"PLAYER_MT",					"INT",		0,		0,	0},	-- 法术攻击
	{"PLAYER_AF",					"INT",		0,		0,	0},	-- 物理防御
	{"PLAYER_MF",					"INT",		0,		0,	0},	-- 法术防御

	{"PLAYER_INC_AT",				"INT",		0,		1,	0},	-- 物理攻击力加成
	{"PLAYER_INC_MT",				"INT",		0,		0,	0},	-- 法术攻击力加成
	{"PLAYER_INC_AF",				"INT",		0,		0,	0},	-- 物理防御力加成
	{"PLAYER_INC_MF",				"INT",		0,		0,	0},	-- 法术防御力加成
	
	{"PLAYER_INC_AT_MT",			"INT",		0,		0,	0},	-- 全部攻击力加成
	{"PLAYER_INC_AF_MF",			"INT",		0,		0,	0},	-- 法术防御力加成
	
	{"PLAYER_SPEED",				"INT",		0,		0,	0},	-- 攻击速度
	{"PLAYER_HIT",					"INT",		0,		0,	0},	-- 命中
	{"PLAYER_DODGE",				"INT",		0,		0,	0},	-- 闪避
	{"PLAYER_CRITICAL",				"INT",		0,		0,	0},	-- 暴击
	{"PLAYER_TENACITY",				"INT",		0,		0,	0},	-- 抗暴

	{"PLAYER_INC_SPEED",			"INT",		0,		0,	0},	-- 速度加成
	{"PLAYER_INC_HIT",				"INT",		0,		0,	0},	-- 命中加成
	{"PLAYER_INC_DODGE",			"INT",		0,		0,	0},	-- 闪避加成
	{"PLAYER_INC_CRITICAL",			"INT",		0,		0,	0},	-- 暴击加成
	{"PLAYER_INC_TENACITY",			"INT",		0,		0,	0},	-- 抗暴加成
	
	{"PLAYER_WIN_PHASE",			"INT",		0,		0,	0},	-- 风
	{"PLAYER_THU_PHASE",			"INT",		0,		0,	0},	-- 雷
	{"PLAYER_ICE_PHASE",			"INT",		0,		0,	0},	-- 冰
	{"PLAYER_SOI_PHASE",			"INT",		0,		0,	0},	-- 土
	{"PLAYER_FIR_PHASE",			"INT",		0,		0,	0},	-- 火
	{"PLAYER_POI_PHASE",			"INT",		0,		0,	0},	-- 毒

	{"PLAYER_PHASE_POINT",			"INT",		0,		0,	0},	-- 相性点

	{"PLAYER_WIN_PHASE_POINT",		"INT",		0,		0,	0},	-- 风加点
	{"PLAYER_THU_PHASE_POINT",		"INT",		0,		0,	0},	-- 雷加点
	{"PLAYER_ICE_PHASE_POINT",		"INT",		0,		0,	0},	-- 冰加点
	{"PLAYER_SOI_PHASE_POINT",		"INT",		0,		0,	0},	-- 土加点
	{"PLAYER_FIR_PHASE_POINT",		"INT",		0,		0,	0},	-- 火加点
	{"PLAYER_POI_PHASE_POINT",		"INT",		0,		0,	0},	-- 毒加点

	{"PLAYER_INC_PHASE_AT",			"INT",		0,		0,	0},	-- 相性攻击加成
	{"PLAYER_INC_PHASE_RESIST",		"INT",		0,		0,	0},	-- 相性防御加成

	{"PLAYER_INC_WIN_AT",			"INT",		0,		0,	0},	-- 风攻击加成
	{"PLAYER_INC_THU_AT",			"INT",		0,		0,	0},	-- 雷攻击加成
	{"PLAYER_INC_ICE_AT",			"INT",		0,		0,	0},	-- 冰攻击加成
	{"PLAYER_INC_FIR_AT",			"INT",		0,		0,	0},	-- 火攻击加成
	{"PLAYER_INC_SOI_AT",			"INT",		0,		0,	0},	-- 土攻击加成
	{"PLAYER_INC_POI_AT",			"INT",		0,		0,	0},	-- 毒攻击加成

	{"PLAYER_INC_WIN_RESIST",		"INT",		0,		0,	0},	-- 风抗性加成
	{"PLAYER_INC_THU_RESIST",		"INT",		0,		0,	0},	-- 雷抗性加成
	{"PLAYER_INC_ICE_RESIST",		"INT",		0,		0,	0},	-- 冰抗性加成
	{"PLAYER_INC_FIR_RESIST",		"INT",		0,		0,	0},	-- 火抗性加成
	{"PLAYER_INC_SOI_RESIST",		"INT",		0,		0,	0},	-- 土抗性加成
	{"PLAYER_INC_POI_RESIST",		"INT",		0,		0,	0},	-- 毒抗性加成

	{"PLAYER_INC_TAUNT_HIT",		"INT",		0,		0,	0},	-- 嘲讽命中
	{"PLAYER_INC_SOPER_HIT",		"INT",		0,		0,	0},	-- 催眠命中
	{"PLAYER_INC_CHAOS_HIT",		"INT",		0,		0,	0},	-- 混乱命中
	{"PLAYER_INC_FREEZE_HIT",		"INT",		0,		0,	0},	-- 冻结命中
	{"PLAYER_INC_SILENT_HIT",		"INT",		0,		0,	0},	-- 沉默命中
	{"PLAYER_INC_TOXICOSIS_HIT",	"INT",		0,		0,	0},	-- 致毒命中

	{"PLAYER_INC_TAUNT_RESIST",		"INT",		0,		0,	0},	-- 嘲讽抵抗
	{"PLAYER_INC_SOPOR_RESIST",		"INT",		0,		0,	0},	-- 昏迷抵抗
	{"PLAYER_INC_CHAOS_RESIST",		"INT",		0,		0,	0},	-- 混乱抵抗
	{"PLAYER_INC_FREEZE_RESIST",	"INT",		0,		0,	0},	-- 冰冻抵抗
	{"PLAYER_INC_SILENT_RESIST",	"INT",		0,		0,	0},	-- 沉默抵抗
	{"PLAYER_INC_TOXICOSIS_RESIST",	"INT",		0,		0,	0},	-- 中毒抵抗

	{"PLAYER_MONEY",				"INT",		0,		0,	1},	-- 银两
	{"PLAYER_SUBMONEY",				"INT",		0,		0,	1},	-- 绑银
	{"PLAYER_DEPOTMONEY",			"INT",		0,		0,	1},	-- 仓库银两
	{"PLAYER_CASHMONEY",			"INT",		0,		0,	1},	-- 礼金
	{"PLAYER_GOLDCOIN",				"INT",		0,		0,	1},	-- 金元宝

	{"PLAYER_STAND_TAO",			"INT",		0,		0,	0},	-- 标准道行
	{"PLAYER_TAO",					"INT",		0,		0,	0},	-- 道行
	{"PLAYER_POT",					"INT",		0,		0,	0},	-- 潜能
	{"PLAYER_EXPOINT",				"INT",		0,		0,	0},	-- 历练值
	{"PLAYER_VIGOR",				"INT",		0,		0,	0},	-- 体力值
	{"PLAYER_ANGER",				"INT",		0,		0,	0},	-- 怒气值
	{"PLAYER_COMBAT",				"INT",		0,		0,	0},	-- 战绩
	{"PLAYER_KILL",					"INT",		0,		0,	0},	-- 杀气
	{"PLAYER_MAX_PET",				"INT",		3,		0,	0},	-- 最大宠物数

	{"PLAYER_MAX_VIGOR",			"INT",		0,		0,	0},	-- 最大怒气值
	
	{"PLAYER_INC_TAUNT_HIT",		"INT",		0,		0,	0},	-- 嘲讽命中加成
	{"PLAYER_INC_SOPER_HIT",		"INT",		0,		0,	0},	-- 催眠命中加成
	{"PLAYER_INC_CHAOS_HIT",		"INT",		0,		0,	0},	-- 混乱命中加成
	{"PLAYER_INC_FREEZE_HIT",		"INT",		0,		0,	0},	-- 冻结命中加成
	{"PLAYER_INC_SILENT_HIT",		"INT",		0,		0,	0},	-- 沉默命中加成
	{"PLAYER_INC_TOXICOSIS_HIT",	"INT",		0,		0,	0},	-- 下毒命中加成

	{"PLAYER_INC_TAUNT_RESIST",		"INT",		0,		0,	0},	-- 嘲讽抵抗加成
	{"PLAYER_INC_SOPOR_RESIST",		"INT",		0,		0,	0},	-- 催眠抵抗加成
	{"PLAYER_INC_CHAOS_RESIST",		"INT",		0,		0,	0},	-- 嘲讽抵抗加成
	{"PLAYER_INC_FREEZE_RESIST",	"INT",		0,		0,	0},	-- 冰冻抵抗加成
	{"PLAYER_INC_SILENT_RESIST",	"INT",		0,		0,	0},	-- 沉默抵抗加成
	{"PLAYER_INC_TOXICOSIS_RESIST",	"INT",		0,		0,	0},	-- 中毒抵抗加成
	
	{"PLAYER_TIREDNESS",			"INT",		0,		0,	0},	-- 活力值
	{"PLAYER_PRACTISE",				"INT",		0,		0,	0},	-- 修行值
	{"PLAYER_PRACTISECOUNT",		"INT",		0,		0,	0},	-- 修行总值
	{"PLAYER_STOREXP",				"INT",		0,		0,	0},	-- 存储经验
	{"PLAYER_GOLD_HUNT_MINE",		"SHORT",	1,		1,	1},	-- 在猎金场所得矿量
}

InitPropSet(eClsTypePlayer,PlayerProps)

