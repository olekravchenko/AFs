function y = hup_a1(x,a,n)

% �������� ������� ��� �������� ���������� hup_a(x)
% ���������� hup_a(x) ����� ������� eup_a(x)

y=zeros(1,length(x));

for k=1:length(x)
    k
    y(1,k)=quadl(@(tau) eup_a(-tau,a).*eup_a(x(k)-tau,a), -2,2);
end