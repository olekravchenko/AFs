function y = hup_a1(x,a,n)

% реярнбюъ тсмйжхъ дкъ опнбепйх бшвхякемхъ hup_a(x)
% бшвхякемхе hup_a(x) вепег ябепрйс eup_a(x)

y=zeros(1,length(x));

for k=1:length(x)
    k
    y(1,k)=quadl(@(tau) eup_a(-tau,a).*eup_a(x(k)-tau,a), -2,2);
end