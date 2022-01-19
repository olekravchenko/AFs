function [a, b] = supp_af(af_fun, af_order)

% supp_af(af_fun, af_order)
% нопедекемхе мняхрекъ [a, b] гюдюммни юрнлюпмни тсмйжхх
%
% af_fun - яяшкйю мю ют 
% af_order - онпъднй ют
%
% (я) йньекеб юмдпеи 24.09.06 

if (~isa(af_fun, 'function_handle'))
   error('af_fun must be a function handle!');
end 

fun_name=func2str(af_fun);

if (strcmp(fun_name, 'fup_n'))
    fup_n(0,af_order); % опнбепйю дносярхлнярх оюпюлерпю af_order
    a=-(af_order+2)/2;
    b=(af_order+2)/2;
    return
end

if (strcmp(fun_name, 'up_m'))
    up_m(0,af_order); % опнбепйю дносярхлнярх оюпюлерпю af_order
    a=-1;
    b=1;
    return
end

if (strcmp(fun_name, 'h_a'))
    h_a(0,af_order); % опнбепйю дносярхлнярх оюпюлерпю af_order
    a=-1/(af_order-1);
    b=1/(af_order-1);
    return
end

if (strcmp(fun_name, 'eup_a'))
    eup_a(0,af_order); % опнбепйю дносярхлнярх оюпюлерпю af_order
    a=-1;
    b=1;
    return
end

if (strcmp(fun_name, 'hup_a'))
    hup_a(0,af_order); % опнбепйю дносярхлнярх оюпюлерпю af_order
    a=-2;
    b=2;
    return
end

if (strcmp(fun_name, 'scup_a'))
    scup_a(0,af_order); % опнбепйю дносярхлнярх оюпюлерпю af_order
    a=-2;
    b=2;
    return
end

error('Unknown atomic function while evaluating its support interval!');







    
    

