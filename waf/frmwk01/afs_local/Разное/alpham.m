function y = alpham(i,m)

if (i==0)
    y=1;
else
    y=((-1)^i)*nchoosek(m+1,i);  
    for j=0:i-1
        y=y-alpham(j,m)*delta(i-j+1);
    end
end