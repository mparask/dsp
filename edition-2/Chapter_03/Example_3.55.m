% Example 3.55
clc; clear all; clf

syms w t; 
a = 2
u(t) = heaviside(t);
h(t) = exp(-a*t) * u(t);  
H(w) = fourier(h(t), w); simplify(H(w))
subplot(121); ezplot(abs(H(w)), [-10,10]); grid on
subplot(122); ezplot(angle(H(w)), [-10,10]); grid on






