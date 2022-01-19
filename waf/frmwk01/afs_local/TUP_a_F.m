function y = TUP_a_F(om, a, n)

% TUP_a_F(om, a, n)
% ������ ��������� ������� tup_a(x)
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

% ���������� ������� TUP_a_F(x)
y=ones(size(om));

sinpa=sin(pi*a);
pa=pi*a;

for k=1:n
    om_order2k=om * (2^(-k));
    y_numer=sin( pa - om_order2k );
    y_denom=sinpa*( 1 -  om_order2k/pa );
    y=y.*y_numer./y_denom; 
end
   