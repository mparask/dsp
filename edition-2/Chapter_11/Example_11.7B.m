% Example 11.7 (Part B)

clf
clc
% ���������� �������� �����������

subplot(311);
plot(No1, Rp, 'b'); grid on; axis([0,100, 0, 2]); hold on; 
plot(Nk1, Rp, 'r'); grid on; 
title('�� = 0.05�'); hold off;

subplot(312);
plot(No2, Rp, 'b'); grid on; axis([0,100, 0, 2]); hold on; 
plot(Nk2, Rp, 'r'); grid on;  
title('�� = 0.1�'); hold off;

subplot(313);
plot(No3, Rp, 'b'); grid on; axis([0,100, 0, 2]); hold on; 
plot(Nk3, Rp, 'r'); grid on; 
title('�� = 0.2�'); hold off;

