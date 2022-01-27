% Example 1.35
clc; clear all;

A = 2; 
% Ορισμός τιμών σταθεράς χρόνου (Τ)
T1 = 1.5; T2 = 3; T3 = -1.5; T4 = -3;
t = 0 : 0.1 : 15;
% Υπολογισμός x(t) για τις τιμές του Τ
x1 = A * exp(-t/T1); 
x2 = A * exp(-t/T2);
x3 = A * exp(-t/T3); 
x4 = A * exp(-t/T4);
% Σχεδίαση διαγραμμάτων
figure(1); 
subplot(211); plot(t, x1); grid on;
subplot(212); plot(t, x2); grid on; 
figure(2); subplot(211); plot(t, x3); grid on;
subplot(212); plot(t, x4); grid on; 
