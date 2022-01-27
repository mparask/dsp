% Example 10.9

% Δημιουργία ακολουθίας x[n]
N = 10; n = [0:N]; x = 0.58 .^ n;

% Κυκλική αναδίπλωση y[n] = x[n mod 11]
y = x(mod(-n,N+1) + 1);

% Σχεδίαση ακολουθιών x[n] και y[n]
figure(1); subplot(121); stem(n,x); title('Ακολουθία x[n]'); grid on
subplot(122); stem(n,y); title('Κυκλική αναδίπλωση y[n]=x[[-n]]_1_1'); grid on 
 
% Υπολογισμός DFT ακολουθιών x[n] και y[n]
k=[0:N]; X = fft(x,N+1); Y = fft(y,N+1);

% Σχεδίαση πραγματικού & φανταστικού μέρους DFT X[k] και Y[k]
figure(2); 
subplot(221); stem(k,real(X)); title('Πραγματικό μέρος X[k]'); grid on
subplot(222); stem(k,imag(X)); title('Φανταστικό μέρος X[k]'); grid on
subplot(223); stem(k,real(Y)); title('Πραγματικό μέρος Y[k]'); grid on
subplot(224); stem(k,imag(Y)); title('Φανταστικό μέρος Y[k]'); grid on