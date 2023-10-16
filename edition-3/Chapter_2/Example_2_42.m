% Example 2.42

syms t r
% ������� ������� x(t) ��� h(t)
x = heaviside(t); 
h = exp(-2*t) * x ;

% ���������� ������� x(t) ��� h(t)
figure(1); 
subplot(121); fplot(x,[-1, 5]); ylim([0, 1.1]); grid on; title('(�) x(t)')
subplot(122); fplot(h,[-1, 5],'m'); ylim([0, 1.1]); grid on; title('(�) h(t)')

pause

% ���������� ������� ��� t=0
figure(2); gx = ezplot(x(r),[5,5]); set (gx,'Marker','.','LineStyle','.')
grid on; hold on; tt = 0; 
gh = ezplot(h(ttr),[5,5]); 
set(gh,'Color','r','Marker','o', 'lineStyle',':');
title('t=0, h(tr), x(r)'); ylim([0,1.1])

pause

% ���������� ������� ��� t<0 (�.�. t=1)
figure(3); gx = ezplot(x(r),[5,5]);
set (gx,'Marker','.','LineStyle','.'); grid on; hold on; 
tt=1; gh = ezplot(h(ttr),[5,5]);
set(gh,'Color','r','Marker','o', 'lineStyle',':'); 
title('t=1, h(tr), x(r)'); ylim([0,1.1])

pause

% ���������� ������� ��� t>0 (�.�. t=1.5)
figure(4); gx = ezplot(x(r),[5,5]);
set (gx,'Marker','.','LineStyle','.'); grid on; hold on; 
tt=1.5; gh = ezplot(h(ttr),[5,5]);
set(gh,'Color','r','Marker','o', 'lineStyle',':'); 
title('t=1.5, h(tr), x(r)'); ylim([0,1.1])

pause

y(t) = int(h(t-r), r, 0, t);
t = 0 :  0.01 :  5;
y = 0.5 - exp(-2*t)/2;
figure(5); plot(t, y); grid on; 
ylim([0, 0.6])
