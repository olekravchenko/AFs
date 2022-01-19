function y = fup_n(x,n,m)

% ��������� ������� fup_n(x,n,m)
% ���������� � ��� �����
%
% n - ������� �������
% m - ���������� ������������ ������ ��� ���������� ������������� ����� (������������ ������������) (�� ��������� 50)    
% n, m ������ ���� �������������� ������ �������
%
% (�) ������� ������ 16.01.06 18:17

% �������� m �� ���������
if nargin == 2
    m=50;
end

% �������� �� ��������������� � ����������� m � n
if ((prod(size(n)) > 1) | (n < 0))
    error('n must be a positive scalar!');
end

if ((prod(size(m)) > 1) | (m < 0))
    error('m must be a positive scalar!');
end

% ��������� ��� m, n - �����
if(mod(n,floor(n))~=0)
    error('n must be integer!');
end

if(mod(m,floor(m))~=0)
    error('m must be integer!');
end

% ���������� ������� fup(x)
y=1;

N=n;
for k=1:20
    p=1;
    for i=1:m
        p=p*sin(2*pi*k*(2^(-i))/(N+2))/(2*pi*k*(2^(-i))/(N+2));
    end
    y=y+2*((sin(pi*k/(N+2))/(pi*k/(N+2)))^N)*p*cos(2*pi*k*x/(N+2));
end
y=y/(N+2);

% fup_n(x)=0 ��� �������� x=[-(n+2)/2,(n+2)/2]
nums=find(abs(x)>(n+2)/2);
y(nums)=0;