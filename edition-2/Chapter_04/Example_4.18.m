% Example 4.18

syms t s
a = 1; w0 = 2*pi;
X(s) = (s+a) / ((s+a)^2 + w0^2);
x(t) = ilaplace(X(s),  t)
ezplot (x(t)); grid on; ylim([-420 420])
