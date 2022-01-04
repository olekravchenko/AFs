function out = ft_eupa0(a,t)
% Fourier transform of eup_a(x) function
% a is an index of the eup_a
% t is argument
% nprod is number of multipliers

out = shc(0.5*log(a)-1i*t)/shc(0.5*log(a));
