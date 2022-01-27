% Example 2.17
clc; clear all;

syms t
u(t) = heaviside(t);
% Ορισμός σήματος εισόδου
x(t) = exp(-t)*u(t);  	
% Υπολογισμός σήματος εξόδου
y(t) = diff(x(t), t); 	
% Ορισμός χρονικής ολίσθησης
t0 = 1; 	
% Υπολογισμός εξόδου για ολισθημένη είσοδο κατά t0
yt(t)= diff(x(t-t0));	
% Υπολογισμός ολισθημένης εξόδου κατά t0
yd(t) = y(t-t0);	
% Σχεδιασμός εισόδου και εξόδου
figure(1); subplot(211); ezplot(x(t), [-0.5, 4]); grid on
subplot(212); ezplot(y(t), [-0.5, 4]); grid on
% Σχεδιασμός ολισθημένης εισόδου, εξόδου για ολισθημένη είσοδο και ολισθημένης εξόδου
figure(2); subplot(311); ezplot(x(t-t0), [-0.5, 4]); grid on
subplot(312); ezplot(yt(t), [-0.5, 4]); grid on
subplot(313); ezplot(yd(t), [-0.5, 4]); grid on
