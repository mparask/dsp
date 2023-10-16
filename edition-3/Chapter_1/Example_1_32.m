% Example 1.32
%
syms t
u(t) = heaviside(t); 
x(t) = u(t-2) - u(t-5);
fplot(t, x(t)); grid on; xlim([0, 7]); ylim([-1,2])
y = diff(x(t), t)