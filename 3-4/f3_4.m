figure(1);
A=imread('imagel.jpg');
B=rgb2gray(A);
imshow(B);
C=fftshift(fft2(B));
figure(2);
imshow(log(abs(C)),[]);