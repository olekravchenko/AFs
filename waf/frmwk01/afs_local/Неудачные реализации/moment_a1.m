function y = moment_a1(n)

% ��������� ���������� �������� a  
% ��������� ������� up(x)
%
% n - ������� ������� a
% n ������ ���� ������������� ����� ������
%
% (�) ������� ������ 30.09.05 21:45

% �������� �� ��������������� � �����������
if ((prod(size(n)) > 1) | (n < 0))
    error('n must be a positive scalar!');
end

% ��������� ��� n �����
if(mod(n,floor(n))~=0)
    error('n must be integer!');
end

if (n==0)
    % � ������ n=0 ���������=1
    y=1;
elseif (mod(n,2)==1)
    % � ������ ��������� n ���������=0
    y=0;
else
    % � ������ ������� ������� a ����������� �����������
    sum=0;
    for k=1:n
        sum=sum+moment_a1(n-2*k)/(factorial(n-2*k)*factorial(2*k+1));
    end
    y=sum*factorial(2*n)/(4^n-1);
    %y = ((-1)^(n)) * factorial(2*n) * koef_c(2*n);
end
