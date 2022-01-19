function y = af_norm(af_fun, af_order)

% af_norm(af_fun, af_order)
% бшвхякемхе L2-мнплш юрнлюпмни тсмйжхх
%
% af_fun - яяшкйю мю ют 
% af_order - онпъднй ют
%
% (я) йньекеб юмдпеи 24.09.06 

[a, b] = supp_af(af_fun, af_order);
y=sqrt(quadl(@(x) com_fun_2(af_fun(x, af_order)),a,b));
