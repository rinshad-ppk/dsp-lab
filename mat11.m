close all;
clear all;
fm=input("Enter max frequency:");
am=input("Enter the amplitude");
cy=input("Enter the no of cycles:");
fs1=1.5*fm;
t=0:1/(fm*fm):cy/fm;
amplitude=am*cos(2*pi*fm*t);
subplot(221);
plot(t,amplitude);
title("Input wave");
xlabel("time");
ylabel("amplitude");
grid on;
t1=0:1/(fs1):cy/fm;
amplitude1=am*cos(2*pi*fm*t1);
subplot(222);
plot(t1,amplitude1);
title("under sampling");

xlabel("time");
ylabel("amplitude");
grid on;
fs2=3*fm;
t2=0:1/(fs2):cy/fm;
amplitude2=am*cos(2*pi*fm*t2);
subplot(223);
plot(t2,amplitude2);
title("nyquist criterion");
xlabel("time");
ylabel("amplitude");
grid on;
fs3=20*fm;
t3=0:1/(fs3):cy/fm;
amplitude3=am*cos(2*pi*fm*t3);
subplot(224);
plot(t3,amplitude3);
title("over samplig");
xlabel("time");
ylabel("amplitude");
grid on;