% Example 8.9
clc; clf; clear all;

% Εύρεση μηδενικών 
b = [2, 3];
p = roots(b)

% Εύρεση πόλων 
a = [1, 0.4, 1];
z = roots(a)

% Σχεδίαση διαγράμματος
% πόλων- μηδενικών
zplane(z, p); grid on