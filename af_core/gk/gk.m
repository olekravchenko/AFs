function [F]=gk(x,k,m,n)
% � ���� ������� ��������� ��������� ������� gk(x) ��������� ���������� ��
% � ���������������� ��� �����.
% a - ��������� �������
% m - ���������� ��������� � ���� ����� �� ��������� 
% n - ���������� ��������� � ������������ (�������������� ����� �� gk)

F = 0.0;

for ind=1:m 
    F = F + cos(pi*ind*x)*ft_gk(pi*ind,k,n);
end;
% disp(min(F))
F = (F - min(F));
F(logical(abs(x)>1))=0;
F(F<0)=0;

