% Example 7.22

nx = [0, 1, 2, 3];
x = [1, 2, 3, 4];

nn = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
xx = [x, x, x];

nh = [-1, 0, 1, 2];
h = [1, 2, 0, -1];

nh0 = [-2, -1, 0, 1];
h0 = [-1, 0, 2, 1]

h00 = [-1, 0, 2, 1, -1, 0, 2, 1, -1, 0, 2, 1];
nh00 = [-2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

h01 = [1, -1, 0, 2, 1, -1, 0, 2, 1, -1, 0, 2];
h02 = [2, 1, -1, 0, 2, 1, -1, 0, 2, 1, -1, 0];
h03 = [0, 2, 1, -1, 0, 2, 1, -1, 0, 2, 1, -1];

y=[-1,1,7,5,-1,1,7,5,-1,1,7,5, ];
ny = [-4,-3,-2,-1,0,1,2, 3, 4, 5, 6, 7];

figure(1)
%subplot(121); 
stem(nx,x); title('x[k]'); ylim([-1, 4]); grid on;

figure(2); stem(nh,h); title('h[k]'); ylim([-1, 4]); grid on;
figure(3); stem(nh0,h0); title('h[-k]'); ylim([-1, 4]); grid on;

figure(4); stem(nh00,h00); title('h[-k]'); ylim([-1, 4]); grid on;
figure(5); stem(nh00,h01); title('h[1-k]'); ylim([-1, 4]); grid on;
figure(6); stem(nh00,h02); title('h[2-k]'); ylim([-1, 4]); grid on;
figure(7); stem(nh00,h03); title('h[3-k]'); ylim([-1, 4]); grid on;

figure(8); stem(ny,y); title('y[n]'); ylim([-1, 7]); grid on;


%figure(2)
%subplot(121); stem(n,x); title('x[k]'); ylim([-1, 5]); grid on;
%subplot(122); stem(n,h); title('h[k]'); ylim([-1, 5]); grid on;
