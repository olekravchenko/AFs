% test gk
clear all
close all
clc

nx = 128;
x0 = 2.;
x = -x0:2*x0/(nx-1):x0;

n = 10;
m = 10;

ind=0;

for k = 1:.035:6
% for k = 1*pi:pi/10:3*pi    
ind=ind+1;
% k = 4;
    y (ind,:)= gk(x,k,n,m);

% a = k^2 / (1-cos(2*k/3));
% plot(x,r1,x,r2,x,0,':',x,r1./r2)
% legend('r1','r2')
    plot(x,y(ind,:),'.-')
    text(0.65,1.2,['$k = ' num2str(k) '$'],'fontsize',13, 'interpreter','latex') 
    text(-0.85,1.2,'$$g_k$$ atomic function','fontsize',13, 'interpreter','latex')     
    axis([-1 1 0 1.3])
    drawnow    
%     pause(.1)    
end

% hold on
% plot(x,gk(x,pi,n,m),'m.-',x,gk(x,2*pi,n,m),'g.-',x,gk(x,3*pi,n,m),'r.-')
% axis tight
figure(2),
surf(y);
% lighting phong
% shading interp

% disp(a)
% a = gk(0,pi,n,m);
% disp(a)