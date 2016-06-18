% test mup
clc; clear all;close all;

addpath '../upm'

N = 2^7;
x0 = 1;
x = -x0 : 2*x0 / (N-1) : x0;

n = 3;
y0 = mup(x,n,20,20);
y1 = upm(x,n,20,20);

%% plot mup_n(x)
figure('color','w');
plot(x,y0,x,y1,'.');
offset = 0.05;
% ylim([0 max(y0)+offset])
xlabel('$x$','fontsize',13,'interpreter','latex');
ylabel('$\mathrm{mup}_{n}$, $\mathrm{up}_{m}$','fontsize',13, 'interpreter','latex');
title(['atomic function $\mathrm{mup}_{n}(x)$, n = ' num2str(n) ' and ' ...
     '$\mathrm{up}_{m}(x)$, m = ' num2str(n)],'fontsize',13, 'interpreter','latex');
