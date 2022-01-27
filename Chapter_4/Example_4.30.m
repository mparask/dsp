% Example 4.30

syms t s 
u(t) = heaviside(t);
h(t) = exp(-2*t) * ( u(t) - u(t-2) );
H(s) = laplace(h(t), s)
pretty(H(s))

