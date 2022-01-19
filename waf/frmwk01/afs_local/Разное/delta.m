function y = delta(k)

if (k==1)
    y=1;
elseif (mod(k,2)==1)
    y=delta((k+1)/2);
else
    y=-delta(k/2);
end
    