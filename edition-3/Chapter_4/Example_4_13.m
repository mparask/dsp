% Example 4.13

clear all

% Ορισμός παραμέτρων σήματος
w0 = 2*pi; DC = 0; N = 40;

% Υπολογισμός N όρων σειράς Fourier
for n = 1:N
   X(n) = sin(n * pi/2)/(n * pi/2);
end
X = [DC X];

% Υπολογισμός περιοδικού σήματος
Ts = 0.001;
t = 0 : Ts : 1-Ts; L = length(t);
x = [ones(1,L/4) ones(1,L/2) ones(1,L/4)]; 
x = x;

% Υπολογισμός προσέγγισης
xN = X(1)*ones(1,length(t));
for n = 2:N
xN = xN + 2*X(n) * cos(2*pi*(n-1).*t);
plot(t, xN); axis([0 max(t) 1.1*min(xN) 1.1*max(xN)]); hold on; 
plot(t,x,'r'); ylabel('x(t),x_N(t)'); xlabel('t (sec)'); grid on; hold off
pause(1)
end