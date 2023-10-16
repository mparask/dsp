% Example 2.37

Step = 0.01; 
t1 = 1 : Step : 2;
t2 = 2 : Step : 3;
t3 = 3 : Step : 4;

x1 = t1-1;
x2 = ones(1, length(t2));
x3 = 4-t3;

t = [t1, t2, t3]; x = [x1, x2, x3];

% Σχεδιασμός διαγράμματος 2.27
plot(t, x); xlim([-1 6]); ylim([0,1.2]); grid on; title('Έξοδος y(t)')