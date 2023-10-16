% Example 4.36

clear all; clc

syms t w
w0 = 10*pi; u(t) = heaviside(t);

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

subplot(211); fplot((X(w)), [-60,60]); title('X(Ω)'); grid on; ylim([-0.5,2]);
subplot(212); fplot((Y(w)), [-60,60]); title('Y(Ω)'); grid on; ylim([-0.5,2]);