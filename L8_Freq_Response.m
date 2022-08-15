clc;
clear all;
close all;

%y[n] - 0.1667y[n-1] - 0.1667y[n-2] = x[n]

b=[1];  
a=[1 -0.1667 -0.1667];  
N=10;  
[h,t]=freqz(b,a,N);  
subplot(2,1,1);

plot(t,h);  
subplot(2,1,2),stem(t,h);
xlabel('Time Index-->N'),ylabel('Amplitude');  
title('Plot of Frequency  Response');  