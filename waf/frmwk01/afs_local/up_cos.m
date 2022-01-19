function y = up_cos(x,n,m)

% ��������� ������� up(x,n,m)
% ���������� � ��� �����
%
% n - ���������� ������������ ������ ���������� (�� ��������� 50)
% m - ���������� ������������ ������ ��� ���������� ������������� ����� (�� ��������� 50)    
% n, m ������ ���� �������������� ������ �������
%
% (�) ������� ������ 16.01.06 15:56

% �������� n � m �� ���������
if nargin == 1
    n=50;
    m=50;
end
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

% ���������� ������� up(x)
y=0.5;

for j=1:n
    p=1;
    for k=1:m
        p=p*sin(pi*(2*j-1)*2^(-k))/(pi*(2*j-1)*2^(-k));
    end
    y=y+p*cos(pi*(2*j-1)*x);
end

% up(x)=0 ��� �������� x=[-1,1]
nums=find(abs(x)>1);
y(nums)=0;
    
        