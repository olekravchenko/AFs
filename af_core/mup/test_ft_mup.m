% test ft_upm
clc; clear all; close all;
%% main parameters 1
n = 2;
M = 20;
N = 2^12;
t0 = 20;
%% computation
t = -t0: 2*t0 / (N - 1):t0;
y = ft_mup(t,n,M);
%% plot Fourier Transform g_{k,h}
figure('color','w');
plot(t,y,'-')
axis tight
axis square
xlabel('$\omega$','fontsize',14, 'interpreter','latex');
ylabel('$\widehat{mup_{n}}(\omega)$','fontsize',14, 'interpreter','latex');
title(['Spectrum of atomic function  $mup_{n}(t)$, n = ' num2str(n)],'fontsize',14, 'interpreter','latex');

disp(ft_mup(pi,n,M))