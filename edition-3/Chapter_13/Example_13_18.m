% Example 13.18
clear all; clc

% Δοθέν αναλογικό φίλτρο
b = [3 7]; a = [1 4 3];

% Συνάρτηση μεταφοράς αναλογικού φίλτρου
[Hs, Ws] = freqs(b, a, 512);  

% Περίοδος Τ=2
T = 2; Fs = 1/T;

% Μέθοδος διγραμμικού μετασχηματισμού
[bz, az] = bilinear(b, a, Fs)

% Συνάρτηση μεταφοράς ψηφιακού φίλτρου
[Hz, Wz] = freqz(bz, az, 512, Fs);

% Σχεδιασμός φασμάτων αναλογικού και ψηφιακού φίλτρου
figure(1); semilogx(Ws/(2*pi), 20*log10(abs(Hs)),'LineWidth',2); 
hold on; semilogx(Wz, 20*log10(abs(Hz)),'r--'); grid on;
xlabel('Συχνότητα (Hz)'), ylabel('Πλάτος (dB)');
legend('Αναλογικό φίλτρο','Ψηφιακό φίλτρο');

% Υπολογισμός H(z) σε ρητή μορφή
H = tf(bz, az);

% Εύρεση πόλων και μηδενικών της H(z)
p = pole(H), z = zero(H)

% Σχεδιασμός διαγράμματος πόλων και μηδενικών
figure(2); pzmap(H)
