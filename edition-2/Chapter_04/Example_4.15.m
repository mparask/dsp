% Example 4.15

syms t s 
X(s) = 1/(s+2); 
x(t) = ilaplace(X(s), t) 
ezplot(x(t)); grid on; xlim([0 4]); ylim([0 1.2])
