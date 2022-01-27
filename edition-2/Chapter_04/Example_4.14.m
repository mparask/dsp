% Example 4.14

syms t s 
X(s) = (3*s+7)/(s^2+4*s+3); 
x(t) = ilaplace(X(s), t)
ezplot(x(t)); grid on; xlim([0 6]); ylim([0 3.5])
