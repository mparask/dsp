% Example 7.19

M = 7; n = [-M:M]; N = 2*M+1; 	% Δημιουργία κλίμακας χρόνου

% x[n] = {<1>, 2, 0.5, -1}
x = zeros(1, N); x(n==0) = 1; x(n==1) = 2; x(n==2) = 0.5; x(n==3) = 1;
 
% h[n] = {1, <2>, 1, -1}
h = zeros(1, N); h(n==-1) = 1; h(n==0) = 2; h(n==1) = 1; h(n==2) = -1;
 
% Συνέλιξη y[n] = x[n] * h[n]
y = conv(x, h, 'same');

% Γραφικές παραστάσεις
subplot(311);stem(n,x);title('x[n]'); grid on; axis([-M, M, -2, 4]);
subplot(312);stem(n,h);title('h(n)'); grid on; axis([-M, M, -2, 4]); 
subplot(313);stem(n,y);title('y[n]=x[n]*h[n]');grid on;axis([-M,M,-5,10]);
