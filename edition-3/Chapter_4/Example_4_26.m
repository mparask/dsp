% Example 4.26

clear all; clc

syms w t
d(w) = dirac(w); 
X1(w) = -j*pi*(d(w-2)-d(w+2)); 
x1(t) = simplify(ifourier(X1(w),t))
X2(w) = pi*(d(w-2)+d(w+2)); 
x2(t) = simplify(ifourier(X2(w),t))
figure(1); subplot(121); fplot(x1(t)); grid on; title('x1(t) = sin(2t)')
subplot(122); fplot(x2(t),'m'); grid on; title('x2(t) = cos(2t)')