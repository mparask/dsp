% Example 6.7 - Εκτέλεση για Τs=0.02

clear all; clc;

% Δημιουργία αναλογικού σήματος
Dt = 0.0001; t = 0:Dt:1; xa = 2*cos(8*pi*t) - sin(12*pi*t);
% Σχεδιασμός αναλογικού σήματος (κλίμακα χρόνου msec)
subplot(211); plot(t*1000,xa,'r'); grid on;
xlabel('t (msec)'); ylabel('xa(t)'); 
title('α. Αναλογικό σήμα'); hold on

% Δημιουργία σήματος διακριτού χρόνου (ψηφιακό)
Ts = 0.02; n = 0:1:50; nTs=n*Ts; xs = 2*cos(8*pi*nTs) - sin(12*pi*nTs);

% Σχεδιασμός ψηφιακού σήματος για Ts=0.02 sec/sample
subplot(212); stem(n*Ts*1000,xs); grid on;
xlabel('t (msec)'); ylabel('xs(t)');
title('β.Σήμα διακριτού χρόνου'); hold off

% Υπολογισμός μετασχηματισμού Fourier συνεχούς χρόνου Xa(W)
fm = 20; Wm = 2*pi*fm; 		% Μέγιστη συχνότητα φάσματος
K = 500; 			% Πλήθος σημείων υπολογισμού μετ. Fourier
k = 0:1:K; W = k*Wm/K; 		% Συνεχής συχνότητα Ω
Xa = xa * exp(-j*t'*W) * Dt; 	% Ορισμός μετασχηματισμού Fourier
Xa = abs(Xa); 			% Κρατάμε μόνο το μέτρο του Fourier
W = [-fliplr(W), W(2:K+1)]; 	% Δημιουργία αρνητικού μέρους φάσματος
Xa = [fliplr(Xa), Xa(2:K+1)]; 

% Υπολογισμός μετασχηματισμού Fourier διακριτού χρόνου Xs(w)
w = pi*k/K; 			% Διακριτή συχνότητα ω
Xs = xs * exp(-j*n'*w) * Dt; 	% Ορισμός DTFT
Xs = abs(Xs); 			% Κρατάμε μόνο του DTFT
w = [-fliplr(w), w(2:K+1)]; 	% Δημιουργία αρνητικού μέρους φάσματος
Xs = [fliplr(Xs), Xs(2:K+1)]; 
subplot(211); plot(W/(2*pi), Xa); % Απεικόνιση φάσματος Xa(W)
xlabel('Συχνότητα (Hz)'); ylabel('Xa(jW)'); grid on; 
title('Μετασχηματισμός Fourier συνεχούς χρόνου')
subplot(212); plot(w/(pi), Xs); % Απεικόνιση φάσματος Xs(w)
xlabel('Συχνότητα σε μονάδες π'); ylabel('Xs(jw)'); grid on
title('Μετασχηματισμός Fourier διακριτού χρόνου')
