% Example 3.70
clc; clear all; clf

syms t w
x(t) = 10*exp(-3*abs(t));
% Υπολογισμός φασματικής πυκνότητας ενέργειας από τον μετ. Fourier
X(w) = fourier(x(t), w); Sx(w) = X(w)^2
% Υπολογισμός φασματικής πυκνότητας ενέργειας με συνάρτηση αυτοσυσχέτισης
Rx(t) = 100*exp(-3*abs(t)) * (abs(t)+1/3); 
Sxx(w) = simplify( fourier( Rx(t), w) )
figure(1); 
subplot(311); ezplot(x(t)); ylim([0,11]); grid on;
subplot(312); ezplot(Sx(w)); grid on; 
subplot(313); ezplot(Sxx(w)); grid on

figure(2);
ezplot(Rx(t)); grid on
R0 = subs(Rx(t), t, 0)
