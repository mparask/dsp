% Example 2.41

syms t r
u(t) = heaviside(t)
x(t) = u(t1) - u(t5);
h(t) = u(t1) - u(t3);

% Υπολογίζουμε και απεικονίζουμε τα σήματα x(τ) και  h(t-τ) για τη χρονική στιγμή t=0. 
% Θα κρατήσουμε σταθερό το x(t) και θα ολισθήσουμε το h(t-τ).
gx = ezplot(x(r), [4,6]);
set (gx,'Marker','*','LineStyle','.')
grid on; hold on; 
gh = ezplot(h(r),[4,6]);	
set(gh,'Color','r','Marker','o','lineStyle',':'); title('t=0, h(tr), x(r)')

pause

% Απεικονίζουμε τα σήματα για t=9
gx1 = ezplot(x(r),[2,10]);
set (gx1,'Marker','*','LineStyle','.')
grid on; hold on; gh1 = ezplot(h(9r),[2,10]);
set(gh1,'Color','r','Marker','o','lineStyle',':'); title('t=9, h(9r), x(r)')

pause 

% Απεικονίζουμε τα σήματα για t=2.5 (t>2)
gx2 = ezplot(x(r),[2,10]);
set (gx2,'Marker','*','LineStyle','.')
grid on; hold on; gh2 = ezplot(h(2.5r),[2,10]);
set(gh2,'Color','r','Marker','o','lineStyle',':'); 
title('t=2.5, h(2.5r), x(r)')	

pause

y(t) = int(1, r, 1, t1)

pause

% Απεικονίζουμε τα σήματα για t=4.5 (t>4)

gx3 = ezplot(x(r),[2,10]);
set (gx3,'Marker','*','LineStyle','.')
grid on; hold on; 
gh3 = ezplot(h(4.5r),[2,10]);
set(gh3,'Color','r','Marker','o','lineStyle',':');
title('t=4.5, h(4.5r), x(r)')

pause

y1(t)= int(1, r, t3, t1)

pause

% Απεικονίζουμε τα σήματα για t=6.5 (t>6)
gx4 = ezplot(x(r),[2,10]);
set (gx4,'Marker','*','LineStyle','.')
grid on; hold on; gh4 = ezplot(h(6.5r),[2,10]);
set(gh4,'Color','r','Marker','o','lineStyle',':');
title('t=6.5, h(6.5r), x(r)')	

pause 

y2(t) = int(1, r, t3, 5)

pause

t1 = 2 : 0.1 : 4; y1 = t1-2; 
t2 = 4 : 0.1 : 6; y2 = 2*ones(length(t2)); 
t3 = 6 : 0.1 : 8; y3 = 8-t3;
plot(t1, y1, t2, y2, t3, y3); 
xlim([0, 10]); ylim([0,2.5]); grid on