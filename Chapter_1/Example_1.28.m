% Example 1.28

syms t
u(t) = heaviside(t); 
x(t) = u(t-2) - u(t-5);
ezplot(t, x(t)); grid on; xlim([0, 8]); ylim([-1,2])
y(t) = diff(x(t), t)




