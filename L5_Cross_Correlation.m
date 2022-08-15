% Cross Correlation of 2 sequences 

clc;
clear all;
close all;

%Input Sequence
x = [1, 0, 1, 2, -1, 3]; 
N1 = length(x);
n = 0 : 1 : N1 - 1;

subplot(2, 2, 1), stem(n, x);
xlabel('n'), ylabel('x(n)');
h = [1, 1, 2, 2, 1, 1]; % Impulse Sequence


N2 = length(h);
n1 = 0 : 1 : N2 - 1;
subplot(2, 2, 2), stem(n1, h);
xlabel('n'), ylabel('h(n)');
y = xcorr(x,h) % Output Sequence

n2 = 0: 1: N1 + N2 - 2;
subplot(2, 1, 2), stem(n2, y);
xlabel('n'), ylabel('y(n)');
title('Correlation of two sequences x(n) and h(n)')