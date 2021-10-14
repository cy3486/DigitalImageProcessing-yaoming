%jianli jiandan tuxiang Dbing xianshi zhi .
clc;clear
close all
d=zeros(32,32);
d(13:20,13:20)=1;
figure(1);
imshow(d, 'InitialMagnification','fit');
D=fft2(d);
figure(2);
imshow(abs(D),[-1 5],'InitialMagnification','fit')