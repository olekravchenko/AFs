function y = sinc_(x)
i=find(x==0);                                                              
x(i)= 1;      % From LS: don't need this is /0 warning is off
y = sin(x)./(x);                                                     
y(i) = 1;