function y = eup_a(x,a,n)

% eup_a(x, a, n)
% ÀÒÎÌÀĞÍÀß ÔÓÍÊÖÈß eup_a(x)
%
% a - ÏÎĞßÄÎÊ ÔÓÍÊÖÈÈ
% n - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅĞÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏĞÈ ÂÛ×ÈÑËÅÍÈÈ ÊÎİÔÔÈÖÈÅÍÒÎÂ ÔÓĞÜÅ (ÁÅÑÊÎÍÅ×ÎÃÎ ÏĞÎÈÇÂÅÄÅÍÈß) (ÏÎ ÓÌÎË×. 50)    
%
% n - ÄÎËÆÍÎ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌ ÖÅËÛÌ ×ÈÑËÎÌ
% a - ÏÎËÎÆÈÒÅËÜÍÎÅ ÂÅÙÅÑÒÂÅÍÍÎÅ ×ÈÑËÎ
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄĞÅÉ 13.08.06 12:19

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

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ eup_a(x)
y=0.5;

for k=1:20    
    y=y+real(EUP_a_F(k*pi,a,n)).*cos(pi*k*x)-imag(EUP_a_F(k*pi,a,n)).*sin(pi*k*x);
end

% eup_a(x)=0 ÂÍÅ ÍÎÑÈÒÅËß x=[-1,1]
nums=find(abs(x)>1);
y(nums)=0;

