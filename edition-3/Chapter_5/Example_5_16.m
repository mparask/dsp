% Example 5.16

clear all; clc

% Κατασκευή συναρτήσεων μεταφοράς H1(s) και H2(s)
num1 = [1 -2]; den1 = [1 3 2]; H1 = tf(num1, den1);
num2 = [1 0];  den2 = [1 3];   H2 = tf(num2, den2);
Heq = feedback(H1, H2) % Υπολογισμός ισοδύναμης συνάρτησης μεταφοράς
HHeq = zpk(Heq)        % Ισοδύναμη συνάρτηση μεταφοράς σε μορφή πόλων-μηδενικών 
% Σχεδιασμός διαγραμμάτων πόλων – μηδενικών
subplot(131); pzmap(H1); xlim([-4 4]); title('Pole-zero map H1(s)'); grid on
subplot(132); pzmap(H2); xlim([-4 4]); title('Pole-zero map H2(s)'); grid on
subplot(133); pzmap(Heq);xlim([-4 4]); title('Pole-zero map Heq(s)'); grid on
