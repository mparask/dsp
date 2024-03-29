% Example 3.8
clc; clear all; clf

syms t
t0 = 0; T = 5; w = 2*pi/T; 
N = 10; M = N/2;        		% �+1 = ������ ����������� Fourier
x = exp(-t);
for n = -M : M          		% ����������� ����������� �(n)
   X( n+(M+1) ) = (1/T) * int(x*exp(-j*w*n*t), t, t0, t0+T);
   R( n+(M+1) ) = exp(j*w*n*t);
end
Xs = sum(X .* R);  % Xs ���������� x(t) �� �������� ����� Fourier
ezplot(Xs, [0,T]); grid on  	% ���������� �����������

