% Figure 10.1

clf; clc; clear all
N=30; n=[-N:N-1];

xT=[1,0,0,0,0,0,0,0,0,0]; x=[xT,xT,xT,xT,xT,xT];

stem(n, x); grid; ylim([0 1.2]); title('Σήμα x[n]');
