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
FightAIDB[50] = {  
	name =  '�ٻ�',
	type = AIType.Config, 
	
	[1] = {

			 condition = {
						type=AIConditionType.LiveNum,params={isEnemy = true,relation = "<=",count = 4},                  --��λ����isEnemy = �����жϣ�true = �з���false = �ѷ�����count = �������
				     },
			 action = {actionType = FightUIType.Call,params ={{ID =31461,count = 1},},},	                                         --�ٻ���ID = �ٻ���λID��count = ��λ������
			 chooseTarget = {
					 type = AITargetType.Me,                                                                                 --�Լ�
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
			 action = {actionType = FightUIType.UseSkill,params ={skillID =1043},},		                                         --ʹ�ü��ܣ�skillID = ����ID��
			 chooseTarget = {
					 type = AITargetType.AllOfFriend,                                                                        --�ѷ�ȫ��
					},	
              },
}

FightAIDB[52] = {  
	name =  '����',
	type = AIType.Config, 
	
	[1] = {

			 condition = {
						type=AIConditionType.IDExist,params={ID = 31475,{isNot = true}},                               --ָ����λ��ID = ��λID��isNot = ����жϣ�true = ��λ������ʱ�������㣬 false = ��λ����ʱ�������㣨��isNot = falseʱ��isNot���Բ����ã���
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
		           type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},----ÿ�غ��ͷ������Է�������
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
		           type=AIConditionType.AttrPercent,params={ ID = 25501,type = AIAttrType.Hp,relation ="<=",value = 1},  --------�ڶ��غϿ�ʼ��ָ���غϼ����������ҽ�ɫʩ�ӻ���buff����                                                      
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
---------------------------------------------�����ָ���ai-----------------------------------------------

FightAIDB[150] = {
	name  = 'ÿ��һ�غ�ʩ��һ�μ��� ����/����',
	type = AIType.Config,

	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={1047}},		--ʹ�ü���
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1013,1014}},		--ʹ�ü���
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
}

FightAIDB[151] = {
	name  = 'ÿ���غ�ʩ��һ������ ',
	type = AIType.Config,


	[1] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 2,startRound = 2},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1001}},		--ʹ�ü���
			
		},
		chooseTarget = {
			 type = AnyOfFriend,
		},
	},
        [2] = {
	
		condition = {
				type=AIConditionType.RoundInterval,params={period = 3,startRound = 1},
		},		
		action = { 
			actionType = FightUIType.UseSkill,params ={skillID ={ 1025}},		--ʹ�ü���
			
		},
		chooseTarget = {
			type = AITargetType.AnyOfEnemy,						--Ŀ��
		},
	},
	}
FightAIDB[152] = {
	name  = 'ÿ���غ�ʩ��һ������ ',
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