--[[ FightAIDB.lua]]
AITargetType = {
				 Me				 = 1,--�Լ� {  type = AITargetType.Me,},
				 AnyOfFriend	 = 2,--�ѷ����� {  type = AITargetType.AnyOfFriend, params ={},},
				 AnyOfEnemy		 = 3,--�з����� {  type = AITargetType.AnyOfEnemy, params ={},},
				 AnyOfFriendButMe = 4,--���Լ����ѷ����� {  type = AITargetType.AnyOfFriendButMe, params ={},},
				 AllOfEnemy		 = 5,--�з�ȫ�� {  type = AITargetType.AllOfEnemy, params ={},},
				 AllOfFriend	 = 6,--�ѷ���ȫ�� {  type = AITargetType.AllOfFriend, params ={},},
				 AllRoleOfEnemy	 = 7,--�з�ȫ���ɫ(αpvp�е����) {  type = AITargetType.AllRoleOfEnemy, params ={},},
				 AllPetOfEnemy	 = 8,--�з�ȫ�����  {  type = AITargetType.AllPetOfEnemy, params ={},},
				 AnyRoleOfEnemy	 = 9,--�з������ɫ(αpvp�е����) {  type = AITargetType.AnyRoleOfEnemy, params ={},},
				 AnyPetOfEnemy	 = 10,--�з�������� {  type = AITargetType.AnyPetOfEnemy, },
				 AttrPercent	 = 11,--���Ա���Ҫ�� {  type = AITargetType.AttrPercent, params ={isEnemy = true ,type = AIAttrType.Hp,relation ="<=", value = 0.1 ,count = 2},},
				 Level			 = 12,--�ȼ�Ҫ��{  type = AITargetType.Level, params ={isEnemy = true,type ="min" or "max" },},
				 School			 = 13,--����Ҫ��{  type = AITargetType.School, params ={isEnemy = true,type =SchoolType.QYD },},
				 Phase			 = 14,--����Ҫ��{  type = AITargetType.Phase, params ={isEnemy = true,type = PhaseType.Soil},},
				 --AttackType		 = 15,--�������� {  type = AITargetType.AttackType, params ={isEnemy = true,type = AttackType.Magic},},
				 Status          = 16,--״̬�޶�(buff){  type = AITargetType.Status, params ={isEnemy = true,buffID = 1,count = 1},},����{  type = AITargetType.Status, params ={isEnemy = true, type = BuffKind.Dot},},
				 DBID			 = 17,--��λID{  type = AITargetType.DBID, params ={ID = DBID},},
				 Position		 = 18,--λ��{  type = AITargetType.Position, params ={pos = 10},},
				 DeadFriend		 = 19,--�����ѷ�{  type = AITargetType.DeadFriend, },
				 AttrMinMax		 = 20,--���Լ���ֵ{  type = AITargetType.AttrMinMax, params ={isEnemy = true,type = AIAttrType.Hp,relation = "min"},},--relationΪ"min"��"max"

}
--[[
--�������
SchoolType = {
	PM          = 0x00,
	QYD         = 0x01,
	JXS         = 0x02,
	ZYM         = 0x03,
	YXG         = 0x04,
	TYD         = 0x05,
	PLG         = 0x06,
}
--��������
PhaseType = {
	Soil = 1, 		--��
	Ice = 2, 		--��
	Fire = 3,		--��
	Poison = 4,		--��
	Thunder = 5,	--��
	Wind = 6, 		--��
}
--��������
AttackType = {
				Phisical = 1,--�﹥
				Magic	 = 2,--����
}
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
--ս������
FightUIType = {
		CommonAttack = 2, -- ��ͨ���� --{actionType = FightUIType.CommonAttack},
		UseSkill     = 3, -- ʹ�ü���--{actionType = FightUIType.UseSkill,params ={skillID =10001}},
		Protect      = 4, -- ����--{actionType = FightUIType.Protect,params ={ID =11}},
		Escape	     = 5, -- ����-{actionType = FightUIType.Escape,params ={}},
		Defense	     = 8, -- ����-{actionType = FightUIType.Defense,params ={}},
		Call	     = 9, -- �ٻ�-{actionType = FightUIType.Call,params ={{ID =11,count = 1},},},
}
]]

AIAttrType = {
			Hp = 1,--����
			Mp = 2,--����
			Kill = 3,--ŭ��
			At = 4,--�﹥
			Mt = 5,--����
			Af = 6,--���
			Mf = 7,--����
			win_phase = 8,--������
			thu_phase = 9,--������
			ice_phase = 10,--������
			soi_phase = 11,--������
			fir_phase = 12,--������
			poi_phase = 13,--������
}

--��������
AIConditionType=
{
	AttrPercent   = 1,--���Ա���{type=AIConditionType.AttrPercent,params={isEnemy = true ,type = AIAttrType.Hp,relation ="<=", value = 0.1 ,count = 2},}, ��{type=AIConditionType.AttrPercent,params={ ID = DBID,type = AIAttrType.Hp,relation ="<=",value = 0.2},},
	IDExist		  = 2,--id�Ƿ����{type=AIConditionType.IDExist,params={ID = 3,relation=">",value = 1 },}, ��--id������{type=AIConditionType.IDExist,params={ID = 3,isNot = true},}, 
	RoundCount    = 3,--�ڼ��غ�{type=AIConditionType.RoundCount,params={round = 2,},}
	RoundInterval = 4,--�غϼ��{type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},}
	BuffStatus	  = 5,--����ָ����buff(ID,������){type=AIConditionType.BuffStatus,params={isEnemy = true,buffID = 1( or type = BuffKind.Dot)},}�� {type=AIConditionType.BuffStatus,params={ID = DBID,buffID = 1( or type = BuffKind.Dot)},}
	LiveNum		  = 6,--���ĵ�λ��{type=AIConditionType.LiveNum,params={isEnemy = true,count = 1},}
	IsAttacked	  = 7,--ָ���غ��Ƿ��ܻ�{type=AIConditionType.IsAttacked,params={round ={ 1��2},��period = 1,��},}
	School		  = 8,--����{type=AIConditionType.School,params={isEnemy = true,school = SchoolType.QYD},}, 
	Phase		  = 9,--����{type=AIConditionType.Phase,params={isEnemy = true,,phase = PhaseType.Soil},}, 
	Dead		  = 11,--����{type=AIConditionType.Dead,params={ID = 3},},�� {type=AIConditionType.Dead,params={isEnemy = true,count = 1},},
	Prob		  = 12,--����{type=AIConditionType.Prob,params={prob= 0.5},}, 
	

}
FightAIDB = {}

FightAIDB[10086] = {  
	name =  'ͨ��ս��ѡ��AI����',
	type = AIType.Config, --
	scriptID = nil,
	
	[1] = {

		
			 condition = {
							type=AIConditionType.AttrPercent,
							params={isEnemy = true ,type = AIAttrType.Hp,relation ="<=", value = 0.1 ,count = 2},
						 },
			 action = {actionType = FightUIType.Defense},
			 chooseTarget = {
					 
							  type = AITargetType.AttrPercent,
							  params ={isEnemy = true,type = AIAttrType.Hp,relation ="<=",value = 0.2,count = 1 },
					
							},
		

	},
}

FightAIDB[1] = {
	name  = 'AI����',
	type = AIType.Config,

	[1] = {
	
		condition = {
			type=AIConditionType.Prob,params={prob= 1},
			
		},
		
		action = { 
			
			actionType = FightUIType.UseSkill,params ={skillID ={ 1004}},
			--actionType = FightUIType.CommonAttack,params ={},
		},

		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
}

FightAIDB[2] = {
	name  = 'AI����',
	type = AIType.Config,

	[1] = {

		condition = {
			type=AIConditionType.Prob,params={prob= 0.5},
			--type=AIConditionType.Phase,params={isEnemy = true,phase = PhaseType.Soil},
		},
		
		action = { 
			
			actionType = FightUIType.UseSkill,params ={skillID = {1004}},
		},

		chooseTarget = {
			type = AITargetType.Phase, params ={isEnemy = true,type = PhaseType.Soil},
		},
	},

}

FightAIDB[3] = {
	name  = 'AI����',
	type = AIType.Config,

	[1] = {
		
		action = { 
			
			actionType = FightUIType.UseSkill,params ={skillID ={ 1018}},
		},

		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		
		action = { 
			
			actionType = FightUIType.UseSkill,params ={skillID ={ 1021}},
		},

		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
}

FightAIDB[11] = {
	name  = '�̶��غ϶�������',
	type = AIType.Config,

	[1] = {
	
		condition = {
		type=AIConditionType.RoundCount,params={round = 2,},				--ָ���غϴ�����round = �غ���
		--type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},	--�غϼ����Ч��period = �غϼ����starRound = ��ʼѭ���غ���			
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1004}},		--ʹ�ü���
			--actionType = FightUIType.Escape,					--����
			--actionType = FightUIType.Defense,					--����
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[21] = {
	name  = '����������Ϊ����',
	type = AIType.Config,

	[1] = {
	
		condition = {
		type=AIConditionType.AttrPercent,params={isEnemy = false ,count = 1, type = AIAttrType.Hp,relation ="<=", value = 0.5 ,},		--�жϵз�hpС��50%
		--type=AIConditionType.AttrPercent,params={ ID = 20000,type = AIAttrType.Hp,relation ="<=",value = 0.2},				--�жϾ���ID�Ľ�ɫhpС��20%

		--���Ա����жϣ�isEnemy = �����жϣ�true = �з���false = �ѷ���,count = Ŀ������������������isEnemyʱʹ�ã���ID = ��λID ��ID��isEnemyֻ��ѡ��һ�����룩
		--type = �������ͣ�"AIAttrType.Hp"=����ֵ��"AIAttrType.Mp"=����ֵ��"AIAttrType.Kill"=ɱ��ֵ����relation = ��ϵ���ͣ��Ƚ������У�"<"��">"��"="��"<="��">="����value = ������ϵ


		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1004}},		--ʹ�ü���
			--actionType = FightUIType.Escape,					--����
			--actionType = FightUIType.Defense,					--����
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[22] = {
	name  = '����������Ϊ����',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.IDExist,params={ID = 65001,{isNot = true}},
				--ָ����λ��ID = ��λID��isNot = ����жϣ�true = ��λ������ʱ�������㣬 false = ��λ����ʱ�������㣨��isNot = falseʱ��isNot���Բ����ã���
				--type=AIConditionType.LiveNum,params={isEnemy = true,count = 1},
				--��λ����isEnemy = �����жϣ�true = �з���false = �ѷ�����count = �������
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1004}},		--ʹ�ü���
			--actionType = FightUIType.Escape,					--����
			--actionType = FightUIType.Defense,					--����
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[31] = {
	name  = '�������ִ�У��ж�˳���1��ʼ',
	type = AIType.Config,

	[1] = {	
		condition = {
				type=AIConditionType.AttrPercent,params={ ID = 65003,type = AIAttrType.Hp,relation ="<=",value = 0.2},			--1.�жϾ���ID�Ľ�ɫhpС��20%��ʹ������
		},		
		action = { 
			--actionType = FightUIType.UseSkill,params ={skillID ={ 1004}},		--ʹ�ü���
			--actionType = FightUIType.CommonAttack,						--��ͨ����
			actionType = FightUIType.Escape,					--����
			--actionType = FightUIType.Defense,					--����
		},
		chooseTarget = {
			type = AITargetType.Me,							--Ŀ���Լ�
		},
	},
	[2] = {	
		condition = {
				type=AIConditionType.AttrPercent,params={ ID = 65003,type = AIAttrType.Hp,relation ="<=",value = 0.5},			--2.�жϾ���ID�Ľ�ɫhpС��50%��ʹ�÷���
		},		
		action = { 
			--actionType = FightUIType.UseSkill,params ={skillID ={ 1004}},		--ʹ�ü���
			--actionType = FightUIType.CommonAttack,						--��ͨ����
			--actionType = FightUIType.Escape,					--����
			actionType = FightUIType.Defense,					--����
		},
		chooseTarget = {
			type = AITargetType.Me,							--Ŀ���Լ�
		},
	},
	[3] = {	
		condition = {
				type=AIConditionType.AttrPercent,params={ ID = 65003,type = AIAttrType.Hp,relation ="<=",value = 0.8},			--3.�жϾ���ID�Ľ�ɫhpС��80%��ʹ���չ�
		},		
		action = { 
			--actionType = FightUIType.UseSkill,params ={skillID ={ 1004}},		--ʹ�ü���
			actionType = FightUIType.CommonAttack,					--��ͨ����
			--actionType = FightUIType.Escape,					--����
			--actionType = FightUIType.Defense,					--����
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,							--Ŀ�����
		},
	},
	[4] = {
		condition = {
				--type=AIConditionType.AttrPercent,params={ ID = 65003,type = AIAttrType.Hp,relation ="<=",value = 1},			--3.�жϾ���ID�Ľ�ɫhpС��80%��ʹ���չ�
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1004}},		--ʹ�ü���						--4.������ʹ�ü���
			--actionType = FightUIType.CommonAttack,				--��ͨ����
			--actionType = FightUIType.Escape,					--����
			--actionType = FightUIType.Defense,					--����
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,							--Ŀ�����
		},
	},
}

FightAIDB[51] = {  
	name =  '����',
	type = AIType.Config, 
	
	[1] = {

			 condition = {
						type=AIConditionType.RoundInterval,params={period = 1,startRound = 1},                           --�غϼ����Ч��period = �غϼ����starRound = ��ʼѭ���غ���
				     },
			 action = {actionType = FightUIType.UseSkill,params ={skillID =1001},},		                                         --ʹ�ü��ܣ�skillID = ����ID��
			 chooseTarget = {
					 type = AITargetType.AnyOfFriend,                                                                        --�ѷ����
					},	
              },
}

FightAIDB[52] = {  
	name =  '����1',
	type = AIType.Config, 
	
	[1] = {

			 condition = {
						type=AIConditionType.IDExist,params={ID = 31475,{isNot = true}},                                 --ָ����λ��ID = ��λID��isNot = ����жϣ�true = ��λ������ʱ�������㣬 false = ��λ����ʱ�������㣨��isNot = falseʱ��isNot���Բ����ã���
				     },
			 action = {actionType = FightUIType.Escape,},							                         --����
			 chooseTarget = {
					 type = AITargetType.Me,                                                                                 --�Լ�
					},	
              },
}

FightAIDB[53] = {  
	name =  '����',
	type = AIType.Config, 
	
	[1] = {

			 condition = {
						type=AIConditionType.AttrPercent,params={ ID = 31475,type = AIAttrType.Hp,relation ="<=",value = 0.8},      --type = �������ͣ�"AIAttrType.Hp"=����ֵ��"AIAttrType.Mp"=����ֵ��"AIAttrType.Kill"=ɱ��ֵ����relation = ��ϵ���ͣ��Ƚ������У�"<"��">"��"="��"<="��">="����value = ������ϵ
				     },
			 action = {actionType = FightUIType.Escape,},							                                    --����
			 chooseTarget = {
					 type = AITargetType.Me,                                                                                            --�Լ�
					},	
              },
}

FightAIDB[54] = {  
	name =  '����2',
	type = AIType.Config, 
	
	[1] = {

			 condition = {
						type=AIConditionType.IDExist,params={ID = 31455,{isNot = true}},                                 --ָ����λ��ID = ��λID��isNot = ����жϣ�true = ��λ������ʱ�������㣬 false = ��λ����ʱ�������㣨��isNot = falseʱ��isNot���Բ����ã���
				     },
			 action = {actionType = FightUIType.Escape,},							                         --����
			 chooseTarget = {
					 type = AITargetType.Me,                                                                                 --�Լ�
					},	
              },
}

FightAIDB[100] = 
{
	name  = '����ѩ��AI--��������ֻ����',
	type = AIType.Config,
	[1] = {
	
		condition = 
		{
		           {type = AIConditionType.AttrPercent,params={ ID = 25509, type = AIAttrType.Hp,relation =">",value = 0},},
		},		
		action = 
		{ 			
			   actionType = FightUIType.Defense,
		},
		chooseTarget = 
		{
			   type = AITargetType.Me,
		},
	},
}

FightAIDB[101] = 
{
	name  = '����AI',
	type = AIType.Config,
	[1] = {                                         
	
		condition = 
		{
		           {type=AIConditionType.RoundInterval,params={period = 3,startRound = 3},},----ÿ�غ��ͷ������Է�������
			   {type=AIConditionType.BuffStatus,params={isEnemy = true,buffID = 67},},
		},		
		action = 
		{ 			
			   actionType = FightUIType.UseSkill,params ={skillID ={1051}},
		},
		chooseTarget = 
		{
			   type = AITargetType.AllOfEnemy,
		},
	},
	[2] = {	
		condition = 
		{
		           {type=AIConditionType.RoundInterval,params={period = 1,startRound = 1},},----ÿ�غ��ͷ������Է�������		
	        },		
		action = 
		{ 			
			   actionType = FightUIType.UseSkill,params ={skillID ={1052}},
		},
		chooseTarget = 
		{
			   type = AITargetType.AllOfEnemy,
		},
	},
}
---------------------------------------------150-500Ϊ����AI--------------------------------------------
---------------------------------------------�����ָ���ai-----------------------------------------------

FightAIDB[150] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܻ���,�����ֵ��Ĺ�ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1078}},	  --���ߵ�	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1013}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1014}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}

FightAIDB[151] = {
	name  = 'ÿ���غ�ʩ��һ�����ƣ������ֵ��Ĺ�ҽ��С�� ',
	type = AIType.Config,


	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},   ---ÿ���غ�ʩ��һ��
				--type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1090}},  --�Ⱥ��ն�		--ʹ�ü���
			
		},
		chooseTarget = {
			 type = AITargetType.AnyOfFriend,
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1025}},		--ʹ�ü���
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	}
-------------------------����AI-----------------------------------
FightAIDB[152] = {
	name  = 'ÿ�غϷ������ר�� ',
	type = AIType.Config,


	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 1,startRound = 1},
		},		
		action = { 
			actionType = FightUIType.Defense,
			
		},
		chooseTarget = {
			 type = AITargetType.Me,
		},
	},     
	}
---------------------------------�Ʒ��븱��AI-------------------------
FightAIDB[155] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܳ���,�Ʒ����һ��ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1058}},	  --һ�ﵱǧ	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				--type=AIConditionType.RoundInterval,params={period = 3,startRound = 1}, ---ÿ��3�غϳ�Ĭ
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1015}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[156] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܻ�˯,�Ʒ���ڶ���ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1068}},	  --�����ɢ	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				--type=AIConditionType.RoundInterval,params={period = 3,startRound = 1}, ---ÿ��3�غϳ�Ĭ
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1012}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[157] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܼ�Ѫ,�Ʒ���ڶ���С��',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1090}},	  --�Ⱥ��ն�	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,					--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				--type=AIConditionType.RoundInterval,params={period = 3,startRound = 1}, ---ÿ��3�غϳ�Ĭ
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1021}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[158] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܼӹ�,�Ʒ��������ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1070}},	  --����ɽ��	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,
								
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1022}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[159] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܼ�˫��,�Ʒ�����Ĺ�ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1060}},	  --Ԩͣ����	
			
		},
		chooseTarget = {
			type = AITargetType.Me,
		             					
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1013}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1012}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[160] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܻ����ɢ,�Ʒ���BOSS',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1078}},	  --�����ɢ	
			
		},
		chooseTarget = {
			type = AITargetType.Me,
		             					
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1009}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1008}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
------------------------------------------���Ͽ����AI-----------------------------
FightAIDB[165] = {
	name  = 'ÿ���غ�ʩ��һ�����ƣ����Ͽ��һ��ҽ��С�� ',
	type = AIType.Config,


	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},   ---ÿ���غ�ʩ��һ��
				--type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1090}},  --�Ⱥ��ն�		--ʹ�ü���
			
		},
		chooseTarget = {
			 type = AITargetType.AnyOfFriend,
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1014}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	}
FightAIDB[166] = {
	name  = 'ÿ���غ�ʩ��һ�λ��ܣ����Ͽ������ͷĿ ',
	type = AIType.Config,


	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   ---ÿ���غ�ʩ��һ��
				--type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1085}},  --��ũ����		--ʹ�ü���
			
		},
		chooseTarget = {
			 type = AITargetType.Me,
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1012}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1013}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	}
FightAIDB[167] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܼӹ�,���Ͽ���Ĺ�ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1070}},	  --����ɽ��	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,					--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1008}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1009}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[168] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܳ���,���Ͽ���Ĺ�С��',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1058}},	  --һ�ﵱǧ	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1016}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[169] = {
	name  = '���������ǰ����,���ϿBOSS',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.AttrPercent,params={ ID = 30460,type = AIAttrType.Hp,relation =">=",value = 0},  
		},		
		action = { 
			actionType = FightUIType.Defense,							--����	
			
		},
		chooseTarget = {
			type = AITargetType.Me,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				--type=AIConditionType.RoundInterval,params={period = 3,startRound = 1}, ---ÿ��3�غϳ�Ĭ
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1108}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1018}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[4] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1019}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	}
FightAIDB[170] = {
	name  = 'ÿ�����غ�ʩ��һ�μ����ж�,���ϿBOSSС��',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1098}},	  --һ�ﵱǧ	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1024}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}

----------------------------�̲�������AI-------------------------------------------
FightAIDB[175] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܼ�˫��,�̲����ڶ���ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1060}},	  --Ԩͣ����	
			
		},
		chooseTarget = {
			type = AITargetType.Me,					--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1020}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1021}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[176] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܼӹ�,�̲�����һ��С��',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1070}},	  --����ɽ��	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,   ---����ѷ�						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1024}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[177] = {
	name  = 'ÿ���غ�ʩ��һ�λ��ܣ��̲���������С�� ',
	type = AIType.Config,


	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   ---ÿ���غ�ʩ��һ��
				--type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1085}},  --��ũ����		--ʹ�ü���
			
		},
		chooseTarget = {
			 type = AITargetType.AnyOfFriend,   ---����ѷ�
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1018}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[178] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܼӹ�,�̲���������С��',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1070}},	  --����ɽ��	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,   ---����ѷ�						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1004}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[179] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܳ�Ĭ,�̲���BOSSС��',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1108}},	  --����ɽ��	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,   ---����ѷ�						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1014}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[180] = {
	name  = 'ÿ�����غ�ʩ��һ�μ�������,�̲���BOSSС��',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1106}},	  --	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1004}},		--Ǳ������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
-----------------------------------------����ȸ���AI-----------------------------
FightAIDB[185] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܱ���,����ȵڶ���ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1088}},	  --��������	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1017}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1019}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[186] = {
	name  = 'ÿ�����غ�ʩ��һ�μ���˫��,����ȵ����ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1060}},	  --Ԩͣ����	
			
		},
		chooseTarget = {
			type = AITargetType.Me,					--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1012}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1013}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[187] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܱ���,�����BOSS�����',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1088}},	  --��������	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1014}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[188] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܱ���,�����BOSS������',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1090}},	  --�Ⱥ��ն�	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,					--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1015}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}

------------------------------------------ħ�޷帱��AI-----------------------------
FightAIDB[195] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܻ�˯,ħ�޷��һ��ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1068}},	  --�����ɢ	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1012}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1013}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[196] = {
	name  = 'ÿ���Ļغ�ʩ��һ�μ��ܻ���,ħ�޷�����ͷĿ',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 4,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1085}},	  --��ũ����	
			
		},
		chooseTarget = {
			         type = AITargetType.Me,					--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1014}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1015}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[197] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܼӹ�,ħ�޷�bossС�ֹ�',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1070}},	  --��ũ����	
			
		},
		chooseTarget = {
			         type = AITargetType.AnyOfFriend,			--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1017}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1016}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[198] = {
	name  = 'ÿ�����غ�ʩ��һ�μ�����,ħ�޷�bossС����',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1090}},	  --��ũ����	
			
		},
		chooseTarget = {
			         type = AITargetType.AnyOfFriend,			--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1016}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1017}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[199] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܻ����ɢ,ħ�޷�boss',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1068}},	  --
			
		},
		chooseTarget = {
			         type = AITargetType.AnyOfEnemy,				--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1026}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1027}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}
FightAIDB[210] = {
	name  = 'ÿ�����غ�ʩ��һ�μ��ܼ�˫��,ħ�޷�����С��',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 2},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1060}},	  --Ԩͣ����	
			
		},
		chooseTarget = {
			type = AITargetType.Me,
		             					
		},
	},
	[2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1010}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}


------------------------------------------ħ��帱��AI------------------------------------------------------
FightAIDB[200] = {
	name  = '���ֳ���ʩ��Ⱥ�廤�ܣ������Ļغ�����',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},   
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1068}},	  --�����ɢ	
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 0.5},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1012}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	[3] = {
	
		condition = {
				type=AIConditionType.Prob,params={prob= 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1013}},		--������
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}



------------------------------------------����̨AI��1001����1100��-------------------
FightAIDB[1001] = {
	name  = '��������AI',
	type = AIType.Config,
	[1] = {
		condition = {
			type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1073}},	
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1057}},		--����
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[3] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1067}},		--��˯
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[4] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1077}},		--����
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[5] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1087}},		--����
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[6] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1097}},		--�ж�
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[7] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1107}},		--��Ĭ
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
}
FightAIDB[1002] = {
	name  = '��������AI',
	type = AIType.Config,
	[1] = {
		condition = {
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1103}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1104}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
}
FightAIDB[1003] = {
	name  = '�������AI',
	type = AIType.Config,
	[1] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1083}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1084}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
}
FightAIDB[1004] = {
	name  = '��������AI',
	type = AIType.Config,
	[1] = {
		condition = {
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1053}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1054}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
}
FightAIDB[1005] = {
	name  = '�������AI',
	type = AIType.Config,
	[1] = {
		condition = {
		},	
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1065}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1063}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
}
FightAIDB[1006] = {
	name  = 'ҡ������AI',
	type = AIType.Config,
	[1] = {
		condition = {
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1093}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
}
FightAIDB[1007] = {
	name  = '��Ȩ����AI',
	type = AIType.Config,
	[1] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1073}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1074}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
}
FightAIDB[1021] = {
	name  = '����AI',
	type = AIType.Config,
	[1] = {
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1073}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1201}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,
		},
	},
}
FightAIDB[1022] = {
	name  = '�׻�AI',
	type = AIType.Config,
	[1] = {
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1103}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1202}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,
		},
	},
}
FightAIDB[1023] = {
	name  = '��ȸAI',
	type = AIType.Config,
	[1] = {
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1083}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1203}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,
		},
	},
}
FightAIDB[1024] = {
	name  = '����AI',
	type = AIType.Config,
	[1] = {
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1053}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,
		},
	},
	[2] = {
		condition = {
		},
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1201}},
		},
		chooseTarget = {
			type = AITargetType.AnyOfFriend,
		},
	},
}
