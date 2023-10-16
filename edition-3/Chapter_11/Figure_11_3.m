% Figure 11.3
clc; clf; clear all

n = 0:20;
h1 = (1.3).^n;
b1 = [1]; a1=[1, -1.3];
figure(1); 
subplot(121); stem(n,h1); title('h[n] = (1.3)^n u[n]'); grid on; 
subplot(122); zplane(b1,a1); grid on

h2 = (1).^n;
b2 = [1]; a2=[1, -1];
figure(2); 
subplot(121); stem(n,h2); title('h[n] = (1)^n u[n]'); ylim([-0.5, 1.5]); grid on; 
subplot(122); zplane(b2,a2); grid on; 

h3 = (0.7).^n;
b3 = [1]; a3=[1, -0.7];
figure(3); 
subplot(121); stem(n,h3); title('h[n] = (0.7)^n u[n]'); grid on; 
subplot(122); zplane(b3,a3); grid on; 

h4 = (-0.7).^n;
b4 = [1]; a4=[1, 0.7];
figure(4); 
subplot(121); stem(n,h4); title('h[n] = (-0.7)^n u[n]'); grid on; 
subplot(122); zplane(b4,a4); grid on; 

h5 = (-1).^n;
b5 = [1]; a5=[1, 1];
figure(5); 
subplot(121); stem(n,h5); title('h[n] = (-1)^n u[n]'); ylim([-1.5, 1.5]); grid on; 
subplot(122); zplane(b5,a5); grid on; 

h6 = (-1.3).^n;
b6 = [1]; a6=[1, 1.3];
figure(6); 
subplot(121); stem(n,h6); title('h[n] = (-1.3)^n u[n]');grid on; 
subplot(122); zplane(b6,a6); grid on; 