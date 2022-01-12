function out = hupa(x,a,nsum,nprod)
% В этой функции реализуем атомарную функцию up(x) используя разложение АФ
% в быстросходящийся ряд Фурье.
% m - количество слагаемых в ряде Фурье по косинусам 
% n - количество слагаемых в произведении (преобразовании фурье от up)

out = 0.0;

for k=1:nsum 
    out = out + cos(0.5*pi*k*x)*ft_hupa(pi*k,a,nprod);
end

out = out - min(out);
% F(logical(abs(x)>2))=0;
% F(F<0)=0;

% idx = 1:nsum;
% coeffs = ft_hupa(pi*idx,a,nprod);
% 
% out = 0.5 + coeffs * cos(0.5*pi*idx'*x);
% out(abs(x)>=2) = 0;

