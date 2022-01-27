% Example 5.5

Ts = 0.01; % �������� ��������������
t = 0:0.01:1; xa = 4*sin(2*pi*t + pi/6); % ��������� ���� xa(t)
N = length(t); % ����� ����������� ������ t
n = 0:N-1; xs = 4*sin(2*pi*n*Ts + pi/6); % ����������������� ���� xs(t)
 
% ����������
% floor(): ��������������� ���� ����������� �������
% xs: ����������������� ����, xq: ����������� ����
% ������ ������� ��������� L=2^Q
Q = 2; % ����� ����� ���������; 
d = max(abs(xs)) / Q; % ���� ����������

for k = 1:N
 if xs(k) >= 0
 xq(k) = floor(xs(k)/d)*d; 
 else
 if xa(k) == min(xs)
 xq(k) = (xs(k)/abs(xs(k))) * (floor(abs(xs(k))/d)*d);
 else
 xq(k) = (xs(k)/abs(xs(k))) * (floor(abs(xs(k))/d)*d + d);
 end
 end
 if xq(k) == 2*d
 xq(k) = d;
 end
end
 
eq = xa-xq; % ������ ����������

% ���������� ���������� �������
figure(1); subplot(211); plot(t, xa); grid on; ylim([-5,5]);
xlabel('t (sec)'); ylabel('xa(t)'); title('��������� ����');
% ���������� ������������������ �������
subplot(212); stem(n*Ts, xs); grid on; ylim([-5,5]);
xlabel('nTs (sec)'); ylabel('xs(t)'); title('����������������� ����');

% ���������� ������������ �������
figure(2); subplot(211); stem(n*Ts, xq); grid on; ylim([-5,5]);
xlabel('nTs (sec)'); ylabel('xq(t)'); title('����������� ����');
% ���������� ��������� ����������
subplot(212); stem(n*Ts, eq); grid on; ylim([-5,5]);
xlabel('nTs (sec)'); ylabel('eq(t)'); title('������ ����������');
