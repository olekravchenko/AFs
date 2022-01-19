function y = fup_n(x,n,m)

% ÀÒÎÌÀĞÍÀß ÔÓÍÊÖÈß fup_n(x,n,m)
% ĞÀÇËÎÆÅÍÈÅ Â ĞßÄ ÔÓĞÜÅ
%
% n - ïîğÿäîê ôóíêöèè
% m - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅĞÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏĞÈ ÂÛ×ÈÑËÅÍÈÈ êîıôôèöèåíòîâ Ôóğüå (áåñêîíå÷íîãî ïğîèçâåäåíèÿ) (ïî óìîë÷àíèş 50)    
% n, m ÄÎËÆÍÛ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌÈ ÖÅËÛÌÈ ×ÈÑËÀÌÈ
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄĞÅÉ 16.01.06 18:17

% ÇÍÀ×ÅÍÈÅ m ÏÎ ÓÌÎË×ÀÍÈŞ
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

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ fup(x)
y=1;

N=n;
for k=1:20
    p=1;
    for i=1:m
        p=p*sin(2*pi*k*(2^(-i))/(N+2))/(2*pi*k*(2^(-i))/(N+2));
    end
    y=y+2*((sin(pi*k/(N+2))/(pi*k/(N+2)))^N)*p*cos(2*pi*k*x/(N+2));
end
y=y/(N+2);

% fup_n(x)=0 ÂÍÅ ÍÎÑÈÒÅËß x=[-(n+2)/2,(n+2)/2]
nums=find(abs(x)>(n+2)/2);
y(nums)=0;