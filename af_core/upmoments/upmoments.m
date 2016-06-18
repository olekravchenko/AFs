function res = upmoments(x)

for k = 1:9    
    pk = mod(ceil(abs(x) * 2^k), 2);
    tmp = abs(x) * 2^k - ceil(abs(x) * 2^k);
    sk = sum(pk);
    
    s = 0;
    for j = 0:k        
        ind = k - j - 1;
        [t, r] = b(ind);
        if k - j- 1 == -1
            ind = 1;
        end            
        s = s + (tmp^j * r) / factorial(ind) / factorial(j);
    end
    s = s * ((-1)^sk * pk) / 2^(0.5 * k * (k - 1));
end;

res = s + 1;