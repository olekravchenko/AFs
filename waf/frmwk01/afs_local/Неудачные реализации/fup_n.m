function y = fup_n(x,n,m)
%TODO!!! ������� �� ��������! ��������� ���������� ������ ����� ���� n/4!!!

% ��������� ������� fup_n(x)
% ���������� � ��� �����
%
% n - ������� �������
% m - ���������� ������������ ������ ��� ���������� ������������� ����� (������������ ������������) (�� ��������� 10)    
% n, m ������ ���� �������������� ������ �������
%
% (�) ������� ������ 16.01.06 18:17

% �������� m �� ���������
if nargin == 2
    m=10;
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

N=n+1;
for k=1:20
    p=1;
    for i=1:m
        p=p*sin(pi*k*(2^(-i))/N)/(pi*k*(2^(-i))/N);
    end
    y=y+2*((sin(pi*k/N)/(pi*k/N))^N)*p*cos(2*pi*k*x/N);
end
y=y/N;

% fup_n(x)=0 ��� �������� x=[-(n+2)/2,(n+2)/2]
nums=find(abs(x)>(n+2)/2);
y(nums)=0;