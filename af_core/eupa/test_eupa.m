% test eup_a(x)
clc; clearvars; close all;

%% Parameters
npts = 2^8;
xL = -1.2; xR = -xL;
x = linspace(xL,xR,npts);
% a = exp(1);                     % exp(1) ~= 2.718281828459046
y_05 = eupa(0.5,x,100,10);
y_10 = eupa(1.0,x,100,10);
y_15 = eupa(1.5,x,100,10);
y_20 = eupa(2.0,x,100,10);

%%
figure('color','w');
LW = 'LineWidth'; lw = 1.25;
plot(x, real(y_05), x, real(y_10), x, real(y_15), x, real(y_20), LW,lw);
legend('0.5','1.0','1.5','2.0');
axis tight; axis square; ylim([-0.25 1.25]);
xlabel('x'); %ylabel('eup_{a}(x)');
title('eup_{a}(x)');
print(gcf,'eupa_samples.png','-dpng','-r300')