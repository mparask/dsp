% Example 1.5
% 
syms t
x = exp(2*t)*sin(t);  	% Υπολογισμός εκθετικής συνάρτησης
Ex = int(x^2, 0, inf)	% Υπολογισμός ολοκληρώματος
