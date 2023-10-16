% Example 5.27
clear all; clc

syms t W 
u(t) = heaviside(t)
h(t) = u(t-2) - u(t+1); 
H(W) = fourier(h(t))
subplot(121); fplot(abs(H(W)), [-30,30]); ylim([0,3]); title('Φάσμα Πλάτους'); grid on
subplot(122); fplot(angle(H(W)), [-30,30],'m'); title('Φάσμα Φάσης'); grid on
