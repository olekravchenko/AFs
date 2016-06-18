%test fup
clc; clear; close all;

N = 2^7;
x0 = 5;
x = -x0:2*x0 / (N - 1):x0;

y1 = fupn(1,x);
y2 = fupn(2,x);
y3 = fupn(3,x);
y4 = fupn(4,x);

figure('color','w');
subplot(121)
plot(x,y1,'.-',x,y2,'.-','Linewidth',1)
axis tight
axis square
xlabel('x'), ylabel('fup_{n}(x)'), title('atomic function fup_{n}(x)');
legend('n = 1','n = 2');
% saveas(gcf,'fup1_fup2','png');
axis([-x0-.1 x0+.1 -.01 1.01])

% figure('color','w');
subplot(122)
plot(x,y3,'.-',x,y4,'.-','Linewidth',1)
axis tight
axis square
xlabel('x'), ylabel('fup_{n}(x)'), title('atomic function fup_{n}(x)');
legend('n = 3','n = 4');
% saveas(gcf,'fup3_fup4','png');
axis([-x0-.1 x0+.1 -.01 1.01])