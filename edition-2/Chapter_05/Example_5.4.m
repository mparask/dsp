% Example 5.4

% Δημιουργία αναλογικού σήματος
Dt = 0.0001; t = 0:Dt:1;
xa = 2*cos(8*pi*t) - sin(12*pi*t);

% Σχεδιασμός αναλογικού σήματος (κλίμακα χρόνου msec)
figure(1); subplot(311); plot(t*1000,xa,'r'); grid on; ylim([-4,4]);
xlabel('t (msec)'); ylabel('xa(t)'); title('Αναλογικό σήμα');

% Δημιουργία σήματος διακριτού χρόνου (ψηφιακό)
Ts = 0.02; n = 0:1:25; nTs=n*Ts;
xs = 2*cos(8*pi*nTs) - sin(12*pi*nTs);

% Σχεδιασμός ψηφιακού σήματος για Ts=0.02 sec/sample
subplot(312); stem(n*Ts*1000, xs); grid on; ylim([-4,4]);
xlabel('t (msec)'); ylabel('xs(t)'); title('Σήμα διακριτού χρόνου');

% Σχεδιασμός ανακατασκευασμένου αναλογικού σήματος
subplot(313); stairs(n*Ts*1000, xs); grid on;
hold on; stem(n*Ts*1000, xs); ylim([-4,4]);
xlabel('t (msec)'); ylabel('xa(t)');
title('Ανακατασκευασμένο σήμα με παρεμβολή μηδενικής τάξης'); hold off

% Σχεδιασμός ανακατασκευασμένου αναλογικού σήματος xa_h(t)
xa_h = spline(nTs, xs, t);
figure(2); subplot(211); plot(t*1000, xa_h); ylim([-4,4]);
xlabel('t (msec)'); ylabel('xa_h(t)'); grid on
title('Ανακατασκευασμένο σήμα με κυβικά πολυώνυμα');

% Υπολογισμός σφάλματος ανακατασκευής
error = (xa_h-xa);
subplot(212); plot(t*1000, error)
xlabel('t (msec)'); ylabel('e(t)'); 
grid on; ylim([-0.01, 0.01]); 
%ylim([-4,4]);
title('Σφάλμα ανακατασκευής');
