--[[TaskSystem.lua
描述：
	任务系统(任务系统)
--]]

require "game.TaskSystem.Task"
require "game.TaskSystem.LoopTask"
require "game.TaskSystem.NormalTask"
require "game.TaskSystem.TaskDoer"
require "game.TaskSystem.TaskHelper"
require "game.TaskSystem.TaskCallBack"
require "game.TaskSystem.TaskFactory"
require "game.TaskSystem.TaskTrigger.TaskTrigger"
require "game.TaskSystem.TaskTarget.TaskTarget"
require "game.TaskSystem.TargetFactory"
require "game.TaskSystem.TaskCondition"
require "game.TaskSystem.TaskToNpc"
require "game.TaskSystem.TaskRandFun"

TaskSystem = class(EventSetDoer, Singleton)

function TaskSystem:__init()
	self._doer = 
	{
		[TaskEvent_CS_RecetiveTask]				= TaskSystem.doRecetiveTask,
		[TaskEvent_CS_DeleteTask]				= TaskSystem.doDeleteTask,
		[TaskEvent_CS_NpcEnterSight]			= TaskSystem.doUpdateNpc,
		[TaskEvent_CS_QuitSystem]				= TaskSystem.onQuitSystem,		
		[TaskEvent_CS_Donate]					= TaskSystem.doDonate,
		[TaskEvent_CS_CommitEquip]				= TaskSystem.doCommitEquip,
		[TaskEvent_CS_CommitItem]				= TaskSystem.doCommitItem,
		[FightEvents_SS_FightEnd_afterClient]	= TaskSystem.onFightEnd,
		[TaskEvent_CS_RemoveTaskPet]			= TaskSystem.onRemoveTaskPet,
		[TaskEvent_BS_GuideJoinFaction]			= TaskSystem.onJoinFaction,
	}
end

function TaskSystem:onJoinFaction(event)
	local params = event:getParams()
	local flag = params[1]
	local pDBID = params[2]
	print("--pDBID--",pDBID)
	local player = g_entityMgr:getPlayerByDBID(pDBID)
	if not player then return end
	TaskCallBack.onjoinFaction(player,flag)
end

function TaskSystem:onRemoveTaskPet(event)
	local params = event:getParams()
	local taskID = params[1]
	local petID = params[2]
	local playerID = event.playerID
	if not playerID then
		return 
	end

	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return 
	end
	TaskCallBack.onPaidPet(player:getID(), taskID, petID)
end

--客户端主动发起接任务，比如点击ui
function TaskSystem:doRecetiveTask(event)
	local params = event:getParams()
	local taskID = params[1]
	local playerID = event.playerID
	if not playerID then
		return 
	end
	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return 
	end

	g_taskDoer:doRecetiveTask(player, taskID)
end

function TaskSystem:doDeleteTask(event)
	local params = event:getParams()
	local taskID = params[2]
	local playerID = event.playerID
	if not playerID then
		return 
	end

	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return 
	end

	if LoopTaskDB[taskID] then
		g_taskDoer:doDeleteTask(player, taskID, true)
	elseif NormalTaskDB[taskID] then
		if NormalTaskDB[taskID].taskType2 == TaskType2.Main then
			print("主线任务不能放弃！")
			return
		elseif NormalTaskDB[taskID].taskType2 == TaskType2.Sub then
			g_taskDoer:doDeleteTask(player, taskID, true)
		end
	end
end

--接受任务
function TaskSystem:doUpdateNpc(event)
	local params = event:getParams()
	local npcID = params[1]
	local playerID = event.playerID
	if not playerID then
		return 
	end

	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return 
	end

	local npc = g_entityMgr:getNpc(npcID)
	if not npc then
		return 
	end
	g_taskDoer:updateNpcHeader(player, npc)
end

function TaskSystem:doCommitEquip(event)
	local params = event:getParams()	
	local playerID = event.playerID
	if not playerID then
		return 
	end

	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return 
	end

	local taskID = params[1]
	local equipGuid = params[2]
	local equip = g_itemMgr:getItem(equipGuid)
	if not tEquipmentDB[equip:getItemID()] then
	--提示提交类型不对
		local event = Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_Task, 5)
		g_eventMgr:fireRemoteEvent(event, player)
		return
	end
	TaskCallBack.onCommitEquip(player:getID(),equipGuid,1)
end

--循环任务上交物品
function TaskSystem:doCommitItem(event)
	local params = event:getParams()
	local taskID = params[1]
	local itemInfo = params[2]					
	local playerID = event.playerID
	if not playerID then
		return 
	end

	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return 
	end
	--目前先写死
	--[[local itemCount = 1
	local item = g_itemMgr:getItem(itemGuid)
	local itemID = item:getItemID()
	]]
	if taskID == 10031 or taskID == 10030 then
		TaskCallBack.onCollectItem(player:getID(), itemInfo)
	else
		TaskCallBack.onCommitItem(player:getID(), itemInfo)
	end
end

--循环任务捐献
function TaskSystem:doDonate(event)
	local params = event:getParams()
	local moneyCount = params[1]
	local taskID = params[2]
	local playerID = event.playerID
	if not playerID then
		return 
	end

	local player = g_entityMgr:getPlayerByID(playerID)
	if not player then
		return 
	end
	local privateHandler = player:getHandler(HandlerDef_TaskPrData)
	local moneyRandom = privateHandler:getTaskDonateRandom()
	if moneyCount == moneyRandom then
		local hasMoney = player:getMoney()
		player:setMoney(hasMoney - moneyCount)
		--捐献成功给客户端的返回
		local event = Event.getEvent(TaskEvent_SC_DonateReturn)
		g_eventMgr:fireRemoteEvent(event, player)

		--重新自动接循环任务
		player:getHandler(HandlerDef_Task):finishTaskByID(taskID)
		g_taskDoer:doRecetiveTask(player, taskID)
	elseif moneyCount < moneyRandom then
		local event = Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_Task, 1)
		g_eventMgr:fireRemoteEvent(event, player)
		return
	else
		local event = Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_Task, 2)
		g_eventMgr:fireRemoteEvent(event, player)
		return
	end
end

-- 退出游戏，发送任务追踪所有ID
function TaskSystem:onQuitSystem(event)
	local params = event:getParams()
	local roleDBID = params[1]
	local tasktraceList = params[2]
	LuaDBAccess.updateTaskTrace(roleDBID,tasktraceList)
end

-- 刷新任务
function TaskSystem:onFightEnd(event)
	local params = event:getParams()
	local fightEndResults = params[1]
	local fightID = params[2]
	local result = false
	local roleIDs = {}
	for playerID, fightResult in pairs(fightEndResults) do
		if fightResult then
			result = true
			break
		end
	end
	for playerID, fightResult in pairs(fightEndResults) do
		local player = g_entityMgr:getPlayerByID(playerID)
		if player then
			table.insert(roleIDs, playerID)
		end
	end
	-- 判断战斗 ，如果队伍当中队员个数大于1 调用队员，最后调用队长
	if table.size(roleIDs) > 1 then
		-- 坑定组队
		local player = g_entityMgr:getPlayerByID(roleIDs[1])
		local teamHandler = player:getHandler(HandlerDef_Team)
		local teamID = teamHandler:getTeamID()
		local team = g_teamMgr:getTeam(teamID)
		for _, playerID in pairs(roleIDs) do
			-- 不是队长就先回调
			if team:getLeaderID() ~= playerID then
				local curPlayer = g_entityMgr:getPlayerByID(playerID)
				TaskCallBack.script(curPlayer, fightID, result)
			end
		end
		-- 最后通知队长
		local leaderID = team:getLeaderID()
		local leader = g_entityMgr:getPlayerByID(leaderID)
		TaskCallBack.script(leader, fightID, result)
	else
		local curPlayer = g_entityMgr:getPlayerByID(roleIDs[1])
		if curPlayer then
			TaskCallBack.script(curPlayer, fightID, result)
		end
	end
end

--------------------------------------------------------------
--接受任务
function TaskSystem:onRecetiveTask(player, taskData, fromDB)
	local event = Event.getEvent(TaskEvent_SC_RecetiveTask, player:getID(), taskData, fromDB)
	g_eventMgr:fireRemoteEvent(event, player)
end

--删除任务
function TaskSystem:onDeleteTask(player, taskID)
	local event = Event.getEvent(TaskEvent_SC_DeleteTask, player:getID(), taskID)
	g_eventMgr:fireRemoteEvent(event, player)
end

--删除任务
function TaskSystem:onTaskFaild(player, taskData)
	local event = Event.getEvent(TaskEvent_SC_TaskFaild, player:getID(), taskData)
	g_eventMgr:fireRemoteEvent(event, player)
end

--完成任务
function TaskSystem:onDoneTask(player, taskData)
	local event = Event.getEvent(TaskEvent_SC_DoneTask, player:getID(), taskData)
	g_eventMgr:fireRemoteEvent(event, player)
end

--结束任务
function TaskSystem:onFinishTask(player, taskID)
	local event = Event.getEvent(TaskEvent_SC_FinishTask, player:getID(), taskID)
	g_eventMgr:fireRemoteEvent(event, player)
end

--任务奖励
function TaskSystem:onTaskReward(player, taskID)
	local event = Event.getEvent(TaskEvent_SC_TaskReward, player:getID(), taskReward)
	g_eventMgr:fireRemoteEvent(event, player)
end

--npc状态
function TaskSystem:onUpdateNpcStatue(player, npcID, statue)
	local event = Event.getEvent(TaskEvent_SC_UpdateNpcStatue, player:getID(), npcID, statue)
	g_eventMgr:fireRemoteEvent(event, player)
end

--上线加载
function TaskSystem:onLoadPlayerTasksData(player, tasksData)
	for _,value in pairs(tasksData) do
		value.osTime = os.time()
	end
	local event = Event.getEvent(TaskEvent_SC_LoadTasksData, player:getID(), tasksData)
	g_eventMgr:fireRemoteEvent(event, player)
end

--添加私有npc
function TaskSystem:onAddPrivateNpc(player, npcData)
	local event = Event.getEvent(TaskEvent_SC_AddPrivateNpc, player:getID(), npcData)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:onCreateHotArea(player, param)
	local event = Event.getEvent(TaskEvent_SC_CreateHotArea, player:getID(), param)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:onRemoveHotArea(player, param)
	local event = Event.getEvent(TaskEvent_SC_RemoveHotArea, player:getID(), param)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:onSetDirect(player, config)
	local event = Event.getEvent(TaskEvent_SC_SetDirect, player:getID(), config)
	g_eventMgr:fireRemoteEvent(event, player)
end

--移除私有npc
function TaskSystem:onRemovePrivateNpc(player, npcs)
	local event = Event.getEvent(TaskEvent_SC_RemovePrivateNpc, player:getID(), npcs)
	g_eventMgr:fireRemoteEvent(event, player)
end

--添加主线任务雷
function TaskSystem:addTaskMine(player, mineIndex, posData, npcsData, dialogID)
	local event = Event.getEvent(TaskEvent_SC_AddTaskMine, mineIndex, posData, npcsData, dialogID)
	g_eventMgr:fireRemoteEvent(event, player)
end

--移除主线任务雷
function TaskSystem:removeTaskMine(player, taskID, mineIndex, posData, npcsData)
	local event = Event.getEvent(TaskEvent_SC_RemoveTaskMine, taskID, mineIndex, posData, npcsData)
	g_eventMgr:fireRemoteEvent(event, player)
end

-- 添加热区对话
function TaskSystem:addSpecialArea(player, taskID, posData, dialogID)
	local event = Event.getEvent(TaskEvent_SC_AddHotDialog, taskID, posData, dialogID)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:removeSpecialArea(player, taskID, mapID)
	local event = Event.getEvent(TaskEvent_SC_RemoveHotDialog, taskID, mapID)
	g_eventMgr:fireRemoteEvent(event, player)
end

--添加采集护卫
function TaskSystem:addCollectGuard(player, mpwID, npcsData, dialogID)
	local event = Event.getEvent(TaskEvent_SC_AddCollectGuard, mpwID, npcsData, dialogID)
	g_eventMgr:fireRemoteEvent(event, player)
end

--移除采集护卫
function TaskSystem:removeCollectGuard(player, mpwID)
	local event = Event.getEvent(TaskEvent_SC_RemoveCollectGuard, mpwID)
	g_eventMgr:fireRemoteEvent(event, player)
end

--添加私有传送
function TaskSystem:onAddPrivateTransfer(player, transfersData, taskID)
	local event = Event.getEvent(TaskEvent_SC_AddTransfersData, transfersData, taskID)
	g_eventMgr:fireRemoteEvent(event, player)
end

--移除私有传送
function TaskSystem:onRemovePrivateTransfer(player, taskID, idx)
	local event = Event.getEvent(TaskEvent_SC_RemoveTransfersData, taskID, idx)
	g_eventMgr:fireRemoteEvent(event, player)
end

--添加私有传送
function TaskSystem:onCreateCage(player, taskID, position)
	local event = Event.getEvent(TaskEvent_SC_CreateCage, taskID, position)
	g_eventMgr:fireRemoteEvent(event, player)
end

--添加私有传送
function TaskSystem:onRemoveCage(player, taskID)
	local event = Event.getEvent(TaskEvent_SC_RemoveCage, taskID)
	g_eventMgr:fireRemoteEvent(event, player)
end

--恢复踩雷状态
function TaskSystem:revertState(player)
	local event = Event.getEvent(TaskEvent_SC_RevertState, player:getID())
	g_eventMgr:fireRemoteEvent(event, player)
end

--添加跟随实体
function TaskSystem:addFollowEntity(player, npcs)
	local event = Event.getEvent(TaskEvent_SC_AddFollowEntity, npcs)
	g_eventMgr:fireRemoteEvent(event, player)
end

--删除跟随实体
function TaskSystem:removeFollowEntity(player, npcs)
	local event = Event.getEvent(TaskEvent_SC_RemoveFollowEntity, npcs)
	g_eventMgr:fireRemoteEvent(event, player)
end

--更新可接主线任务
function TaskSystem:updateNormalTaskList(player, nextTaskID)
	local event = Event.getEvent(TaskEvent_SC_UpdateNormalTaskList, nextTaskID)
	g_eventMgr:fireRemoteEvent(event, player)
end

-- 玩家首次上线设置可接循环任务列表
function TaskSystem:loadLoopTaskList(player, loopTaskList)
	local event = Event.getEvent(TaskEvent_SC_LoadLoopTaskList, loopTaskList)
	g_eventMgr:fireRemoteEvent(event, player)
end

--更新可接循环任务
function TaskSystem:updateLoopTaskList(player, taskID, flag)
	local event = Event.getEvent(TaskEvent_SC_UpdateLoopTaskList, taskID, flag)
	g_eventMgr:fireRemoteEvent(event, player)
end

--更新任务追踪
function TaskSystem:loadTaskTrace(player, taskTraceList)
	local event = Event.getEvent(TaskEvent_SC_LoadTaskTrace, taskTraceList)
	g_eventMgr:fireRemoteEvent(event, player)
end

--npc逃跑
function TaskSystem:npcEscape(player, param)
	local event = Event.getEvent(TaskEvent_SC_NpcEscape, param)
	g_eventMgr:fireRemoteEvent(event, player)
end

--
function TaskSystem:addMessageShow(player, taskMessage)
	local event = Event.getEvent(TaskEvent_SC_MessageShow, taskMessage)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:commitEquipFail(player)
	local event = Event.getEvent(TaskEvent_SC_CommitEquipFail)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:notifyClient(player, type, param)
	local event = Event.getEvent(TaskEvent_SC_NotifyClientData, type, param)
	g_eventMgr:fireRemoteEvent(event, player)
end

-- 强行停止自动遇敌
function TaskSystem:onForceStopAutoMeet(player)
	local event = Event.getEvent(TaskEvent_SC_ForceStopAutoMeet)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:addTaskItem(player, taskID, itemID)
	local event = Event.getEvent(TaskEvent_SC_AddTaskItem, taskID, itemID)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:removeTaskItem(player, taskID)
	local event = Event.getEvent(TaskEvent_SC_RemoveTaskItem, taskID)
	g_eventMgr:fireRemoteEvent(event, player)
end

-- 通知客户端启动定时器
function TaskSystem:onStartTimer(player, taskID, leftTime)
	local event = Event.getEvent(TaskEvent_SC_StartTimer, taskID, leftTime)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:addTaskPet(player, taskID, petID)
	local event = Event.getEvent(TaskEvent_SC_AddTaskPet, taskID, petID)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:removeTaskPet(player, taskID)
	local event = Event.getEvent(TaskEvent_SC_RemoveTaskPet, taskID)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:setTargetsState(player, taskID, targetsState)
	local event = Event.getEvent(TaskEvent_SC_SetTargetsState, taskID, targetsState)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem:loadLoopTaskToClient(player, loopTaskData)
	local event = Event.getEvent(TaskEvent_SC_LoadLoopTaskInfoToClient, loopTaskData)
	g_eventMgr:fireRemoteEvent(event, player)
end

function TaskSystem.getInstance()
	return TaskSystem()
end

g_taskSystem = TaskSystem.getInstance()

g_eventMgr:addEventListener(TaskSystem.getInstance())

createTaskProvider()