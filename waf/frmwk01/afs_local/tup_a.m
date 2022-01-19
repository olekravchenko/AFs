function y = tup_a(x,a,n)

% tup_a(x, a, n)
% ��������� ������� tup_a(x)
%
% a - ������� �������
% n - ���������� ������������ ������ ��� ���������� ������������� ����� (����������� ������������) (�� �����. 50)    
%
% n - ������ ���� ������������� ����� ������
% a - ������������� ������������ (�������!) �����
%
% (�) ������� ������ 14.08.06 23:12

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

% ��������� ��� a - �������
if (mod(a,floor(a))==0)
    error('a must not be an integer!');
end

% ���������� ������� tup_a(x)
y=0.5;

for k=1:20    
    y=y+real(TUP_a_F(k*pi,a,n)).*cos(pi*k*x)-imag(TUP_a_F(k*pi,a,n)).*sin(pi*k*x);
end

% tup_a(x)=0 ��� �������� x=[-1,1]
nums=find(abs(x)>1);
y(nums)=0;

