function y = h_a(x,a,m)

% ��������� ������� h_a(x,a,m)
% ���������� � ��� �����
%
% a - ������� ������� (a>1)
% m - ���������� ������������ ������ ��� ���������� ������������� ����� (������������ ������������) (�� ��������� 50)    
% m ������ ���� ������������� ����� ������
%
% (�) ������� ������ 24.04.06 17:33
%

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

% ���������� ������� h_a(x)
y=0.5;

for k=1:20    
    y=y+H_a_F(k*pi*(a-1),a,m).*cos(pi*k*x*(a-1));
end
y=y.*(a-1);

% h_a(x)=0 ��� �������� x=[-1/(a-1),1/(a-1)]
nums=find(abs(x)>(1/(a-1)));
y(nums)=0;

