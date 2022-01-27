% Figure 11.36

clear all; clc; clf;

T1 = 0.2;
T2 = 1;
T3 = 10;

w = -10*pi:1:10*pi;

W1 = 2 * atan(w*T1/2);
W2 = 2 * atan(w*T2/2);
W3 = 2 * atan(w*T3/2);

plot(w, W1); grid on; hold on; plot(w, W2, 'r'); plot(w, W3, 'm'); 
xlabel('Αναλογική συχνότητα Ω'); ylabel('Ψηφιακή συχνότητα ω')
legend('T = 0.2', 'T = 1', 'T = 10')
