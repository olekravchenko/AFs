% test pim
clc; clear all;close all;

addpath '../up'

N = 2^12;
x0 = 2;
x = -x0 : 2*x0 / (N-1) : x0;
m = 100;
y0 = pim(x,m,2);
y1 = 1 - tanh((1.6*abs(x)).^2.9);

figure('color','w');
plot(x,y1,x,up(x,20,20),x,y1-up(x,20,20));
xlabel('$x$','fontsize',13,'Interpreter','latex')
ylabel('$\tanh, \mathrm{up}$','fontsize',13,'Interpreter','latex')
title('$\tanh(x)$ function and $\mathrm{up}(x)$','fontsize',13,'Interpreter','latex')
legend('1 - tanh((1.6*|x|)^{3})','up')

figure('color','w');
plot(x,y0,x,y1,x,y0.*y1,x,y0.*y1 / max(y0.*y1));
xlabel('$x$','fontsize',13,'Interpreter','latex')
ylabel('$\pi_m$','fontsize',13,'Interpreter','latex')
title(['atomic function $\pi_m(x)$, m=' num2str(m)],'fontsize',13,'Interpreter','latex')

% axis tight
% axis square
% saveas(gcf,'up.png','png')
% hold on
% 
% y1 = diff(y) / max(diff(y));
% 
% plot(x(2:end),y1,'r');
% 
% plot(0.00,x(2:end),'c:');
% % plot(0.25,x(2:end),'c:');
% plot(0.50,x(2:end),'c:');
% % plot(0.75,x(2:end),'c:');
% % plot(-0.25,x(2:end),'c:');
% plot(-0.50,x(2:end),'c:');
% % plot(-0.75,x(2:end),'c:');
% plot(x(2:end),0,'c:');
% plot(x(2:end),0.43,'c:');
