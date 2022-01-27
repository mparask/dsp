% Example 2.41_C
clc; clear all; clf

syms t r
u(t) = heaviside(t)
x(t) = u(t-1) - u(t-5);
h(t) = u(t-1) - u(t-3);

gx2 = ezplot(x(r),[-2,10]);
set (gx2,'Marker','*','LineStyle','-.')
grid on; hold on
gh2 = ezplot(h(2.5-r),[-2,10]);
set(gh2,'Color','r','Marker','o','lineStyle',':');
title('t=2.5, h(2.5-r), x(r)')




