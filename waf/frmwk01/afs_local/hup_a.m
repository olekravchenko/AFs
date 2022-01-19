function y = hup_a(x,a,n)

% hup_a(x,a,m)
% ��������� ������� hup_a(x)
%
% a - ������� �������
% n - ���������� ������������ ������ ��� ���������� ������������� ����� (����������� ������������) (�� �����. 50)    
%
% n - ������ ���� ������������� ����� ������
% a - ������������� ������������ �����
%
% (�) ������� ������ 02.08.06 10:27

% �������� n �� ���������
if nargin == 2
    n=50;
end

% �������� �� ��������������� � ����������� a � n
if ((prod(size(n)) > 1) || (n < 0))
    error('n must be a positive scalar!');
end

if ((prod(size(a)) > 1) || (a < 0))
    error('a must be a positive scalar!');
end

% ��������� ��� n - �����
if (mod(n,floor(n))~=0)
    error('n must be an integer!');
end

% ���������� ������� hup_a(x)
y=0.5;

for k=1:20
    y=y+HUP_a_F(k*pi/2,a,n).*cos(pi*k*x/2);
end
y=y/2;

% hup_a(x)=0 ��� �������� x=[-2,2]
nums=find(abs(x)>2);
y(nums)=0;