% Example 13.15
clear all; clc; clf

% Προδιαγραφές ψηφιακού φίλτρου 
wp = 0.3*pi; Rp = 0.5; ws = 0.45*pi; As = 15; 

% Προδιαγραφές πρότυπου αναλογικού φίλτρου
Td = 3; Wp = wp/Td; Ws = ws/Td; 

% Υπολογισμός πρότυπου αναλογικού φίλτρου Chebyshev I
% [N, Wn] = cheb1ord(Wp, Ws, Rp, As)
% [b, a] = cheby1(N, As, Wn);

% Υπολογισμός πρότυπου αναλογικού φίλτρου Chebyshev IΙ
[N, Wn] = cheb2ord(Wp, Ws, Rp, As)
[b, a] = cheby2(N, As, Wn);

% Συνάρτηση μεταφοράς αναλογικού φίλτρου
[Hs, Ws] = freqs(b, a, 512);

% Περίοδος και συχνότητα δειγματοληψίας
Ts = 0.1; Fs = 1/Td;

% Μέθοδος αμετάβλητης κρουστικής απόκρισης
[bz, az] = impinvar(b, a, Fs);

% Συνάρτηση μεταφοράς ψηφιακού φίλτρου
[Hz, Wz] = freqz(bz, az, 512, Fs); 

% Σχεδιασμός φασμάτων αναλογικού και ψηφιακού φίλτρου
figure(1); semilogx(Ws/(2*pi), 20*log10(abs(Hs)),'LineWidth',2); 
hold on; semilogx(Wz, 20*log10(abs(Hz)),'r--'); grid on;
xlabel('Συχνότητα (Hz)'), ylabel('Πλάτος (dB)');
legend('Αναλογικό φίλτρο','Ψηφιακό φίλτρο');