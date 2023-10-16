% Example 5.22
clear all; clc

syms W t; 
a = 5
u(t) = heaviside(t);
h(t) = exp(-a*t) * u(t);  
H(W) = fourier(h(t), W); simplify(H(W))
subplot(121); fplot(abs(H(W)), [-10,10]); grid on
subplot(122); fplot(angle(H(W)), [-10,10],'m'); grid on