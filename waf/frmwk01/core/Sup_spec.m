function y=Sup_spec(x, fun, eps)

% Sup_spec(x, fun, eps)
% ÓÒÎ×ÍÅÍÈÅ ÍÎÑÈÒÅËß ×ÅÒÍÎÉ ÔÓÍÊÖÈÈ 
%
% x - ÀÐÃÓÌÅÍÒ ÔÓÍÊÖÈÈ fun
% fun - ÔÓÍÊÖÈß, ÇÀÄÀÍÍÀß ÑÂÎÈÌÈ ÇÍÀ×ÅÍÈßÌÈ Â ÒÎ×ÊÀÕ x
% eps - ÒÎ×ÍÎÑÒÜ ÂÛ×ÈÑËÅÍÈß ÔÓÍÊÖÈÈ    
% 
% y - ÍÎÑÈÒÅËÜ [-y, y] ÔÓÍÊÖÈÈ fun
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄÐÅÉ 31.05.06 10:59


b_num=0; % ÍÎÌÅÐ ÊÐÀÉÍÅÉ ÒÎ×ÊÈ ÍÎÑÈÒÅËß 

i=1; 

for i=1:(length(fun)/2)
    if (fun(i)>eps)
        b_num=i;
        break;
    end
end

if (b_num==0)
    error('Precision eps in Support_spec is wrong!');
end

y=abs(x(b_num));
