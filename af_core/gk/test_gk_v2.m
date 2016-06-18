% test gk
clear all
close all
clc

addpath '../up' '../ksi'
% addpath '../up'

nx = 2^10;
x0 = 1.0;
x = -x0:2*x0/(nx-1):x0;

n = 20;
m = 20;

k = 1;
y0 = gk(x,k,n,m);
y1 = Ksi(x, 2, n, m);
% y2 = gk(x,pi,n,m);

figure('color','w');
plot(x,y0,x,y1)
% text(0.65,1.8,['k = ' num2str(k)],'fontsize',13, 'interpreter','latex') 
% text(0.65,1.8,['k = ' num2str(k)],'fontsize',13, 'interpreter','latex') 
% text(-0.85,1.4,'$$g_k$$ atomic function','fontsize',13, 'interpreter','latex')     
title(['$g_k$ atomic function, k = ' num2str(k) ' (blue), '...
    '$\xi_n$ atomic function, n = ' num2str(2) ' (green)'],'fontsize',12, 'interpreter','latex');
ylim([0 1.5])
% text(-0.2,1.2,['$g_k$, k = ' num2str(2.5)],'fontsize',13, 'interpreter','latex') 
% text(-0.2,1.73,['$g_k$, k = $\pi$'],'fontsize',13, 'interpreter','latex') 
% text(0.1,0.9,['$\mathrm{up}$'],'fontsize',13, 'interpreter','latex') 

figure('color','w');
plot(x(2:end),diff(y0)/max(diff(y0)),x(2:end),diff(y1)/max(diff(y1)))
ylim([-1.1 1.1])
title(['first derivatives of $g_k$, k = 1 (blue), and '...
    '$\xi_n$, n = 2 (green)'],'fontsize',12, 'interpreter','latex');

% a = gk(0,2*pi,n,m);
% disp(a)

% set(gcf,'YGrid','on')