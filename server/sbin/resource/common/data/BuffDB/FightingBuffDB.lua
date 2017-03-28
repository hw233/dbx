--[[FightingBuffDB.lua
描述：
	战斗内Buff配置
]]

tFightingBuffDB = 
{
	[1] = 
	{
		ID = 1,
		name = "金霞山变身-加防",
		kind = BuffKind.JXSTrans,
		desc = "降低物理攻击力，增加全部防御力",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1269,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 1,
		effects = {{EffectType.ChangeAt,12},{EffectType.ChangeAllf,11},},
		},
	[2] = 
	{
		ID = 2,
		name = "金霞山变身-加攻",
		kind = BuffKind.JXSTrans,
		desc = "降低全部防御力，增加物理攻击力",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1270,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 1,
		effects = {{EffectType.ChangeAt,10},{EffectType.ChangeAllf,13},},
		},
	[3] = 
	{
		ID = 3,
		name = "嘲讽",
		kind = BuffKind.TauntObstacle,
		desc = "",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1293,
		bindBoneName = "m_overhead",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Tao,
		stayID = 2,
		effects = {},
		},
	[4] = 
	{
		ID = 4,
		name = "金霞山-单体提升双防",
		kind = BuffKind.AddAttr,
		desc = "增加全部防御力",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1278,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 3,
		effects = {{EffectType.ChangeAllf,14}},
		},
	[5] = 
	{
		ID = 5,
		name = "金霞山-群体提升双防",
		kind = BuffKind.AddAttr,
		desc = "增加全部防御力",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1278,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangeAllf,15}},
		},
	[6] = 
	{
		ID = 6,
		name = "金霞山-单体提升土抗",
		kind = BuffKind.AddPhase,
		desc = "增加土抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1261,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 3,
		effects = {{EffectType.ChangeSoiResist,16}},
		},
	[7] = 
	{
		ID = 7,
		name = "金霞山-群体提升土抗",
		kind = BuffKind.AddPhase,
		desc = "增加土抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1261,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangeSoiResist,17}},
		},
	[8] = 
	{
		ID = 8,
		name = "乾元岛-蓄力",
		kind = BuffKind.QYDXuLi,
		desc = "提升双防，免疫控制",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1306,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 5,
		effects = {{EffectType.ChangeAllf,18},{EffectType.ChangeSpeed,19},},
		},
	[9] = 
	{
		ID = 9,
		name = "乾元岛-虚弱",
		kind = BuffKind.QYDXuRuo,
		desc = "降低全部攻击力和防御力",
		deathCleanup = false,
		isDisperse = false,
		lightingEffect = 1307,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 6,
		effects = {{EffectType.ChangeAllt,20},{EffectType.ChangeAllf,20},},
		},
	[10] = 
	{
		ID = 10,
		name = "昏睡",
		kind = BuffKind.SoporObstacle,
		desc = "",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1328,
		bindBoneName = "m_overhead",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Tao,
		stayID = 2,
		effects = {},
		},
	[11] = 
	{
		ID = 11,
		name = "乾元岛-单体提升双攻",
		kind = BuffKind.AddAttr,
		desc = "增加全部攻击力",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1250,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 3,
		effects = {{EffectType.ChangeAllt,14}},
		},
	[12] = 
	{
		ID = 12,
		name = "乾元岛-群体提升双攻",
		kind = BuffKind.AddAttr,
		desc = "增加全部攻击力",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1250,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangeAllt,15}},
		},
	[13] = 
	{
		ID = 13,
		name = "乾元岛-单体提升火抗",
		kind = BuffKind.AddPhase,
		desc = "增加火抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1262,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 3,
		effects = {{EffectType.ChangeFirResist,16}},
		},
	[14] = 
	{
		ID = 14,
		name = "乾元岛-群体提升火抗",
		kind = BuffKind.AddPhase,
		desc = "增加火抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1262,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangeFirResist,17}},
		},
	[15] = 
	{
		ID = 15,
		name = "紫阳门-必爆",
		kind = BuffKind.ZYMXuLi,
		desc = "使下次攻击必定触发暴击",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1458,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 7,
		effects = {{EffectType.ChangeCritical,21}},
		},
	[16] = 
	{
		ID = 16,
		name = "混乱",
		kind = BuffKind.ChaosObstacle,
		desc = "",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1485,
		bindBoneName = "m_overhead",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Tao,
		stayID = 2,
		effects = {},
		},
	[17] = 
	{
		ID = 17,
		name = "紫阳门-单体提升暴击",
		kind = BuffKind.AddAttr,
		desc = "增加暴击",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1465,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 3,
		effects = {{EffectType.ChangeCritical,14}},
		},
	[18] = 
	{
		ID = 18,
		name = "紫阳门-群体提升暴击",
		kind = BuffKind.AddAttr,
		desc = "增加暴击",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1467,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangeCritical,15}},
		},
	[19] = 
	{
		ID = 19,
		name = "紫阳门-单体提升风抗",
		kind = BuffKind.AddAttr,
		desc = "增加风抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1259,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 3,
		effects = {{EffectType.ChangeWinResist,16}},
		},
	[20] = 
	{
		ID = 20,
		name = "紫阳门-群体提升风抗",
		kind = BuffKind.AddPhase,
		desc = "增加风抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1259,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangeWinResist,17}},
		},
	[21] = 
	{
		ID = 21,
		name = "蓬莱阁-护盾",
		kind = BuffKind.Shield,
		desc = "施加一个吸收全部伤害的护盾",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1342,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 8,
		effects = {{EffectType.AbsorbAllDmgDa,22}},
		},
	[22] = 
	{
		ID = 22,
		name = "冰冻",
		kind = BuffKind.FreezeObstacle,
		desc = "",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1363,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Tao,
		stayID = 2,
		effects = {},
		},
	[23] = 
	{
		ID = 23,
		name = "蓬莱阁-单体提升冰抗",
		kind = BuffKind.AddPhase,
		desc = "增加冰抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 3,
		effects = {{EffectType.ChangeIceResist,16}},
		},
	[24] = 
	{
		ID = 24,
		name = "蓬莱阁-群体提升冰抗",
		kind = BuffKind.AddPhase,
		desc = "增加冰抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangeIceResist,17}},
		},
	[25] = 
	{
		ID = 25,
		name = "中毒",
		kind = BuffKind.PoisonObstacle,
		desc = "",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1441,
		bindBoneName = "m_overhead",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Tao,
		stayID = 2,
		effects = {{EffectType.PoiDamage,24}},
		},
	[26] = 
	{
		ID = 26,
		name = "桃源洞-单体提升速度",
		kind = BuffKind.AddAttr,
		desc = "增加速度",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1424,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 3,
		effects = {{EffectType.ChangeSpeed,14}},
		},
	[27] = 
	{
		ID = 27,
		name = "桃源洞-群体提升速度",
		kind = BuffKind.AddAttr,
		desc = "增加速度",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1426,
		bindBoneName = "m_ground",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangeSpeed,15}},
		},
	[28] = 
	{
		ID = 28,
		name = "桃源洞-单体提升毒抗",
		kind = BuffKind.AddPhase,
		desc = "增加毒抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1264,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 3,
		effects = {{EffectType.ChangePoiResist,16}},
		},
	[29] = 
	{
		ID = 29,
		name = "桃源洞-群体提升毒抗",
		kind = BuffKind.AddPhase,
		desc = "增加毒抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1264,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangePoiResist,17}},
		},
	[30] = 
	{
		ID = 30,
		name = "桃源洞-DOT",
		kind = BuffKind.Dot,
		desc = "",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1441,
		bindBoneName = "m_overhead",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 9,
		effects = {{EffectType.Dot,23}},
		},
	[31] = 
	{
		ID = 31,
		name = "沉默",
		kind = BuffKind.SilenceObstacle,
		desc = "",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1401,
		bindBoneName = "m_overhead",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Tao,
		stayID = 2,
		effects = {},
		},
	[32] = 
	{
		ID = 32,
		name = "云霄阁-单体提升雷抗",
		kind = BuffKind.AddPhase,
		desc = "增加雷抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 3,
		effects = {{EffectType.ChangeThuResist,16}},
		},
	[33] = 
	{
		ID = 33,
		name = "云霄阁-群体提升雷抗",
		kind = BuffKind.AddPhase,
		desc = "增加雷抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangeThuResist,17}},
		},
	[34] = 
	{
		ID = 34,
		name = "你好烁烁",
		kind = BuffKind.AddPhase,
		desc = "增加雷抗性",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		levelType = BuffJudgeLevel.mentalLevel,
		stayType = BuffStayType.Bout,
		stayID = 4,
		effects = {{EffectType.ChangeThuResist,17}},
		},
	[35] = 
	{
		ID = 35,
		name = "研发技能-掉血",
		kind = BuffKind.PoisonObstacle,
		desc = "持续掉血",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1441,
		bindBoneName = "m_overhead",
		stayType = BuffStayType.Tao,
		stayID = 25,
		effects = {{EffectType.PoiDamage,23}},
		},
	[36] = 
	{
		ID = 36,
		name = "研发技能-耗蓝",
		kind = BuffKind.MpDot,
		desc = "持续耗蓝",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_overhead",
		stayType = BuffStayType.Tao,
		stayID = 25,
		effects = {{EffectType.MpDot,23}},
		},
	[37] = 
	{
		ID = 37,
		name = "研发技能-驱散增益",
		kind = BuffKind.Dispel,
		desc = "驱散增益",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_overhead",
		stayType = BuffStayType.Tao,
		stayID = 25,
		effects = {},
		},
	[38] = 
	{
		ID = 38,
		name = "研发技能-相性克制",
		kind = BuffKind.PhaseRestrain,
		desc = "相性克制",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_overhead",
		stayType = BuffStayType.Tao,
		stayID = 25,
		effects = {{EffectType.PhaseRestrain,26},{EffectType.PhaseBeRestrain,27},},
		},
	[39] = 
	{
		ID = 39,
		name = "研发技能-治疗效果",
		kind = BuffKind.HealReduce,
		desc = "治疗效果下降",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Tao,
		stayID = 25,
		effects = {{EffectType.HealReduce,28}},
		},
	[40] = 
	{
		ID = 40,
		name = "研发技能-属性下降",
		kind = BuffKind.AllAttrReduce,
		desc = "所有属性下降",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Tao,
		stayID = 25,
		effects = {{EffectType.AllAttrReduce,29},{EffectType.PetLoyaltyReduceProb,30},{EffectType.PetLoyaltyReduceRatio,31},{EffectType.PetExistRatio,32},},
		},
	[41] = 
	{
		ID = 41,
		name = "研发技能-反弹伤害",
		kind = BuffKind.CouterDmg,
		desc = "反弹伤害",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.CouterDmg,33}},
		},
	[42] = 
	{
		ID = 42,
		name = "研发技能-暴击",
		kind = BuffKind.ZYMXuLi,
		desc = "暴击",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1465,
		bindBoneName = "m_ground",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeCritical,34}},
		},
	[43] = 
	{
		ID = 43,
		name = "研发技能-恢复法力",
		kind = BuffKind.RestoreMp,
		desc = "恢复法力",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.RestoreMp,35}},
		},
	[44] = 
	{
		ID = 44,
		name = "研发技能-恢复生命",
		kind = BuffKind.RestoreHp,
		desc = "恢复生命",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.RestoreHp,36}},
		},
	[45] = 
	{
		ID = 45,
		name = "研发技能-增加全部防御",
		kind = BuffKind.AddAttr,
		desc = "增加全部防御",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1278,
		bindBoneName = "m_ground",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeAllf,37}},
		},
	[46] = 
	{
		ID = 46,
		name = "研发技能-增加全部攻击",
		kind = BuffKind.AddAttr,
		desc = "增加全部攻击",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1250,
		bindBoneName = "m_ground",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeAllt,38}},
		},
	[47] = 
	{
		ID = 47,
		name = "研发技能-速度",
		kind = BuffKind.AddAttr,
		desc = "速度",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1424,
		bindBoneName = "m_ground",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeSpeed,39}},
		},
	[48] = 
	{
		ID = 48,
		name = "研发技能-物理盾",
		kind = BuffKind.Shield,
		desc = "物理盾",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1342,
		bindBoneName = "m_ground",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.AbsorbAtDmgDa,40}},
		},
	[49] = 
	{
		ID = 49,
		name = "研发技能-法术盾",
		kind = BuffKind.Shield,
		desc = "法术盾",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1342,
		bindBoneName = "m_ground",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.AbsorbMtDmgDa,41}},
		},
	[50] = 
	{
		ID = 50,
		name = "研发技能-以发替伤",
		kind = BuffKind.Shield,
		desc = "以发替伤",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.MtShield,42}},
		},
	[51] = 
	{
		ID = 51,
		name = "研发技能-增加风攻",
		kind = BuffKind.AddPhase,
		desc = "增加风攻",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1259,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeWinAt,43}},
		},
	[52] = 
	{
		ID = 52,
		name = "研发技能-增加雷攻",
		kind = BuffKind.AddPhase,
		desc = "增加雷攻",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeThuAt,44}},
		},
	[53] = 
	{
		ID = 53,
		name = "研发技能-增加冰攻",
		kind = BuffKind.AddPhase,
		desc = "增加冰攻",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeIceAt,45}},
		},
	[54] = 
	{
		ID = 54,
		name = "研发技能-增加土攻",
		kind = BuffKind.AddPhase,
		desc = "增加土攻",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1261,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeSoiAt,46}},
		},
	[55] = 
	{
		ID = 55,
		name = "研发技能-增加火攻",
		kind = BuffKind.AddPhase,
		desc = "增加火攻",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1262,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeFirAt,47}},
		},
	[56] = 
	{
		ID = 56,
		name = "研发技能-增加毒攻",
		kind = BuffKind.AddPhase,
		desc = "增加毒攻",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1264,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangePoiAt,48}},
		},
	[57] = 
	{
		ID = 57,
		name = "研发技能-增加风防",
		kind = BuffKind.AddPhase,
		desc = "增加风防",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1259,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeWinResist,49}},
		},
	[58] = 
	{
		ID = 58,
		name = "研发技能-增加雷防",
		kind = BuffKind.AddPhase,
		desc = "增加雷防",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeThuResist,50}},
		},
	[59] = 
	{
		ID = 59,
		name = "研发技能-增加冰防",
		kind = BuffKind.AddPhase,
		desc = "增加冰防",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1263,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeIceResist,51}},
		},
	[60] = 
	{
		ID = 60,
		name = "研发技能-增加土防",
		kind = BuffKind.AddPhase,
		desc = "增加土防",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1261,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeSoiResist,52}},
		},
	[61] = 
	{
		ID = 61,
		name = "研发技能-增加火防",
		kind = BuffKind.AddPhase,
		desc = "增加火防",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1262,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangeFirResist,53}},
		},
	[62] = 
	{
		ID = 62,
		name = "研发技能-增加毒防",
		kind = BuffKind.AddPhase,
		desc = "增加毒防",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1264,
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.ChangePoiResist,54}},
		},
	[63] = 
	{
		ID = 63,
		name = "研发技能-掉血",
		kind = BuffKind.Dot,
		desc = "持续掉血",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1441,
		bindBoneName = "m_overhead",
		stayType = BuffStayType.Bout,
		stayID = 55,
		effects = {{EffectType.Dot,56}},
		},
	[64] = 
	{
		ID = 64,
		name = "研发技能-破防",
		kind = BuffKind.Sub,
		desc = "破防",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1307,
		bindBoneName = "m_ground",
		stayType = BuffStayType.Bout,
		stayID = 57,
		effects = {{EffectType.ChangeAllf,58}},
		},
	[65] = 
	{
		ID = 65,
		name = "研发技能-重伤",
		kind = BuffKind.Sub,
		desc = "重伤",
		deathCleanup = true,
		isDisperse = true,
		lightingEffect = 1307,
		bindBoneName = "m_ground",
		stayType = BuffStayType.Bout,
		stayID = 59,
		effects = {{EffectType.ChangeAllt,60}},
		},
	[66] = 
	{
		ID = 66,
		name = "天谴",
		kind = BuffKind.Dot,
		desc = "瑞兽每回合扣血",
		deathCleanup = true,
		isDisperse = false,
		lightingEffect = 1441,
		bindBoneName = "m_overhead",
		stayType = BuffStayType.Bout,
		stayID = 10,
		effects = {{EffectType.MaxHpDot,61}},
		},
	[67] = 
	{
		ID = 67,
		name = "BOSS回血",
		kind = BuffKind.RestoreHp,
		desc = "",
		lightingEffect = "",
		bindBoneName = "m_chest",
		stayType = BuffStayType.Bout,
		stayID = 25,
		effects = {{EffectType.RestoreHp,62}},
		},
}
