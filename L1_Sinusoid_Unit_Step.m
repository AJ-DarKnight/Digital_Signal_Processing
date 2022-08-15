clc
clear all
N= 21;
x= ones(1,N);
n = 0:1:N-1;
subplot(2,2,1),stem(n,x);
xlabel('n'),ylabel('x(n)');
title('Unit Step');

%Sinusoidal

x1=cos(.2*pi*n);
subplot(2,2,2),stem(n,x1);
xlabel('n'),ylabel('x(n)');
title('Sinusoidal');

%Exponential

x2=.8.^(n);
subplot(2,2,3),stem(n,x2);
xlabel('n'),ylabel('x(n)');
title('Exponential');

%Addition

x3=sin(.1*pi*n) + sin(.2*pi*n);
subplot(2,2,4),stem(n,x3);
xlabel('n'),ylabel('x(n)');
title('Addition');