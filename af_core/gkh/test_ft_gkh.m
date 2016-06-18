% test gk
clc; clear all; close all;
%% main parameters 1
n = 10;
k = 1;
h = 1;

nx   = 2^7;
t0  = 40;
%% computation
t = -t0: 2*t0 / (nx - 1):t0;
y = ft_gkh(t,k,h,n);
%% plot Fourier Transform g_{k,h}
figure(1);
plot(t,y,'.-')
axis tight
axis square
xlabel('t');
ylabel('Fourier Transform of g_{k,h}(t)');
title('Fourier Transform of atomic function g_{k,h}(t)');