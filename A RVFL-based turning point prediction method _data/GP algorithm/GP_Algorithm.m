function D=GP_Algorithm(data,tau,max_m)
% GP�㷨�����ά��Ƕ��ά
%clc
%---------------------------------------------------
% ���� Lorenz ʱ������

load b2.txt;
x=b2;
X = normalize_1(x);

%---------------------------------------------------'

disp('----- GP�㷨�����ά��Ƕ��ά -----');
max_m=10;
tau=3;
% t = 1;
m_vector = 1:max_m;
r_vector = exp(-5:0.25:1);

num_m = length(m_vector);
num_r = length(r_vector);
ln_Cr = zeros(num_m,num_r);

%------------------------------------------------------

for i = 1:num_m
    i
    for j = 1:num_r
        % �����������S(m,N,r,t), �μ� <<����ʱ�����з�����Ӧ��>> P35 ʽ(2.29)
        m = m_vector(i);
        r = r_vector(j);
        %ln_Cr(i,j) = log(CorrelationIntegral(m,X,r,t)); % ȱʡ�÷�
        ln_Cr(i,j) = log(CorrelationIntegral(m,X,r,tau)); 
    end
end
% t = toc
subplot(211)
ln_r = log(r_vector);
plot(ln_r,ln_Cr);grid;
xlabel('ln(r)'); ylabel('ln(C(r))');
title(['norm = ', num2str(tau)]);
% legend('m=2','m=5',4)
legend('m=2','m=5',4)
subplot(212)
 %------------------------------------------------------
    % �����������
for i=1:num_m
   A=find(ln_Cr(i,:)~=-inf);
   t=A(1);
    LinearZone = [t:t+7];
    F = polyfit(ln_r(LinearZone),ln_Cr(i,LinearZone),1);
    D(i) = F(1);
end
 plot(D,'+:'); grid;
 xlabel('m'); ylabel('D2');