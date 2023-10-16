% Example 4.4

syms t
t0 = 0; T0 = 1; w0 = 2*pi/T0;
% N = πλήθος συντελεστών σειράς Fourier
N = 40; M = N/2; 

% Δημιουργία παλμοσειράς
x = 2*( heaviside(t)-heaviside(t-T0/4)+heaviside(t-3*T0/4) );

% Υπολογισμός σχέσης (4.9)
for n = -M : M
   X(n+(M+1)) = (1/T0) * int(x*exp(j*w0*n*t), t, t0, t0+T0);   
end

% Σχεδιασμός σχημάτων
figure(1); fplot(x, [0,T0]); ylim([-0.5, 2.5]); grid on
figure(2); subplot(121); stem(-M:M, abs(X)); grid on; 
subplot(122); stem(-M:M, angle(X),'m'); grid on