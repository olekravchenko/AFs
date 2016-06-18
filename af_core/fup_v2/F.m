function y=F(n,z)

y=sinc(z/(2*pi)).^n.*upfourier(z);