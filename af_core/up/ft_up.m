function [F]=ft_up(t,n)
% Определим  ПФ от АФ up(x) следующим образом
% t - аргумент
% n - кол-во слагаемых в произведении

Prom=1;
for i=1:n
    Prom=Prom.*sinc(t/2^i);
end
F=Prom;