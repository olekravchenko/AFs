% test hupa
clc; clear all;close all;

N = 2^12;
x0 = 2;
x = -x0 : 2*x0 / (N-1) : x0;

a = exp(1);                     % exp(1) ~= 2.718281828459046
% a = 2;
m = 20;
n = 20;
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