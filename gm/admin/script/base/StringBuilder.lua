require "base.class"

StringBuilder=class()

local table_concat=table.concat

function StringBuilder:__init(joiner)
	self.list={}
	self.outcome=nil
	self.joiner=joiner or ""
end

function StringBuilder:append(...)
	local args_len=select('#',...)
	if self.outcome and args_len>0 then self.outcome=nil end
	for i=1,args_len do self:push(select(i,...)) end
	return self
end

function StringBuilder:popend()
	local list=self.list
	list[#list]=nil
end

function StringBuilder:length()
	return #(self.list)
end

function StringBuilder:clear()
	self.list={}
	self.outcome=nil
end

function StringBuilder:setJoiner(joiner)
	if self.joiner~=joiner then
		self.joiner=joiner
		self.outcome=nil
	end
end

function StringBuilder:pushTable(tb)
	if not tb then return end
	local list=self.list
	if instanceof(tb,StringBuilder) then
		local his_list=tb.list
		local his_len=#his_list
		if tb.joiner~=self.joiner then
			list[#list+1]=tb
		else			
			for i=1,his_len do
				list[#list+1]=his_list[i]--��ʹ��push��Ե���ǣ���push�������Ѿ�����ֽ���
			end
		end
	else
		local tb_len=#tb
		if tb_len>0 then
			for i=1,tb_len do self:push(tb[i]) end--ʹ��push����Ϊһ���ⲿ��������û�а취ȷ��������û��Ƕ�ױ��
		else
			list[#list+1]=tb--ϣ�������������metatable����Ȼ����ת�����ַ�����
		end
	end
end

function StringBuilder:push(value)
	if not value then return end
	local list=self.list
	local vtype=type(value)
	if vtype=='string' or vtype=='number' then
		list[#list+1]=value
	elseif vtype=='table' then
		self:pushTable(value)
	else
		list[#list+1]=value	--���ǵ�ĳЩuserdata������Ԫ��Ҳ����ת�����ַ���
	end
end

function StringBuilder:__concat(str)
	return self:append(str)
end

function StringBuilder:__tostring()
	local outcome = self.outcome
	if not outcome then
		outcome=table_concat(self.list,self.joiner)
		self.outcome=outcome
	end
	return outcome
end

return StringBuilder
