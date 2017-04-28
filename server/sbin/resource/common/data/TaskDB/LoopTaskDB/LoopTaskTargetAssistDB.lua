--[[LoopTaskTargetAssistDB.lua
	ѭ������Ŀ�긨������(����ϵͳ)
--]]

LoopTaskTargetAssistDB = 
{	
	[10001] =
	{
		-- 1 - 30 ��
		[1] =
		{
			-- 1 - 10 ��
			[1] =
			{
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
					
				},
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
					createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
					},
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26001, dialogID = 4231, scriptID = 4101},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
					},
				},
			},
		},
		-- 31 - 40 ��
		[2] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26009, scriptID = 4117},
						[2] = {npcID = 26012, scriptID = 4118},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26003, dialogID = 4232, scriptID = 4102},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4752},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{

						[1] = {npcID = 20021,scriptID = 4105,  mapID = 1, x = 32, y = 76},--����
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4850, itemID = 1062213, npcID = 26029},
						[2] = {dialogID = 4856, itemID = 1062219, npcID = 26029},
						[3] = {dialogID = 4862, itemID = 1062225, npcID = 26029},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},

				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
				},
			},
		},
		-- 41 - 50 ��
		[3] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
						[2] = {npcID = 26010, scriptID = 4120},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26005, dialogID = 4233, scriptID = 4103},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4752},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20021,scriptID = 4105,  mapID = 1, x = 32, y = 76},--����
						[2] = {npcID = 29066,scriptID = 4111,  mapID = 1, x = 35, y = 99},--ǬԪ��ִ������
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4850, itemID = 1062213, npcID = 26029},
						[2] = {dialogID = 4856, itemID = 1062219, npcID = 26029},
						[3] = {dialogID = 4862, itemID = 1062225, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�ָ��
					escortTalkTrace =
					{
						-- �Ի�ID��ȡ��npcID Ҫ�ͺ����followNpcID ƥ��
						[1] = {dialogID = 4811, followNpcID = 26021},
					},
					-- ����NPcָ��
					escortNpcTrace =
					{
						-- followNpcID��֮ǰ���Ѿ���������
						[1] = { npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = { npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = { npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = { npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
				},
			},
		},
		-- 51 - 150 ��
		[4] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
                                                [2] = {npcID = 26010, scriptID = 4120},
					},
				},
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26007, dialogID = 4234, scriptID = 4104},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4752},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 29066,scriptID = 4111,  mapID = 1, x = 35, y = 99},--ǬԪ��ִ������
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4850, itemID = 1062213, npcID = 26029},
						[2] = {dialogID = 4856, itemID = 1062219, npcID = 26029},
						[3] = {dialogID = 4862, itemID = 1062225, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						-- dialogID �󶨵�npcID��followNpcIDҪ��Ӧ
						[1] = {dialogID = 4811, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
				},
			},
		},
	},
	[10002] =
	{
		-- 1 - 30 ��
		[1] =
		{
			-- 1 - 10 ��
			[1] =
			{
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
					
				},
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26001, dialogID = 4236, scriptID = 4101},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
					},
				},
			},
		},
		-- 31 - 40 ��
		[2] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26009, scriptID = 4117},
						[2] = {npcID = 26012, scriptID = 4118},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26003, dialogID = 4237, scriptID = 4102},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4755},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20023,scriptID = 4107,  mapID = 3, x = 33, y = 111},--���
					}
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4851, itemID = 1062214, npcID = 26029},
						[2] = {dialogID = 4857, itemID = 1062220, npcID = 26029},
						[3] = {dialogID = 4863, itemID = 1062226, npcID = 26029},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
				},
			},
		},
		-- 41 - 50 ��
		[3] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
                                                [2] = {npcID = 26010, scriptID = 4120},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26005, dialogID = 4238, scriptID = 4103},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4755},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20023,scriptID = 4107,  mapID = 3, x = 33, y = 111},--���
						[2] = {npcID = 29068,scriptID = 4113,  mapID = 3, x = 77, y = 44},--��ϼɽִ������
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4851, itemID = 1062214, npcID = 26029},
						[2] = {dialogID = 4857, itemID = 1062220, npcID = 26029},
						[3] = {dialogID = 4863, itemID = 1062226, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						[1] = {dialogID = 4813, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
				},
			},
		},
		-- 51 - 150 ��
		[4] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
                                                [2] = {npcID = 26010, scriptID = 4120},
					},
				},
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26007, dialogID = 4239, scriptID = 4104},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4755},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 29068,scriptID = 4113,  mapID = 3, x = 77, y = 44},--��ϼɽִ������
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4851, itemID = 1062214, npcID = 26029},
						[2] = {dialogID = 4857, itemID = 1062220, npcID = 26029},
						[3] = {dialogID = 4863, itemID = 1062226, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						[1] = {dialogID = 4813, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20006, mapID = 3, x = 26, y = 92},
					},
				},
			},
		},
	},
	[10003] =
	{
		-- 1 - 30 ��
		[1] =
		{
			-- 1 - 10 ��
			[1] =
			{
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
					
				},
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26001, dialogID = 4241, scriptID = 4101},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
					},
				},
			},
		},
		-- 31 - 40 ��
		[2] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26009, scriptID = 4117},
						[2] = {npcID = 26012, scriptID = 4118},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26003, dialogID = 4242, scriptID = 4102},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4758},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20026,scriptID = 4109,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4852, itemID = 1062215, npcID = 26029},
						[2] = {dialogID = 4858, itemID = 1062221, npcID = 26029},
						[3] = {dialogID = 4864, itemID = 1062227, npcID = 26029},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
				},
			},
		},
		-- 41 - 50 ��
		[3] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
                                                [2] = {npcID = 26010, scriptID = 4120},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26005, dialogID = 4243, scriptID = 4103},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4758},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20026,scriptID = 4109,  mapID = 6, x = 43, y = 112},--��ɰ�
                                                [2] = {npcID = 29070,scriptID = 4115,  mapID = 6, x = 105, y = 105},--������ִ������
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4852, itemID = 1062215, npcID = 26029},
						[2] = {dialogID = 4858, itemID = 1062221, npcID = 26029},
						[3] = {dialogID = 4864, itemID = 1062227, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						[1] = {dialogID = 4815, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
				},
			},
		},
		-- 51 - 150 ��
		[4] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
                                                [2] = {npcID = 26010, scriptID = 4120},
					},
				},
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26007, dialogID = 4244, scriptID = 4104},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4758},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
                                                [1] = {npcID = 29070,scriptID = 4115,  mapID = 6, x = 105, y = 105},--������ִ������
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4852, itemID = 1062215, npcID = 26029},
						[2] = {dialogID = 4858, itemID = 1062221, npcID = 26029},
						[3] = {dialogID = 4864, itemID = 1062227, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						[1] = {dialogID = 4815, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20008, mapID = 6, x = 67, y = 135},
					},
				},
			},
		},
	},
	[10004] =
	{
		-- 1 - 30 ��
		[1] =
		{
			-- 1 - 10 ��
			[1] =
			{
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
					
				},
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26001, dialogID = 4246, scriptID = 4101},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
					},
				},
			},
		},
		-- 31 - 40 ��
		[2] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26009, scriptID = 4117},
						[2] = {npcID = 26012, scriptID = 4118},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26003, dialogID = 4247, scriptID = 4102},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4761},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20024,scriptID = 4110,  mapID = 5, x = 33, y = 77},--����
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4853, itemID = 1062216, npcID = 26029},
						[2] = {dialogID = 4859, itemID = 1062222, npcID = 26029},
						[3] = {dialogID = 4865, itemID = 1062228, npcID = 26029},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
				},
			},
		},
		-- 41 - 50 ��
		[3] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
                                                [2] = {npcID = 26010, scriptID = 4120},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26005, dialogID = 4248, scriptID = 4103},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4761},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20024,scriptID = 4110,  mapID = 5, x = 33, y = 77},--����
						[2] = {npcID = 29071,scriptID = 4116,  mapID = 5, x = 88, y = 27},--������ִ������
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4853, itemID = 1062216, npcID = 26029},
						[2] = {dialogID = 4859, itemID = 1062222, npcID = 26029},
						[3] = {dialogID = 4865, itemID = 1062228, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						[1] = {dialogID = 4817, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
				},
			},
		},
		-- 51 - 150 ��
		[4] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
                                                [2] = {npcID = 26010, scriptID = 4120},
					},
				},
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26007, dialogID = 4249, scriptID = 4104},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4761},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 29071,scriptID = 4116,  mapID = 5, x = 88, y = 27},--������ִ������
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4853, itemID = 1062216, npcID = 26029},
						[2] = {dialogID = 4859, itemID = 1062222, npcID = 26029},
						[3] = {dialogID = 4865, itemID = 1062228, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						[1] = {dialogID = 4817, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20009, mapID = 5, x = 43, y = 112},
					},
				},
			},
		},
	},
	[10005] =
	{
		-- 1 - 30 ��
		[1] =
		{
			-- 1 - 10 ��
			[1] =
			{
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
					
				},
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26001, dialogID = 4251, scriptID = 4101},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
					},
				},
			},
		},
		-- 31 - 40 ��
		[2] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26009, scriptID = 4117},
						[2] = {npcID = 26012, scriptID = 4118},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26003, dialogID = 4252, scriptID = 4102},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4764},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20025,scriptID = 4106,  mapID = 4, x = 61, y = 93},--ׯ�ε�
					}
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4854, itemID = 1062217, npcID = 26029},
						[2] = {dialogID = 4860, itemID = 1062223, npcID = 26029},
						[3] = {dialogID = 4866, itemID = 1062229, npcID = 26029},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
				},
			},
		},
		-- 41 - 50 ��
		[3] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
						[2] = {npcID = 26010, scriptID = 4120},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26005, dialogID = 4253, scriptID = 4103},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4764},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20025,scriptID = 4106,  mapID = 4, x = 61, y = 93},--ׯ�ε�
                                                [2] = {npcID = 29067,scriptID = 4112,  mapID = 4, x = 82, y = 112},--��Դ��ִ������
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4854, itemID = 1062217, npcID = 26029},
						[2] = {dialogID = 4860, itemID = 1062223, npcID = 26029},
						[3] = {dialogID = 4866, itemID = 1062229, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						[1] = {dialogID = 4819, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
				},
			},
		},
		-- 51 - 150 ��
		[4] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
                                                [2] = {npcID = 26010, scriptID = 4120},
					},
				},
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26007, dialogID = 4254, scriptID = 4104},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4764},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
                                                [1] = {npcID = 29067,scriptID = 4112,  mapID = 4, x = 82, y = 112},--��Դ��ִ������
					},
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4854, itemID = 1062217, npcID = 26029},
						[2] = {dialogID = 4860, itemID = 1062223, npcID = 26029},
						[3] = {dialogID = 4866, itemID = 1062229, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						[1] = {dialogID = 4819, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20005, mapID = 4, x = 59, y = 72},
					},
				},
			},
		},
	},
	[10006] =
	{
		-- 1 - 30 ��
		[1] =
		{
			-- 1 - 10 ��
			[1] =
			{
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
					
				},
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26001, dialogID = 4256, scriptID = 4101},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
					},
				},
			},
		},
		-- 31 - 40 ��
		[2] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26009, scriptID = 4117},
						[2] = {npcID = 26012, scriptID = 4118},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26003, dialogID = 4257, scriptID = 4102},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4767},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20022,scriptID = 4108,  mapID = 2, x = 61, y = 127},--����
					}
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4855, itemID = 1062218, npcID = 26029},
						[2] = {dialogID = 4861, itemID = 1062224, npcID = 26029},
						[3] = {dialogID = 4867, itemID = 1062230, npcID = 26029},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
				},
			},
		},
		-- 41 - 50 ��
		[3] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
                                                [2] = {npcID = 26010, scriptID = 4120},
					},
				},
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26005, dialogID = 4258, scriptID = 4103},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4767},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20022,scriptID = 4108,  mapID = 2, x = 61, y = 127},--����
						[2] = {npcID = 29069,scriptID = 4114,  mapID = 2, x = 38, y = 124},--������ִ������
					}
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4855, itemID = 1062218, npcID = 26029},
						[2] = {dialogID = 4861, itemID = 1062224, npcID = 26029},
						[3] = {dialogID = 4867, itemID = 1062230, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						[1] = {dialogID = 4821, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
				},
			},
		},
		-- 51 - 150 ��
		[4] =
		{
			-- 1 - 10 ��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 26011, scriptID = 4119},
                                                [2] = {npcID = 26010, scriptID = 4120},
					},
				},
				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 29005, mapID = 10, x = 308, y = 218},
						[2] = {npcID = 29008, mapID = 10, x = 133, y = 104},
						[3] = {npcID = 20027, mapID = 9, x = 72, y = 71},
						[4] = {npcID = 29001, mapID = 10, x = 214, y = 202},
						[5] = {npcID = 20928, mapID = 10, x = 187, y = 215},
						[6] = {npcID = 29012, mapID = 9, x = 77, y = 93},
					}
				},
				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
						[2] = 
						{
							itemID = 1012003, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                                        createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						

                                        },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
                                          [1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
				},
				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 26007, dialogID = 4259, scriptID = 4104},
                                                [2] = {npcID = 26014, dialogID = 4260, scriptID = 4141},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 4767},
					},
				},
				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041016, npcID = 20049, mapID = 10, x = 46, y = 216} ,
						[2] = {itemID = 1041016, npcID = 27075, mapID = 13, x = 144, y = 116} ,
						[3] = {itemID = 1041016, npcID = 20017, mapID = 10, x = 286, y = 163} ,
						[4] = {itemID = 1041016, npcID = 29079, mapID = 10, x = 184, y = 234} ,
						[5] = {itemID = 1041016, npcID = 29036, mapID = 13, x = 47, y = 106} ,
						[6] = {itemID = 1041016, npcID = 29034, mapID = 13, x = 89, y = 141} ,
						[7] = {itemID = 1041016, npcID = 20059, mapID = 10, x = 45, y = 188} ,
						[8] = {itemID = 1041016, npcID = 20701, mapID = 13, x = 54, y = 145} ,
					},
				},
				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 29069,scriptID = 4114,  mapID = 2, x = 38, y = 124},--������ִ������
					}
				},
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 4855, itemID = 1062218, npcID = 26029},
						[2] = {dialogID = 4861, itemID = 1062224, npcID = 26029},
						[3] = {dialogID = 4867, itemID = 1062230, npcID = 26029},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					escortTalkTrace =
					{
						[1] = {dialogID = 4821, followNpcID = 26021},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29010, mapID = 9, x = 45, y = 76},
						[2] = {npcID = 29007, mapID = 10, x = 319, y = 132},
						[3] = {npcID = 29031, mapID = 13, x = 174, y = 74},
						[4] = {npcID = 29023, mapID = 14, x = 63, y = 146},
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26028, scriptID = 4142},
					}
				},
				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20007, mapID = 2, x = 83, y = 125},
					},
				},
			},
		},
	},
	[10007] =
	{
-- 40 - 44 ��
		[1] =
		{
			-- 1 - 50 ��
			[1] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27078, scriptID = 5089},--�ڷ�С��
						[2] = {npcID = 27079, scriptID = 5090},--��ħ˫����
						[3] = {npcID = 27080, scriptID = 5091},--ħ��Ů�̿�
						[4] = {npcID = 27081, scriptID = 5092},--ħ����ū
						[5] = {npcID = 27082, scriptID = 5093},--������
						[6] = {npcID = 27083, scriptID = 5094},--а�����
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�]]
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						
						[1] = {npcID = 27001,dialogID = 5001, scriptID = 5001},--�����൳
						[2] = {npcID = 27002,dialogID = 5002, scriptID = 5002},--�ƽ��൳
						[3] = {npcID = 27003,dialogID = 5003, scriptID = 5003},--����
						[4] = {npcID = 27004,dialogID = 5004, scriptID = 5004},--ǿ��
						[5] = {npcID = 27005,dialogID = 5005, scriptID = 5005},--��å
						[6] = {npcID = 27006,dialogID = 5006, scriptID = 5006},--����
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
				[LoopTaskTargetType.puzzle] =
				{
					
				},			
			},
    -- 51 - 100 ��
    [2] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27084, scriptID = 5095},--��������
						[2] = {npcID = 27085, scriptID = 5096},--ħ�ɻ���
						[3] = {npcID = 27086, scriptID = 5097},--���к���
						[4] = {npcID = 27087, scriptID = 5098},--���亲��
						[5] = {npcID = 27088, scriptID = 5099},--������
						[6] = {npcID = 27089, scriptID = 5100},--��ħ
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27007, dialogID = 5007, scriptID = 5007},--���
						[2] = {npcID = 27008, dialogID = 5008, scriptID = 5008},--��Ȫ����
						[3] = {npcID = 27009, dialogID = 5009, scriptID = 5009},--����
						[4] = {npcID = 27010, dialogID = 5010, scriptID = 5010},--�����鳤
						[5] = {npcID = 27011, dialogID = 5011, scriptID = 5011},--�ƽ�����
						[6] = {npcID = 27012, dialogID = 5012, scriptID = 5012},--��Į����
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
				[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
    -- 101 - 150 ��
    [3] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27090, scriptID = 5101},--����
						[2] = {npcID = 27091, scriptID = 5102},--��
						[3] = {npcID = 27092, scriptID = 5103},--��ͷ��
						[4] = {npcID = 27093, scriptID = 5104},--����
						[5] = {npcID = 27094, scriptID = 5105},--�ǲݼ�
						[6] = {npcID = 27095, scriptID = 5106},--�ں���
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27013, dialogID = 5013, scriptID = 5013},--����
						[2] = {npcID = 27014, dialogID = 5014, scriptID = 5014},--ɽ��
						[3] = {npcID = 27015, dialogID = 5015, scriptID = 5015},--ˮ��
						[4] = {npcID = 27016, dialogID = 5016, scriptID = 5016},--��������
						[5] = {npcID = 27017, dialogID = 5017, scriptID = 5017},--�ƽ����
						[6] = {npcID = 27018, dialogID = 5018, scriptID = 5018},--��ɽ��
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
				[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
		-- 151 - 200 ��
    [4] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27096, scriptID = 5107},--�׺���
						[2] = {npcID = 27097, scriptID = 5108},--�ü�
						[3] = {npcID = 27098, scriptID = 5109},--����
						[4] = {npcID = 27099, scriptID = 5110},--������
						[5] = {npcID = 27100, scriptID = 5111},--���鼧
						[6] = {npcID = 27101, scriptID = 5112},--��˫���
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27019, dialogID = 5019, scriptID = 5019},--а���൳
						[2] = {npcID = 27020, dialogID = 5020, scriptID = 5020},--�˾��ѵ�
						[3] = {npcID = 27021, dialogID = 5021, scriptID = 5021},--а���ͽ
						[4] = {npcID = 27022, dialogID = 5022, scriptID = 5022},--а�����
						[5] = {npcID = 27023, dialogID = 5023, scriptID = 5023},--�����ʦ
						[6] = {npcID = 27024, dialogID = 5024, scriptID = 5024},--�ؽ���ͽ
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
			   [LoopTaskTargetType.puzzle] =
				{
					
				},
			},
		},
-- 45 - 49 ��
[2] =
{
			-- 1 - 50 ��
	    [1] =
	    {
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27102, scriptID = 5113},--ħ�̴󻤷�
						[2] = {npcID = 27103, scriptID = 5114},--а��Ů��
						[3] = {npcID = 27104, scriptID = 5115},--ħ������
						[4] = {npcID = 27105, scriptID = 5116},--�ƽ�ħ��
						[5] = {npcID = 27106, scriptID = 5117},--��ʯ��
						[6] = {npcID = 27107, scriptID = 5118},--����
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27025, dialogID = 5025, scriptID = 5025},--����
						[2] = {npcID = 27026, dialogID = 5026, scriptID = 5026},--����
						[3] = {npcID = 27027, dialogID = 5027, scriptID = 5027},--����
						[4] = {npcID = 27028, dialogID = 5028, scriptID = 5028},--��ʯ
						[5] = {npcID = 27029, dialogID = 5029, scriptID = 5029},--��а
						[6] = {npcID = 27030, dialogID = 5030, scriptID = 5030},--�鼧
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
			[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
    -- 51 - 100 ��
    [2] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27108, scriptID = 5119},--Ѫħ��
						[2] = {npcID = 27109, scriptID = 5120},--Ѫ��
						[3] = {npcID = 27110, scriptID = 5121},--����Ӱ
						[4] = {npcID = 27111, scriptID = 5122},--������
						[5] = {npcID = 27112, scriptID = 5123},--����
						[6] = {npcID = 27113, scriptID = 5124},--�����¥��
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27031, dialogID = 5031, scriptID = 5031},--����
						[2] = {npcID = 27032, dialogID = 5032, scriptID = 5032},--�뷼
						[3] = {npcID = 27033, dialogID = 5033, scriptID = 5033},--����
						[4] = {npcID = 27034, dialogID = 5034, scriptID = 5034},--����
						[5] = {npcID = 27035, dialogID = 5035, scriptID = 5035},--Ԭ��
						[6] = {npcID = 27036, dialogID = 5036, scriptID = 5036},--���
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
			[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
    -- 101 - 150 ��
    [3] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27114, scriptID = 5125},--ѩ��
						[2] = {npcID = 27115, scriptID = 5126},--ħ������
						[3] = {npcID = 27116, scriptID = 5127},--�������
						[4] = {npcID = 27117, scriptID = 5128},--�Ÿ�
						[5] = {npcID = 27118, scriptID = 5129},--ҹħ
						[6] = {npcID = 27119, scriptID = 5130},--����
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27037, dialogID = 5037, scriptID = 5037},--�Ƴ���
						[2] = {npcID = 27038, dialogID = 5038, scriptID = 5038},--����
						[3] = {npcID = 27039, dialogID = 5039, scriptID = 5039},--����
						[4] = {npcID = 27040, dialogID = 5040, scriptID = 5040},--����
						[5] = {npcID = 27041, dialogID = 5041, scriptID = 5041},--���
						[6] = {npcID = 27042, dialogID = 5042, scriptID = 5042},--���
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
			[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
		-- 151 - 200 ��
        [4] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27120, scriptID = 5131},--Ѫ������
						[2] = {npcID = 27121, scriptID = 5132},--�ز���
						[3] = {npcID = 27122, scriptID = 5133},--ѩ��
						[4] = {npcID = 27123, scriptID = 5134},--����
						[5] = {npcID = 27124, scriptID = 5135},--��Ԩ
						[6] = {npcID = 27125, scriptID = 5136},--�Ȼ�����
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27043, dialogID = 5043, scriptID = 5043},--����
						[2] = {npcID = 27044, dialogID = 5044, scriptID = 5044},--���˰�
						[3] = {npcID = 27045, dialogID = 5045, scriptID = 5045},--����
						[4] = {npcID = 27046, dialogID = 5046, scriptID = 5046},--��
						[5] = {npcID = 27047, dialogID = 5047, scriptID = 5047},--����
						[6] = {npcID = 27048, dialogID = 5048, scriptID = 5048},--����
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
			[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
		},
	-- 50 - 54 ��
[3] =
{
			-- 1 - 50 ��
	    [1] =
	    {
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27126, scriptID = 5137},--ħ������
						[2] = {npcID = 27127, scriptID = 5138},--ţħ
						[3] = {npcID = 27128, scriptID = 5139},--��������
						[4] = {npcID = 27129, scriptID = 5140},--а�����
						[5] = {npcID = 27130, scriptID = 5141},--Ѫ������
						[6] = {npcID = 27131, scriptID = 5142},--ħ�����
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27049, dialogID = 5049, scriptID = 5049},--������ʿ��Ѫ
						[2] = {npcID = 27050, dialogID = 5050, scriptID = 5050},--а��ħ������
						[3] = {npcID = 27051, dialogID = 5051, scriptID = 5051},--ħ���׾�
						[4] = {npcID = 27052, dialogID = 5052, scriptID = 5052},--ħ����ǧ��
						[5] = {npcID = 27053, dialogID = 5053, scriptID = 5053},--�������
						[6] = {npcID = 27054, dialogID = 5054, scriptID = 5054},--��������
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
			[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
    -- 51 - 100 ��
    [2] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27132, scriptID = 5143},--��ħ
						[2] = {npcID = 27133, scriptID = 5144},--��ɲ���
						[3] = {npcID = 27134, scriptID = 5145},--��ħ
						[4] = {npcID = 27135, scriptID = 5146},--˫ͷħ��
						[5] = {npcID = 27136, scriptID = 5147},--��Ѫħ��
						[6] = {npcID = 27137, scriptID = 5148},--��Ѫ����
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27055, dialogID = 5055, scriptID = 5055},--ħ������
						[2] = {npcID = 27056, dialogID = 5056, scriptID = 5056},--ħ��������
						[3] = {npcID = 27057, dialogID = 5057, scriptID = 5057},--ǧ������
						[4] = {npcID = 27058, dialogID = 5058, scriptID = 5058},--����½��
						[5] = {npcID = 27059, dialogID = 5059, scriptID = 5059},--а������
						[6] = {npcID = 27060, dialogID = 5060, scriptID = 5060},--��ʿ����
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
			[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
    -- 101 - 150 ��
    [3] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27138, scriptID = 5149},--��ɲŮ��
						[2] = {npcID = 27139, scriptID = 5150},--�����ʦ
						[3] = {npcID = 27140, scriptID = 5151},--Ѫ����ħ
						[4] = {npcID = 27141, scriptID = 5152},--ħ��Ȯ
						[5] = {npcID = 27142, scriptID = 5153},--ħū
						[6] = {npcID = 27143, scriptID = 5154},--ħ������
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27061, dialogID = 5061, scriptID = 5061},--ħ������
						[2] = {npcID = 27062, dialogID = 5062, scriptID = 5062},--ħ������
						[3] = {npcID = 27063, dialogID = 5063, scriptID = 5063},--�����ܱ�
						[4] = {npcID = 27064, dialogID = 5064, scriptID = 5064},--а������
						[5] = {npcID = 27065, dialogID = 5065, scriptID = 5065},--��ʿ����
						[6] = {npcID = 27066, dialogID = 5066, scriptID = 5066},--Ѧ��
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
			[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
		-- 151 - 200 ��
        [4] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				--����ս��
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 27144, scriptID = 5155},--����ͯ��
						[2] = {npcID = 27145, scriptID = 5156},--ǹħ
						[3] = {npcID = 27146, scriptID = 5157},--�����
						[4] = {npcID = 27147, scriptID = 5158},--����ĸ
						[5] = {npcID = 27148, scriptID = 5159},--������
						[6] = {npcID = 27149, scriptID = 5160},--�����
					},
				},

				-- �Ի�
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- ��ս����
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 20049,scriptID = 5073, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320,scriptID = 5074,  mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059,scriptID = 5075,  mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008,scriptID = 5076,  mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073,scriptID = 5077,  mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074,scriptID = 5078,  mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701,scriptID = 5079,  mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075,scriptID = 5080,  mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076,scriptID = 5081,  mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077,scriptID = 5082,  mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021,scriptID = 5083,  mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022,scriptID = 5084,  mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023,scriptID = 5085,  mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025,scriptID = 5086,  mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024,scriptID = 5087,  mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026,scriptID = 5088,  mapID = 6, x = 43, y = 112},--��ɰ�
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = --------------��������
						{
							itemID = 1051001, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = --------------���沼��
						{
							itemID = 1051002, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[3] = --------------��������
						{
							itemID = 1051006, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[4] = --------------������Ь
						{
							itemID = 1051007, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[5] = --------------ǿ������
						{
							itemID = 1051008, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[6] = --------------ҹ����
						{
							itemID = 1051009, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[7] = --------------����
						{
							itemID = 1051010, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[8] = --------------����
						{
							itemID = 1051011, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
					
				},
				-- �Ͻ�����
				[LoopTaskTargetType.catchPet] =
				{
					-- �������ָ��
                    createBuyPetTrace =
					{
						[1] = 
						{
							petID = 1001,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[2] = 
						{
							petID = 1002,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[3] = 
						{
							petID = 1003,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[4] = 
						{
							petID = 1004,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[5] = 
						{
							petID = 1005,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[6] = 
						{
							petID = 1006,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[7] = 
						{
							petID = 1007,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[8] = 
						{
							petID = 1008,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[9] = 
						{
							petID = 1009,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[10] = 
						{
							petID = 1010,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[11] = 
						{
							petID = 1011,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[12] = 
						{
							petID = 1012,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[13] = 
						{
							petID = 1013,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[14] = 
						{
							petID = 1014,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},
						[15] = 
						{
							petID = 1015,
							count = 1,
							buyPosition = {npcID = 29082, mapID = 10, x = 194, y = 190},
						},						
                    },
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 20049, mapID = 10, x = 46, y = 216},--¬ֲ
						[2] = {npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},

				-- ����ս��
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27067, dialogID = 5067, scriptID = 5067},--������
						[2] = {npcID = 27068, dialogID = 5068, scriptID = 5068},--�ྫ��
						[3] = {npcID = 27069, dialogID = 5069, scriptID = 5069},--ѩ������
						[4] = {npcID = 27070, dialogID = 5070, scriptID = 5070},--ˮ��ͯ��
						[5] = {npcID = 27071, dialogID = 5071, scriptID = 5071},--ħ������
						[6] = {npcID = 27072, dialogID = 5072, scriptID = 5072},--��������
					},
				},

				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 20049, mapID = 10, x = 46, y = 216} ,--¬ֲ
						[2] = {itemID = 1041017, npcID = 30320, mapID = 10, x = 45, y = 209},--����ʦ
						[3] = {itemID = 1041017, npcID = 20059, mapID = 10, x = 45, y = 188},--�ʸ���
						[4] = {itemID = 1041017, npcID = 29008, mapID = 10, x = 133, y = 104},--��ά��
						[5] = {itemID = 1041017, npcID = 27073, mapID = 9, x = 97, y = 137},--��ɭ
						[6] = {itemID = 1041017, npcID = 27074, mapID = 9, x = 125, y = 87},--����Ǭ
						[7] = {itemID = 1041017, npcID = 20701, mapID = 13, x = 54, y = 145},--����
						[8] = {itemID = 1041017, npcID = 27075, mapID = 13, x = 144, y = 116},--���Ļ�
						[9] = {itemID = 1041017, npcID = 27076, mapID = 14, x = 73, y = 58},--֣��
						[10] = {itemID = 1041017, npcID = 27077, mapID = 14, x = 36, y = 65},--����
						[11] = {itemID = 1041017, npcID = 20021, mapID = 1, x = 32, y = 76},--����
						[12] = {itemID = 1041017, npcID = 20022, mapID = 2, x = 61, y = 127},--����
						[13] = {itemID = 1041017, npcID = 20023, mapID = 3, x = 33, y = 111},--���
						[14] = {itemID = 1041017, npcID = 20025, mapID = 4, x = 61, y = 93},--ׯ�ε�
						[15] = {itemID = 1041017, npcID = 20024, mapID = 5, x = 33, y = 77},--����
						[16] = {itemID = 1041017, npcID = 20026, mapID = 6, x = 43, y = 112},--��ɰ�
					},
				},
			[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
		},
	},
	[10008] =
	{
		-- 1 - 151 ��
		[1] =
		{
			-- 1 - 40 ��
			[1] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				[LoopTaskTargetType.script] =
				{	
					-- ����Ի�ID�ͽű�ս��IDҪ����ʲôʲô����
					createRandomNpc =
					{
						[1] = {npcID = 25001, scriptID = 4001},
						[2] = {npcID = 25002, scriptID = 4002},
						[3] = {npcID = 25003, scriptID = 4003},
						[4] = {npcID = 25004, scriptID = 4004},
						[5] = {npcID = 25005, scriptID = 4005},
						[6] = {npcID = 25006, scriptID = 4006},
						[7] = {npcID = 25007, scriptID = 4007},
						[8] = {npcID = 25008, scriptID = 4008},
						[9] = {npcID = 25009, scriptID = 4009},
						[10] = {npcID = 25010, scriptID = 4010},
						[11] = {npcID = 25011, scriptID = 4011},
						[12] = {npcID = 25012, scriptID = 4012},
						[13] = {npcID = 25013, scriptID = 4013},
						[14] = {npcID = 25014, scriptID = 4014},
						[15] = {npcID = 25015, scriptID = 4015},
						[16] = {npcID = 25016, scriptID = 4016},
						[17] = {npcID = 25017, scriptID = 4017},
						[18] = {npcID = 25018, scriptID = 4018},
						[19] = {npcID = 25019, scriptID = 4019},
						[20] = {npcID = 25020, scriptID = 4020},
						[21] = {npcID = 25021, scriptID = 4021},
						[22] = {npcID = 25022, scriptID = 4022},
						[23] = {npcID = 25023, scriptID = 4023},
						[24] = {npcID = 25024, scriptID = 4024},
						[25] = {npcID = 25025, scriptID = 4025},
						[26] = {npcID = 25026, scriptID = 4026},
						[27] = {npcID = 25027, scriptID = 4027},
						[28] = {npcID = 25028, scriptID = 4028},
						[29] = {npcID = 25029, scriptID = 4029},
						[30] = {npcID = 25030, scriptID = 4030},
					},
				},
			},
		},
	},
	[10009] = 
	{
		[1] =
		{
			[1] =
			{
				-- �Ͻ�װ��
				[LoopTaskTargetType.paidEquip] = 
				{
					randomEquip = 
					{
						npcInfo = {npcID = 30817, mapID = 7, x = 74, y = 63},
						equipInfo = 
						{
							[1] = {1, 2, 3, 4, 5, 6},
							[2] = {7, 8, 9, 10, 11},
						}
					},
				},
			}
		}
	},

	[10010] =         -------------------��������	
	{
		[1] =
		{
			-- һ��10��
			[1] =
			{
				[LoopTaskTargetType.script] =
				{
					createRandomNpc =
					{
						[1] = {npcID = 28001, scriptID = 5201, mapID = 127, x = 49, y = 176},
						[2] = {npcID = 28002, scriptID = 5202, mapID = 106, x = 83, y = 147},
						[3] = {npcID = 28003, scriptID = 5203, mapID = 126, x = 49, y = 223},
						[4] = {npcID = 28004, scriptID = 5204, mapID = 119, x = 160, y = 166},
						[5] = {npcID = 28005, scriptID = 5205, mapID = 116, x = 116, y = 235},
						[6] = {npcID = 28006, scriptID = 5206, mapID = 119, x = 94, y = 101},
						[7] = {npcID = 28007, scriptID = 5207, mapID = 120, x = 144, y = 145},
						[8] = {npcID = 28008, scriptID = 5208, mapID = 122, x = 223, y = 102},
						[9] = {npcID = 28009, scriptID = 5209, mapID = 10, x = 278, y = 269},
						[10] = {npcID = 28010, scriptID = 5210, mapID = 119, x = 56, y = 163},
						[11] = {npcID = 28011, scriptID = 5211, mapID = 101, x = 203, y = 101},
						[12] = {npcID = 28012, scriptID = 5212, mapID = 101, x = 82, y = 197},
						[13] = {npcID = 28013, scriptID = 5213, mapID = 10, x = 253, y = 91},
						[14] = {npcID = 28014, scriptID = 5214, mapID = 128, x = 143, y = 202},
						[15] = {npcID = 28015, scriptID = 5215, mapID = 118, x = 108, y = 216},
						[16] = {npcID = 28016, scriptID = 5216, mapID = 13, x = 162, y = 99},
						[17] = {npcID = 28017, scriptID = 5217, mapID = 102, x = 189, y = 102},
						[18] = {npcID = 28018, scriptID = 5218, mapID = 122, x = 171, y = 81},
						[19] = {npcID = 28019, scriptID = 5219, mapID = 120, x = 206, y = 104},
						[20] = {npcID = 28020, scriptID = 5220, mapID = 126, x = 150, y = 129},

					},
				},
			},
		},
	},

	[10011] = 
	{
		-- ����ս��
		[1] =
		{
			[1] =
			{
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {npcID = 27061, dialogID = 5061, scriptID = 5061},--ħ������
						[2] = {npcID = 27062, dialogID = 5062, scriptID = 5062},--ħ������
						[3] = {npcID = 27063, dialogID = 5063, scriptID = 5063},--�����ܱ�
						[4] = {npcID = 27064, dialogID = 5064, scriptID = 5064},--а������
						[5] = {npcID = 27065, dialogID = 5065, scriptID = 5065},--��ʿ����
						[6] = {npcID = 27066, dialogID = 5066, scriptID = 5066},--Ѧ��
					},
				},
				[LoopTaskTargetType.brightMine] = 
				{
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 40211, scriptID = 200, mapID = 10, x = 173, y = 231},--����
						[2] = {npcID = 40032, scriptID = 200, mapID = 7, x = 86, y = 27},
						[3] = {npcID = 40033, scriptID = 200, mapID =7, x= 54, y =108},
						[4] = {npcID = 40034, scriptID = 200, mapID = 7, x= 31, y = 79},
					},
				},
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 40211, mapID = 10, x = 173, y = 231},--¬ֲ
					}
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1041017, npcID = 40211, mapID = 10, x = 173, y = 231} ,--¬ֲ
					},
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1011001, 
							count = 1,
							buyPosition = {npcID = 20106, mapID = 10, x = 224, y = 166},			
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 40034, mapID = 7, x = 31, y = 79},
					},
					
				},
			},
		},
	},

	[10020] =
	{
		-- 1 - 150 ��
		[1] =
		{
			-- 1 - 200 ��
			[1] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				[LoopTaskTargetType.script] =
				{	
					--����npc�ڴ����
					createRandomNpc =
					{
						[1] = {npcID = 40002, scriptID = 100},
					},
				},

				-- ��̸ֻ�жԻ�ID��ս��
				[LoopTaskTargetType.talk] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					createPosition =
					{
						[1] = {npcID = 40004, mapID = 10, x = 187, y = 240},
					}
				},

				-- �Ͻ���Ʒ
				[LoopTaskTargetType.buyItem] =
				{
					-- ����Ʒָ��
					createBuyItemData = 
					{
						[1] = 
						{
							itemID = 1051013, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},			
						},
						[2] = 
						{
							itemID = 1051013, 
							count = 1,
							buyPosition = {npcID = 20012, mapID = 10, x = 190, y = 190},
						},
					},
					-- ����Ʒָ��
					createPaidItemTrace = 
					{
						[1] ={npcID = 40003, mapID = 10, x = 178, y = 243},
					},
					
				},

				[LoopTaskTargetType.catchPet] =
				{
					-- ��׽����ָ��
					createCatchPetData =
					{
						[1] = {petID = 1001, scriptID = 101},
						[2] = {petID = 1001, scriptID = 101},
					},
					-- �Ͻɳ���ָ��
					createPaidPetTrace = 
					{
						[1] = {npcID = 40005, mapID = 10, x = 185, y = 174},
					},
				},

				-- ��ս����
				[LoopTaskTargetType.partrolScript] =
				{
					addSpecialArea =
					{
						[1] = {dialogID = 30009, scriptID = 100},
						[2] = {dialogID = 30009, scriptID = 100},
					},
				},
				-- ����NPC,
				[LoopTaskTargetType.escort] =
				{
					-- Ѳ�߳��Ի�
					partrolTalkTrace =
					{
						[1] = {dialogID = 30016, followNpcID = 20702},
					},
					-- ���β��Npc
					escortNpcTrace =
					{
						[1] = {npcID = 29040, mapID = 1, x = 58, y = 124},
					},
				},
				[LoopTaskTargetType.partrolTalk] =
				{
					partrolTalkTrace =
					{
						[1] = {dialogID = 30007},
						[2] = {dialogID = 30007},
					},
				},
				
				-- ��������
				[LoopTaskTargetType.mysteryBus] =
				{
					mysteryTrace =
					{
						[1] = {dialogID = 30008, itemID = 1062212},
						[2] = {dialogID = 30008, itemID = 1062212},
					},
				},

				[LoopTaskTargetType.donate] =
				{
					donateTrace = 
					{
						[1] = {npcID = 29079, mapID = 10, x = 184, y = 234},
					},
				},
				--����
				[LoopTaskTargetType.deliverLetters] = 
				{
					deliverTrace =
					{
						[1] = {itemID = 1051013, npcID = 40009, mapID = 10, x = 184, y = 240} ,
					},
				},

				-- �Ͻ�װ��
				[LoopTaskTargetType.paidEquip] = 
				{
					randomEquip = 
					{
						npcInfo = {npcID = 30817, mapID = 10, x = 133, y = 186},
						equipInfo = 
						{
							[1] = {1, 2, 3, 4, 5, 6},
							[2] = {7, 8, 9, 10, 11},
						}
					},
				},
				-- ����Ի������Ĵ�����һ���ű�ս������
				[LoopTaskTargetType.talkScript] =
				{
					createRandomNpc = 
					{
						[1] = {npcID = 26009, scriptID = 4117},
					}
				},

				[LoopTaskTargetType.itemTalk] =
				{
					createPosition = 
					{
						[1] ={npcID = 20004, mapID = 1, x = 26, y = 84},
					},
				},
			},
		},
	},

	[50000] =
	{
		[1] =
		{
			-- һ��10��
			[1] =
			{
				[LoopTaskTargetType.puzzle] =
				{
					
				},
			},
		},
	},

	[60000] =
	{
		[1] =
		{
			-- һ��10��
			[1] =
			{
				[LoopTaskTargetType.oldTower] =
				{
					
				},
			},
		},
	},
-------ѹ������-------------------------
	[1] =
	{
		-- 1 - 151 ��
		[1] =
		{
			-- 1 - 1000 ��
			[1] =
			{
				-- �ڸ��ݻ��������䲻ͬ�Ĺ��� 
				[LoopTaskTargetType.brightMine] =
				{	
					-- ָ��NPC���̶����� ,���贴���������������Ҫ�����ͻ���
					brightMine =
					{
						[1] = {npcID = 2,scriptID = 100, mapID = 101, x = 100, y = 200},
					}
				},
			},
		},
	},
}