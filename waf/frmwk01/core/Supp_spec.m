function [xl, xr]=Supp_spec(x, fun, eps)

% Supp_spec(x, fun, eps)
% ÓÒÎ×ÍÅÍÈÅ ÍÎÑÈÒÅËß ÔÈÍÈÒÍÎÉ ÔÓÍÊÖÈÈ 
%
% x - ÀÐÃÓÌÅÍÒ ÔÓÍÊÖÈÈ fun
% fun - ÔÓÍÊÖÈß, ÇÀÄÀÍÍÀß ÑÂÎÈÌÈ ÇÍÀ×ÅÍÈßÌÈ Â ÒÎ×ÊÀÕ x
% eps - ÒÎ×ÍÎÑÒÜ ÂÛ×ÈÑËÅÍÈß ÔÓÍÊÖÈÈ    
% 
% y - ÍÎÑÈÒÅËÜ [-y, y] ÔÓÍÊÖÈÈ fun
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄÐÅÉ 31.05.06 10:59


b_num=0; % ÔËÀÃ ÎÒÑÓÒÑÒÂÈß ÐÅÇÓËÜÒÀÒÀ 

for i=1:(length(fun)/2)
    if (abs(fun(i))>eps)
        b_num=i;
        break;
    end
end

if (b_num==0)
    error('Precision eps in Support_spec is wrong!');
end

xl=x(b_num);

b_num=0; % ÔËÀÃ ÎÒÑÓÒÑÒÂÈß ÐÅÇÓËÜÒÀÒÀ

for i=length(fun):-1:(length(fun)/2)
    if (abs(fun(i))>eps)
        b_num=i;
        break;
    end
end

if (b_num==0)
    error('Precision eps in Support_spec is wrong!');
end

xr=x(b_num);
