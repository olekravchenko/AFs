function y = FUP_n_F(om, n, m)

% FUP_n_F(om, n, m)
% ÑÏÅÊÒÐ ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ fup_n(x)
%
% n - ïîðÿäîê ôóíêöèè
% m - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅÐÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏÐÈ ÂÛ×ÈÑËÅÍÈÈ êîýôôèöèåíòîâ Ôóðüå (áåñêîíå÷íîãî ïðîèçâåäåíèÿ) (ïî óìîë÷àíèþ 50)    
% n, m ÄÎËÆÍÛ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌÈ ÖÅËÛÌÈ ×ÈÑËÀÌÈ 
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄÐÅÉ 22.04.06 11:11

% ÇÍÀ×ÅÍÈÅ m ÏÎ ÓÌÎË×ÀÍÈÞ
if nargin == 2
    m=50;
end

% ÏÐÎÂÅÐÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßÐÍÎÑÒÜ m è n
if ((prod(size(n)) > 1) | (n < 0))
    error('n must be a positive scalar!');
end

if ((prod(size(m)) > 1) | (m < 0))
    error('m must be a positive scalar!');
end

% ÏÐÎÂÅÐßÅÌ ×ÒÎ m, n - ÖÅËÛÅ
if(mod(n,floor(n))~=0)
    error('n must be an integer!');
end

if(mod(m,floor(m))~=0)
    error('m must be an integer!');
end

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ FUP_n_F(x)
num=find(om==0);
om(num)=1;

y=ones(size(om));
for k=1:m
    omk=om*(2^(-k));
    ysin=sin(omk);
    y1=ysin./omk;
    y=y.*y1;
    %y=y.*(sin(om*(2^(-k)))./(om*(2^(-k))));
end
y=((sin(om/2)./(om/2)).^n).*y;

y(num)=1;