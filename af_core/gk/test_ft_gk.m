% test ft_gk
clear all
close all
clc

nx = 100;
x0 = 20;
x = -x0:2*x0/(nx-1):x0;

k = 1;
n = 1;
y = ft_gk(x,k,n);

% a = k^2 / (1-cos(2*k/3));
% plot(x,r1,x,r2,x,0,':',x,r1./r2)
% legend('r1','r2')
plot(x,y,'.-')

% disp(a)