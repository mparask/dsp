% Example 11.7 (Part B)

clf
clc
% Σχεδιασμός γραφικών παραστάσεων

subplot(311);
plot(No1, Rp, 'b'); grid on; axis([0,100, 0, 2]); hold on; 
plot(Nk1, Rp, 'r'); grid on; 
title('Δω = 0.05π'); hold off;

subplot(312);
plot(No2, Rp, 'b'); grid on; axis([0,100, 0, 2]); hold on; 
plot(Nk2, Rp, 'r'); grid on;  
title('Δω = 0.1π'); hold off;

subplot(313);
plot(No3, Rp, 'b'); grid on; axis([0,100, 0, 2]); hold on; 
plot(Nk3, Rp, 'r'); grid on; 
title('Δω = 0.2π'); hold off;

