% Example 7.21

N = 10; M = 30;	% Ορισμός κλίμακας χρόνου
nx = [-N:M]; 	% Όρια x[n]; 
nh = [-N:M]; 	% Όρια h[n]

% x[n] = u[n] - u[n-10]
u = [zeros(1,N), ones(1,M+1)]; u10 = [zeros(1,N+10), ones(1,M+1-10)];
x = u - u10;
 
h = [(0.7) .^ nh ] .* u;	% h[n] = (0.7)^n u[n]
 
% Υπολογισμός χρονικών ορίων y[n]
ny_s = nx(1) + nh(1);
ny_e = nx(length(x)) + nh(length(h));
ny = [ny_s:ny_e];
 
y = conv(x, h);	% Συνέλιξη y[n] = x[n] * h[n]

% Σχεδιασμός γραφικών παραστάσεων
subplot(221);stem(nx,x);axis([-N M 0 1.2]);grid on;title('x[n]')
subplot(222);stem(nh,h);axis([-N M 0 1.2]);grid on;title('h[n]')
subplot(224);stem(ny,y);grid on;axis([-N M 0 4]);title('y[n]=x[n]*h[n]')
