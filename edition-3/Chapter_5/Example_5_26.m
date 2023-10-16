% Example 5.26

clear all; clc

num = [ 6 2 15 ]; 
den = [ 4 -3 -5];
w = 0 : 0.1 : 10; 
H = freqs(num, den, w);
subplot(121); plot(abs(H));  grid on
subplot(122); plot(angle(H),'m');  grid on