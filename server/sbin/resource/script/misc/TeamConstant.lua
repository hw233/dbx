--[[TeamConstant.lua
������
	���ϵͳ��������
]]


InvalidTeamID = -1 --��Ч����ID
MaxTeamMember = 4 --��������Ա��
MaxInvalidCount = 5 --�������յ�������Ϣ����

--�����Ա״̬
MemberState = 
{
	Leader	= 0x01,--�ӳ�
	Follow	= 0x02,--����
	StepOut	= 0x04,--����
}

--�����ж�Ŀ��
TeamActionID =
{
	SMSW = 1,--ʦ������
	HJRQ = 2,--�ƽ�����
	WMCH = 3,--Ϊ�����
	DSX	 = 4,--��ɷ��
	YWDG = 5,--Ұ����
	JYFB = 6,--���鸱��
	QNFB = 7,--Ǳ�ܸ���
	YXT	 = 8,--Ӣ����
	DQCJ = 9,--��ǰ����
}

--�ɸ�����ս��ͼ
XFZDZMapID = {136,137,138,139,140,141,142,143,151,152,153,154,155,156,157,158}
