% Example 1.14

syms t
x(t) = cos(2*pi*t) - sin(3*pi*t) + 2*cos(5*pi*t) + 3*sin(pi*t);
xe(t) = 0.5 * ( x(t) + x(-t) ); 
xo(t) = 0.5 * ( x(t) - x(-t) );
subplot(311); ezplot(x(t), [-2 2]); grid on
subplot(312); ezplot(xe(t), [-2 2]); grid on
subplot(313); ezplot(xo(t), [-2 2]); grid on
