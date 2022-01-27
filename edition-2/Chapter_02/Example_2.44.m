% Example 2.44
clc; clear all; clf

Step = 0.1;
% Δημιουργία σηματων h(t) και x(t)
th = 1 : Step : 3; 
h = exp(-(th-1)) .* ones(1,length(th));
tx = 1 : Step : 5; 
x = ones(1, length(tx));
% Υπολογισμός συνέλιξης
y = conv(x, h) .* Step;
% Καθορισμός κλίμακας χρόνου της εξόδου
ty = min(tx) + min(th) : Step : max(tx) + max(th);
% Σχεδιασμός αποτελέσματος (συνέλιξης)
plot(ty, y); grid on; 

