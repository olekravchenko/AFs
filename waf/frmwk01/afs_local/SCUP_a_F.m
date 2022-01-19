function y = SCUP_a_F(om, a, n)

% � ������ om=2^k * pi * a �������� ���������������� ���� 0/0. ������, ����
% ��������� ���������� �������� ����� � ������ (����� �� �����������)
%
% SCUP_a_F(om, a, n)
% ������ ��������� ������� scup_a(x)
%
% a - ������� �������
% n - ���������� ������������ ������ ��� ���������� ������������� ����� (����������� ������������) (�� �����. 50)    
%
% n - ������ ���� ������������� ����� ������
% a - ������������� ������������ (�������!) �����
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

% ��������� ��� a - �������
if (mod(a,floor(a))==0)
    error('a can not be an integer!');
end

% ���������� ������� SCUP_a_F(x)
y=ones(size(om));

cos2pa=cos(2*pi*a);
coef=1-cos2pa;
pa2=(pi*a)^2;

for k=1:n
    om_2k=om * (2^(-k)) ;
    y_numer=cos(2*om_2k)-cos2pa;
    y_denom=( 1 -  (om_2k.^2)/pa2 )*coef;
    y=y.*y_numer./y_denom; 
end
   