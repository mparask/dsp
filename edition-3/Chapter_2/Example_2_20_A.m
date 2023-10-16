% Example 2.20 (A)

syms t; 
x(t) = sin(pi*t);     % Ορισμός σήματος δοκιμής (εισόδου)
y(t) = 2*x(t).^2;     % Υπολογισμός σήματος εξόδου

% Σχεδιασμός σημάτων εισόδου και εξόδου     
subplot(121); fplot(x(t)); axis([0,10, -2,2]); grid on; title('x(t)')
subplot(122); fplot(y(t),'m'); axis([0,10,-2,2]); grid on; title('y(t)')
