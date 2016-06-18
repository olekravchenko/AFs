% test up
clc; clear all;close all;

N = 2^7;
x0 = 10;
x = -x0 : 2*x0 / (N-1) : x0;
y = ft_up(x,1);

figure('color','w');
plot(x,y,'r--','Linewidth',2);
axis tight
axis square
