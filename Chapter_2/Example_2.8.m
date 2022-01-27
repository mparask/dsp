% Example 2.8
clc; clear all;

syms t
u(t) = heaviside(t);
x(t) = u(t); 
y(t) = exp(-2*t) * x(t);
subplot(211); ezplot(x(t), [-1 3]); ylim([-0.5 1.5]); grid on
subplot(212); ezplot(y(t), [-1 3]); ylim([-0.5 1.5]); grid on
