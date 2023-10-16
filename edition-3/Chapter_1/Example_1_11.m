% Example 1.11
% 
syms t
a1 = 1/2; a2 = 2;
x(t) = sin(2*pi*t); % Ορισμός x(t)
y1(t) = x(a1*t);    % Ορισμός y1(t)
y2(t) = x(a2*t);    % Ορισμός y2(t)
subplot(311); fplot(x(t),'b'); grid on; axis([-2 2 -1.5 1.5]); title('x(t)')
subplot(312); fplot(y1(t),'m'); grid on; axis([-2 2 -1.5 1.5]); title('y1(t)') 
subplot(313); fplot(y2(t),'r'); grid on; axis([-2 2 -1.5 1.5]); title('y2(t)')

