C=imread('Koala.jpg');
C=rgb2gray(C);
subplot(211);imshow(C);
LEN=30;THETA=45;
PSF=fspecial('motion',LEN,THETA);
MF=imfilter(C,PSF,'circular','conv');
subplot(212);imshow(MF);
imwrite(MF,'233.JPG')