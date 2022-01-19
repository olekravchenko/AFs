clc;
close all;

om=-8*pi:0.01:8*pi;
h=figure;
plot(om,real(EUP_a_F(om, exp(1), 50)),'k-',om,imag(EUP_a_F(om, exp(1), 50)),'k--','LineWidth',2); grid;
xlabel('\omega'); ylabel('eup^\^(\omega)'); 
title('eup');
xlim([min(om) max(om)]);
saveas(h,'eup_F.bmp');

om=-8*pi:0.01:8*pi;
h=figure;
plot(om,real(EUP_a_F(om, 5, 50)),'k-',om,imag(EUP_a_F(om, 5, 50)),'k--','LineWidth',2); grid;
xlabel('\omega'); ylabel('eup_5^\^(\omega)'); 
title('eup_5');
xlim([min(om) max(om)]);
saveas(h,'eup_F_5.bmp');

om=-50*pi:0.01:70*pi;
h=figure;
plot(om,real(TUP_a_F(om, 5.2, 50)),'k-','LineWidth',2); grid;
xlabel('\omega'); ylabel('tup_5_._2^\^(\omega)'); 
title('tup_5_._2');
xlim([min(om) max(om)]);
saveas(h,'tup_F_5_2.bmp');

om=-5*pi:0.01:50*pi;
h=figure;
plot(om,real(TUP_a_F(om, exp(1), 50)),'k-','LineWidth',2); grid;
xlabel('\omega'); ylabel('tup^\^(\omega)'); 
title('tup');
xlim([min(om) max(om)]);
saveas(h,'tup_F.bmp');

om=-10*pi:0.01:10*pi;
h=figure;
plot(om,HUP_a_F(om, 5, 50),'k-','LineWidth',2); grid;
xlabel('\omega'); ylabel('hup_5^\^(\omega)'); 
title('hup_5');
xlim([min(om) max(om)]);
saveas(h,'hup_F_5.bmp');

om=-10*pi:0.01:10*pi;
h=figure;
plot(om,HUP_a_F(om, 15, 50),'k-','LineWidth',2); grid;
xlabel('\omega'); ylabel('hup_1_5^\^(\omega)'); 
title('hup_1_5');
xlim([min(om) max(om)]);
saveas(h,'hup_F_15.bmp');

om=-10*pi:0.01:10*pi;
h=figure;
plot(om,SCUP_a_F(om, 5.4, 50),'k-','LineWidth',2); grid;
xlabel('\omega'); ylabel('scup_5_._4^\^(\omega)'); 
title('scup_5_._4');
xlim([min(om) max(om)]);
saveas(h,'scup_F_5_4.bmp');

om=-10*pi:0.01:10*pi;
h=figure;
plot(om,SCUP_a_F(om, 15.4, 50),'k-','LineWidth',2); grid;
xlabel('\omega'); ylabel('scup_1_5_._4^\^(\omega)'); 
title('scup_1_5_._4');
xlim([min(om) max(om)]);
saveas(h,'scup_F_15_4.bmp');

