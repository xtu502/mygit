close all; clear all; clc
A=xlsread('F:/08_����д��/10_Ԥ��stock/01_�㷨Ԥ��/TSCO.xls',1);
x=A(1:65,1)
y=A(1:65,2)
plot(x,y,'linewidth',1.5);
grid on
xlabel('Time'); ylabel('Stock Price')


close all; clear all; clc
A=xlsread('F:/08_����д��/10_Ԥ��stock/01_�㷨Ԥ��/TSCO.xls',1);
x=A(1:65,5)
y=A(1:65,4)
plot(x,y,'linewidth',1.5);
grid on
xlabel('Time'); ylabel('Stock Price')


% 600728��Ʊ
close all; clear all; clc
A=xlsread('F:/08_����д��/10_Ԥ��stock/01_�㷨Ԥ��/600728.xls',1);
x=A(120:164,1)
y=A(120:164,2)
plot(x,y,'linewidth',1.5);
grid on
xlabel('Time'); ylabel('Stock Price')

close all; clear all; clc
A=xlsread('F:/08_����д��/10_Ԥ��stock/01_�㷨Ԥ��/600728.xls',1);
x=A(120:164,1)
y=A(120:164,4)
plot(x,y,'linewidth',1.5);
grid on
xlabel('Time'); ylabel('Prediction value of turning indicator   \phi(t)')
