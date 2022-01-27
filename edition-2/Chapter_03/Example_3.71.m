% Example 3.71
clc; clear all; clf

syms t r
w0 = 2*pi; T0 = 2*pi/w0; A = 1; B = 2;
x(t) = A*cos(w0*t);
y(t) = B*sin(w0*t);
Rxy(t) = (A*B/T0) * int( x(t)*y(t-r), t, -T0/2, T0/2 )
ezplot(Rxy(t)); grid on; xlim([-2,2])

