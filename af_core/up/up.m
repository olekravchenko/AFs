function [F]=up(x,m,n)
% � ���� ������� ��������� ��������� ������� up(x) ��������� ���������� ��
% � ���������������� ��� �����.
% m - ���������� ��������� � ���� ����� �� ��������� 
% n - ���������� ��������� � ������������ (�������������� ����� �� up)

F = 0.0;

for k=1:2:2*m 
    F = F + cos(pi*k*x)*ft_up(k,n);
end;

F = F + 0.5;
F(logical(abs(x)>1))=0;
F(F<0)=0;