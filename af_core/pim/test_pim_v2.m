% test pim
clc; clear all;close all;

addpath '../up'

N = 2^12;
x0 = 1;
x = -x0 : 2*x0 / (N-1) : x0;
m = 12;
y0 = pim(x,m,150);


figure('color','w');
plot(x,y0);
xlabel('$x$','fontsize',13,'Interpreter','latex')
xlabel('$x$','fontsize',13,'Interpreter','latex')
ylabel('$\pi_m$','fontsize',13,'Interpreter','latex')
title(['atomic function $\pi_m(x)$, m=' num2str(m)],'fontsize',13,'Interpreter','latex')