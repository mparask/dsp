% Example 4.40
clear all; clc; clf;

num = [1 2]; den = [2 3 4]; H = tf(num, den)

subplot(211); impulse(H); grid on
subplot(212); step(H); grid on
