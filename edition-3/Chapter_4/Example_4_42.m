% Example 4.42
clear all; clc

syms w t
u(w) = heaviside(w);
X(w) = u(w+1) - u(w-1);
x(t) = ifourier( X(w), t ); x(t) = simplify( x(t) )

subplot(121); ezplot(X(w), [-5, 5]); grid on; ylim([-0.2 1.5])
title('Ευθύς μετασχηματισμός Fourier'); xlabel('Ω'); ylabel('X(Ω)')
subplot(122); ezplot(x(t), [-30, 30]); grid on; ylim([-0.1 0.4])
title('Αντίστροφος μετασχηματισμός Fourier'); xlabel('t'); ylabel('x(t)')