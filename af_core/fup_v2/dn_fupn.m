function [F] = dn_fupn(n,x)

tmp = 0;

for k = 0:n + 2
    c1 = binomial(n+1, k);
    if k == 0
        c2 = 0;
    else
        c2 = binomial(n+1, k-1);
    end
    tmp = tmp + (c1 - c2) * fupn(n, 2^(n-1) * x - (2*(k - 1) - n) / 2^(n+2));
end;

F = tmp * 2^(n + 1);