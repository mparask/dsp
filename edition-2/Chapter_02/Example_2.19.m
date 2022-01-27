% Example 2.19
clc; clear all;

syms t
x(t) = sin(2*pi*t); y(t) = 2*x(t).^2;
subplot(211); ezplot(x(t), [-2 2]); grid on
subplot(212); ezplot(y(t), [-2 2]); grid on
