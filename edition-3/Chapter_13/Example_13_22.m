% Example 13.22
clear all; clc

% Συντελεστές αριθμητή και παρονομαστή της Σ.Μ.
b = [1 -0.815];
a = [1 -1.927 0.928176];

% Υπολογισμός συνάρτησης μεταφοράς (Σ.Μ.)
H = tf(b,a,1);

% Εύρεση πόλων και μηδενικών
p = pole(H), z = zero(H)

% Υπολογισμός αναπτύγματος σε μερικά κλάσματα
[R,p,C] = residuez(b,a)

% Υπολογισμός κρουστικής απόκρισης 
n = [0:100]; h = R(1)*p(1).^n + R(2)*p(2).^n;

% Σχεδιασμός κρουστικής απόκρισης και διαγράμματος πόλων-μηδενικών
subplot(121); stem(n,h); grid on
subplot(122); zplane(p,z);