% ���� Lorenz ʱ������

sigma = 16;             % Lorenz ���̲��� a = 16 | 10
b = 4;                  %                 b = 4 | 8/3
r = 45.92;              %                 c = 45.92 | 28        

y = [-1,0,1];           % ��ʼ�� (1 x 3 ��������)
h = 0.01;               % ����ʱ�䲽��

k1 = 30000;             % ǰ��ĵ�������
k2 = 5000;              % ����ĵ�������

z = LorenzData(y,h,k1+k2,sigma,r,b);
X = z(k1+1:end,1);