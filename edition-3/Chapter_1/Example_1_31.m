% Example 1.31
%
syms t; 
u(t) = heaviside(t); 
fplot(t, u(t)); 
grid on; 
axis([-1 5 -0.5 1.5]);