% test up
clc; clear all;close all;

N = 1024;
x = -1 : 2 / (N-1) : 1;
y = up(x,10,10);

figure('color','w');
plot(x,y,'r--','Linewidth',2);
axis tight
axis square
saveas(gcf,'up.png','png')
