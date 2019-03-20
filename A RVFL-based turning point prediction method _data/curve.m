close all; clear all; clc
A=xlsread('F:/08_论文写作/10_预测stock/01_算法预研/TSCO.xls',1);
x=A(1:65,1)
y=A(1:65,2)
plot(x,y,'linewidth',1.5);
grid on
xlabel('Time'); ylabel('Stock Price')


close all; clear all; clc
A=xlsread('F:/08_论文写作/10_预测stock/01_算法预研/TSCO.xls',1);
x=A(1:65,5)
y=A(1:65,4)
plot(x,y,'linewidth',1.5);
grid on
xlabel('Time'); ylabel('Stock Price')


% 600728股票
close all; clear all; clc
A=xlsread('F:/08_论文写作/10_预测stock/01_算法预研/600728.xls',1);
x=A(120:164,1)
y=A(120:164,2)
plot(x,y,'linewidth',1.5);
grid on
xlabel('Time'); ylabel('Stock Price')

close all; clear all; clc
A=xlsread('F:/08_论文写作/10_预测stock/01_算法预研/600728.xls',1);
x=A(120:164,1)
y=A(120:164,4)
plot(x,y,'linewidth',1.5);
grid on
xlabel('Time'); ylabel('Prediction value of turning indicator   \phi(t)')
