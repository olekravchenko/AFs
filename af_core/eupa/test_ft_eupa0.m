% test ft_eupa0
clc; clearvars; close all;
% main parameters 1
a = 1;
% computation
npts = 2^8; tL = -10; tR = -tL;
t = linspace(tL,tR,npts);
y = ft_eupa0(t,a);
%% plot Fourier Transform hup_{a}
figure(1);
plot(t,real(y),t,imag(y))
axis tight
axis square
xlabel('t');
ylabel('Fourier Transform of eup_{a}(t)');
title('Fourier Transform of atomic function  eup_{a}(t)');