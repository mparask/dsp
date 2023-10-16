% Example 4.14

syms t w
d(t) = dirac(t); 
D(w) = int( d(t)*exp(-j*w*t), t, -inf, inf )

% Εναλλακτική επίλυση
% syms t w
% d(t) = dirac(t); D(w) = fourier(d(t))