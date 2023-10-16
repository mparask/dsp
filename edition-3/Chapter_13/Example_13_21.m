% Example 13.21
clear all; clc

% Προδιαγραφές ψηφιακού φίλτρου 
ws = [0.3*pi  0.7*pi]; 
wp = [0.4*pi  0.6*pi]; 
Rp = 1; As = 80;

% Υπολογισμός ψηφιακού φίλτρου Chebyshev II
[N1, wn1] = cheb2ord(wp/pi, ws/pi, Rp, As);
[b1, a1] = cheby2(N1, As, wn1);

% Υπολογισμός ψηφιακού ελλειπτικού φίλτρου 
[N2, wn2] = ellipord(wp/pi, ws/pi, Rp, As);
[b2, a2] = ellip(N2, Rp, As, wn2);

% Συνάρτηση μεταφοράς ψηφιακών φίλτρων
[H1, w1] = freqz(b1, a1, 512);
[H2, w2] = freqz(b2, a2, 512);

% Σχεδιασμός φασμάτων ψηφιακών φίλτρων
subplot(121); plot(w1/pi, 20*log10(abs(H1))); grid on; 
ylim([-120, 10]); xlabel('Συχνότητα (Hz)'), ylabel('Πλάτος (dB)');
title('Ψηφιακό Φίλτρο Chebyshev I');
subplot(122); plot(w2/pi, 20*log10(abs(H2))); grid on; 
ylim([-120, 10]); xlabel('Συχνότητα (Hz)'), ylabel('Πλάτος (dB)');
title('Ελλειπτικό Ψηφιακό Φίλτρο');