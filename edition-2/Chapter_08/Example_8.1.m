% Example 8.1

clear all; clc; 
 
% x[n]=0.9^n
syms n z;

% Ορισμός σήματος x[n]
x(n) = 0.9.^n;

% Υπολογισμός μετασχηματισμού Ζ
X(z) = ztrans(x, n, z)

pretty(X)

