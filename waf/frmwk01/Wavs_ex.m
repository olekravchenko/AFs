clc; clearvars; close all;

addpath '..'

load Wav_up_0_01
fig=figure;
plot(Wav_x,real(Wav),'k-',Wav_x,imag(Wav),'k--','LineWidth',2); grid;
xlabel('t'); ylabel('\psi(t)'); 
title('up-wavelet');
xlim([min(Wav_x) max(Wav_x)]);
saveas(fig,'./img/up-wavelet.bmp');

load Wav_fup2_0_01
fig=figure;
plot(Wav_x,real(Wav),'k-',Wav_x,imag(Wav),'k--','LineWidth',2); grid;
xlabel('t'); ylabel('\psi(t)'); 
title('fup_2^2-wavelet');
ylim([-0.3 0.3]);
xlim([min(Wav_x) max(Wav_x)]);
saveas(fig,'./img/fup_2^2-wavelet.bmp');


load Wav_h3_0_01
fig=figure;
plot(Wav_x,real(Wav),'k-',Wav_x,imag(Wav),'k--','LineWidth',2); grid;
xlabel('t'); ylabel('\psi(t)'); 
title('h_3^2-wavelet');
xlim([min(Wav_x) max(Wav_x)]);
saveas(fig,'./img/h_3^2-wavelet.bmp');

load Wav_up2_0_01
fig=figure;
plot(Wav_x,real(Wav),'k-',Wav_x,imag(Wav),'k--','LineWidth',2); grid;
xlabel('t'); ylabel('\psi(t)'); 
title('up_2^2-wavelet');
xlim([min(Wav_x) max(Wav_x)]);
saveas(fig,'./img/W_up_2_2.bmp');