% Example 4.23
clear all; clc

syms w t
u(t) = heaviside(t);
x(t) = t*exp(-2*t)*sin(4*t) * u(t);
X(w) = fourier(x(t), w); X(w) = simplify(X(w))
subplot(121); fplot(abs(X(w)), [-10,10]); title('����� �������'); grid on
subplot(122); fplot(angle(X(w)), [-10,10], 'm'); title('����� �����'); grid on