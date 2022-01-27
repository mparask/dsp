% Example 3.60
clc; clear all; clf

num = [ 6 2 15 ]; 
den = [ 4 -3 -5];
w = 0 : 0.1 : 10;
H = freqs(num, den, w);
figure(1)
subplot(211); plot(abs(H));  grid on
subplot(212); plot(angle(H));  grid on

figure(2); freqs(num,den,w);
