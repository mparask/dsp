% Example 3.50
clc; clear all; clf

syms t w
x(t) = exp(-t)*heaviside(t);	
Et = int( ( abs(x(t)))^2, t, -inf, inf )
X(w) = fourier(x, w);
Ew = (1/(2*pi)) * int( ( abs(X(w)))^2, w, -inf, inf );
eval(Et)
eval(Ew)





