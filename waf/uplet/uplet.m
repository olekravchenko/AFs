function varargout = uplet(LB,UB,N,OPT)
%Atomic uplet wavelet.
%   [PHI,PSI,T] = up(LB,UB,N) returns uplet
%   scaling and wavelet functions evaluated on
%   an N point regular grid in the interval [LB,UB].
%   N must be a power of two.
%
%   Output arguments are the scaling function PHI, the
%   wavelet function PSI computed on the grid T.
%   These functions have [-8 8] as effective support.
%
%   A fourth argument is allowed, if only one function
%   is required:
%     [PHI,T] = uplet(LB,UB,N,'phi')
%     [PSI,T] = uplet(LB,UB,N,'psi')
%   When the fourth argument is used, but not equal to
%   'phi' or 'psi', outputs are the same as in main option.
%
%   See also upletAUX, WAVEFUN, WAVEINFO.
% Check arguments.
switch nargin
  case 3
    OPT = 'two';
  case 4
    if ~(isequal(OPT,'two') || isequal(OPT,'phi') || isequal(OPT,'psi'))
        OPT = 'two';
    end
end
tmp = log(N)/log(2);
if tmp ~= fix(tmp)
    error(message('Wavelet:FunctionArgVal:Invalid_PowerVal'))
end
tmp = UB-LB;
if tmp<0
    error(message('Wavelet:FunctionArgVal:Invalid_BoundVal'))
end

% Transform interval bounds to grid.
xh = 2 / 127; 
x  = 0:xh:1;

% Scaling function phi.
if isequal(OPT,'phi') || isequal(OPT,'two')
    
    tmp = [fliplr(up(x)) up(x)];
    phi = tmp;
    t = 0 : 1 / (length(phi) - 1) : 1;

end

% Wavelet function psi.
if isequal(OPT,'psi') || isequal(OPT,'two')
    
    tmp = [-fliplr(dup(x)) dup(x)];
    psi = tmp;    
end

% Set output arguments.
switch OPT
    case 'psi' , varargout = {psi,t};
    case 'phi' , varargout = {phi,t};
    otherwise  , varargout = {phi,psi,t};
end



end
