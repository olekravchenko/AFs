% test ft_hupa
clc; clear all; close all;
%% main parameters 1
a = 5;
m = 10;
N = 2^7;
t0 = 30;
%% computation
t = -t0: 2*t0 / (N - 1):t0;
y = ft_hupa(t,a,m);
%% plot Fourier Transform hup_{a}
figure(1);
plot(t,y,'.-')
axis tight
axis square
xlabel('t');
ylabel('Fourier Transform of hup_{a}(t)');
title('Fourier Transform of atomic function  hup_{a}(t)');