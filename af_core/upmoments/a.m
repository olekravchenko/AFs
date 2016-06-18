function [tmp, res] = a(k)

if k == 0
    res = 1;
    tmp = [];
elseif mod(k,2) == 1
    res = 0; 
    tmp = [];
else    
    [cvect, cval] = c(k); 
    ind = 0:0.5*k;
    tmp = cvect .* (-1).^(ind) .* factorial(2*ind);
    res = cval * (-1)^(0.5 * k) * factorial(k);
end % if