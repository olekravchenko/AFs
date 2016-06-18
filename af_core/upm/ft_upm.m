function [F]=ft_upm(t,m,M)
% Определим  ПФ от АФ up(x) следующим образом
% t - аргумент
% n - кол-во слагаемых в произведении

Prom = ones(size(t));
% m1 = 2*m;

for k=1:M
    c1 = sin((m*t) / (2*m)^k) .^ 2;
    c2 = sin(t / (2*m)^k) .* ((m^2*t)/(2*m)^k);
    Prom = Prom .* c1 ./ c2;
end
F = Prom;