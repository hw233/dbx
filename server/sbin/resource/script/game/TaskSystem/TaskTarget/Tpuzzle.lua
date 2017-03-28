--[[Tpuzzle.lua
������
	ƴͼ����Ŀ��
--]]

Tpuzzle = class(TaskTarget)

function Tpuzzle:__init(entity, task, param, state)	
	--����Ѿ���װ��װ������û��param.equipID
	self._state = state and state or 0
	self:addWatcher("onPuzzleFinish")
end

-- ������װ
function Tpuzzle:onPuzzleFinish(puzzleID)
	if puzzleID == self._param.puzzleID then 
		self:setState(self._state + 1)
		if self:completed() then
			-- �����ɣ���ô��ʱ������Ʒ��ͣ�Ѿ�ɾ��
			self._task:refresh()
			self:removeWatcher("onPuzzleFinish")
		end
	end
end

function Tpuzzle:completed()
	return self._state >= 1
end

function Tpuzzle:getState()
	return self._state
end

-- ��������Ʒ�ļ�������ɾ������Ҫ��������
function Tpuzzle:removeWatchers()
	self:removeWatcher("onPuzzleFinish")
end

function Tpuzzle:removeAllWatchers()
	self:removeWatcher("onPuzzleFinish")
end