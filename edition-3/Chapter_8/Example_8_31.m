% Example 8.31
clear all; clc

N = 10; M = 30;     % Ορισμός κλίμακας χρόνου
nx = [-N:M];        % Όρια x[n]; 
nh = [-N:M];        % Όρια h[n]

% x[n] = u[n] - u[n-10]
u = [zeros(1,N), ones(1,M+1)]; u10 = [zeros(1,N+10), ones(1,M+1-10)]; x = u - u10;

% h[n] = (0.6)^n u[n]
h = [(0.6) .^ nh ] .* u;    

% Υπολογισμός χρονικών ορίων y[n]
ny_s = nx(1) + nh(1); 
ny_e = nx(length(x)) + nh(length(h)); 
ny = [ny_s:ny_e];

% Συνέλιξη y[n] = x[n] * h[n]
y = conv(x, h); 

% Σχεδιασμός γραφικών παραστάσεων
subplot(131); stem(nx,x); axis([-N M 0 1.2]); grid on; title('x[n]')
subplot(132); stem(nh,h); axis([-N M 0 1.2]); grid on; title('h[n]')
subplot(133); stem(ny,y); grid on; axis([-N M 0 3]); title('y[n]=x[n]*h[n]')

