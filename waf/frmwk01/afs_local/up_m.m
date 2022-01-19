function y = up_m(x,m,n)

% ��������� ������� up_m(x,m,n)
% ���������� � ��� �����
%
% m - ������� �������
% n - ���������� ������������ ������ ��� ���������� ������������� ����� (������������ ������������) (�� ��������� 50)    
% n, m ������ ���� �������������� ������ ������� 
%
% (�) ������� ������ 24.04.06 15:43

% �������� n �� ���������
if nargin == 2
    n=50;
end

% �������� �� ��������������� � ����������� m � n
if ((prod(size(n)) > 1) | (n < 0))
    error('n must be a positive scalar!');
end

if ((prod(size(m)) > 1) | (m < 0))
    error('m must be a positive scalar');
end

% ��������� ��� m, n - �����
if(mod(n,floor(n))~=0)
    error('n must be integer!');
end

if(mod(m,floor(m))~=0)
    error('m must be integer!');
end

% ���������� ������� up_m(x)
y=0.5;

for k=1:20
    p=1;
    for i=1:n        
        p=p*( (sin(m*k*pi*(2*m)^(-i))^2 )/( ((m^2)*k*pi*(2*m)^(-i))*sin(k*pi*(2*m)^(-i)) ));
    end
    y=y+p*cos(pi*k*x);
end

% up_m(x)=0 ��� �������� x=[-1,1]
nums=find(abs(x)>1);
y(nums)=0;