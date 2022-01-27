% Example 1.39
clc; clear all;

A1 = 1.5; A2 = 1;
% Ορισμός τιμών παραμέτρων Ω(t), θ(t) και Τ για Α1 και Α2
w01 = 4*pi; w02 = 4*pi; phase1 = pi/4; phase2 = pi/3;
T01 = (2*pi)/w01; T02 = (2*pi)/w02;

% Δημιουργία κλίμακας χρόνου 4 περιόδων και υπολογισμός σημάτων
t = 0  : 0.01 : 4*T01;
x1 = A1*cos(w01*t + phase1); 
x2 = A2*sin(w02*t + phase2);
subplot(211); plot(t, x1); grid on; axis([-0.5 2.5 -2 2 ])
subplot(212); plot(t, x2, 'r'); grid on; axis([-0.5 2.5 -2 2 ])
