% Example 14.26
clear all; clc

n = 0 : pi/16 : 4*pi; 
x = sin(n); 
stem(n, x); grid on