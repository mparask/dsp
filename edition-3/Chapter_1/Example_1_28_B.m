% Example 1.28 (B)

N = 3;
t = 0 : 0.1 : 10;
x = exp(-t);
y = repmat(x, 1, N);
ty=linspace(0,10*N,length(y));
subplot(311); plot(ty, y); grid on


N = 3;
t = 0 : 0.1 : 10;
x = exp(t);
y = repmat(x, 1, N);
ty=linspace(0,10*N,length(y));
subplot(312); plot(ty, y); grid on


N = 3;
x = [1 2 4 -2 1 0];
y = repmat(x, 1, N);
ty=linspace(0,10*N,length(y));
subplot(313); plot(ty, y); grid on


