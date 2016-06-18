function [F]=ft_Ksi(t, n, q)
% �� �� �� Ksi(x) ��������� �������
% n - "�������" �������
% t - ��������
% q - ���-�� ��������� � ������������

Prom=1;
for k=1:q
    Prom=Prom.*((sinc_(t/((n + 1)^k)))^n);
end
F=Prom;