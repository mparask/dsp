% Example 2.41_E
clc; clear all; clf

syms t r
u(t) = heaviside(t)
x(t) = u(t-1) - u(t-5);
h(t) = u(t-1) - u(t-3);

gx4 = ezplot(x(r),[-2,10]);
set (gx4,'Marker','*','LineStyle','-.')
grid on; hold on
gh4 = ezplot(h(6.5-r),[-2,10]);
set(gh4,'Color','r','Marker','o','lineStyle',':');
title('t=6.5, h(6.5-r), x(r)')






