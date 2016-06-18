function [F] = dn_ha(x,a,n)

tmp = 0;
d = mtseq(n);

s = 0.0;
for k = 1:2^n
        for j = 1:n
            pj = mod(k*2^j,2);
            s = s + a^(j-1) * (-1)^(pj * (k-1));
        end; % for j     
    tmp = tmp + d(k) .* ha(a^n * x + s - 2*k + 2, a, 20,20);
    s = 0.0;
end; % for k

F = tmp * 2^(-n) * a ^ (0.5*n*(n+3));