% Example 4.3 - Δημιουργία σχήματος 4.7

clear all; clc
N=100;
x=[ones(1,N), zeros(1,N)];
xx=[x,x,x];
k=1:1:length(xx);
plot(k,xx); ylim([-1,2]); title('x(t)'); grid