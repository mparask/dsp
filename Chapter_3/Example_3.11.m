% Example 3.11
clc; clear all; clf

syms t w
d(t) = dirac(t); D(w) = fourier(d(t))

ezplot(D(w)); title('Fourier Transform'); grid on; xlabel('w'); ylabel('D(w)');




