% Example 9.5 (COPY)
% Η(e^jω ) = 1/(1-a e^jω)
clf; clc; clear all

a = 0.7;    % Συντελεστής απόσβεσης της h[n] = a^n u[n]
N = 100;    % Ν: πλήθος σημείων άξονα συχνοτήτων

w = [0:1:N] * (pi/N); % Διαίρεση περιοχής [0,π] σε Ν σημεία

% Υπολογισμός DTFT
H = exp(j*w) ./ ( exp(j*w) - a * ones(1, N+1));

% Σχεδιασμός φασμάτων πλάτους και φάσης
subplot(211), plot(w/pi, abs(H)); grid; xlim([0,1])
xlabel('Συχνότητα [0,π]'); title('Μέτρο DTFT |H(e^j^ω)|'); 

subplot(212), plot(w/pi, angle(H)); grid; xlim([0,1])
xlabel('Συχνότητα [0,π]'); title('Φάση DTFT <H(e^j^ω)'); 
