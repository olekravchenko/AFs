function [F]=up(x)
% Fourier Approximation
% of up(x)

F = 0.0;

% m,n are fixed
m = 10;
n = 15;

for i=1:m 
    F = F + cos(pi*i*x)*ft_up(pi*i,n);
end;

F = F + 0.5;

F(logical(abs(x)>1))=0;

% F(F<0)=0;