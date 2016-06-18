function [F] = dn_ksi(x,n)

tmp = 0;

for k = 0:n
    c = binomial(k,n);
    if c == 0
        c = 1;
    end
    tmp = tmp + c * (-1)^k * Ksi((n+1) * x + n - 2*k, n, 20,20);
end;

F = tmp * 2^(-n) * (n+1)^(n+1);