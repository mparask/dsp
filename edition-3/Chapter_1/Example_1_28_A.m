% Example 1.28 (A)
% 
[y,t] = gensig('square',5,20,0.01);
subplot(411); plot(t,y); ylim([0, 1.2]); grid on

[y,t] = gensig('sin',5,20,0.01);
subplot(412); plot(t, y); ylim([-1, 1]); grid on

[y,t]=gensig('pulse',5,20,0.01);
subplot(413); plot(t, y); ylim([0, 1.2]); grid on

t = 0 : 0.1: 30;
y = sawtooth(t); 
subplot(414); plot(t, y); ylim([-1.2, 1.2]); grid on
