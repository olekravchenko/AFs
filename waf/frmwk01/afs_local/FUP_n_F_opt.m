function y = FUP_n_F_opt(om, n, m)

% FUP_n_F(om, n, m)
% ÑÏÅÊÒÐ ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ fup_n(x)
% ÎÏÒÈÌÈÇÈÐÎÂÀÍÍÀß ÏÎ ÑÊÎÐÎÑÒÈ ÂÛ×ÈÑËÅÍÈß ÔÓÍÊÖÈß
%
% n - ÏÎÐßÄÎÊ ÔÓÍÊÖÈÈ
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

k=1:m;
om_k=kron(om',2.^(-k)); % size(om) x size(k)
y_omk=(sin(om_k)./om_k);    % size(om) x size(k)
y_tr=prod(y_omk,le);
y=y_tr';
whos
y=((sin(om/2)./(om/2)).^n).*y_tr;

y(num)=1;