% Example 12.10 - Κατασκευή σχημάτων παραδείγματος 12.10

% x[n]
nx = [0,1,2,3]; x = [0,1,2,3];
x1 = [-4,-3,-2,-1, 0,1,2,3, 4,5,6,7];

% Επέκταση x[n]
nn = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]; xx = [x, x, x];

% h[n]
nh = [-1, 0, 1, 2]; h = [1, 2, 0, -1];

% h[-k]
nh0 = [-2, -1, 0, 1]; h0 = [-1, 0, 2, 1]

h00 = [-1, 0, 2, 1, -1, 0, 2, 1, -1, 0, 2, 1];
nh00 = [-2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

h01 = [1, -1, 0, 2, 1, -1, 0, 2, 1, -1, 0, 2];
h02 = [2, 1, -1, 0, 2, 1, -1, 0, 2, 1, -1, 0];
h03 = [0, 2, 1, -1, 0, 2, 1, -1, 0, 2, 1, -1];

y=[-1,1,7,5,-1,1,7,5,-1,1,7,5, ];
ny = [-4,-3,-2,-1,0,1,2, 3, 4, 5, 6, 7];

% Figure 12.10
figure(1)
subplot(121); stem(nx,x); title('x[k]'); xlim([-4,8]); ylim([-1, 4]); grid on;
subplot(122); stem(nn,xx); title('x[n mod N]'); ylim([-1, 4]); grid on;

% Figure 12.11
figure(2); 
subplot(121); stem(nh,h); title('h[k]'); ylim([-1, 4]); grid on;
subplot(122); stem(nh0,h0); title('h[-k]'); ylim([-1, 4]); grid on;

% Figure 12.12
figure(3); 
subplot(121); stem(nh00,h00); title('h^~[-k]'); ylim([-1, 4]); grid on;
subplot(122); stem(nh00,h01); title('h^~[1-k]'); ylim([-1, 4]); grid on;

% Figure 12.13
figure(4); 
subplot(121); stem(nh00,h02); title('h^~[2-k]'); ylim([-1, 4]); grid on;
subplot(122); stem(nh00,h03); title('h^~[3-k]'); ylim([-1, 4]); grid on;

% Figure 12.14
figure(5); stem(ny,y); title('y[n]'); ylim([-1, 7]); grid on;

