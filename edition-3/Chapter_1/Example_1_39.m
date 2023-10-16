% Example 1.39

syms t
u(t) = heaviside(t); 
r(t) = t * u(t); 
x1(t) = r(t); 
x2(t) = 2*r(t+1) - 4*r(t) + 2*r(t-1);
subplot(121); fplot(x1(t),'b'); grid on; axis([-2 2 0 2]); title('x1(t)')
subplot(122); fplot(x2(t),'m'); grid on; axis([-2 2 0 2]); title('x2(t)') 