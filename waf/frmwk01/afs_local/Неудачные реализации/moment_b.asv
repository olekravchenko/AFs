function y = moment_b(n)

% ÏÐÎÖÅÄÓÐÀ ÂÛ×ÈÑËÅÍÈß ÌÎÌÅÍÒÎÂ b  
% ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ up(x)
%
% n - ÏÎÐßÄÎÊ ÌÎÌÅÍÒÀ b
% n ÄÎËÆÍÎ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌ ÖÅËÛÌ ×ÈÑËÎÌ
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄÐÅÉ 01.10.05 11:40

% ÏÐÎÂÅÐÊÀ ÍÀ ÏÎËÎÆÈÒÅËÜÍÎÑÒÜ È ÑÊÀËßÐÍÎÑÒÜ
if ((prod(size(n)) > 1) | (n < 0))
    error('n must be a positive scalar!');
end

% ÏÐÎÂÅÐßÅÌ ×ÒÎ n ÖÅËÎÅ
if(mod(n,floor(n))~=0)
    error('n must be integer!');
end

if (n==0)
    % Â ÑËÓ×ÀÅ n=0 ÐÅÇÓËÜÒÀÒ=1
    y=0.5;
elseif (mod(n,2)==1)
    % Â ÑËÓ×ÀÅ ÍÅ×ÅÒÍÎÃÎ n 
    n=(n+1)/2;
    sum=0;
    for k=0:n
        sum=sum+nchoosek(2*n,2*k) * moment_a(2*k);
    end
    y=(1/(n*2^(2*n+1)))*sum;
else
    % Â ÄÐÓÃÈÕ ÑËÓ×ÀßÕ ÌÎÌÅÍÒÛ b ÂÛ×ÈÑËßÞÒÑß ÏÎ ÔÎÐÌÓËÅ
    y = 0.5*moment_a(n);
end