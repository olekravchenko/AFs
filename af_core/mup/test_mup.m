% test mup
clc; clear all;close all;

addpath '../upm'

N = 2^10;
x0 = 1;
x = -x0 : 2*x0 / (N-1) : x0;

n = 1;
y0 = mup(x,n,10,10);
dy0 = diff(y0)/max(diff(y0));
dy1 = diff(dy0)/max(diff(dy0));

%% plot mup_n(x)
figure('color','w');
plot(x,y0);
offset = 0.05;
% ylim([0 max(y0)+offset])
xlabel('$x$','fontsize',13,'interpreter','latex');
ylabel('$\mathrm{mup}_{n}$','fontsize',13, 'interpreter','latex');
title(['atomic function $\mathrm{mup}_{n}(x)$, n = ' num2str(n)],'fontsize',13, 'interpreter','latex');
%% plot d/dx(mup_n(x))
figure('color','w');
plot(x(2:end),dy0)
ylim([min(dy0)-offset max(dy0)+offset])
title(['first derivative of $mup_n$, n = ' num2str(n)],'fontsize',12, 'interpreter','latex');
xlabel('$x$','fontsize',13,'interpreter','latex');
ylabel('$\frac{d}{dx}\mathrm{mup}_{n}$','fontsize',13, 'interpreter','latex');

%% plot d2/dx2(mup_n(x))
figure('color','w');
plot(x(3:end),dy1)
ylim([min(dy1)-offset max(dy1)+offset])
title(['second derivative of $mup_n$, n = ' num2str(n)],'fontsize',12, 'interpreter','latex');
xlabel('$x$','fontsize',13,'interpreter','latex');
ylabel('$\frac{d}{dx}\mathrm{mup}_{n}$','fontsize',13, 'interpreter','latex');