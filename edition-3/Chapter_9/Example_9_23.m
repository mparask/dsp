% Example 9.23
b = 1;
a = poly([-0.4, 0.4, 0.4])
[R,p,C] = residuez(b,a)

n = [0:10];
delta = zeros(1, length(n)); delta(1, n==0) = 1;

% x1: Κρουστική απόκριση με επίλυση ΓΕΔΣΣ
x1 = filter(b, a, delta)

% x2: Επίλυση με αντίστροφο μετασχ. Ζ
x2 = (0.75)*(0.4).^n + (0.5)*n.*(0.4).^n + (0.25)*(-0.4).^n
subplot(121); stem(n,x1); grid on
title('Κρουστική απόκριση με ΓΕΔΣΣ'); 
subplot(122); stem(n,x2); grid on
title('Κρουστική απόκριση με αντίστροφο Ζ');