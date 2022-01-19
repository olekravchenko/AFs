function y=Wavelet_KR_F(om, AF_F, af_order, p, n)

% Wavelet_KR_F(om, AF_F, af_order, p, n)
% ������ ��������� ���������-�������
%
% om - �������
% AF_F - ������ �� ������ ��������� �������
% af_order - ������� ��������� �������
% p - ������� �������� (������� ��������� (cos(om/2))^p)    
% p ������ ���� ������������� ����� ������
% n - �������� (���������� ������ ������������ ��� ���������� ������� - �� ��������� 20)     
% n ������ ���� ������������� ����� ������
% 
% (�) ������� ������ 26.08.06 
%

% �������� n �� ���������
if nargin == 4
    n=20;
end

y = (1/sqrt(2)) * ...
    H_om_F(om/2+pi, AF_F, af_order, p) .* ...
    Sc_om_F(om/2, AF_F, af_order, p, n) .* ...
    exp(-1i*om/2);