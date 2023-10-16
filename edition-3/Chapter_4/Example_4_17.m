% Example 4.17

clear all; clc

syms w t
A = 1; a = 1;
u(t) = heaviside(t);
x(t) = A * exp(-a*t) * u(t);
X(w) = fourier(x(t), w); X(w) = simplify(X(w))
subplot(121); fplot(abs(X(w))); title('Πλάτος'); grid on
subplot(122); fplot(angle(X(w)),'m'); title('Φάση'); grid on