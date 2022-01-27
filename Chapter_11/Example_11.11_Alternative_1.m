% Example 11.11 - Alternative solution 1
clc; clear all

% Σχεδιασμός του φίλτου με δεδομένα Ν και Ωc
N = 3; Wc = 1.15;

[z,p,k] = buttap(N);

p = p*Wc
k = k*Wc^N

B = real(poly(z))
b0 = k; b = k*B;

a = real(poly(p))

H = tf(b,a)
freqz(b,a)