% Example 3.40
clc; clear all; clf

syms w t
u(w) = heaviside(w);
X(w) = u(w+1) - u(w-1);
x(t) = ifourier( X(w), t ); 
x(t) = simplify( x(t) )
ezplot(x(t), [-30, 30]); 
grid on; ylim([-0.1 0.4])
title('Inverse Fourier Transform'); 
xlabel('t'); ylabel('x(t)')




