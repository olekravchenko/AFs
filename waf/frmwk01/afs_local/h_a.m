function y = h_a(x,a,m)

% ÀÒÎÌÀĞÍÀß ÔÓÍÊÖÈß h_a(x,a,m)
% ĞÀÇËÎÆÅÍÈÅ Â ĞßÄ ÔÓĞÜÅ
%
% a - ÏÎĞßÄÎÊ ÔÓÍÊÖÈÈ (a>1)
% m - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅĞÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏĞÈ ÂÛ×ÈÑËÅÍÈÈ ÊÎİÔÔÈÖÈÅÍÒÎÂ ÔÓĞÜÅ (ÁÅÑÊÎÍÅ×ÍÎÃÎ ÏĞÎÈÇÂÅÄÅÍÈß) (ÏÎ ÓÌÎË×ÀÍÈŞ 50)    
% m ÄÎËÆÍÎ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌ ÖÅËÛÌ ×ÈÑËÎÌ
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄĞÅÉ 24.04.06 17:33
%

% ÇÍÀ×ÅÍÈÅ m ÏÎ ÓÌÎË×ÀÍÈŞ
if nargin == 2
    m=50;
end

% ÏĞÎÂÅĞÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßĞÍÎÑÒÜ a è m
if ((prod(size(a)) > 1) | (a <= 1))
    error('a must be a positive scalar (a>1)!');
end

if ((prod(size(m)) > 1) | (m < 0))
    error('m must be a positive scalar!');
end

% ÏĞÎÂÅĞßÅÌ ×ÒÎ m - ÖÅËÎÅ
if(mod(m,floor(m))~=0)
    error('m must be an integer!');
end

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ h_a(x)
y=0.5;

for k=1:20    
    y=y+H_a_F(k*pi*(a-1),a,m).*cos(pi*k*x*(a-1));
end
y=y.*(a-1);

% h_a(x)=0 ÂÍÅ ÍÎÑÈÒÅËß x=[-1/(a-1),1/(a-1)]
nums=find(abs(x)>(1/(a-1)));
y(nums)=0;

