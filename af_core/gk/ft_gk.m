function [y,r1,r2] = ft_gk(t,k,n)

% % a - ������� �������
% % n - ���������� ������������ ������ ��� ���������� ������������� ����� 
% %     (����������� ������������) (�� �����. 50)    
% %
% % n - ������ ���� ������������� ����� ������
% 
% % �������� n �� ���������

if nargin == 2
    n=50;
end
if ((prod(size(n)) > 1) || (n < 0))
    error('n must be a positive scalar!');
end

% ��������� ��� n - �����
if (mod(n,floor(n))~=0)
    error('n must be an integer!');
end


p = 1;
% r1 = 1;
% r2 = 1;

k2 = k^2;
a = k2 / (1-cos(2*k/3));
for ind = 1:n   
    if isnan((cos(2*t/3^ind) - cos(2*k/3)) ./ (k2 - t.^2 / 3^(2*ind-2)))==0
        p = p .* a .* (cos(2*t/3^ind) - cos(2*k/3)) ./ (k2 - t.^2 / 3^(2*ind-2));
    end
end
    
y = p;
