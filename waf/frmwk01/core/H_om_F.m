function y=H_om_F(om, AF_F, af_order, p)

% H_om_F(om, AF_F, af_order, p)
% ÑÏÅÊÒÐ ÑÎÏÐßÆÅÍÍÎÃÎ ÇÅÐÊÀËÜÍÎÃÎ ÏÑÅÂÄÎÔÈËÜÒÐÀ ÂÅÉÂËÅÒÎÂ ÊÐÀÂ×ÅÍÊÎ-ÐÂÀ×ÅÂÀ
%
% om - ×ÀÑÒÎÒÀ
% AF_F - ÑÑÛËÊÀ ÍÀ ÑÏÅÊÒÐ ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ
% af_order - ÏÎÐßÄÎÊ ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ
% p - ÏÎÐßÄÎÊ ÂÅÉÂËÅÒÀ (ÑÒÅÏÅÍÜ ÌÍÎÆÈÒÅËß (cos(om/2))^p)    
% p ÄÎËÆÍÎ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌ ÖÅËÛÌ ×ÈÑËÎÌ (ÏÎ ÓÌÎË×. 2)
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄÐÅÉ 24.08.06
%

% ÇÍÀ×ÅÍÈÅ p ÏÎ ÓÌÎË×ÀÍÈÞ
if nargin == 3
    p=2;
end

% ÏÐÎÂÅÐÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßÐÍÎÑÒÜ p
if ((numel(p) > 1) || (p < 0))
    error('p must be a positive scalar!');
end

% ÏÐÎÂÅÐßÅÌ ×ÒÎ p - ÖÅËÎÅ
if(mod(p,floor(p))~=0)
    error('p must be an integer!');
end

if (~isa(AF_F, 'function_handle'))
   error('AF_F must be a function handle!');
end 

% ÂÛ×ÈÑËÅÍÈÅ ÔÈËÜÒÐÀ
y = sqrt(2) * ...
    cos(om/2).^p .* ...
    AF_F(om,af_order);
        
    


   

    
        