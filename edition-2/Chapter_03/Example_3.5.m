% Example 3.5
clc; clear all; clf

syms t
t0 = 0; T0 = 1; w0 = 2*pi/T0; A=1; N=10; %Ν πλήθος συντ. σειράς Fourier
x = abs( A*sin(pi*t) );   	% Ορισμός σήματος x(t)
a0 = (1/T0) * int(x, t, t0, t0+T0);     % Σχέση 3.2
c0 = a0;
% Υπολογισμός σχέσεων 3.3, 3.4, 3.6 και 4.7
for n = 1 : N;
   a(n) = (2/T0) * int(x*cos(n*w0*t), t, t0, t0+T0);   	% Σχέση 3.3
   b(n) = (2/T0) * int(x*sin(n*w0*t), t, t0, t0+T0);	% Σχέση 3.4
   c(n) = sqrt( (a(n))^2 + (b(n))^2 );         		% Σχέση 3.6
   f(n) = -atan( b(n) / a(n) );         			% Σχέση 3.7
end
C = [c0 c]; % Τοποθέτηση όλων των συντελεστών c σε ένα διάνυσμα C
k = 0: N;   % Δημιουργία άξονα τιμών [0, Ν]
figure(1);
subplot(211); stem(k, C); grid on;  % Φάσμα πλάτους μονής πλευράς
subplot(212); stem(f); grid on;     % Φάσμα φάσης μονής πλευράς

M = N/2;
for n = -M : M
   X(n+(M+1)) = (1/T0) * int(x*exp(-j*w0*n*t),t,t0,t0+T0); %Σχέση 3.9
end
figure(2); stem(-M:M, abs(X)); grid on
