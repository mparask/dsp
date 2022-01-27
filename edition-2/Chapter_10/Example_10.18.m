% Example 10.18
clear all; clc; clf

% Μήκος σήματος και παραθύρου
N = 64;
% Δημιουργία κλιμάκων χρόνου και συχνότητας
n = [0:N-1]; k = [0:1/(N/2):1];
% Δημιουργία σήματος x[n]
x = sin(pi*n/8);
% Δημιουργία παραθύρου Hamming
w = hamming(N)';
% Πολλαπλασιασμός xw[n]=x[n]w[n]
xw = x .* w;
% Υπολογισμός DFT X[k], W[k], Xw[k]
X = fft(x, N);
W = fft(w, N);
Xw = fft(xw, N);
% Σχεδιασμός σημάτων στο χρόνο
figure(1);
subplot(311); stem(n,x); xlim([1,N]); title('Ακολουθία x[n]'); grid on
subplot(312); stem(n,w); xlim([1,N]); title('Παράθυρο w[n]'); grid on
subplot(313); stem(n,xw); xlim([1,N]); title('Γινόμενο xw[n]=x[n] w[n]'); grid on
% Σχεδιασμός φασμάτων στη συχνότητα
figure(2);
subplot(311); stem(k, abs(X(1:N/2+1))); title('|Χ[k]|'); grid on
subplot(312); stem(k, abs(W(1:N/2+1))); title('|W[k]|'); grid on
subplot(313); stem(k, abs(Xw(1:N/2+1))); title('|Χw[k]|'); grid on