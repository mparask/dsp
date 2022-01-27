% Example 2.5
clc; clear all;

syms t; u(t) = heaviside(t); a1 = 2; a2 = 3;
% Δημιουργία σημάτων x1(t) και x2(t)
x1(t) = u(t) - u(t-1); 
x2(t) = u(t-1) - u(t-2);
% Δημιουργία σημάτων y1(t) και y2(t)
y1(t) = x1(t)^2; 
y2(t) = x2(t)^2; 
% Υπολογισμός εξόδου ya(t) ως γραμμικός συνδυασμός y1(t) και y2(t)
ya(t) = a1*y1(t) + a2*y2(t);
% Δημιουργία x(t) ως γραμμικός συνδυασμός x1(t) και x2(t)
x(t) = a1*x1(t) + a2*x2(t);
% Υπολογισμός εξόδου yb(t) ως έξοδος για είσοδο το x(t)
yb(t) = ( x(t) )^2;
subplot(211); ezplot(yb(t), [-1 4]);  ylim([0 10]); grid on
subplot(212); ezplot(ya(t), [-1 4]);  ylim([0 10]); grid on


