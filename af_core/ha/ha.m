function [F]=ha(x,a,m,n)
% � ���� ������� ��������� ��������� ������� ha(x) ��������� ���������� ��
% � ���������������� ��� �����.
% a - ��������� �������
% m - ���������� ��������� � ���� ����� �� ��������� 
% n - ���������� ��������� � ������������ (�������������� ����� �� up)

F = 0.0;

for i=1:m 
    F = F + cos((a-1)*pi*i*x)*ft_ha(a,(a-1)*pi*i,n);
end;

F = (a - 1)*(F + 0.5);
F(logical(abs(x)>1/(a-1)))=0;
F(F<0)=0;