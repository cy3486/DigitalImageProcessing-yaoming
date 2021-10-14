I=imread('Lighthouse.jpg');
figure;
imshow(I);
I=double(I);
I2=41*log(1+I);
I2=uint8(I2);
figure;
imshow(I2);