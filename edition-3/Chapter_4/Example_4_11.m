% Example 4.11

clear all

syms t
t0 = 0; T = 5; W = 2*pi/T; N = 50; M = N/2; % Ν+1 πλήθος συντ. Fourier
x = exp(-t);
for k = -M : M
   X(k+(M+1)) = (1/T) * int(x*exp(-j*W*k*t), t, t0, t0+T);
end
stem(-M:M, X); grid on