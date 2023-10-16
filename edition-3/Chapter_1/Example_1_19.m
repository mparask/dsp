% Example 1.19
%
syms t

x(t) = cos(2*pi*t) - sin(3*pi*t) - 2*cos(5*pi*t) + sin(pi*t);
xe(t) = 0.5 * ( x(t) + x(-t) ); 
xo(t) = 0.5 * ( x(t) - x(-t) );

% Σχεδιασμός διαγραμμάτων
subplot(131); fplot(x(t),'b',Linewidth=1.5); grid on; axis([-2 2 -5 5]); title('x(t)')
subplot(132); fplot(xe(t),'m',Linewidth=1.5); grid on; axis([-2 2 -5 5]); title('x_e(t)') 
subplot(133); fplot(xo(t),'r',Linewidth=1.5); grid on; axis([-2 2 -5 5]); title('x_o(t)')