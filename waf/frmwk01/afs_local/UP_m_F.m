function y = UP_m_F(om, m, n)

% UP_m_F(om, m, n)
% ������ ��������� ������� up_m(x)
%
% m - ������� �������
% n - ���������� ������������ ������ ��� ���������� ������������� ����� (������������ ������������) (�� ��������� 50)    
% n, m ������ ���� �������������� ������ ������� 
%
% (�) ������� ������ 24.04.06 15:42

% �������� n �� ���������
if nargin == 2
    n=50;
end

% �������� �� ��������������� � ����������� m � n
if ((prod(size(n)) > 1) | (n < 0))
    error('n must be a positive scalar!');
end

if ((prod(size(m)) > 1) | (m < 0))
    error('m must be a positive scalar!');
end

% ��������� ��� m, n - �����
if (mod(n,floor(n))~=0)
    error('n must be an integer!');
end

if (mod(m,floor(m))~=0)
    error('m must be an integer!');
end

% ���������� ������� UP_m_F(x)
num=find(om==0);
om(num)=1;

y=1;
for k=1:n
    y=y.*( ( sin(m*om*(2*m)^(-k)) ).^2  )./( ((m^2)*om*(2*m)^(-k)).*sin(om*(2*m)^(-k)) );
end

y(num)=1;