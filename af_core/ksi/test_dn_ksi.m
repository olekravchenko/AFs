%5 test dn_up
clc; clear; close all

N = 1024;
x0 = 1.2;
x = -x0:2*x0 / (N-1):x0;
n = 1;
y = Ksi(x,n,20,20);
y1 = dn_ksi(x,1);
y2 = dn_ksi(x,2);
y3 = dn_ksi(x,3);
y4 = dn_ksi(x,4);

figure('color','w')
plot(x,y,x,y1,x,y2,'LineWidth',1)
axis tight
axis square

figure('color','w')
plot(x,y3,x,y4,'LineWidth',1)
axis tight
axis square