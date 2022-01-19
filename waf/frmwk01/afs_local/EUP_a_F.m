function y = EUP_a_F(om, a, n)

% EUP_a_F(om, a, n)
% ������ ��������� ������� eup_a(x)
%
% a - ������� �������
% n - ���������� ������������ ������ ��� ���������� ������������� ����� (����������� ������������) (�� �����. 50)    
%
% n - ������ ���� ������������� ����� ������
% a - ������������� ������������ �����, a~=1
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

if (a==1)
    error('a ~= 1!');
end    

% ��������� ��� n - �����
if (mod(n,floor(n))~=0)
    error('n must be an integer!');
end

% ���������� ������� EUP_a_F(om)
y=ones(size(om));

lga2=log(a)/2;
coef=sinh(lga2)/lga2;

for k=1:n
    arg1 = lga2-j*om*(2^(-k));
    y=y.*( sinh(arg1)./arg1 )/coef; 
end


