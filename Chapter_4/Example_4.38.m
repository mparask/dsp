% Example 4.38
clear all; clc; clf;

num1 = [1 -2]; den1 = [1 3 2]; H1 = tf(num1, den1);
num2 = [1 0];  den2 = [1 -3];  H2 = tf(num2, den2);
Heq = feedback(H1, H2)

pzmap(Heq)