function out = ft_eupa(a,t,nprod)
% Fourier transform of eup_a(x) function
% a is an index of the eup_a
% t is argument
% nprod is number of multipliers

% out = 0*t;
idx = 1:nprod;
out = prod(ft_eupa0(a,t'*2.^(-idx)),2);
