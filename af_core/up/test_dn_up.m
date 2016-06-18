%5 test dn_up
clc; clear; close all

N = 1024;
x = -1:2 / (N-1):1;
y = up(x,20,20);
y1 = dn_up(x,1);
y2 = dn_up(x,2);
y3 = dn_up(x,3);
y4 = dn_up(x,4);

figure('color','w')
plot(x,y,x,y2,x,y1,'LineWidth',1)
axis tight
axis square

figure('color','w')
plot(x,y3,x,y4,'LineWidth',1)
axis tight
axis square