% Example 14.19
clear all; clc

syms x
y = x^3 + 4*x^2 - 23
Yd = diff(y)

Yd_roots = solve(Yd)
dA = subs(Yd, x, -4)

dB = subs(Yd, x, -1)
dC = subs(Yd, x, 1)