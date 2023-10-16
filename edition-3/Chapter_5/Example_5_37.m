% Example 5.37

clear all; clc

% Κατασκευή σήματος θορύβου και υπολογισμός φάσματος
Fs = 15000;                	% Συχνότητα δειγματοληψίας
Ts = 1/Fs;                 	% Περίοδος δειγματοληψίας
L = 2048;                 	% Μήκος σήματος θορύβου
t = (0:L-1)*Ts;            	% Διάνυσμα χρόνου
noise = 100*randn(size(t)); 	% Δημιουργία θορύβου 
NFFT = L;                  	% Μήκος μετασχηματισμού Fourier

% Υπολογισμός μετασχηματισμού Fourier σήματος θορύβου
NOISE = fft(noise, NFFT) / L; 
X = NOISE(1:NFFT/2+1);
f = (Fs/2)*linspace(0,1,(NFFT/2+1));     % Διάνυσμα συχνότητας

% Κατασκευή βαθυπερατού φίλτρου Butterworth
% fc = 100 συχνότητα αποκοπής (Hz)
% Wc = 2*pi*fc συχνότητα αποκοπής (rad/sec)
fc = 100; Wc=2*pi*fc;
order = 8;                  		% Τάξη φίλτρου
[z, p, k] = butter(order, Wc, 's');	% Σ.Μ. σε μορφή πόλων-μηδενικών
[numH, denH] = zp2tf(z, p, k);    	% Σ.Μ. σε ρητή μορφή 
H = freqs(numH, denH, f);          	% Σ.Μ. σε μιγαδική μορφή

% Υπολογισμός μετ. Fourier της εξόδου από τη σχέση Y(Ω) = Χ(Ω) Η(Ω)
Y = X .* H; 

% Σχεδιασμός φασμάτων εισόδου, συστήματος και εξόδου
figure(1); subplot(311); loglog(f,abs(X));axis([1,10000,0,10]); grid on
subplot(312); loglog(f, abs(H));  axis([1, 10000, 0, 10]); grid on
subplot(313); loglog(f, abs(Y));  axis([1, 10000, 0, 10]); grid on

% Υπολογισμός σήματος y(t) με αντίστροφο Fourier
y = ifft(Y, NFFT) * L;

% Σχεδιασμός σημάτων εισόδου και εξόδου
figure(2); subplot(211); plot(x(1:100)); grid on
subplot(212); plot(real(y(1:100))); grid on