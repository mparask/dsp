% Example 2.44

Step = 0.1; 
% Δημιουργία παλμών h(t) και x(t) και κλιμάκων χρόνου th, tx
th = 1 : Step : 3; h = ones(1, length(th));    
tx = 1 : Step : 5; x = ones(1, length(tx)); 
% Υπολογισμός συνέλιξης
y = conv(x, h) .* Step; 
% Καθορισμός κλίμακας χρόνου ty της εξόδου y(t)
ty = min(tx) + min(th) : Step : max(tx) + max(th);
% Σχεδιασμός αποτελέσματος (συνέλιξης)
plot(ty, y); xlim([0, 10]); grid on;