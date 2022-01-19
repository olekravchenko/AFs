function y = HUP_a_F(om, a, n)

% HUP_a_F(om, a, n)
% ÑÏÅÊÒÐ ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ hup_a(x)
%
% a - ÏÎÐßÄÎÊ ÔÓÍÊÖÈÈ
% n - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅÐÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏÐÈ ÂÛ×ÈÑËÅÍÈÈ ÊÎÝÔÔÈÖÈÅÍÒÎÂ ÔÓÐÜÅ (ÁÅÑÊÎÍÅ×ÎÃÎ ÏÐÎÈÇÂÅÄÅÍÈß) (ÏÎ ÓÌÎË×. 50)    
%
% n - ÄÎËÆÍÎ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌ ÖÅËÛÌ ×ÈÑËÎÌ
% a - ÏÎËÎÆÈÒÅËÜÍÎÅ ÂÅÙÅÑÒÂÅÍÍÎÅ ×ÈÑËÎ
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄÐÅÉ 02.08.06 10:27

% ÇÍÀ×ÅÍÈÅ n ÏÎ ÓÌÎË×ÀÍÈÞ
if nargin == 2
    n=50;
end

% ÏÐÎÂÅÐÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßÐÍÎÑÒÜ a è n
if ((numel(n) > 1) || (n < 0))
    error('n must be a positive scalar!');
end

if ((numel(a) > 1) || (a < 0))
    error('a must be a positive scalar!');
end

% ÏÐÎÂÅÐßÅÌ ×ÒÎ n - ÖÅËÎÅ
if (mod(n,floor(n))~=0)
    error('n must be an integer!');
end

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ HUP_a_F(x)
y=ones(size(om));

lna2=(log(a))^2;
a1=a^2+1;
a2=(a-1)^2;
for k=0:n
    y_numer=a1 - 2*a * cos( om * (2^(-k)) );
    y_denom=a2*( 1 + ( om.^2 )/( lna2 * 2^(2*k) ) );
    y=y.*y_numer./y_denom; 
end