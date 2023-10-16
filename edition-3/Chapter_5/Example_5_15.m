% Example 5.15

clear all; clc

syms t s 
u(t) = heaviside(t);
x(t) = exp(-2*t) * sin(3*pi*t) * u(t);  % x(t)
X(s) = laplace(x(t), s); pretty(X(s))   % Χ(s)
H1(s) = (s-2)/(s^2+3*s+2);              % H1(s)
H2(s) = s/(s+3);                        % H2(s)
H3(s) = (s+2)/(s^2+4*s);                % H3(s)
Heq(s) = ( H1(s) + H2(s) ) * H3(s);     % Heq(s)
heq(t) = ilaplace(Heq(s), t);           % heq(t)
Y(s) = X(s) * Heq(s);                   % Y(s)
y(t) = ilaplace(Y(s), t);               % y(t)
num1 = [1 -2]; den1 = [1 3 2]; H1 = tf(num1, den1);     % H1(s)
num2 = [1 0];  den2 = [1 3];   H2 = tf(num2, den2);     % H2(s)
num3 = [1 2];  den3 = [1 4 0]; H3 = tf(num3, den3);     % H3(s)
H12 = parallel(H1, H2); Heq = series(H12, H3)           % Heq(s)
midenika = zero( Heq )
poloi = pole( Heq )
% Σχεδιασμός εισόδου, ισοδύναμης κρουστικής, εξόδου, διαγρ.πόλων-μηδενικών
subplot(221); ezplot(t, x(t)); xlim([0 2]); title('x(t)'); grid on
subplot(222); ezplot(t, heq(t)); xlim([0 2]); title('heq(t)'); grid on
subplot(223); ezplot(t, y(t)); xlim([0 2]); title('y(t)'); grid on
subplot(224); pzmap(Heq); xlim([-5 2]); grid on