% Example 4.53

syms t w
x = exp(-2*t)*heaviside(t);	
Et = int( ( abs(x))^2, t, -inf, inf )
X(w) = fourier(x, w);
Ew = (1/(2*pi)) * int( ( abs(X(w)))^2, w, -inf, inf );
eval(Et)
eval(Ew)