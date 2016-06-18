%% test dn_fupn
clc; clear; close all

%%
N = 1024;
x0 = 5;
x = -x0:2*x0 / (N-1):x0;
y0 = fupn(4,x);
y1 = dn_fupn(1,x);
y2 = dn_fupn(2,x);
y3 = dn_fupn(3,x);
y4 = dn_fupn(4,x);

%%
figure('color','w')
plot(x,y0,x,y1,x,y2,'LineWidth',1)
axis tight
axis square

% figure('color','w')
% plot(x,y2,'LineWidth',1)
% axis tight
% axis square