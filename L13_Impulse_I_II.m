clc;
clear all;
close all;

n=0:10;

%Impulse response of Ist and IInd order system

fprintf('Ist order\n');
b=input("Numerator: "); %[2 0 0]
a=input("Denominator: "); %[1 -0.9 0]
%(num, den of transfer fn, time series)
y=dimpulse(b,a,length(n)); 
subplot(2,1,1);stem(n,y);
title("Ist order");
xlabel("n-->");
ylabel("Amplitude");

fprintf('IInd order\n');
b=input("Numerator: "); %[1 0 0]
a=input("Denominator: "); %[1 0.6 0.8]
z=dimpulse(b,a,length(n));
subplot(2,1,2);stem(n,z);
title("IInd order");
xlabel("n-->");
ylabel("Amplitude");
