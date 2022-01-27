% Example 2.9
clc; clear all;

syms t
u(t) = heaviside(t); 
x(t) = u(t) - u(t-1); 
y(t) = x(t+1) + 0.5*x(t);
subplot(211); ezplot(x(t), [-2 3]); ylim([-0.5 1.5]); grid on;
subplot(212); ezplot(y(t), [-2 3]);  ylim([-0.5 1.5]); grid on;

