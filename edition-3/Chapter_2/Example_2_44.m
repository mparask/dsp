% Example 2.44

Step = 0.1; 
% ���������� ������ h(t) ��� x(t) ��� �������� ������ th, tx
th = 1 : Step : 3; h = ones(1, length(th));    
tx = 1 : Step : 5; x = ones(1, length(tx)); 
% ����������� ���������
y = conv(x, h) .* Step; 
% ���������� �������� ������ ty ��� ������ y(t)
ty = min(tx) + min(th) : Step : max(tx) + max(th);
% ���������� ������������� (���������)
plot(ty, y); xlim([0, 10]); grid on;