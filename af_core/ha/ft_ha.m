function [F]=ft_ha(a,t,n)
% ���������  �� �� �� ha(x) ��������� �������
% a - ��������� �������
% t - ��������
% n - ���-�� ��������� � ������������

Prom=1;
for i=1:n,
    Prom=Prom.*sinc_(t/a^i);
end
F=Prom;