% Example 5.14
clear all; clc

syms t s 
a = -1; 
h(t) = exp(-a*t) * sin(2*pi*t) * heaviside(t); 
H(s) = laplace(h(t),  s)	

num = [ 2*pi ]; 
den = [ 1 2 (1+4*pi^2) ];
H = tf(num, den)
midenika = zero( H ) 
poloi = pole( H )
subplot(121); ezplot(h); xlim([0 6]); ylim([-1 1]); grid on
subplot(122); pzmap(H); xlim([-2 2 ]); grid on

% (β) Επαναλαμβάνουμε την επίλυση για α=0 τροποποιώντας μόνο τις εντολές:
% a = 1 και den = [ 1 2 (1+4*pi^2) ];
% σε: a = 0 και den = [ 1 0 (4*pi^2) ];

% (γ) Επαναλαμβάνουμε την επίλυση για α=-1 τροποποιώντας μόνο τις εντολές:
% a = 1 και den = [ 1 2 (1+4*pi^2) ];
% σε: a = -1 και den = [ 1 -2 (1+4*pi^2) ];