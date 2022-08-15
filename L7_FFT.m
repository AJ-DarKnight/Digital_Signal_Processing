clc;
clear all;
close all;
% To perform FFT of a Signal
x= input("Enter the sequence :\n");
N= length(x)
xK= fft(x,N)
xn= ifft(xK)
n= 0:N-1;
subplot(2,2,1);
stem(n,x);
xlabel("n-->");
ylabel("Amplitude");
title("Input Sequence");
subplot(2,2,2);
stem(n,abs(xK));
xlabel("n-->");
ylabel("Magnitude");
title("Magnitude Response");
subplot(2,2,3);
stem(n,angle(xK));
xlabel("n-->");
ylabel("Phase");
title("Phase Response");
subplot(2,2,4);
stem(n,xn);
xlabel("n-->");
ylabel("Amplitude");
title("IFFT");