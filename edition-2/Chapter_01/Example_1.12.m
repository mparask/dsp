% Example 1.12

syms t w
x(t) = exp(j*w*t);
xe(t) = 0.5 * [x(t) + x(-t)]; xe = simplify(xe)
xo(t) = 0.5 * [x(t) - x(-t)]; xo = simplify(xo)
