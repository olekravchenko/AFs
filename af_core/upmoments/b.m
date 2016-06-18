function [tmp, res] = b(k)

if k == -1
    res = 1;
    tmp = [];
elseif k == 0
    res = 0.5;
    tmp = [];
elseif mod(k,2) == 0
    [tmp, res] = a(k);
    tmp = 0.5 * tmp;
    res = 0.5 * res;
else  
    n = 0.5 * (k + 1);
    [tmp, res] = a(2*n);
    
%     c = zeros(1,n+1);
%     for j = 0:n
%         c(j+1) = binomial(2*n,j);
%     end
    ind = 0:n;
    c = binomial(2*n,ind);
    tmp = sum(c .* tmp);
    tmp = tmp / (n * 2^(2*n + 1));
    res = tmp;
end % if