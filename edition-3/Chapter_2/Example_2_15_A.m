% Example 2.15 (A)

syms t
u(t) = heaviside(t);    
t0 = 1;                % ������� �������� ���������
x(t) = exp(-t)*u(t);   % ������� ������� ������� (�������)
y(t) = t*x(t);         % ����������� ������� ������
yt(t) = t*x(t-t0);     % ����������� ������ ��� ���������� ������ ���� t0
yd(t) = y(t-t0);       % ����������� ����������� ������ ���� t0

% ���������� ������� ������� ��� ������     
figure(1); subplot(231); fplot(x(t)); xlim([-1,7]); grid on; title('(�) x(t)')
subplot(232); fplot(y(t),'m'); xlim([-1,7]); grid on; title('(�) y(t)')

% ���������� ����������� ������, ����������� �������, ������ ��� ���������� ������ 
subplot(233); fplot(yd(t),'r'); xlim([-1,7]); grid on; title('(�) y_d(t)')
subplot(235); fplot(x(t-t0),'m'); xlim([-1,7]);; grid on; title('(�) x(t-t0)')
subplot(236); fplot(yt(t),'r'); xlim([-1,7]); grid on; title('(�) y_t(t)')