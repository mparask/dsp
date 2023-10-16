% Example 4.67

syms t W
x(t) = 10*exp(-3*abs(t));

% Υπολογισμός φασματικής πυκνότητας ενέργειας από τον μετασχηματισμό Fourier
X(W) = fourier(x(t), W); Sx(W) = X(W)^2

% Υπολογισμός φασματικής πυκνότητας ενέργειας με τη συνάρτηση αυτοσυσχέτισης
Rxx(t) = 100*exp(-3*abs(t)) * (abs(t)+1/3);
Sxx(W) = simplify( fourier( Rxx(t), W) )

figure(1); 
subplot(131); fplot(x(t)); title('x(t)'); ylim([0,10]); grid on;
subplot(132); fplot(Sx(W)); title('Sx(W)'); grid on; 
subplot(133); fplot(Sxx(W),'m'); title('Sxx(W)'); grid on

figure(2); ezplot(Rxx(t)); 
title('Autocorrelation Rxx(t)'); grid on; 
R0 = subs(Rxx(t), t, 0)