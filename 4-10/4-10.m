clear;
I = imread('Chrysanthemum.jpg');
I = rgb2gray(I);
J = imnoise(I,'salt & pepper',0.02);
subplot(231),imshow(I);title('origin');
subplot(232),imshow(J);title('salt&pepper');
k1 = filter2(fspecial('average',3),J);
k2 = filter2(fspecial('average',5),J);
k3 = filter2(fspecial('average',7),J);
k4 = filter2(fspecial('average',9),J);
subplot(233),imshow(uint8(k1));title('3*3ƽ��');
subplot(234),imshow(uint8(k2));title('5*5ƽ��');
subplot(235),imshow(uint8(k3));title('7*7ƽ��');
subplot(236),imshow(uint8(k4));title('9*9ƽ��');