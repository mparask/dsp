% Example 10.11
clear all; clc; clf;

% Δημιουργία ακολουθίας x[n]
N = 10; n = [0:N]; x = 0.7 .^ n;

% Κυκλική αναδίπλωση y[n] = x[n mod 11]
y = x(mod(-n, N) + 1);

% Υπολογισμός κυκλικά άρτιας συνιστώσας x_ce[n]
xce = 0.5 * ( x + y );

% Υπολογισμός κυκλικά περιττής συνιστώσας x_co[n]
xco = 0.5 * ( x - y );

% Σχεδίαση ακολουθιών x_ce[n] και x_c0[n]
figure(1);
subplot(131); stem(n,x); title('Αρχική ακολουθία x[n]'); grid on
subplot(132); stem(n,xce); title('Κυκλικά άρτια συνιστώσα x_c_e[n]'); grid on
subplot(133); stem(n,xco); title('Κυκλικά περιττή συνιστώσα x_c_o[n]'); grid on

k = [0:N-1]; % Κλίμακα συχνότητας

% Υπολογισμός DFT ακολουθιών x[n] και y[n]
X = fft(x,N); Y = fft(y,N);

% Υπολογισμός DFT ακολουθιών xce[n] και xc0[n]
Xce = fft(xce,N); Xco = fft(xco,N);

% Σχεδίαση πραγματικού μέρους DFT Xce[k], X[k]
figure(2); 
subplot(221); stem(k, real(Xce)); title('Πραγματικό μέρος Xce[k]');grid on
subplot(222); stem(k, real(X)); title('Πραγματικό μέρος X[k]'); grid on

% Σχεδίαση φανταστικού μέρους DFT Xco[k] X[k]
subplot(223); stem(k, imag(Xco)); title('Φανταστικό μέρος Xco[k]');grid on
subplot(224); stem(k, imag(X)); title('Φανταστικό μέρος X[k]');grid on