% Example 1.12
% 
syms t
u(t) = heaviside(t);    % Ορισμός u(t)
x(t) = t*[u(t)-u(t-1)]; % Ορισμός x(t)
y(t) = x(-t+2);          % Ανάκλαση
subplot(121); fplot(x(t),'b'); grid on; axis([-1 3 -0.5 1.5]); title('x(t)')
subplot(122); fplot(y(t),'m'); grid on; axis([-1 3 -0.5 1.5]); title('y(t)=x(-t+2)')