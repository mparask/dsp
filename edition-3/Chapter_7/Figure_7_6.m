% Figure 7.6

clearvars clc; clf

n = -20:20; u = ones(size(n)); u(n<0) = 0;
x = u .* cos(1.85*pi.*n) .* exp(-0.25.*n);
[z, m] = sigfold(x, n);
subplot(121); stem(n, x); ylim([-0.5 1.2]); 
xlim([-20 20]); grid on; title('������� ����')
subplot(122); stem(m, z); ylim([-0.5 1.2]); 
xlim([-20 20]); grid on; title('����-������� ����')