I0=imread('Hydrangeas.jpg');
I=rgb2gray(I0);
figure
subplot(221);imshow(I)
subplot(222);imhist(I)
I1=histeq(I);
subplot(223);imshow(I1)
subplot(224);imhist(I1)