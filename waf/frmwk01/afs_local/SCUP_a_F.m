function y = SCUP_a_F(om, a, n)

% Â ÒÎ×ÊÀÕ om=2^k * pi * a ÏÎËÓ×ÀÅÌ ÍÅÎÏÐÅÆÅÄÅÍÍÎÑÒÜ ÒÈÏÀ 0/0. ÂÈÄÈÌÎ, ÍÀÄÎ
% ÄÎÏÎËÍßÒÜ ÏÎËÓÑÓÌÌÎÉ ÏÐÅÄÅËÎÂ ÑËÅÂÀ È ÑÏÐÀÂÀ (ÇÄÅÑÜ ÍÅ ÐÅÀËÈÇÎÂÀÍÎ)
%
% SCUP_a_F(om, a, n)
% ÑÏÅÊÒÐ ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ scup_a(x)
%
% a - ÏÎÐßÄÎÊ ÔÓÍÊÖÈÈ
% n - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅÐÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏÐÈ ÂÛ×ÈÑËÅÍÈÈ ÊÎÝÔÔÈÖÈÅÍÒÎÂ ÔÓÐÜÅ (ÁÅÑÊÎÍÅ×ÎÃÎ ÏÐÎÈÇÂÅÄÅÍÈß) (ÏÎ ÓÌÎË×. 50)    
%
% n - ÄÎËÆÍÎ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌ ÖÅËÛÌ ×ÈÑËÎÌ
% a - ÏÎËÎÆÈÒÅËÜÍÎÅ ÂÅÙÅÑÒÂÅÍÍÎÅ (ÍÅÖÅËÎÅ!) ×ÈÑËÎ
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄÐÅÉ 02.08.06 10:27

% ÇÍÀ×ÅÍÈÅ n ÏÎ ÓÌÎË×ÀÍÈÞ
if nargin == 2
    n=50;
end

% ÏÐÎÂÅÐÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßÐÍÎÑÒÜ a è n
if ((prod(size(n)) > 1) || (n < 0))
    error('n must be a positive scalar!');
end

if ((prod(size(a)) > 1) || (a < 0))
    error('a must be a positive scalar!');
end

% ÏÐÎÂÅÐßÅÌ ×ÒÎ n - ÖÅËÎÅ
if (mod(n,floor(n))~=0)
    error('n must be an integer!');
end

% ÏÐÎÂÅÐßÅÌ ×ÒÎ a - ÍÅÖÅËÎÅ
if (mod(a,floor(a))==0)
    error('a can not be an integer!');
end

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ SCUP_a_F(x)
y=ones(size(om));

cos2pa=cos(2*pi*a);
coef=1-cos2pa;
pa2=(pi*a)^2;

for k=1:n
    om_2k=om * (2^(-k)) ;
    y_numer=cos(2*om_2k)-cos2pa;
    y_denom=( 1 -  (om_2k.^2)/pa2 )*coef;
    y=y.*y_numer./y_denom; 
end
   