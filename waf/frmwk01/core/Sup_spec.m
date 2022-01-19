function y=Sup_spec(x, fun, eps)

% Sup_spec(x, fun, eps)
% ��������� �������� ������ ������� 
%
% x - �������� ������� fun
% fun - �������, �������� ������ ���������� � ������ x
% eps - �������� ���������� �������    
% 
% y - �������� [-y, y] ������� fun
%
% (�) ������� ������ 31.05.06 10:59


b_num=0; % ����� ������� ����� �������� 

i=1; 

for i=1:(length(fun)/2)
    if (fun(i)>eps)
        b_num=i;
        break;
    end
end

if (b_num==0)
    error('Precision eps in Support_spec is wrong!');
end

y=abs(x(b_num));
