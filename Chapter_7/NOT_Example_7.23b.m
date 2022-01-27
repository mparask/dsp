% example 7.23 b

% Προσχέδιο του παραδείγματος 7.23

% Να υπολογιστεί η κυκλική συνέλιξη 4 σημείων μεταξύ των ακολουθιών 
% x[n]={<0>,1,2,3} και h[n]={1,<2>,0,-1}

clear all; clc

n = [0, 1, 2, 3];

x = [1, -1, 1, 0];
h = [1, 2, 3, 3];

nx = [-4,-3,-2,-1, 0, 1, 2, 3, 4, 5, 6, 7];
xx = [1, -1, 1, 0, 1,-1, 1, 0, 1,-1, 1, 0];

nh = [-4,-3,-2,-1, 0, 1, 2, 3, 4, 5, 6, 7];

h0 = [ 1, 3, 3, 2, 1, 3, 3, 2, 1, 3, 3, 2];
h1 = [ 2, 1, 3, 3, 2, 1, 3, 3, 2, 1, 3, 3];
h2 = [ 3, 2, 1, 3, 3, 2, 1, 3, 3, 2, 1, 3];
h3 = [ 3, 3, 2, 1, 3, 3, 2, 1, 3, 3, 2, 1];
   
figure(1); stem(nx,xx); title('x[k]'); grid on
figure(2); stem(nh,h0); title('h[-k]');grid on
figure(3); stem(nh,h1); title('h[1-k]');grid on
figure(4); stem(nh,h2); title('h[2-k]');grid on
figure(5); stem(nh,h3); title('h[3-k]');grid on

y0 = 0;
for i =1:3
    y0 = y0 + xx(i) .* h0(i);
end

y1 = 0;
for i =1:3
    y1 = y1 + xx(i) .* h1(i);
end

y2 = 0;
for i =1:3
    y2 = y2 + xx(i) .* h2(i);
end

y3 = 0;
for i =1:3
    y3 = y3 + xx(i) .* h3(i);
end

y = [y0, y1, y2, y3]
