% Example 7.23

% Προσχέδιο του παραδείγματος 7.23

% Να υπολογιστεί η κυκλική συνέλιξη 4 σημείων μεταξύ των ακολουθιών 
% x[n]={<0>,1,2,3} και h[n]={1,<2>,0,-1}

clear all; clc

n = [0, 1, 2, 3];

x = [0, 1, 2, 3];

h = [1, 2, 0, -1];

nx =    [-4 -3,-2,-1, 0, 1, 2, 3, 4, 5, 6, 7];
xtild = [ 0, 1, 2, 3, 0, 1, 2, 3, 0, 1, 2, 3];

nh =    [-4,-3,-2,-1, 0, 1, 2, 3, 4, 5, 6, 7];
htild = [ 2, 0,-1, 1, 2, 0,-1, 1, 2, 0,-1, 1];

nh =    [-4,-3,-2,-1, 0, 1, 2, 3, 4, 5, 6, 7];
h0 =    [ 2, 1,-1, 0, 2, 1,-1, 0, 2, 1,-1, 0];
h1 =    [ 0, 2, 1,-1, 0, 2, 1,-1, 0, 2, 1,-1];
h2 =    [-1, 0, 2, 1,-1, 0, 2, 1,-1, 0, 2, 1];
h3 =    [ 1,-1, 0, 2, 1,-1, 0, 2, 1,-1, 0, 2];

nhR = [ 0, 1, 2, 3 ];
h0R = [ 2, 1,-1, 0 ];
h1R = [ 0, 2, 1,-1 ];
h2R = [-1, 0, 2, 1 ];
h3R = [ 1,-1, 0, 2 ];

y0R = sum ( x .* h0R ); y1R = sum ( x .* h1R );
y2R = sum ( x .* h2R ); y3R = sum ( x .* h3R );

yR = [y0R, y1R, y2R, y3R]

figure(1); stem(nx,xtild); title('x[k]'); grid on
figure(2); stem(nh,h0); title('h[-k]');grid on
figure(3); stem(nh,h1); title('h[1-k]');grid on
figure(4); stem(nh,h2); title('h[2-k]');grid on
figure(5); stem(nh,h3); title('h[3-k]');grid on

y0 = 0;
for i =1:3
    y0 = y0 + xtild(i) .* h0(i);
end

y1 = 0;
for i =1:3
    y1 = y1 + xtild(i) .* h1(i);
end

y2 = 0;
for i =1:3
    y2 = y2 + xtild(i) .* h2(i);
end

y3 = 0;
for i =1:3
    y3 = y3 + xtild(i) .* h3(i);
end

y = [y0, y1, y2, y3]
