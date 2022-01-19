function y = H_a_F(om, a, m)

% H_a_F(om, a, m)
% ������ ��������� ������� h_a(x)
%
% a - ������� ������� (a>1)
% m - ���������� ������������ ������ ��� ���������� ������������ ������������ (�� ��������� 50)   
% m ������ ���� ������������� ����� ������5
%
% (�) ������� ������ 24.04.06 17:37

% �������� m �� ���������
if nargin == 2
    m=50;
end

% �������� �� ��������������� � ����������� a � m
if ((prod(size(a)) > 1) | (a <= 1))
    error('a must be a positive scalar (a>1)!');
end

if ((prod(size(m)) > 1) | (m < 0))
    error('m must be a positive scalar!');
end

% ��������� ��� m - �����
if(mod(m,floor(m))~=0)
    error('m must be an integer!');
end

n=find(om==0);
om(n)=1;

y=1;
for k=1:m
    y=y.*sin(om*a^(-k))./(om*a^(-k));
end

y(n)=1;