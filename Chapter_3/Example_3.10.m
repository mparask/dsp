% Example 3.10
clc; clear all; clf

syms t
t0 = 0; T = 2*pi; w = 2*pi/T; N = 20; M = N/2;
x = sin(7*pi*t) + cos(2*pi*t); 
for n = -M:M
   X( n+(M+1) ) = (1/T) * int(x*exp(-j*w*n*t), t, t0, t0+T);
end
stem(-M:M, X); grid on
