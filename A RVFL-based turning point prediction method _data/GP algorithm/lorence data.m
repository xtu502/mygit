% 产生 Lorenz 时间序列

sigma = 16;             % Lorenz 方程参数 a = 16 | 10
b = 4;                  %                 b = 4 | 8/3
r = 45.92;              %                 c = 45.92 | 28        

y = [-1,0,1];           % 起始点 (1 x 3 的行向量)
h = 0.01;               % 积分时间步长

k1 = 30000;             % 前面的迭代点数
k2 = 5000;              % 后面的迭代点数

z = LorenzData(y,h,k1+k2,sigma,r,b);
X = z(k1+1:end,1);