function y = EUP_a_F(om, a, n)

% EUP_a_F(om, a, n)
% ÑÏÅÊÒÐ ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ eup_a(x)
%
% a - ÏÎÐßÄÎÊ ÔÓÍÊÖÈÈ
% n - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅÐÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏÐÈ ÂÛ×ÈÑËÅÍÈÈ ÊÎÝÔÔÈÖÈÅÍÒÎÂ ÔÓÐÜÅ (ÁÅÑÊÎÍÅ×ÎÃÎ ÏÐÎÈÇÂÅÄÅÍÈß) (ÏÎ ÓÌÎË×. 50)    
%
% n - ÄÎËÆÍÎ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌ ÖÅËÛÌ ×ÈÑËÎÌ
% a - ÏÎËÎÆÈÒÅËÜÍÎÅ ÂÅÙÅÑÒÂÅÍÍÎÅ ×ÈÑËÎ, a~=1
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

if (a==1)
    error('a ~= 1!');
end    

% ÏÐÎÂÅÐßÅÌ ×ÒÎ n - ÖÅËÎÅ
if (mod(n,floor(n))~=0)
    error('n must be an integer!');
end

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ EUP_a_F(om)
y=ones(size(om));

lga2=log(a)/2;
coef=sinh(lga2)/lga2;

for k=1:n
    arg1 = lga2-j*om*(2^(-k));
    y=y.*( sinh(arg1)./arg1 )/coef; 
end


