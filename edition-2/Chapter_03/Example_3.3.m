% Example 3.3
clc; clear all; clf

syms t
t0 = 0; T0 = 1; w0 = 2*pi/T0;
% N = πλήθος συντελεστών σειράς Fourier
N = 40; M = N/2; 
% Δημιουργία παλμοσειράς
x = 2*( heaviside(t)-heaviside(t-T0/4)+heaviside(t-3*T0/4) );
% Υπολογισμός σχέσης 3.9
for n = -M : M
   X(n+(M+1)) = (1/T0) * int(x*exp(-j*w0*n*t), t, t0, t0+T0);   
end
% Σχεδιασμός σχημάτων
figure(1); ezplot(x, [0,T0]); grid on
figure(2); subplot(121); stem(-M:M, abs(X)); grid on
subplot(122); stem(-M:M, angle(X)); grid on
