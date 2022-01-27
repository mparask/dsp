% Example 4.34
clear all; clc; clf;

num = [ 2 3 2 ]; 
den = [2 6 12 8 ];
H = tf( num, den ); 
mhdenika = zero( H ); 
poloi = pole( H )
pzmap( H )
xlim([-2 2 ]); grid on

