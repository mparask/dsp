% Example 2.41_F
clc; clear all; clf

t1 = 2 : 0.1 : 4; t2 = 4 : 0.1 : 6; t3 = 6 : 0.1 : 8;
y1 = t1-2; y2 = 2*ones(length(t2)); y3 = 8-t3;
plot(t1, y1, t2, y2, t3, y3); xlim([0, 10]); ylim([0,2.5]); grid on







