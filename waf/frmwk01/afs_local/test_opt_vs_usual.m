% реяр онйюгшбюер врн FUP_n_F пюанрюер ашярпее я жхйкнл
% вел бепяхъ аег жхйкю

om=-10*pi:0.01:10*pi;

% "норхлхгхпнбюммюъ" он яйнпнярх бепяхъ
tic;
for j=1:10
for i=1:10
   y=FUP_n_F_opt(om, 2, 50)+i+j;
end
end
'optimized'
toc
clear all;

% нашвмюъ бепяхъ
om=-10*pi:0.01:10*pi;
tic;
for j=1:10
for i=1:10
    y=FUP_n_F(om, 2, 50)+i+j;
end
end
'usual'
toc