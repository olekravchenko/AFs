% test ft_upm
clc; clear all; close all;
%% main parameters 1
m = 4;
M = 10;
N = 2^7;
t0 = 30;
%% computation
t = -t0: 2*t0 / (N - 1):t0;
y = ft_upm(t,m,M);
%% plot Fourier Transform g_{k,h}
figure(1);
plot(t,y,'.-')
axis tight
axis square
xlabel('t');
ylabel('Fourier Transform of up_{m}(t)');
title('Fourier Transform of atomic function  up_{m}(t)');