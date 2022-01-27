% Example 1.38
clc; clear all;

A = 2; 
w0 = 3*pi; phase = 0 ; T = (2*pi)/w0 ;
t = 0 : 0.01 : 4*T;
x = A*exp(j*w0*t + phase);
subplot(211); plot(t, real(x)); grid on; axis([0 3 -3 3 ])
subplot(212); plot(t, imag(x), 'r'); grid on; axis([0 3 -3 3 ])
