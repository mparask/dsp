% Example 1.30
clc; clear all;
syms t
u(t) = heaviside(t);
r(t) = t * u(t);
x(t) = r(t+2)-2*r(t+1) +2*r(t)-r(t-1);
x1(t) = x(t) * u(t); x2(t) = x(-t) * u(t);
figure(1); subplot(121); ezplot(x(t)); grid on; xlim([-2 2]);
subplot(122); ezplot(x(-t)); grid on; xlim([-2 2]);
figure(2); subplot(211); ezplot(x1(t)); grid on; xlim([-2 2]);
subplot(212); ezplot(x2(t)); grid on; xlim([-2 2]);
