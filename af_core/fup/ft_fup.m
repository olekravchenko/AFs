function [F]=ft_fup(t,n,qnum)
% �� �� �� fup_N(x) ��������� �������
% N - ������� fup_N
% t - ��������
% q - ���-�� ��������� � ������������

Prom = ones(size(t));
tmp = sinc_(t/2^n) .^ n;
for k=n+2:qnum
    Prom=Prom.*sinc_(t/2^k);
end
F=Prom .* tmp;

