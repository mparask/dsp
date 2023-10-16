% Example 12.21

N = 64; 		% Μήκος σήματος και παραθύρου

% Δημιουργία κλιμάκων χρόνου και συχνότητας
n = [0:N-1]; k = [0:1/(N/2):1];
x = sin(pi*n/4); 	% Δημιουργία σήματος x[n]
w = hamming(N)'; 	% Δημιουργία παραθύρου Hamming

xw = x .* w; 	% Πολλαπλασιασμός xw[n]=x[n]w[n]

% Υπολογισμός DFT X[k], W[k], Xw[k]
X = fft(x, N); W = fft(w, N); Xw = fft(xw, N);

% Σχεδιασμός σημάτων στο χρόνο και στη συχνότητα
figure(1); subplot(311); stem(n,x); xlim([1,N]); title('Ακολουθία x[n]'); grid
subplot(312); stem(n,w); xlim([1,N]); title('Παράθυρο w[n]'); grid
subplot(313); stem(n,xw); xlim([1,N]); title('Γινόμενο xw[n]=x[n] w[n]'); grid
figure(2); subplot(311); stem(k, abs(X(1:N/2+1))); title('|Χ[k]|'); grid
subplot(312); stem(k, abs(W(1:N/2+1))); title('|W[k]|'); grid
subplot(313); stem(k, abs(Xw(1:N/2+1))); title('|Χw[k]|'); grid
