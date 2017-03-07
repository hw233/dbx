--[[TaskRewardFormula.lua
	ѭ������ʽ��������
--]]
-- ʦ������ʽ����
MasterRewardFormula = {}
--����
function MasterRewardFormula.addXp(curRing, level)
	if level >= 1 and level <= 39 then
		return math.floor(((curRing - 5)*100 + 500)*(level - 10)*0.5)
	elseif level >= 40 and level <= 59 then
		return math.floor(((curRing - 5)*100 + 500)*(level - 8)*0.7)
	elseif level >= 60 and level <= 150 then
		return math.floor(((curRing - 5)*100 + 500)*(level - 8)*0.7)
	end
end

-- ����
function MasterRewardFormula.addTao(curRing, level)
	if level >= 1 and level <= 39 then
		return math.floor(2*curRing*(level - 19)*0.7)
	elseif level >= 40 and level <= 59 then
		return math.floor(5*curRing*(level - 39)*0.8)
	elseif level >= 60 and level <= 150 then
		return math.floor(5*curRing*(level - 39)*0.8)
	end
end

-- Ǳ��
function MasterRewardFormula.addPot(curRing, level)
	if level >= 1 and level <= 39 then
		return math.floor((curRing + 50)*(level - 19)*70)
	elseif level >= 40 and level <= 59 then
		return math.floor((curRing + 80)*(level - 39)*120)
	elseif level >= 60 and level <= 150 then
		return math.floor((curRing + 80)*(level - 39)*120)
	end
end

-- ����
function MasterRewardFormula.addSubMoney(curRing, level)
	if level >= 1 and level <= 39 then
		return math.floor(500*curRing*(level - 19))
	elseif level >= 40 and level <= 59 then
		return math.floor(800*curRing*(level - 39))
	elseif level >= 60 and level <= 150 then
		return math.floor(800*curRing*(level - 39))
	end
end

-- ������������ʽ
TrialRewardFormula = {}
-- ����
function TrialRewardFormula.addXp(curRing, level)
	if level >= 1 and level <= 59 then
		return math.floor(((curRing - 100)*30 + (level - 20)*curRing)*0.5 + 2000)
	elseif level >= 60 and level <= 79 then
		return math.floor(((curRing - 100)*30 + (level - 20)*curRing)*0.5 + 2000)
	elseif level >= 80 and level <= 150 then
		return math.floor(((curRing - 100)*30 + (level - 20)*curRing)*0.5 + 2000)
	end
end

-- ����
function TrialRewardFormula.addTao(curRing, level)
	if level >= 1 and level <= 59 then
		return math.floor((curRing + 5)*(level - 39)*0.7)
	elseif level >= 60 and level <= 79 then
		return math.floor((curRing + 5)*(level - 39)*0.7)
	elseif level >= 80 and level <= 150 then
		return math.floor((curRing + 5)*(level - 39)*0.7)
	end
end

-- Ǳ��
function TrialRewardFormula.addPot(curRing, level)
	if level >= 1 and level <= 59 then
		return math.floor((curRing + 20)*(level - 39)*3)
	elseif level >= 60 and level <= 79 then
		return math.floor((curRing + 20)*(level - 39)*3)
	elseif level >= 80 and level <= 150 then
		return math.floor((curRing + 20)*(level - 39)*3)
	end
end

-- ����
function TrialRewardFormula.addSubMoney(curRing, level)
	if level >= 1 and level <= 59 then
		return math.floor(50*curRing*(level - 39)*0.7)
	elseif level >= 60 and level <= 79 then
		return math.floor(50*curRing*(level - 39)*0.7)
	elseif level >= 80 and level <= 150 then
		return math.floor(50*curRing*(level - 39)*0.7)
	end
end

-- ���ﾭ��
function TrialRewardFormula.addPetXp(curRing, level, petLevel)
	if not petLevel then
		return
	end
	if level >= 1 and level <= 59 then
		return math.floor(((curRing - 100)*30+(math.abs(level - petLevel)-5)*curRing+1000)*0.5+2000)
	elseif level >= 60 and level <= 79 then
		return math.floor(((curRing - 100)*30+(math.abs(level - petLevel)-5)*curRing+1000)*0.5+2000)
	elseif level >= 80 and level <= 150 then
		return math.floor(((curRing - 100)*30+(math.abs(level - petLevel)-5)*curRing+1000)*0.5+2000)
	end
end

-- �������
function TrialRewardFormula.addPetTao(curRing, level, petLevel)
	if not petLevel then
		return
	end
	if level >= 1 and level <= 59 then
		return math.floor(((curRing - 5)*math.abs(level - petLevel)+50)*0.6)
	elseif level >= 60 and level <= 79 then
		return math.floor(((curRing - 5)*math.abs(level - petLevel)+50)*0.6)
	elseif level >= 80 and level <= 150 then
		return math.floor(((curRing - 5)*math.abs(level - petLevel)+50)*0.6)
	end
end
--]]
-- ��ṫʽ����
FactionRewardFormula = {}

-- ����
function FactionRewardFormula.addTao(equipLevel, equipQuality)
	return equipLevel*equipQuality
end

-- Ǳ��
function FactionRewardFormula.addPot(equipLevel, equipQuality)
	return equipLevel*equipQuality
end


RewardFormula = {}
function RewardFormula.addTao(curRing, level)
	return curRing * 5 + level
end

-- ͨ������������ʽ
BabelRewardFormula = {}

-- ���鹫ʽ
function BabelRewardFormula.addXp(level, layer)
	return (level + layer) * 10
end

-- ���й�ʽ
function BabelRewardFormula.addTao(level, layer)
	return (level + layer) * 5
end

-- ���ﾭ��
function BabelRewardFormula.addPetXp(level, layer)
	return (level + layer) * 10
end

-- �������
function BabelRewardFormula.addPetTao(level, layer)
	return (level + layer) * 5
end