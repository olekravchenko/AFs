% test hupa
clc; clearvars; close all;

npts = 2^8;
xL = -2.5; xR = -xL;
x = linspace(xL, xR, npts);

a = 1.2;                     % exp(1) ~= 2.718281828459046
% a = 2;
m = 100;
n = 10;
y = hupa(x,a,m,n);
% y1 = diff(y)/max(diff(y));
% y2 = diff(y1)/max(diff(y1));


figure('color','w');
plot(x,y,'b');
% axis tight
% axis square
% saveas(gcf,'up.png','png')
% hold on
% plot(x(2:end),y1,'r','Linewidth',1);
% plot(x(3:end),y2,'g','Linewidth',1);

xlabel('$x$','fontsize',13,'interpreter','latex');
ylabel('$\mathrm{hup_{a}}$','fontsize',13, 'interpreter','latex');
title(['atomic function $\mathrm{hup_{a}}(x)$, a = ' num2str(a)],'fontsize',13, 'interpreter','latex');