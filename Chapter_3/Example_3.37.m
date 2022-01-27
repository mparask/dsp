% Example 3.37
clc; clear all; clf

syms t w 
a = 1
u(t) = heaviside(t); 
x(t) = u(t+a) - u(t-a);
X(w) = fourier(x(t)); 
X(w) = simplify(X(w))
ezplot(X(w), [-30, 30]); 
grid on; ylim([-1 4])
title('Fourier Transform '); 
xlabel('w'); ylabel('X(w)')



