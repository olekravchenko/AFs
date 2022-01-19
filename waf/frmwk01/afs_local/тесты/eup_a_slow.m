function y = eup_a_slow(x,a,n)

% ������ ����� �������������� ����� - ��������� - ��� �������� 
% eup_a(x, a, n)
% ��������� ������� eup_a(x)
%
% a - ������� �������
% n - ���������� ������������ ������ ��� ���������� ������������� ����� (����������� ������������) (�� �����. 50)    
%
% n - ������ ���� ������������� ����� ������
% a - ������������� ������������ �����
%
% (�) ������� ������ 13.08.06 12:19

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

L_x=length(x);
y=zeros(1,L_x);
% ���������� ������� eup_a(x)
for k=1:L_x
    %y(1,k)=(1/(2*pi))*quadl(@(omeg) (EUP_a_F(omeg,a,n)*exp(j*omeg*x(k))),-10*pi,10*pi );
    k 
    y(1,k)=(1/(2*pi))*quadl(@(omeg) EUP_a_F(omeg,a,n).*exp(j*omeg*x(k)),-10*pi,10*pi );
end

% for k=1:20    
%     y=y+H_a_F(k*pi*(a-1),a,m).*cos(pi*k*x*(a-1));
% end
% y=y.*(a-1);
% 
% % h_a(x)=0 ��� �������� x=[-1/(a-1),1/(a-1)]
% nums=find(abs(x)>(1/(a-1)));
% y(nums)=0;

