% Example 4.10
clear all; clc

syms t
t0 = 0; T = 5; W = 2*pi/T; 
N = 100; M = N/2;        		% Ν+1 = πλήθος συντελεστών Fourier
x = exp(-t);

for k = -M : M          		% Υπολογισμός συντελεστών Χ(n)
   X( k+(M+1) ) = (1/T) * int(x*exp(-j*W*k*t), t, t0, t0+T);
   R( k+(M+1) ) = exp(j*W*k*t);
end

Xs = sum(X .* R);  				% Xs προσέγγιση x(t) με εκθετική σειρά Fourier
subplot(122); fplot(Xs, [0,T]); grid on  	% Σχεδιασμός προσέγγισης
