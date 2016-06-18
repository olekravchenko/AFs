function [F] = ft_hupa(t,a,m)
% Определим  ПФ от АФ up(x) следующим образом
% t - аргумент
% n - кол-во слагаемых в произведении

Prom = ones(size(t));

for k = 1:m
    c1 = a^2 + 1 - 2*a*cos(t*2^(-k));
    c2 = (a - 1)^2 * (1 + (t/((log(a)*2^k))).^2);
    Prom = Prom .* c1 ./ c2;
end
F = Prom;