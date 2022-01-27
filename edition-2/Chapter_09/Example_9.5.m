% Example 9.5
clc; clf; clear all

N = 200;    % πλήθος υποδιαιρέσεων
M = 1;      % πλήθος επαναλήψεων 

% Υποδιαίρεση περιοχής [0, π] σε 200 σημεία
w = [0:1:M*N-1]*(pi/(N-1));

% Υπολογισμός DTFT από τον ορισμό
a = 0.7;
X = exp(j*w) ./ (exp(j*w) - a*ones(1,M*N));

% Υπολογισμός πλάτους και φάσης
magX = abs(X); angX = angle(X);

% Σχεδιασμός πλάτους και φάσης
subplot(211); plot(w/pi,magX); grid
xlabel('Συχνότητα [0,π]'); title('Φάσμα Πλάτους'); ylabel('Πλάτος')
subplot(212); plot(w/pi,angX); grid
xlabel('Συχνότητα [0,π]'); title('Φάσμα Φάσης'); ylabel('Rad')