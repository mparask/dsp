% Example 10.17
clear all; clc; clf;

n = [1:11]; N = 2.^n;

O_DFT = N.^2;
O_FFT = (N) .* log2(N);

semilogy(N, O_DFT); hold on ; semilogy(N, O_FFT, 'r'); grid
legend('DFT', 'FFT'); 