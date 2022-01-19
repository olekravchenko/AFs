function y = FUP_n_F(om, n, m)

% FUP_n_F(om, n, m)
% ������ ��������� ������� fup_n(x)
%
% n - ������� �������
% m - ���������� ������������ ������ ��� ���������� ������������� ����� (������������ ������������) (�� ��������� 50)    
% n, m ������ ���� �������������� ������ ������� 
%
% (�) ������� ������ 22.04.06 11:11

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
    error('n must be an integer!');
end

if(mod(m,floor(m))~=0)
    error('m must be an integer!');
end

% ���������� ������� FUP_n_F(x)
num=find(om==0);
om(num)=1;

y=ones(size(om));
for k=1:m
    omk=om*(2^(-k));
    ysin=sin(omk);
    y1=ysin./omk;
    y=y.*y1;
    %y=y.*(sin(om*(2^(-k)))./(om*(2^(-k))));
end
y=((sin(om/2)./(om/2)).^n).*y;

y(num)=1;