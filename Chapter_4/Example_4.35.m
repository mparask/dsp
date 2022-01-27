% Example 4.35
clear all; clc; clf;

syms t s 
a = 1; w0 = 2*pi;
h(t) = exp(-a*t) * sin(w0*t) * heaviside(t); 
H(s) = laplace(h(t),  s)	

figure(1); ezplot(h); grid on; xlim([0 6]); ylim([-1 1]); grid on
num = [ 2*pi ]; 
den = [1 2 (1+4*pi^2)  ];
H = tf(num, den)

figure(2); pzmap(H); xlim([-2 2 ])


