% Example 3.23

syms t s
a = 1; w0 = 2*pi;
X(s) = (s+a) / ((s+a)^2 + w0^2);
x(t) = simplify(ilaplace(X(s),  t))
fplot (x(t)); grid on; ylim([-420 420])

num = [1 1]; 
den = [1 2 (1+4*pi^2)]; 
[C, L, R] = residue(num, den)