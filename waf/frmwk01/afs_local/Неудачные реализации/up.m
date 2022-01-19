function y = up(x,n)

sum_out=1;

for k=1:n
   sum_in=0;
   for j=0:k
       if (k==j)
           sum_in=sum_in+(1/(factorial(j)) )*(abs(x).*2^k-floor(abs(x).*2^k)).^j;
       else
           sum_in=sum_in+(moment_b(k-j-1)/(factorial(k-j-1)*factorial(j)) )*(abs(x).*2^k-floor(abs(x).*2^k)).^j;
       end
   end
   sk=0;
   for j1=1:k
       sk=sk+p(x,j1);
   end
   sum_out=sum_out+sum_in.*((-1).^sk).*p(x,k)./(2^(k*(k-1)/2.0));
end

y=sum_out;


   




function y1 = p(x1,k1)

y1=mod(floor(abs(x1).*2^k1), 2);



