% Example 13.19
clear all; clc

% Προδιαγραφές ψηφιακού φίλτρου 
wp = 0.2*pi; Rp = 0.5; ws = 0.3*pi; As = 20; T = 2;

% Προδιαγραφές πρότυπου αναλογικού φίλτρου Butterworth
Wp = (2/T)*tan(wp/2); % Αναλογική συχνότητα διέλευσης
Ws = (2/T)*tan(ws/2); % Αναλογική συχνότητα αποκοπής

% Υπολογισμός πρότυπου αναλογικού φίλτρου Butterworth
[N1, Wn1] = buttord(Wp, Ws, Rp, As);
[b1, a1] = butter(N1, Wn1);

% Υπολογισμός πρότυπου αναλογικού φίλτρου Chebyshev I
[N2, Wn2] = cheb1ord(Wp, Ws, Rp, As);
[b2, a2] = cheby1(N2, As, Wn2);

% Υπολογισμός πρότυπου αναλογικού φίλτρου Chebyshev IΙ
[N3, Wn3] = cheb2ord(Wp, Ws, Rp, As);
[b3, a3] = cheby2(N3, As, Wn3);

% Υπολογισμός πρότυπου ελλειπτικού αναλογικού φίλτρου
[N4, Wn4] = ellipord(Wp, Ws, Rp, As);
[b4, a4] = ellip(N4, Rp, As, Wn4);

% Συνάρτηση μεταφοράς αναλογικού φίλτρου
[Hs1, Ws1] = freqs(b1, a1, 512);
[Hs2, Ws2] = freqs(b2, a2, 512);
[Hs3, Ws3] = freqs(b3, a3, 512);
[Hs4, Ws4] = freqs(b4, a4, 512);

% Περίοδος και συχνότητα δειγματοληψίας
Ts = 0.1; Fs = 1/Ts;

% Εφαρμογή διγραμμικού μετασχηματισμού
[bz1, az1] = bilinear(b1, a1, Fs)
[bz2, az2] = bilinear(b2, a2, Fs)
[bz3, az3] = bilinear(b3, a3, Fs)
[bz4, az4] = bilinear(b4, a4, Fs)

% Συνάρτηση μεταφοράς ψηφιακού φίλτρου
[Hz1, Wz1] = freqz(bz1, az1, 512, Fs);
[Hz2, Wz2] = freqz(bz2, az2, 512, Fs);
[Hz3, Wz3] = freqz(bz3, az3, 512, Fs);
[Hz4, Wz4] = freqz(bz4, az4, 512, Fs);

% Σχεδιασμός φασμάτων αναλογικών και ψηφιακών φίλτρων
figure(1); subplot(221); semilogx(Ws1/(2*pi), 20*log10(abs(Hs1)),'LineWidth',2); 
hold on; semilogx(Wz1, 20*log10(abs(Hz1)),'r--', 'LineWidth',2); grid on;
title('Butterworth'); xlabel('Συχνότητα (Hz)'), ylabel('Πλάτος (dB)');
legend('Αναλογικό','Ψηφιακό'); hold off;

subplot(222); semilogx(Ws2/(2*pi), 20*log10(abs(Hs2)),'LineWidth',2); 
hold on; semilogx(Wz2, 20*log10(abs(Hz2)),'r--', 'LineWidth',2); grid on;
title('Chebyshev I'); xlabel('Συχνότητα (Hz)'), ylabel('Πλάτος (dB)');
legend('Αναλογικό','Ψηφιακό'); hold off;

subplot(223); semilogx(Ws3/(2*pi), 20*log10(abs(Hs3)),'LineWidth',2); 
hold on; semilogx(Wz3, 20*log10(abs(Hz3)),'r--', 'LineWidth',2); grid on;
title('Chebyshev II'); xlabel('Συχνότητα (Hz)'), ylabel('Πλάτος (dB)');
legend('Αναλογικό','Ψηφιακό'); hold off;

subplot(224); semilogx(Ws4/(2*pi), 20*log10(abs(Hs4)),'LineWidth',2); 
hold on; semilogx(Wz4, 20*log10(abs(Hz4)),'r--','LineWidth',2); grid on;
title('Ελλειπτικό'); xlabel('Συχνότητα (Hz)'), ylabel('Πλάτος (dB)');
legend('Αναλογικό','Ψηφιακό'); hold off;