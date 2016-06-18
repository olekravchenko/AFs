function y = fupn(n,x)
y=ones(size(x))/(n+2);
for k=1:20,
   y=y+2*F(n,pi*(k)/(n+2)*2)*cos(2*pi*(k)*x/(n+2))/(n+2);
end

r=find(abs(x)>(n+2)/2);
y(r)=zeros(size(r));
y(y<0) = 0;
