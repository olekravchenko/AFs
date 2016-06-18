function [F]=ft_fup(t,n,qnum)
% ПФ от АФ fup_N(x) следующим образом
% N - порядок fup_N
% t - аргумент
% q - кол-во слагаемых в произведении

Prom = ones(size(t));
tmp = sinc_(t/2^n) .^ n;
for k=n+2:qnum
    Prom=Prom.*sinc_(t/2^k);
end
F=Prom .* tmp;

