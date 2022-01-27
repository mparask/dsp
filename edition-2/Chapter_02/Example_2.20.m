% Example 2.20
clc; clear all;

syms t; x(t) = sin(pi*t); y(t) = t^2 * x(t);
subplot(211); ezplot(x(t), [0 20]); grid on
subplot(212); ezplot(y(t), [0 20]); grid on

