function y = HUP_a_F(om, a, n)

% HUP_a_F(om, a, n)
% ������ ��������� ������� hup_a(x)
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
if ((numel(n) > 1) || (n < 0))
    error('n must be a positive scalar!');
end

if ((numel(a) > 1) || (a < 0))
    error('a must be a positive scalar!');
end

% ��������� ��� n - �����
if (mod(n,floor(n))~=0)
    error('n must be an integer!');
end

% ���������� ������� HUP_a_F(x)
y=ones(size(om));

lna2=(log(a))^2;
a1=a^2+1;
a2=(a-1)^2;
for k=0:n
    y_numer=a1 - 2*a * cos( om * (2^(-k)) );
    y_denom=a2*( 1 + ( om.^2 )/( lna2 * 2^(2*k) ) );
    y=y.*y_numer./y_denom; 
end