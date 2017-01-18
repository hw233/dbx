--[[
	ȫ�ֱ������ü��
	����һ��Ϊnil��ȫ����ʱ,���������

	demo:

	StartGlobalRefCheck()
	local t = {
		eLogicPet,eLogicGod,
	}
	StopGlobalRefCheck()

	����eLogicGodû�ж���,�������������ʱ,�������ʾ

	������Ϊ״̬�õ�ȫ����,Ϊ����ǿ�ҽ���ʹ��false����nil,ԭ����:
	1,false �� nil ���߼��ж����ǵȼ۵�,if false �� if nil ���� not false �� not nil ��һ����
	2,nil�ᵼ�¼�ֵ�Ե�ɾ��,����ٹ�ϣ,false�򲻻�
]]

local __index = getmetatable(_G).__index

function StartGlobalRefCheck()
    getmetatable(_G).__index = function(t,key)
        local value = __index(t,key)
        if value == nil then
            print("ȫ������û��",key)
        end
        return value
    end
end

function StopGlobalRefCheck()
    getmetatable(_G).__index = __index
end
