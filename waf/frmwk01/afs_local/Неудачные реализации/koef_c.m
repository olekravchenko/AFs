function y = koef_c(n)

% ��������������� ��������� ���������� 
% ������������� c, �������������� ���
% ���������� �������� ��������� ������� up(x)
%
% n - ����� ������������ c
% n ������ ���� ������ ������������� ������
%
% (�) ������� ������ 30.09.05 21:15


% �������� �� ��������������� � �����������
if ((prod(size(n)) > 1) | (n < 0))
    error('n must be a positive scalar!');
end

% ��������� ��� n ����� � ������
if(mod(n,2)~=0)
    error('n must be even!');
end

if (n==0)
    % � ������ n=0 ��������� =1
    y=1;
else
    % � ������ n~=0 ������������ c ����������� ����������
    
    % ������� �� 2n � ��������� n
    n=n/2; 
    
    sum=0;
    for j=0:n-1
        sum=sum+(-1)^(n-j)*koef_c(2*j)/factorial(2*n-2*j+1);
    end
    y=1/(4^n-1)*sum;
end

