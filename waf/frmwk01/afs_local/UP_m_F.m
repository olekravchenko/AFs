function y = UP_m_F(om, m, n)

% UP_m_F(om, m, n)
% ÑÏÅÊÒÐ ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ up_m(x)
%
% m - ïîðÿäîê ôóíêöèè
% n - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅÐÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏÐÈ ÂÛ×ÈÑËÅÍÈÈ êîýôôèöèåíòîâ Ôóðüå (áåñêîíå÷íîãî ïðîèçâåäåíèÿ) (ïî óìîë÷àíèþ 50)    
% n, m ÄÎËÆÍÛ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌÈ ÖÅËÛÌÈ ×ÈÑËÀÌÈ 
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄÐÅÉ 24.04.06 15:42

% ÇÍÀ×ÅÍÈÅ n ÏÎ ÓÌÎË×ÀÍÈÞ
if nargin == 2
    n=50;
end

% ÏÐÎÂÅÐÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßÐÍÎÑÒÜ m è n
if ((prod(size(n)) > 1) | (n < 0))
    error('n must be a positive scalar!');
end

if ((prod(size(m)) > 1) | (m < 0))
    error('m must be a positive scalar!');
end

% ÏÐÎÂÅÐßÅÌ ×ÒÎ m, n - ÖÅËÛÅ
if (mod(n,floor(n))~=0)
    error('n must be an integer!');
end

if (mod(m,floor(m))~=0)
    error('m must be an integer!');
end

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ UP_m_F(x)
num=find(om==0);
om(num)=1;

y=1;
for k=1:n
    y=y.*( ( sin(m*om*(2*m)^(-k)) ).^2  )./( ((m^2)*om*(2*m)^(-k)).*sin(om*(2*m)^(-k)) );
end

y(num)=1;