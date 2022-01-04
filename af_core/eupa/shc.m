% SHC   Shc function.
%    shc(X) returns sinh(x) / (x) for elements of X. X may be 
%    vector or matrix. sinc(0) = 1.
% Author: Gene Dial, GeoEye, 2011-07-28.
function y = shc(x)
y = ones(size(x));
isNonZero = x~=0;
y(isNonZero) = sinh(x(isNonZero))./(x(isNonZero));