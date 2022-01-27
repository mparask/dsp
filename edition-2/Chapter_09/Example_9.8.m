% Example 9.8

N = 64;                    % Ν: μήκος ακολουθίας και DFT
a = 0.9;  w0 = 9*pi/4;     % Ορισμός τιμών α και ω0

n = [0:N-1];               % Κλίμακα χρόνου
x = a.^n .* sin(n*w0);     % x[n] = a^n sin(n*w0) u[n]

X = fft(x);                % Υπολογισμός DFT
w = 0:2*pi/N:2*pi-2*pi/N;  % Κλίμακα συχνοτήτων
w_norm = (w-pi)/pi;        % Κανονικοποιημένη συχνότητα

% Σχεδιασμός σήματος x[n] = a^n sin(n*w0) u[n]
subplot(311); stem(n,x); xlabel('n'); title('x[n]'); grid on

% Σχεδιασμός φάσματος πλάτους |X(e^jω)| 
subplot(312); plot(w_norm,fftshift(abs(X))); grid on;
xlabel('Κανονικοποιημένη συχνότητα'); title('|X(e^j^ω)|'); 

% Σχεδιασμός φάσματος φάσης <X(e^jω) 
subplot(313); plot(w_norm,fftshift(angle(X))); grid on;
xlabel('Κανονικοποιημένη συχνότητα'); title('<X(e^j^ω)'); 
