% test
clc; clear all;close all;

a = 1.5;

t0  = 100;
n   = 1024;   
t = -t0/(a-1) : 2*t0/(n-1) : t0/(a-1);


x2 = ha(t/100,a,20,20);
% x3 = ha(t,a,10,3);
% x4 = ha(t,a,10,4);
% x5 = ha(t,a,10,5);
% x6 = ha(t,a,10,6);
% x7 = ha(t,a,10,7);
% x8 = ha(t,a,10,8);

figure('color','w');
plot(t,x2);
% plot(t,x2,t,x3,t,x4,t,x5,t,x6,t,x7,t,x8);

xlabel('x');
ylabel(['h_{' num2str(a) '}(x)']);
title(['atomic function h_{' num2str(a) '}(x)']);
legend('n = 1.5');
% legend('n = 2','n = 3','n = 4','n = 5','n = 6','n = 7','n = 8');
% saveas(gcf,'ha','png');


% e2 = max((x3 - x2).^2);
% e3 = max((x4 - x3).^2);
% e4 = max((x5 - x4).^2);
% e5 = max((x6 - x5).^2);
% e6 = max((x7 - x6).^2);
% e7 = max((x8 - x7).^2);
% e  = [e2 e3 e4 e5 e6 e7]; 
% 
% figure('color','w');
% plot([3 4 5 6 7 8],e,'-ro');
% xlabel('m');
% ylabel('error');
% title('rms error');
% saveas(gcf,'rms_error_ha','png');
% 
% figure('color','w');
% plot([4 5 6 7 8],[e3 e4 e5 e6 e7],'-ro');
% xlabel('m');
% ylabel('error');
% title('rms error');
% saveas(gcf,'rms_error__ha_2','png');
% 
% figure('color','w');
% plot(t,x4);