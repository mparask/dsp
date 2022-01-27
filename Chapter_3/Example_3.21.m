% Example 3.21
clc; clear all; clf

syms w t
u(t) = heaviside(t);
x(t) = t*exp(-2*t)*sin(4*t) * u(t);
X(w) = fourier(x(t), w); X(w) = simplify(X(w))
subplot(211); ezplot(abs(X(w)), [-10,10]); grid on
subplot(212); ezplot(angle(X(w)), [-10,10]); grid on
