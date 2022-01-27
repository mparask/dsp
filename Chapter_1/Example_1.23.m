% Example 1.23

t = 0 : 9;
x = subs(dirac(t-1), inf, 1) ;
stem(t, x); axis([0 10 0 1.5]); grid on


