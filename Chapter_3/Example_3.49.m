% Example 3.49
clc; clear all; clf

syms t w 
x(t) = 10*exp(-3*abs(t));
X(w) = fourier(x(t));
Sx(w) = ( abs( X(w) ) )^2; Sx(w) = simplify(Sx(w))
ezplot(abs(Sx(w)), [-15, 15]); ylim([0, 45]); grid on





