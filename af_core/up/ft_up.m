function [F]=ft_up(t,n)
% ���������  �� �� �� up(x) ��������� �������
% t - ��������
% n - ���-�� ��������� � ������������

Prom=1;
for i=1:n
    Prom=Prom.*sinc(t/2^i);
end
F=Prom;