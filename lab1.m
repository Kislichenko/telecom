clc
clear all
close all

%������ �������������� ������
t=0:0.1:10;
A=2;%���������
w=20;%����������� �������
fa=25;%��������� ����

%�������������� ������
y=A*sin(w*t+fa);

figure;
hold on;
axis([0 100 -inf inf])
axis square
grid on
plot(y);
hold off;

figure;
hold on;
axis square
grid on
plot(abs(fft(y,512)));
hold off;

duty=40;%������ ����������
A=1.5;

%������������� ������
y=A*square(1*t,duty);

figure;
hold on;
axis([0 100 -inf inf])
axis square
grid on
plot(y);
hold off;

figure;
hold on;
axis square
grid on
plot(abs(fft(y,512)));
hold off;

