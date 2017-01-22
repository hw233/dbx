--[[TaskHandler.lua
描述：
	任务handler(任务系统)
--]]

TaskHandler = class()

function TaskHandler:__init(entity)
	self._entity = entity
	self.currentTask = {}			--当前任务
	self.nextTaskID = 0				--主线下一个任务
	self.hisTasks = {}				--历史任务
	self.taskTraceList = nil		--任务追踪列表
	self.canRecetiveLoopTask = {}	--可接循环任务列表
	self.count = 0					--任务数量
	self.loopTaskInfo = {}			--循环任务信息
	self.canRecetiveTaskID = {}
	self.dailyTaskList = {}

end

function TaskHandler:__release()
	self._entity = nil
	self:releaseCurTask()
	self.nextTaskID = nil
	self.hisTasks = nil
	self.taskTraceList = nil
	self.canRecetiveLoopTask = nil
	self.taskMineList = nil
	self.count = nil
	self.loopTaskInfo = nil
end

function TaskHandler:releaseCurTask()
	for taskID, task in pairs(self.currentTask) do
		if task then
			release(task)
			self.currentTask[taskID] = nil
		end
	end
	self.currentTask = nil
end

function TaskHandler:addTask(task)
	local taskID = task:getID()
	if self.currentTask[taskID] then
		--提示重复接任务
	else
		self.currentTask[taskID] = task
		self:updateNextTask(taskID)
		--self:updateCanRecetiveTask(taskID)
		self.count = self.count + 1
	end
end

function TaskHandler:loadHistoryTask(hisTasks)
	self.hisTasks = hisTasks
	self:loadNextTaskID(hisTasks)
end

function TaskHandler:setTaskTraceList(taskTraceList)
	self.taskTraceList = taskTraceList
end

function TaskHandler:getTaskTraceList()
	return self.taskTraceList
end

function TaskHandler:loadNextTaskID(hisTasks)
	if 0 == self.nextTaskID then
		assert (type(hisTasks) == "table")
		for _, taskID in pairs(hisTasks) do
			local nextTaskID = NormalTaskDB[taskID] and NormalTaskDB[taskID].nextTaskID
			if nextTaskID  then
				if type(nextTaskID) == "number" then
					local taskType = NormalTaskDB[taskID] and NormalTaskDB[taskID].taskType2
					if taskType == TaskType2.Main and self.nextTaskID < nextTaskID then
						self.nextTaskID = nextTaskID
					end
				elseif type(nextTaskID) == "table" then
					for _, nexttaskID in pairs(nextTaskID) do
						if TaskCondition.normalTask(self._entity, nexttaskID) then
							local taskType = NormalTaskDB[nexttaskID] and NormalTaskDB[nexttaskID].taskType2
							if taskType == TaskType2.Main and self.nextTaskID < nexttaskID then
								self.nextTaskID = nexttaskID
								break
							end
						end
					end
				end
			end
		end
	end
	if self.nextTaskID == 0 then
		self.nextTaskID = 2002
		g_taskSystem:updateNormalTaskList(self._entity, self.nextTaskID)
	end
end

function TaskHandler:updateNextTask(taskID)
	if NormalTaskDB[taskID] then
		if self.nextTaskID == taskID then
			self.nextTaskID = nil
		end
	end
end

-- 玩家上线加载完任务之后，调用一下这个接口， 设置这些可接任务
function TaskHandler:loadCanRecetiveLoopTask()
	for loopTaskID, taskData in pairs(LoopTaskDB) do
		if self._entity:getLevel() >= taskData.level[1] and self._entity:getLevel() <= taskData.level[2] then
			if taskData.school then
				-- 如果有门牌限定
				if taskData.school == self._entity:getSchool() then
					if not self.currentTask[loopTaskID] and self:getCountRing(loopTaskID) < taskData.loop then
						if not self.canRecetiveLoopTask[loopTaskID] then
							self.canRecetiveLoopTask[loopTaskID] = true
						end
					end
				end
			else
				-- 如果没有门牌限制, 还有帮会任务，上缴装备
				if taskData.taskType2 == TaskType2.Faction then
					local factionID = self._entity:getFactionDBID()
					if factionID > 0 then
						if not self.currentTask[loopTaskID] and self:getCountRing(loopTaskID) < taskData.loop then
							if not self.canRecetiveLoopTask[loopTaskID] then
								self.canRecetiveLoopTask[loopTaskID] = true
							end
						end
					end
				else
					if not self.currentTask[loopTaskID] and self:getCountRing(loopTaskID) < taskData.loop then
						if not self.canRecetiveLoopTask[loopTaskID] then
							self.canRecetiveLoopTask[loopTaskID] = true
						end
					end
				end
			end
		end
	end
end

-- 完成任务之后再添加，因为在完成任务之前，一些判断都满足，才能执行到
function TaskHandler:addLoopTaskList(taskID)
	if not self.currentTask[taskID] and self:getCountRing(taskID) < LoopTaskDB[taskID].loop then
		if not self.canRecetiveLoopTask[taskID] then
			self.canRecetiveLoopTask[taskID] = true
		end
	end
end

-- 接任务之后， 删除可接循环任务列表
function TaskHandler:removeLoopTaskList(taskID)
	if self.canRecetiveLoopTask[taskID] then
		self.canRecetiveLoopTask[taskID] = nil
	end
end

-- 完成任务之后跟新任务列表，先添加 在设置之后,再发送到客户端
function TaskHandler:updateTaskList(taskID, flag)
	if NormalTaskDB[taskID] then
		g_taskSystem:updateNormalTaskList(self._entity, self.nextTaskID)
	elseif LoopTaskDB[taskID] then
		-- 完成循环任务之后， 先添加
		self:addLoopTaskList(taskID)
		g_taskSystem:updateLoopTaskList(self._entity, taskID, flag)
	end
end

function TaskHandler:getRecetiveLoopTask()
	return self.canRecetiveLoopTask
end

function TaskHandler:getNextID()
	return self.nextTaskID
end

-- 完成时跟新，当前函数+ 1 
function TaskHandler:updateLoopCount(taskID)
	self:checkTaskData(taskID)
	self.loopTaskInfo[taskID].currentRing = self.loopTaskInfo[taskID].currentRing + 1
	self.loopTaskInfo[taskID].countRing = self.loopTaskInfo[taskID].countRing + 1
end

-- 删除当前循环任务
--[[
function TaskHandler:deleteLoopTask(taskID)
	if self.currentTask[taskID]:getType() == TaskType.loop then
		self.loopTaskInfo[taskID].currentRing = 0
		if LoopTaskDB[taskID].taskType2 ~= TaskType2.Heaven then
			self.loopTaskInfo[taskID].countRing = self.loopTaskInfo[taskID].countRing - 1
		end
	end
end
--]]

-- 服务器定时扫描定时器， 结束时间到，循环任务结束
function TaskHandler:updateMinTask(currentTime)
	for taskID, task in pairs(self.currentTask) do
		if LoopTaskDB[taskID] then
			if task:getEndTime() then
				if task:getEndTime() > 0 and task:getEndTime() < currentTime then
					-- 删除任务
					g_taskDoer:doDeleteTask(self._entity, taskID)
				end
			end
		else
			if task:getStatus() == TaskStatus.Active then 
				if task:getEndTime() then
					if task:getEndTime() > 0 and task:getEndTime() < currentTime then
						--print("updateMinTask",taskID)
						task:stateChange(TaskStatus.Failed)
					end
				end
			end
		end
	end
end

function TaskHandler:updateDayTask()
	for taskID, task in pairs(self.currentTask) do
		if task:getType() == TaskType.loop and task:getPeriod() == TaskPeriod.day then
			-- 此时任务不能删除
			self.loopTaskInfo[taskID].countRing = 0
		end
	end
end

function TaskHandler:updateWeekTask()
	for taskID, task in pairs(self.currentTask) do
		if task:getType() == TaskType.loop and task:getPeriod() == TaskPeriod.week then
			self.loopTaskInfo[tasID].countRing = 0
		end
	end
end

-- 刚开始没有环数为配置的次数
function TaskHandler:getCountRing(taskID)
	-- 天道任务总的环数不需要考虑
	self:checkTaskData(taskID)
	return self.loopTaskInfo[taskID].countRing
end

-- 天道任务获取当前的环数
function TaskHandler:checkTaskData(taskID)
	local taskData = self.loopTaskInfo[taskID]
	if not taskData then
		taskData = {}
		taskData.countRing = 0
		taskData.currentRing = 0
		self.loopTaskInfo[taskID] = taskData
	end
end

-- 设置当前的环数
function TaskHandler:setCurrentRing(taskID, ring)
	self:checkTaskData(taskID)
	self.loopTaskInfo[taskID].currentRing = ring
end

function TaskHandler:setCountRing(taskID, countRing)
	self:checkTaskData(taskID)
	self.loopTaskInfo[taskID].countRing = countRing
end

-- 刚开始没有环数为1设置呢 这个需要做下判断
function TaskHandler:getCurrentRing(taskID)
	local taskConfig = LoopTaskDB[taskID]
	local taskType2 = taskConfig.taskType2
	-- 天道任务总的环数不需要考虑
	if taskType2 == TaskType2.Heaven then
		-- 判断有没有组队
		local teamHandler = self._entity:getHandler(HandlerDef_Team)
		local teamID = teamHandler:getTeamID()
		-- 如果组队
		if teamID > 0  then
			local team = g_teamMgr:getTeam(teamID)
			if teamHandler:isLeader() then
				self:checkTaskData(taskID)
				return self.loopTaskInfo[taskID].currentRing
			else
				-- 如果不是队长 , 取队长当前的环数 
				local leaderPlayer = g_entityMgr:getPlayerByID(team:getLeaderID())
				local leaderTaskHandler = leaderPlayer:getHandler(HandlerDef_Task)
				local curRing = leaderTaskHandler:getCurrentRing(taskID)
				local countRing = leaderTaskHandler:getCountRing(taskID)
				self:setCurrentRing(taskID, curRing)
				self:setCountRing(taskID, countRing)
				return curRing
			end
		else
			self:checkTaskData(taskID)
			return self.loopTaskInfo[taskID].currentRing
		end
	else
		self:checkTaskData(taskID)
		return self.loopTaskInfo[taskID].currentRing
	end
end

function TaskHandler:getPrevCountRing(taskID)
	if not self.loopTaskInfo[taskID] then
		return LoopTaskDB[taskID].loop
	else
		if not self.loopTaskInfo[taskID].countRing then
			return LoopTaskDB[taskID].loop
		end
	end
	return self.loopTaskInfo[taskID].countRing or LoopTaskDB[taskID].loop
end

function TaskHandler:getLoopTaskInfo()
	return self.loopTaskInfo
end

function TaskHandler:getTask(taskID)
	return self.currentTask[taskID]
end

function TaskHandler:getTasks()
	return self.currentTask
end

function TaskHandler:getHisTasks()
	return self.hisTasks
end

function TaskHandler:updateHisTask(taskID)
	if self.currentTask[taskID]:getSubType() == TaskType2.Sub then
		return
	end
	local state = false
	for _, histaskID in pairs(self.hisTasks) do
		if histaskID == taskID then
			state = true
		end

	end
	if not state then
		table.insert(self.hisTasks, taskID)
	end
end

function TaskHandler:isHisTask(taskID)
	for _, histaskID in pairs(self.hisTasks) do
		if histaskID == taskID then
			return true
		end
	end
	return false
end

function TaskHandler:removeTaskByID(taskID)
	if self.currentTask[taskID] then
		release(self.currentTask[taskID])
		self.currentTask[taskID] = nil	
		self:deleteTaskToDB(taskID) 
		self.count = self.count - 1
		-- 此时也要跟新一下npc头顶状态
		self:updateNpcHeader(taskID)
	end
end

function TaskHandler:updateNpcHeader(taskID)
	local player = self._entity
	if NormalTaskDB[taskID] then
		local startNpcID = NormalTaskDB[taskID].startNpcID
		local startNpc = g_entityMgr:getNpc(startNpcID)
		if startNpc then
			g_taskDoer:updateNpcHeader(player, startNpc)
		end
		local endNpcID = NormalTaskDB[taskID].endNpcID
		local endNpc = g_entityMgr:getNpc(endNpcID)
		if endNpc then
			g_taskDoer:updateNpcHeader(player, endNpc)
		end
	elseif LoopTaskDB[taskID] then
		local startNpcID = LoopTaskDB[taskID].startNpcID
		local startNpc = g_entityMgr:getNpc(startNpcID)
		if startNpc then
			g_taskDoer:updateNpcHeader(player, startNpc)
		end
		local endNpc = g_entityMgr:getNpc(self._endNpcID)
		if endNpc then
			g_taskDoer:updateNpcHeader(player, endNpc)
		end
	end

end

function TaskHandler:doneTaskByID(taskID)
	if self.currentTask[taskID] then
		self.currentTask[taskID]:stateChange(TaskStatus.Done)
	end
end


-- 完成循环任务的接口,如果是天道任务。都完成之后才能接任务, 帮会任务不用这个接口
function TaskHandler:finishLoopTask(taskID)
	-- 完成当前任务，
	self:finishTaskByID(taskID)
	local player = self._entity
	-- 完成循环任务的时候向活动界面发一个接口
	local activityEvent = Event.getEvent(TaskEvent_SS_AddActivityPractise, player:getID(), taskID)
	g_eventMgr:fireEvent(activityEvent)
	-- 自动交接, 天道任务和其他任务处理方式不一样， 天道任务处理
	if LoopTaskDB[taskID].taskType2 == TaskType2.Heaven then
		local teamHandler = player:getHandler(HandlerDef_Team)
		local teamID = teamHandler:getTeamID()
		if teamID > 0  then
			-- 所有队员都完成任务才能接
			local team = g_teamMgr:getTeam(teamID)
			-- 如果任务玩家是队长才能接
			if team:getLeaderID() == player:getID() then
				if not TaskCondition.isMaxRing(player, taskID) then
					g_taskDoer:doRecetiveTeamTask(player, taskID)
				else
					-- 次数到，重置
					for _, entity in pairs(teamHandler:getTeamPlayerList()) do
						local taskHandler = entity:getHandler(HandlerDef_Task)
						taskHandler:resetCurrentRing(taskID)
					end
				end
			end	
		else
			if not TaskCondition.isMaxRing(player, taskID) then
				g_taskDoer:doRecetiveTeamTask(player, taskID)
			else
				-- 重置当前环数，不需要转盘奖励
				self:resetCurrentRing(taskID)
			end
		end
	-- 如果是帮会任务
	elseif LoopTaskDB[taskID].taskType2 == TaskType2.Faction then
		-- 不自动接不奖励
		if TaskCondition.isMaxRing(player, taskID) then
			self:resetCurrentRing(taskID)
		end
	else 
		-- 其他循环任务不涉及到组队的问题
		if not TaskCondition.isMaxRing(player, taskID) then
			-- 不涉及到组队的自动接任务
			g_taskDoer:doRecetiveTask(player, taskID)
		else
			self:resetCurrentRing(taskID)
			-- 完成所有环打开奖励界面
			local event = Event.getEvent(TaskEvent_SC_OpenRewardUI)
			g_eventMgr:fireRemoteEvent(event, player)
		end
	end
end

function TaskHandler:finishTaskByID(taskID)
	if self.currentTask[taskID] then
		-- 清除taskPrivateHandler当中的绑定的npcID
		local taskPrivateHandler = self._entity:getHandler(HandlerDef_TaskPrData)
		taskPrivateHandler:removeTraceInfo(taskID)
		self:updateHisTask(taskID)
		self:updateHisTaskToDB()
		--最好不要在这个地方重新设置
		self.currentTask[taskID]:stateChange(TaskStatus.Finished)
		-- 完成之后环数+1
		self:deleteTaskToDB(taskID) 
		release(self.currentTask[taskID])
		self.currentTask[taskID] = nil
		self:createNextTaskID(taskID)
		-- 完成任务时，重新设置这个任务列表
		self:updateTaskList(taskID, true)
		self.count = self.count - 1
		return true
	else
		print("任务不存在",taskID)
		print("当前只有",toString(self.currentTask))
		return false
	end
end

function TaskHandler:createNextTaskID(taskID)
	if NormalTaskDB[taskID] then
		local nextTaskID = NormalTaskDB[taskID].nextTaskID
		if nextTaskID  then
			if type(nextTaskID) == "number" then
				local taskType = NormalTaskDB[nextTaskID].taskType2
				if taskType == TaskType2.Main then
					self.nextTaskID = nextTaskID
				end
			elseif type(nextTaskID) == "table" then
				for _, nexttaskID in pairs(nextTaskID) do
					if TaskCondition.normalTask(self._entity, nexttaskID) then
						local taskType = NormalTaskDB[nexttaskID].taskType2
						if taskType == TaskType2.Main then
							self.nextTaskID = nexttaskID
							break
						end
					end
				end
			end
		end
	end
end

function TaskHandler:deleteTaskToDB(taskID)
	-- 如果是循环任则从数据库删除
	if LoopTaskDB[taskID] then
		LuaDBAccess.deleteLoopTask(self._entity:getDBID(), taskID)
		return true
		-- 环数完成时不要清理数据库
	else
		LuaDBAccess.deleteNormalTask(self._entity:getDBID(), taskID)
		return true
	end
end

function TaskHandler:updateHisTaskToDB()
	if type(self.hisTasks) ~= "table" then
		print("历史任务存储出错",self.hisTasks)
	end
	LuaDBAccess.updateHisTask(self._entity:getDBID(), self.hisTasks)
end

function TaskHandler:checkTaskProvider(npcID)
	local taskList = g_taskProvideNpcs[npcID]
	if taskList then
		--先显示主线任务
		for _, taskID in pairs(taskList) do
			if TaskCondition.normalTask(self._entity, taskID) then
				return taskID, TaskType.normal
			end

		end
		--其他任务继续监测
		for _, taskID in pairs(taskList) do
			if TaskCondition.loopTask(self._entity, taskID, true) then
				return taskID, TaskType.loop
			end
		end
	end
end

function TaskHandler:checkTaskRecetiver(npcID)
	local taskList = g_taskRecetiveNpcs[npcID]
	if taskList then
		--先显示主线任务
		for _, taskID in pairs(taskList) do
			if NormalTaskDB[taskID] then
				if self.currentTask[taskID] and self.currentTask[taskID]:getStatus() == TaskStatus.Done then
					return taskID, TaskType.normal
				end
			end
		end

		--其他任务继续监测
		for _, taskID in pairs(taskList) do
			if LoopTaskDB[taskID] then
				if self.currentTask[taskID] and self.currentTask[taskID]:getStatus() == TaskStatus.Done then
					return taskID, TaskType.Loop
				end
			end
		end
	end
end

-- 设置循环任务的环数
function TaskHandler:loadLoopTaskInfo(loopTaskRecord)
	for _, loopTask in pairs(loopTaskRecord or {}) do
		local offlineTime = loopTask.offlineTime
		-- 如果副本数据是上一个CD周期的，则要重置完成次数
		local loopTaskConfig = LoopTaskDB[loopTask.taskID]
		if loopTaskConfig then
			-- 如果是每日的循环任务
			if loopTaskConfig.period == TaskPeriod.day then
				-- 判断记录日期跟现在是不是同一天 判断这次登陆和上次离线的时间做比较
				if not time.isSameDay(offlineTime) then
					-- 不是同一天，重新设置当前可做的次数，
					loopTask.countRing = 0
				end
			else
				-- 判断记录日期跟现在是不是同一周
				if not time.isSameWeek(offlineTime) then
					-- 不是同一周，算是新CD了，重置完成次数和副本进度
					loopTask.countRing = 0
				end
			end
			if not self.loopTaskInfo[loopTask.taskID] then
				self.loopTaskInfo[loopTask.taskID] = {}
				self.loopTaskInfo[loopTask.taskID].countRing = loopTask.countRing
				self.loopTaskInfo[loopTask.taskID].currentRing = loopTask.currentRing
			else
	
			end
		else
			print("数据初始化出错，任务id是",loopTask.taskID)
		end
	end
end

-- 保存循环任务环数
function TaskHandler:updateLoopTaskRingToDB()
	local playerDBID = self._entity:getDBID()
	for taskID, taskInfo in pairs(self.loopTaskInfo) do
		LuaDBAccess.updateLoopTaskRing(playerDBID, taskID, taskInfo)
	end
end

function TaskHandler:resetCurrentRing(taskID)
	if LoopTaskDB[taskID] then
		self.loopTaskInfo[taskID].currentRing = 0
	end
end

function TaskHandler:getDailyTask( taskID )
	return self.dailyTaskList[taskID]
end