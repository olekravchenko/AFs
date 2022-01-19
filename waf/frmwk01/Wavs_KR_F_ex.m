clc; clearvars; close all;

addpath('core', 'afs_local');

fig=figure;
LW = 'LineWidth'; lw = 1.25;
npts = 2^10; om_L = -5*pi; om_R = - om_L;
om = linspace(om_L, om_R, npts);
tmp = Wavelet_KR_F(om, @HUP_a_F, 5, 2);
plot(   om,real(Wavelet_KR_F(om, @HUP_a_F, 5, 2)),'k-',...
        om,imag(Wavelet_KR_F(om, @HUP_a_F, 5, 2)),'k--',LW,lw); 
grid;
xlabel('\omega'); ylabel('\psi^\^(\omega)'); 
xlim([min(om) max(om)]);
title('Fourie transform of hup_5^2-wavelet');
saveas(fig,'./img/hup_5_2_F.bmp');

fig=figure;
om=-5*pi:0.01:5*pi;
plot(om,real( Wavelet_KR_F(om, @EUP_a_F, exp(1), 2)  ),'k-',om,imag(Wavelet_KR_F(om, @EUP_a_F, exp(1), 2)),'k--','LineWidth',2); grid;
xlabel('\omega'); ylabel('\psi^\^(\omega)'); 
xlim([min(om) max(om)]);
title('Fourie transform of eup^2-wavelet');
saveas(fig,'./img/eup_2_F.bmp');

fig=figure;
om=-5*pi:0.01:5*pi;
plot(om,real( Wavelet_KR_F(om, @SCUP_a_F, 5.5, 2)  ),'k-',om,imag(Wavelet_KR_F(om, @SCUP_a_F, 5.5, 2)),'k--','LineWidth',2); grid;
xlabel('\omega'); ylabel('\psi^\^(\omega)'); 
xlim([min(om) max(om)]);
title('Fourie transform of scup_5_._5^2-wavelet');
saveas(fig,'./img/scup_5p5_2_F.bmp');