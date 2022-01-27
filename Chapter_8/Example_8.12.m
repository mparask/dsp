% Example 8.12
% X(z) = 1/(1+3z^(-1)+2z^(-2) )

syms n z

% Ορισμός συνάρτησης X(z)
X(z) = 1/(1+3*z^(-1)+2*z^(-2) );

% Υπολογισμός αντίστροφου
% μετασχηματισμού Ζ
x(n) = iztrans(X(z), z, n);

pretty(x(n))