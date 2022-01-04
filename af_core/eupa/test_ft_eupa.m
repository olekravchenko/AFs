% test ft_eupa
clc; clearvars; close all;
% main parameters 1
a = 1;
% computation
npts = 2^8; tL = -30; tR = -tL;
t = linspace(tL,tR,npts);
y = ft_eupa(a,t,10);
%% plot Fourier Transform hup_{a}
figure(1);
LW = 'LineWidth'; lw = 1.25;
plot(t,real(y),t,imag(y),LW,lw);
axis tight; axis square; ylim([2*min(real(y)) 1.05*max(real(y))]);
xlabel('t'); ylabel('Fourier Transform of eup_{a}(t)');
title('Fourier Transform of atomic function  eup_{a}(t)');