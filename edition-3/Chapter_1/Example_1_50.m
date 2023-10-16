% Example 1.50

A = 2; a1 = 2; a2 = -2;
w0 = 4*pi; fi = 0; 
T0  = (2*pi)/w0;
t = 0 : 0.01 : 4*T0;
x1 = A*exp(a1*t).*cos(w0*t+fi); 
x2 = A*exp(a2*t).*cos(w0*t+fi);
subplot(211); plot(x1); grid on; 
subplot(212); plot(x2); grid on;