% Example 5.17

clear all; clc
num = [1 2]; 
den = [1 3 3]; 
H = tf(num, den)
subplot(121); impulse(H); grid on
subplot(122); step(H); grid on