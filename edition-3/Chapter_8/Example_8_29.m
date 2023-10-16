% Example 8.29
clear all; clc

% Δημιουργία κλίμακας χρόνου 
M = 7; n = [-M:M]; N = 2*M+1;   

% x[n] = {<1>, 2, 0.5, 1}
x = zeros(1, N); x(n==0) = 1; x(n==1) = 2; x(n==2) = 0.5; x(n==3) = -1;

% h[n] = {1, <2>, 1, 1}
h = zeros(1, N); h(n==-1) = 1; h(n==0) = 2; h(n==1) = 1; h(n==2) = -1;

% Συνέλιξη y[n] = x[n] * h[n]
y = conv(x, h, 'same')

% Γραφικές παραστάσεις
subplot(131); stem(n,x); title('x[n]'); grid on; axis([-M,M,-4,6]);
subplot(132); stem(n,h); title('h(n)'); grid on; axis([-M,M,-4,6]); 
subplot(133); stem(n,y); title('y[n]=x[n]*h[n]');grid on; axis([-M,M,-4,6]);