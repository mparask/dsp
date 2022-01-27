n = 0:40;

a = 0.9;
w0 = pi/8;

% Δημιουργία εκθετικού σήματος
x =  a.^n .* exp(j*n*w0);

% Σχεδίαση μιγαδικού σήματος σε καρτεσιανή μορφή
subplot(221); stem(n, real(x)); title('Πραγματικό μέρος'); grid on
subplot(223); stem(n, imag(x)); title('Φανταστικό μέρος'); grid on
% Σχεδίαση μιγαδικού σήματος σε πολική μορφή
subplot(222); stem(n, abs(x)); title('Μέτρο'); grid on
subplot(224); stem(n, angle(x)); title('Φάση'); grid on
