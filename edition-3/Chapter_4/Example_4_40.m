% Example 4.40
clear all; clc; clf;

syms t w 
u(t) = heaviside(t); 
a = 1/2
x(t) = u(t+a) - u(t-a); X(w) = fourier(x(t)); X(w) = simplify(X(w))
subplot(131);fplot(X(w), [-30,30]); grid on; ylim([-1 4]); 
title('(α) X(Ω) για α=1/2');

a = 1
x(t) = u(t+a) - u(t-a); X(w) = fourier(x(t)); X(w) = simplify(X(w))
subplot(132);fplot(X(w), [-30,30]); grid on; ylim([-1 4]); 
title('(β) X(Ω) για α=1'); 

a = 2
x(t) = u(t+a) - u(t-a); X(w) = fourier(x(t)); X(w) = simplify(X(w))
subplot(133);fplot(X(w), [-30,30]); grid on; ylim([-1 4]); 
title('(γ) X(Ω) για α=2'); 