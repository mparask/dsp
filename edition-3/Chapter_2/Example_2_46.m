% Example 2.46

syms t
% Δημιουργία σημάτων h(t) και x(t) και κλιμάκων χρόνου th, tx
u = heaviside(t);
x(t) = u(t)-u(t-10);
s = 1 - exp(-0.1*t);
% Σχεδιασμός αποτελέσματος (συνέλιξης)
subplot(121); fplot(t, x); xlim([0, 15]); grid on; title('(α) u(t)')
subplot(122); fplot(t, s, 'm'); xlim([0, 15]); grid on; title('(β) s(t)')