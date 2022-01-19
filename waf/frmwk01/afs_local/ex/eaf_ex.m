clc;
close all;

x=-1:0.01:1;
fig=figure;
plot(x,eup_a(x, exp(1)),'k-','LineWidth',2); grid;
xlabel('x'); ylabel('eup(x)'); 
title('eup function');
xlim([min(x) max(x)]);
saveas(fig,'eup.bmp');

fig=figure;
plot(x,eup_a(x, 5),'k-','LineWidth',2); grid;
xlabel('x'); ylabel('eup_5(x)'); 
title('eup_5 function');
xlim([min(x) max(x)]);
saveas(fig,'eup_5.bmp');

x=-2:0.01:2;
fig=figure;
plot(x,hup_a(x,5),'k-','LineWidth',2); grid;
xlabel('x'); ylabel('hup_5(x)'); 
title('hup_5 function');
xlim([min(x) max(x)]);
saveas(fig,'hup_5.bmp');

fig=figure;
plot(x,hup_a(x,15),'k-','LineWidth',2); grid;
xlabel('x'); ylabel('hup_1_5(x)'); 
title('hup_1_5 function');
xlim([min(x) max(x)]);
saveas(fig,'hup_15.bmp');

fig=figure;
plot(x,scup_a(x,5.4),'k-','LineWidth',2); grid;
xlabel('x'); ylabel('scup_5_._4(x)'); 
title('scup_5_._4 function');
xlim([min(x) max(x)]);
saveas(fig,'scup_5_4.bmp');

fig=figure;
plot(x,scup_a(x,15.4),'k-','LineWidth',2); grid;
xlabel('x'); ylabel('scup_1_5_._4(x)'); 
title('scup_1_5_._4 function');
xlim([min(x) max(x)]);
saveas(fig,'scup_15_4.bmp');




