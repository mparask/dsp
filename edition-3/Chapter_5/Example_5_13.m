% Example 5.13

clear all; clc
num = [2 -3 4]; 
den = [1 2 6 1];
H = tf(num, den) 
midenika = zero( H ) 
poloi = pole( H )
pzmap( H ); xlim([-2 2]); grid on