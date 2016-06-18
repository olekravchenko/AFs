function [F]=ft_mup(t,n,M)
% ���������  �� �� �� mupn(x) ��������� �������
% t - ��������
% n - ���-�� ��������� � ������������

Prom = ones(size(t));

for k=1:M
    c1 = sinc_(t * 2^(1-n*k));
    c2 = cos(t / 2^(n*k));
    Prom = Prom .* c1 .* c2;
end
F = Prom;