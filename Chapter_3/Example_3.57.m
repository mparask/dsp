% Example 3.57
clc; clear all; clf

syms t w 
u(t) = heaviside(t)
x(t) = u(t-2) - u(t+1); 
X(w) = fourier(x(t))
subplot(211); ezplot(abs(X(w)), [-30,30]); ylim([0,3]); grid on
subplot(212); ezplot(angle(X(w)), [-30,30]); grid on

