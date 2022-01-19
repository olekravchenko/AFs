clc; clearvars; close all;

addpath '..'

load 'Wav_hup_5_2_0_01'
fig=figure;
plot(Wav_x,real(Wav),'k-',Wav_x,imag(Wav),'k--','LineWidth',2); grid;
xlabel('t'); ylabel('\psi(t)'); 
xlim([min(Wav_x) max(Wav_x)]);
title('hup_5^2-wavelet');
saveas(fig,'./img/hup_5_2.bmp');

load 'Wav_eup_e_2_0_01'
fig=figure;
plot(Wav_x,real(Wav),'k-',Wav_x,imag(Wav),'k--','LineWidth',2); grid;
xlabel('t'); ylabel('\psi(t)'); 
xlim([min(Wav_x) max(Wav_x)]);
title('eup^2-wavelet');
saveas(fig,'./img/eup_2.bmp');

load 'Wav_scup_5p5_2_0_01'
fig=figure;
plot(Wav_x,real(Wav),'k-',Wav_x,imag(Wav),'k--','LineWidth',2); grid;
xlabel('t'); ylabel('\psi(t)'); 
xlim([min(Wav_x) max(Wav_x)]);
title('scup_5_._5^2-wavelet');
saveas(fig,'./img/scup_5p5_2.bmp');

