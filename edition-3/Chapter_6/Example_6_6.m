% Example 6.6

clear all; clc;

fx = 1; 	% Συχνότητα σήματος x(t)
fN = 2*fx; 	% Συχνότητα Nyquist

t = 0:0.001:3; 
xa = 2 * cos(2*pi*fx*t + pi/4);  % Δημιουργία σήματος συνεχούς χρόνου x(t)

Ts = 0.4; fs = 1/Ts; % Δειγματοληψία με ρυθμό fs > fN

nTs = 0 : Ts : 3; xs = 2 * cos(2*pi*fx*nTs + pi/4);
subplot(311); plot(t, xa); hold on; stem(nTs, xs, 'ro');

% Για άλλες τιμές συχν. δειγματοληψίας αλλάζουμε το Ts σε 0.5 και 1.
