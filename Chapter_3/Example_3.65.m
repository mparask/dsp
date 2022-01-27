% Example 3.65
clc; clear all; clf

A = 1; 
t0 = 0.1;
wH = 20; 
% Υλοποίηση σχέσης 3.76
w1 = -2*wH:-wH;  H1 = zeros(size(w1));    
w2 = -wH:wH;     H2 = A*exp(-j*w2*t0);
w3 = wH:2*wH;    H3 = zeros(size(w3));
w = [w1 w2 w3];  H = [H1 H2 H3];
figure(1);
subplot(211); plot(w, abs(H)); axis([-40, 40, -0.5, 1.5]); grid on; 
subplot(212);  plot(w, angle(H)); axis([-40, 40, -2.5, 2.5]); grid on;

syms t w
H = A*exp(-j*w*t0)*(heaviside(w+wH) - heaviside(w-wH));
h = simplify( ifourier(H, t) );
figure(2); ezplot(h); axis([-3, 3, -2, 7]); grid on

x = cos(16*pi*t+pi/4) + sin(3*pi*t);
X = fourier(x, w); 
Y = X * H; 
y = simplify(ifourier(Y, t))
figure(3); ezplot(y); axis([0, 4, -1.2, 1.2]); grid on
