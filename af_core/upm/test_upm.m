% test up
clc; clear all;close all;

N = 1024;
x0 = 2;
x = -x0 : 2*x0 / (N-1) : x0;

m = 10;
y0 = upm(x,m,50,50);
y1 = upm(x+1,m,50,50)+upm(x+2,m,50,50);
y2 = upm(x-1,m,50,50)+upm(x-2,m,50,50);

figure('color','w');
plot(x,y0,'r',x,y1,'b',x,y2,'g');
ylim([0 1.2])
xlabel('$x$','fontsize',13,'interpreter','latex');
ylabel('$\mathrm{up}_{m}$','fontsize',13, 'interpreter','latex');
title(['atomic function $\mathrm{up}_{m}(x)$, m = ' num2str(m)],'fontsize',13, 'interpreter','latex');