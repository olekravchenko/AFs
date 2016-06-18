function y=upfourier(x)

y = ones(size(x));

for k=1:20
   y = y .* sinc(x/(pi*2^(k)));
end
