% Example 2.43
clc; clear all; clf

Step = 0.1; 
% Δημιουργία παλμών h(t) και x(t)
th = 1 : Step : 3; h = ones(1, length(th));    
tx = 1 : Step : 5; x = ones(1, length(tx)); 
% Υπολογισμός συνέλιξης
y = conv(x, h) .* Step; 
% Καθορισμός κλίμακας χρόνου της εξόδους
ty = min(tx) + min(th) : Step : max(tx) + max(th);
plot(ty, y); % Σχεδιασμός αποτελέσματος (συνέλιξης)
