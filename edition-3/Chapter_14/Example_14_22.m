% Example 14.22
clear all; clc

syms x; 
y = exp(-x); 
ezplot(y); grid on

ezplot(y,-2,2); 
grid on