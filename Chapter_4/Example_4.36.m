% Example 4.36
clear all; clc; clf;

syms t s Y X
y0 = 2; y10 = 0; y20 = -1;
x(t) = sin(t);
X = laplace(x(t), s)
Y1 = s*Y - y0;
Y2 = s*Y1 - y10;
Y3 = s*Y2 - y20;
G = -Y3 - Y1 - X;
Sol = solve(G, Y)
y = ilaplace(Sol, t)
pretty(y)
ezplot(y); grid on
