% Figure 8.11
clc; clf; clear all

n = 0:20;
h1 = (1.3).^n;
b1 = [1]; a1=[1, -1.3];
figure(1); stem(n,h1); title('h[n] = (1.3)^n u[n]'); grid on; 
figure(2); zplane(b1,a1); grid on

h2 = (1).^n;
b2 = [1]; a2=[1, -1];
figure(3); stem(n,h2); title('h[n] = (1)^n u[n]'); ylim([-0.5, 1.5]); grid on; 
figure(4); zplane(b2,a2); grid on; 

h3 = (0.7).^n;
b3 = [1]; a3=[1, -0.7];
figure(5); stem(n,h3); title('h[n] = (0.7)^n u[n]'); grid on; 
figure(6); zplane(b3,a3); grid on; 

h4 = (-0.7).^n;
b4 = [1]; a4=[1, 0.7];
figure(7); stem(n,h4); title('h[n] = (-0.7)^n u[n]'); grid on; 
figure(8); zplane(b4,a4); grid on; 

h5 = (-1).^n;
b5 = [1]; a5=[1, 1];
figure(9); stem(n,h5); title('h[n] = (-1)^n u[n]'); ylim([-1.5, 1.5]); grid on; 
figure(10); zplane(b5,a5); grid on; 

h6 = (-1.3).^n;
b6 = [1]; a6=[1, 1.3];
figure(11); stem(n,h6); title('h[n] = (-1.3)^n u[n]');grid on; 
figure(12); zplane(b6,a6); grid on; 