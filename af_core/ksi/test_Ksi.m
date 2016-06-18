% test Ksi_n(x)

clc; clear all; close all;

N = 2^10;
x0 = 1;
t = -x0 : 1 / (N-1) : x0;

h1 = Ksi(t, 2, 15, 10);

% h2 = Ksi(t, 2, 15, 10);
% 
% h3 = Ksi(t, 3, 15, 10);
%  
% h4 = Ksi(t, 4, 15, 10);

figure('color','w');
plot(t,h1);
% plot(t,h1,t,h2,t,h3,t,h4);
xlabel('x');
ylabel('\Xi_{n}(x)');
title('atomic function \Xi_{n}(x)');
% legend('n = 1','n = 2','n = 3','n = 4');
saveas(gcf,'Xi','png');
