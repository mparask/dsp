% Example 5.11

clear all; clc

syms t s Y X
Y1 = s*Y; 
Y2 = s*Y1;
X1 = s*X; 
X2 = s*X1;
G = 6*Y2+2*Y1-Y-2*X2+X1+3*X;
Sol = solve(G, Y)
H = Sol / X
simplify(H)
pretty(ans)