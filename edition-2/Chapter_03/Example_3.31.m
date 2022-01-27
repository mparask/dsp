% Example 3.31
clc; clear all; clf

syms t w
w0 = 10*pi;
u(t) = heaviside(t);
% Δημιουργία πληροφοριακού σήματος
x(t) = u(t+1) - u(t-1); 
% Δημιουργία φορέα 
c(t) = cos(w0*t);  
% Πολλαπλασιασμός σημάτων (διαμόρφωση)
y(t) = x(t) * c(t);
% Υπολογισμός μετασχηματισμού Fourier εισόδου, συνημιτόνου και εξόδου
X(w) = fourier(x(t), w);  X = simplify(X)
C(w) = fourier(c(t), w);  C = simplify(C) 
Y(w) = fourier(y(t), w);  Y = simplify(Y)

w1 = -60 : 1 : 60;
XX = zeros(length(w1)); 
XX(29) = 1; XX(92) = 1;
figure(1); stem(w1, XX); ylim([0 1.2]); grid on

figure(2);
subplot(211); ezplot((X(w)), [-60, 60]); grid on; ylim([-0.5, 2]);
subplot(212); ezplot((Y(w)), [-60, 60]); grid on; ylim([-0.5, 2]);


