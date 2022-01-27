% Example 4.29

syms t s 
h(t) = exp(-t) * heaviside(t);
H(s) = laplace(h(t), s)
pretty(H(s))

