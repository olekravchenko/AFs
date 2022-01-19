function y = moment_b(n)

% ��������� ���������� �������� b  
% ��������� ������� up(x)
%
% n - ������� ������� b
% n ������ ���� ������������� ����� ������
%
% (�) ������� ������ 01.10.05 11:40

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
    y=0.5;
elseif (mod(n,2)==1)
    % � ������ ��������� n 
    n=(n+1)/2;
    sum=0;
    for k=0:n
        sum=sum+nchoosek(2*n,2*k) * moment_a(2*k);
    end
    y=(1/(n*2^(2*n+1)))*sum;
else
    % � ������ ������� ������� b ����������� �� �������
    y = 0.5*moment_a(n);
end