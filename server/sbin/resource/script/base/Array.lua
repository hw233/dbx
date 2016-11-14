--[[������������ĺ���
]]
--����һ��ƥ�亯�������Բ�ѯĳ��Ԫ���Ƿ���������
local function ContainMatcher(set)
	return function(value)
		for index,v in ipairs(set) do
			if value==v then return true
			end
		end
		return false
	end
end

--����һ��ƥ�亯�������Բ�ѯĳ��Ԫ���Ƿ��������У���ͬһ��ֵ�Ķ��β�ѯ��������
local function OnceContainMatcher(set)
	return function(value)
		local length=#set
		for index,v in ipairs(set) do
			if value==v then
				set[index]=set[length]
				set[length]=nil
				return true
			end
		end
		return false
	end
end

--����һ��ƥ�亯�������Բ�ѯĳ��Ԫ���Ƿ��������У�
local function SaveContainMatcher(set)
	local copy={}
	for k,v in ipairs(set) do
		copy[k]=v
	end
	return OnceContainMatcher(copy)
end

--����һ��ƥ�亯����
local function TwiceMatcher()
	local set = {}
	return function(value)
		if set[value] then
			return true
		else
			set[value] = true
			return false
		end
	end
end

--ɾ�������е�Ԫ��
local function Remove(list,can_remove,...)
	if type(can_remove) ~= "function" then
		error(("#2 excepted a function,got %s"):format(type(can_remove)))
	end
	local base=1
	local prev_len=#list
	for i=1,prev_len do
		if not can_remove(list[i],...) then
			if base~= i then
				list[base]=list[i]
				list[i]=nil
			end
			base=base+1
		else
			list[i]=nil
		end
	end
	return list,base-1
end

local function Subtract(list,set,comparator)
	return Remove(list,(comparator or ContainMatcher)(set))
end

local function Trim(list)
	return Remove(list,TwiceMatcher())
end

local temp = {}
local function clear(t)
	for k,_ in pairs(t) do
		t[k] = nil
	end
	return t
end

--�ϲ�����
local function Combine(a,b)
	local temp = clear(temp)
	for _,value in ipairs(a) do
		temp[value] = true
	end
	for _,value in ipairs(b) do
		temp[value] = true
	end
	local ret = {}
	for value,_ in pairs(temp) do
		ret[#ret + 1] = value
	end
	return ret
end

local _Array = {
	remove = Remove,
	subtract = Subtract,
	combine = Combine,
	trim = Trim,
	ContainMatcher = ContainMatcher,
	OnceContainMatcher = OnceContainMatcher,
	SaveContainMatcher = SaveContainMatcher
}

Array = _Array

return _Array