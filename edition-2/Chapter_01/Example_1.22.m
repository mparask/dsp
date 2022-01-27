% Example 1.22

syms t
u(t) = heaviside(t); 
ezplot(t, u(t)); grid on; axis([-1 5 -1 2]);


