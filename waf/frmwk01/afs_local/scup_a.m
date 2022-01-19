function y = scup_a(x,a,n)

% scup_a(x,a,m)
% ÀÒÎÌÀĞÍÀß ÔÓÍÊÖÈß scup_a(x)
%
% a - ÏÎĞßÄÎÊ ÔÓÍÊÖÈÈ
% n - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅĞÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏĞÈ ÂÛ×ÈÑËÅÍÈÈ ÊÎİÔÔÈÖÈÅÍÒÎÂ ÔÓĞÜÅ (ÁÅÑÊÎÍÅ×ÎÃÎ ÏĞÎÈÇÂÅÄÅÍÈß) (ÏÎ ÓÌÎË×. 50)    
%
% n - ÄÎËÆÍÎ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌ ÖÅËÛÌ ×ÈÑËÎÌ
% a - ÏÎËÎÆÈÒÅËÜÍÎÅ ÂÅÙÅÑÒÂÅÍÍÎÅ (ÍÅÖÅËÎÅ!) ×ÈÑËÎ
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄĞÅÉ 02.08.06 10:27

% ÇÍÀ×ÅÍÈÅ n ÏÎ ÓÌÎË×ÀÍÈŞ
if nargin == 2
    n=50;
end

% ÏĞÎÂÅĞÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßĞÍÎÑÒÜ a è n
if ((prod(size(n)) > 1) || (n < 0))
    error('n must be a positive scalar!');
end

if ((prod(size(a)) > 1) || (a < 0))
    error('a must be a positive scalar!');
end

% ÏĞÎÂÅĞßÅÌ ×ÒÎ n - ÖÅËÎÅ
if (mod(n,floor(n))~=0)
    error('n must be an integer!');
end

% ÏĞÎÂÅĞßÅÌ ×ÒÎ a - ÍÅÖÅËÎÅ
if (mod(a,floor(a))==0)
    error('a must not be an integer!');
end

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ scup_a(x)
y=0.5;

for k=1:20
    y=y+SCUP_a_F(k*pi/2,a,n).*cos(pi*k*x/2);
end
y=y/2;

% scup_a(x)=0 ÂÍÅ ÍÎÑÈÒÅËß x=[-2,2]
nums=find(abs(x)>2);
y(nums)=0;
