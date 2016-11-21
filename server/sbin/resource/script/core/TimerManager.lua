--[[TimerManager.lua
������
	��ʱ��������
--]]

-- ��ʱ���ӿ�
Timer = interface(nil, "update")

-- ��ʱ��������
TimerManager = class(nil, Singleton)

-- ��Ч�Ķ�ʱ��ID
local INVALID_TIMER_ID = -1

-- ��ʼ��
function TimerManager:__init()
	self.curTimerID = 0
	self.regTimers = {}
	self.timerDebugInfo = {}
end

-- ��ʱ���ص�
function TimerManager:update(timerID)
	local timer = self.regTimers[timerID]
	if timer then
		timer:update(timerID)
	end
end

--C++ ����ע�� ע������֪ͨ
function TimerManager:notify(timerID, state)
	if state == ScriptTimerExpire then
		print ("[ScriptTimer]["..timerID.."] [" .. self.timerDebugInfo[timerID] .. "]expire succeed!");
	elseif state == ScriptTimerStop then
		print ("[ScriptTimer]["..timerID.."] [" .. self.timerDebugInfo[timerID] .. "]unreg succeed!");
	end
	self.timerDebugInfo[timerID] = nil
end

-- ���ɶ�ʱ��ID
-- CAUTION: ��ʱ��idԽ��
function TimerManager:generateTimerID()
	self.curTimerID = self.curTimerID + 1
	return self.curTimerID
end

-- ע�ᶨʱ��
-- args:timer ʵ��Timer�ӿڵĻص�
-- args:elapse ��һ��ִ��ʱ��
-- args:period ����
-- args:debugInfo ������Ϣ
-- return:���ض�ʱ��id
function TimerManager:regTimer(timer, elapse, period, debugInfo)
	if instanceof(timer, Timer) then
		local timerID = self:generateTimerID()
		local rt = ScriptTimer.RegTimer(timerID, elapse, period)
		if rt == -1 then
			print ("[ScriptTimer]["..timerID.."] reg failed!");
		end
		self.regTimers[timerID] = timer
		self.timerDebugInfo[timerID] = debugInfo
		return timerID
	end
	return INVALID_TIMER_ID
end

-- ע����ʱ��
function TimerManager:unRegTimer(timerID)
	local timer = self.regTimers[timerID]
	if timer then
		ScriptTimer.UnregTimer(timerID)
		self.regTimers[timerID] = nil
		return true
	end
	return false
end

function TimerManager.getInstance()
	return TimerManager()
end
