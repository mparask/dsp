% Example 1.6
% 
syms t; 
x = exp(abs(t)); 
Ex = 2*int(x^2, 0, inf)