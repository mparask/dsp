% Example 1.10
%
syms t
u(t) = heaviside(t);    % Ορισμός u(t)
x(t) = exp(-t)*u(t);    % Ορισμός x(t)
y1(t) = x(-t);          % Ορισμός y1(t)
y2(t) = x(1-t);         % Ορισμός y2(t)
subplot(131); fplot(x(t),'b');  grid on; axis([-4 4 0 1]); title('x(t)')
subplot(132); fplot(y1(t),'m'); grid on; axis([-4 4 0 1]); title('y1(t)') 
subplot(133); fplot(y2(t),'r'); grid on; axis([-4 4 0 1]); title('y2(t)')
