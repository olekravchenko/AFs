%5 test dn_up
clc; clear; close all

N = 1024;
x = -1:2 / (N-1):1;
a = 2.5;
y = ha(x,a,20,20);
y1 = dn_ha(x,a,1);
y2 = dn_ha(x,a,2);
y3 = dn_ha(x,a,3);
y4 = dn_ha(x,a,4);

figure('color','w')
plot(x,y,x,y1,'LineWidth',1)
axis tight
axis square

figure('color','w')
plot(x,y3,x,y4,'LineWidth',1)
axis tight
axis square