% Example 4.9
clear all; clc

syms t
t0 = 0; T = 5; W = 2*pi/T; N = 20;  % N = πλήθος συντελεστών σειράς Fourier
x = exp(-t);                
a0 = (1/T) * int(x, t, t0, t0+T);   % Σχέση 4.16
for k = 1:N;
  a(k) = (2/T) * int(x*cos(k*W*t), t, t0, t0+T); % Σχέση 4.17
  b(k) = (2/T) * int(x*sin(k*W*t), t, t0, t0+T); % Σχέση 4.18
end
k = 1:N;            % Xs = προσέγγιση σήματος x(t) μέσω σειράς Fourier
Xs = a0 + sum(a.*cos(k*W*t) + b.*sin(k*W*t) );

% Σχεδιασμός αρχικού σήματος και αναπτύγματος (προσέγγισης)
figure(1); subplot(121); fplot(x, [0,T]); grid on; title('Αρχικό σήμα');
subplot(122); fplot(Xs, [0,T],'m'); grid on; title('Ανάπτυγμα (προσέγγιση)')

A = [a0 a];  k = 0: N;
figure(2); subplot(121); stem(k, A); grid on; subplot(122); stem(b); grid on