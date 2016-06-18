%test fup
clc; clear all; close all;

x = -5:.005:5;

y1 = fup(1,x);
y2 = fup(2,x);
y3 = fup(3,x);
y4 = fup(4,x);

figure('color','w');
plot(x,y1,x,y2,x,y3,x,y4,'Linewidth',2);
axis tight
axis square

xlabel('x');
ylabel('fup_{n}(x)');
title('atomic function fup_{n}(x)');
legend('n = 1','n = 2','n = 3','n = 4');
saveas(gcf,'fup','png');