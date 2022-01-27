% Example 4.37
clear all; clc; clf;

num1 = [1 -2]; den1 = [1 3 2]; H1 = tf(num1, den1);
num2 = [1 0];  den2 = [1 3];   H2 = tf(num2, den2);
num3 = [1 2];  den3 = [1 4 0]; H3 = tf(num3, den3);
H12 = parallel(H1, H2); Heq = series(H12, H3)
