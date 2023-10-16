% Example 8.26
clear all; clc

M = 7; n = [-M:M]; N = 2*M+1; 	% Δημιουργία κλίμακας χρόνου

% x[n] = {<1>, 2, 0.5, -1}
x = zeros(1, N); x(n==0) = 1; x(n==1) = 2; x(n==2) = 0.5; x(n==3) = 1;
% h[n] = {1, <2>, 1, -1}
h = zeros(1, N); h(n==-1) = 1; h(n==0) = 2; h(n==1) = 1; h(n==2) = -1;

hh = zeros(1, N); hh(n==-2) = -1; hh(n==-1) = 1; hh(n==0) = 2; hh(n==1) = 1;
h_1 = zeros(1, N); h_1(n==-3) = -1; h_1(n==-2) = 1; h_1(n==-1) = 2; h_1(n==0) = 1;
h0 = hh;
h1 = zeros(1, N); h1(n==-1) = -1; h1(n==0) = 1; h1(n==1) = 2; h1(n==2) = 1;
h2 = zeros(1, N); h2(n==0) = -1; h2(n==1) = 1; h2(n==2) = 2; h2(n==3) = 1;
h3 = zeros(1, N); h3(n==0) = 0; h3(n==1) = -1; h3(n==2) = 1; h3(n==3) = 2; h3(n==4) = 1;

u_1 = x.*h_1;
u0 = x.*h0;
u1 = x.*h1;
u2 = x.*h2;

% Γραφικές παραστάσεις
figure(1)
subplot(131);stem(n,x,'r');title('x[k]'); grid on; axis([-M, M, -1, 4]);
subplot(132);stem(n,h);title('h[k]'); grid on; axis([-M, M, -1, 4]); 
subplot(133);stem(n,hh);title('h[-k]');grid on;axis([-M,M,-1,4]);

figure(2)
subplot(131);stem(n,h_1);title('h[-1-k]'); grid on; axis([-M, M, -1, 4]);
subplot(132);stem(n,x,'r');title('x[k]'); grid on; axis([-M, M, -1, 4]); 
subplot(133);stem(n,u_1,'m');title('u_-_1[k]'); grid on; axis([-M, M, -1, 4]); 

figure(3)
subplot(131);stem(n,h0);title('h[-k]'); grid on; axis([-M, M, -1, 4]);
subplot(132);stem(n,x,'r');title('x[k]'); grid on; axis([-M, M, -1, 4]); 
subplot(133);stem(n,u0,'m');title('u_0[k]'); grid on; axis([-M, M, -1, 4]); 

figure(4)
subplot(131);stem(n,h1);title('h[1-k]'); grid on; axis([-M, M, -1, 4]);
subplot(132);stem(n,x,'r');title('x[k]'); grid on; axis([-M, M, -1, 4]); 
subplot(133);stem(n,u1,'m');title('u_1[k]'); grid on; axis([-M, M, -1, 4]); 

figure(5)
subplot(131);stem(n,h2);title('h[2-k]'); grid on; axis([-M, M, -1, 4]);
subplot(132);stem(n,x,'r');title('x[k]'); grid on; axis([-M, M, -1, 4]); 
subplot(133);stem(n,u2,'m');title('u_2[k]'); grid on; axis([-M, M, -1, 4]); 

% Συνέλιξη y[n] = x[n] * h[n]
y = conv(x, h, 'same');

figure(6)
stem(n,y);title('y[k]'); grid on; axis([-M, M, -1, 6]); 
