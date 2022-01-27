% Example 2.41_A
clc; clear all; clf

syms t r
u(t) = heaviside(t)
x(t) = u(t-1) - u(t-5);
h(t) = u(t-1) - u(t-3);
gx = ezplot(x(r), [-4,6]);
set (gx,'Marker','*','LineStyle','-.')
grid on; hold on
gh = ezplot(h(-r),[-4,6]);
set(gh,'Color','r','Marker','o','lineStyle',':');
title('t=0, h(t-r), x(r)')





