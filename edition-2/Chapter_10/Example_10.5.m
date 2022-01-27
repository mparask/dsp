% Example 10.5
clf; clc; clear all

% Ορισμός μήκους DFT
N1 = 10; N2 = 100;

% Δημιουργία σήματος x[n] για 100 σημεία
n = [0:1:N2-1]; x = cos(5*pi*n/9) + cos(4*pi*n/9);

% Δημιουργία σήματος x1[n] για 10 σημεία
n1 = [0:1:N1-1]; x1 = x(1:1:10);
% Υπολογισμός DFT 10 σημείων
X1 = fft(x1, N1); 
% Ορισμός κλιμάκων συχνότητας
k1 = [0:1:N1-1]; w1 = pi/N1*k1;
% Σχεδιασμός σήματος και φάσματος πλάτους
figure(1); subplot(211); stem(n1, x1); grid;
xlabel('Χρόνος [n]'); title('Σήμα x1[n]'); 
subplot(212); stem(w1/pi, abs(X1)); grid on; xlim([0 1]);
xlabel('Συχνότητα [k]'); title('Πλάτος |X1[k]|'); 

% Δημιουργία σήματος x2[n] για 10 σημεία και 90 μηδενικά
x2 = [x1, zeros(1,N2-N1)];
% Υπολογισμός DFT 100 σημείων με zero padding
X2 = fft(x2, N2);
% Ορισμός κλιμάκων συχνότητας
k2 = [0:1:N2-1]; w2 = pi/N2*k2;
% Σχεδιασμός σήματος και φάσματος πλάτους
figure(2); subplot(211); stem(n, x2); grid;
xlabel('Χρόνος [n]'); title('Σήμα x2[n]'); 
subplot(212); stem(w2/pi, abs(X2)); grid on; xlim([0 1]);
xlabel('Συχνότητα [k]'); title('Πλάτος |X2[k]|'); 

% Υπολογισμός DFT 100 σημείων με πραγματικά δείγματα
X = fft(x, N2);
% Σχεδιασμός σήματος και φάσματος πλάτους
figure(3); subplot(211); stem(n, x); grid;
xlabel('Χρόνος [n]'); title('Σήμα x[n]'); 
subplot(212); stem(w2/pi, abs(X)); grid on; xlim([0 1]);
xlabel('Συχνότητα [k]'); title('Πλάτος |X[k]|');