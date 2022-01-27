% Example 11.99

clc; clear all

% a = [1, -0.44151, -0.77701, 0.39013, -0.168] % Ευσταθές

a = [1, -0.44, -0.78, 0.39, -0.17] % Ασταθές

b = [1, -1, 2]
H = tf(b,a,1)

z = zero(H)
p = pole(H)

zplane(z, p)

[z,p,k]=residuez(b,a)

