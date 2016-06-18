%test fup interpolation 1
clc; clear; close all;

n = 2;
N = 2^n-1;
x0 = 0.5;
x = -x0:2*x0 / (n - 1):3*x0;
% x = [-.5 .5 1.5];

y = fupn(1,x);

% test polynom 1
f = 0.234 - 0.1 * x + 0.12 * x.^2 - 2 * x .^3;
% f = [0.1 .5 0];

figure('color','w')
plot(x, f, '.-') 

% D is unknown vector A*D = f
% A is matrix of coefficients
A = zeros(N,N);

for k = 1:N
    if k ~= N
        A(k,:) = fupn(1,x - k + 1 + 0.5);
    else
        A(k,:) = [0.5 -1 0.5];
    end
end; % for ind

% disp A matrix
% A = 
%     0.5000    0.5000         0
%          0    0.5000    0.5000
%     0.5000   -1.0000    0.5000

% disp f vector
% f = 
%     0.1000
%     0.5000
%          0


D = A^(-1) * f';
% disp D vector
% D = 
%    -0.1000
%     0.3000
%     0.7000

% f_interp vector restoration
f_interp = zeros(1,N);
for k = 1:N
    f_interp = f_interp + D(k) * fupn(1,x - k + 1 + 0.5);
end

hold on
plot(x, f_interp, 'ks')

axis([-1 2 min(f)-.5 max(f)+.5])
axis square