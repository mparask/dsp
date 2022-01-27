% Example 3.9
clc; clear all; clf

syms t
t0 = 0; T = 5; w = 2*pi/T; N = 10; M = N/2; % Ν+1 πλήθος συντ.Fourier
x = exp(-t);
for n = -M : M
   X(n+(M+1)) = (1/T) * int(x*exp(-j*w*n*t), t, t0, t0+T);
end
stem(-M:M, X); grid on


