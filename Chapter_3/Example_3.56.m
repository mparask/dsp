% Example 3.56
clc; clear all; clf

syms t w; 
u(t) = heaviside(t);
x(t) = exp(-3*t)*u(t); 	
X(w) = fourier(x(t), w);
y(t) = t*exp(-3*t)*u(t); 	
Y(w) = fourier(y(t), w);
H(w) = Y(w) / X(w)
subplot(211); ezplot(abs(H(w)), [-60, 60]); ylim([0, 0.4]); grid on
subplot(212); ezplot(angle(H(w)), [-60, 60]); grid on
