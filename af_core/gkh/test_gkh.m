% test gkh
clc; clear all; close all;

addpath '../up'
%% main parameters
n   = 5;
m   = 50;
k   = 3.14;
h   = 1.0;
nx  = 2^7;
x0  =2;
%% computation
x = -x0: 2*x0 / (nx - 1):x0;

y = gkh(x,k,h,n,m);
%% plot g_{k,h}
figure('color','w');
plot(x,y);
xlabel('$x$','fontsize',13,'interpreter','latex');
ylabel('$g_{k,h}$','fontsize',13, 'interpreter','latex');
title('atomic function $g_{k,h}(x)$','fontsize',13, 'interpreter','latex');

% hold on
% plot(x(2:end),diff(y)/max(diff(y)),'r');
% plot(x(3:end),diff(y,2)/max(diff(y,2)),'g');

% axis tight
% axis square
