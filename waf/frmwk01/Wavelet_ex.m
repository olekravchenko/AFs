% бшвхякъел беибкер

clearvars; close all; clc;

s_L=-2.263;             s_R=-s_L;
h_L=-2.961;             h_R=-h_L;
xL = 0.5*(h_L+s_L+1);   xR = 0.5*(h_R+s_R+1);

npts = 2^9;
x = linspace(xL, xR, npts);
Wavelet_KR(x,@SCUP_a_F, 5.5, 2, 50, [s_L, s_R], [h_L, h_R], '_0_01');
