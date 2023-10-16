% Example 1.38

t = 1 : 8;
x1 = 2*subs(dirac(t+1), inf, 1);
x2 = 3*subs(dirac(t), inf, 1);
x3 = -1*subs(dirac(t-1), inf, 1);
x4 = subs(dirac(t-2), inf, 1);
x = x1 + x2 + x3 + x4;
stem(t, x);  axis([-2 7 -1.5 3.5]); grid on