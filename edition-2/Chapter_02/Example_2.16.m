% Example 2.16
clc; clear all;

syms t
u(t) = heaviside(t);
% Ορισμός σήματος εισόδου
x(t) = u(t) - u(t-1);
% Υπολογισμός σήματος εξόδου
y(t) = t*x(t);  
% Σχεδιασμός σημάτων εισόδου και εξόδου     
figure(1); subplot(211); ezplot( x(t), [-1,3] );grid on     
subplot(212); ezplot( y(t), [-1,3] );grid on  
% Ορισμός χρονικής ολίσθησης
t0 = 1;   
% Υπολογισμός εξόδου για ολισθημένη είσοδο κατά t0
yt(t) = t*x(t-t0); 
% Υπολογισμός ολισθημένης εξόδου κατά t0
yd(t) = y(t-t0);    
% Σχεδιασμός ολισθημένης εισόδου, εξόδου για ολισθημένη είσοδο και ολισθημένης εξόδου
figure(2);  subplot(311); ezplot( x(t-t0), [-1,3] ); grid on    
subplot(312); ezplot( yt(t), [-1,3] ); grid on  
subplot(313); ezplot( yd(t), [-1,3] ); grid on  
