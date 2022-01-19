function y = H_a_F(om, a, m)

% H_a_F(om, a, m)
% ÑÏÅÊÒÐ ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ h_a(x)
%
% a - ÏÎÐßÄÎÊ ÔÓÍÊÖÈÈ (a>1)
% m - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅÐÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏÐÈ ÂÛ×ÈÑËÅÍÈÈ ÁÅÑÊÎÍÅ×ÍÎÃÎ ÏÐÎÈÇÂÅÄÅÍÈß (ÏÎ ÓÌÎË×ÀÍÈÞ 50)   
% m ÄÎËÆÍÎ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌ ÖÅËÛÌ ×ÈÑËÎÌ5
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄÐÅÉ 24.04.06 17:37

% ÇÍÀ×ÅÍÈÅ m ÏÎ ÓÌÎË×ÀÍÈÞ
if nargin == 2
    m=50;
end

% ÏÐÎÂÅÐÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßÐÍÎÑÒÜ a è m
if ((prod(size(a)) > 1) | (a <= 1))
    error('a must be a positive scalar (a>1)!');
end

if ((prod(size(m)) > 1) | (m < 0))
    error('m must be a positive scalar!');
end

% ÏÐÎÂÅÐßÅÌ ×ÒÎ m - ÖÅËÎÅ
if(mod(m,floor(m))~=0)
    error('m must be an integer!');
end

n=find(om==0);
om(n)=1;

y=1;
for k=1:m
    y=y.*sin(om*a^(-k))./(om*a^(-k));
end

y(n)=1;