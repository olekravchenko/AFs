%% plot uplet
% test
close all; clc; clear

%% Add new family of wavelets
wavemngr('restore',0)
wavemngr('add','Atomic','up',3,'','uplet',[0,1]) 

%% Load uplet from Matlab Wavelet Toolbox
[phi,psi,t] = wavefun('up');

%% Plot scaling function and wavelet (1st derivative)
figure('color','w'), plot(t,phi, t,psi, 'LineWidth',2)
xlabel('t'), ylabel('up'), title('uplet')
legend('scaling function','wavelet')
