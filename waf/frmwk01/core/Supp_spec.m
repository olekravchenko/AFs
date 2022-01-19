function [xl, xr]=Supp_spec(x, fun, eps)

% Supp_spec(x, fun, eps)
% ��������� �������� �������� ������� 
%
% x - �������� ������� fun
% fun - �������, �������� ������ ���������� � ������ x
% eps - �������� ���������� �������    
% 
% y - �������� [-y, y] ������� fun
%
% (�) ������� ������ 31.05.06 10:59


b_num=0; % ���� ���������� ���������� 

for i=1:(length(fun)/2)
    if (abs(fun(i))>eps)
        b_num=i;
        break;
    end
end

if (b_num==0)
    error('Precision eps in Support_spec is wrong!');
end

xl=x(b_num);

b_num=0; % ���� ���������� ����������

for i=length(fun):-1:(length(fun)/2)
    if (abs(fun(i))>eps)
        b_num=i;
        break;
    end
end

if (b_num==0)
    error('Precision eps in Support_spec is wrong!');
end

xr=x(b_num);
