function [F]=ft_up(t,n)
% Fourier Transform of up(x)

Prom=1;
for i=1:n,
    Prom=Prom.*sinc_(t/2^i);
end
F=Prom;