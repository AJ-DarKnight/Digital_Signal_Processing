clc;
clear all;
close all;

%Low Pass FIR Filter

n=input("Enter the length of Window:\n");
fp=input("Enter the pass band frequency:\n");
fq=input("Enter the stop band frequency:\n");
fs=input("Enter sampling frequency:\n");

fn=2*fp/fs; %cutoff freq
window=blackman(n+1)
b=fir1(n,fn,'low',window);
[H W]=freqz(b,1,128);

subplot(2,1,1);
plot(W/pi,abs(H));
title("Magnitude Response of LP FIR Filter");
xlabel("Normalized Freq-->");
ylabel("Gain in dB-->");
subplot(2,1,2);
plot(W/pi,angle(H));
title("Phase Response of LP FIR Filter");
xlabel("Normalized Freq-->");
ylabel("Phase in radians-->");