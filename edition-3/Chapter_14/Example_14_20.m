% Example 14.20
clear all; clc

syms x a b
f = 3*x^2 + 8*x; 
F = int(f)
Fab = int(f, a, b)
Fd = int(f, -2, 2)
subs(Fab, {a,b}, {-2,2})