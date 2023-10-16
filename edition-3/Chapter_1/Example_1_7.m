% Example 1.7
% 
syms t
x = cos(pi*t/2 + pi/4);
Ex = int(x^2, inf, inf)
Px = limit( (1/T) * int(x^2, 0, T), T, inf)