clc;
clear all;
close all;

%High Pass IIR Filter

rp=input("Enter the pass band ripple:\n");
rs=input("Enter the stop band ripple:\n");
wp=input("Enter the pass band frequency:\n");
ws=input("Enter the stop band frequency:\n");
fs=input("Enter sampling frequency:\n");

w1=2*wp/fs; %pass band freq/ripple
w2=2*ws/fs; %stop band freq/ripple

%[min order,cutoff freq]=Butterworth
[n,wn]=buttord(w1,w2,rp,rs,'s'); %Butterworth Filter

[b,a]=butter(n,wn,'high','s'); %Specify the filter in terms of second-order sections for plotting
w=0:0.1:pi;
[h,wf]=freqs(b,a,w);
m=20*log10(abs(h));
an=angle(h);
subplot(2,1,1);
plot(wf/pi,m);
title("Magnitude Response of HP IIR Filter");
xlabel("Normalized Freq-->");
ylabel("Gain in dB-->");
subplot(2,1,2);
plot(wf/pi,an);
title("Phase Response of HP IIR Filter");
xlabel("Normalized Freq-->");
ylabel("Phase in radians-->");
