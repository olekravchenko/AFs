function Wavelet_KR(x, AF_F, af_order, p, n, sc_interv, h_interv, filename_add)

% Wavelet_KR(x, AF_F, af_order, p, n, sc_interv, h_interv, filename_add)
% �������� ���������-�������
%
% x - ��������
% AF_F - ������ �� ������ ��������� �������
% af_order - ������� ��������� �������
% p - ������� �������� (������� ��������� (cos(om/2))^p)    
% p ������ ���� ������������� ����� ������
% n - �������� (���������� ������ ������������ ��� ���������� 
%               ��������������� ��������� ������� - �� ��������� 50)     
% n ������ ���� ������������� ����� ������ 
% sc_interv - �������� �������������������� 
%             ������� [scl, scr]
%
% h_interv -  �������� ������������ 
%             ����������� ������������� [hl, hr]
%
% filename_add - ������� � ����� ����� � �����������
%
% (�) ������� ������ 27.08.06 

% �������� n �� ���������
if nargin == 4
    n=50;
end

% �������� ������������ ������� ���������
if (length(sc_interv)~=2)
    error('Wrong parameter sc_interv!');
end

if (length(h_interv)~=2)
    error('Wrong parameter h_interv!');
end

time=0;

y=zeros(1,length(x));

c_mem=2*sqrt(2);
c_mem1=-2*pi*1i;

for k=1:length(x)
    
    if (k<=10), tic; end
   
    y(k)=c_mem*integral(@(tau) Sc_fun_KR(2*(x(k)-tau)-1, AF_F, af_order, p, n, n, max(abs(sc_interv))) .* ...
            exp(c_mem1*tau) .* h_KR(2*tau,AF_F, af_order,p,n,max(abs(h_interv))), 0.5*h_interv(1), 0.5*h_interv(2));
    
    if (k<=10), time=time+toc; end
    
    if(k==10), fprintf('Approximate computing time is %4.2f sec\n', num2str(length(x)*time/10)); end   
    
    fprintf('iteration number %4i over %5i\n',k,length(x));
end

Wav_x   = x;
Wav     = y;

afname = func2str(AF_F);
num_af = strfind(afname, '_');
fname  = ['./mat/Wav_' lower(afname(1:num_af)) num2str(af_order) '_' num2str(p) filename_add];

save(fname, 'Wav_x', 'Wav'); 