clc;
clear all;
close all;
L=input("Enter Sampling Frequency: ");
N=input("Enter length of Input Signal: ");
f1=input("Enter Freequency of First Sinusoid: ");
f2=input("Enter Freequency of First Sinusoid: ");
n=0:N-1;
x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
y=interp(x,L);

subplot(2,1,1); stem(n,x(1:N));
title("Input Sequence");
xlabel("Time(N)");ylabel("Amplitude");

subplot(2,1,2);
m=0:N*L-1;
stem(m,y(1:N*L));
title("Output Sequence");
xlabel("Time(N)");ylabel("Amplitude");