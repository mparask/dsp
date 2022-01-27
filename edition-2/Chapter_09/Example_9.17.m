% Example 9.17

a = 0.8;    % Συντελεστής απόσβεσης της h[n] = a^n u[n]
N = 100;    % Ν: πλήθος σημείων άξονα συχνοτήτων
w = [0:1:N] * (pi/N); % Διαίρεση περιοχής [0,π] σε Ν σημεία
H = exp(j*w) ./ ( exp(j*w) - a * ones(1, N+1)); % Υπολογισμός DTFT

% Σχεδιασμός φασμάτων πλάτους και φάσης
subplot(211), plot(w/pi, abs(H)); grid; xlim([0,1])
xlabel('Συχνότητα [0,π]'); title('Μέτρο DTFT |H(e^j^ω)|'); 
subplot(212), plot(w/pi, angle(H)); grid; xlim([0,1])
xlabel('Συχνότητα [0,π]'); title('Φάση DTFT <H(e^j^ω)');
