% Example 7.20

% Ορισμός κλίμακας χρόνου
n = [-10:10]; 

% x[n] = {-1, <1>, 2, -1}
x = zeros(1,length(n)); 
x(1,n==-1)=-1; x(1,n==0)=1; x(1,n==1)=2; x(1,n==2)=-1;

% h[n] = |n-3|{ u[n]-u[n-6] }
u = [zeros(1,10),ones(1,11)]; 
u6=[zeros(1,10+6),ones(1,11-6)]; 
h = abs(n-3).*(u-u6);

% Συνέλιξη y[n] = x[n] * h[n]
y = conv(x, h, 'same');

% Γραφικές παραστάσεις
subplot(311); stem(n, x); grid on; title('x[n]')
subplot(312); stem(n, h); grid on; title('h[n]')
subplot(313); stem(n, y); grid on; title('y[n]=x[n]*h[n]')
