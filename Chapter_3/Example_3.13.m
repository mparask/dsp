% Example 3.13
clc; clear all; clf

syms w t
A = 1; a = 1;
u(t) = heaviside(t);
x(t) = A * exp(-a*t) * u(t);
X(w) = fourier(x(t), w); X(w) = simplify(X(w))

subplot(211); ezplot(abs(X(w)), [-10,10]); grid on
subplot(212); ezplot(angle(X(w)), [-10,10]); grid on
