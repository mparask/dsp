% Example 3.26
clc; clear all; clf

syms w t
d(w) = dirac(w);
X(w) = pi*(d(w-2) + d(w+2));
x(t) = ifourier(X(w), t);
x(t) = simplify(x(t))

ezplot(x(t), [-2,2]); grid on; ylim([-1.5 1.5])
title(' Αντίστροφος Μετασχηματισμός Fourier'); xlabel('t'); ylabel('x(t)')
