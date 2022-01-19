function y = up_m(x,m,n)

% ÀÒÎÌÀĞÍÀß ÔÓÍÊÖÈß up_m(x,m,n)
% ĞÀÇËÎÆÅÍÈÅ Â ĞßÄ ÔÓĞÜÅ
%
% m - ÏÎĞßÄÎÊ ÔÓÍÊÖÈÈ
% n - ÊÎËÈ×ÅÑÒÂÎ ÓÄÅĞÆÈÂÀÅÌÛÕ ×ËÅÍÎÂ ÏĞÈ ÂÛ×ÈÑËÅÍÈÈ êîıôôèöèåíòîâ Ôóğüå (áåñêîíå÷íîãî ïğîèçâåäåíèÿ) (ïî óìîë÷àíèş 50)    
% n, m ÄÎËÆÍÛ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌÈ ÖÅËÛÌÈ ×ÈÑËÀÌÈ 
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄĞÅÉ 24.04.06 15:43

% ÇÍÀ×ÅÍÈÅ n ÏÎ ÓÌÎË×ÀÍÈŞ
if nargin == 2
    n=50;
end

% ÏĞÎÂÅĞÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßĞÍÎÑÒÜ m è n
if ((prod(size(n)) > 1) | (n < 0))
    error('n must be a positive scalar!');
end

if ((prod(size(m)) > 1) | (m < 0))
    error('m must be a positive scalar');
end

% ÏĞÎÂÅĞßÅÌ ×ÒÎ m, n - ÖÅËÛÅ
if(mod(n,floor(n))~=0)
    error('n must be integer!');
end

if(mod(m,floor(m))~=0)
    error('m must be integer!');
end

% ÂÛ×ÈÑËÅÍÈÅ ÔÓÍÊÖÈÈ up_m(x)
y=0.5;

for k=1:20
    p=1;
    for i=1:n        
        p=p*( (sin(m*k*pi*(2*m)^(-i))^2 )/( ((m^2)*k*pi*(2*m)^(-i))*sin(k*pi*(2*m)^(-i)) ));
    end
    y=y+p*cos(pi*k*x);
end

% up_m(x)=0 ÂÍÅ ÍÎÑÈÒÅËß x=[-1,1]
nums=find(abs(x)>1);
y(nums)=0;