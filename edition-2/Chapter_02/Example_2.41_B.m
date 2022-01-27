% Example 2.41_B
clc; clear all; clf

syms t r
u(t) = heaviside(t)
x(t) = u(t-1) - u(t-5);
h(t) = u(t-1) - u(t-3);

gx1 = ezplot(x(r),[-2,10]);
set (gx1,'Marker','*','LineStyle','-.')
grid on; hold on
gh1 = ezplot(h(9-r),[-2,10]);
set(gh1,'Color','r','Marker','o','lineStyle',':');
title('t=9, h(9-r), x(r)')



