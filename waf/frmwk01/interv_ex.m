% срнвмемхе мняхрекъ тсмйжхх
clc; clearvars; close all;

% онднапюрэ X
x=-10:0.001:10;

% fun=h_KR(x, @EUP_a_F, exp(1), 2, 1000); % мсфмн апюрэ лмнцн вкемнб пюгкнфемхъ!
fun=Sc_fun_KR(x, @EUP_a_F, exp(1), 2, 50, 50);
% fun=h_KR(x, @FUP_n_F, 3, 2, 50); % wrong
plot(x,fun); grid on;

% онднапюрэ eps
eps=1e-4;
[il,ir] = Supp_spec(x, fun, eps)



