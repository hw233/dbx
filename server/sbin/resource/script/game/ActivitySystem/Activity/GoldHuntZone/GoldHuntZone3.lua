--[[GoldHuntZone3.lua
	描述：猎金场
--]]

gGoldHuntID3 = 6
--活动基础配置
local GoldHuntZone_scoreNpcPos ={x=223,y=78}
GoldHuntZoneActivityDB3 = 
{
	[gGoldHuntID3] = 
	{
		name = "GoldHuntZone3",
		dbName = "updateGoldHuntActivity",
		startType = AtyStartType.fixedDayHour,
		startTime = {hour = 20, min = 06},
		min_maxPlayerLevel = {50,150},
		readyPeriod = 1,
		
		endTime = {hour = 20, min = 30},				--结束时间
		mapID = 909,							--地图ID
		phaseInfo = {
			[1] = {
					period = 3,--min			--阶段持续时间
					materialInfo = {
									{itemID = 10026,centerPos={x=109,y=216},radius = 5,count = 2},					--场景物件,中心,范围,数量,可以多行并列
									{itemID = 10027,centerPos={x=109,y=215},radius = 5,count = 2},	
									updatePeriod = 1,totalMax= 6, curMax = 5,							--刷新间隔,总数量,保持数量
					}
			},
			[2] = {
					period = 3,--min
					monsterInfo ={
									{commonDBID = 39052,centerPos={x=109,y=216},radius = 5},updatePeriod = 2,totalMax= 5, curMax = 3,	--怪物ID,中心,范围,刷新间隔,总数量,保持数量
									eliteDBID = 39053,propability = 20,									--精英怪,概率
					},
					materialInfo = {
									{itemID = 10028,centerPos={x=186,y=201},radius = 5,count = 1},
									updatePeriod = 1,totalMax= 6, curMax = 4,
					}
			},
			[3] = {
					period = 3,--min
					monsterInfo ={
									{commonDBID = 39052,centerPos={x=186,y=201},radius = 5},updatePeriod = 2,totalMax= 5, curMax = 3,
									eliteDBID = 39053,propability = 40,
					},
					materialInfo = {
									{itemID = 10029,centerPos={x=201,y=117},radius = 5,count = 1},
									updatePeriod = 1,totalMax= 6, curMax = 4,
					}
			},
			[4] = {
					period = 3,--min
					monsterInfo ={
									{commonDBID = 39052,centerPos={x=201,y=117},radius = 5},updatePeriod = 2,totalMax= 5, curMax = 3,
									eliteDBID = 39053,propability = 60,
					},
					materialInfo = {
									{itemID = 10030,centerPos={x=279,y=101},radius = 5,count = 1},
									updatePeriod = 1,totalMax= 6, curMax = 4,
					}
			}
		},
	},
	

}

table.copy(GoldHuntZoneActivityDB3,  ActivityDB)


GoldHuntZone3 = class(Activity, Singleton, Timer)

local timerContext = {} --[timerID]=context
local updateTimerContext = {} --[timerID]=doer
local updateMonsterTimerPhase ={}--[timerID]=phaseID
local endTimerID = -1
local updateMineTimerPhase ={}--[timerID]=phaseID
local monsterIDPhase = {}--[monsterID]=phaseID
local mineIDPhase = {}--[mineID]=phaseID

function GoldHuntZone3:__init()
	self._config = nil
	self._id = gGoldHuntID3
	self._scene = nil
	self._phaseID = 1
	self._curPhaseID = 1
	self._timePhaseID = 1
	self._monsters = {total={[1]=0,[2]=0,[3]=0,[4]=0},[1]={},[2]={},[3]={},[4]={}}
	self._mines = {total={[1]=0,[2]=0,[3]=0,[4]=0},[1]={},[2]={},[3]={},[4]={}}
end

function GoldHuntZone3:__release()
	
	
end

function GoldHuntZone3:open()
	--活动状态(预开启)
	--定时器
	--创建场景
	--刷怪
		--定时器
		local context = 1
		self._config = GoldHuntZoneActivityDB3[self._id]
		local readyPeriod = self._config.readyPeriod
		local timerID = g_timerMgr:regTimer(self, readyPeriod*60*1000, readyPeriod*60*1000, "GoldHuntZone3.update")
		timerContext[timerID] = context
		
		--创建场景
		self._scene = g_sceneMgr:createGoldHuntScene(self._config.mapID, self._id)
		--创建npc
		--local npc = g_entityFct:createDynamicNpc(GoldHuntZone_scoreNpcID)
		--self._scene:attachEntity(npc, GoldHuntZone_scoreNpcPos.x , GoldHuntZone_scoreNpcPos.y)
end

function GoldHuntZone3:close()
	print("GoldHuntZone3:close()")
	--启动结束定时器
	endTimerID = g_timerMgr:regTimer(self, GoldHuntZone_ReadyPeriodBeforeEnd*60*1000, GoldHuntZone_ReadyPeriodBeforeEnd*60*1000, "GoldHuntZone3.update")

end

--定时器执行，真正开启活动
function GoldHuntZone3:openActivity()
	--活动状态(开启)
	
end

--定时器执行，真正关闭活动
function GoldHuntZone3:closeActivity()
print("GoldHuntZone3:closeActivity()",self._id)
	--清除所有信息
	for timerID,_ in pairs(updateTimerContext) do
		g_timerMgr:unRegTimer(timerID)
	end
	g_sceneMgr:releaseGoldHuntScene(self._id)
	self._scene = nil
	g_activityMgr:removeActivity(self._id)
end


function GoldHuntZone3:_refreshMonsters(phaseID)
	local monsterInfo = self._config.phaseInfo[phaseID].monsterInfo
	local eliteDBID = monsterInfo.eliteDBID
	local commonDBID = monsterInfo[1].commonDBID
	local centerPos = monsterInfo[1].centerPos
	local radius =  monsterInfo[1].radius
	local prob = monsterInfo.propability
	local count = monsterInfo.curMax

	local i =0
	while(i < count)do
		local peer = self._scene:getPeer()
		local vect = peer:getRandomPos(centerPos.x, centerPos.y, radius, 0)
		local x = vect.x
		local y = vect.y
		print("monsterPos=",x,y,centerPos.x,centerPos.y,radius)
		local DBID = commonDBID
		local rand = math.random(1,100)
		if rand <= prob then
			DBID = eliteDBID
		end

		local monster = g_entityFct:createDynamicNpc(DBID)
		self._scene:attachEntity(monster, x , y)
		self._monsters[phaseID][monster:getID()] = true
		local total = self._monsters.total[phaseID]
		self._monsters.total[phaseID] = total + 1
		monsterIDPhase[monster:getID()] = phaseID
		i = i + 1
	end
	
	local updatePeriod = self._config.phaseInfo[phaseID].monsterInfo.updatePeriod
	local timerID = g_timerMgr:regTimer(self, updatePeriod*60*1000, updatePeriod*60*1000, "GoldHuntZone3.update")
	updateTimerContext[timerID] = GoldHuntZone3.updateMonsters
	updateMonsterTimerPhase[timerID] = phaseID
	self:sceneBroadcast()
end

function GoldHuntZone3:_refreshMines(phaseID)
	local mineInfo = self._config.phaseInfo[phaseID].materialInfo
	local totalCount = mineInfo.curMax

	for _,info in ipairs(mineInfo) do
		local mineID = info.itemID
		local centerInfo = info.centerPos
		local radius = info.radius
		local count = info.count

		local i =0
		while(i < count)do
			
			local peer = self._scene:getPeer()
			local vect = peer:getRandomPos(centerInfo.x,centerInfo.y,radius,0)
			local x = vect.x
			local y = vect.y
			print("minePos=",x,y,centerInfo.x,centerInfo.y,radius)
			local mine = g_entityFct:createGoodsNpc(nil,mineID ,nil)
			self._scene:attachEntity(mine, x , y)
			self._mines[phaseID][mine:getID()] = true
			local total = self._mines.total[phaseID]
			self._mines.total[phaseID] = total + 1
			mineIDPhase[mine:getID()] = phaseID
			i = i + 1
		end
	end
 
	local updatePeriod = self._config.phaseInfo[phaseID].materialInfo.updatePeriod
	local timerID = g_timerMgr:regTimer(self, updatePeriod*60*1000, updatePeriod*60*1000, "GoldHuntZone3.update")
	updateTimerContext[timerID] = GoldHuntZone3.updateMines
	updateMineTimerPhase[timerID] = phaseID
	if phaseID == 1 then
		self:sceneBroadcast2()
	end
end

function GoldHuntZone3:updateMines(timerID)
--print("**********************")
	local phaseID = updateMineTimerPhase[timerID] 
	local total = self._mines.total[phaseID]
	local totalMax = self._config.phaseInfo[phaseID].materialInfo.totalMax
	local maxCount = 0

	if total >=  totalMax then
		return
	else
		maxCount = totalMax - total
	end
--print(2,phaseID,total,totalMax,maxCount)
	local count = 0
	local curCount = table.size(self._mines[phaseID])
	local curMax = self._config.phaseInfo[phaseID].materialInfo.curMax
	
	if curCount < curMax then
		count = curMax - curCount
		if count > maxCount then
			count = maxCount
		end
	end
--print(3,curCount,curMax,count)
	local areaCount = #(self._config.phaseInfo[phaseID].materialInfo)
	if count > 0 then
	--print(4)
		local rand = math.random(1,areaCount)
		local info = self._config.phaseInfo[phaseID].materialInfo[rand]
		local centerPos = info.centerPos
		local mineID = info.itemID
		local radius = info.radius
		local i =0
		while(i < count)do
			--print(5)
			local peer = self._scene:getPeer()
			local vect = peer:getRandomPos(centerPos.x,centerPos.y,radius,0)
			local x = vect.x
			local y = vect.y

			local mine = g_entityFct:createGoodsNpc(nil,mineID ,nil)
			self._scene:attachEntity(mine, x , y)
			self._mines[phaseID][mine:getID()] = true
			local total = self._mines.total[phaseID]
			self._mines.total[phaseID] = total + 1
			mineIDPhase[mine:getID()] = phaseID
			i = i + 1
		end
	end
end

function GoldHuntZone3:removeMine(mineID)
	local phaseID = mineIDPhase[mineID]
	mineIDPhase[mineID] = nil
	local info = self._mines[phaseID]
	info[mineID] = nil
	local total = self._mines.total[phaseID]
	self._mines.total[phaseID] = total - 1
end

function GoldHuntZone3:getPhaseID()
	return self._curPhaseID
end

function GoldHuntZone3:removeMonster(monsterID)
	local phaseID = monsterIDPhase[monsterID]
	monsterIDPhase[monsterID] = nil
	local info = self._monsters[phaseID]
	if info[monsterID] then
		info[monsterID] = nil
	end
	self:sceneBroadcast1()
	local curTotal = self._monsters.total[phaseID]
	local totalMax = self._config.phaseInfo[phaseID].monsterInfo.totalMax
	if (table.size(info) == 0) and (curTotal == totalMax) then
		self:_refreshMines(phaseID)
		self._curPhaseID = phaseID
		--通知客户端打开关口
		local entityList = self._scene:getEntityList()--
		for _,role in pairs(entityList) do
			if instanceof(role, Player) then
				local event = Event.getEvent(ActivityEvent_SC_GoldHunt_newPhase_begin, phaseID)
				g_eventMgr:fireRemoteEvent(event, role)
			end
		end
		if phaseID < 4 then
			self._phaseID = phaseID + 1
		end
		--上一段停止刷矿
		for timerID ,ID in pairs(updateMineTimerPhase) do
			if ID == (phaseID - 1) then
				g_timerMgr:unRegTimer(timerID)
			end
		end
	end
end

function GoldHuntZone3:updateMonsters(timerID)
	local phaseID = updateMonsterTimerPhase[timerID]

	if self._phaseID == 1 then
		return
	end

	local total = self._monsters.total[phaseID]
	local totalMax = self._config.phaseInfo[phaseID].monsterInfo.totalMax
	local maxCount = 0
	if total >=  totalMax then
		return
	else
		maxCount = totalMax - total
	end

	local count = 0
	local curCount = table.size(self._monsters[phaseID])
	local curMax = self._config.phaseInfo[phaseID].monsterInfo.curMax
	
	if curCount < curMax then
		count = curMax - curCount
		if count > maxCount then
			count = maxCount
		end
	end

	
	if count > 0 then
		local info = self._config.phaseInfo[phaseID].monsterInfo
		local centerPos = info[1].centerPos
		local radius = info[1].radius
		local commonDBID = info[1].commonDBID
		local eliteDBID = info.eliteDBID
		local prob = info.propability

		local i =0
		while(i < count)do
			local peer = self._scene:getPeer()
			local vect = peer:getRandomPos(centerPos.x, centerPos.y, radius, 0)
			local x = vect.x
			local y = vect.y
			local DBID = commonDBID
			local rand = math.random(1,100)
			if rand <= prob then
				DBID = eliteDBID
			end

			local monster = g_entityFct:createDynamicNpc(DBID)
			self._scene:attachEntity(monster, x , y)
			self._monsters[phaseID][monster:getID()] = true
			local total = self._monsters.total[phaseID]
			self._monsters.total[phaseID] = total + 1
			monsterIDPhase[monster:getID()] = phaseID
			i = i + 1
		end
	end
end

function GoldHuntZone3:update(timerID)

	if timerID == endTimerID then
		self:closeActivity()
	end
	if updateTimerContext[timerID] then
		updateTimerContext[timerID](self,timerID)
		return
	end
	g_timerMgr:unRegTimer(timerID)
	local timePhaseID = timerContext[timerID]
	if timePhaseID and (timePhaseID <= 4) then
		self._timePhaseID = timePhaseID
		local context = timePhaseID + 1
		local period = self._config.phaseInfo[timePhaseID].period
		
		local timerID = g_timerMgr:regTimer(self, period*60*1000, period*60*1000, "GoldHuntZone3.update")
		timerContext[timerID] = context
		if timePhaseID == 1 then
			self:_refreshMines(timePhaseID)
			
		else
			if timePhaseID == 2 then
				self._phaseID = 2
			end
			self:_refreshMonsters(timePhaseID)
			
		end
		
		
		
	--结束了
	else
		
	end
end

--由于挖矿的动静太大，惊醒了这里的上古守卫，成功挑战守卫可以获得大量的金晶矿
function GoldHuntZone3:sceneBroadcast()
	for entityID , entity in pairs(self._scene:getEntityList()) do
		--发送消息
		if entity:getEntityType() == eLogicPlayer then
			local event = Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_GoldHunt,9)
			g_eventMgr:fireRemoteEvent(event, entity)
		end
	end
end

--本层的守卫已经被全部消灭，一声响动过后，前往下一层矿洞的通道已经被打开。
function GoldHuntZone3:sceneBroadcast1()
	for entityID , entity in pairs(self._scene:getEntityList()) do
		--发送消息
		if entity:getEntityType() == eLogicPlayer then
			local event = Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_GoldHunt,10)
			g_eventMgr:fireRemoteEvent(event, entity)
		end
	end
end

--本层的守卫已经被全部消灭，一声响动过后，前往下一层矿洞的通道已经被打开。
function GoldHuntZone3:sceneBroadcast2()
	for entityID , entity in pairs(self._scene:getEntityList()) do
		--发送消息
		if entity:getEntityType() == eLogicPlayer then
			local event = Event.getEvent(ClientEvents_SC_PromptMsg, eventGroup_GoldHunt,11)
			g_eventMgr:fireRemoteEvent(event, entity)
		end
	end
end

--奖励公式
function GoldHuntZone3:rewardFormat(player)
	--计算
	--通知客户端
end

--点击对话调用这里,这里的player必须是非组队
function GoldHuntZone3:joinActivity(player)
	local teamHandler = player:getHandler(HandlerDef_Team)
	local teamID = teamHandler:getTeamID()
	local team = g_teamMgr:getTeam(teamID)
	
end

function GoldHuntZone3:joinPlayer(player,recordList)
	g_goldHuntMgr:onOnline(player)
end

