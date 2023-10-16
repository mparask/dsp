% Example 1.47

syms t
w0 = 2*pi; T0 = (2*pi)/w0;
x(t) = exp(j*w0*t);
t0 = 0.5;
for m = 1:4
    x(t0) == x(t0 + m*T0)
end