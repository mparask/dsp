% Example 3.15
clc; clear all; clf
syms t w
x(t) = cos(10*pi*t);
X(w) = fourier(x(t), w); 
X = simplify(X)

w1 = -60 : 1 : 60;
XX = zeros(length(w1)); 
XX(29) = 1; XX(92) = 1;
stem(w1, XX); ylim([0 1.2]); grid on

