% Example 4.39
clear all; clc; clf;

% Κατασκευή σήματος θορύβου και υπολογισμός φάσματος
Fs = 15000;                % Συχνότητα δειγματοληψίας
Ts = 1/Fs;                 % Περίδος δειγματοληψίας
L = 2048;                  % Μήκος σήματος θορύβου
t = (0:L-1)*Ts;            % Διάνυσμα χρόνου
x = 100*randn(size(t));    % Δημιουργία θορύβου 
NFFT = L;                  % Μήκος μετασχηματισμού Fourier

% Υπολογισμός μετασχηματισμού Fourier
XX = fft(x, NFFT) / L;     
X = XX(1:NFFT/2+1);
f = (Fs/2)*linspace(0,1,(NFFT/2+1));     % Διάνυσμα συχνότητας

% Κατασκευή χαμηλοδιαβατού φίλτρου Butterworth
% fc1 = 5, fc2 = 200 συχνότητες αποκοπής (σε Hz)
% wc1 = 2*pi*fc1, wc2 = 2*pi*fc2 συχνότητες αποκοπής (σε rad/sec)
fc = 100; wc=2*pi*fc;
order = 8;                  		% Τάξη φίλτρου
[z, p, k] = butter(order, wc, 's');	% Σ.Μ. σε μορφή πόλων-μδενικών
[numH, denH] = zp2tf(z, p, k);    	% Σ.Μ. σε ρητή μορφή 
H = freqs(numH, denH, f);           	% Σ.Μ. σε μιδαγική μορφή

% Μετασχηματισμός Fourier της εξόδου από τη σχέση Y(ω) = Χ(ω) Η(ω)
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
