function [F] = ft_pim(t,m)
% Определим  ПФ от АФ up(x) следующим образом
% t - аргумент
% n - кол-во слагаемых в произведении

Prom = ones(size(t));

for k=1:m
    c1 = sin((2*m-1)*t / (2*m)^k);
    s = 0;
        for nu=2:m
            s = s + (-1)^nu * sin((2*m-2*nu+1)*t / (2*m)^k);
        end % for nu
    c1 = c1 + s;
    c2 = (3*m - 2)*t / (2*m)^k;
    Prom = Prom .* c1 ./ c2;
end
F = Prom;