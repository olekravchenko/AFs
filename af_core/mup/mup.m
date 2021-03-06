function [F] = mup(x,n,N,M)
% � ���� ������� ��������� ��������� ������� up(x) ��������� ���������� ��
% � ���������������� ��� �����.
% m - ���������� ��������� � ���� ����� �� ��������� 
% n - ���������� ��������� � ������������ (�������������� ����� �� up)

F = 0.0;

for k=1:1:N 
    ft = ft_mup(pi*k,n,M);
    F = F + cos(pi*k*x)*ft;
end;

F = F - min(F);
F(logical(abs(x)>1))=0;
F(F<0)=0;