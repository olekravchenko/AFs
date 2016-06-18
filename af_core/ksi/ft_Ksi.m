function [F]=ft_Ksi(t, n, q)
% ПФ от АФ Ksi(x) следующим образом
% n - "порядок" функции
% t - аргумент
% q - кол-во слагаемых в произведении

Prom=1;
for k=1:q
    Prom=Prom.*((sinc_(t/((n + 1)^k)))^n);
end
F=Prom;