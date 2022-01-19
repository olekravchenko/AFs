function y = moment_a1(n)

% ÏÐÎÖÅÄÓÐÀ ÂÛ×ÈÑËÅÍÈß ÌÎÌÅÍÒÎÂ a  
% ÀÒÎÌÀÐÍÎÉ ÔÓÍÊÖÈÈ up(x)
%
% n - ÏÎÐßÄÎÊ ÌÎÌÅÍÒÀ a
% n ÄÎËÆÍÎ ÁÛÒÜ ÏÎËÎÆÈÒÅËÜÍÛÌ ÖÅËÛÌ ×ÈÑËÎÌ
%
% (Ñ) ÊÎØÅËÅÂ ÀÍÄÐÅÉ 30.09.05 21:45

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
    y=1;
elseif (mod(n,2)==1)
    % Â ÑËÓ×ÀÅ ÍÅ×ÅÒÍÎÃÎ n ÐÅÇÓËÜÒÀÒ=0
    y=0;
else
    % Â ÄÐÓÃÈÕ ÑËÓ×ÀßÕ ÌÎÌÅÍÒÛ a ÂÛ×ÈÑËßÞÒÑß ÐÅÊÓÐÐÅÍÒÍÎ
    sum=0;
    for k=1:n
        sum=sum+moment_a1(n-2*k)/(factorial(n-2*k)*factorial(2*k+1));
    end
    y=sum*factorial(2*n)/(4^n-1);
    %y = ((-1)^(n)) * factorial(2*n) * koef_c(2*n);
end
