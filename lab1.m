clc
clear all
close all

%строим синусоидальный сигнал
t=0:0.1:10;
A=2;%амплитуда
w=20;%циклическая частота
fa=25;%начальная фаза

%синусоидальный сигнал
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

duty=40;%период заполнения
A=1.5;

%прямоугольный сигнал
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

