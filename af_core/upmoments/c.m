function [tmp, res] = c(k)

if k == 0
    res = 1;
    tmp = [];
elseif mod(k,2) == 1
    res = 0;
    tmp = [];
else
    k = 0.5 * k;   
    s = 0;
    tmp = zeros(1,k+1);
    tmp(1) = 1;
    for p = 1:k
        for j = 0:p-1        
            s = s + (-1)^(p-j) * tmp(j + 1) / factorial(2*(p - j)+1);            
        end      
        tmp(p+1) = s / (4^(p) - 1);
        s = 0;
    end % for       
    res = tmp(k+1);
end % if