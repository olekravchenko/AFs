% ��������� �������� �������
clc; clearvars; close all;

% ��������� X
x=-10:0.001:10;

% fun=h_KR(x, @EUP_a_F, exp(1), 2, 1000); % ����� ����� ����� ������ ����������!
fun=Sc_fun_KR(x, @EUP_a_F, exp(1), 2, 50, 50);
% fun=h_KR(x, @FUP_n_F, 3, 2, 50); % wrong
plot(x,fun); grid on;

% ��������� eps
eps=1e-4;
[il,ir] = Supp_spec(x, fun, eps)



