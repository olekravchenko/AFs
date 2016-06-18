function [F] = dn_up(x,n)

tmp = 0;
d = mtseq(n);

for k = 1:2^n
    tmp = tmp + d(k) * up(2^n * x + 2^n + 1 - 2*k, 20,20);
end;

F = tmp * 2^(binomial(n,2) + 1);