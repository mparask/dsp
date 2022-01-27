% Example 2.42
clc; clear all; clf

syms t r
x(t) = heaviside(t); h(t) = exp(-2*t)*heaviside(t);
figure(1); subplot(211); ezplot(x(t),[-5,5]); grid on;
subplot(212); ezplot(h(t),[-5,5]); grid on; ylim([0,1.1])

% Σχεδιασμός σημάτων για t=0
figure(2); gx = ezplot(x(r),[-5,5]);
set (gx,'Marker','.','LineStyle','-.')
grid on; hold on; tt = 0; gh = ezplot(h(tt-r),[-5,5]); set(gh,'Color','r','Marker','o', 'lineStyle',':');
title('t=0, h(t-r), x(r)'); ylim([0,1.1])

% Σχεδιασμός σημάτων για t<0 (π.χ. t=-1)
figure(3); gx = ezplot(x(r),[-5,5]);
set (gx,'Marker','.','LineStyle','-.')
grid on; hold on; tt=-1; gh = ezplot(h(tt-r),[-5,5]);
set(gh,'Color','r','Marker','o', 'lineStyle',':');
title('t=-1, h(t-r), x(r)'); ylim([0,1.1])

% Σχεδιασμός σημάτων για t>0 (π.χ. t=1.5)
figure(4); gx = ezplot(x(r),[-5,5]);
set (gx,'Marker','.','LineStyle','-.')
grid on; hold on
tt=1.5; gh = ezplot(h(tt-r),[-5,5]);
set(gh,'Color','r','Marker','o', 'lineStyle',':');
title('t=1.5, h(t-r), x(r)'); ylim([0,1.1])
	
y(t) = int(h(t-r), r, 0, t);
t = 0 :  0.01 :  5;
y = 0.5 - exp(-2*t)/2;
figure(5); plot(t, y);
grid on; ylim([0, 0.6])