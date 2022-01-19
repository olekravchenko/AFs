clc; clearvars; close all;

addpath('core', 'afs_local');

om=-5*pi:0.01:5*pi;
h=figure;
plot(om,real(Wavelet_KR_F(om, @up_m, 2, 5)),'k-',om,imag(Wavelet_KR_F(om, @up_cos, 2, 50)),'k--','LineWidth',2); grid;
xlabel('\omega'); ylabel('\psi^\^(\omega)'); 
title('up-wavelet');
xlim([min(om) max(om)]);
saveas(h,'./img/W_up_F.bmp');

% om=-5*pi:0.01:5*pi;
% h=figure;
% plot(om,real(Wavelet_KR_F(om, 'fup2', 2, 50)),'k-',om,imag(Wavelet_KR_F(om, 'fup2', 2, 50)),'k--','LineWidth',2); grid;
% xlabel('\omega'); ylabel('\psi^\^(\omega)'); 
% title('fup_2^2-wavelet');
% xlim([min(om) max(om)]);
% saveas(h,'./img/W_fup_2_2_F.bmp');
% 
% om=-5*pi:0.01:5*pi;
% h=figure;
% plot(om,real(Wavelet_KR_F(om, 'h3', 2, 50)),'k-',om,imag(Wavelet_KR_F(om, 'h3', 2, 50)),'k--','LineWidth',2); grid;
% xlabel('\omega'); ylabel('\psi^\^(\omega)'); 
% title('h_3^2-wavelet');
% xlim([min(om) max(om)]);
% saveas(h,'./img/W_h_3_2_F.bmp');
% 
% om=-5*pi:0.01:5*pi;
% h=figure;
% plot(om,real(Wavelet_KR_F(om, 'up2', 2, 50)),'k-',om,imag(Wavelet_KR_F(om, 'up', 2, 50)),'k--','LineWidth',2); grid;
% xlabel('\omega'); ylabel('\psi^\^(\omega)'); 
% title('up_2^2-wavelet');
% xlim([min(om) max(om)]);
% saveas(h,'./img/W_up_2_2_F.bmp');