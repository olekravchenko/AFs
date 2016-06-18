% test
clc; clear all;close all;

n = 2;
npts = 1024;
x = -.5*(n+2):(n+2) / (npts - 1):.5*(n+2);


y = fup(x,n,6,20);


figure('color','w');
plot(x,y);

xlabel('x');
ylabel(['fup_{' int2str(n) '}(x)']);
title(['atomic function fup_{' int2str(n) '}(x)']);

% saveas(gcf,'fup','png');