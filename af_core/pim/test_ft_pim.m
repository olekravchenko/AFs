% test ft_pim
clc; clear all; close all;
%% main parameters 1
m = 3;
N = 2^7;
t0 = 30;
%% computation
t = -t0: 2*t0 / (N - 1):t0;
y = ft_pim(t,m);
%% plot Fourier Transform pi_{m}
figure(1);
plot(t,y,'.-')
axis tight
axis square
xlabel('t');
ylabel('Fourier Transform of pi_{m}(t)');
title('Fourier Transform of atomic function pi_{m}(t)');