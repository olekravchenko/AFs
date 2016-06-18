function [F] = gkh(x,k,h,n,m)
% atomic function gkh(x,k,h,n,m) 
% Fourier approximation
% x - time variable
% k,h - gkh parameters
% n - product number of terms
% m - sum number of terms

F = 0.0;

for ind = 1:m 
    ft = ft_gkh(pi*ind,k,h,n);
    F = F + cos(pi*ind*x) * ft;
end;

% F = F + 0.5;
% F(logical(abs(x)>1))=0;
% F(F<0)=0;
F = (F - min(F));
F(logical(abs(x)>1))=0;
F(F<0)=0;