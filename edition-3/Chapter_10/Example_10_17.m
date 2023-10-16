% Example 10.17

N = 50;                     % Ν: μήκος ακολουθίας και DFT
a = 0.9;  w0 = 3*pi/2;      % Ορισμός τιμών μεταβλητών α και ω0
n = [0:N-1];                % Ορισμός κλίμακας χρόνου
x = a.^n .* sin(n*w0);      % x[n] = a^n sin(n*w0) u[n]
X = fftshift(fft(x));       % Υπολογισμός DFT
w = 0:2*pi/N:2*pi-2*pi/N;   % Ορισμός κλίμακας συχνοτήτων
w_norm = (w-pi)/pi;         % Κανονικοποιημένη συχνότητα
magX = abs(X);              % Μέτρο
phaseX = angle(X) .* magX/max(magX); % Αναδιπλωμένη φάση

% Σχεδιασμός σήματος x[n] = a^n sin(n*w0) u[n]
subplot(131); stem(n,x); xlabel('n'); title('x[n]'); grid on;

% Σχεδιασμός φάσματος πλάτους |X(e^jω)|
subplot(132); plot(w_norm, magX); grid on; ylim([0,5]);
xlabel('Συχνότητα (-π,π]'); title('|X(e^j^ω)|'); 

% Σχεδιασμός φάσματος φάσης <X(e^jω)
subplot(133); plot(w_norm, phaseX, 'r'); grid on; 
xlabel('Συχνότητα (-π,π]'); title('<X(e^j^ω)');