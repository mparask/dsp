% Example 9.15
clc; clf; clear all;

% Εύρεση μηδενικών
p = roots([2, 3, 0])

% Εύρεση πόλων 
z = roots([1, 0.4, 1])

% Σχεδίαση διαγράμματος πόλων- μηδενικών
zplane(z, p); grid on