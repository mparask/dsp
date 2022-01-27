% Example 2.41_D
clc; clear all; clf

syms t r
u(t) = heaviside(t)
x(t) = u(t-1) - u(t-5);
h(t) = u(t-1) - u(t-3);

gx3 = ezplot(x(r),[-2,10]);
set (gx3,'Marker','*','LineStyle','-.')
grid on; hold on
gh3 = ezplot(h(4.5-r),[-2,10]);
set(gh3,'Color','r','Marker','o','lineStyle',':');
title('t=4.5, h(4.5-r), x(r)')





