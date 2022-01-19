function y = TUP_a_F(om, a, n)

% TUP_a_F(om, a, n)
% ÑÏÅÊÒÐ ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ tup_a(x)
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

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ TUP_a_F(x)
y=ones(size(om));

sinpa=sin(pi*a);
pa=pi*a;

for k=1:n
    om_order2k=om * (2^(-k));
    y_numer=sin( pa - om_order2k );
    y_denom=sinpa*( 1 -  om_order2k/pa );
    y=y.*y_numer./y_denom; 
end
   