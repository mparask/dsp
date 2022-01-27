% Example 3.25
clc; clear all; clf

syms w t
d(w) = dirac(w);
X(w) = -j*pi*( d(w-4) - d(w+4) );
x(t) = ifourier(X(w), t); x(t) = simplify(x(t))

ezplot(x(t), [-1.5, 1.5]); grid on; ylim([-1.5, 1.5]);
title(' Αντίστροφος Μετασχηματισμός Fourier'); 
xlabel('t'); ylabel('x(t)')
