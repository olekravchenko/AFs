function [F]=ft_ha(a,t,n)
% Определим  ПФ от АФ ha(x) следующим образом
% a - основание функции
% t - аргумент
% n - кол-во слагаемых в произведении

Prom=1;
for i=1:n,
    Prom=Prom.*sinc_(t/a^i);
end
F=Prom;