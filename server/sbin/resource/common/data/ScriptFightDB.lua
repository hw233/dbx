--[[ScriptFightDB.lua
������
	--�ű�ս��DB
	--�ű�ID�λ���
--1~100			�ճ�����ʹ��
--101~999		����ר��
--1000~3000		��ͨ����
--3001~4000		��������
--4001~5000		�ճ�����������ɸ�����Ӣ�۱�
--5001~6000		ͨ����
--6001~7000		�ر�ͼ��Ұ�ⰵ�ס����ջ
--7001~7100		�����ٻ�����
--7101+			�����淨
--8001~9000             ��淨
--]]
ScriptFightDB={}
ScriptType = {
				Common = 1,
				LuckyMonster = 2,--���޽���
				Random = 3,--����׶�
}
--��������
ScriptFightConditionType=
{
	AttrValue		= 1,--���Ա��� {type = ScriptFightConditionType.AttrValue, params={DBID = 1052,type="hp",["<="] = 0},},
	IDExist			= 2,--id�Ƿ���� {type = ScriptFightConditionType.IDExist, params={DBID = 1052,relation =">", value = 1,},},
	RoundCount		= 3,--�ڼ��غ� {type = ScriptFightConditionType.RoundCount, params={ round = 2 },},
	RoundInterval	= 4,--�غϼ�� {type = ScriptFightConditionType.RoundInterval, params={period = 2,startRound = 2},},
	BuffStatus		= 5,--����ָ����buff(ID,������) {type = ScriptFightConditionType.BuffStatus, params={DBID = {1052},buffID = 1(or type=BuffKind.Dot),},},��{type = ScriptFightConditionType.BuffStatus, params={targetType = ScriptFightTargetType.AnyOfEnemys,buffID = 1(or type=BuffKind.Dot),},}
	LiveNum			= 6,--���ĵ�λ�� {type = ScriptFightConditionType.LiveNum, params={isEnemy = true ,count = 2},},
	IsAttacked		= 7,--ָ����λ�Ƿ��ܻ� {type = ScriptFightConditionType.IsAttacked, params={DBID = {1052},}, },
	FightPeriod		= 8,--ս������ʱ�� {type = ScriptFightConditionType.FightPeriod, params={time = 10},},--����
	PlayerDead		= 9,--��һ��������{type = ScriptFightConditionType.PlayerDead, params={type = ScriptFightDeadType.PlayerOrPet},}
	MonsterCatched  = 10,--���ﱻ��׽{type = ScriptFightConditionType.MonsterCatched, params={DBID = {1052},}
	ScoreNum        = 11,--��һ���ֵ{type = ScriptFightConditionType.ScoreNum, params={relation =">", value = 1,},},
}
ScriptFightDeadType = {
	Player	= 1,
	Pet		= 2,
	PlayerOrPet = 3,
}
ScriptFightTargetType = {
	AnyOfFriends = 1,--�ѷ����
	AnyOfEnemys = 2,--�з����
}
ScriptMonsterCreateType = {
	Random = 1,--���
	Assign = 2,--ָ��
}
--[[
1.���Ա����Ĳ����� type ��ֵΪ"hp"����,"mp"��,"kill"ɱ��
2.����ָ�����͵�buff,buff���Ͷ���Ϊ
--buff����
BuffKind = {
	AddPhase		= 0x01,--��������
	AddAttr			= 0x02,--��������
	Sub				= 0x03,--����
	Dot				= 0x04,--dot
	TransCard		= 0x05,--����
	ChaosObstacle	= 0x06,--�����ϰ�
	PoisonObstacle	= 0x07,--�ж��ϰ�
	FreezeObstacle	= 0x08,--�����ϰ�
	SilenceObstacle	= 0x09,--��Ĭ�ϰ�
	TauntObstacle	= 0x10,--�����ϰ�
	SoporObstacle	= 0x11,--��˯�ϰ�
	Shield			= 0x12,--����Buff
	JXSTrans		= 0x13,--��ϼɽ����
	QYDXuLi			= 0x14,--ǬԪ������
	QYDXuRuo		= 0x15,--ǬԪ������
	ZYMXuLi			= 0x16,--����������
	Special			= 0x17,--������buff
}

--
]]
--��Ч����
LightEffectType = {
			Unit = 0,--��λID
			All = 1,--����ȫ��
			EnyOfAll = 2,--������һ
			Center	 = 3,--��������
}
--��������
ScriptFightActionType=
{
	PlayAnimation = 1,--������ {type = ScriptFightActionType.PlayAnimation,params={fileName = "XXX"},}
	PlayBubble	  = 2,--������ {type = ScriptFightActionType.PlayBubble,params={DBID={11},bubbleID = XXX},}
	PlayDialog	  = 3,--���Ի� {type = ScriptFightActionType.PlayDialog,params={ID=11}, }
	PlayAction	  = 4,--������ {type = ScriptFightActionType.PlayAction,params={DBID={11},actionID =22} }
	PlayEffect	  = 5,--����Ч {type = ScriptFightActionType.PlayEffect,params={magicID = 1,DBID ={22},type = LightEffectType.Unit } }
	ReplaceEntity = 6,--�滻ʵ�� {type = ScriptFightActionType.ReplaceEntity,params={curID ={22},replaceID = 11,actionID = 1} }
	EntityQuit	  = 7,--ʵ���˳� {type = ScriptFightActionType.EntityQuit,params={DBID ={22},actionID = 1} }
	EntityEnter	  = 8,--ʵ����� {type = ScriptFightActionType.EntityEnter,params={{DBID = 1,actionID = 1,count = 1},} }
	UseSkill	  = 9,--ʹ�ü��� {type = ScriptFightActionType.UseSkill,params={DBID ={22},skillID = 1}}�� {type = ScriptFightActionType.UseSkill,params={targetType = ScriptFightTargetType.AnyOfEnemys,skillID = 1}}
	AddBuff		  = 10,--��buff {type = ScriptFightActionType.AddBuff,params={DBID ={22},buffID = 2} }�� {type = ScriptFightActionType.AddBuff,params={targetType = ScriptFightTargetType.AnyOfEnemys,buffID = 2} }
	RemoveBuff	  = 11,--ȥbuff {type = ScriptFightActionType.RemoveBuff,params={DBID ={22},buffID = 2} }�� {type = ScriptFightActionType.RemoveBuff,params={targetType = ScriptFightTargetType.AnyOfEnemys,buffID = 2} }
	SetGBH		  = 12,--����Ϊ���� {type = ScriptFightActionType.SetGBH,params={DBID ={22},} }
	FightPause	  = 13,--�ͻ���ս����ͣ {type = ScriptFightActionType.FightPause,params={time = 2} }--��
	FightEnd	  = 14,--ս������ {type = ScriptFightActionType.FightEnd,params={winner = "monster" �� "player"} }
	MakeEscape	  = 15,--ǿ������ {type = ScriptFightActionType.MakeEscape,params={} }
	SetCounterRate= 16,--���÷����� {type = ScriptFightActionType.SetCounterRate,params={DBID ={22},value = 0.5} }
	ExchangePos	  = 17,--������ı�λ�� {type = ScriptFightActionType.ExchangePos,params={curPos = 21,targetPos =23} }
	ChangeHp	  = 18,--��������ֵ(�����������ֵ�İٷֱ�,�������ҵĻ�params={DBID =-1,percent = -50}}����Ժ���){type = ScriptFightActionType.ChangeHp,params={DBID ={22},percent = -50}}
	SameTime	  =19,--ͬʱִ��һ��
	RefreshMembers = 20,--ˢ�¹���
	AddScore = 21,--������һ���{type = ScriptFightActionType.AddScore,params={value = 5} }
	ChangeReward = 22,--Ӱ�콱��ֵ{type = ScriptFightActionType.ChangeReward,params={type = "exp",mode = "value",value = 100} }--type = "exp","tao","money","expoint","pot";mode= "value" or "percent"
}

ScriptFightDB[1] = {
			--ս����������
			condition = {
					mustSingle = false --�Ƿ��ֹ���
			},
			backgroundMusic = nil,
			backgroundPic = nil,
			--����Щ����(��������ID)
			--monsters = {type=ScriptMonsterCreateType.Random,minCount = 3,maxCount = 3,{ID = 1053,weight= 50}, {ID = 1052,weight= 50}},--���
			monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10001,pos = 18},},--ָ��
			--npcs = {{ID = 1052},{ID = 1052,},},--ָ�� {{ID = 1052,pos=11},{ID = 1052,pos = 3},}
			--ϵͳ��Ϊ
			systemActions = {




										[1] = { condition = {
																--{type = ScriptFightConditionType.AttrValue,params={DBID = 1053,type="hp",["<="] = 0.5},},
																--{type = ScriptFightConditionType.LiveNum, params={isEnemy = false ,count = 1},},
																--{type = ScriptFightConditionType.RoundInterval, params={period = 2,startRound = 1},},
																--{type = ScriptFightConditionType.FightPeriod, params={time = 3},},
																--{type = ScriptFightConditionType.PlayerDead, params={},},
																--{type = ScriptFightConditionType.IDExist, params={DBID = {1052},},},
																isAnd = true,
																count = 1,
														    },

												actions = {
															 {type = ScriptFightActionType.UseSkill,params={DBID ={1053},skillID = 3} },
															 --{type = ScriptFightActionType.AddBuff,params={DBID ={1053},buffID = 5000} },
															--{type = ScriptFightActionType.MakeEscape,params={} }
															{type = ScriptFightActionType.ExchangePos,params={curPos = 18,} }
															--{type = ScriptFightActionType.ReplaceEntity,params={curID ={1053},replaceID = 1052} }
															--{type = ScriptFightActionType.EntityEnter,params={{DBID = 1052,actionID = nil,count = 1},} }
															--{type = ScriptFightActionType.EntityQuit,params={DBID ={1052},actionID = nil} }
															--{type = ScriptFightActionType.AddBuff,params={targetType = ScriptFightTargetType.AnyOfFriends,buffID = 5000} },
															--{type = ScriptFightActionType.ChangeHp,params={DBID ={1053},percent = -10}},
														  },
											   },--��Ϊ1

			},
			--ÿ�غ�����Щ��


						begin = {

						},--�غϿ�ʼ����Щ��
						fin = {

						},--�غϽ�������Щ��


			--�׶�(���ڷֽ׶ε�ս��)
			phases = {

					[1] = {
							typeID = 0, sceneID = "zd_yougu2.xml",isSpecialAction =true,
							monsters={10001},
					},
					[2] = {
							typeID = 0, sceneID = "zd_yougu2.xml",isSpecialAction =true,
							monsters={10001},
					}

			},
			--ս����ʼ����Щ��
			fightBegin = {

			},
			--ս����������Щ��
			fightEnd = {

			},

			rewards={
						mats={},--��Ʒ{{ID=10001,count = 1}}
						exp = 1,
						money = 1,
			},--����
			isNoEscape = true,
}

ScriptFightDB[2] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10001,pos = 16},{ID = 10002,pos = 17}},--{ID = 1053},{ID = 1054}},
	begin = {
			[1] = {
				condition = {
					isAnd = true,
				 },
				 actions = {
					{type = ScriptFightActionType.EntityQuit,params={DBID ={1053}} }
				 }
			},

			[2] = {
				condition = {
					 {type = ScriptFightConditionType.RoundCount, params={ round = 1},},
					isAnd = true,
				 },
				 actions = {
					 {type = ScriptFightActionType.PlayDialog,params={ID=1}, } ,
					 {type = ScriptFightActionType.EntityQuit,params={DBID ={1052}} }
				}
			}
	},

}

ScriptFightDB[3] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10001},{ID = 10001}},
	begin = {
			[1] = {
				condition = {
					 {type = ScriptFightConditionType.RoundCount, params={ round = 1},},
					isAnd = true,
				 },
				 actions = {
					 {type = ScriptFightActionType.PlayDialog,params={ID=1}, } ,
					 {type = ScriptFightActionType.EntityQuit,params={DBID ={1052}} }
				 }
			},
	},

}

ScriptFightDB[4] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 1052},{ID = 1053}},
	begin = {
			[1] = {
				condition = {
					isAnd = true,
				 },
				 actions = {
					isSameTime = true,
					 {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 1},},
					 --{type = ScriptFightActionType.EntityQuit,params={DBID ={1052}} },
				 }
			},

	},
	phases = {		--��׶�ս������δ���ԣ�
		[1] = {		--�׶���
			typeID = 0, sceneID = "zd_yougu2.xml",isSpecialAction =true,
			--typeID = ����������ʽ��Ĭ��0��sceneID = ����ͼ�ļ�����isSpecialAction = true�����⶯����Ĭ��true��
			monsters={1052},				--��������
		},

		[2] = {
			typeID = 0, sceneID = "zd_yougu2.xml",isSpecialAction =true,
			monsters={1052},
		}
	},

}

ScriptFightDB[5] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 1052},{ID = 1053}},
	begin = {
	[1] = {
		condition = {
			isAnd = true,
		 },
		actions = {
			 {type = ScriptFightActionType.FightEnd,params={winner = "player" } }  --�� "player"
		}
	},
	},
	rewards={
		mats={{ID = 50005 , count = 1}},--��Ʒ{{ID=10001,count = 1}}
	},
}


-----------------------------------Ұ��ս���ű���ID��10~99��--------------------
ScriptFightDB[10] = {					---------------��¹Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10012,weight= 50}, {ID = 10013,weight= 50}},
	--monsters = {type=ScriptMonsterCreateType.Random,{ID = 10001,weight= 50}, {ID = 10001,weight= 50}},
}

ScriptFightDB[11] = {					---------------����̨Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10014,weight= 50}, {ID = 10015,weight= 50}},
}

ScriptFightDB[12] = {					---------------�ڷ�ɽҰ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10016,weight= 50}, {ID = 10017,weight= 50}},
}

ScriptFightDB[13] = {					---------------�Ͻ�Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10018,weight= 50}, {ID = 10019,weight= 50}},
}

ScriptFightDB[14] = {					---------------����Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10020,weight= 50}, {ID = 10021,weight= 50}},
}

ScriptFightDB[15] = {					---------------���ι�Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10022,weight= 50}, {ID = 10023,weight= 50}},
}

ScriptFightDB[16] = {					---------------����Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10024,weight= 50}, {ID = 10025,weight= 50}},
}

ScriptFightDB[17] = {					---------------��ɽҰ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10026,weight= 50}, {ID = 10027,weight= 50}},
}

ScriptFightDB[18] = {					---------------����Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10028,weight= 50}, {ID = 10029,weight= 50}},
}

ScriptFightDB[19] = {					---------------����Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10030,weight= 50}, {ID = 10031,weight= 50}},
}

ScriptFightDB[20] = {					---------------�ɶ�Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10032,weight= 50}, {ID = 10033,weight= 50}},
}

ScriptFightDB[21] = {					---------------���Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10034,weight= 50}, {ID = 10035,weight= 50}},
}

ScriptFightDB[22] = {					---------------�ٴ�Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10036,weight= 50}, {ID = 10037,weight= 50}},
}

ScriptFightDB[23] = {					---------------�ӱ�Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10038,weight= 50}, {ID = 10039,weight= 50}},
}

ScriptFightDB[24] = {					---------------���Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10040,weight= 50}, {ID = 10041,weight= 50}},
}

ScriptFightDB[25] = {					---------------�ٶ�Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10042,weight= 50}, {ID = 10043,weight= 50}},
}

ScriptFightDB[27] = {					---------------Ұ��
	monsters = {type=ScriptMonsterCreateType.Random,{ID = 10044,weight= 50}, {ID = 10045,weight= 50}},
}

-----------------------------------------�������������Խű�---------------------------------------------------------
ScriptFightDB[30] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31293,},}
	}
ScriptFightDB[31] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31294,},}
	}
ScriptFightDB[32] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31295,},}
	}
ScriptFightDB[33] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31296,},}
	}

-----------------------------------------------���Թ������Խű�������ɾ��------------------------------------------------------
ScriptFightDB[98] = {              --------------����1
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20115},{ID = 20116},{ID = 20116},},
}
ScriptFightDB[99] = {              --------------����2
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20117},{ID = 20118},{ID = 20118},},
}
-----------------------------------------------���Թ������Խű�������ɾ��------------------------------------------------------
-----------------------------------------------1-25�����߽ű�------------------------------------------------------
ScriptFightDB[100] = {              --------------�����񾩡���������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20010}},
}
ScriptFightDB[101] = {              --------------���ɡ��������񽫣���׽��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10011}},
}
ScriptFightDB[102] = {              --------------��԰�򡪡�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20114}},
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20114,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20114,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20114},bubbleID = 101},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20114,},},},
		  }
	},
	},
}
ScriptFightDB[103] = {              --------------��԰�򡪡�İ����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20030}},
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20030,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20030,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20030},bubbleID = 102},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20030,},},},
		  }
	},
	},
}
ScriptFightDB[104] = {              --------------�������֡����ű�	
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20031},{ID = 20033},{ID = 20034},{ID = 20035},{ID = 20036},},
	npcs = {{ID = 20028},{ID = 20032},{ID = 20037},},--����NPC�������������ŷɡ�
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20031,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20031,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20031},bubbleID = 103},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20031,},},},
		  }
	},
	},
}
ScriptFightDB[105] = {              --------------��¹��������	
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20038},{ID = 20039},{ID = 20039},{ID = 20039},{ID = 20039},},
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20038,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20038,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20038},bubbleID = 104},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20038,},},},
		  }
	},
	},
}
ScriptFightDB[106] = {              --------------��¹��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20044},{ID = 20040},{ID = 20041},{ID = 20042},{ID = 20043},},
}
ScriptFightDB[107] = {              --------------��¹������Զ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20045},{ID = 20040},{ID = 20041},{ID = 20042},{ID = 20043},},
	npcs = {{ID = 20028},},--����NPC������
}
ScriptFightDB[108] = {              --------------��¹��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20046},{ID = 20040},{ID = 20041},{ID = 20042},{ID = 20043},},
	npcs = {{ID = 20028},{ID = 20037},},--����NPC���������ŷɡ�
}
ScriptFightDB[109] = {              --------------���ܹ��󡪡��ű�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20031}},
	npcs = {{ID = 20028},{ID = 20032},{ID = 20037},},--����NPC�������������ŷɡ�
}
ScriptFightDB[110] = {              --------------�ɽ������Զ־
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20047},{ID = 20110},{ID = 20110},{ID = 20110},{ID = 20110},},
	npcs = {{ID = 20028},{ID = 20032},{ID = 20037},},--����NPC�������������ŷɡ�
}
ScriptFightDB[111] = {              --------------ʧ���󡪡�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20048},{ID = 20050},{ID = 20050},{ID = 20050},{ID = 20050},},
	npcs = {{ID = 20028},{ID = 20032},{ID = 20037},},--����NPC�������������ŷɡ�
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.RoundInterval, params={period = 2,startRound = 2},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20048},bubbleID = 105},},
		  }
	},
	},
}
ScriptFightDB[112] = {              --------------Ѫ���󡪡�ˮ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20051},{ID = 20052},{ID = 20052},{ID = 20052},{ID = 20052},},
	npcs = {{ID = 20028},{ID = 20032},{ID = 20037},},--����NPC�������������ŷɡ�
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.RoundInterval, params={period = 2,startRound = 2},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20051},bubbleID = 106},},
		  }
	},
	},
}
ScriptFightDB[113] = {              --------------�ɻ��󡪡�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20053},{ID = 20054},{ID = 20054},{ID = 20054},{ID = 20054},},
	npcs = {{ID = 20028},{ID = 20032},{ID = 20037},},--����NPC�������������ŷɡ�
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.RoundInterval, params={period = 2,startRound = 2},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20053},bubbleID = 107},},
		  }
	},
	[2] = {
		  condition = {
		  {type = ScriptFightConditionType.RoundCount, params={ round = 10 },},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20053},bubbleID = 108},},
		  {type = ScriptFightActionType.FightEnd,params={winner = "monster" }},
		  }
	},
	},
}
ScriptFightDB[114] = {              --------------�����󡪡�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20055}},
	npcs = {{ID = 20028},{ID = 20032},{ID = 20037},},--����NPC�������������ŷɡ�
}
ScriptFightDB[115] = {              --------------����̨�����Ž�	
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20056},},
	npcs = {{ID = 20028},{ID = 20032},{ID = 20037},},--����NPC�������������ŷɡ�
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20056,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20056,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20056},bubbleID = 109},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20056,},},},
		  }
	},
	},
}
ScriptFightDB[116] = {              --------------����԰��������԰ͳ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20060},{ID = 20057},{ID = 20057},{ID = 20058},{ID = 20058},},
}
ScriptFightDB[117] = {              --------------����԰�����˶����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20061},{ID = 20057},{ID = 20057},{ID = 20058},{ID = 20058},},
}
ScriptFightDB[118] = {              --------------����԰�����˶
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20062},{ID = 20057},{ID = 20057},{ID = 20058},{ID = 20058},},
}
ScriptFightDB[119] = {              --------------����԰�����˵�ͷĿ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20065},{ID = 20063},{ID = 20063},{ID = 20064},{ID = 20064},},
}
ScriptFightDB[120] = {              --------------����԰������������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20066},{ID = 20063},{ID = 20063},{ID = 20064},{ID = 20064},},
}
ScriptFightDB[121] = {              --------------����԰��������	
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20067},{ID = 20063},{ID = 20063},{ID = 20064},{ID = 20064},},
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20067,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20067,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20067},bubbleID = 109},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20067,},},},
		  }
	},
	},
}
ScriptFightDB[122] = {              --------------����԰����ð����ǰ����ͷĿ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20069},{ID = 20068},{ID = 20068},{ID = 20068},{ID = 20068},},
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.RoundCount, params={ round = 1 },},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 111},},
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20069},bubbleID = 112},},
		  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 113},},
		  }
	},
	},
}
ScriptFightDB[123] = {              --------------������������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20070},},
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20070,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20070,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20070},bubbleID = 114},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20070,},},},
		  }
	},
	},
}
ScriptFightDB[124] = {              --------------�ڷ�ɽ����̽��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20071},},
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.RoundCount, params={ round = 1 },},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20071},bubbleID = 122},},
		  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 123},},
		  }
	},
	[2] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20071,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20071,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20071},bubbleID = 115},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20071,},},},
		  }
	},
	},
}
ScriptFightDB[125] = {              --------------�ڷ�ɽ�����ڷ�ɽ����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20074},{ID = 20072},{ID = 20072},{ID = 20073},{ID = 20073},},
}
ScriptFightDB[126] = {              --------------�ڷ�ɽ�����ڷ�ɽ����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20075},{ID = 20072},{ID = 20072},{ID = 20073},{ID = 20073},},
}
ScriptFightDB[127] = {              --------------�ڷ�ɽ��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20076},{ID = 20072},{ID = 20072},{ID = 20073},{ID = 20073},},
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20076,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20076,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20076},bubbleID = 116},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20076,},},},
		  }
	},
	},
}
ScriptFightDB[128] = {              --------------�ڷ綴�����ڷ�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20077},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.RoundCount, params={ round = 4 },},
		  },
		  actions = {
          {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 117},},
		  {type = ScriptFightActionType.MakeEscape,params={} },
		  }
	},
	},
}
ScriptFightDB[129] = {              --------------�ڷ綴�����ڷ�����2
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20077},},
	npcs = {{ID = 20079},},--����NPC����ϼͯ��
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20077,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20077,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20077},bubbleID = 118},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20077,},},},
		  }
	},
	},
}
ScriptFightDB[130] = {              --------------���롪����Ӫ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20082},{ID = 20080},{ID = 20080},{ID = 20081},{ID = 20081},},
}
ScriptFightDB[131] = {              --------------���롪������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20083},{ID = 20080},{ID = 20080},{ID = 20081},{ID = 20081},},
}
ScriptFightDB[132] = {              --------------���롪������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20084},{ID = 20080},{ID = 20080},{ID = 20081},{ID = 20081},},
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20084,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20084,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20084},bubbleID = 119},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20084,},},},
		  }
	},
	},
}
ScriptFightDB[133] = {              --------------���롪������ħ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20087},{ID = 20085},{ID = 20085},{ID = 20086},{ID = 20086},},
}
ScriptFightDB[134] = {              --------------���롪���d������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20088},{ID = 20085},{ID = 20085},{ID = 20086},{ID = 20086},},
}
ScriptFightDB[135] = {              --------------���롪������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20089},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.RoundCount, params={ round = 4 },},
		  },
		  actions = {
          {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 120},},
		  {type = ScriptFightActionType.MakeEscape,params={} },
		  }
	},
	},
}
ScriptFightDB[136] = {              --------------�Ͻ��Ӫ��������ͳ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20093},{ID = 20090},{ID = 20090},{ID = 20092},{ID = 20092},},
}
ScriptFightDB[137] = {              --------------�Ͻ��Ӫ������������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20094},{ID = 20090},{ID = 20090},{ID = 20092},{ID = 20092},},
}
ScriptFightDB[138] = {              --------------�Ͻ��Ӫ��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20095},{ID = 20090},{ID = 20090},{ID = 20092},{ID = 20092},},
	systemActions = {
	[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20095,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20095,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20095},bubbleID = 121},},
          {type = ScriptFightActionType.EntityQuit,params={DBID ={20095,},},},
		  }
	},
	},
}
ScriptFightDB[139] = {              --------------���ء������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20098},{ID = 20096},{ID = 20097},{ID = 20111},{ID = 20112},},
}
ScriptFightDB[140] = {              --------------���ء�������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20101},{ID = 20099},{ID = 20099},{ID = 20100},{ID = 20100},},
	npcs = {{ID = 20091},},--����NPC��Ԭ��
}
ScriptFightDB[141] = {              --------------���ء������F
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20109},{ID = 20102},{ID = 20103},{ID = 20104},{ID = 20105},},
	npcs = {{ID = 20091},},--����NPC��Ԭ��
}
----1-25���ű�ս������------

-------------------------------����25-30�ű�---------------------------------
ScriptFightDB[161] = {           --[[��ȳ¹�--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20305},{ID = 20303},{ID = 20304},{ID = 20310},{ID = 20311},},
}
ScriptFightDB[162] = {           --[[��̽�ܲ�����--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20309},{ID = 20306},{ID = 20306},{ID = 20306},{ID = 20306},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20309,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20309,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={20309},bubbleID = 401},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={20309},}, }
			},
	},
},
}
ScriptFightDB[163] = {           --[[��Ȳܲ�--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20312},{ID = 20307},{ID = 20319},{ID = 20320},{ID = 20324},},
}
ScriptFightDB[164] = {           --[[��������--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20317},{ID = 20316},{ID = 20328},{ID = 20329},{ID = 20332},},
	npcs = {{ID = 20313,},},
}
ScriptFightDB[165] = {           --[[��Ԯ����--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20321},{ID = 20338},{ID = 20339},{ID = 20340},{ID = 20341},},
	npcs = {{ID = 20322,},},
}
ScriptFightDB[166] = {           --[[�¾�ն����--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20325},{ID = 20323},{ID = 20343},{ID = 20344},{ID = 20345},},
	npcs = {{ID = 20322,},},
}
ScriptFightDB[167] = {             --[[��������--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20331},{ID = 20330},{ID = 20346},{ID = 20347},{ID = 20348},},
	npcs = {{ID = 20322,},{ID = 20326,},{ID = 20327,},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20331,type="hp",["<="]=30},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20331,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={20331},bubbleID = 402},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={20331},}, }
			},
	},
},
}
ScriptFightDB[168] = {             --[[��Ӣս����--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20335},},
	npcs = {{ID = 20322,},{ID = 20326,},{ID = 20327,},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20335,type="hp",["<="]=30},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20335,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={20335},bubbleID = 403},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={20335},}, }
			},
	},
},
}
ScriptFightDB[169] = {             --[[��սħ������--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20342},},
	npcs = {{ID = 20322,},{ID = 20326,},{ID = 20327,},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20342,type="hp",["<="]=30},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20342,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={20342},bubbleID = 404},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={20342},}, }
			},
	},
},
}
 --[[���Ͳܲ�--]]
ScriptFightDB[170] = {          
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20314},{ID = 20306},{ID = 20306},{ID = 20306},{ID = 20306},},
	npcs = {{ID = 20313,},},
}
ScriptFightDB[171] = {           
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20315},{ID = 20314},{ID = 20314},{ID = 20314},{ID = 20314},},
	npcs = {{ID = 20313,},},
}
ScriptFightDB[172] = {           
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20316},{ID = 20315},{ID = 20315},{ID = 20315},{ID = 20315},},
	npcs = {{ID = 20313,},},
}


----------------31-32������-----------------------
ScriptFightDB[175] = {             --[[��̽�������--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20601},{ID = 20603},{ID = 20603},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20601,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20601,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={20601},bubbleID = 410},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={20601},}, }
			},
	},
},
}
ScriptFightDB[176] = {            --[[�������--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20602},{ID = 20604},{ID = 20629},{ID = 20630},{ID = 20631},},
}
ScriptFightDB[177] = {            --[[������ˮ��--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20605},{ID = 20632},{ID = 20633},{ID = 20634},{ID = 20635},},
	systemActions = {
			[1] = {
				condition = {
				            {type = ScriptFightConditionType.AttrValue, params={DBID = 20605,type="hp",["<="]=50},},
						{type = ScriptFightConditionType.AttrValue, params={DBID = 20605,type="hp",[">"] = 0},},
						isAnd = true,
				 },
				 actions = {
				 {type = ScriptFightActionType.PlayBubble,params={DBID={20605},bubbleID = 411},},
				 {type = ScriptFightActionType.EntityQuit,params={DBID ={20605},}, }
					  },
			},
	},
}
ScriptFightDB[178] = {           --[[Ӫ�������⾰--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20609},{ID = 20604},{ID = 20604},{ID = 20604},{ID = 20604},},
}
ScriptFightDB[179] = {           --[[̽Ѱ�Ƹ�--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20610},{ID = 20611},{ID = 20611},{ID = 20611},{ID = 20611},},
	systemActions = {
			[1] = {
				condition = {
				            {type = ScriptFightConditionType.AttrValue, params={DBID = 20610,type="hp",["<="]=40},},
					    {type = ScriptFightConditionType.AttrValue, params={DBID = 20610,type="hp",[">"] = 0},},
					     isAnd = true,
				 },
				 actions = {
				 {type = ScriptFightActionType.PlayBubble,params={DBID={20610},bubbleID = 412},},
				 {type = ScriptFightActionType.EntityQuit,params={DBID ={20610},} },
			     },
			},
	},
}
ScriptFightDB[180] = {           --[[Ӫ�ȻƸ�--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20612},{ID = 20603},{ID = 20603},{ID = 20603},{ID = 20603},},
}
ScriptFightDB[181] = {           --[[Ӫ�ȻƸǣ����ˣ�--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20613},{ID = 20614},{ID = 20614},},
}
ScriptFightDB[182] = {           --[[����֮��--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20615},{ID = 20616},{ID = 20616},{ID = 20616},{ID = 20616},},
	systemActions = {
			[1] = {
				condition = {
				            {type = ScriptFightConditionType.RoundCount, params={ round = 1 },},
						isAnd = true,
				 },
				 actions = {
				 {type = ScriptFightActionType.PlayBubble,params={DBID={20615},bubbleID = 415},},
				 {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 418},},
			     },
			},
			[2] = {
				condition = {
				            {type = ScriptFightConditionType.AttrValue, params={DBID = 20615,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 20615,type="hp",[">"] = 0},},
							isAnd = true,
				 },
				 actions = {
				 {type = ScriptFightActionType.PlayBubble,params={DBID={20615},bubbleID = 413},},
				 {type = ScriptFightActionType.EntityQuit,params={DBID ={20615},} },
			     },
			},
	},
}
ScriptFightDB[183] = {           --[[�����--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20617},{ID = 20618},{ID = 20637},},
	systemActions = {
			[1] = {
				condition = {
				            {type = ScriptFightConditionType.AttrValue, params={DBID = 20617,type="hp",["<="]=40},},
					    {type = ScriptFightConditionType.AttrValue, params={DBID = 20617,type="hp",[">"] = 0},},
					     isAnd = true,
				 },
				 actions = {
				 {type = ScriptFightActionType.PlayBubble,params={DBID={20617},bubbleID = 414},},
				 {type = ScriptFightActionType.EntityQuit,params={DBID ={20617,20618,20637},} },
			     },
			},
	},
}
ScriptFightDB[184] = {           --[[̽������--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20619},},
}
ScriptFightDB[185] = {           --[[���֮��--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20620},},
}
ScriptFightDB[186] = {           --[[��֦֮��--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20621},},
	systemActions = {
			[1] = {
				condition = {
				            {type = ScriptFightConditionType.RoundCount, params={ round =1 },},
					    {type='Tscript',param = {scriptID= 186,count =1, ignoreResult = true,bor = true},}, 
					    isAnd = true,
					    },
				actions = {
				{type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 416},},
				{type = ScriptFightActionType.PlayBubble,params={DBID={20621},bubbleID = 417},},	
					 },
				},
			},
}
ScriptFightDB[187] = {           --[[���֮��--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20622},},
}
ScriptFightDB[188] = {           --[[��»֮��--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20623},},
}
ScriptFightDB[189] = {           --[[ս����--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20624},},
}
ScriptFightDB[190] = {           --[[��������--]]
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20605},{ID = 20616},{ID = 20616},{ID = 20618},{ID = 20618},},
}

----------------33-34������-----------------------

ScriptFightDB[200] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID =20704},{ID = 20737},{ID = 20739},{ID = 20736},{ID = 20738},},
}
ScriptFightDB[201] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID =20720},{ID = 20740},{ID = 20742},{ID = 20741},{ID = 20743},},
}
ScriptFightDB[202] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID =20703},},	
}
ScriptFightDB[203] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20707},},
	systemActions = {
	      [1] = {
               	 condition = {
 		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20707,type="hp",["<="] =40},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20707,type="hp",[">"] =0},},
		  isAnd = true,
		  },
	         actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20707},bubbleID = 421},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20707,},}, },
		  },
		  },
},
}
ScriptFightDB[204] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20708},{ID = 20745},{ID = 20747},{ID = 20744},{ID = 20746},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20708,type="hp",["<="] =40},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20708,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20708},bubbleID = 422},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20708,},}, },
		  },
		  },
},
}
ScriptFightDB[205] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20710},{ID = 20721},{ID = 20754},{ID = 20722},{ID = 20753},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20710,type="hp",["<="] =40},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20710,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20710},bubbleID = 428},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20710,},}, },
		  },
		  },
},
}
ScriptFightDB[206] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20709},{ID = 20756},{ID = 20758},{ID = 20755},{ID = 20757},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20709,type="hp",["<="] =40},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20709,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20709},bubbleID = 425},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20709,},}, },
		  },
		  },
},
}
ScriptFightDB[207] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20712},},	
}
ScriptFightDB[208] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20713},{ID = 20762},{ID = 20763},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20713,type="hp",["<="] =40},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20713,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20713},bubbleID = 424},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20713,},},},
		  },
},
},
}
ScriptFightDB[209] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20715},{ID = 20723},{ID = 20760},{ID = 20759},{ID = 20761},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20715,type="hp",["<="] =40},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20715,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20715},bubbleID = 425},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20715,},},}
		  },
},
},
}
ScriptFightDB[210] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20716},{ID = 20748},{ID = 20749},},
}
ScriptFightDB[211] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID =20717},{ID = 20748},{ID = 20749},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20717,type="hp",["<="] =40},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20717,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20717},bubbleID = 428},},
		  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 429},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20717,},},}
		  },
},
},
}
ScriptFightDB[212] = {         ---33-34����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20718},{ID = 20724},{ID = 20727},{ID = 20750},{ID = 20751},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20718,type="hp",["<="] =40},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20718,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20718},bubbleID = 430},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20718,},},}
		  },
},
},
	
}

ScriptFightDB[213] = {         ---33-34����������ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20707},},
	systemActions ={
	      [1] =
	      {
		  condition = {
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20707,type="hp",["<="] =40},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20707,type="hp",[">"] =0},},
		  isAnd = true,
		  count = 1,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 426},},
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20707},bubbleID = 427},},
                  {type = ScriptFightActionType.FightEnd,params={winner = "player"},},
		  },
},
},
}


-------------------------------------------35-36������-----------------------------------------------------
ScriptFightDB[220] = {             -----------------ţ��
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20804},{ID = 20802},{ID = 20802},{ID = 20803},{ID = 20803}},
	systemActions = {
	          [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20804,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20804,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20804},bubbleID = 432},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20804,},} },
				   }
	},
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[221] = {             -----------------����
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20809},{ID = 20805},{ID = 20805},{ID = 20806},{ID = 20806}},
	systemActions = {
	          [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20809,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20809,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20809},bubbleID = 433},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20809,},} },
				   }
	},
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[222] = {             -----------------����
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20812},{ID = 20807},{ID = 20808},{ID = 20810},{ID = 20811}},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20812,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20809,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20809},bubbleID = 433},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20809,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[223] = {             -----------------����
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20813},},
	systemActions = {
	          [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20813,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20813,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20813},bubbleID = 434},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20813,},} },
				   }
	},
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[224] = {             -----------------갰�
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20816},{ID = 20814},{ID = 20814},{ID = 20815},{ID = 20815}},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20813,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20813,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20813},bubbleID = 434},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20813,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[225] = {             -----------------а��ħ������
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20817},},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20813,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20813,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20813},bubbleID = 434},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20813,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[226] = {             -----------------����
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20818},{ID = 20814},{ID = 20814},{ID = 20815},{ID = 20815}},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20813,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20813,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20813},bubbleID = 434},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20813,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[227] = {             -----------------��������
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20819},},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20813,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20813,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20813},bubbleID = 434},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20813,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[228] = {             -----------------��˳
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20820},{ID = 20814},{ID = 20814},{ID = 20815},{ID = 20815}},
	systemActions = {
	          [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20820,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20820,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20820},bubbleID = 435},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20820,},} },
				   }
	},
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[229] = {             -----------------�ػ�����
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20821},},
	systemActions = {
	          [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20821,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20821,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20821},bubbleID = 436},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20821,},} },
				   }
	},
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[230] = {             -----------------ţħ
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20822},},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20822},bubbleID = 436},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20822,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[231] = {             -----------------ѩ��ľ-��һ����
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10026},{ID = 10027},{ID = 10027},{ID = 10029},{ID = 10029}},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20822},bubbleID = 436},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20822,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[232] = {             -----------------ѩ��ľ-�ڶ�����
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20823},{ID = 10027},{ID = 10027},{ID = 10029},{ID = 10029}},
	systemActions = {
	           [1] = {
		  condition = {
		  {type = ScriptFightConditionType.RoundCount, params={ round = 1 },},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20823},bubbleID = 439},},
		  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 440},},
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20823},bubbleID = 441},},
				   }
	},
	          [2] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20823,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20823,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20823},bubbleID = 437},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20823,},} },
				   }
	},
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[233] = {             -----------------������
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20824},{ID = 20832},{ID = 20832},{ID = 20832},{ID = 20832}},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20822},bubbleID = 436},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20822,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[234] = {             -----------------��������1
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20825},},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20822},bubbleID = 436},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20822,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[235] = {             -----------------��������2
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20826},},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20822},bubbleID = 436},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20822,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[236] = {             -----------------��������3
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20827},},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20822},bubbleID = 436},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20822,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[237] = {             -----------------��������4
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20828},},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20822},bubbleID = 436},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20822,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[238] = {             -----------------��ħ����
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20830},},
	npcs = {{ID = 20801,pos = 11},},
	systemActions = {
	          --[[[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",["<="] = 20},},
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20822,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20822},bubbleID = 436},},
                  {type = ScriptFightActionType.EntityQuit,params={DBID ={20822,},} },
				   }
	},--]]
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
ScriptFightDB[239] = {             -----------------��׿
	backgroundMusic = nil,
	backgroundPic = nil,
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20831},},
	npcs = {{ID = 20801,pos = 11},},
	systemActions = {
	          [1] = {
		  condition = {
		 {type = ScriptFightConditionType.AttrValue, params={DBID = 20831,type="hp",["<="] = 0},},
		 {type = ScriptFightConditionType.AttrValue, params={DBID = 20831,type="hp",[">"] = 0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20831},bubbleID = 438},},
				   }
	},
	},
	rewards={
	          mats={{ID=10001,count = 1}},
	},
}
-------------------------------------------37-38������-----------------------------------------------------
ScriptFightDB[301] = {  
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20901},{ID = 20902},{ID = 20902},{ID = 20903},{ID = 20903},},
	systemActions = {
		[1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20901,type="hp",["<="] =20},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20901,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20901},bubbleID = 451},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20901},},},
		  },
},
},
}
ScriptFightDB[302] = {        
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20905},{ID = 20906},{ID = 20906},{ID = 20907},{ID = 20907},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20905,type="hp",["<="] =20},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20905,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20905},bubbleID = 452},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20905},},},
		  },
},
},
}
ScriptFightDB[303] = {        
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20908},{ID = 20909},{ID = 20909},{ID = 20910},{ID = 20910},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20908,type="hp",["<="] =20},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20908,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20908},bubbleID = 453},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20908},},},
		  },
},
},
}
ScriptFightDB[304] = {        
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20911},{ID = 20912},{ID = 20912},{ID = 20913},{ID = 20913},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20911,type="hp",["<="] =20},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20911,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20911},bubbleID = 454},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20911},},},
		  },
},
},
}
ScriptFightDB[305] = {        
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20914},{ID = 20915},{ID = 20915},{ID = 20916},{ID = 20916},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20914,type="hp",["<="] =20},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20914,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20914},bubbleID = 455},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20914},},},
		  },
},
},
}
ScriptFightDB[306] = {        
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20917},{ID = 20918},{ID = 20918},{ID = 20919},{ID = 20919},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20917,type="hp",["<="] =20},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20917,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20917},bubbleID = 456},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20917},},},
		  },
},
},
}
ScriptFightDB[307] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20920},{ID = 20921},{ID = 20921},{ID = 20922},{ID = 20922},},
}
ScriptFightDB[308] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20923},{ID = 20921},{ID = 20921},{ID = 20924},{ID = 20924},},
}
ScriptFightDB[309] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20925},{ID = 20927},{ID = 20927},{ID = 20926},{ID = 20926},},
}
ScriptFightDB[310] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20930},{ID = 20931},{ID = 20931},{ID = 20932},{ID = 20932},},
}
ScriptFightDB[311] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20934},{ID = 20935},{ID = 20935},{ID = 20936},{ID = 20936},},
}
ScriptFightDB[312] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20937},{ID = 20938},{ID = 20938},{ID = 20939},{ID = 20939},},
}
ScriptFightDB[313] = {        
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20940},{ID = 20941},{ID = 20941},{ID = 20942},{ID = 20942},},
	systemActions = {
	      [1] = {
		  condition = {
		  {type = ScriptFightConditionType.AttrValue, params={DBID = 20940,type="hp",["<="] =20},},
		   {type = ScriptFightConditionType.AttrValue, params={DBID = 20940,type="hp",[">"] =0},},
		  isAnd = true,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={20940},bubbleID = 455},},
		    {type = ScriptFightActionType.EntityQuit,params={DBID ={20940},},},
		  },
},
},
}
ScriptFightDB[314] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20943},},
}
-------------------------------------------39-40������-----------------------------------------------------
ScriptFightDB[401] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21001},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21001,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21001,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21001},bubbleID = 461},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21001},}, }
			},
	},
},
}
ScriptFightDB[402] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21002},{ID = 21020},{ID = 21020},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21002,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21002,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21002},bubbleID = 462},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21002},}, }
			},
	},
},
}
ScriptFightDB[403] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21004},{ID = 21021},{ID = 21021},},
    systemActions =
	{
	      [1] =
	      {
		  condition = {
		  {type = ScriptFightConditionType.RoundCount, params={ round = 10,},},
		  isAnd = true,
		  count = 1,
		  },
		  actions = {
		  {type = ScriptFightActionType.PlayBubble,params={DBID={21004},bubbleID = 463},},
		  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 464},},
                  {type = ScriptFightActionType.FightEnd,params={winner = "player"},}
		  },
	      },
	},
}
ScriptFightDB[404] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21005},},
}
ScriptFightDB[405] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21006},{ID = 21022},{ID = 21022},{ID = 21023},{ID = 21023},},
}
ScriptFightDB[406] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21007},{ID = 21024},{ID = 21025},{ID = 21024},{ID = 21025},},
}
ScriptFightDB[407] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21008},{ID = 21026},{ID = 21026},},
}
ScriptFightDB[408] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21010},},
}
ScriptFightDB[409] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21011},{ID = 21027},{ID = 21028},{ID = 21027},{ID = 21028},},
}
ScriptFightDB[410] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21012},{ID = 21027},{ID = 21028},{ID = 21027},{ID = 21028},},
}
ScriptFightDB[411] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21014},{ID = 21027},{ID = 21028},{ID = 21027},{ID = 21028},},
}
ScriptFightDB[412] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21016},{ID = 21031},{ID = 21031},},
    systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21016,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21016,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21016},bubbleID = 465},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21016},}, }
			},
	},
},
}
ScriptFightDB[413] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21017},{ID = 21031},{ID = 21031},},
    systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21017,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21017,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21017},bubbleID = 466},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21017},}, }
			},
	},
},
}
ScriptFightDB[414] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21018},{ID = 21029},{ID = 21030},{ID = 21029},{ID = 21030},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21018,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21018,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21018},bubbleID = 467},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21018},}, }
			},
	},
},
}
ScriptFightDB[415] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21019},{ID = 21029},{ID = 21030},{ID = 21029},{ID = 21030},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21019,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21019,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21019},bubbleID = 468},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21019},}, }
			},
	},
},
}
-------------------------------------------41-42������-----------------------------------------------------
ScriptFightDB[451] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21103},{ID = 21101},{ID = 21102},{ID = 21101},{ID = 21102},},
}
ScriptFightDB[452] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21104},{ID = 21101},{ID = 21102},{ID = 21101},{ID = 21102},},
}
ScriptFightDB[453] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21105},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21105,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21105,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21105},bubbleID = 481},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21105},}, }
			},
	},
},
}
ScriptFightDB[454] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21109},{ID = 21107},{ID = 21108},{ID = 21107},{ID = 21108},},
}
ScriptFightDB[455] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21110},{ID = 21107},{ID = 21108},{ID = 21107},{ID = 21108},},
}
ScriptFightDB[456] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21111},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21105,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21105,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21111},bubbleID = 482},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21111},}, }
			},
	},
},
}
ScriptFightDB[457] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21114},{ID = 21112},{ID = 21113},{ID = 21112},{ID = 21113},},
}
ScriptFightDB[458] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21115},{ID = 21112},{ID = 21113},{ID = 21112},{ID = 21113},},
}
ScriptFightDB[459] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21116},},
}
ScriptFightDB[460] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21119},{ID = 21117},{ID = 21118},{ID = 21117},{ID = 21118},},
}
ScriptFightDB[461] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21120},{ID = 21117},{ID = 21118},{ID = 21117},{ID = 21118},},
}
ScriptFightDB[462] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21121},},
}
ScriptFightDB[463] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21125},{ID = 21123},{ID = 21124},{ID = 21123},{ID = 21124},},
npcs = {{ID = 21122},},--����NPC����
}
ScriptFightDB[464] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21126},{ID = 21123},{ID = 21124},{ID = 21123},{ID = 21124},},
npcs = {{ID = 21122},},--����NPC����
}
ScriptFightDB[465] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21127},},
npcs = {{ID = 21122},},--����NPC����
}
ScriptFightDB[466] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21130},{ID = 21128},{ID = 21129},{ID = 21128},{ID = 21129},},
npcs = {{ID = 21122},},--����NPC����
}
ScriptFightDB[467] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21131},{ID = 21128},{ID = 21129},{ID = 21128},{ID = 21129},},
npcs = {{ID = 21122},},--����NPC����
}
ScriptFightDB[468] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21132},},
npcs = {{ID = 21122},},--����NPC����
}
ScriptFightDB[469] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21136},{ID = 21134},{ID = 21135},{ID = 21134},{ID = 21135},},
}
ScriptFightDB[470] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21137},{ID = 21134},{ID = 21135},{ID = 21134},{ID = 21135},},
}
ScriptFightDB[471] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21138},},
}
ScriptFightDB[472] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21139},{ID = 21134},{ID = 21135},{ID = 21134},{ID = 21135},},
}
ScriptFightDB[473] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21140},{ID = 21134},{ID = 21135},{ID = 21134},{ID = 21135},},
}
ScriptFightDB[474] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21141},},
}
ScriptFightDB[475] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21144},{ID = 21142},{ID = 21143},{ID = 21142},{ID = 21143},},
}
ScriptFightDB[476] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21145},{ID = 21142},{ID = 21143},{ID = 21142},{ID = 21143},},
}
ScriptFightDB[477] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21146},},
}
ScriptFightDB[478] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21149},{ID = 21147},{ID = 21148},{ID = 21147},{ID = 21148},},
}
ScriptFightDB[479] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21150},{ID = 21147},{ID = 21148},{ID = 21147},{ID = 21148},},
}
ScriptFightDB[480] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21151},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21151,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21151,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21151},bubbleID = 483},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21151},}, }
			},
	},
},
}
ScriptFightDB[481] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21155},{ID = 21153},{ID = 21154},{ID = 21153},{ID = 21154},},
}
ScriptFightDB[482] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21156},{ID = 21153},{ID = 21154},{ID = 21153},{ID = 21154},},
}
ScriptFightDB[483] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21157},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21157,type="hp",["<="]=20},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21157,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21157},bubbleID = 484},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21157},}, }
			},
	                      },
},
}
ScriptFightDB[484] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21161},{ID = 21159},{ID = 21160},{ID = 21159},{ID = 21160},},
}
ScriptFightDB[485] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21162},{ID = 21159},{ID = 21160},{ID = 21159},{ID = 21160},},
}
ScriptFightDB[486] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21163},},
}

-------------------------------------------43-44������-----------------------------------------------------
ScriptFightDB[501] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21203},{ID = 21204},{ID = 21205},{ID = 21206},{ID = 21207},},
}
ScriptFightDB[502] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21208},{ID = 21204},{ID = 21205},{ID = 21206},{ID = 21207},},
}
ScriptFightDB[503] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21209},{ID = 21204},{ID = 21205},{ID = 21206},{ID = 21207},},
}
ScriptFightDB[504] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21211},{ID = 21212},{ID = 21213},{ID = 21214},{ID = 21215},},
	npcs = {{ID = 21210},},
}
ScriptFightDB[505] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21216},{ID = 21212},{ID = 21213},{ID = 21214},{ID = 21215},},
	npcs = {{ID = 21210},},
}
ScriptFightDB[506] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21217},{ID = 21212},{ID = 21213},{ID = 21214},{ID = 21215},},
	npcs = {{ID = 21210},},
}
ScriptFightDB[507] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21218},{ID = 21219},{ID = 21220},{ID = 21221},{ID = 21222},},
}
ScriptFightDB[508] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21223},{ID = 21219},{ID = 21220},{ID = 21221},{ID = 21222},},
}
ScriptFightDB[509] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21224},{ID = 21219},{ID = 21220},{ID = 21221},{ID = 21222},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21019,type="hp",["<="]=40},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21019,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21224},bubbleID = 510},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21224},}, }
			},
	},
},
}
ScriptFightDB[510] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21225},{ID = 21219},{ID = 21220},{ID = 21221},{ID = 21222},},
}
ScriptFightDB[511] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21226},{ID = 21219},{ID = 21220},{ID = 21221},{ID = 21222},},
}
ScriptFightDB[512] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21227},{ID = 21219},{ID = 21220},{ID = 21221},{ID = 21222},},
}
ScriptFightDB[513] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21229},{ID = 21230},{ID = 21231},{ID = 21232},{ID = 21233},},
	npcs = {{ID = 21228},},
}
ScriptFightDB[514] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21234},{ID = 21230},{ID = 21231},{ID = 21232},{ID = 21233},},
	npcs = {{ID = 21228},},
}
ScriptFightDB[515] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21235},{ID = 21230},{ID = 21231},{ID = 21232},{ID = 21233},},
	npcs = {{ID = 21228},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21019,type="hp",["<="]=40},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21019,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21235},bubbleID = 511},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21235},}, }
			},
	},
},
}
ScriptFightDB[516] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21236},{ID = 21230},{ID = 21231},{ID = 21232},{ID = 21233},},
	npcs = {{ID = 21228},},
}
ScriptFightDB[517] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21237},{ID = 21230},{ID = 21231},{ID = 21232},{ID = 21233},},
	npcs = {{ID = 21228},},
}
ScriptFightDB[518] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21238},{ID = 21230},{ID = 21231},{ID = 21232},{ID = 21233},},
	npcs = {{ID = 21228},},
}
ScriptFightDB[519] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21240},{ID = 21241},{ID = 21242},{ID = 21243},{ID = 21244},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[520] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21245},{ID = 21241},{ID = 21242},{ID = 21243},{ID = 21244},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[521] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21246},},
	npcs = {{ID = 21239},{ID = 21228},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21246,type="hp",["<="]=40},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21246,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21246},bubbleID = 512},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21246},}, }
			},
	},
},
}
ScriptFightDB[522] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21247},{ID = 21248},{ID = 21249},{ID = 21250},{ID = 21251},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[523] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21252},{ID = 21248},{ID = 21249},{ID = 21250},{ID = 21251},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[524] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21253},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[525] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21254},{ID = 21256},{ID = 21257},{ID = 21258},{ID = 21259},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[526] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21255},{ID = 21256},{ID = 21257},{ID = 21258},{ID = 21259},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[527] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21260},{ID = 21256},{ID = 21257},{ID = 21258},{ID = 21259},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[528] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21261},{ID = 21256},{ID = 21257},{ID = 21258},{ID = 21259},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[529] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21262},{ID = 21256},{ID = 21257},{ID = 21258},{ID = 21259},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[530] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21263},{ID = 21256},{ID = 21257},{ID = 21258},{ID = 21259},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[531] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21264},{ID = 21219},{ID = 21220},{ID = 21221},{ID = 21222},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[532] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21265},{ID = 21219},{ID = 21220},{ID = 21221},{ID = 21222},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[533] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21266},{ID = 21219},{ID = 21220},{ID = 21221},{ID = 21222},},
	npcs = {{ID = 21239},{ID = 21228},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21266,type="hp",["<="]=40},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21266,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21266},bubbleID = 513},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21266},}, }
			},
	},
},
}
ScriptFightDB[534] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21267},{ID = 21269},{ID = 21270},{ID = 21271},{ID = 21272},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[535] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21268},{ID = 21269},{ID = 21270},{ID = 21271},{ID = 21272},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[536] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21273},{ID = 21269},{ID = 21270},{ID = 21271},{ID = 21272},},
	npcs = {{ID = 21239},{ID = 21228},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21273,type="hp",["<="]=40},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21273,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21273},bubbleID = 514},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21273},}, }
			},
	},
},
}
ScriptFightDB[537] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21274},{ID = 21276},{ID = 21277},{ID = 21271},{ID = 21272},},
        npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[538] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21275},{ID = 21276},{ID = 21277},{ID = 21271},{ID = 21272},},
	npcs = {{ID = 21239},{ID = 21228},},
}
ScriptFightDB[539] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 21278},{ID = 21276},{ID = 21277},{ID = 21271},{ID = 21272},},
	npcs = {{ID = 21239},{ID = 21228},},
	systemActions = {
			[1] = {
				condition = {
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21278,type="hp",["<="]=40},},
							{type = ScriptFightConditionType.AttrValue, params={DBID = 21278,type="hp",[">"] = 0},},
							isAnd = true,
		                 },
				 actions = {
					  {type = ScriptFightActionType.PlayBubble,params={DBID={21278},bubbleID = 515},},
					  {type = ScriptFightActionType.EntityQuit,params={DBID ={21278},}, }
			},
	},
},
}

------------------------------------------------�����ָ���  -_- ��Һ�,���Ƿָ��� --------------------------------------------------------------------------
ScriptFightDB[3001] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30001,},{ID = 30002,},{ID = 30003,},{ID = 30004,},{ID = 30005,},},
	--[[begin = {
			[1] = {
				condition = {
				          {type = ScriptFightConditionType.RoundCount, params={ round = 1},},
					isAnd = true,
				 },
				 actions = {

					  {type = ScriptFightActionType.PlayBubble,params={DBID={30001},bubbleID = 26144},},
					  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 26145},},
				 }
			},
	},]]
}
ScriptFightDB[3002] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30006,},{ID = 30007,},{ID = 30008,},{ID = 30009,},{ID = 30010,},},
	--[[begin = {
			[1] = {
				condition = {
				          {type = ScriptFightConditionType.RoundCount, params={ round = 1},},
					isAnd = true,
				 },
				 actions = {

					  {type = ScriptFightActionType.PlayBubble,params={DBID={30006},bubbleID = 26148},},
					  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 26149},},
				 }
			},
	},]]
}
ScriptFightDB[3003] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30011,},{ID = 30012,},{ID = 30013,},{ID = 30014,},{ID = 30015,},},
	--[[begin = {
			[1] = {
				condition = {
				          {type = ScriptFightConditionType.RoundCount, params={ round = 1},},
					isAnd = true,
				 },
				 actions = {

					  {type = ScriptFightActionType.PlayBubble,params={DBID={30011},bubbleID = 26152},},
					  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 26153},},
				 }
			},
	},]]
}
ScriptFightDB[3004] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30016,},{ID = 30017,},{ID = 30018,},{ID = 30019,},{ID = 30020,},},
	--[[begin = {
			[1] = {
				condition = {
				          {type = ScriptFightConditionType.RoundCount, params={ round = 1},},
					isAnd = true,
				 },
				 actions = {

					  {type = ScriptFightActionType.PlayBubble,params={DBID={30016},bubbleID = 26156},},
					  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 26157},},
				 }
			},
	},]]
}
ScriptFightDB[3005] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30021,},{ID = 30022,},{ID = 30023,},{ID = 30024,},{ID = 30025,},},
	--[[begin = {
			[1] = {
				condition = {
				          {type = ScriptFightConditionType.RoundCount, params={ round = 1},},
					isAnd = true,
				 },
				 actions = {

					  {type = ScriptFightActionType.PlayBubble,params={DBID={30021},bubbleID = 26160},},
					  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 26161},},
				 }
			},
	},]]
}
ScriptFightDB[3006] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30026,pos = 27},},
	--[[begin = {
			[1] = {
				condition = {
				          {type = ScriptFightConditionType.RoundCount, params={ round = 1},},
					isAnd = true,
				 },
				 actions = {

					  {type = ScriptFightActionType.PlayBubble,params={DBID={30026},bubbleID = 26164},},
					  {type = ScriptFightActionType.PlayBubble,params={DBID={0},bubbleID = 26165},},
				 }
			},
	},]]
}
ScriptFightDB[3007] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30072,},{ID = 30071,},{ID = 30073,},{ID = 30070,},{ID = 30074,},{ID = 30462,},{ID = 30463,},{ID = 30464,},}
	}
ScriptFightDB[3008] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30075,},{ID = 30076,},{ID = 30078,},{ID = 30077,},{ID = 30079,},{ID = 30465,},{ID = 30466,},{ID = 30467,},}
	}
ScriptFightDB[3009] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30080,},{ID = 30081,},{ID = 30082,},{ID = 30083,},{ID = 30084,},{ID = 30468,},{ID = 30469,},{ID = 30470,},},
	}
ScriptFightDB[3010] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30085,},{ID = 30086,},{ID = 30087,},{ID = 30088,},{ID = 30089,},{ID = 30471,},{ID = 30472,},{ID = 30473,},},
	}
ScriptFightDB[3011] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30090,},{ID = 30091,},{ID = 30092,},{ID = 30093,},{ID = 30094,},{ID = 30474,},{ID = 30475,},{ID = 30476,},},
	}
ScriptFightDB[3012] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30095,pos = 27},},
	}

ScriptFightDB[3333] = {
	monsters = {type = ScriptMonsterCreateType.Random,{ID = 7,weight = 1},{ID = 20303,weight = 10000}, }	
}


ScriptFightDB[3017] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30184,},{ID = 30182, },{ID = 30183, },{ID = 30181, },{ID = 30185, },{ID = 30300, },{ID = 30301, },{ID = 30302, },},
	}
ScriptFightDB[3018] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30163, },{ID = 30161, },{ID = 30162, },{ID = 30160, },{ID = 30164, },{ID = 30303, },{ID = 30304, },{ID = 30305, },},
	}
ScriptFightDB[3019] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30168, },{ID = 30166, },{ID = 30167, },{ID = 30165, },{ID = 30169, },{ID = 30306, },{ID = 30307, },{ID = 30308, },},
	}
ScriptFightDB[3020] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30173, },{ID = 30171, },{ID = 30172, },{ID = 30170, },{ID = 30174, },{ID = 30309, },{ID = 30310, },{ID = 30311, },},
	}
ScriptFightDB[3021] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30178, },{ID = 30176, },{ID = 30177, },{ID = 30175, },{ID = 30178, },{ID = 30312, },{ID = 30313, },{ID = 30314, },},
	}
ScriptFightDB[3022] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30180,pos = 27 },},
	}

--Ǳ����
ScriptFightDB[3025] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30322, },{ID = 30324, },{ID = 30321, },{ID = 30326, },{ID = 30327, },{ID = 30328, },{ID = 30325, },{ID = 30323, },},
	}
ScriptFightDB[3026] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30334, },{ID = 30332, },{ID = 30329, },{ID = 30330, },{ID = 30335, },{ID = 30331, },{ID = 30336, },{ID = 30333, },},
	}
ScriptFightDB[3027] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30340, },{ID = 30338, },{ID = 30337, },{ID = 30342, },{ID = 30343, },{ID = 30344, },{ID = 30341, },{ID = 30339, },},
	}
ScriptFightDB[3028] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30350, },{ID = 30346, },{ID = 30345, },{ID = 30348, },{ID = 30351, },{ID = 30349, },{ID = 30352, },{ID = 30347, },},
	}
ScriptFightDB[3029] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30354, },{ID = 30353, },{ID = 30355, },{ID = 30358, },{ID = 30356, },{ID = 30359, },{ID = 30355, },{ID = 30360, },},
	}
ScriptFightDB[3030] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30361,pos = 26 },},
	}
---------------------���Ͽ�������ã�˳���¥��һ������--------------------------------
ScriptFightDB[3031] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30421,},{ID = 30422, },{ID = 30423, },{ID = 30420, },{ID = 30424, },{ID = 30425, },{ID = 30426, },{ID = 30427, },},
	}
ScriptFightDB[3032] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30429,},{ID = 30430, },{ID = 30431, },{ID = 30428, },{ID = 30432, },{ID = 30433, },{ID = 30434, },{ID = 30435, },},
	}
ScriptFightDB[3033] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30437,},{ID = 30438, },{ID = 30439, },{ID = 30436, },{ID = 30440, },{ID = 30441, },{ID = 30442, },{ID = 30443, },},
	}
ScriptFightDB[3034] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30445,},{ID = 30446, },{ID = 30447, },{ID = 30444, },{ID = 30448, },{ID = 30449, },{ID = 30450, },{ID = 30451, },},
	}
ScriptFightDB[3035] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30453,},{ID = 30454, },{ID = 30455, },{ID = 30452, },{ID = 30456, },{ID = 30457, },{ID = 30458, },{ID = 30459, },},
	}
ScriptFightDB[3036] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30460,pos = 27 },},
	}

--------------------�����Ǳ̲����������û��أ�ǧ��Ҫ�����Ѿ���--------------------------------------
ScriptFightDB[3037] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30511,},{ID = 30512, },{ID = 30513, },{ID = 30510, },{ID = 30514, },{ID = 30515, },{ID = 30516, },{ID = 30517, },},
	}
ScriptFightDB[3038] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30519,},{ID = 30520, },{ID = 30521, },{ID = 30518, },{ID = 30522, },{ID = 30523, },{ID = 30524, },{ID = 30525, },},
	}
ScriptFightDB[3039] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30527,},{ID = 30528, },{ID = 30529, },{ID = 30526, },{ID = 30530, },{ID = 30531, },{ID = 30532, },{ID = 30533, },},
	}
ScriptFightDB[3040] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30535,},{ID = 30536, },{ID = 30537, },{ID = 30534, },{ID = 30538, },{ID = 30539, },{ID = 30540, },{ID = 30541, },},
	}
ScriptFightDB[3041] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30543,},{ID = 30544, },{ID = 30545, },{ID = 30542, },{ID = 30546, },{ID = 30547, },{ID = 30548, },{ID = 30549, },},
	}
ScriptFightDB[3042] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30550,pos = 27 },},
	}

-----����ԭ---��ô��ô�໰˵����Ҫɾ���ҵľ�����--------------------
ScriptFightDB[3045] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30651, },{ID = 30653, },{ID = 30650, },{ID = 30655, },{ID = 30656, },{ID = 30657, },{ID = 30654, },{ID = 30652, },},
	}
ScriptFightDB[3046] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30662, },{ID = 30661, },{ID = 30658, },{ID = 30659, },{ID = 30663, },{ID = 30660, },{ID = 30664, },{ID = 30665, },},
	}
ScriptFightDB[3047] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30668, },{ID = 30671, },{ID = 30666, },{ID = 30670, },{ID = 30672, },{ID = 30673, },{ID = 30669, },{ID = 30667, },},
	}
ScriptFightDB[3048] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30676, },{ID = 30677, },{ID = 30674, },{ID = 30681, },{ID = 30679, },{ID = 30675, },{ID = 30680, },{ID = 30678, },},
	}
ScriptFightDB[3049] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30685, },{ID = 30684, },{ID = 30682, },{ID = 30687, },{ID = 30683, },{ID = 30688, },{ID = 30686, },{ID = 30689, },},
	}
ScriptFightDB[3050] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30690,pos = 26 },},
	}
-----ħ�޷�---ɾ�����������ħ���Ŀ־�--------------

ScriptFightDB[3055] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30741, },{ID = 30742, },{ID = 30740, },{ID = 30743, },{ID = 30744, },{ID = 30745, },{ID = 30746, },{ID = 30747, },},
	}
ScriptFightDB[3056] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30749, },{ID = 30750, },{ID = 30748, },{ID = 30751, },{ID = 30752, },{ID = 30753, },{ID = 30754, },{ID = 30755, },},
	}
ScriptFightDB[3057] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30758, },{ID = 30757, },{ID = 30756, },{ID = 30760, },{ID = 30761, },{ID = 30759, },{ID = 30762, },{ID = 30763, },},
	}
ScriptFightDB[3058] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30765, },{ID = 30768, },{ID = 30764, },{ID = 30766, },{ID = 30769, },{ID = 30767, },{ID = 30770, },{ID = 30771, },},
	}
ScriptFightDB[3059] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30773, },{ID = 30778, },{ID = 30772, },{ID = 30774, },{ID = 30776, },{ID = 30777, },{ID = 30775, },{ID = 30779, },},
	}
ScriptFightDB[3060] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30780,pos = 26 },},
	}
----------------------а��ɽ�����������ȵģ�����Ҳ�ã�����Ҳ�á�����Ϊʲô����������ô����������-------------------------------
ScriptFightDB[3061] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30826, },{ID = 30827, },{ID = 30825, },{ID = 30828, },{ID = 30829, },{ID = 30830, },{ID = 30831, },{ID = 30832, },},
	}
ScriptFightDB[3062] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30834, },{ID = 30835, },{ID = 30833, },{ID = 30836, },{ID = 30837, },{ID = 30838, },{ID = 30839, },{ID = 30840, },},
	}
ScriptFightDB[3063] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30842, },{ID = 30843, },{ID = 30841, },{ID = 30844, },{ID = 30845, },{ID = 30846, },{ID = 30847, },{ID = 30848, },},
	}
ScriptFightDB[3064] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30850, },{ID = 30851, },{ID = 30849, },{ID = 30852, },{ID = 30853, },{ID = 30854, },{ID = 30855, },{ID = 30856, },},
	}
ScriptFightDB[3065] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30858, },{ID = 30859, },{ID = 30857, },{ID = 30860, },{ID = 30861, },{ID = 30862, },{ID = 30863, },{ID = 30864, },},
	}
ScriptFightDB[3066] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30865,pos = 26 },},
	}

----------------------------------�¸���������,����---------------------��-----------------------
ScriptFightDB[3070] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30891, },{ID = 30892, },{ID = 30890, },{ID = 30893, },{ID = 30894, },{ID = 30895, },{ID = 30896, },{ID = 30897, },},
	}
ScriptFightDB[3071] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30899, },{ID = 30900, },{ID = 30898, },{ID = 30901, },{ID = 30902, },{ID = 30903, },{ID = 30904, },{ID = 30905, },},
	}
ScriptFightDB[3072] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30906, },{ID = 30908, },{ID = 30910, },},
	}
ScriptFightDB[3073] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30915, },{ID = 30916, },{ID = 30914, },{ID = 30917, },{ID = 30918, },{ID = 30919, },{ID = 30920, },{ID = 30921, },},
	}
ScriptFightDB[3074] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30923, },{ID = 30924, },{ID = 30922, },{ID = 30925, },{ID = 30926, },{ID = 30927, },{ID = 30928, },{ID = 30929, },},
	}
ScriptFightDB[3075] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30930, },},
	}

-----------------------------------------������У�ȡ������ǣ��칬�þ���--------------------------------------------------------------------------------------------------------


ScriptFightDB[3076] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31021, },{ID = 31022, },{ID = 31020, },{ID = 31023, },{ID = 31024, },{ID = 31025, },{ID = 31026, },{ID = 31027, },},
	}
ScriptFightDB[3077] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31029, },{ID = 31030, },{ID = 31028, },{ID = 31031, },{ID = 31032, },{ID = 31033, },{ID = 31034, },{ID = 31035, },},
	}
ScriptFightDB[3078] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31037, },{ID = 31038, },{ID = 31036, },{ID = 31039, },{ID = 31040, },{ID = 31041, },{ID = 31042, },{ID = 31043, },},
	}
ScriptFightDB[3079] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31045, },{ID = 31046, },{ID = 31044, },{ID = 31047, },{ID = 31048, },{ID = 31049, },{ID = 31050, },{ID = 31051, },},
	}
ScriptFightDB[3080] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31053, },{ID = 31054, },{ID = 31052, },{ID = 31055, },{ID = 31056, },{ID = 31057, },{ID = 31058, },{ID = 31059, },},
	}
ScriptFightDB[3081] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31060, },},
	}

-----------------------------------�����֣�������һ����ף���󼪰ɣ�----------------------------------------------

--------------------------------------------------------------����븱��--------------------------------------------------------------------------------------------------------
ScriptFightDB[3082] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31111, },{ID = 31112, },{ID = 31110, },{ID = 31113, },{ID = 31114, },{ID = 31115, },{ID = 31116, },{ID = 31117, },},
	}
ScriptFightDB[3083] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31119, },{ID = 31120, },{ID = 31118, },{ID = 31121, },{ID = 31122, },{ID = 31123, },{ID = 31124, },{ID = 31125, },},
	}
ScriptFightDB[3084] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31127, },{ID = 31128, },{ID = 31126, },{ID = 31129, },{ID = 31130, },{ID = 31131, },{ID = 31132, },{ID = 31133, },},
	}
ScriptFightDB[3085] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31135, },{ID = 31136, },{ID = 31134, },{ID = 31137, },{ID = 31138, },{ID = 31139, },{ID = 31140, },{ID = 31141, },},
	}
ScriptFightDB[3086] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31143, },{ID = 31144, },{ID = 31142, },{ID = 31145, },{ID = 31146, },{ID = 31147, },{ID = 31148, },{ID = 31149, },},
	}
ScriptFightDB[3087] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31150, },},
	}
-----------------------------------�����֣�������һ����ף���󼪰ɣ�----------------------------------------------

ScriptFightDB[3088] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31251, },{ID = 31252, },{ID = 31250, },{ID = 31253, },{ID = 31254, },{ID = 31255, },{ID = 31256, },{ID = 31257, },},
	}
ScriptFightDB[3089] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31259, },{ID = 31260, },{ID = 31258, },{ID = 31261, },{ID = 31262, },{ID = 31263, },{ID = 31264, },{ID = 31265, },},
	}
ScriptFightDB[3090] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31267, },{ID = 31268, },{ID = 31266, },{ID = 31269, },{ID = 31270, },{ID = 31271, },{ID = 31272, },{ID = 31273, },},
	
	begin  = {                                                               

		[1] = {								

			condition = {						 
				
				--{type = ScriptFightConditionType.RoundCount, params={ round = 1 },},
				{type = ScriptFightConditionType.RoundInterval, params={period = 2,startRound = 2},},
				

			 },

			actions = {							

				{type = ScriptFightActionType.AddBuff,params={DBID ={31266},buffID = 48,49} },
				
			 },
		 },
							
	},
	}
ScriptFightDB[3091] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31275, },{ID = 31276, },{ID = 31274, },{ID = 31277, },{ID = 31278, },{ID = 31279, },{ID = 31280, },{ID = 31281, },},
	}
ScriptFightDB[3092] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31282, },},
	
	begin  = {                                                               

		[1] = {								

			condition = {						 
				
				{type = ScriptFightConditionType.RoundCount, params={ round = 1 },},
				--{type = ScriptFightConditionType.RoundInterval, params={period = 2,startRound = 2},},
				
                          count = 1,
			 },

			actions = {							

				{type = ScriptFightActionType.EntityEnter,params={{DBID = 31258,count = 3},} },
			        {type = ScriptFightActionType.AddBuff,params={DBID ={31282},buffID = 46} },
				

				isSameTime = true,
			 },
		 },
                 [2] = {								

			condition = {						 
				
				{type = ScriptFightConditionType.AttrValue, params={DBID = 31282,type="hp",["<="] = 30},},
				--{type = ScriptFightConditionType.RoundInterval, params={period = 2,startRound = 2},},
				
                          count = 1,
			 },

			actions = {							

				{type = ScriptFightActionType.EntityEnter,params={{DBID = 31258,count = 3},} },
			        {type = ScriptFightActionType.AddBuff,params={DBID ={31282},buffID = 44} },
				

				isSameTime = true,
			 },
		 },

		
								
	},
	}

-------------------------------------------�칫ɽ----�����丱��----------------------------------
ScriptFightDB[3093] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31196, },{ID = 31191, },{ID = 31193, },{ID = 31190, },{ID = 31194, },{ID = 31195, },{ID = 31197, },{ID = 31192, },},
	}
ScriptFightDB[3094] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31204, },{ID = 31199, },{ID = 31201, },{ID = 31198, },{ID = 31202, },{ID = 31203, },{ID = 31205, },{ID = 31200, },},
	}
ScriptFightDB[3095] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31212, },{ID = 31207, },{ID = 31209, },{ID = 31206, },{ID = 31210, },{ID = 31211, },{ID = 31213, },{ID = 31208, },},
	}
ScriptFightDB[3096] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31218, },{ID = 31220, },{ID = 31215, },{ID = 31214, },{ID = 31216, },{ID = 31217, },{ID = 31219, },{ID = 31221, },},
	}
ScriptFightDB[3097] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31222, },},
	}
-------------------------------------------�Ʒ���--------------------------------------
ScriptFightDB[3098] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31376, },{ID = 31374, },{ID = 31371, },{ID = 31372, },{ID = 31373, },{ID = 31370, },{ID = 31377, },{ID = 31375, },},
	}
ScriptFightDB[3099] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31384, },{ID = 31382, },{ID = 31379, },{ID = 31378, },{ID = 31380, },{ID = 31381, },{ID = 31385, },{ID = 31383, },},
	}
ScriptFightDB[3100] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31392, },{ID = 31390, },{ID = 31387, },{ID = 31386, },{ID = 31388, },{ID = 31389, },{ID = 31393, },{ID = 31391, },},
	}
ScriptFightDB[3101] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31398, },{ID = 31400, },{ID = 31395, },{ID = 31394, },{ID = 31396, },{ID = 31397, },{ID = 31399, },{ID = 31401, },},
	}
ScriptFightDB[3102] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31402, },},
	}
--------------------------------------------��ħ��-----����״θ���------------------------------------------
ScriptFightDB[3103] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31301, },{ID = 31302, },{ID = 31300, },{ID = 31303, },{ID = 31304, },{ID = 31305, },{ID = 31306, },{ID = 31307, },},
	}
ScriptFightDB[3104] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31309, },{ID = 31310, },{ID = 31308, },{ID = 31311, },{ID = 31312, },{ID = 31313, },{ID = 31314, },{ID = 31315, },},
	}
ScriptFightDB[3105] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31317, },{ID = 31318, },{ID = 31316, },{ID = 31319, },{ID = 31320, },{ID = 31321, },{ID = 31322, },{ID = 31323, },},
	}
ScriptFightDB[3106] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31325, },{ID = 31326, },{ID = 31324, },{ID = 31327, },{ID = 31328, },{ID = 31329, },{ID = 31330, },{ID = 31331, },},
	}
ScriptFightDB[3107] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31332, },},
	}

-- ������ѭ�����񡪡������������Ľű�ս��-------------------------------
ScriptFightDB[4001] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25001},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4002] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25002},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4003] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25003},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4004] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25004},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4005] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25005},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4006] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25006},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4007] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25007},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4008] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25008},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4009] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25009},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4010] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25010},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4011] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25011},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4012] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25012},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4013] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25013},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4014] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25014},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4015] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25015},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4016] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25016},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4017] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25017},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4018] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25018},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4019] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25019},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4020] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25020},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4021] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25021},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4022] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25022},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4023] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25023},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4024] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25024},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4025] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25025},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4026] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25026},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4027] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25027},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4028] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25028},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4029] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25029},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
ScriptFightDB[4030] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 25030},{ID = 25031},{ID = 25031},{ID = 25031},{ID = 25031},},
	}
	---------------------------------------------------������и�������Ԯ���ι�--------------------------------------------------
ScriptFightDB[4050] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31450, },{ID = 31451, },{ID = 31452, },{ID = 31453, },{ID = 31454, },},
	}
ScriptFightDB[4051] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31455, },{ID = 31456, },{ID = 31457, },{ID = 31458, },{ID = 31459, },},
	}
ScriptFightDB[4052] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31460, },{ID = 31461, },{ID = 31462, },{ID = 31463, },{ID = 31464, },},
	}
ScriptFightDB[4053] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31465, },{ID = 31466, },{ID = 31467, },{ID = 31468, },{ID = 31469, },},
	}
ScriptFightDB[4054] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31470, },{ID = 31471, },{ID = 31472, },{ID = 31473, },{ID = 31474, },},
	}
ScriptFightDB[4055] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31475, },{ID = 31476, },{ID = 31477, },{ID = 31478, },{ID = 31479, },},
	}
ScriptFightDB[4056] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31470, },{ID = 31471, },{ID = 31472, },{ID = 31473, },{ID = 31474, },},
	}
ScriptFightDB[4057] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31465, },{ID = 31466, },{ID = 31467, },{ID = 31468, },{ID = 31469, },},
	}
ScriptFightDB[4058] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31455, },{ID = 31456, },{ID = 31457, },{ID = 31458, },{ID = 31459, },},
	}
ScriptFightDB[4059] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31450, },{ID = 31451, },{ID = 31452, },{ID = 31453, },{ID = 31454, },},
	}
ScriptFightDB[4060] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31475, },{ID = 31476, },{ID = 31477, },{ID = 31478, },{ID = 31479, },},
	}
ScriptFightDB[4061] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31460, },{ID = 31461, },{ID = 31462, },{ID = 31463, },{ID = 31464, },},
	}
ScriptFightDB[4062] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31465, },{ID = 31466, },{ID = 31467, },{ID = 31468, },{ID = 31469, },},
	}
ScriptFightDB[4063] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31455, },{ID = 31456, },{ID = 31457, },{ID = 31458, },{ID = 31459, },},
	}
ScriptFightDB[4064] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31475, },{ID = 31476, },{ID = 31477, },{ID = 31478, },{ID = 31479, },},
	}
ScriptFightDB[4065] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31480, },},
	}
	---------------------------------------------------������и��������ջƽ���--------------------------------------------------
ScriptFightDB[4066] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10805, },{ID = 10804, },{ID = 10804, },{ID = 10806, },{ID = 10806, },},
	}
--------------------------------------------ʦ������Ľű�ս��-------------------------------
--------------------------------------------����Ľű�ս��-------------------------------
ScriptFightDB[4101] = {             -----------------����ս��-����С��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 26001},{ID = 26001},{ID = 26002},{ID = 26002},{ID = 26002},},
	}
ScriptFightDB[4102] = {             -----------------����ս��-�ƻ�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 26003},{ID = 26003},{ID = 26004},{ID = 26004},{ID = 26004},},
	}
ScriptFightDB[4103] = {             -----------------����ս��-������å
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 26005},{ID = 26005},{ID = 26006},{ID = 26006},{ID = 26006},},
	}
ScriptFightDB[4104] = {             -----------------����ս��-��ɽ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 26007},{ID = 26007},{ID = 26008},{ID = 26008},{ID = 26008},},
	}
ScriptFightDB[4105] = {             -----------------������ս-ǬԪ�������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20021},},
	}
ScriptFightDB[4106] = {             -----------------������ս-��Դ�������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20025},},
	}
ScriptFightDB[4107] = {             -----------------������ս-��ϼɽ�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20023},},
	}
ScriptFightDB[4108] = {             -----------------������ս-����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20022},},
	}
ScriptFightDB[4109] = {             -----------------������ս-�����Ŵ����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20026},},
	}
ScriptFightDB[4110] = {             -----------------������ս-�����������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20024},},
	}
ScriptFightDB[4111] = {             -----------------������ս-ǬԪ��ִ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 29066},},
	}
ScriptFightDB[4112] = {             -----------------������ս-��Դ��ִ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 29067},},
	}
ScriptFightDB[4113] = {             -----------------������ս-��ϼɽִ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 29068},},
	}
ScriptFightDB[4114] = {             -----------------������ս-������ִ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 29069},},
	}
ScriptFightDB[4115] = {             -----------------������ս-������ִ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 29070},},
	}
ScriptFightDB[4116] = {             -----------------������ս-������ִ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 29071},},
	}
ScriptFightDB[4117] = {             -----------------��������-�ؽ̼�ϸ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 26009},{ID = 26020},{ID = 26020},},
	}
ScriptFightDB[4118] = {             -----------------��������-������ͽ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 26012},{ID = 26020},{ID = 26020},},
	}
ScriptFightDB[4119] = {             -----------------��������-���ִ̿�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 26011},{ID = 26020},{ID = 26020},},
	}
ScriptFightDB[4120] = {             -----------------��������-͵����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 26010},{ID = 26020},{ID = 26020},},
	}
ScriptFightDB[4121] = {             -----------------ץ������-������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10011},},
	}
ScriptFightDB[4122] = {             -----------------ץ������-��ħ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10014},},
	}
ScriptFightDB[4123] = {             -----------------ץ������-������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10015},},
	}
ScriptFightDB[4124] = {             -----------------ץ������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10016},},
	}
ScriptFightDB[4125] = {             -----------------ץ������-�ſ�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10018},},
	}
ScriptFightDB[4126] = {             -----------------ץ������-�ؽ�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10022},},
	}
ScriptFightDB[4127] = {             -----------------ץ������-������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10023},},
	}
ScriptFightDB[4128] = {             -----------------ץ������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10024},},
	}
ScriptFightDB[4129] = {             -----------------ץ������-˫ͷ����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10026},},
	}
ScriptFightDB[4130] = {             -----------------ץ������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10027},},
	}
ScriptFightDB[4131] = {             -----------------ץ������-ħȮ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10029},},
	}
ScriptFightDB[4132] = {             -----------------ץ������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10030},},
	}
ScriptFightDB[4133] = {             -----------------ץ������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10031},},
	}
ScriptFightDB[4134] = {             -----------------ץ������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10034},},
	}
ScriptFightDB[4135] = {             -----------------ץ������-��ħŮ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10035},},
	}
ScriptFightDB[4136] = {             -----------------ץ������-��ʿ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10036},},
	}
ScriptFightDB[4137] = {             -----------------ץ������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10038},},
	}
ScriptFightDB[4138] = {             -----------------ץ������-ıʿ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10039},},
	}
ScriptFightDB[4139] = {             -----------------ץ������-ţͷ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10040},},
	}
ScriptFightDB[4140] = {             -----------------ץ������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10041},},
	}
ScriptFightDB[4141] = {             -----------------Ѳ�ߴ�����ؤ�¼�-��·ǿ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 26018},{ID = 26018},{ID = 26019},{ID = 26019},{ID = 26019},},
	}
ScriptFightDB[4142] = {             -----------------Ѳ�ߴ����������¼�-���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 26028},},
	}


------------------------------ ��һ�� ���������������ս���ָ�-------------------------------
ScriptFightDB[5001] = {             -----------------����ս��-��׿�൳
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27001},{ID = 27001},{ID = 27001},{ID = 27001},{ID = 27001},},
}
ScriptFightDB[5002] = {             -----------------����ս��-�ƽ��൳
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27002},{ID = 27002},{ID = 27002},{ID = 27002},{ID = 27002},},
}
ScriptFightDB[5003] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27003},{ID = 27003},{ID = 27003},{ID = 27003},{ID = 27003},},
}
ScriptFightDB[5004] = {             -----------------����ս��-ǿ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27004},{ID = 27004},{ID = 27004},{ID = 27004},{ID = 27004},},
}
ScriptFightDB[5005] = {             -----------------����ս��-��å
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27005},{ID = 27005},{ID = 27005},{ID = 27005},{ID = 27005},},
}
ScriptFightDB[5006] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27006},{ID = 27006},{ID = 27006},{ID = 27006},{ID = 27006},},
}
ScriptFightDB[5007] = {             -----------------����ս��-���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27007},{ID = 27007},{ID = 27007},{ID = 27007},{ID = 27007},},
}
ScriptFightDB[5008] = {             -----------------����ս��-��Ȫ����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27008},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5009] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27009},{ID = 27009},{ID = 27009},{ID = 27009},{ID = 27009},},
}
ScriptFightDB[5010] = {             -----------------����ս��-�����鳤
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27010},{ID = 27001},{ID = 27001},{ID = 27001},{ID = 27001},},
}
ScriptFightDB[5011] = {             -----------------����ս��-�ƽ�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27011},{ID = 27002},{ID = 27002},{ID = 27002},{ID = 27002},},
}
ScriptFightDB[5012] = {             -----------------����ս��-��Į����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27012},{ID = 27012},{ID = 27012},{ID = 27012},{ID = 27012},},
}
ScriptFightDB[5013] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27013},{ID = 27013},{ID = 27013},{ID = 27013},{ID = 27013},},
}
ScriptFightDB[5014] = {             -----------------����ս��-ɽ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27014},{ID = 27014},{ID = 27014},{ID = 27014},{ID = 27014},},
}
ScriptFightDB[5015] = {             -----------------����ս��-ˮ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27015},{ID = 27015},{ID = 27015},{ID = 27015},{ID = 27015},},
}
ScriptFightDB[5016] = {             -----------------����ս��-��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27016},{ID = 27001},{ID = 27001},{ID = 27001},{ID = 27001},},
}
ScriptFightDB[5017] = {             -----------------����ս��-�ƽ����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27017},{ID = 27002},{ID = 27002},{ID = 27002},{ID = 27002},},
}
ScriptFightDB[5018] = {             -----------------����ս��-��ɽ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27018},{ID = 27018},{ID = 27018},{ID = 27018},{ID = 27018},},
}
ScriptFightDB[5019] = {             -----------------����ս��-а���൳
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27019},{ID = 27019},{ID = 27019},{ID = 27019},{ID = 27019},},
}
ScriptFightDB[5020] = {             -----------------����ս��-�˾��ѵ�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27020},{ID = 27020},{ID = 27020},{ID = 27020},{ID = 27020},},
}
ScriptFightDB[5021] = {             -----------------����ս��-а���ͽ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27021},{ID = 27021},{ID = 27021},{ID = 27021},{ID = 27021},},
}
ScriptFightDB[5022] = {             -----------------����ս��-а�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27022},{ID = 27022},{ID = 27022},{ID = 27022},{ID = 27022},},
}
ScriptFightDB[5023] = {             -----------------����ս��-�����ʦ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27023},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5024] = {             -----------------����ս��-�ؽ���ͽ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27024},{ID = 27024},{ID = 27024},{ID = 27024},{ID = 27024},},
}
ScriptFightDB[5025] = {             -----------------����ս��-ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27025},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5026] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27026},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5027] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27027},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5028] = {             -----------------����ս��-��ʯ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27028},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5029] = {             -----------------����ս��-��а
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27029},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5030] = {             -----------------����ս��-�鼧
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27030},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5031] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27031},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5032] = {             -----------------����ս��-�뷼
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27032},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5033] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27033},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5034] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27034},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5035] = {             -----------------����ս��-Ԭ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27035},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5036] = {             -----------------����ս��-���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27036},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5037] = {             -----------------����ս��-�Ƴ���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27037},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5038] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27038},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5039] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27039},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5040] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27040},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5041] = {             -----------------����ս��-���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27041},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5042] = {             -----------------����ս��-���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27042},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5043] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27043},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5044] = {             -----------------����ս��-���˰�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27044},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5045] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27045},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5046] = {             -----------------����ս��-��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27046},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5047] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27047},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5048] = {             -----------------����ս��-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27048},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5049] = {             -----------------����ս��-������ʿ��Ѫ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27049},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5050] = {             -----------------����ս��-а��ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27050},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5051] = {             -----------------����ս��-ħ���׾�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27051},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5052] = {             -----------------����ս��-ħ����ǧ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27052},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5053] = {             -----------------����ս��-�������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27053},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5054] = {             -----------------����ս��-��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27054},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5055] = {             -----------------����ս��-ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27055},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5056] = {             -----------------����ս��-ħ��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27056},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5057] = {             -----------------����ս��-ǧ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27057},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5058] = {             -----------------����ս��-����½��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27058},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5059] = {             -----------------����ս��-а������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27059},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5060] = {             -----------------����ս��-��ʿ����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27060},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5061] = {             -----------------����ս��-ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27061},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5062] = {             -----------------����ս��-ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27062},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5063] = {             -----------------����ս��-�����ܱ�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27063},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5064] = {             -----------------����ս��-а������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27064},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5065] = {             -----------------����ս��-��ʿ����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27065},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5066] = {             -----------------����ս��-Ѧ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27066},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5067] = {             -----------------����ս��-������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27067},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5068] = {             -----------------����ս��-�ྫ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27068},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5069] = {             -----------------����ս��-ѩ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27069},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5070] = {             -----------------����ս��-ˮ��ͯ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27070},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5071] = {             -----------------����ս��-ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27071},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5072] = {             -----------------����ս��-��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27072},{ID = 27151},{ID = 27151},{ID = 27151},{ID = 27151},},
}
ScriptFightDB[5073] = {             -----------------��ս����-¬ֲ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20049},},
}
ScriptFightDB[5074] = {             -----------------��ս����-����ʦ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 30320},},
}
ScriptFightDB[5075] = {             -----------------��ս����-�ʸ���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20059},},
}
ScriptFightDB[5076] = {             -----------------��ս����-��ά��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 29008},},
}
ScriptFightDB[5077] = {             -----------------��ս����-��ɭ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27073},},
}
ScriptFightDB[5078] = {             -----------------��ս����-����Ǭ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27074},},
}
ScriptFightDB[5079] = {             -----------------��ս����-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20701},},
}
ScriptFightDB[5080] = {             -----------------��ս����-���Ļ�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27075},},
}
ScriptFightDB[5081] = {             -----------------��ս����-֣��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27076},},
}
ScriptFightDB[5082] = {             -----------------��ս����-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27077},},
}
ScriptFightDB[5083] = {             -----------------��ս����-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20021},},
}
ScriptFightDB[5084] = {             -----------------��ս����-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20022},},
}
ScriptFightDB[5085] = {             -----------------��ս����-���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20023},},
}
ScriptFightDB[5086] = {             -----------------��ս����-ׯ�ε�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20025},},
}
ScriptFightDB[5087] = {             -----------------��ս����-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20024},},
}
ScriptFightDB[5088] = {             -----------------��ս����-��ɰ�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 20026},},
}
ScriptFightDB[5089] = {             -----------------�������-�ڷ�С��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27078},},
}
ScriptFightDB[5090] = {             -----------------�������-��ħ˫����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27079},},
}
ScriptFightDB[5091] = {             -----------------�������-ħ��Ů�̿�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27080},},
}
ScriptFightDB[5092] = {             -----------------�������-ħ����ū
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27081},},
}
ScriptFightDB[5093] = {             -----------------�������-������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27082},},
}
ScriptFightDB[5094] = {             -----------------�������-а�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27083},},
}
ScriptFightDB[5095] = {             -----------------�������-��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27084},},
}
ScriptFightDB[5096] = {             -----------------�������-ħ�ɻ���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27085},},
}
ScriptFightDB[5097] = {             -----------------�������-���к���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27086},},
}
ScriptFightDB[5098] = {             -----------------�������-���亲��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27087},},
}
ScriptFightDB[5099] = {             -----------------�������-������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27088},},
}
ScriptFightDB[5100] = {             -----------------�������-��ħ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27089},},
}
ScriptFightDB[5101] = {             -----------------�������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27090},},
}
ScriptFightDB[5102] = {             -----------------�������-��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27091},},
}
ScriptFightDB[5103] = {             -----------------�������-��ͷ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27092},},
}
ScriptFightDB[5104] = {             -----------------�������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27093},},
}
ScriptFightDB[5105] = {             -----------------�������-�ǲݼ�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27094},},
}
ScriptFightDB[5106] = {             -----------------�������-�ں���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27095},},
}
ScriptFightDB[5107] = {             -----------------�������-�׺���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27096},},
}
ScriptFightDB[5108] = {             -----------------�������-�ü�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27097},},
}
ScriptFightDB[5109] = {             -----------------�������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27098},},
}
ScriptFightDB[5110] = {             -----------------�������-������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27099},},
}
ScriptFightDB[5111] = {             -----------------�������-���鼧
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27100},},
}
ScriptFightDB[5112] = {             -----------------�������-��˫���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27101},},
}
ScriptFightDB[5113] = {             -----------------�������-ħ�̴󻤷�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27102},},
}
ScriptFightDB[5114] = {             -----------------�������-а��Ů��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27103},},
}
ScriptFightDB[5115] = {             -----------------�������-ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27104},},
}
ScriptFightDB[5116] = {             -----------------�������-�ƽ�ħ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27105},},
}
ScriptFightDB[5117] = {             -----------------�������-��ʯ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27106},},
}
ScriptFightDB[5118] = {             -----------------�������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27107},},
}
ScriptFightDB[5119] = {             -----------------�������-Ѫħ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27108},},
}
ScriptFightDB[5120] = {             -----------------�������-Ѫ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27109},},
}
ScriptFightDB[5121] = {             -----------------�������-����Ӱ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27110},},
}
ScriptFightDB[5122] = {             -----------------�������-������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27111},},
}
ScriptFightDB[5123] = {             -----------------�������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27112},},
}
ScriptFightDB[5124] = {             -----------------�������-�����¥��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27113},},
}
ScriptFightDB[5125] = {             -----------------�������-ѩ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27114},},
}
ScriptFightDB[5126] = {             -----------------�������-ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27115},},
}
ScriptFightDB[5127] = {             -----------------�������-�������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27116},},
}
ScriptFightDB[5128] = {             -----------------�������-�Ÿ�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27117},},
}
ScriptFightDB[5129] = {             -----------------�������-ҹħ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27118},},
}
ScriptFightDB[5130] = {             -----------------�������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27119},},
}
ScriptFightDB[5131] = {             -----------------�������-Ѫ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27120},},
}
ScriptFightDB[5132] = {             -----------------�������-�ز���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27121},},
}
ScriptFightDB[5133] = {             -----------------�������-ѩ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27122},},
}
ScriptFightDB[5134] = {             -----------------�������-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27123},},
}
ScriptFightDB[5135] = {             -----------------�������-��Ԩ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27124},},
}
ScriptFightDB[5136] = {             -----------------�������-�Ȼ�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27125},},
}
ScriptFightDB[5137] = {             -----------------�������-ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27126},},
}
ScriptFightDB[5138] = {             -----------------�������-ţħ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27127},},
}
ScriptFightDB[5139] = {             -----------------�������-��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27128},},
}
ScriptFightDB[5140] = {             -----------------�������-а�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27129},},
}
ScriptFightDB[5141] = {             -----------------�������-Ѫ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27130},},
}
ScriptFightDB[5142] = {             -----------------�������-ħ�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27131},},
}
ScriptFightDB[5143] = {             -----------------�������-��ħ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27132},},
}
ScriptFightDB[5144] = {             -----------------�������-��ɲ���
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27133},},
}
ScriptFightDB[5145] = {             -----------------�������-��ħ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27134},},
}
ScriptFightDB[5146] = {             -----------------�������-˫ͷħ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27135},},
}
ScriptFightDB[5147] = {             -----------------�������-��Ѫħ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27136},},
}
ScriptFightDB[5148] = {             -----------------�������-��Ѫ����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27137},},
}
ScriptFightDB[5149] = {             -----------------�������-��ɲŮ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27138},},
}
ScriptFightDB[5150] = {             -----------------�������-�����ʦ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27139},},
}
ScriptFightDB[5151] = {             -----------------�������-Ѫ����ħ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27140},},
}
ScriptFightDB[5152] = {             -----------------�������-ħ��Ȯ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27141},},
}
ScriptFightDB[5153] = {             -----------------�������-ħū
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27142},},
}
ScriptFightDB[5154] = {             -----------------�������-ħ������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27143},},
}
ScriptFightDB[5155] = {             -----------------�������-����ͯ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27144},},
}
ScriptFightDB[5156] = {             -----------------�������-ǹħ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27145},},
}
ScriptFightDB[5157] = {             -----------------�������-�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27146},},
}
ScriptFightDB[5158] = {             -----------------�������-����ĸ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27147},},
}
ScriptFightDB[5159] = {             -----------------�������-������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27148},},
}
ScriptFightDB[5160] = {             -----------------�������-�����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 27149},},
}
ScriptFightDB[5161] = {             -----------------�Ͻ�����-40-44-��������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10019},},
}
ScriptFightDB[5162] = {             -----------------�Ͻ�����-40-44-������
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10023},},
}
ScriptFightDB[5163] = {             -----------------�Ͻ�����-40-44-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10027},},
}
ScriptFightDB[5164] = {             -----------------�Ͻ�����-40-44-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10031},},
}
ScriptFightDB[5165] = {             -----------------�Ͻ�����-40-44-�η���ʦ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10045},},
}
ScriptFightDB[5166] = {             -----------------�Ͻ�����-45-49-Ů��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10033},},
}
ScriptFightDB[5167] = {             -----------------�Ͻ�����-45-49-�ӵ�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10032},},
}
ScriptFightDB[5168] = {             -----------------�Ͻ�����-45-49-��ħŮ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10035},},
}
ScriptFightDB[5169] = {             -----------------�Ͻ�����-45-49-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10034},},
}
ScriptFightDB[5170] = {             -----------------�Ͻ�����-45-49-��ʿ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10036},},
}
ScriptFightDB[5171] = {             -----------------�Ͻ�����-45-49-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10037},},
}
ScriptFightDB[5172] = {             -----------------�Ͻ�����-50-54-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10038},},
}
ScriptFightDB[5173] = {             -----------------�Ͻ�����-50-54-ıʿ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10039},},
}
ScriptFightDB[5174] = {             -----------------�Ͻ�����-50-54-ţͷ
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10040},},
}
ScriptFightDB[5175] = {             -----------------�Ͻ�����-50-54-����
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10041},},
}
ScriptFightDB[5176] = {             -----------------�Ͻ�����-50-54-���ý�
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10042},},
}
ScriptFightDB[5177] = {             -----------------�Ͻ�����-50-54-ħ��
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10043},},
}
-------------------����������ϣ������ȥ-------------------------------------
-------------------��Ӯ�˾͸���----����ս���ָ���----------------------------
ScriptFightDB[7001] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 39001,pos = 27 },},
	}
ScriptFightDB[7002] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 39002,pos = 27 },},
	}
ScriptFightDB[7003] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 39003,pos = 27 },},
	}
ScriptFightDB[7004] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 39004,pos = 27 },},
	}
ScriptFightDB[7005] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 39005,pos = 27 },},
	}	
ScriptFightDB[7006] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 39006,pos = 27 },},
	}
ScriptFightDB[7007] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 39007,pos = 27 },},
	}
ScriptFightDB[7008] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 39008,pos = 27 },},
	}
ScriptFightDB[7009] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 39009,pos = 27 },},
	}
ScriptFightDB[7010] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 39010,pos = 27 },},
	}


-- 8001 - 9000 ���ɴ��ػս��
ScriptFightDB[8001] = {--ǬԪ��
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50060,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50061,weight= 40},{ID = 50062,weight= 40},{ID = 50063,weight= 5},{ID = 50064,weight= 5},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8002] = {
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50060,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50063,weight= 40},{ID = 50064,weight= 40},{ID = 50065,weight= 5},{ID = 50066,weight= 5},{ID = 50066,weight= 10},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8003] = {--��ϼɽ
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50070,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50071,weight= 40},{ID = 50072,weight= 40},{ID = 50073,weight= 5},{ID = 50074,weight= 5},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8004] = {
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50070,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50073,weight= 40},{ID = 50074,weight= 40},{ID = 50075,weight= 5},{ID = 50076,weight= 5},{ID = 50076,weight= 10},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8005] = {--������
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50080,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50081,weight= 40},{ID = 50082,weight= 40},{ID = 50083,weight= 5},{ID = 50084,weight= 5},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8006] = {
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50080,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50083,weight= 40},{ID = 50084,weight= 40},{ID = 50085,weight= 5},{ID = 50086,weight= 5},{ID = 50086,weight= 10},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8007] = {--������
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50090,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50091,weight= 40},{ID = 50092,weight= 40},{ID = 50093,weight= 5},{ID = 50094,weight= 5},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8008] = {
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50090,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50093,weight= 40},{ID = 50094,weight= 40},{ID = 50095,weight= 5},{ID = 50096,weight= 5},{ID = 50097,weight= 10},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8009] = {--��Դ��
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50100,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50101,weight= 40},{ID = 50102,weight= 40},{ID = 50103,weight= 5},{ID = 50104,weight= 5},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8010] = {
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50100,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50103,weight= 40},{ID = 50104,weight= 40},{ID = 50105,weight= 5},{ID = 50106,weight= 5},{ID = 50107,weight= 10},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8011] = {--������
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50110,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50111,weight= 40},{ID = 50112,weight= 40},{ID = 50113,weight= 5},{ID = 50114,weight= 5},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}
ScriptFightDB[8012] = {
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 50110,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 1,maxCount = 2,{ID = 50113,weight= 40},{ID = 50114,weight= 40},{ID = 50115,weight= 5},{ID = 50116,weight= 5},{ID = 50117,weight= 10},{ID = 50057,weight= 3},{ID = 50058,weight= 3},{ID = 50059,weight= 4}},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 10011,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={10011},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}






-- �������� �������ڱ���ս���ָ�-------------------------------

ScriptFightDB[40001] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 50001, },{ID = 50002, },{ID = 50000, },{ID =  50003, },{ID = 50004, },{ID = 50005, },{ID = 50006, },{ID = 50007, },},
	}
ScriptFightDB[40002] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 50009, },{ID = 50010, },{ID = 50008, },{ID = 50011, },{ID = 50012, },{ID = 50013, },{ID = 50014, },{ID = 50015, },},
	}
ScriptFightDB[40003] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 50016, },{ID = 50018, },{ID = 50017, },{ID = 50019, },{ID = 50020, },},
	}
ScriptFightDB[40004] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 50021, },{ID = 50023, },{ID = 50022, },{ID = 50024, },{ID = 50025, },},
	}
ScriptFightDB[40005] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 50026, },{ID = 50028, },{ID = 50027, },{ID = 50029, },{ID = 50030, },},

systemActions = {
			[1] = {
				condition = {
				              {type = ScriptFightConditionType.RoundCount, params={ round = 1 },},
		        },
				actions =   {
					      {type = ScriptFightActionType.PlayBubble,params={DBID={50026},bubbleID = 500},},}
			},
	                },
	}
ScriptFightDB[40006] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 50031, },{ID = 50033, },{ID = 50032, },{ID = 50034, },{ID = 50035, },},
systemActions = {
			[1] = {
				condition = {
				              {type = ScriptFightConditionType.RoundCount, params={ round = 1 },},
		        },
				actions =   {
					      {type = ScriptFightActionType.PlayBubble,params={DBID={50031},bubbleID = 501},},}
			},
	                },
	}
ScriptFightDB[40007] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 50036, },{ID = 50037, },{ID = 50038, },{ID = 50039, },{ID = 50040, },},
systemActions = {
			[1] = {
				condition = {
				              {type = ScriptFightConditionType.RoundCount, params={ round = 1 },},
		        },
				actions =   {
					      {type = ScriptFightActionType.PlayBubble,params={DBID={50036},bubbleID = 502},},}
			},
	                },
	}

-- ץ���淨��35001����35500��-------------------------------
ScriptFightDB[35001] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10201,weight= 30}, {ID = 10301,weight= 40}, {ID = 10401,weight= 30}},
}
ScriptFightDB[35002] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10202,weight= 30}, {ID = 10302,weight= 40}, {ID = 10402,weight= 30}},
}
ScriptFightDB[35003] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10203,weight= 30}, {ID = 10303,weight= 40}, {ID = 10403,weight= 30}},
}
ScriptFightDB[35004] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10204,weight= 30}, {ID = 10304,weight= 40}, {ID = 10404,weight= 30}},
}
ScriptFightDB[35005] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10205,weight= 30}, {ID = 10305,weight= 40}, {ID = 10405,weight= 30}},
}
ScriptFightDB[35006] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10206,weight= 30}, {ID = 10306,weight= 40}, {ID = 10406,weight= 30}},
}
ScriptFightDB[35007] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10207,weight= 30}, {ID = 10307,weight= 40}, {ID = 10407,weight= 30}},
}
ScriptFightDB[35008] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10208,weight= 30}, {ID = 10308,weight= 40}, {ID = 10408,weight= 30}},
}
ScriptFightDB[35009] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10209,weight= 30}, {ID = 10309,weight= 40}, {ID = 10409,weight= 30}},
}
ScriptFightDB[35010] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10210,weight= 30}, {ID = 10310,weight= 40}, {ID = 10410,weight= 30}},
}
ScriptFightDB[35011] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10211,weight= 30}, {ID = 10311,weight= 40}, {ID = 10411,weight= 30}},
}
ScriptFightDB[35012] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10212,weight= 30}, {ID = 10312,weight= 40}, {ID = 10412,weight= 30}},
}
ScriptFightDB[35013] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10213,weight= 30}, {ID = 10313,weight= 40}, {ID = 10413,weight= 30}},
}
ScriptFightDB[35014] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10214,weight= 30}, {ID = 10314,weight= 40}, {ID = 10414,weight= 30}},
}
ScriptFightDB[35050] = {					---------------30��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10501,weight= 50}, {ID = 10601,weight= 50}},
}
ScriptFightDB[35051] = {					---------------30��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10502,weight= 50}, {ID = 10602,weight= 50}},
}
ScriptFightDB[35052] = {					---------------30��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10503,weight= 50}, {ID = 10601,weight= 50}},
}
ScriptFightDB[35053] = {					---------------30��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10504,weight= 50}, {ID = 10602,weight= 50}},
}
ScriptFightDB[35080] = {					---------------30��ͼץ���ռ�boss
	--monsters = {type=ScriptMonsterCreateType.Random,{ID = 10609,weight= 99}, {ID = 10602,weight= 1,max = 1}},
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10609},},
}

-----------------------------40��ͼץ��
ScriptFightDB[35101] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10215,weight= 60}, {ID = 10315,weight= 35}, {ID = 10415,weight= 5}},
}
ScriptFightDB[35102] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10216,weight= 60}, {ID = 10316,weight= 35}, {ID = 10416,weight= 5}},
}
ScriptFightDB[35103] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10217,weight= 60}, {ID = 10317,weight= 35}, {ID = 10417,weight= 5}},
}
ScriptFightDB[35104] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10218,weight= 60}, {ID = 10318,weight= 35}, {ID = 10418,weight= 5}},
}
ScriptFightDB[35105] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10219,weight= 60}, {ID = 10319,weight= 35}, {ID = 10419,weight= 5}},
}
ScriptFightDB[35106] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10220,weight= 60}, {ID = 10320,weight= 35}, {ID = 10420,weight= 5}},
}
ScriptFightDB[35107] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10221,weight= 60}, {ID = 10321,weight= 35}, {ID = 10421,weight= 5}},
}
ScriptFightDB[35108] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10222,weight= 60}, {ID = 10322,weight= 35}, {ID = 10422,weight= 5}},
}
ScriptFightDB[35109] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10223,weight= 60}, {ID = 10323,weight= 35}, {ID = 10423,weight= 5}},
}
ScriptFightDB[35150] = {					---------------40��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10505,weight= 99}, {ID = 10603,weight= 1}},
}
ScriptFightDB[35151] = {					---------------40��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10506,weight= 99}, {ID = 10604,weight= 1}},
}
ScriptFightDB[35152] = {					---------------40��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10507,weight= 99}, {ID = 10603,weight= 1}},
}
ScriptFightDB[35153] = {					---------------40��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10508,weight= 99}, {ID = 10604,weight= 1}},
}
ScriptFightDB[35180] = {					---------------40��ͼץ���ռ�boss
	--monsters = {type=ScriptMonsterCreateType.Random,{ID = 10609,weight= 99}, {ID = 10602,weight= 1,max = 1}},
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10610},},
}

-----------------------------50��ͼץ��
ScriptFightDB[35201] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10224,weight= 60}, {ID = 10324,weight= 35}, {ID = 10424,weight= 5}},
}
ScriptFightDB[35202] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10225,weight= 60}, {ID = 10325,weight= 35}, {ID = 10425,weight= 5}},
}
ScriptFightDB[35203] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10226,weight= 60}, {ID = 10326,weight= 35}, {ID = 10426,weight= 5}},
}
ScriptFightDB[35204] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10227,weight= 60}, {ID = 10327,weight= 35}, {ID = 10427,weight= 5}},
}
ScriptFightDB[35205] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10228,weight= 60}, {ID = 10328,weight= 35}, {ID = 10428,weight= 5}},
}
ScriptFightDB[35206] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10229,weight= 60}, {ID = 10329,weight= 35}, {ID = 10429,weight= 5}},
}
ScriptFightDB[35207] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10230,weight= 60}, {ID = 10330,weight= 35}, {ID = 10430,weight= 5}},
}
ScriptFightDB[35208] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10231,weight= 60}, {ID = 10331,weight= 35}, {ID = 10431,weight= 5}},
}
ScriptFightDB[35209] = {					
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10232,weight= 60}, {ID = 10332,weight= 35}, {ID = 10432,weight= 5}},
}
ScriptFightDB[35210] = {	
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10233,weight= 60}, {ID = 10333,weight= 35}, {ID = 10433,weight= 5}},
}
ScriptFightDB[35211] = {	
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10234,weight= 60}, {ID = 10334,weight= 35}, {ID = 10434,weight= 5}},
}
ScriptFightDB[35250] = {					---------------50��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10509,weight= 99}, {ID = 10605,weight= 1}},
}
ScriptFightDB[35251] = {					---------------50��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10510,weight= 99}, {ID = 10606,weight= 1}},
}
ScriptFightDB[35252] = {					---------------50��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10511,weight= 99}, {ID = 10605,weight= 1}},
}
ScriptFightDB[35253] = {					---------------50��ͼץ��Ѳ�߹�
	monsters = {type=ScriptMonsterCreateType.Random,count = 1,{ID = 10512,weight= 99}, {ID = 10606,weight= 1}},
}
ScriptFightDB[35280] = {					---------------50��ͼץ���ռ�boss
	--monsters = {type=ScriptMonsterCreateType.Random,{ID = 10609,weight= 99}, {ID = 10602,weight= 1,max = 1}},
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 10611},},
}

-- 45000 - 50000 ���޽��� ���������������������
ScriptFightDB[45000] = {
	-- ս������
	subType = ScriptType.LuckyMonster,
	-- ������Ϣ
	majorMonsterInfo = {{ID = 25501,pos = 21}},
	-- Ҫˢ�¹ֵ���Ϣ
	monsters = {type=ScriptMonsterCreateType.Random,minCount = 7,maxCount = 7,{ID = 25505,weight= 50},{ID = 25507,weight= 20}, {ID = 25508,weight= 50},{ID = 25509,weight= 50}, {ID = 25510,weight= 40},{ID = 25511,weight= 50},},
	systemActions = {
	      [1] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 25501,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
		  {type = ScriptFightActionType.FightEnd,params={winner = "player" }},--ս��������winner = ʤ���� ����monster��= ���﷽����player�� = ��ҷ���
		  },
	      },
	      [2] = 
	      {
		  condition = 
		  {
	          {type = ScriptFightConditionType.AttrValue, params={DBID = 25510,type="hp",["<="] = 0},},
		   isAnd = true,
		  },
		  actions = 
		  {
                  {type = ScriptFightActionType.PlayBubble,params={DBID={25501},bubbleID = 1},},
		  {type = ScriptFightActionType.ChangeHp,params={DBID =-1,percent = -50}},
		  },
	      },
	},
	-- ������Ϣ
	LuckyRewardID = 1,
}

----------------------------phases test ��׶�ս���ű�����-------------------------------------------------------------------------------------

ScriptFightDB[6] = {                                                                

	subType = ScriptType.Random, 
	count = 3,	
	isRepeat = false ,   

	phases = {		
		[1] = {		
			typeID = 0, sceneID = "zd_yw_jt07.xml" ,isSpecialAction =true,
			
			monsters={31250},        
			
		},
		[2] = {
			typeID = 0, sceneID = "zd_yougu2.xml" ,isSpecialAction =true,
			monsters={31254,31257},
		
	},
                [3] = {
			typeID = 0, sceneID = "zd_yw_jt05.xml" ,isSpecialAction =true,
			monsters={30354,30357},
		
	},
	      
},
rewards={			
		mats={{ID=10001,count = 1},{ID=10002,count = 1}},		
		exp = 1,												
		money = 1,											
		subMoney = 1,										
	},
}

--------------------------------------------jiaoben test �ű�����-----------------------------------------------------

ScriptFightDB[7] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31250, },},
	}

ScriptFightDB[8] = {
	monsters = {type=ScriptMonsterCreateType.Assign,{ID = 31250, },},
	begin  = {                                                               

		[1] = {								

			condition = {						
				
				{type = ScriptFightConditionType.RoundCount, params={ round = 1 },},
				--{type = ScriptFightConditionType.RoundInterval, params={period = 2,startRound = 2},},
				
                          count = 1,
			 },

			actions = {							

				{type = ScriptFightActionType.EntityEnter,params={{DBID = 31258,count = 3},} },
			        {type = ScriptFightActionType.AddBuff,params={DBID ={31282},buffID = 11} },
				

				isSameTime = true,
			 },
		 },
                 [2] = {								

			condition = {						
				
				{type = ScriptFightConditionType.AttrValue, params={DBID = 31282,type="hp",["<="] = 30},},
				--{type = ScriptFightConditionType.RoundInterval, params={period = 2,startRound = 2},},
				
                          count = 1,
			 },

			actions = {							

				{type = ScriptFightActionType.EntityEnter,params={{DBID = 31258,count = 3},} },
			        {type = ScriptFightActionType.AddBuff,params={DBID ={31282},buffID = 44} },
				

				isSameTime = true,
			 },
		 },

		
								
	},
	
	}

