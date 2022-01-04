function out = eupa(a,x,nsum,nprod)
% В этой функции реализуем атомарную функцию up(x) используя разложение АФ
% в быстросходящийся ряд Фурье.
% m - количество слагаемых в ряде Фурье по косинусам 
% n - количество слагаемых в произведении (преобразовании фурье от up)

% F = 0.0;

idx = 1:nsum;
coeff = ft_eupa(a, pi*idx, nprod)';
coeff_re = real(coeff); coeff_im = imag(coeff);
out = 0.5 + coeff_re*cos(pi*idx'*x) + coeff_im*sin(pi*idx'*x);
out(abs(x)>=1) = 0;

