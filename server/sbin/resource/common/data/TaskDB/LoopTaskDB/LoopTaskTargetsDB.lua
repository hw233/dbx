--[[LoopTaskTargetsDB.lua
	ѭ������Ŀ��(����ϵͳ)
]]--

--ѭ������Ŀ��
LoopTaskTargetsDB = 
{
	-- ��ȡʦ������
	[10001] =                        -------------ǬԪ��
	{
		[LoopTaskTargetType.script] = 
		{		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					{type = "createRandomNpc", param = {index = 1}},
					{type="openDialog", param={dialogID = 4301},},
				},
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
		-- ��NPC �Ի�
		[LoopTaskTargetType.talk] = 
		{		
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4350},},
					
				},
			},

		},
		-- �Ͻ�����,����Ҫ��NPC ����Ʒ��z�Ͻ���Ʒ
		[LoopTaskTargetType.buyItem] = 
		{
			-- �ڱ����õ������ȼ�����
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Active] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createBuyItemData", param = {}},
                                        {type="openDialog", param={dialogID =4600},},

				},
				-- ���Ͻ���Ʒ��ʱ��ı�����״̬ΪDone
				-- �������ʱ�򷢸�ָ�����ͻ���
				[TaskStatus.Done] =
				{
					{type = "createPaidItemTrace", param = {}},
				},
			},
		},

              [LoopTaskTargetType.catchPet] = 
              {		
	       -- ������������Ŀ��
	                triggers = 
	                {
		             -- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
		                 [TaskStatus.Active] = 
		                 {
			                    -- ��һ��ָ�����ͻ���, �����ָ��
			                    {type = "createBuyPetTrace", param = {}},
		                 },
		                 [TaskStatus.Done] =
		                 {
			     -- �Ͻɳ���ָ��
			                    {type = "createPaidPetTrace", param = {}}, -- �����Ͻɳ���ָ��
		                 },	
	                },
              },

		-- ��ս����, ����Ҫ����NPC�� ����ָ�����꣬����ս��
		[LoopTaskTargetType.partrolScript] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "addSpecialArea", param = {}},
					{type="openDialog", param={dialogID = 4230},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeSpecialArea", param = {}},
					{type = "finishLoopTask", param = {}},
				},
			},
		},

		-- ��������
		[LoopTaskTargetType.escort] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ��ʵ�Ի�����һ���ı�״̬������
					{type = "escortTalkTrace", param = {}},
					{type = "openDialog", param={dialogID = 4751},}, --������ʱ��һ���Ի�

				},
				[TaskStatus.Done] =
				{
					{type = "removePartrolTalkTace", param = {}},
					-- ָ����β��NPC�����
					{type = "escortNpcTrace", param = {}},
                    {type="openDialog", param={dialogID = 4823},},
				},
				[TaskStatus.Finished] = 
				{
					{type = "removeFollowNpc", param = {}},
				},
			},
		},
		
		-- Ѳ�߶Ի�
		[LoopTaskTargetType.partrolTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "partrolTalkTrace", param = {}},
					{type="openDialog", param={dialogID = 4751},},
				},
				[TaskStatus.Finished] =
				{
					{type = "removePartrolTalkTace", param = {}},
				}
			},
		},


		-- ��������
		[LoopTaskTargetType.mysteryBus] = 
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "mysteryTrace", param = {}},
					{type="openDialog", param={dialogID = 4773},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeMysteryTrace", param = {}},
				},
			},
		},

		-- ����
		[LoopTaskTargetType.donate] = 
		{
			triggers = 
			{
				[TaskStatus.Done] =
				{
					-- ����ָ��
					{type = "donateTrace", param = {}},
					{type="openDialog", param={dialogID = 4701},},
				},
				
			},
		},
		--����
		[LoopTaskTargetType.deliverLetters] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---���Ŀ��״̬
				{
					{type = "deliverTrace" , param	= {}},
					{type="openDialog", param={dialogID = 4450},},
				},
				[TaskStatus.Done] = 
				{
					{type = "finishLoopTask", param = {}},
				},
		
			},
		},
		--��ս����
		[LoopTaskTargetType.brightMine] = 
		{
			--��ս����NPCID�ǹ̶������		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "brightMine", param = {}},
					 {type = "openDialog", param={dialogID = 4270},}, --������ʱ��һ���Ի�
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
		-- ���������������Ͳ��ᱻ�������������LooptaskDB����Ȩ��
		[LoopTaskTargetType.talkScript] =
		{
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					{type = "createRandomNpc", param = {index = 1}},
					{type = "openDialog", param={dialogID = 4769},}, --������ʱ��һ���Ի�
				},
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		[LoopTaskTargetType.itemTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
                                        {type="openDialog", param={dialogID = 4780},},
				},
			},
		},
	},
	[10002] =                           -------------��ϼɽ
	{
		[LoopTaskTargetType.script] = 
		{
			-- ����ս��NPCID������ģ�mpaID������ģ�x,y ������ġ�		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "createRandomNpc", param = {index = 1}},
					{type="openDialog", param={dialogID = 4302},},
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		-- ��NPC �Ի�
		[LoopTaskTargetType.talk] = 
		{		
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4358},},
					
				},
			},

		},

		-- �Ͻ�����,����Ҫ��NPC ����Ʒ��z�Ͻ���Ʒ
		[LoopTaskTargetType.buyItem] = 
		{
			-- �ڱ����õ������ȼ�����
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Active] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createBuyItemData", param = {}},
                                     {type="openDialog", param={dialogID =4602},},
				},
				-- ���Ͻ���Ʒ��ʱ��ı�����״̬ΪDone
				-- �������ʱ�򷢸�ָ�����ͻ���
				[TaskStatus.Done] =
				{
					{type = "createPaidItemTrace", param = {}},
				},
			},
		},

              [LoopTaskTargetType.catchPet] = 
              {		
	       -- ������������Ŀ��
	                triggers = 
	                {
		             -- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
		                 [TaskStatus.Active] = 
		                 {
			                    -- ��һ��ָ�����ͻ���, �����ָ��
			                    {type = "createBuyPetTrace", param = {}},
		                 },
		                 [TaskStatus.Done] =
		                 {
			     -- �Ͻɳ���ָ��
			                    {type = "createPaidPetTrace", param = {}}, -- �����Ͻɳ���ָ��
		                 },	
	                },
              },

		-- ��ս����, ����Ҫ����NPC�� ����ָ�����꣬����ս��
		[LoopTaskTargetType.partrolScript] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "addSpecialArea", param = {}},
					{type="openDialog", param={dialogID = 4235},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeSpecialArea", param = {}},
					{type = "finishLoopTask", param = {}},
				},
			},
		},

		-- ��������
		[LoopTaskTargetType.escort] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ��ʵ�Ի�����һ���ı�״̬������
					{type = "escortTalkTrace", param = {}},
					{type = "openDialog", param={dialogID = 4754},}, --������ʱ��һ���Ի�

				},
				[TaskStatus.Done] =
				{
					{type = "removePartrolTalkTace", param = {}},
					-- ָ����β��NPC�����
					{type = "escortNpcTrace", param = {}},
                    {type="openDialog", param={dialogID = 4823},},
				},
				[TaskStatus.Finished] = 
				{
					{type = "removeFollowNpc", param = {}},
				},
			},
		},
		
		-- Ѳ�߶Ի�
		[LoopTaskTargetType.partrolTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "partrolTalkTrace", param = {}},
					{type="openDialog", param={dialogID = 4754},},
				},
				[TaskStatus.Finished] =
				{
					{type = "removePartrolTalkTace", param = {}},
				}
			},
		},

		-- ��������
		[LoopTaskTargetType.mysteryBus] = 
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "mysteryTrace", param = {}},
					{type="openDialog", param={dialogID = 4774},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeMysteryTrace", param = {}},
				},
			},
		},
		-- ����
		[LoopTaskTargetType.donate] = 
		{
			triggers = 
			{
				[TaskStatus.Done] =
				{
					-- ����ָ��
					{type = "donateTrace", param = {}},
					{type="openDialog", param={dialogID = 4703},},
				},
				
			},
		},
		--����
		[LoopTaskTargetType.deliverLetters] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---���Ŀ��״̬
				{
					{type = "deliverTrace" , param	= {}},
					{type="openDialog", param={dialogID = 4459},},
				},
				[TaskStatus.Done] = 
				{
					{type = "finishLoopTask", param = {}},
				},
		
			},
		},
		--��ս����
		[LoopTaskTargetType.brightMine] = 
		{
			--��ս����NPCID�ǹ̶������		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "brightMine", param = {}},
					 {type = "openDialog", param={dialogID = 4273},}, --������ʱ��һ���Ի�
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
		-- ���������������Ͳ��ᱻ�������������LooptaskDB����Ȩ��
		[LoopTaskTargetType.talkScript] =
		{
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					{type = "createRandomNpc", param = {index = 1}},
					{type = "openDialog", param={dialogID = 4769},}, --������ʱ��һ���Ի�
				},
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		[LoopTaskTargetType.itemTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4780},},
				},
			},
		},
	},
	[10003] =                          -------------������
	{
		[LoopTaskTargetType.script] = 
		{
			-- ����ս��NPCID������ģ�mpaID������ģ�x,y ������ġ�		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "createRandomNpc", param = {index = 1}},
					{type="openDialog", param={dialogID = 4303},},
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		-- ��NPC �Ի�
		[LoopTaskTargetType.talk] = 
		{		
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4366},},	
				},
			},

		},

		-- �Ͻ�����,����Ҫ��NPC ����Ʒ��z�Ͻ���Ʒ
		[LoopTaskTargetType.buyItem] = 
		{
			-- �ڱ����õ������ȼ�����
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Active] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createBuyItemData", param = {}},
                                        {type="openDialog", param={dialogID =4604},},
				},
				-- ���Ͻ���Ʒ��ʱ��ı�����״̬ΪDone
				-- �������ʱ�򷢸�ָ�����ͻ���
				[TaskStatus.Done] =
				{
					{type = "createPaidItemTrace", param = {}},
				},
			},
		},

              [LoopTaskTargetType.catchPet] = 
              {		
	       -- ������������Ŀ��
	                triggers = 
	                {
		             -- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
		                 [TaskStatus.Active] = 
		                 {
			                    -- ��һ��ָ�����ͻ���, �����ָ��
			                    {type = "createBuyPetTrace", param = {}},
		                 },
		                 [TaskStatus.Done] =
		                 {
			     -- �Ͻɳ���ָ��
			                    {type = "createPaidPetTrace", param = {}}, -- �����Ͻɳ���ָ��
		                 },	
	                },
              },

		-- ��ս����, ����Ҫ����NPC�� ����ָ�����꣬����ս��
		[LoopTaskTargetType.partrolScript] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "addSpecialArea", param = {}},
					{type="openDialog", param={dialogID = 4240},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeSpecialArea", param = {}},
					{type = "finishLoopTask", param = {}},
				},
			},
		},

		-- ��������
		[LoopTaskTargetType.escort] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ��ʵ�Ի�����һ���ı�״̬������
					{type = "escortTalkTrace", param = {}},
					{type = "openDialog", param={dialogID = 4757},}, --������ʱ��һ���Ի�

				},
				[TaskStatus.Done] =
				{
					{type = "removePartrolTalkTace", param = {}},
					-- ָ����β��NPC�����
					{type = "escortNpcTrace", param = {}},
                    {type="openDialog", param={dialogID = 4823},},
				},
				[TaskStatus.Finished] = 
				{
					{type = "removeFollowNpc", param = {}},
				},
			},
		},
		
		-- Ѳ�߶Ի�
		[LoopTaskTargetType.partrolTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "partrolTalkTrace", param = {}},
					{type="openDialog", param={dialogID = 4757},},
				},
				[TaskStatus.Finished] =
				{
					{type = "removePartrolTalkTace", param = {}},
				}
			},
		},

		-- ��������
		[LoopTaskTargetType.mysteryBus] = 
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "mysteryTrace", param = {}},
					{type="openDialog", param={dialogID = 4775},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeMysteryTrace", param = {}},
				},
			},
		},
		-- ����
		[LoopTaskTargetType.donate] = 
		{
			triggers = 
			{
				[TaskStatus.Done] =
				{
					-- ����ָ��
					{type = "donateTrace", param = {}},
					{type="openDialog", param={dialogID = 4705},},
				},
				
			},
		},
		--����
		[LoopTaskTargetType.deliverLetters] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---���Ŀ��״̬
				{
					{type = "deliverTrace" , param	= {}},
					{type="openDialog", param={dialogID = 4468},},
				},
				[TaskStatus.Done] = 
				{
					{type = "finishLoopTask", param = {}},
				},
		
			},
		},
		--��ս����
		[LoopTaskTargetType.brightMine] = 
		{
			--��ս����NPCID�ǹ̶������		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "brightMine", param = {}},
					 {type = "openDialog", param={dialogID = 4276},}, --������ʱ��һ���Ի�
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
		-- ���������������Ͳ��ᱻ�������������LooptaskDB����Ȩ��
		[LoopTaskTargetType.talkScript] =
		{
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					{type = "createRandomNpc", param = {index = 1}},
					{type = "openDialog", param={dialogID = 4769},}, --������ʱ��һ���Ի�
				},
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		[LoopTaskTargetType.itemTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4780},},
				},
			},
		},
	},
	[10004] =                          -------------������
	{
		[LoopTaskTargetType.script] = 
		{
			-- ����ս��NPCID������ģ�mpaID������ģ�x,y ������ġ�		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "createRandomNpc", param = {index = 1}},
					{type="openDialog", param={dialogID = 4304},},
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		-- ��NPC �Ի�
		[LoopTaskTargetType.talk] = 
		{		
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4374},},
				},
			},

		},

		-- �Ͻ�����,����Ҫ��NPC ����Ʒ��z�Ͻ���Ʒ
		[LoopTaskTargetType.buyItem] = 
		{
			-- �ڱ����õ������ȼ�����
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Active] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createBuyItemData", param = {}},
                    {type="openDialog", param={dialogID =4606},},
				},
				-- ���Ͻ���Ʒ��ʱ��ı�����״̬ΪDone
				-- �������ʱ�򷢸�ָ�����ͻ���
				[TaskStatus.Done] =
				{
					{type = "createPaidItemTrace", param = {}},
				},
			},
		},

              [LoopTaskTargetType.catchPet] = 
              {		
	       -- ������������Ŀ��
	                triggers = 
	                {
		             -- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
		                 [TaskStatus.Active] = 
		                 {
			                    -- ��һ��ָ�����ͻ���, �����ָ��
			                    {type = "createBuyPetTrace", param = {}},
		                 },
		                 [TaskStatus.Done] =
		                 {
			     -- �Ͻɳ���ָ��
			                    {type = "createPaidPetTrace", param = {}}, -- �����Ͻɳ���ָ��
		                 },	
	                },
              },

		-- ��ս����, ����Ҫ����NPC�� ����ָ�����꣬����ս��
		[LoopTaskTargetType.partrolScript] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "addSpecialArea", param = {}},
					{type="openDialog", param={dialogID = 4245},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeSpecialArea", param = {}},
					{type = "finishLoopTask", param = {}},
				},
			},
		},

		-- ��������
		[LoopTaskTargetType.escort] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ��ʵ�Ի�����һ���ı�״̬������
					{type = "escortTalkTrace", param = {}},
					{type = "openDialog", param={dialogID = 4760},}, --������ʱ��һ���Ի�

				},
				[TaskStatus.Done] =
				{
					{type = "removePartrolTalkTace", param = {}},
					-- ָ����β��NPC�����
					{type = "escortNpcTrace", param = {}},
                    {type="openDialog", param={dialogID = 4823},},
				},
				[TaskStatus.Finished] = 
				{
					{type = "removeFollowNpc", param = {}},
				},
			},
		},
		
		-- Ѳ�߶Ի�
		[LoopTaskTargetType.partrolTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "partrolTalkTrace", param = {}},
					{type="openDialog", param={dialogID = 4760},},
				},
				[TaskStatus.Finished] =
				{
					{type = "removePartrolTalkTace", param = {}},
				}
			},
		},

		-- ��������
		[LoopTaskTargetType.mysteryBus] = 
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "mysteryTrace", param = {}},
					{type="openDialog", param={dialogID = 4776},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeMysteryTrace", param = {}},
				},
			},
		},
		-- ����
		[LoopTaskTargetType.donate] = 
		{
			triggers = 
			{
				[TaskStatus.Done] =
				{
					-- ����ָ��
					{type = "donateTrace", param = {}},
					{type="openDialog", param={dialogID = 4707},},
				},
				
			},
		},
		--����
		[LoopTaskTargetType.deliverLetters] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---���Ŀ��״̬
				{
					{type = "deliverTrace" , param	= {}},
					{type="openDialog", param={dialogID = 4477},},
				},
				[TaskStatus.Done] = 
				{
					{type = "finishLoopTask", param = {}},
				},
		
			},
		},
		--��ս����
		[LoopTaskTargetType.brightMine] = 
		{
			--��ս����NPCID�ǹ̶������		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "brightMine", param = {}},
					 {type = "openDialog", param={dialogID = 4279},}, --������ʱ��һ���Ի�
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
		-- ���������������Ͳ��ᱻ�������������LooptaskDB����Ȩ��
		[LoopTaskTargetType.talkScript] =
		{
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					{type = "createRandomNpc", param = {index = 1}},
					{type = "openDialog", param={dialogID = 4769},}, --������ʱ��һ���Ի�
				},
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		[LoopTaskTargetType.itemTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
	                                {type="openDialog", param={dialogID = 4780},},				
				},
			},
		},
	},
	[10005] =                          -------------��Դ��
	{
		[LoopTaskTargetType.script] = 
		{
			-- ����ս��NPCID������ģ�mpaID������ģ�x,y ������ġ�		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "createRandomNpc", param = {index = 1}},
					{type="openDialog", param={dialogID = 4305},},
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		-- ��NPC �Ի�
		[LoopTaskTargetType.talk] = 
		{		
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4382},},	
				},
			},

		},

		-- �Ͻ�����,����Ҫ��NPC ����Ʒ��z�Ͻ���Ʒ
		[LoopTaskTargetType.buyItem] = 
		{
			-- �ڱ����õ������ȼ�����
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Active] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createBuyItemData", param = {}},
                                        {type="openDialog", param={dialogID =4608},},
				},
				-- ���Ͻ���Ʒ��ʱ��ı�����״̬ΪDone
				-- �������ʱ�򷢸�ָ�����ͻ���
				[TaskStatus.Done] =
				{
					{type = "createPaidItemTrace", param = {}},
				},
			},
		},

              [LoopTaskTargetType.catchPet] = 
              {		
	       -- ������������Ŀ��
	                triggers = 
	                {
		             -- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
		                 [TaskStatus.Active] = 
		                 {
			                    -- ��һ��ָ�����ͻ���, �����ָ��
			                    {type = "createBuyPetTrace", param = {}},
		                 },
		                 [TaskStatus.Done] =
		                 {
			     -- �Ͻɳ���ָ��
			                    {type = "createPaidPetTrace", param = {}}, -- �����Ͻɳ���ָ��
		                 },	
	                },
              },

		-- ��ս����, ����Ҫ����NPC�� ����ָ�����꣬����ս��
		[LoopTaskTargetType.partrolScript] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "addSpecialArea", param = {}},
					{type="openDialog", param={dialogID = 4250},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeSpecialArea", param = {}},
					{type = "finishLoopTask", param = {}},
				},
			},
		},

		-- ��������
		[LoopTaskTargetType.escort] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ��ʵ�Ի�����һ���ı�״̬������
					{type = "escortTalkTrace", param = {}},
					{type = "openDialog", param={dialogID = 4763},}, --������ʱ��һ���Ի�

				},
				[TaskStatus.Done] =
				{
					{type = "removePartrolTalkTace", param = {}},
					-- ָ����β��NPC�����
					{type = "escortNpcTrace", param = {}},
                    {type="openDialog", param={dialogID = 4823},},
				},
				[TaskStatus.Finished] = 
				{
					{type = "removeFollowNpc", param = {}},
				},
			},
		},
		
		-- Ѳ�߶Ի�
		[LoopTaskTargetType.partrolTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "partrolTalkTrace", param = {}},
					{type="openDialog", param={dialogID = 4763},},
				},
				[TaskStatus.Finished] =
				{
					{type = "removePartrolTalkTace", param = {}},
				}
			},
		},

		-- ��������
		[LoopTaskTargetType.mysteryBus] = 
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "mysteryTrace", param = {}},
					{type="openDialog", param={dialogID = 4777},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeMysteryTrace", param = {}},
				},
			},
		},
		-- ����
		[LoopTaskTargetType.donate] = 
		{
			triggers = 
			{
				[TaskStatus.Done] =
				{
					-- ����ָ��
					{type = "donateTrace", param = {}},
					{type="openDialog", param={dialogID = 4709},},
				},
				
			},
		},
		--����
		[LoopTaskTargetType.deliverLetters] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---���Ŀ��״̬
				{
					{type = "deliverTrace" , param	= {}},
					{type="openDialog", param={dialogID = 4486},},
				},
				[TaskStatus.Done] = 
				{
					{type = "finishLoopTask", param = {}},
				},
		
			},
		},
		--��ս����
		[LoopTaskTargetType.brightMine] = 
		{
			--��ս����NPCID�ǹ̶������		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "brightMine", param = {}},
					 {type = "openDialog", param={dialogID = 4282},}, --������ʱ��һ���Ի�
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
		-- ���������������Ͳ��ᱻ�������������LooptaskDB����Ȩ��
		[LoopTaskTargetType.talkScript] =
		{
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					{type = "createRandomNpc", param = {index = 1}},
					{type = "openDialog", param={dialogID = 4769},}, --������ʱ��һ���Ի�
				},
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		[LoopTaskTargetType.itemTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4780},},
				},
			},
		},
	},
	[10006] =                          -------------������
	{
		[LoopTaskTargetType.script] = 
		{
			-- ����ս��NPCID������ģ�mpaID������ģ�x,y ������ġ�		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "createRandomNpc", param = {index = 1}},
					{type="openDialog", param={dialogID = 4306},},
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		-- ��NPC �Ի�
		[LoopTaskTargetType.talk] = 
		{		
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4390},},
				},
			},

		},

		-- �Ͻ�����,����Ҫ��NPC ����Ʒ��z�Ͻ���Ʒ
		[LoopTaskTargetType.buyItem] = 
		{
			-- �ڱ����õ������ȼ�����
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Active] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createBuyItemData", param = {}},
                                        {type="openDialog", param={dialogID =4610},},
				},
				-- ���Ͻ���Ʒ��ʱ��ı�����״̬ΪDone
				-- �������ʱ�򷢸�ָ�����ͻ���
				[TaskStatus.Done] =
				{
					{type = "createPaidItemTrace", param = {}},
				},
			},
		},

              [LoopTaskTargetType.catchPet] = 
              {		
	       -- ������������Ŀ��
	                triggers = 
	                {
		             -- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
		                 [TaskStatus.Active] = 
		                 {
			                    -- ��һ��ָ�����ͻ���, �����ָ��
			                    {type = "createBuyPetTrace", param = {}},
		                 },
		                 [TaskStatus.Done] =
		                 {
			     -- �Ͻɳ���ָ��
			                    {type = "createPaidPetTrace", param = {}}, -- �����Ͻɳ���ָ��
		                 },	
	                },
              },

		-- ��ս����, ����Ҫ����NPC�� ����ָ�����꣬����ս��
		[LoopTaskTargetType.partrolScript] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "addSpecialArea", param = {}},
					{type="openDialog", param={dialogID =4255},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeSpecialArea", param = {}},
					{type = "finishLoopTask", param = {}},
				},
			},
		},

		-- ��������
		[LoopTaskTargetType.escort] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ��ʵ�Ի�����һ���ı�״̬������
					{type = "escortTalkTrace", param = {}},
					{type = "openDialog", param={dialogID = 4766},}, --������ʱ��һ���Ի�

				},
				[TaskStatus.Done] =
				{
					{type = "removePartrolTalkTace", param = {}},
					-- ָ����β��NPC�����
					{type = "escortNpcTrace", param = {}},
                    {type="openDialog", param={dialogID = 4823},},
				},
				[TaskStatus.Finished] = 
				{
					{type = "removeFollowNpc", param = {}},
				},
			},
		},
		
		-- Ѳ�߶Ի�
		[LoopTaskTargetType.partrolTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "partrolTalkTrace", param = {}},
					{type="openDialog", param={dialogID = 4766},},
				},
				[TaskStatus.Finished] =
				{
					{type = "removePartrolTalkTace", param = {}},
				}
			},
		},

		-- ��������
		[LoopTaskTargetType.mysteryBus] = 
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "mysteryTrace", param = {}},
					{type="openDialog", param={dialogID = 4778},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeMysteryTrace", param = {}},
				},
			},
		},
		-- ����
		[LoopTaskTargetType.donate] = 
		{
			triggers = 
			{
				[TaskStatus.Done] =
				{
					-- ����ָ��
					{type = "donateTrace", param = {}},
					{type="openDialog", param={dialogID = 4711},},
				},
				
			},
		},
		--����
		[LoopTaskTargetType.deliverLetters] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---���Ŀ��״̬
				{
					{type = "deliverTrace" , param	= {}},
					{type="openDialog", param={dialogID =4495},},
				},
				[TaskStatus.Done] = 
				{
					{type = "finishLoopTask", param = {}},
				},
		
			},
		},
		--��ս����
		[LoopTaskTargetType.brightMine] = 
		{
			--��ս����NPCID�ǹ̶������		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "brightMine", param = {}},
					 {type = "openDialog", param={dialogID = 4285},}, --������ʱ��һ���Ի�
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
		-- ���������������Ͳ��ᱻ�������������LooptaskDB����Ȩ��
		[LoopTaskTargetType.talkScript] =
		{
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					{type = "createRandomNpc", param = {index = 1}},
					{type = "openDialog", param={dialogID = 4769},}, --������ʱ��һ���Ի�
				},
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		[LoopTaskTargetType.itemTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4780},},
				},
			},
		},
	},
     -- ��ȡ��������
	[10007] =
	{
		[LoopTaskTargetType.script] = 
		{
			--����ս��NPCID������ģ�mpaID������ģ�x,y ������ġ�		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "createRandomNpc", param = {index = 1}},
					{type = "openDialog", param={dialogID = 5163},}, --������ʱ��һ���Ի�
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
		-- ��NPC �Ի�
		[LoopTaskTargetType.talk] = 
		{		
		limitTime = 30*60,
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type = "openDialog", param={dialogID = 5164},}, --������ʱ��һ���Ի�
				},
			},
		},
		-- �Ͻ�����,����Ҫ��NPC ����Ʒ��z�Ͻ���Ʒ
		[LoopTaskTargetType.buyItem] = 
		{
			-- �ڱ����õ������ȼ�����
			limitTime = 30*60,
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Active] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createBuyItemData", param = {}},
				    {type = "openDialog", param={dialogID = 5166},}, --������ʱ��һ���Ի�
				},
				-- ���Ͻ���Ʒ��ʱ��ı�����״̬ΪDone
				-- �������ʱ�򷢸�ָ�����ͻ���
				[TaskStatus.Done] =
				{
					{type = "createPaidItemTrace", param = {}},
					{type = "openDialog", param={dialogID = 5232},}, --������ʱ��һ���Ի�
				},
			},
		},
		--�Ͻ�����
              [LoopTaskTargetType.catchPet] = 
              {		
	       -- ������������Ŀ��
	                triggers = 
	                {
		             -- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
		                 [TaskStatus.Active] = 
		                 {
			                    -- ��һ��ָ�����ͻ���, �����ָ��
			                    {type = "createBuyPetTrace", param = {}},
		                 },
		                 [TaskStatus.Done] =
		                 {
			     -- �Ͻɳ���ָ��
			                    {type = "createPaidPetTrace", param = {}}, -- �����Ͻɳ���ָ��
		                 },	
	                },
              },

		-- ����ս��, ����Ҫ����NPC�� ����ָ�����꣬����ս��
		[LoopTaskTargetType.partrolScript] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "addSpecialArea", param = {}},
					 {type = "openDialog", param={dialogID = 5161},}, --������ʱ��һ���Ի�
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeSpecialArea", param = {}},
					{type = "finishLoopTask", param = {}},
				},
			},
		},
		--����
		[LoopTaskTargetType.deliverLetters] =
		{
		limitTime = 30*60,
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---���Ŀ��״̬
				{
					{type = "deliverTrace" , param	= {}},
				    {type = "openDialog", param={dialogID = 5165},}, --������ʱ��һ���Ի�
				},
				[TaskStatus.Done] = 
				{
					{type = "finishLoopTask", param = {}},
				},
			},
		},
		--��ս����
		[LoopTaskTargetType.brightMine] = 
		{
			--��ս����NPCID�ǹ̶������		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "brightMine", param = {}},
					 {type = "openDialog", param={dialogID = 5162},}, --������ʱ��һ���Ի�
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
		--ƴͼ����
		--[[[LoopTaskTargetType.puzzle] = 
		{
		limitTime = 5*60,
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},]]
	},
	[10008] =
	{
		[LoopTaskTargetType.script] = 
		{
			-- ����ս��NPCID������ģ�mpaID������ģ�x,y ������ġ�
			targets = 
			{	
			},
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "createRandomNpc", param = {index = 1}},
					{type="openDialog", param={dialogID = 4031},},
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
	},
	[10009] =
	{
		--�Ͻ�װ��
		[LoopTaskTargetType.paidEquip] = 
		{
			triggers = 
			{
				[TaskStatus.Active]		=      ---���Ŀ��״̬
				{
					{type = "randomEquip", param = {}},
				},
				[TaskStatus.Done] = 
				{
					--{type = "finishLoopTask", param = {}},
				},
			},
		},
	},

	[10020] =                        -------------ǬԪ��
	{
		[LoopTaskTargetType.script] = 
		{		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					{type = "createRandomNpc", param = {index = 1}},
					{type="openDialog", param={dialogID = 4301},},
				},
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
		-- ��NPC �Ի�
		[LoopTaskTargetType.talk] = 
		{		
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					{type="openDialog", param={dialogID = 4350},},
					
				},
			},

		},
		-- �Ͻ�����,����Ҫ��NPC ����Ʒ��z�Ͻ���Ʒ
		[LoopTaskTargetType.buyItem] = 
		{
			-- �ڱ����õ������ȼ�����
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Active] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createBuyItemData", param = {}},
					{type="openDialog", param={dialogID =4600},},

				},
				-- ���Ͻ���Ʒ��ʱ��ı�����״̬ΪDone
				-- �������ʱ�򷢸�ָ�����ͻ���
				[TaskStatus.Done] =
				{
					{type = "createPaidItemTrace", param = {}},
				},
			},
		},

		[LoopTaskTargetType.catchPet] = 
		{		
			-- ������������Ŀ��
			triggers = 
			{
				-- ���ǻ�ȡ��Ʒ��ָ�������ͻ���
				[TaskStatus.Active] = 
				{
					-- ��һ��ָ�����ͻ���
					{ type = "createCatchPetData", param = {}},
					{type="openDialog", param={dialogID =4550},},
				},
				[TaskStatus.Done] =
				{
					{type = "forceStopAutoMeet", param = {}},---ǿ��ֹͣ�Զ�����
					{type = "createPaidPetTrace", param = {}}, -- �����Ͻɳ���ָ��
					{type = "removeMine", param = {}}, -- �Ƴ�������
				},	
			},
		},
		-- ��ս����, ����Ҫ����NPC�� ����ָ�����꣬����ս��
		[LoopTaskTargetType.partrolScript] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "addSpecialArea", param = {}},
					{type="openDialog", param={dialogID = 4230},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeSpecialArea", param = {}},
					{type = "finishLoopTask", param = {}},
				},
			},
		},

		-- ��������
		[LoopTaskTargetType.escort] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ��ʵ�Ի�����һ���ı�״̬������
					{type = "escortTalkTrace", param = {}},
					{type = "openDialog", param={dialogID = 4751},}, --������ʱ��һ���Ի�

				},
				[TaskStatus.Done] =
				{
					{type = "removePartrolTalkTace", param = {}},
					-- ָ����β��NPC�����
					{type = "escortNpcTrace", param = {}},
					{type="openDialog", param={dialogID = 4823},},
				},
				[TaskStatus.Finished] = 
				{
					{type = "removeFollowNpc", param = {}},
				},
			},
		},
		
		-- Ѳ�߶Ի�
		[LoopTaskTargetType.partrolTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "partrolTalkTrace", param = {}},
					{type="openDialog", param={dialogID = 4751},},
				},
				[TaskStatus.Finished] =
				{
					{type = "removePartrolTalkTace", param = {}},
				}
			},
		},

		-- ��������
		[LoopTaskTargetType.mysteryBus] = 
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---������״̬
				{
					-- ����һ���������ű�ս��ָ�����ڶ�̬�������Ŀ��
					{type = "mysteryTrace", param = {}},
					{type="openDialog", param={dialogID = 4751},},
				},
				[TaskStatus.Done]		=      ---���Ŀ��״̬
				{
					{type = "removeMysteryTrace", param = {}},
				},
			},
		},
		-- ����
		[LoopTaskTargetType.donate] = 
		{
			triggers = 
			{
				[TaskStatus.Done] =
				{
					-- ����ָ��
					{type = "donateTrace", param = {}},
					{type= "openDialog", param={dialogID = 4701},},
				},
				
			},
		},
		--����
		[LoopTaskTargetType.deliverLetters] =
		{
			triggers = --���񴥷���
			{
				[TaskStatus.Active]		=      ---���Ŀ��״̬
				{
					{type = "deliverTrace" , param	= {}},
					{type="openDialog", param={dialogID = 4450},},
				},
				[TaskStatus.Done] = 
				{
					{type = "finishLoopTask", param = {}},
				},
		
			},
		},

		--�Ͻ�װ��
		[LoopTaskTargetType.paidEquip] = 
		{
			triggers = 
			{
				[TaskStatus.Active]		=      ---���Ŀ��״̬
				{
					{type = "randomEquip", param = {}},
				},
				[TaskStatus.Done] = 
				{
					{type = "finishLoopTask", param = {}},
				},
			},
		},

		-- �Ի�ֱ�ӽ���ս��
		[LoopTaskTargetType.talkScript] =
		{
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					{type = "createRandomNpc", param = {index = 1}},
				},
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},

		[LoopTaskTargetType.itemTalk] =
		{
			triggers = 
			{
				[TaskStatus.Done] = 
				{
					-- ��һ��ָ�����ͻ���
					{type = "createPosition", param = {}},
					
				},
			},
		},
	},
-----------ѹ������----------------------
	[1] =
	{
		--��ս����
		[LoopTaskTargetType.brightMine] = 
		{
			--��ս����NPCID�ǹ̶������		
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "brightMine", param = {}},
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
	},
	-- ��������
	[10010] =
	{
		--����˽��NPC��
		[LoopTaskTargetType.script] = 
		{
			-- ����ս��NPCID������ģ������Ǵӹ̶����������
			targets = 
			{	
			},
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					-- ���NPC  һ��ָ��NPC����ָ�����ꡣһ�ֲ�ָ��NPC����ָ������
					{type = "createRandomNpc", param = {index = 1}},
					--{type="openDialog", param={dialogID = 4031},},
				},
				-- �������ʱ��
				[TaskStatus.Done] =
				{
					{type = "removeRandomNpc", param = {index = 1}},
					{type = "finishLoopTask", param = {}},-- �������ɵ�ǰ����Ŀ�꣬���¸�����Ŀ��
				},
			},
		},
	},
	-- 拼图任务
	[50000] =
	{
		--拼图，
		[LoopTaskTargetType.puzzle] = 
		{
			limitTime = 5*60,
			targets = 
			{	
			},
			triggers = 
			{
				[TaskStatus.Active] = 
				{
					--随机拼图
					{type = "createRandomPuzzle", param = {}},
					
				},
				-- 任务完成时候
				[TaskStatus.Done] =
				{

				},
			},
		},
	},
}