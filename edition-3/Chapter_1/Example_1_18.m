% Example 1.18
% 
syms t
x(t) = heaviside(t);
xe(t) = 0.5 * ( x(t) + x(-t) ); 
xo(t) = 0.5 * ( x(t) - x(-t) );

% Σχεδιασμός διαγραμμάτων
subplot(131); fplot(x(t),'b',Linewidth=2); grid on; axis([-2 2 -1.5 1.5]); title('x(t)')
subplot(132); fplot(xe(t),'m',Linewidth=2); grid on; axis([-2 2 -1.5 1.5]); title('x_e(t)') 
subplot(133); fplot(xo(t),'r',Linewidth=2); grid on; axis([-2 2 -1.5 1.5]); title('x_o(t)')