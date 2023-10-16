% Example 10.5
clf; clc; clear all

N = 100;    % πλήθος υποδιαιρέσεων συχνότητας
M = 6       % πλήθος επαναλήψεων (2x3 περίοδοι)

% Υποδιαίρεση περιοχής [-π, π] σε 2*N σημεία
w = [-M*(N/2):1:M*(N/2)-1]*(pi/(N-1)); 

% Υπολογισμός DTFT από τον ορισμό
a = 0.7; X = exp(j*w) ./ (exp(j*w) - a*ones(1,M*N));

% Υπολογισμός πλάτους και φάσης
magX = abs(X); angX = angle(X); 

% Σχεδιασμός πλάτους και φάσης
subplot(211); plot(w/pi,magX); grid
xlabel('Συχνότητα [-3π,3π]'); title('Φάσμα Πλάτους'); ylim([0,4]); ylabel('Πλάτος')
subplot(212); plot(w/pi,angX, 'm'); grid;
xlabel('Συχνότητα [-3π,3π]'); title('Φάσμα Φάσης'); ylabel('Rad')