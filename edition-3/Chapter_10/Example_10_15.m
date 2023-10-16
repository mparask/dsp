% Example 10.15

x = [zeros(1,8), ones(1,4), zeros(1,8)]; % Σήμα x[n]
N = length(x);              % Πλήθος τιμών σήματος x[n]
X = fftshift(fft(x, N));    % Υπολογισμός DΤFT
n = -N/2:1:N/2-1;           % Ορισμός κλίμακας χρόνου
w = 0:2*pi/N:2*pi-2*pi/N;   % Ορισμός κλίμακας συχνοτήτων
w_norm = (w-pi)/pi;         % Κανονικοποιημένη συχνότητα
magX = abs(X);              % Μέτρο
phaseX = angle(X);          % Φάση
phaseX = phaseX .* magX/max(magX); % Αναδιπλωμένη φάση

% Σχεδιασμός σήματος x[n] 
subplot(131); stem(n(6:20),x(6:20)); xlabel('n'); 
title('x[n]'); grid on;

% Σχεδιασμός φάσματος πλάτους |X(e^jω)|
subplot(132); plot(w_norm, magX); grid on; 
xlabel('Συχνότητα (-π,π]'); title('|X(e^j^ω)|');

% Σχεδιασμός φάσματος φάσης <X(e^jω)
subplot(133); plot(w_norm, phaseX, 'r'); grid on;
xlabel('Συχνότητα (-π,π]'); title('<X(e^j^ω)');

% Για το (β) εναλαμβάνουμε την επίλυση θέτοντας:
% x = [zeros(1,10), ones(1,4), zeros(1,6)]; % Σήμα x[n]