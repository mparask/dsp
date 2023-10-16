% Example 6.13

clear all; clc;

Ts = 0.01; % Περίοδος δειγματοληψίας
t = 0:0.01:1; xa = 4*sin(2*pi*t + pi/6); % Αναλογικό σήμα xa(t)
N = length(t); % Μήκος διανύσματος χρόνου t
n = 0:N1; xs = 4*sin(2*pi*n*Ts + pi/6); % Δειγματολαμβ. σήμα xs(t)

% Κβαντιστής % floor(): στρογγυλοποίηση στον πλησιέστερο ακέραιο
% xs: δειγματοληπτημένο σήμα, xq: κβαντισμένο σήμα
% Πλήθος σταθμών κβαντιστή L=2^Q
Q = 2; % Μήκος λέξης κβαντιστή; 
d = max(abs(xs)) / Q; % Βήμα κβαντισμού

for k = 1:N
 if xs(k) >= 0
 xq(k) = floor(xs(k)/d)*d; 
 else
 if xa(k) == min(xs)
 xq(k) = (xs(k)/abs(xs(k))) * (floor(abs(xs(k))/d)*d);
 else
 xq(k) = (xs(k)/abs(xs(k))) * (floor(abs(xs(k))/d)*d + d);
 end
 end
 if xq(k) == 2*d
 xq(k) = d;
 end
end
 
eq = xaxq; % Σφάλμα κβαντισμού
% Σχεδιασμός αναλογικού σήματος
figure(1); subplot(211); plot(t, xa); grid on; ylim([5,5]);
xlabel('t (sec)'); ylabel('xa(t)'); title('Αναλογικό σήμα');
% Σχεδιασμός δειγματοληπτημένου σήματος
subplot(212); stem(n*Ts, xs); grid on; ylim([5,5]);
xlabel('nTs (sec)'); ylabel('xs(t)'); title('Δειγματοληπτημένο σήμα');
% Σχεδιασμός κβαντισμένου σήματος
figure(2); subplot(211); stem(n*Ts, xq); grid on; ylim([5,5]);
xlabel('nTs (sec)'); ylabel('xq(t)'); title('Κβαντισμένο σήμα');
% Σχεδιασμός σφάλματος κβαντισμού
subplot(212); stem(n*Ts, eq); grid on; ylim([5,5]);
xlabel('nTs (sec)'); ylabel('eq(t)'); title('Σφάλμα κβαντισμού');

pause

% Κωδικοποιητής: αντιστοιχίζει κάθε μια από τις τέσσερις στάθμες των 
% κβαντισμένων δειγμάτων στη δυαδική ακολουθία (00, 01, 10, 11)
coded = '00'; % Αρχική τιμή
for n = 1:N
 if xq(n) == d
 code = '01';
 elseif xq(n) == 0
 code = '00';
 elseif xq(n) == d
 code = '11';
 else
 code = '10';
 end
coded = [coded, code];
end

pause

% Εκτύπωση δυαδικής ακολουθίας που αναπαριστά το κβαντισμένο σήμα
M = length(coded); coded = coded(3:M) 