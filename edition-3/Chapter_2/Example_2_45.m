% Example 2.45

Step = 0.1; a=0.5;
% Δημιουργία σημάτων h(t) και x(t) και κλιμάκων χρόνου th, tx
th = 1 : Step : 3; h = exp(-a*th) .* ones(1,length(th));
tx = 1 : Step : 5; x = ones(1, length(tx));
% Υπολογισμός συνέλιξης
y = conv(x, h) .* Step;
% Καθορισμός κλίμακας χρόνου ty της εξόδου y(t)
ty = min(tx) + min(th) : Step : max(tx) + max(th);
% Σχεδιασμός αποτελέσματος (συνέλιξης)
subplot(221); plot(th, h); xlim([0, 5]); grid on; title('h(t) for a=0.5')
subplot(222); plot(ty, y); xlim([0, 8]); grid on; title('y(t) for a=0.5')

