--[[FightSkillDB.lua
��������ɫ���ܱ���
	--ս������

	]]

FightSkillDB = {

     [10101] = {
	          -- name = "��������",
	          -- icon = "set:SkillIcon1 image:youlongjinghong",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 14,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [10102] = {
	          -- name = "ǹ��ɽ��",
	          -- icon = "set:SkillIcon1 image:qiangdongshanhe",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 15,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [10103] = {
	          -- name = "��ո���",
	          -- icon = "set:SkillIcon1 image:jingangfuti",
	          skill_type = Skill_Type.Tranform,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 1,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 17,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [10104] = {
	          -- name = "�����ٶ�",
	          -- icon = "set:SkillIcon1 image:bawangjuding",
	          skill_type = Skill_Type.Tranform,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 2,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 17,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [10201] = {
	          -- name = "һ�򵱹�",
	          -- icon = "set:SkillIcon1 image:yifudangguan",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 3,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [10202] = {
	          -- name = "һ�ﵱǧ",
	          -- icon = "set:SkillIcon1 image:yijidangqian",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 3,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [10301] = {
	          -- name = "�����ɸ�",
	          -- icon = "set:SkillIcon1 image:bailianchenggang",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 4,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [10302] = {
	          -- name = "Ԩͣ����",
	          -- icon = "set:SkillIcon1 image:yuantingyuezhi",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 5,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [10401] = {
	          -- name = "̫������",
	          -- icon = "set:SkillIcon1 image:taiyuewuxing",
	          skill_type = Skill_Type.Passive,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.SoilAt,
	                     num_id = 18,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [10402] = {
	          -- name = "�������",
	          -- icon = "set:SkillIcon1 image:wuyuzegang",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 6,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [10403] = {
	          -- name = "ƽɳ����",
	          -- icon = "set:SkillIcon1 image:pingshaluoyan",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 7,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [10501] = {
	          -- name = "ͬ�����",
	          -- icon = "set:SkillIcon1 image:tongchoudikai(jinxiashan)",
	          skill_type = Skill_Type.UnionHit,
	          consume_type = ConsumeType.Anger,
	          consume_id = 10,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.UnionHit,
	                     num_id = 19,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [10502] = {
	          -- name = "ŭ�����",
	          -- icon = "set:SkillIcon1 image:nudangcangqiong",
	          skill_type = Skill_Type.Ultimate,
	          consume_type = ConsumeType.Anger,
	          consume_id = 11,
	          phase_type = PhaseType.Soil,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 20,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 21,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [10601] = {
	          -- name = "�ض���",
	          -- icon = "set:SkillIcon1 image:didunshu",
	          skill_type = Skill_Type.Transport,
	          consume_type = ConsumeType.Mp,
	          consume_id = 12,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Transport,
	                     num_id = nil,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [10602] = {
	          -- name = "��Ԫ��",
	          -- icon = "set:SkillIcon1 image:kunyuanzhou",
	          skill_type = Skill_Type.ToolMake,
	          consume_type = ConsumeType.vit,
	          consume_id = 13,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.ToolMake,
	                     num_id = 55,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20101] = {
	          -- name = "ŭ�����",
	          -- icon = "set:SkillIcon1 image:numalingguan",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 22,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20102] = {
	          -- name = "�Ե��޼�",
	          -- icon = "set:SkillIcon1 image:badaowuji",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 23,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [20103] = {
	          -- name = "Ǳ������",
	          -- icon = "set:SkillIcon1 image:qianlongchuhai",
	          skill_type = Skill_Type.Gathering,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          phase_type = PhaseType.Fire,
	          cool_round = 3,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 8,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.At,
	                     num_id = 24,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20104] = {
	          -- name = "�ȷ�����",
	          -- icon = "set:SkillIcon1 image:xianfaduoren",
	          skill_type = Skill_Type.BuffDmg,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          phase_type = PhaseType.Fire,
	          cool_round = 3,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 25,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.Buff,
	                     num_id = 9,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20201] = {
	          -- name = "��������",
	          -- icon = "set:SkillIcon1 image:zuishengmengsi",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 10,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20202] = {
	          -- name = "�����ɢ",
	          -- icon = "set:SkillIcon1 image:hunfeiposan",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 10,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [20301] = {
	          -- name = "�²��ɵ�",
	          -- icon = "set:SkillIcon1 image:yongbukedang",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 11,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20302] = {
	          -- name = "����ɽ��",
	          -- icon = "set:SkillIcon1 image:qitunshanhe",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 12,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [20401] = {
	          -- name = "ŭ������",
	          -- icon = "set:SkillIcon1 image:nuhuozhongshao",
	          skill_type = Skill_Type.Passive,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.FireAt,
	                     num_id = 18,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20402] = {
	          -- name = "�һ���ԭ",
	          -- icon = "set:SkillIcon1 image:liehuoliaoyuan",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 13,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20403] = {
	          -- name = "�������",
	          -- icon = "set:SkillIcon1 image:huofengniepan",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 14,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [20501] = {
	          -- name = "ͬ�����",
	          -- icon = "set:SkillIcon1 image:tongchoudikai(qianyuandao)",
	          skill_type = Skill_Type.UnionHit,
	          consume_type = ConsumeType.Anger,
	          consume_id = 10,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.UnionHit,
	                     num_id = 19,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20502] = {
	          -- name = "�������",
	          -- icon = "set:SkillIcon1 image:fengwujiutian",
	          skill_type = Skill_Type.Ultimate,
	          consume_type = ConsumeType.Anger,
	          consume_id = 11,
	          phase_type = PhaseType.Fire,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 26,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20601] = {
	          -- name = "�����",
	          -- icon = "set:SkillIcon1 image:huodunshu",
	          skill_type = Skill_Type.Transport,
	          consume_type = ConsumeType.Mp,
	          consume_id = 12,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Transport,
	                     num_id = nil,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [20602] = {
	          -- name = "�ٻ���",
	          -- icon = "set:SkillIcon1 image:pihuozhou",
	          skill_type = Skill_Type.ToolMake,
	          consume_type = ConsumeType.vit,
	          consume_id = 13,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.ToolMake,
	                     num_id = 55,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [30101] = {
	          -- name = "���Ƕ���",
	          -- icon = "set:SkillIcon1 image:liuxingduoyue",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 27,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [30102] = {
	          -- name = "��������",
	          -- icon = "set:SkillIcon1 image:chuanyunluori",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.At,
	                     num_id = 28,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [30103] = {
	          -- name = "���Ķ���",
	          -- icon = "set:SkillIcon1 image:chuanxinduopo",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          cool_round = 3,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 15,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [30104] = {
	          -- name = "�������",
	          -- icon = "set:SkillIcon1 image:jianzhenjiuzhou",
	          skill_type = Skill_Type.Arrows,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          phase_type = PhaseType.Wind,
	          cool_round = 3,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.AddCrit,
	                     num_id = 29,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.At,
	                     num_id = 30,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	              }, 
	         }, 
     },
     [30201] = {
	          -- name = "�겻����",
	          -- icon = "set:SkillIcon1 image:hunbushoushe",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 16,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [30202] = {
	          -- name = "���ߵ�",
	          -- icon = "set:SkillIcon1 image:shenhundiandao",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 16,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [30301] = {
	          -- name = "�������",
	          -- icon = "set:SkillIcon1 image:baofengjuyu",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 17,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [30302] = {
	          -- name = "�����転",
	          -- icon = "set:SkillIcon1 image:shiruofenghu",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 18,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [30401] = {
	          -- name = "���ɨ��",
	          -- icon = "set:SkillIcon1 image:kuangfengsaolin",
	          skill_type = Skill_Type.Passive,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.WindAt,
	                     num_id = 18,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [30402] = {
	          -- name = "������ɢ",
	          -- icon = "set:SkillIcon1 image:fengliuyunsan",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 19,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [30403] = {
	          -- name = "������",
	          -- icon = "set:SkillIcon1 image:qingfengfugang",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 20,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [30501] = {
	          -- name = "ͬ�����",
	          -- icon = "set:SkillIcon1 image:tongchoudikai(ziyangmen)",
	          skill_type = Skill_Type.UnionHit,
	          consume_type = ConsumeType.Anger,
	          consume_id = 10,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.UnionHit,
	                     num_id = 19,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [30502] = {
	          -- name = "���ͬ��",
	          -- icon = "set:SkillIcon1 image:tianditongshou",
	          skill_type = Skill_Type.Ultimate,
	          consume_type = ConsumeType.Anger,
	          consume_id = 11,
	          phase_type = PhaseType.Wind,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.AddCrit,
	                     num_id = 31,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.At,
	                     num_id = 32,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [30601] = {
	          -- name = "�����",
	          -- icon = "set:SkillIcon1 image:fengdunshu",
	          skill_type = Skill_Type.Transport,
	          consume_type = ConsumeType.Mp,
	          consume_id = 12,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Transport,
	                     num_id = nil,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [30602] = {
	          -- name = "�ܷ���",
	          -- icon = "set:SkillIcon1 image:bifengzhou",
	          skill_type = Skill_Type.ToolMake,
	          consume_type = ConsumeType.vit,
	          consume_id = 13,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.ToolMake,
	                     num_id = 55,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [40101] = {
	          -- name = "��������",
	          -- icon = "set:SkillIcon1 image:ziqidonglai",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          phase_type = PhaseType.Ice,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 33,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [40102] = {
	          -- name = "ʯ���쾪",
	          -- icon = "set:SkillIcon1 image:shipotianjing",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          phase_type = PhaseType.Ice,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 34,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [40103] = {
	          -- name = "��ũ����",
	          -- icon = "set:SkillIcon1 image:shennongyouti",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 21,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [40104] = {
	          -- name = "��������",
	          -- icon = "set:SkillIcon1 image:qisihuisheng",
	          skill_type = Skill_Type.Revival,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Revival,
	                     num_id = 35,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 53,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	             [3] = { 
	                     type = SkillEff.MpHeal,
	                     num_id = 54,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [40201] = {
	          -- name = "����ѩ��",
	          -- icon = "set:SkillIcon1 image:bingtianxuedi",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 22,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [40202] = {
	          -- name = "��������",
	          -- icon = "set:SkillIcon1 image:bingfengwanli",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 22,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [40301] = {
	          -- name = "����ɽ�",
	          -- icon = "set:SkillIcon1 image:jinzhendujie",
	          skill_type = Skill_Type.Heal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 36,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [40302] = {
	          -- name = "�Ⱥ��ն�",
	          -- icon = "set:SkillIcon1 image:cihangpudu",
	          skill_type = Skill_Type.Heal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 37,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [40401] = {
	          -- name = "��������",
	          -- icon = "set:SkillIcon1 image:binghanchegu",
	          skill_type = Skill_Type.Passive,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.IceAt,
	                     num_id = 18,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [40402] = {
	          -- name = "�������",
	          -- icon = "set:SkillIcon1 image:bingjiyugu",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 23,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [40403] = {
	          -- name = "��������",
	          -- icon = "set:SkillIcon1 image:binghunsupo",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 24,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [40501] = {
	          -- name = "ͬ�����",
	          -- icon = "set:SkillIcon1 image:tongchoudikai(penglaige)",
	          skill_type = Skill_Type.UnionHit,
	          consume_type = ConsumeType.Anger,
	          consume_id = 10,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.UnionHit,
	                     num_id = 19,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [40502] = {
	          -- name = "�׺�ɣ��",
	          -- icon = "set:SkillIcon1 image:canghaisangtian",
	          skill_type = Skill_Type.Ultimate,
	          consume_type = ConsumeType.Anger,
	          consume_id = 11,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.HpHeal,
	                     num_id = 38,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [40601] = {
	          -- name = "ˮ����",
	          -- icon = "set:SkillIcon1 image:shuidunshu",
	          skill_type = Skill_Type.Transport,
	          consume_type = ConsumeType.Mp,
	          consume_id = 12,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Transport,
	                     num_id = nil,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [40602] = {
	          -- name = "������",
	          -- icon = "set:SkillIcon1 image:bingxinzhou",
	          skill_type = Skill_Type.ToolMake,
	          consume_type = ConsumeType.vit,
	          consume_id = 13,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.ToolMake,
	                     num_id = 55,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [50101] = {
	          -- name = "����Ϸ��",
	          -- icon = "set:SkillIcon1 image:youlongxifeng",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 41,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [50102] = {
	          -- name = "���߿���",
	          -- icon = "set:SkillIcon1 image:jinshekuangwu",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 42,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [50103] = {
	          -- name = "�ŷ�ɥ��",
	          -- icon = "set:SkillIcon1 image:wenfengsangdan",
	          skill_type = Skill_Type.Dispel,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 43,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.Dispel,
	                     num_id = 39,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [50104] = {
	          -- name = "�������",
	          -- icon = "set:SkillIcon1 image:duohunshepo",
	          skill_type = Skill_Type.Dispel,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 44,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	              }, 
	             [2] = { 
	                     type = SkillEff.Dispel,
	                     num_id = 40,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	              }, 
	         }, 
     },
     [50201] = {
	          -- name = "����֮��",
	          -- icon = "set:SkillIcon1 image:fuguzhiju",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 25,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [50202] = {
	          -- name = "�򶾹���",
	          -- icon = "set:SkillIcon1 image:wandugongxin",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 25,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [50301] = {
	          -- name = "ѸӰ����",
	          -- icon = "set:SkillIcon1 image:xunyingjixing",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 26,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [50302] = {
	          -- name = "���аٱ�",
	          -- icon = "set:SkillIcon1 image:shenxingbaibian",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 27,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [50401] = {
	          -- name = "��Ѫ���",
	          -- icon = "set:SkillIcon1 image:jianxuefenghou",
	          skill_type = Skill_Type.Passive,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.PoisonAt,
	                     num_id = 18,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [50402] = {
	          -- name = "�Զ�����",
	          -- icon = "set:SkillIcon1 image:yidugongdu",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 28,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [50403] = {
	          -- name = "�ٶ�����",
	          -- icon = "set:SkillIcon1 image:baidubuqin",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 29,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [50501] = {
	          -- name = "ͬ�����",
	          -- icon = "set:SkillIcon1 image:tongchoudikai(taoyuandong)",
	          skill_type = Skill_Type.UnionHit,
	          consume_type = ConsumeType.Anger,
	          consume_id = 10,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.UnionHit,
	                     num_id = 19,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [50502] = {
	          -- name = "����ͬ��",
	          -- icon = "set:SkillIcon1 image:wanwutongbei",
	          skill_type = Skill_Type.Ultimate,
	          consume_type = ConsumeType.Anger,
	          consume_id = 11,
	          phase_type = PhaseType.Poison,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 45,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	             [2] = { 
	                     type = SkillEff.Buff,
	                     num_id = 30,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [50601] = {
	          -- name = "�ƶ���",
	          -- icon = "set:SkillIcon1 image:yundunshu",
	          skill_type = Skill_Type.Transport,
	          consume_type = ConsumeType.Mp,
	          consume_id = 12,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Transport,
	                     num_id = nil,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [50602] = {
	          -- name = "������",
	          -- icon = "set:SkillIcon1 image:qudushu",
	          skill_type = Skill_Type.ToolMake,
	          consume_type = ConsumeType.vit,
	          consume_id = 13,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.ToolMake,
	                     num_id = 55,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [60101] = {
	          -- name = "�������",
	          -- icon = "set:SkillIcon1 image:leitingwanjun",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 46,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [60102] = {
	          -- name = "���׺䶥",
	          -- icon = "set:SkillIcon1 image:wuleihongding",
	          skill_type = Skill_Type.Normal,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          phase_type = PhaseType.Thunder,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 47,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	             [2] = { 
	                     type = SkillEff.Pursue,
	                     num_id = 16,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [60103] = {
	          -- name = "ɢԪ����",
	          -- icon = "set:SkillIcon1 image:sanyuancuiming",
	          skill_type = Skill_Type.ReduceMp,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.ReduceMp,
	                     num_id = 48,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [60104] = {
	          -- name = "���׳�н",
	          -- icon = "set:SkillIcon1 image:fudichouxin",
	          skill_type = Skill_Type.ReduceMp,
	          consume_type = ConsumeType.Mp,
	          consume_id = 9,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.ReduceMp,
	                     num_id = 49,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 3,
	              }, 
	         }, 
     },
     [60201] = {
	          -- name = "��Ȼ����",
	          -- icon = "set:SkillIcon1 image:anranxiaohun",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 31,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [60202] = {
	          -- name = "Ǳ������",
	          -- icon = "set:SkillIcon1 image:qianlongwuyong",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 31,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [60301] = {
	          -- name = "������Ԫ",
	          -- icon = "set:SkillIcon1 image:fanbenguiyuan",
	          skill_type = Skill_Type.Heal,
	          consume_type = ConsumeType.Hp,
	          consume_id = 7,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.MpHeal,
	                     num_id = 50,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [60302] = {
	          -- name = "��Ԫ��һ",
	          -- icon = "set:SkillIcon1 image:jiuyuanguiyi",
	          skill_type = Skill_Type.Heal,
	          consume_type = ConsumeType.Hp,
	          consume_id = 8,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.MpHeal,
	                     num_id = 51,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [60401] = {
	          -- name = "����֮ŭ",
	          -- icon = "set:SkillIcon1 image:tianleizhinu",
	          skill_type = Skill_Type.Passive,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.ThunderAt,
	                     num_id = 18,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [60402] = {
	          -- name = "��׻���",
	          -- icon = "set:SkillIcon1 image:gangleihuti",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 5,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 32,
	                     target_type = TargetType.friend,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [60403] = {
	          -- name = "�׶�����",
	          -- icon = "set:SkillIcon1 image:leidongjiutian",
	          skill_type = Skill_Type.Buff,
	          consume_type = ConsumeType.Mp,
	          consume_id = 6,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Buff,
	                     num_id = 33,
	                     target_type = TargetType.friend_g,
	                     target_num_id = 2,
	              }, 
	         }, 
     },
     [60501] = {
	          -- name = "ͬ�����",
	          -- icon = "set:SkillIcon1 image:tongchoudikai(yunxiaogong)",
	          skill_type = Skill_Type.UnionHit,
	          consume_type = ConsumeType.Anger,
	          consume_id = 10,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.UnionHit,
	                     num_id = 19,
	                     target_type = TargetType.enemy,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [60502] = {
	          -- name = "���ǻ���",
	          -- icon = "set:SkillIcon1 image:yixinghuandou",
	          skill_type = Skill_Type.Ultimate,
	          consume_type = ConsumeType.Anger,
	          consume_id = 11,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Mt,
	                     num_id = 52,
	                     target_type = TargetType.enemy_g,
	                     target_num_id = 4,
	              }, 
	         }, 
     },
     [60601] = {
	          -- name = "�׶���",
	          -- icon = "set:SkillIcon1 image:leidunshu",
	          skill_type = Skill_Type.Transport,
	          consume_type = ConsumeType.Mp,
	          consume_id = 12,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.Transport,
	                     num_id = nil,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
     [60602] = {
	          -- name = "�����",
	          -- icon = "set:SkillIcon1 image:anleizhou",
	          skill_type = Skill_Type.ToolMake,
	          consume_type = ConsumeType.vit,
	          consume_id = 13,
	          skill = { 
	             [1] = { 
	                     type = SkillEff.ToolMake,
	                     num_id = 55,
	                     target_type = TargetType.self,
	                     target_num_id = 1,
	              }, 
	         }, 
     },
 }
