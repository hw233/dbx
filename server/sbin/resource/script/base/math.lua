--[[math.lua
������
	math�����չ
]]


--@note��4��5��
function math.round(n)
	return math.floor(0.5 + n)
end

--@note���漴С��
function math.rand(n1, n2)
	return math.random(n1 * 1000000, n2 * 1000000)/1000000
end

--Peter Teng:accurate is 0.0001,correspond to equipment attribute
function math.rand4Attribute(n1, n2)
	return math.random(n1 * 10000, n2 * 10000)/10000
end

--ȡһ��������������
function math.getIntPart(x)
	if x <= 0 then
	   return math.ceil(x);
	end

	if math.ceil(x) == x then
		print("1111")
	   x = math.ceil(x);
	else
		print("2222")
	   x = math.ceil(x) - 1;
	end
	return x;
end