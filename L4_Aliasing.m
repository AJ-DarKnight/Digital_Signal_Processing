clc;
clear all;
close all;

%To Illustrate the Concept of Aliasing
t= -10:01:10;
T = 4; fm = 1/T;
x = cos(2*pi*fm*t);
fs1 =1.6*fm;
fs2 = 2*fm;                                                                                                                                                                                                                                       
fs3 = 8*fm;
n1 = -4:1:4
xn1 = cos(2*pi*n1*fm/fs1);

subplot(2,2,1),plot(t,x)
xlabel('Time in sec'),ylabel('x(t)')
title('Çontinuous-time Signal')
subplot(2,2,2),stem(n1,xn1)

hold on
subplot(2,2,2),plot(n1,xn1)
xlabel('n'),ylabel('x(n)')
title('Discrete-time Signal with fs<fm')
n2= -5:1:5
xn2= cos(2*pi*n2*fm/fs2);
subplot(2,2,3),stem(n2,xn2)
xlabel('n'),ylabel('x(n)')

hold on
subplot(2,2,3),plot(n2,xn2)
xlabel('n'),ylabel('x(n)')
title('Discrete-time Signal with fs=fm')
n3= -20:1:20
xn3=cos(2*pi*n3*fm/fs3);
subplot(2,2,4),stem(n3,xn3)

hold on
subplot(2,2,4),plot(n3,xn3)
xlabel('n'),ylabel('x(n)')
title('Discrete-time Signal with fs>fm')