function y=H_om_F(om, AF_F, af_order, p)

% H_om_F(om, AF_F, af_order, p)
% ������ ������������ ����������� ������������� ��������� ���������-�������
%
% om - �������
% AF_F - ������ �� ������ ��������� �������
% af_order - ������� ��������� �������
% p - ������� �������� (������� ��������� (cos(om/2))^p)    
% p ������ ���� ������������� ����� ������ (�� �����. 2)
%
% (�) ������� ������ 24.08.06
%

% �������� p �� ���������
if nargin == 3
    p=2;
end

% �������� �� ��������������� � ����������� p
if ((numel(p) > 1) || (p < 0))
    error('p must be a positive scalar!');
end

% ��������� ��� p - �����
if(mod(p,floor(p))~=0)
    error('p must be an integer!');
end

if (~isa(AF_F, 'function_handle'))
   error('AF_F must be a function handle!');
end 

% ���������� �������
y = sqrt(2) * ...
    cos(om/2).^p .* ...
    AF_F(om,af_order);
        
    


   

    
        