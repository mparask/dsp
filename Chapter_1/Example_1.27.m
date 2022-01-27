% Example 1.27

syms t
u(t) = heaviside(t); 
r(t) = t * u(t); 
x1(t) = r(t); 
x2(t) = 2*r(t+1) - 4*r(t) + 2*r(t-1);
subplot(211); ezplot(x1(t)); grid on; xlim([-2 2]); ylim([0, 2]);
subplot(212); ezplot(x2(t)); grid on; xlim([-2 2]); ylim([0, 2]);



