% Example 5.33

clear all; clc

A = 1; t0 = 0.1; WH = 20; 
% Υλοποίηση σχέσης (5.89)
W1 = -2*WH:-WH;  H1 = zeros(size(W1));    
W2 = -WH:WH;     H2 = A*exp(-j*W2*t0);
W3 = WH:2*WH;    H3 = zeros(size(W3));
W = [W1 W2 W3];  H = [H1 H2 H3];

figure(1); 
subplot(121); plot(W,abs(H)); axis([-40, 40, -0.5, 1.5]); grid on; title('Φάσμα Πλάτους');
subplot(122); plot(W, angle(H),'m'); axis([-40, 40, -3.5, 3.5]); grid on; title('Φάσμα Φάσης'); 

syms t W
H = A*exp(-j*W*t0)*(heaviside(W+WH) - heaviside(W-WH));
h = simplify( ifourier(H, t) )	

figure(2); fplot(h); axis([-3, 3, -2, 7]); grid on

x = cos(8*pi*t) + sin(3*pi*t);
X = fourier(x, W); 
Y = X * H; 
y = simplify(ifourier(Y, t))

figure(3); 
subplot(121); fplot(x); axis([-1, 1, -2, 2]); grid on; title('Σήμα εισόδου');
subplot(122); fplot(y,'m'); axis([-1, 1, -2, 2]); grid on; title('Σήμα εξόδου');