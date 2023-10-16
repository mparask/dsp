% Example 4.2
clear all; clc

A = 10;
T0 = 2*pi; 
W0 = 2*pi/T0;
t = T0 /2;
N = 20;

X01 = A/2;
k1 = 1:1:N; X1 = A * sin(k1*pi/2) ./ (k1*pi); X1s = fliplr(X1);
kk1 = -N:1:N; Xk1 = [X1s, X01, X1];

X02 = A/4;
k2 = 1:1:N; X2 = A * sin(k2*pi/4) ./ (k2*pi); X2s = fliplr(X2);
kk2 = -N:1:N; Xk2 = [X2s, X02, X2];

X03 = A/8;
k3 = 1:1:N; X3 = A * sin(k3*pi/8) ./ (k3*pi); X3s = fliplr(X3);
kk3 = -N:1:N; Xk3 = [X3s, X03, X3];

X04 = A/16;
k4 = 1:1:N; X4 = A * sin(k4*pi/16) ./ (k4*pi); X4s = fliplr(X4);
kk4 = -N:1:N; Xk4 = [X4s, X04, X4];

subplot(221); stem(kk1,Xk1); ylim([-2,5]); title('τ = Τ_0/2'); grid
subplot(222); stem(kk2,Xk2); ylim([-2,5]); title('τ = Τ_0/4'); grid
subplot(223); stem(kk3,Xk3); ylim([-2,5]); title('τ = Τ_0/8'); grid
subplot(224); stem(kk4,Xk4); ylim([-2,5]); title('τ = Τ_0/16'); grid