function y = up_cos(x,n,m)

% ÀÒÎÌÀĞÍÀß ÔÓÍÊÖÈß up(x,n,m)
% ĞÀÇËÎÆÅÍÈÅ Â ĞßÄ ÔÓĞÜÅ
%
% n - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅĞÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ĞÀÇËÎÆÅÍÈß (ïî óìîë÷àíèş 50)
% m - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅĞÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏĞÈ ÂÛ×ÈÑËÅÍÈÈ ÊÎİÔÔÈÖÈÅÍÒÎÂ ÔÓĞÜÅ (ïî óìîë÷àíèş 50)    
% n, m ÄÎËÆÍÛ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌÈ ÖÅËÛÌÈ ×ÈÑËÀÌÈ
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄĞÅÉ 16.01.06 15:56

% ÇÍÀ×ÅÍÈß n è m ÏÎ ÓÌÎË×ÀÍÈŞ
if nargin == 1
    n=50;
    m=50;
end
if nargin == 2
    m=50;
end

% ÏĞÎÂÅĞÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßĞÍÎÑÒÜ m è n
if ((prod(size(n)) > 1) | (n < 0))
    error('n must be a positive scalar!');
end

if ((prod(size(m)) > 1) | (m < 0))
    error('m must be a positive scalar!');
end

% ÏĞÎÂÅĞßÅÌ ×ÒÎ m, n - ÖÅËÛÅ
if(mod(n,floor(n))~=0)
    error('n must be integer!');
end

if(mod(m,floor(m))~=0)
    error('m must be integer!');
end

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ up(x)
y=0.5;

for j=1:n
    p=1;
    for k=1:m
        p=p*sin(pi*(2*j-1)*2^(-k))/(pi*(2*j-1)*2^(-k));
    end
    y=y+p*cos(pi*(2*j-1)*x);
end

% up(x)=0 ÂÍÅ ÍÎÑÈÒÅËß x=[-1,1]
nums=find(abs(x)>1);
y(nums)=0;
    
        