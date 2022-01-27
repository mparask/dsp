% Example 7.24

% ���������� x[n] = �[n]
n = 0:60; x = zeros(size(n)); x(n==0) = 1;
% ������� ����������� a ��� b
a = [1, 0.1, -0.72];  b = [1 -1];
% ������� ��� ����� �� filter()
h = filter(b, a, x);
 
% ������� ��� ����� ��� ������ 
h1 = (-0.2/1.7)*(0.8).^n + (1.9/1.7) * (-0.9).^n;
subplot(211); stem(n, h); title('h[n] �� ��������� filter'); 
ylim([-1.2, 1.2]);grid on
subplot(212);stem(n, h1); title('h[n] ��� ������'); 
ylim([-1.2, 1.2]);grid on	
