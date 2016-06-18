function [F]=ft_gkh(t,k,h,n)
% Fourier Transform of gkh(x) 
% t - аргумент
% x - time variable
% k,h - gkh parameters
% n - product number of terms

Prom=ones(1,length(t));
% Prom = 1;
k2 = k^2;
tmp = cos(0.6667*k*h);
a = k2 / (1 - tmp);


for ind = 1:n
    c1          = cos(2*t*h*3^(-ind)) - tmp;
    c2          = k2 - t.^2 * 9^(1-ind);
    if isempty(nonzeros(c2)) == 1
        c2(:) = 1;
    end
    c3          = c1 ./ c2;
    Prom        = a * Prom .* c3;
end

F = Prom;